uint64_t sub_1B72E4124(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x72756F48646E65;
    v7 = 0x74756E694D646E65;
    if (a1 != 10)
    {
      v7 = 0x6E6F636553646E65;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x72616559646E65;
    v9 = 0x68746E6F4D646E65;
    if (a1 != 7)
    {
      v9 = 0x796144646E65;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6165597472617473;
    v2 = 0x756F487472617473;
    v3 = 0x6E694D7472617473;
    if (a1 != 4)
    {
      v3 = 0x6365537472617473;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6E6F4D7472617473;
    if (a1 != 1)
    {
      v4 = 0x7961447472617473;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B72E42B4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1918985593;
    v6 = 7954788;
    if (a1 != 2)
    {
      v6 = 0x756F487472617473;
    }

    if (a1)
    {
      v5 = 0x68746E6F6DLL;
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
    v1 = 0x72756F48646E65;
    v2 = 0x74756E694D646E65;
    if (a1 != 7)
    {
      v2 = 0x6E6F636553646E65;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E694D7472617473;
    if (a1 != 4)
    {
      v3 = 0x6365537472617473;
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

uint64_t sub_1B72E43DC()
{
  v1 = *v0;
  v2 = 0x6165597472617473;
  v3 = 0x72616559646E65;
  v4 = 0x68746E6F4D646E65;
  if (v1 != 4)
  {
    v4 = 0x796144646E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F4D7472617473;
  if (v1 != 1)
  {
    v5 = 0x7961447472617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B72E449C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72E9A44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72E44C4(uint64_t a1)
{
  v2 = sub_1B72E7D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E4500(uint64_t a1)
{
  v2 = sub_1B72E7D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E4544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72E9C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72E4578(uint64_t a1)
{
  v2 = sub_1B72E7D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E45B4(uint64_t a1)
{
  v2 = sub_1B72E7D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E45F0(uint64_t a1)
{
  v2 = sub_1B72E7E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E462C(uint64_t a1)
{
  v2 = sub_1B72E7E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E4668(uint64_t a1)
{
  v2 = sub_1B72E7E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E46A4(uint64_t a1)
{
  v2 = sub_1B72E7E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B72E46E0()
{
  v1 = 0x657461446E6FLL;
  v2 = *v0;
  v3 = 0x446E656577746562;
  if (v2 != 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x6957657461447962;
  if (v2 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7942657461446E6FLL;
  if (v2 != 2)
  {
    v5 = 0x657461447962;
  }

  if (*v0)
  {
    v1 = 0x6957657461446E6FLL;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B72E4800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72EA024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72E4834(uint64_t a1)
{
  v2 = sub_1B72E7CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E4870(uint64_t a1)
{
  v2 = sub_1B72E7CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E48AC(uint64_t a1)
{
  v2 = sub_1B72E7EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E48E8(uint64_t a1)
{
  v2 = sub_1B72E7EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E4924(uint64_t a1)
{
  v2 = sub_1B72E7F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E4960(uint64_t a1)
{
  v2 = sub_1B72E7F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E499C(uint64_t a1)
{
  v2 = sub_1B72E7F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E49D8(uint64_t a1)
{
  v2 = sub_1B72E7F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E4A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72EA5D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72E4A50(uint64_t a1)
{
  v2 = sub_1B72E7DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E4A8C(uint64_t a1)
{
  v2 = sub_1B72E7DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackedOrder.EstimatedDeliveryDate.encode(to:)(void *a1)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991698);
  v65 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9916A0);
  v5 = *(v4 - 8);
  v78 = v4;
  v79 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v77 = v53 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9916A8);
  v64 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9916B0);
  v9 = *(v8 - 8);
  v75 = v8;
  v76 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v74 = v53 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9916B8);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9916C0);
  v14 = *(v13 - 8);
  v72 = v13;
  v73 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v71 = v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9916C8);
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9916D0);
  v66 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v53 - v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9916D8);
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v23 = v1[1];
  v87 = *v1;
  v24 = v1[3];
  v84 = v1[2];
  v85 = v23;
  v63 = v24;
  v25 = v1[5];
  v62 = v1[4];
  v61 = v25;
  v90 = *(v1 + 48);
  v26 = v1[8];
  v60 = v1[7];
  v59 = v26;
  v58 = v1[9];
  v57 = *(v1 + 80);
  v55 = *(v1 + 87);
  v54 = *(v1 + 85);
  v56 = *(v1 + 81);
  v27 = v1[12];
  v53[1] = v1[11];
  v53[0] = v27;
  v28 = *(v1 + 104);
  v29 = a1[3];
  v30 = a1;
  v32 = v53 - v31;
  __swift_project_boxed_opaque_existential_1(v30, v29);
  sub_1B72E7CD0();
  sub_1B78023F8();
  v33 = v28 >> 5;
  if (v28 >> 5 > 3)
  {
    if (v28 >> 5 <= 5)
    {
      v36 = v88;
      if (v33 == 4)
      {
        v91 = 4;
        sub_1B72E7E20();
        v12 = v74;
        sub_1B7801ED8();
        v91 = 0;
        v37 = v75;
        v38 = v89;
        sub_1B7801FA8();
        if (!v38)
        {
          v91 = 1;
          sub_1B7801FA8();
          v91 = 2;
          sub_1B7801FA8();
          v91 = 3;
          sub_1B7801FA8();
          v91 = 4;
          sub_1B7801FA8();
          v91 = 5;
          sub_1B7801F28();
        }

        v89 = v38;
        v39 = v76;
        goto LABEL_55;
      }

      v91 = 5;
      sub_1B72E7DCC();
      v12 = v80;
      sub_1B7801ED8();
      v91 = 0;
      v37 = v81;
      v49 = v89;
      sub_1B7801FA8();
      if (v49)
      {
        v89 = v49;
        v50 = &v92;
        goto LABEL_54;
      }

      v91 = 1;
      sub_1B7801FA8();
      v91 = 2;
      sub_1B7801FA8();
      v91 = 3;
      sub_1B7801FA8();
      v91 = 4;
      sub_1B7801FA8();
      v91 = 5;
      sub_1B7801F28();
      v91 = 6;
      sub_1B7801FA8();
      v91 = 7;
      sub_1B7801FA8();
      v89 = 0;
      v91 = 8;
      sub_1B7801F28();
      v89 = 0;
      (*(v64 + 8))(v80, v81);
      return (*(v86 + 8))(v32, v88);
    }

    v41 = v88;
    if (v33 == 6)
    {
      v91 = 6;
      sub_1B72E7D78();
      v42 = v77;
      sub_1B7801ED8();
      v91 = 0;
      v43 = v78;
      v44 = v89;
      sub_1B7801FA8();
      if (!v44)
      {
        v91 = 1;
        sub_1B7801FA8();
        v91 = 2;
        sub_1B7801FA8();
        v91 = 3;
        sub_1B7801FA8();
        v91 = 4;
        sub_1B7801FA8();
        v91 = 5;
        sub_1B7801FA8();
      }

      v89 = v44;
      v45 = v79;
    }

    else
    {
      v91 = 7;
      sub_1B72E7D24();
      v42 = v82;
      sub_1B7801ED8();
      v91 = 0;
      v43 = v83;
      v52 = v89;
      sub_1B7801FA8();
      if (!v52)
      {
        v91 = 1;
        sub_1B7801FA8();
        v91 = 2;
        sub_1B7801FA8();
        v91 = 3;
        sub_1B7801FA8();
        v91 = 4;
        sub_1B7801FA8();
        v91 = 5;
        sub_1B7801F28();
        v91 = 6;
        sub_1B7801FA8();
        v91 = 7;
        sub_1B7801FA8();
        v89 = 0;
        v91 = 8;
        sub_1B7801FA8();
        v89 = 0;
        v91 = 9;
        sub_1B7801FA8();
        v89 = 0;
        v91 = 10;
        sub_1B7801FA8();
        v89 = 0;
        v91 = 11;
        sub_1B7801F28();
        v89 = 0;
        (*(v65 + 8))(v82, v83);
        return (*(v86 + 8))(v32, v88);
      }

      v89 = v52;
      v45 = v65;
    }

    (*(v45 + 8))(v42, v43);
    return (*(v86 + 8))(v32, v41);
  }

  if (v28 >> 5 > 1)
  {
    v36 = v88;
    if (v33 == 2)
    {
      v91 = 2;
      sub_1B72E7EC8();
      v12 = v71;
      sub_1B7801ED8();
      v91 = 0;
      v37 = v72;
      v40 = v89;
      sub_1B7801FA8();
      if (!v40)
      {
        v91 = 1;
        sub_1B7801FA8();
        v91 = 2;
        sub_1B7801FA8();
        v91 = 3;
        sub_1B7801FA8();
        v91 = 4;
        sub_1B7801FA8();
        v91 = 5;
        sub_1B7801F28();
      }

      v89 = v40;
      v39 = v73;
      goto LABEL_55;
    }

    v91 = 3;
    sub_1B72E7E74();
    sub_1B7801ED8();
    v91 = 0;
    v37 = v67;
    v51 = v89;
    sub_1B7801FA8();
    if (!v51)
    {
      v91 = 1;
      sub_1B7801FA8();
      v91 = 2;
      sub_1B7801FA8();
    }

    v89 = v51;
    v50 = &v93;
LABEL_54:
    v39 = *(v50 - 32);
LABEL_55:
    (*(v39 + 8))(v12, v37);
    return (*(v86 + 8))(v32, v36);
  }

  v34 = v88;
  if (v33)
  {
    v91 = 1;
    sub_1B72E7F1C();
    sub_1B7801ED8();
    v91 = 0;
    v46 = v69;
    v47 = v89;
    sub_1B7801FA8();
    if (!v47)
    {
      v91 = 1;
      sub_1B7801FA8();
      v91 = 2;
      sub_1B7801FA8();
      v91 = 3;
      sub_1B7801FA8();
      v91 = 4;
      sub_1B7801FA8();
      v91 = 5;
      sub_1B7801F28();
    }

    v89 = v47;
    (*(v70 + 8))(v19, v46);
  }

  else
  {
    v91 = 0;
    sub_1B72E7F70();
    sub_1B7801ED8();
    v91 = 0;
    v35 = v89;
    sub_1B7801FA8();
    if (!v35)
    {
      v91 = 1;
      sub_1B7801FA8();
      v91 = 2;
      sub_1B7801FA8();
    }

    v89 = v35;
    (*(v66 + 8))(v22, v20);
  }

  return (*(v86 + 8))(v32, v34);
}

uint64_t TrackedOrder.EstimatedDeliveryDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991728);
  v79 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v97 = &v69 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991730);
  v86 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991738);
  v6 = *(v5 - 8);
  v87 = v5;
  v88 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v69 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991740);
  v85 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v92 = &v69 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991748);
  v78 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v90 = &v69 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991750);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v91 = &v69 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991758);
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v12 = &v69 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991760);
  v76 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991768);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - v18;
  v20 = a1[3];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1B72E7CD0();
  v21 = v98;
  sub_1B78023C8();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v99);
  }

  v22 = v15;
  v73 = v13;
  v74 = v12;
  v23 = v94;
  v75 = 0;
  v25 = v95;
  v24 = v96;
  v98 = v17;
  v26 = sub_1B7801E98();
  v27 = (2 * *(v26 + 16)) | 1;
  v101 = v26;
  v102 = v26 + 32;
  v103 = 0;
  v104 = v27;
  v28 = sub_1B721CE58();
  if (v28 == 8 || v103 != v104 >> 1)
  {
    v33 = v19;
    v34 = sub_1B7801B18();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v36 = &type metadata for TrackedOrder.EstimatedDeliveryDate;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v98 + 8))(v33, v16);
LABEL_10:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v99);
  }

  if (v28 > 3u)
  {
    if (v28 <= 5u)
    {
      v38 = v98;
      if (v28 != 4)
      {
        v106 = 5;
        sub_1B72E7DCC();
        v43 = v75;
        sub_1B7801D38();
        if (v43)
        {
          (*(v38 + 8))(v19, v16);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v99);
        }

        v106 = 0;
        v48 = v19;
        v72 = sub_1B7801E28();
        v106 = 1;
        v71 = sub_1B7801E28();
        v106 = 2;
        v70 = sub_1B7801E28();
        v106 = 3;
        v90 = sub_1B7801E28();
        v106 = 4;
        v30 = sub_1B7801E28();
        v96 = v16;
        v106 = 5;
        v22 = v23;
        v78 = sub_1B7801DA8();
        LODWORD(v97) = v60;
        v106 = 6;
        v19 = sub_1B7801E28();
        v106 = 7;
        v16 = sub_1B7801E28();
        v106 = 8;
        v64 = sub_1B7801DA8();
        v75 = 0;
        v32 = v64;
        v50 = v65;
        (*(v88 + 8))(v23, v87);
        (*(v98 + 8))(v48, v96);
        swift_unknownObjectRelease();
        v54 = v97 & 1;
        v105 = v97 & 1;
        v100 = v50 & 1;
        v25 = v50 & 1;
        v53 = -96;
        goto LABEL_37;
      }

      v106 = 4;
      sub_1B72E7E20();
      v39 = v75;
      sub_1B7801D38();
      if (!v39)
      {
        v106 = 0;
        v25 = v84;
        v32 = v19;
        v72 = sub_1B7801E28();
        v106 = 1;
        v71 = sub_1B7801E28();
        v106 = 2;
        v56 = sub_1B7801E28();
        v19 = v85;
        v70 = v56;
        v106 = 3;
        v90 = sub_1B7801E28();
        v106 = 4;
        v22 = 0;
        v30 = sub_1B7801E28();
        v106 = 5;
        v78 = sub_1B7801DA8();
        v75 = 0;
        v50 = v61;
        (*(v85 + 1))(v92, v84);
        (*(v98 + 8))(v32, v16);
        swift_unknownObjectRelease();
        v54 = v50 & 1;
        v53 = 0x80;
LABEL_37:
        v51 = v90;
        v29 = v93;
        goto LABEL_38;
      }

LABEL_33:
      (*(v38 + 8))(v19, v16);
      goto LABEL_10;
    }

    v38 = v98;
    if (v28 == 6)
    {
      v106 = 6;
      sub_1B72E7D78();
      v41 = v25;
      v42 = v75;
      sub_1B7801D38();
      if (v42)
      {
        goto LABEL_33;
      }

      v106 = 0;
      v72 = sub_1B7801E28();
      v106 = 1;
      v71 = sub_1B7801E28();
      v106 = 2;
      v70 = sub_1B7801E28();
      v106 = 3;
      v90 = sub_1B7801E28();
      v106 = 4;
      v94 = sub_1B7801E28();
      v25 = 0;
      v106 = 5;
      v32 = v24;
      v50 = v41;
      v78 = sub_1B7801E28();
      v75 = 0;
      (*(v86 + 8))(v41, v24);
      (*(v98 + 8))(v19, v16);
      swift_unknownObjectRelease();
      v54 = 0;
      v53 = -64;
    }

    else
    {
      v106 = 7;
      sub_1B72E7D24();
      v44 = v75;
      sub_1B7801D38();
      if (v44)
      {
        goto LABEL_33;
      }

      v106 = 0;
      v47 = v19;
      v72 = sub_1B7801E28();
      v106 = 1;
      v71 = sub_1B7801E28();
      v106 = 2;
      v70 = sub_1B7801E28();
      v106 = 3;
      v90 = sub_1B7801E28();
      v106 = 4;
      v94 = sub_1B7801E28();
      v96 = v16;
      v106 = 5;
      v78 = sub_1B7801DA8();
      LODWORD(v95) = v59;
      v106 = 6;
      v19 = sub_1B7801E28();
      v106 = 7;
      v16 = sub_1B7801E28();
      v106 = 8;
      v32 = sub_1B7801E28();
      v106 = 9;
      v25 = sub_1B7801E28();
      v106 = 10;
      v66 = sub_1B7801E28();
      v75 = 0;
      v22 = v66;
      v106 = 11;
      v67 = sub_1B7801DA8();
      LODWORD(v92) = v68;
      v75 = 0;
      v50 = v67;
      (*(v79 + 8))(v97, v89);
      (*(v98 + 8))(v47, v96);
      swift_unknownObjectRelease();
      v54 = v95 & 1;
      v105 = v95 & 1;
      v100 = v92 & 1;
      v53 = v92 & 1 | 0xE0;
    }

    v51 = v90;
    v29 = v93;
    v30 = v94;
LABEL_38:
    v52 = v78;
    goto LABEL_35;
  }

  v29 = v93;
  v30 = v75;
  if (v28 > 1u)
  {
    if (v28 == 2)
    {
      v106 = 2;
      sub_1B72E7EC8();
      sub_1B7801D38();
      if (!v30)
      {
        v106 = 0;
        v25 = v82;
        v40 = sub_1B7801E28();
        v32 = v98;
        v45 = v19;
        v72 = v40;
        v106 = 1;
        v71 = sub_1B7801E28();
        v106 = 2;
        v57 = sub_1B7801E28();
        v19 = v83;
        v70 = v57;
        v106 = 3;
        v90 = sub_1B7801E28();
        v106 = 4;
        v22 = 0;
        v30 = sub_1B7801E28();
        v106 = 5;
        v78 = sub_1B7801DA8();
        v75 = 0;
        v50 = v62;
        (*(v83 + 1))(v91, v82);
        (*(v98 + 8))(v45, v16);
        swift_unknownObjectRelease();
        v54 = v50 & 1;
        v53 = 64;
        goto LABEL_37;
      }
    }

    else
    {
      v106 = 3;
      sub_1B72E7E74();
      v32 = v90;
      sub_1B7801D38();
      if (!v30)
      {
        v106 = 0;
        v30 = v77;
        v72 = sub_1B7801E28();
        v106 = 1;
        v71 = sub_1B7801E28();
        v106 = 2;
        v55 = sub_1B7801E28();
        v50 = 0;
        v75 = 0;
        v70 = v55;
        (*(v78 + 8))(v32, v30);
        (*(v98 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v54 = 0;
        v53 = 96;
        v29 = v93;
        goto LABEL_35;
      }
    }

    v31 = v98;
    goto LABEL_29;
  }

  if (v28)
  {
    v106 = 1;
    sub_1B72E7F1C();
    v22 = v74;
    sub_1B7801D38();
    v32 = v98;
    if (v30)
    {
      (*(v98 + 8))(v19, v16);
      goto LABEL_10;
    }

    v106 = 0;
    v25 = v80;
    v46 = v19;
    v72 = sub_1B7801E28();
    v106 = 1;
    v71 = sub_1B7801E28();
    v106 = 2;
    v58 = sub_1B7801E28();
    v19 = v81;
    v70 = v58;
    v106 = 3;
    v90 = sub_1B7801E28();
    v106 = 4;
    v30 = sub_1B7801E28();
    v106 = 5;
    v78 = sub_1B7801DA8();
    v75 = 0;
    v50 = v63;
    (*(v81 + 1))(v74, v80);
    (*(v98 + 8))(v46, v16);
    swift_unknownObjectRelease();
    v54 = v50 & 1;
    v53 = 32;
    goto LABEL_37;
  }

  v106 = 0;
  sub_1B72E7F70();
  sub_1B7801D38();
  v31 = v98;
  if (v30)
  {
LABEL_29:
    (*(v31 + 8))(v19, v16);
    goto LABEL_10;
  }

  v106 = 0;
  v32 = v73;
  v72 = sub_1B7801E28();
  v106 = 1;
  v71 = sub_1B7801E28();
  v106 = 2;
  v49 = sub_1B7801E28();
  v50 = 0;
  v75 = 0;
  v70 = v49;
  (*(v76 + 8))(v22, v32);
  (*(v31 + 8))(v19, v16);
  swift_unknownObjectRelease();
  v53 = 0;
  v54 = 0;
LABEL_35:
  *v29 = v72;
  *(v29 + 8) = v71;
  *(v29 + 16) = v70;
  *(v29 + 24) = v51;
  *(v29 + 32) = v30;
  *(v29 + 40) = v52;
  *(v29 + 48) = v54;
  *(v29 + 56) = v19;
  *(v29 + 64) = v16;
  *(v29 + 72) = v32;
  *(v29 + 80) = v25;
  *(v29 + 88) = v22;
  *(v29 + 96) = v50;
  *(v29 + 104) = v53;
  return __swift_destroy_boxed_opaque_existential_1(v99);
}

unint64_t sub_1B72E7650()
{
  result = qword_1EB9915D8;
  if (!qword_1EB9915D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9915D8);
  }

  return result;
}

unint64_t sub_1B72E76A4()
{
  result = qword_1EB9915E0;
  if (!qword_1EB9915E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9915E0);
  }

  return result;
}

unint64_t sub_1B72E76F8()
{
  result = qword_1EB9915E8;
  if (!qword_1EB9915E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9915E8);
  }

  return result;
}

BOOL sub_1B72E774C(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[3].i8[0];
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[3].i8[0];
  if ((v2 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      v8 = vmovn_s32(vuzp1q_s32(vceqq_s64(v4, v6), vceqq_s64(v3, v5)));
      return v8.i16[0] & v8.i16[1] & v8.i16[2] & 1;
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v4, v6), vceqq_s64(v3, v5)))) & 1) == 0 || a1[2].i64[0] != a2[2].i64[0])
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    return (v7 & 1) == 0 && a1[2].i64[1] == a2[2].i64[1];
  }

  return (v7 & 1) != 0;
}

unint64_t sub_1B72E77FC()
{
  result = qword_1EB991620;
  if (!qword_1EB991620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991620);
  }

  return result;
}

unint64_t sub_1B72E7850()
{
  result = qword_1EB991628;
  if (!qword_1EB991628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991628);
  }

  return result;
}

unint64_t sub_1B72E78A4()
{
  result = qword_1EB991630;
  if (!qword_1EB991630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991630);
  }

  return result;
}

unint64_t sub_1B72E78F8()
{
  result = qword_1EB991668;
  if (!qword_1EB991668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991668);
  }

  return result;
}

unint64_t sub_1B72E794C()
{
  result = qword_1EB991670;
  if (!qword_1EB991670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991670);
  }

  return result;
}

unint64_t sub_1B72E79A0()
{
  result = qword_1EB991678;
  if (!qword_1EB991678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991678);
  }

  return result;
}

uint64_t _s10FinanceKit12TrackedOrderO21EstimatedDeliveryDateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(a1 + 48);
  v9 = *(a1 + 104);
  v11 = *a2;
  v10 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v15 = a2[4];
  v14 = a2[5];
  v16 = a2[6];
  v17 = v9 >> 5;
  v18 = *(a2 + 104);
  if (v9 >> 5 > 3)
  {
    v24 = a1[7];
    v23 = a1[8];
    v25 = a1[9];
    v26 = *(a1 + 80);
    v28 = a2[7];
    v27 = a2[8];
    v30 = a2[9];
    v29 = a2[10];
    if (v9 >> 5 <= 5)
    {
      if (v17 != 4)
      {
        if ((v18 & 0xE0) == 0xA0)
        {
          result = 0;
          if (v3 != v11 || v2 != v10 || v5 != v13 || v4 != v12 || v7 != v15)
          {
            return result;
          }

          result = 0;
          if (v8)
          {
            if ((v16 & (v24 == v28)) != 1)
            {
              return result;
            }
          }

          else if ((v16 & 1) != 0 || v6 != v14 || v24 != v28)
          {
            return result;
          }

          if (v23 != v27)
          {
            return result;
          }

          if (v26)
          {
            return (v29 & 1) != 0;
          }

          if (!(v29 & 1 | (v25 != v30)))
          {
            return 1;
          }
        }

        return 0;
      }

      if ((v18 & 0xE0) != 0x80)
      {
        return 0;
      }

LABEL_46:
      result = 0;
      if (v3 != v11 || v2 != v10 || v5 != v13 || v4 != v12 || v7 != v15)
      {
        return result;
      }

      if (v8)
      {
        return (v16 & 1) != 0;
      }

      return !(v16 & 1 | (v6 != v14));
    }

    if (v17 != 6)
    {
      if (v18 >= 0xE0)
      {
        result = 0;
        if (v3 != v11 || v2 != v10 || v5 != v13 || v4 != v12 || v7 != v15)
        {
          return result;
        }

        result = 0;
        if (v8)
        {
          if ((v16 & (v24 == v28)) != 1)
          {
            return result;
          }
        }

        else if ((v16 & 1) != 0 || v6 != v14 || v24 != v28)
        {
          return result;
        }

        if (v23 != v27 || v25 != v30 || ((*(a1 + 81) << 8) | ((*(a1 + 85) | (*(a1 + 87) << 16)) << 40) | v26) != v29 || a1[11] != a2[11])
        {
          return result;
        }

        if (v9)
        {
          if ((v18 & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v18 & 1) != 0 || a1[12] != a2[12])
        {
          return 0;
        }

        return 1;
      }

      return 0;
    }

    return (v18 & 0xE0) == 0xC0 && v3 == v11 && v2 == v10 && v5 == v13 && v4 == v12 && v7 == v15 && v6 == v14;
  }

  else
  {
    if (v9 >> 5 <= 1)
    {
      if (!v17)
      {
        return v3 == v11 && v2 == v10 && v18 < 0x20 && v5 == v13;
      }

      if ((v18 & 0xE0) != 0x20)
      {
        return 0;
      }

      goto LABEL_46;
    }

    if (v17 == 2)
    {
      if ((v18 & 0xE0) != 0x40)
      {
        return 0;
      }

      goto LABEL_46;
    }

    return (v18 & 0xE0) == 0x60 && v3 == v11 && v2 == v10 && v5 == v13;
  }
}

unint64_t sub_1B72E7CD0()
{
  result = qword_1EB9916E0;
  if (!qword_1EB9916E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9916E0);
  }

  return result;
}

unint64_t sub_1B72E7D24()
{
  result = qword_1EB9916E8;
  if (!qword_1EB9916E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9916E8);
  }

  return result;
}

unint64_t sub_1B72E7D78()
{
  result = qword_1EB9916F0;
  if (!qword_1EB9916F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9916F0);
  }

  return result;
}

unint64_t sub_1B72E7DCC()
{
  result = qword_1EB9916F8;
  if (!qword_1EB9916F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9916F8);
  }

  return result;
}

unint64_t sub_1B72E7E20()
{
  result = qword_1EB991700;
  if (!qword_1EB991700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991700);
  }

  return result;
}

unint64_t sub_1B72E7E74()
{
  result = qword_1EB991708;
  if (!qword_1EB991708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991708);
  }

  return result;
}

unint64_t sub_1B72E7EC8()
{
  result = qword_1EB991710;
  if (!qword_1EB991710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991710);
  }

  return result;
}

unint64_t sub_1B72E7F1C()
{
  result = qword_1EB991718;
  if (!qword_1EB991718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991718);
  }

  return result;
}

unint64_t sub_1B72E7F70()
{
  result = qword_1EB991720;
  if (!qword_1EB991720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991720);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B72E8010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 49))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 48) & 0x7E | (*(a1 + 48) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B72E8060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TrackedOrder.EstimatedDeliveryDate(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
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

double storeEnumTagSinglePayload for TrackedOrder.EstimatedDeliveryDate(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 105) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B72E81F0(uint64_t result, char a2)
{
  v2 = *(result + 104) & 1 | (32 * a2);
  *(result + 48) &= 1uLL;
  *(result + 104) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TrackedOrder.EstimatedDeliveryDate.OnDateWithTimeWindowCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TrackedOrder.EstimatedDeliveryDate.OnDateWithTimeWindowCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s31TransactionClassificationResultV14WalletCategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s31TransactionClassificationResultV14WalletCategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B72E85C4()
{
  result = qword_1EB991770;
  if (!qword_1EB991770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991770);
  }

  return result;
}

unint64_t sub_1B72E861C()
{
  result = qword_1EB991778;
  if (!qword_1EB991778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991778);
  }

  return result;
}

unint64_t sub_1B72E8674()
{
  result = qword_1EB991780;
  if (!qword_1EB991780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991780);
  }

  return result;
}

unint64_t sub_1B72E86CC()
{
  result = qword_1EB991788;
  if (!qword_1EB991788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991788);
  }

  return result;
}

unint64_t sub_1B72E8724()
{
  result = qword_1EB991790;
  if (!qword_1EB991790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991790);
  }

  return result;
}

unint64_t sub_1B72E877C()
{
  result = qword_1EB991798;
  if (!qword_1EB991798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991798);
  }

  return result;
}

unint64_t sub_1B72E87D4()
{
  result = qword_1EB9917A0;
  if (!qword_1EB9917A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917A0);
  }

  return result;
}

unint64_t sub_1B72E882C()
{
  result = qword_1EB9917A8;
  if (!qword_1EB9917A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917A8);
  }

  return result;
}

unint64_t sub_1B72E8884()
{
  result = qword_1EB9917B0;
  if (!qword_1EB9917B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917B0);
  }

  return result;
}

unint64_t sub_1B72E88DC()
{
  result = qword_1EB9917B8;
  if (!qword_1EB9917B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917B8);
  }

  return result;
}

unint64_t sub_1B72E8934()
{
  result = qword_1EB9917C0;
  if (!qword_1EB9917C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917C0);
  }

  return result;
}

unint64_t sub_1B72E898C()
{
  result = qword_1EB9917C8;
  if (!qword_1EB9917C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917C8);
  }

  return result;
}

unint64_t sub_1B72E89E4()
{
  result = qword_1EB9917D0;
  if (!qword_1EB9917D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917D0);
  }

  return result;
}

unint64_t sub_1B72E8A3C()
{
  result = qword_1EB9917D8;
  if (!qword_1EB9917D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917D8);
  }

  return result;
}

unint64_t sub_1B72E8A94()
{
  result = qword_1EB9917E0;
  if (!qword_1EB9917E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917E0);
  }

  return result;
}

unint64_t sub_1B72E8AEC()
{
  result = qword_1EB9917E8;
  if (!qword_1EB9917E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917E8);
  }

  return result;
}

unint64_t sub_1B72E8B44()
{
  result = qword_1EB9917F0;
  if (!qword_1EB9917F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917F0);
  }

  return result;
}

unint64_t sub_1B72E8B9C()
{
  result = qword_1EB9917F8;
  if (!qword_1EB9917F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9917F8);
  }

  return result;
}

unint64_t sub_1B72E8BF4()
{
  result = qword_1EB991800;
  if (!qword_1EB991800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991800);
  }

  return result;
}

unint64_t sub_1B72E8C4C()
{
  result = qword_1EB991808;
  if (!qword_1EB991808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991808);
  }

  return result;
}

unint64_t sub_1B72E8CA4()
{
  result = qword_1EB991810;
  if (!qword_1EB991810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991810);
  }

  return result;
}

unint64_t sub_1B72E8CFC()
{
  result = qword_1EB991818;
  if (!qword_1EB991818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991818);
  }

  return result;
}

unint64_t sub_1B72E8D54()
{
  result = qword_1EB991820;
  if (!qword_1EB991820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991820);
  }

  return result;
}

unint64_t sub_1B72E8DAC()
{
  result = qword_1EB991828;
  if (!qword_1EB991828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991828);
  }

  return result;
}

unint64_t sub_1B72E8E04()
{
  result = qword_1EB991830;
  if (!qword_1EB991830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991830);
  }

  return result;
}

unint64_t sub_1B72E8E5C()
{
  result = qword_1EB991838;
  if (!qword_1EB991838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991838);
  }

  return result;
}

unint64_t sub_1B72E8EB4()
{
  result = qword_1EB991840;
  if (!qword_1EB991840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991840);
  }

  return result;
}

unint64_t sub_1B72E8F0C()
{
  result = qword_1EB991848;
  if (!qword_1EB991848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991848);
  }

  return result;
}

unint64_t sub_1B72E8F64()
{
  result = qword_1EB991850;
  if (!qword_1EB991850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991850);
  }

  return result;
}

unint64_t sub_1B72E8FBC()
{
  result = qword_1EB991858;
  if (!qword_1EB991858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991858);
  }

  return result;
}

unint64_t sub_1B72E9014()
{
  result = qword_1EB991860;
  if (!qword_1EB991860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991860);
  }

  return result;
}

unint64_t sub_1B72E906C()
{
  result = qword_1EB991868;
  if (!qword_1EB991868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991868);
  }

  return result;
}

unint64_t sub_1B72E90C4()
{
  result = qword_1EB991870;
  if (!qword_1EB991870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991870);
  }

  return result;
}

unint64_t sub_1B72E911C()
{
  result = qword_1EB991878;
  if (!qword_1EB991878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991878);
  }

  return result;
}

unint64_t sub_1B72E9174()
{
  result = qword_1EB991880;
  if (!qword_1EB991880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991880);
  }

  return result;
}

unint64_t sub_1B72E91CC()
{
  result = qword_1EB991888;
  if (!qword_1EB991888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991888);
  }

  return result;
}

unint64_t sub_1B72E9224()
{
  result = qword_1EB991890;
  if (!qword_1EB991890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991890);
  }

  return result;
}

unint64_t sub_1B72E927C()
{
  result = qword_1EB991898;
  if (!qword_1EB991898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991898);
  }

  return result;
}

unint64_t sub_1B72E92D4()
{
  result = qword_1EB9918A0;
  if (!qword_1EB9918A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918A0);
  }

  return result;
}

unint64_t sub_1B72E932C()
{
  result = qword_1EB9918A8;
  if (!qword_1EB9918A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918A8);
  }

  return result;
}

unint64_t sub_1B72E9384()
{
  result = qword_1EB9918B0;
  if (!qword_1EB9918B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918B0);
  }

  return result;
}

unint64_t sub_1B72E93DC()
{
  result = qword_1EB9918B8;
  if (!qword_1EB9918B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918B8);
  }

  return result;
}

unint64_t sub_1B72E9434()
{
  result = qword_1EB9918C0;
  if (!qword_1EB9918C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918C0);
  }

  return result;
}

unint64_t sub_1B72E948C()
{
  result = qword_1EB9918C8;
  if (!qword_1EB9918C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918C8);
  }

  return result;
}

unint64_t sub_1B72E94E4()
{
  result = qword_1EB9918D0;
  if (!qword_1EB9918D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918D0);
  }

  return result;
}

unint64_t sub_1B72E953C()
{
  result = qword_1EB9918D8;
  if (!qword_1EB9918D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918D8);
  }

  return result;
}

unint64_t sub_1B72E9594()
{
  result = qword_1EB9918E0;
  if (!qword_1EB9918E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918E0);
  }

  return result;
}

unint64_t sub_1B72E95EC()
{
  result = qword_1EB9918E8;
  if (!qword_1EB9918E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918E8);
  }

  return result;
}

unint64_t sub_1B72E9644()
{
  result = qword_1EB9918F0;
  if (!qword_1EB9918F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918F0);
  }

  return result;
}

unint64_t sub_1B72E969C()
{
  result = qword_1EB9918F8;
  if (!qword_1EB9918F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9918F8);
  }

  return result;
}

unint64_t sub_1B72E96F4()
{
  result = qword_1EB991900;
  if (!qword_1EB991900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991900);
  }

  return result;
}

unint64_t sub_1B72E974C()
{
  result = qword_1EB991908;
  if (!qword_1EB991908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991908);
  }

  return result;
}

unint64_t sub_1B72E97A4()
{
  result = qword_1EB991910;
  if (!qword_1EB991910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991910);
  }

  return result;
}

unint64_t sub_1B72E97FC()
{
  result = qword_1EB991918;
  if (!qword_1EB991918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991918);
  }

  return result;
}

uint64_t sub_1B72E9850(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7372756F68 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736574756E696DLL && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73646E6F636573 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B72E9A44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6165597472617473 && a2 == 0xE900000000000072;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F4D7472617473 && a2 == 0xEA00000000006874 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961447472617473 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72616559646E65 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x68746E6F4D646E65 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796144646E65 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B72E9C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6165597472617473 && a2 == 0xE900000000000072;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F4D7472617473 && a2 == 0xEA00000000006874 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961447472617473 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F487472617473 && a2 == 0xE900000000000072 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E694D7472617473 && a2 == 0xEB00000000657475 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6365537472617473 && a2 == 0xEC00000073646E6FLL || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72616559646E65 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x68746E6F4D646E65 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x796144646E65 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x72756F48646E65 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74756E694D646E65 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6F636553646E65 && a2 == 0xEA00000000007364)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1B72EA024(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x657461446E6FLL && a2 == 0xE600000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6957657461446E6FLL && a2 == 0xEE00656D69546874 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942657461446E6FLL && a2 == 0xEC000000656D6954 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657461447962 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6957657461447962 && a2 == 0xEE00656D69546874 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7879290 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E656577746562 && a2 == 0xEC00000073657461 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B78792B0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B72EA2CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B72EA3E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1920298856 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73646E6F636573 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B72EA5D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F487472617473 && a2 == 0xE900000000000072 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E694D7472617473 && a2 == 0xEB00000000657475 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6365537472617473 && a2 == 0xEC00000073646E6FLL || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72756F48646E65 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74756E694D646E65 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F636553646E65 && a2 == 0xEA00000000007364)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B72EA97C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectAccountChange.newAccount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BankConnectAccountChange() + 20);

  return sub_1B72EAA7C(v3, a1);
}

uint64_t type metadata accessor for BankConnectAccountChange()
{
  result = qword_1EB991930;
  if (!qword_1EB991930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B72EAA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalAccount();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectAccountChange.init(oldAccount:newAccount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B72EAB30(a1, a3);
  v5 = a3 + *(type metadata accessor for BankConnectAccountChange() + 20);

  return sub_1B72EABA0(a2, v5);
}

uint64_t sub_1B72EAB30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72EABA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalAccount();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

FinanceKit::WidgetType_optional __swiftcall WidgetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t WidgetType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B72EACA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "Returns_Localizable";
  }

  else
  {
    v4 = "OrderTrackingWidget";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = "OrderTrackingWidget";
  }

  else
  {
    v7 = "Returns_Localizable";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();
  }

  return v9 & 1;
}

unint64_t sub_1B72EAD54()
{
  result = qword_1EB991928;
  if (!qword_1EB991928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991928);
  }

  return result;
}

uint64_t sub_1B72EADA8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B72EAE28()
{
  sub_1B7800798();
}

uint64_t sub_1B72EAE94()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B72EAF10@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B72EAF70(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "OrderTrackingWidget";
  }

  else
  {
    v3 = "Returns_Localizable";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void sub_1B72EAFEC()
{
  sub_1B72EB070();
  if (v0 <= 0x3F)
  {
    type metadata accessor for InternalAccount();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B72EB070()
{
  if (!qword_1EB991940)
  {
    type metadata accessor for InternalAccount();
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB991940);
    }
  }
}

uint64_t AssetAccount.init(id:displayName:accountDescription:institutionName:currencyCode:openingDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v19 = sub_1B77FFA18();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for AssetAccount(0);
  v21 = (a9 + v20[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + v20[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + v20[8]);
  *v23 = a8;
  v23[1] = a10;
  v24 = (a9 + v20[7]);
  *v24 = a6;
  v24[1] = a7;
  v25 = a9 + v20[9];

  return sub_1B7205340(a11, v25);
}

uint64_t LiabilityAccount.init(id:displayName:accountDescription:institutionName:currencyCode:creditLimit:nextPaymentDate:minimumPaymentAmount:overduePaymentAmount:openingDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, __int128 *a13, __int128 *a14, uint64_t a15)
{
  v20 = *(a11 + 4);
  v43 = *(a13 + 4);
  v44 = *(a14 + 4);
  v21 = sub_1B77FFA18();
  v38 = a14[1];
  v39 = *a14;
  v35 = a13[1];
  v36 = *a13;
  v33 = a11[1];
  v34 = *a11;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for LiabilityAccount(0);
  v23 = (a9 + v22[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + v22[6]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + v22[8]);
  *v25 = a8;
  v25[1] = a10;
  v26 = (a9 + v22[7]);
  *v26 = a6;
  v26[1] = a7;
  v27 = a9 + v22[9];
  *v27 = v34;
  *(v27 + 16) = v33;
  *(v27 + 32) = v20;
  v28 = type metadata accessor for AccountCreditInformation(0);
  sub_1B7205340(a12, v27 + v28[5]);
  v29 = v27 + v28[6];
  *v29 = v36;
  *(v29 + 16) = v35;
  *(v29 + 32) = v43;
  v30 = v27 + v28[7];
  *v30 = v39;
  *(v30 + 16) = v38;
  *(v30 + 32) = v44;
  v31 = a9 + v22[10];

  return sub_1B7205340(a15, v31);
}

uint64_t Account.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(v2, v12, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v12, v6, type metadata accessor for LiabilityAccount);
    v13 = sub_1B77FFA18();
    (*(*(v13 - 8) + 16))(a1, v6, v13);
    v14 = v6;
    v15 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v12, v9, type metadata accessor for AssetAccount);
    v16 = sub_1B77FFA18();
    (*(*(v16 - 8) + 16))(a1, v9, v16);
    v14 = v9;
    v15 = type metadata accessor for AssetAccount;
  }

  return sub_1B72EB688(v14, v15);
}

uint64_t sub_1B72EB620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72EB688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Account.displayName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(v1, v10, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v10, v4, type metadata accessor for LiabilityAccount);
    v11 = *&v4[*(v2 + 20)];

    v12 = v4;
    v13 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v10, v7, type metadata accessor for AssetAccount);
    v11 = *&v7[*(v5 + 20)];

    v12 = v7;
    v13 = type metadata accessor for AssetAccount;
  }

  sub_1B72EB688(v12, v13);
  return v11;
}

uint64_t Account.accountDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(v1, v10, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v10, v4, type metadata accessor for LiabilityAccount);
    v11 = *&v4[*(v2 + 24)];

    v12 = v4;
    v13 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v10, v7, type metadata accessor for AssetAccount);
    v11 = *&v7[*(v5 + 24)];

    v12 = v7;
    v13 = type metadata accessor for AssetAccount;
  }

  sub_1B72EB688(v12, v13);
  return v11;
}

uint64_t Account.institutionName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(v1, v10, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v10, v4, type metadata accessor for LiabilityAccount);
    v11 = *&v4[*(v2 + 28)];

    v12 = v4;
    v13 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v10, v7, type metadata accessor for AssetAccount);
    v11 = *&v7[*(v5 + 28)];

    v12 = v7;
    v13 = type metadata accessor for AssetAccount;
  }

  sub_1B72EB688(v12, v13);
  return v11;
}

uint64_t Account.currencyCode.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(v1, v10, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v10, v4, type metadata accessor for LiabilityAccount);
    v11 = *&v4[*(v2 + 32)];

    v12 = v4;
    v13 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v10, v7, type metadata accessor for AssetAccount);
    v11 = *&v7[*(v5 + 32)];

    v12 = v7;
    v13 = type metadata accessor for AssetAccount;
  }

  sub_1B72EB688(v12, v13);
  return v11;
}

uint64_t Account.openingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(v2, v12, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v12, v6, type metadata accessor for LiabilityAccount);
    sub_1B7280900(&v6[*(v4 + 40)], a1);
    v13 = v6;
    v14 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v12, v9, type metadata accessor for AssetAccount);
    sub_1B7280900(&v9[*(v7 + 36)], a1);
    v13 = v9;
    v14 = type metadata accessor for AssetAccount;
  }

  return sub_1B72EB688(v13, v14);
}

uint64_t sub_1B72EC054(uint64_t a1)
{
  v2 = sub_1B72F0F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72EC090(uint64_t a1)
{
  v2 = sub_1B72F0F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72EC0CC()
{
  if (*v0)
  {
    return 0x74696C696261696CLL;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1B72EC108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74696C696261696CLL && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B72EC1E8(uint64_t a1)
{
  v2 = sub_1B72F0EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72EC224(uint64_t a1)
{
  v2 = sub_1B72F0EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72EC260(uint64_t a1)
{
  v2 = sub_1B72F0EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72EC29C(uint64_t a1)
{
  v2 = sub_1B72F0EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Account.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991950);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v24 - v3;
  v28 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991958);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991960);
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F0EA8();
  sub_1B78023F8();
  sub_1B72F173C(v33, v12, type metadata accessor for Account);
  v16 = (v13 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v29;
    sub_1B72EB620(v12, v29, type metadata accessor for LiabilityAccount);
    v36 = 1;
    sub_1B72F0EFC();
    v18 = v30;
    v19 = v34;
    sub_1B7801ED8();
    sub_1B72F0FA4(&qword_1EB991978, type metadata accessor for LiabilityAccount);
    v20 = v32;
    sub_1B7801FC8();
    (*(v31 + 8))(v18, v20);
    sub_1B72EB688(v17, type metadata accessor for LiabilityAccount);
    return (*v16)(v15, v19);
  }

  else
  {
    sub_1B72EB620(v12, v9, type metadata accessor for AssetAccount);
    v35 = 0;
    sub_1B72F0F50();
    v22 = v34;
    sub_1B7801ED8();
    sub_1B72F0FA4(&qword_1EB991988, type metadata accessor for AssetAccount);
    v23 = v27;
    sub_1B7801FC8();
    (*(v26 + 8))(v7, v23);
    sub_1B72EB688(v9, type metadata accessor for AssetAccount);
    return (*v16)(v15, v22);
  }
}

uint64_t Account.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991990);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991998);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9919A0);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for Account(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B72F0EA8();
  v19 = v51;
  sub_1B78023C8();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v40 = v12;
  v41 = v15;
  v21 = v49;
  v20 = v50;
  v42 = 0;
  v39 = v17;
  v51 = v9;
  v22 = v48;
  v23 = sub_1B7801E98();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1B721CE4C();
  v26 = v6;
  v27 = v8;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v32 = sub_1B7801B18();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v34 = v51;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v25 & 1) == 0)
  {
    v57 = 0;
    sub_1B72F0F50();
    v36 = v42;
    sub_1B7801D38();
    if (!v36)
    {
      type metadata accessor for AssetAccount(0);
      sub_1B72F0FA4(&qword_1EB9919B0, type metadata accessor for AssetAccount);
      v30 = v41;
      v37 = v46;
      sub_1B7801E48();
      (*(v45 + 8))(v21, v37);
      (*(v22 + 8))(v8, v6);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v57 = 1;
  sub_1B72F0EFC();
  v28 = v20;
  v29 = v42;
  sub_1B7801D38();
  if (v29)
  {
LABEL_8:
    (*(v22 + 8))(v27, v6);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  type metadata accessor for LiabilityAccount(0);
  sub_1B72F0FA4(&qword_1EB9919A8, type metadata accessor for LiabilityAccount);
  v30 = v40;
  v31 = v44;
  sub_1B7801E48();
  (*(v47 + 8))(v28, v31);
  (*(v22 + 8))(v27, v26);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v38 = v39;
  sub_1B72EB620(v30, v39, type metadata accessor for Account);
  sub_1B72EB620(v38, v43, type metadata accessor for Account);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1B72ECE80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetAccount(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(v2, v12, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v12, v6, type metadata accessor for LiabilityAccount);
    v13 = sub_1B77FFA18();
    (*(*(v13 - 8) + 16))(a1, v6, v13);
    v14 = v6;
    v15 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v12, v10, type metadata accessor for AssetAccount);
    v16 = sub_1B77FFA18();
    (*(*(v16 - 8) + 16))(a1, v10, v16);
    v14 = v10;
    v15 = type metadata accessor for AssetAccount;
  }

  return sub_1B72EB688(v14, v15);
}

uint64_t Account.liabilityAccount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(v2, v6, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v6, a1, type metadata accessor for LiabilityAccount);
    v7 = type metadata accessor for LiabilityAccount(0);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for LiabilityAccount(0);
    (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    return sub_1B72EB688(v6, type metadata accessor for Account);
  }
}

uint64_t Account.assetAccount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(v2, v6, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for AssetAccount(0);
    (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
    return sub_1B72EB688(v6, type metadata accessor for Account);
  }

  else
  {
    sub_1B72EB620(v6, a1, type metadata accessor for AssetAccount);
    v9 = type metadata accessor for AssetAccount(0);
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }
}

uint64_t Account.accountType.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(v1, v5, type metadata accessor for Account);
  *a1 = swift_getEnumCaseMultiPayload() == 1;
  return sub_1B72EB688(v5, type metadata accessor for Account);
}

uint64_t AccountCreditInformation.creditLimit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t AccountCreditInformation.nextPaymentDueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccountCreditInformation(0) + 20);

  return sub_1B7280900(v3, a1);
}

uint64_t AccountCreditInformation.minimumNextPaymentAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccountCreditInformation(0) + 24);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
}

uint64_t AccountCreditInformation.overduePaymentAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccountCreditInformation(0) + 28);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
}

unint64_t sub_1B72ED538()
{
  v1 = 0x694C746964657263;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1B72ED5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72F35CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72ED5F0(uint64_t a1)
{
  v2 = sub_1B72F16E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72ED62C(uint64_t a1)
{
  v2 = sub_1B72F16E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountCreditInformation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9919B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F16E8();
  sub_1B78023F8();
  v9 = *(v3 + 4);
  v10 = v3[1];
  v19 = *v3;
  v20 = v10;
  v21 = v9;
  v22 = 0;
  sub_1B7215044();

  sub_1B7801F38();
  if (!v2)
  {

    v11 = type metadata accessor for AccountCreditInformation(0);
    LOBYTE(v19) = 1;
    sub_1B77FF988();
    sub_1B72F0FA4(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    v12 = (v3 + *(v11 + 24));
    v13 = *(v12 + 4);
    v14 = v12[1];
    v19 = *v12;
    v20 = v14;
    v21 = v13;
    v22 = 2;

    sub_1B7801F38();

    v16 = (v3 + *(v11 + 28));
    v17 = *(v16 + 4);
    v18 = v16[1];
    v19 = *v16;
    v20 = v18;
    v21 = v17;
    v22 = 3;

    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AccountCreditInformation.hash(into:)()
{
  v1 = sub_1B77FF988();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  if (*(v0 + 32))
  {
    v11 = *(v0 + 24);
    v10[1] = *(v0 + 16);
    sub_1B7802318();
    sub_1B7801688();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  v8 = type metadata accessor for AccountCreditInformation(0);
  sub_1B7280900(v0 + v8[5], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1B7802318();
    sub_1B72F0FA4(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
    sub_1B7800768();
    (*(v2 + 8))(v4, v1);
  }

  if (*(v0 + v8[6] + 32))
  {
    sub_1B7802318();
    sub_1B7801688();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  if (!*(v0 + v8[7] + 32))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();
  sub_1B7801688();
  return sub_1B7800798();
}

uint64_t AccountCreditInformation.hashValue.getter()
{
  sub_1B78022F8();
  AccountCreditInformation.hash(into:)();
  return sub_1B7802368();
}

uint64_t AccountCreditInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9919C8);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for AccountCreditInformation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F16E8();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v10;
  v29 = a1;
  v13 = v31;
  v14 = v12;
  v36 = 0;
  sub_1B72153F8();
  v15 = v32;
  sub_1B7801DB8();
  v16 = v35;
  v17 = v34;
  *v14 = v33;
  *(v14 + 16) = v17;
  *(v14 + 32) = v16;
  sub_1B77FF988();
  LOBYTE(v33) = 1;
  sub_1B72F0FA4(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  sub_1B7801DB8();
  sub_1B7205340(v6, v14 + *(v28 + 20));
  v36 = 2;
  v27 = 0;
  sub_1B7801DB8();
  v18 = v29;
  v19 = v35;
  v20 = v28;
  v21 = v14 + *(v28 + 24);
  v22 = v34;
  *v21 = v33;
  *(v21 + 16) = v22;
  *(v21 + 32) = v19;
  v36 = 3;
  sub_1B7801DB8();
  (*(v13 + 8))(v9, v15);
  v23 = v35;
  v24 = v14 + *(v20 + 28);
  v25 = v34;
  *v24 = v33;
  *(v24 + 16) = v25;
  *(v24 + 32) = v23;
  sub_1B72F173C(v14, v30, type metadata accessor for AccountCreditInformation);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1B72EB688(v14, type metadata accessor for AccountCreditInformation);
}

uint64_t sub_1B72EE11C()
{
  sub_1B78022F8();
  AccountCreditInformation.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B72EE160()
{
  sub_1B78022F8();
  AccountCreditInformation.hash(into:)();
  return sub_1B7802368();
}

uint64_t AssetAccount.openingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssetAccount(0) + 36);

  return sub_1B7280900(v3, a1);
}

uint64_t sub_1B72EE24C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7475746974736E69;
  v4 = 0x79636E6572727563;
  if (v1 != 4)
  {
    v4 = 0x44676E696E65706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4E79616C70736964;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B72EE328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72F373C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72EE350(uint64_t a1)
{
  v2 = sub_1B72F1F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72EE38C(uint64_t a1)
{
  v2 = sub_1B72F1F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetAccount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9919D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F1F98();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B77FFA18();
  sub_1B72F0FA4(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for AssetAccount(0);
    v8[14] = 1;
    sub_1B7801F78();
    v8[13] = 2;
    sub_1B7801EF8();
    v8[12] = 3;
    sub_1B7801F78();
    v8[11] = 4;
    sub_1B7801F78();
    v8[10] = 5;
    sub_1B77FF988();
    sub_1B72F0FA4(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AssetAccount.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_1B77FFA18();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9919E0);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F1F98();
  v37 = v10;
  v14 = v38;
  sub_1B78023C8();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v5;
  v44 = 0;
  sub_1B72F0FA4(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  v15 = v34;
  sub_1B7801E48();
  (*(v33 + 32))(v13, v15, v6);
  v43 = 1;
  v16 = sub_1B7801DF8();
  v17 = &v13[v11[5]];
  *v17 = v16;
  v17[1] = v18;
  v42 = 2;
  v19 = sub_1B7801D78();
  v20 = v35;
  v21 = &v13[v11[6]];
  *v21 = v19;
  v21[1] = v22;
  v41 = 3;
  v23 = sub_1B7801DF8();
  v24 = &v13[v11[7]];
  *v24 = v23;
  v24[1] = v25;
  v40 = 4;
  v26 = sub_1B7801DF8();
  v27 = &v13[v11[8]];
  *v27 = v26;
  v27[1] = v28;
  sub_1B77FF988();
  v39 = 5;
  sub_1B72F0FA4(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v29 = v38;
  sub_1B7801DB8();
  (*(v20 + 8))(v37, v36);
  sub_1B7205340(v29, &v13[v11[9]]);
  sub_1B72F173C(v13, v32, type metadata accessor for AssetAccount);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B72EB688(v13, type metadata accessor for AssetAccount);
}

uint64_t sub_1B72EECB4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_1B72EED14(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

uint64_t sub_1B72EED74(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

uint64_t sub_1B72EEDD4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));

  return v2;
}

uint64_t LiabilityAccount.openingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LiabilityAccount(0) + 40);

  return sub_1B7280900(v3, a1);
}

unint64_t sub_1B72EEEB0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x44676E696E65706FLL;
  if (v1 == 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x7475746974736E69;
  if (v1 != 3)
  {
    v4 = 0x79636E6572727563;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v5 = 0x4E79616C70736964;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B72EEFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72F3950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72EEFDC(uint64_t a1)
{
  v2 = sub_1B72F1FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72EF018(uint64_t a1)
{
  v2 = sub_1B72F1FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LiabilityAccount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9919E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F1FEC();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B77FFA18();
  sub_1B72F0FA4(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for LiabilityAccount(0);
    v8[14] = 1;
    sub_1B7801F78();
    v8[13] = 2;
    sub_1B7801EF8();
    v8[12] = 3;
    sub_1B7801F78();
    v8[11] = 4;
    sub_1B7801F78();
    v8[10] = 5;
    type metadata accessor for AccountCreditInformation(0);
    sub_1B72F0FA4(&qword_1EB9919F8, type metadata accessor for AccountCreditInformation);
    sub_1B7801FC8();
    v8[9] = 6;
    sub_1B77FF988();
    sub_1B72F0FA4(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t LiabilityAccount.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v35 - v4;
  v40 = type metadata accessor for AccountCreditInformation(0);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FFA18();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991A00);
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v35 - v9;
  v11 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F1FEC();
  v44 = v10;
  v14 = v46;
  sub_1B78023C8();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v6;
  v37 = v11;
  v15 = v41;
  v16 = v42;
  v46 = a1;
  v53 = 0;
  sub_1B72F0FA4(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  v17 = v43;
  sub_1B7801E48();
  (*(v16 + 32))(v13, v17, v7);
  v52 = 1;
  v18 = sub_1B7801DF8();
  v19 = v15;
  v20 = v37;
  v21 = &v13[v37[5]];
  *v21 = v18;
  v21[1] = v22;
  v51 = 2;
  v43 = 0;
  v23 = sub_1B7801D78();
  v24 = &v13[v20[6]];
  *v24 = v23;
  v24[1] = v25;
  v50 = 3;
  v26 = sub_1B7801DF8();
  v27 = &v13[v20[7]];
  *v27 = v26;
  v27[1] = v28;
  v49 = 4;
  v29 = sub_1B7801DF8();
  v30 = &v13[v20[8]];
  *v30 = v29;
  v30[1] = v31;
  v48 = 5;
  sub_1B72F0FA4(&qword_1EB991A08, type metadata accessor for AccountCreditInformation);
  v32 = v36;
  sub_1B7801E48();
  sub_1B72EB620(v32, &v13[v20[9]], type metadata accessor for AccountCreditInformation);
  sub_1B77FF988();
  v47 = 6;
  sub_1B72F0FA4(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v33 = v39;
  sub_1B7801DB8();
  (*(v19 + 8))(v44, v45);
  sub_1B7205340(v33, &v13[v20[10]]);
  sub_1B72F173C(v13, v38, type metadata accessor for LiabilityAccount);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return sub_1B72EB688(v13, type metadata accessor for LiabilityAccount);
}

uint64_t sub_1B72EFB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(a1, v12, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v12, v6, type metadata accessor for LiabilityAccount);
    v13 = sub_1B77FFA18();
    (*(*(v13 - 8) + 16))(a2, v6, v13);
    v14 = v6;
    v15 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v12, v9, type metadata accessor for AssetAccount);
    v16 = sub_1B77FFA18();
    (*(*(v16 - 8) + 16))(a2, v9, v16);
    v14 = v9;
    v15 = type metadata accessor for AssetAccount;
  }

  return sub_1B72EB688(v14, v15);
}

uint64_t sub_1B72EFD3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(a1, v12, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v12, v6, type metadata accessor for LiabilityAccount);
    v13 = &v6[*(v4 + 20)];
    v15 = *v13;
    v14 = *(v13 + 1);

    v16 = v6;
    v17 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v12, v9, type metadata accessor for AssetAccount);
    v18 = &v9[*(v7 + 20)];
    v15 = *v18;
    v14 = *(v18 + 1);

    v16 = v9;
    v17 = type metadata accessor for AssetAccount;
  }

  result = sub_1B72EB688(v16, v17);
  *a2 = v15;
  a2[1] = v14;
  return result;
}

uint64_t sub_1B72EFF20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(a1, v12, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v12, v6, type metadata accessor for LiabilityAccount);
    v13 = &v6[*(v4 + 24)];
    v15 = *v13;
    v14 = *(v13 + 1);

    v16 = v6;
    v17 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v12, v9, type metadata accessor for AssetAccount);
    v18 = &v9[*(v7 + 24)];
    v15 = *v18;
    v14 = *(v18 + 1);

    v16 = v9;
    v17 = type metadata accessor for AssetAccount;
  }

  result = sub_1B72EB688(v16, v17);
  *a2 = v15;
  a2[1] = v14;
  return result;
}

uint64_t sub_1B72F0104@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(a1, v12, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v12, v6, type metadata accessor for LiabilityAccount);
    v13 = &v6[*(v4 + 28)];
    v15 = *v13;
    v14 = *(v13 + 1);

    v16 = v6;
    v17 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v12, v9, type metadata accessor for AssetAccount);
    v18 = &v9[*(v7 + 28)];
    v15 = *v18;
    v14 = *(v18 + 1);

    v16 = v9;
    v17 = type metadata accessor for AssetAccount;
  }

  result = sub_1B72EB688(v16, v17);
  *a2 = v15;
  a2[1] = v14;
  return result;
}

uint64_t sub_1B72F02E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(a1, v12, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v12, v6, type metadata accessor for LiabilityAccount);
    v13 = &v6[*(v4 + 32)];
    v15 = *v13;
    v14 = *(v13 + 1);

    v16 = v6;
    v17 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v12, v9, type metadata accessor for AssetAccount);
    v18 = &v9[*(v7 + 32)];
    v15 = *v18;
    v14 = *(v18 + 1);

    v16 = v9;
    v17 = type metadata accessor for AssetAccount;
  }

  result = sub_1B72EB688(v16, v17);
  *a2 = v15;
  a2[1] = v14;
  return result;
}

uint64_t sub_1B72F04CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(a1, v6, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for AssetAccount(0);
    (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
    return sub_1B72EB688(v6, type metadata accessor for Account);
  }

  else
  {
    sub_1B72EB620(v6, a2, type metadata accessor for AssetAccount);
    v9 = type metadata accessor for AssetAccount(0);
    return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
  }
}

uint64_t sub_1B72F063C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(a1, v6, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v6, a2, type metadata accessor for LiabilityAccount);
    v7 = type metadata accessor for LiabilityAccount(0);
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for LiabilityAccount(0);
    (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
    return sub_1B72EB688(v6, type metadata accessor for Account);
  }
}

uint64_t sub_1B72F07AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(a1, v6, type metadata accessor for Account);
  LOBYTE(a1) = swift_getEnumCaseMultiPayload() == 1;
  result = sub_1B72EB688(v6, type metadata accessor for Account);
  *a2 = a1;
  return result;
}

uint64_t sub_1B72F087C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B72F173C(a1, v12, type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72EB620(v12, v6, type metadata accessor for LiabilityAccount);
    sub_1B7280900(&v6[*(v4 + 40)], a2);
    v13 = v6;
    v14 = type metadata accessor for LiabilityAccount;
  }

  else
  {
    sub_1B72EB620(v12, v9, type metadata accessor for AssetAccount);
    sub_1B7280900(&v9[*(v7 + 36)], a2);
    v13 = v9;
    v14 = type metadata accessor for AssetAccount;
  }

  return sub_1B72EB688(v13, v14);
}

uint64_t static ManagedAccount.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98E988 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B72F0B00()
{
  if (qword_1EB98E988 != -1)
  {
    swift_once();
  }
}

BOOL _s10FinanceKit7AccountO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Account(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991AE8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1B72F173C(a1, &v27 - v18, type metadata accessor for Account);
  sub_1B72F173C(a2, &v19[v20], type metadata accessor for Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B72F173C(v19, v13, type metadata accessor for Account);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B72EB620(&v19[v20], v6, type metadata accessor for LiabilityAccount);
      v21 = _s10FinanceKit16LiabilityAccountV2eeoiySbAC_ACtFZ_0(v13, v6);
      sub_1B72EB688(v6, type metadata accessor for LiabilityAccount);
      v22 = v13;
      v23 = type metadata accessor for LiabilityAccount;
LABEL_9:
      sub_1B72EB688(v22, v23);
      sub_1B72EB688(v19, type metadata accessor for Account);
      return v21;
    }

    v24 = type metadata accessor for LiabilityAccount;
    v25 = v13;
  }

  else
  {
    sub_1B72F173C(v19, v15, type metadata accessor for Account);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B72EB620(&v19[v20], v9, type metadata accessor for AssetAccount);
      v21 = _s10FinanceKit12AssetAccountV2eeoiySbAC_ACtFZ_0(v15, v9);
      sub_1B72EB688(v9, type metadata accessor for AssetAccount);
      v22 = v15;
      v23 = type metadata accessor for AssetAccount;
      goto LABEL_9;
    }

    v24 = type metadata accessor for AssetAccount;
    v25 = v15;
  }

  sub_1B72EB688(v25, v24);
  sub_1B7205418(v19, &qword_1EB991AE8);
  return 0;
}

unint64_t sub_1B72F0EA8()
{
  result = qword_1EB991968;
  if (!qword_1EB991968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991968);
  }

  return result;
}

unint64_t sub_1B72F0EFC()
{
  result = qword_1EB991970;
  if (!qword_1EB991970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991970);
  }

  return result;
}

unint64_t sub_1B72F0F50()
{
  result = qword_1EB991980;
  if (!qword_1EB991980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991980);
  }

  return result;
}

uint64_t sub_1B72F0FA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10FinanceKit24AccountCreditInformationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v63 - v10;
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v69 = a1;
  v70 = a2;
  v15 = a1[4];
  v17 = *a2;
  v16 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  if (!v15)
  {
    if (!v20)
    {
      v63 = v9;
      goto LABEL_18;
    }

LABEL_10:
    v71 = v12;
    v72 = v11;
    v73 = v14;
    v74 = v13;
    v75 = v15;
    v76 = v17;
    v77 = v16;
    v78 = v18;
    v79 = v19;
    v80 = v20;
LABEL_11:
    v21 = &unk_1EB98FAB8;
    v22 = &v71;
LABEL_24:
    sub_1B7205418(v22, v21);
    return 0;
  }

  if (!v20)
  {
    v71 = v12;
    v72 = v11;
    v73 = v14;
    v74 = v13;
    v75 = v15;
    swift_bridgeObjectRetain_n();
    sub_1B721722C(&v71);
    goto LABEL_10;
  }

  v63 = v9;
  swift_bridgeObjectRetain_n();

  if ((MEMORY[0x1B8CA5970](v12, v11, v14, v17, v16, v18) & 1) == 0)
  {

    goto LABEL_13;
  }

  if (v13 != v19 || v15 != v20)
  {
    v23 = sub_1B78020F8();

    if (v23)
    {
      goto LABEL_17;
    }

LABEL_13:
    v71 = v12;
    v72 = v11;
    v73 = v14;
    v74 = v13;
    v75 = v15;
    sub_1B721722C(&v71);
LABEL_14:

    return 0;
  }

LABEL_17:
  v71 = v12;
  v72 = v11;
  v73 = v14;
  v74 = v13;
  v75 = v15;
  sub_1B721722C(&v71);
LABEL_18:

  v24 = type metadata accessor for AccountCreditInformation(0);
  v25 = v24[5];
  v26 = *(v63 + 48);
  v27 = v66;
  sub_1B7280900(v69 + v25, v66);
  sub_1B7280900(v70 + v25, v27 + v26);
  v29 = v67;
  v28 = v68;
  v30 = *(v67 + 48);
  v31 = v30(v27, 1, v68);
  v32 = v65;
  if (v31 == 1)
  {
    if (v30(v27 + v26, 1, v28) == 1)
    {
      sub_1B7205418(v27, &qword_1EB98EBD0);
      goto LABEL_27;
    }

LABEL_23:
    v21 = &qword_1EB98FCE0;
    v22 = v27;
    goto LABEL_24;
  }

  sub_1B7280900(v27, v65);
  if (v30(v27 + v26, 1, v28) == 1)
  {
    (*(v29 + 8))(v32, v28);
    goto LABEL_23;
  }

  v34 = v64;
  (*(v29 + 32))(v64, v27 + v26, v28);
  sub_1B72F0FA4(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v35 = sub_1B7800828();
  v36 = *(v29 + 8);
  v36(v34, v28);
  v36(v32, v28);
  sub_1B7205418(v27, &qword_1EB98EBD0);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v37 = v24[6];
  v39 = *(v69 + v37);
  v38 = *(v69 + v37 + 8);
  v41 = *(v69 + v37 + 16);
  v40 = *(v69 + v37 + 24);
  v42 = *(v69 + v37 + 32);
  v43 = (v70 + v37);
  v45 = *v43;
  v44 = v43[1];
  v46 = v43[2];
  v47 = v43[3];
  v48 = v43[4];
  if (v42)
  {
    if (v48)
    {
      v68 = v40;
      swift_bridgeObjectRetain_n();

      if (MEMORY[0x1B8CA5970](v39, v38, v41, v45, v44, v46))
      {
        if (v68 == v47 && v42 == v48)
        {

LABEL_41:
          v71 = v39;
          v72 = v38;
          v73 = v41;
          v74 = v68;
          v75 = v42;
          sub_1B721722C(&v71);
          goto LABEL_42;
        }

        v50 = sub_1B78020F8();

        if (v50)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }

      v71 = v39;
      v72 = v38;
      v73 = v41;
      v74 = v68;
LABEL_54:
      v75 = v42;
      sub_1B721722C(&v71);
      goto LABEL_14;
    }

    v71 = v39;
    v72 = v38;
    v73 = v41;
    v74 = v40;
    v75 = v42;
    v49 = v40;
    swift_bridgeObjectRetain_n();
    sub_1B721722C(&v71);
    goto LABEL_36;
  }

  if (v48)
  {
    v49 = v40;

LABEL_36:
    v71 = v39;
    v72 = v38;
    v73 = v41;
    v74 = v49;
    v75 = v42;
    v76 = v45;
    v77 = v44;
    v78 = v46;
    v79 = v47;
    v80 = v48;
    goto LABEL_11;
  }

LABEL_42:

  v51 = v24[7];
  v53 = *(v69 + v51);
  v52 = *(v69 + v51 + 8);
  v55 = *(v69 + v51 + 16);
  v54 = *(v69 + v51 + 24);
  v42 = *(v69 + v51 + 32);
  v56 = (v70 + v51);
  v58 = *v56;
  v57 = v56[1];
  v60 = v56[2];
  v59 = v56[3];
  v61 = v56[4];
  if (!v42)
  {
    if (!v61)
    {
      goto LABEL_58;
    }

    goto LABEL_51;
  }

  if (!v61)
  {
    v71 = v53;
    v72 = v52;
    v73 = v55;
    v74 = v54;
    v75 = v42;
    swift_bridgeObjectRetain_n();
    sub_1B721722C(&v71);
LABEL_51:
    v71 = v53;
    v72 = v52;
    v73 = v55;
    v74 = v54;
    v75 = v42;
    v76 = v58;
    v77 = v57;
    v78 = v60;
    v79 = v59;
    v80 = v61;
    goto LABEL_11;
  }

  swift_bridgeObjectRetain_n();

  if ((MEMORY[0x1B8CA5970](v53, v52, v55, v58, v57, v60) & 1) == 0)
  {

LABEL_53:
    v71 = v53;
    v72 = v52;
    v73 = v55;
    v74 = v54;
    goto LABEL_54;
  }

  if (v54 != v59 || v42 != v61)
  {
    v62 = sub_1B78020F8();

    if (v62)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_57:
  v71 = v53;
  v72 = v52;
  v73 = v55;
  v74 = v54;
  v75 = v42;
  sub_1B721722C(&v71);
LABEL_58:

  return 1;
}

unint64_t sub_1B72F16E8()
{
  result = qword_1EB9919C0;
  if (!qword_1EB9919C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9919C0);
  }

  return result;
}

uint64_t sub_1B72F173C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s10FinanceKit16LiabilityAccountV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for LiabilityAccount(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24 || (*v21 != *v23 || v22 != v24) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = v14[7];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if ((v26 != *v28 || v27 != v28[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v29 = v14[8];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  if ((v30 != *v32 || v31 != v32[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if ((_s10FinanceKit24AccountCreditInformationV2eeoiySbAC_ACtFZ_0((a1 + v14[9]), (a2 + v14[9])) & 1) == 0)
  {
    return 0;
  }

  v33 = v14[10];
  v34 = *(v11 + 48);
  sub_1B7280900(a1 + v33, v13);
  sub_1B7280900(a2 + v33, &v13[v34]);
  v35 = *(v5 + 48);
  if (v35(v13, 1, v4) == 1)
  {
    if (v35(&v13[v34], 1, v4) == 1)
    {
      sub_1B7205418(v13, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_26;
  }

  sub_1B7280900(v13, v10);
  if (v35(&v13[v34], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_26:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v34], v4);
  sub_1B72F0FA4(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v37 = sub_1B7800828();
  v38 = *(v5 + 8);
  v38(v7, v4);
  v38(v10, v4);
  sub_1B7205418(v13, &qword_1EB98EBD0);
  return (v37 & 1) != 0;
}

BOOL _s10FinanceKit12AssetAccountV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for AssetAccount(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24 || (*v21 != *v23 || v22 != v24) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = v14[7];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if ((v26 != *v28 || v27 != v28[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v29 = v14[8];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  if ((v30 != *v32 || v31 != v32[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v33 = v14[9];
  v34 = *(v11 + 48);
  sub_1B7280900(a1 + v33, v13);
  sub_1B7280900(a2 + v33, &v13[v34]);
  v35 = *(v5 + 48);
  if (v35(v13, 1, v4) == 1)
  {
    if (v35(&v13[v34], 1, v4) == 1)
    {
      sub_1B7205418(v13, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_25;
  }

  sub_1B7280900(v13, v10);
  if (v35(&v13[v34], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_25:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v34], v4);
  sub_1B72F0FA4(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v37 = sub_1B7800828();
  v38 = *(v5 + 8);
  v38(v7, v4);
  v38(v10, v4);
  sub_1B7205418(v13, &qword_1EB98EBD0);
  return (v37 & 1) != 0;
}

unint64_t sub_1B72F1F98()
{
  result = qword_1EB9919D8;
  if (!qword_1EB9919D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9919D8);
  }

  return result;
}

unint64_t sub_1B72F1FEC()
{
  result = qword_1EB9919F0;
  if (!qword_1EB9919F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9919F0);
  }

  return result;
}

unint64_t _s10FinanceKit14ManagedAccountC14mappedKeyPathsSDys03AnyF4PathCSSGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7814E30;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = 25705;
  *(v0 + 48) = 0xE200000000000000;
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = 0x4E79616C70736964;
  *(v0 + 72) = 0xEB00000000656D61;
  *(v0 + 80) = swift_getKeyPath();
  *(v0 + 88) = 0xD000000000000012;
  *(v0 + 96) = 0x80000001B78757B0;
  *(v0 + 104) = swift_getKeyPath();
  *(v0 + 112) = 0x7475746974736E69;
  *(v0 + 120) = 0xEF656D614E6E6F69;
  *(v0 + 128) = swift_getKeyPath();
  *(v0 + 136) = 0x79636E6572727563;
  *(v0 + 144) = 0xE800000000000000;
  *(v0 + 152) = swift_getKeyPath();
  *(v0 + 160) = 25705;
  *(v0 + 168) = 0xE200000000000000;
  *(v0 + 176) = swift_getKeyPath();
  *(v0 + 184) = 0x4E79616C70736964;
  *(v0 + 192) = 0xEB00000000656D61;
  *(v0 + 200) = swift_getKeyPath();
  *(v0 + 208) = 0xD000000000000012;
  *(v0 + 216) = 0x80000001B78757B0;
  *(v0 + 224) = swift_getKeyPath();
  *(v0 + 232) = 0x7475746974736E69;
  *(v0 + 240) = 0xEF656D614E6E6F69;
  *(v0 + 248) = swift_getKeyPath();
  *(v0 + 256) = 0x79636E6572727563;
  *(v0 + 264) = 0xE800000000000000;
  *(v0 + 272) = swift_getKeyPath();
  *(v0 + 280) = 0x44676E696E65706FLL;
  *(v0 + 288) = 0xEB00000000657461;
  *(v0 + 296) = swift_getKeyPath();
  *(v0 + 304) = 25705;
  *(v0 + 312) = 0xE200000000000000;
  *(v0 + 320) = swift_getKeyPath();
  *(v0 + 328) = 0x4E79616C70736964;
  *(v0 + 336) = 0xEB00000000656D61;
  *(v0 + 344) = swift_getKeyPath();
  *(v0 + 352) = 0xD000000000000012;
  *(v0 + 360) = 0x80000001B78757B0;
  *(v0 + 368) = swift_getKeyPath();
  *(v0 + 376) = 0x7475746974736E69;
  *(v0 + 384) = 0xEF656D614E6E6F69;
  *(v0 + 392) = swift_getKeyPath();
  *(v0 + 400) = 0x79636E6572727563;
  *(v0 + 408) = 0xE800000000000000;
  *(v0 + 416) = swift_getKeyPath();
  *(v0 + 424) = 0x44676E696E65706FLL;
  *(v0 + 432) = 0xEB00000000657461;
  *(v0 + 440) = swift_getKeyPath();
  *(v0 + 448) = 25705;
  *(v0 + 456) = 0xE200000000000000;
  *(v0 + 464) = swift_getKeyPath();
  *(v0 + 472) = 0x4E79616C70736964;
  *(v0 + 480) = 0xEB00000000656D61;
  *(v0 + 488) = swift_getKeyPath();
  *(v0 + 496) = 0xD000000000000012;
  *(v0 + 504) = 0x80000001B78757B0;
  *(v0 + 512) = swift_getKeyPath();
  *(v0 + 520) = 0x7475746974736E69;
  *(v0 + 528) = 0xEF656D614E6E6F69;
  *(v0 + 536) = swift_getKeyPath();
  *(v0 + 544) = 0x79636E6572727563;
  *(v0 + 552) = 0xE800000000000000;
  *(v0 + 560) = swift_getKeyPath();
  *(v0 + 568) = 0xD000000000000016;
  *(v0 + 576) = 0x80000001B7877220;
  *(v0 + 584) = swift_getKeyPath();
  *(v0 + 592) = 0xD000000000000016;
  *(v0 + 600) = 0x80000001B7877220;
  *(v0 + 608) = swift_getKeyPath();
  *(v0 + 616) = 0x79636E6572727563;
  *(v0 + 624) = 0xE800000000000000;
  *(v0 + 632) = swift_getKeyPath();
  *(v0 + 640) = 0x6D7961507478656ELL;
  *(v0 + 648) = 0xEF65746144746E65;
  *(v0 + 656) = swift_getKeyPath();
  *(v0 + 664) = 0xD000000000000019;
  *(v0 + 672) = 0x80000001B7877250;
  *(v0 + 680) = swift_getKeyPath();
  *(v0 + 688) = 0xD000000000000019;
  *(v0 + 696) = 0x80000001B7877250;
  *(v0 + 704) = swift_getKeyPath();
  *(v0 + 712) = 0x79636E6572727563;
  *(v0 + 720) = 0xE800000000000000;
  *(v0 + 728) = swift_getKeyPath();
  *(v0 + 736) = 0xD000000000000019;
  *(v0 + 744) = 0x80000001B7877270;
  *(v0 + 752) = swift_getKeyPath();
  *(v0 + 760) = 0xD000000000000019;
  *(v0 + 768) = 0x80000001B7877270;
  *(v0 + 776) = swift_getKeyPath();
  *(v0 + 784) = 0x79636E6572727563;
  *(v0 + 792) = 0xE800000000000000;
  *(v0 + 800) = swift_getKeyPath();
  *(v0 + 808) = 0x44676E696E65706FLL;
  *(v0 + 816) = 0xEB00000000657461;
  *(v0 + 824) = swift_getKeyPath();
  *(v0 + 832) = 25705;
  *(v0 + 840) = 0xE200000000000000;
  *(v0 + 848) = swift_getKeyPath();
  *(v0 + 856) = 0x4E79616C70736964;
  *(v0 + 864) = 0xEB00000000656D61;
  *(v0 + 872) = swift_getKeyPath();
  *(v0 + 880) = 0xD000000000000012;
  *(v0 + 888) = 0x80000001B78757B0;
  *(v0 + 896) = swift_getKeyPath();
  *(v0 + 904) = 0x7475746974736E69;
  *(v0 + 912) = 0xEF656D614E6E6F69;
  *(v0 + 920) = swift_getKeyPath();
  *(v0 + 928) = 0x79636E6572727563;
  *(v0 + 936) = 0xE800000000000000;
  *(v0 + 944) = swift_getKeyPath();
  *(v0 + 952) = 0xD000000000000016;
  *(v0 + 960) = 0x80000001B7877220;
  *(v0 + 968) = swift_getKeyPath();
  *(v0 + 976) = 0xD000000000000016;
  *(v0 + 984) = 0x80000001B7877220;
  *(v0 + 992) = swift_getKeyPath();
  *(v0 + 1000) = 0x79636E6572727563;
  *(v0 + 1008) = 0xE800000000000000;
  *(v0 + 1016) = swift_getKeyPath();
  *(v0 + 1024) = 0x6D7961507478656ELL;
  *(v0 + 1032) = 0xEF65746144746E65;
  *(v0 + 1040) = swift_getKeyPath();
  *(v0 + 1048) = 0xD000000000000019;
  *(v0 + 1056) = 0x80000001B7877250;
  *(v0 + 1064) = swift_getKeyPath();
  *(v0 + 1072) = 0xD000000000000019;
  *(v0 + 1080) = 0x80000001B7877250;
  *(v0 + 1088) = swift_getKeyPath();
  *(v0 + 1096) = 0x79636E6572727563;
  *(v0 + 1104) = 0xE800000000000000;
  *(v0 + 1112) = swift_getKeyPath();
  *(v0 + 1120) = 0xD000000000000019;
  *(v0 + 1128) = 0x80000001B7877270;
  *(v0 + 1136) = swift_getKeyPath();
  *(v0 + 1144) = 0xD000000000000019;
  *(v0 + 1152) = 0x80000001B7877270;
  *(v0 + 1160) = swift_getKeyPath();
  *(v0 + 1168) = 0x79636E6572727563;
  *(v0 + 1176) = 0xE800000000000000;
  *(v0 + 1184) = swift_getKeyPath();
  *(v0 + 1192) = 0x44676E696E65706FLL;
  *(v0 + 1200) = 0xEB00000000657461;
  *(v0 + 1208) = swift_getKeyPath();
  *(v0 + 1216) = 0xD000000000000010;
  *(v0 + 1224) = 0x80000001B78754F0;
  *(v0 + 1232) = swift_getKeyPath();
  *(v0 + 1240) = 0x44676E696E65706FLL;
  *(v0 + 1248) = 0xEB00000000657461;
  v1 = sub_1B7202424(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBC0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v1;
}

unint64_t _s10FinanceKit14ManagedAccountC20comparablePredicatesSDys10AnyKeyPathCSo11NSPredicateCGSgvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F208);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7808C50;
  *(inited + 32) = swift_getKeyPath();
  v1 = sub_1B7800838();
  v2 = objc_opt_self();
  v3 = [v2 expressionForKeyPath_];

  v4 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v3 rightExpression:v4 modifier:0 type:4 options:0];

  *(inited + 40) = v5;
  *(inited + 48) = swift_getKeyPath();
  v6 = sub_1B7800838();
  v7 = [v2 expressionForKeyPath_];

  v8 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v7 rightExpression:v8 modifier:0 type:4 options:0];

  *(inited + 56) = v9;
  v10 = sub_1B7202524(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBB0);
  swift_arrayDestroy();
  return v10;
}

uint64_t sub_1B72F29EC(uint64_t a1)
{
  result = sub_1B72F0FA4(&qword_1EB990E00, type metadata accessor for Account);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B72F2A44()
{
  result = type metadata accessor for AssetAccount(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LiabilityAccount(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B72F2AE0()
{
  sub_1B72F2CB8(319, qword_1EDAFCF10);
  if (v0 <= 0x3F)
  {
    sub_1B72F2B80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B72F2B80()
{
  if (!qword_1EDAFD2F8[0])
  {
    sub_1B77FF988();
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, qword_1EDAFD2F8);
    }
  }
}

void sub_1B72F2C00()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      sub_1B72F2B80();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B72F2CB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B7801768();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B72F2D2C()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccountCreditInformation(319);
      if (v2 <= 0x3F)
      {
        sub_1B72F2B80();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for LiabilityAccount.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiabilityAccount.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B72F2FA0()
{
  result = qword_1EB991A58;
  if (!qword_1EB991A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991A58);
  }

  return result;
}

unint64_t sub_1B72F2FF8()
{
  result = qword_1EB991A60;
  if (!qword_1EB991A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991A60);
  }

  return result;
}

unint64_t sub_1B72F3050()
{
  result = qword_1EB991A68;
  if (!qword_1EB991A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991A68);
  }

  return result;
}

unint64_t sub_1B72F30A8()
{
  result = qword_1EB991A70;
  if (!qword_1EB991A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991A70);
  }

  return result;
}

unint64_t sub_1B72F3100()
{
  result = qword_1EB991A78;
  if (!qword_1EB991A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991A78);
  }

  return result;
}

unint64_t sub_1B72F3158()
{
  result = qword_1EB991A80;
  if (!qword_1EB991A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991A80);
  }

  return result;
}

unint64_t sub_1B72F31B0()
{
  result = qword_1EB991A88;
  if (!qword_1EB991A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991A88);
  }

  return result;
}

unint64_t sub_1B72F3208()
{
  result = qword_1EB991A90;
  if (!qword_1EB991A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991A90);
  }

  return result;
}

unint64_t sub_1B72F3260()
{
  result = qword_1EB991A98;
  if (!qword_1EB991A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991A98);
  }

  return result;
}

unint64_t sub_1B72F32B8()
{
  result = qword_1EB991AA0;
  if (!qword_1EB991AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AA0);
  }

  return result;
}

unint64_t sub_1B72F3310()
{
  result = qword_1EB991AA8;
  if (!qword_1EB991AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AA8);
  }

  return result;
}

unint64_t sub_1B72F3368()
{
  result = qword_1EB991AB0;
  if (!qword_1EB991AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AB0);
  }

  return result;
}

unint64_t sub_1B72F33C0()
{
  result = qword_1EB991AB8;
  if (!qword_1EB991AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AB8);
  }

  return result;
}

unint64_t sub_1B72F3418()
{
  result = qword_1EB991AC0;
  if (!qword_1EB991AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AC0);
  }

  return result;
}

unint64_t sub_1B72F3470()
{
  result = qword_1EB991AC8;
  if (!qword_1EB991AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AC8);
  }

  return result;
}

unint64_t sub_1B72F34C8()
{
  result = qword_1EB991AD0;
  if (!qword_1EB991AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AD0);
  }

  return result;
}

unint64_t sub_1B72F3520()
{
  result = qword_1EB991AD8;
  if (!qword_1EB991AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AD8);
  }

  return result;
}

unint64_t sub_1B72F3578()
{
  result = qword_1EB991AE0;
  if (!qword_1EB991AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AE0);
  }

  return result;
}

uint64_t sub_1B72F35CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x694C746964657263 && a2 == 0xEB0000000074696DLL;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78792D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B78792F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875870 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B72F373C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78757B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475746974736E69 && a2 == 0xEF656D614E6E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44676E696E65706FLL && a2 == 0xEB00000000657461)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B72F3950(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78757B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475746974736E69 && a2 == 0xEF656D614E6E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7879310 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44676E696E65706FLL && a2 == 0xEB00000000657461)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t ScheduledPayment.Status.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1B72F3CA8()
{
  result = qword_1EB991AF0;
  if (!qword_1EB991AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AF0);
  }

  return result;
}

unint64_t sub_1B72F3D00()
{
  result = qword_1EB991AF8;
  if (!qword_1EB991AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991AF8);
  }

  return result;
}

unint64_t sub_1B72F3D84()
{
  result = qword_1EB991B08;
  if (!qword_1EB991B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991B08);
  }

  return result;
}

uint64_t sub_1B72F3DD8()
{
  type metadata accessor for CLLocationValueTransformer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991B10);
  sub_1B7800908();
  v0 = sub_1B7800838();

  qword_1EDB08760 = v0;
  return result;
}

uint64_t static CLLocationValueTransformer.allowedTopLevelClasses.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  *(v0 + 32) = sub_1B72F3F34();
  return v0;
}

unint64_t sub_1B72F3F34()
{
  result = qword_1EDAFAF38;
  if (!qword_1EDAFAF38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAFAF38);
  }

  return result;
}

void static CLLocationValueTransformer.register()()
{
  v1 = objc_opt_self();
  v2 = [objc_allocWithZone(v0) init];
  if (qword_1EDAFCB70 != -1)
  {
    swift_once();
  }

  [v1 setValueTransformer_forName_];
}

id CLLocationValueTransformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CLLocationValueTransformer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CLLocationValueTransformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CNPostalAddress.formattedMailingAddress.getter()
{
  v1 = [objc_opt_self() stringFromPostalAddress:v0 style:0];
  v2 = sub_1B7800868();

  return v2;
}

uint64_t CNPostalAddress.formattedSingleLineMailingAddress.getter()
{
  v1 = [objc_opt_self() singleLineStringFromPostalAddress:v0 addCountryName:0];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B7800868();

  return v3;
}

BOOL CNPostalAddress.isEmpty.getter()
{
  v1 = [v0 street];
  v2 = sub_1B7800868();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    return 0;
  }

  v6 = [v0 city];
  v7 = sub_1B7800868();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    return 0;
  }

  v11 = [v0 state];
  v12 = sub_1B7800868();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    return 0;
  }

  v16 = [v0 postalCode];
  v17 = sub_1B7800868();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    return 0;
  }

  v21 = [v0 country];
  v22 = sub_1B7800868();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    return 0;
  }

  v26 = [v0 ISOCountryCode];
  v27 = sub_1B7800868();
  v29 = v28;

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    return 0;
  }

  v31 = [v0 subAdministrativeArea];
  v32 = sub_1B7800868();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    return 0;
  }

  v37 = [v0 subLocality];
  v38 = sub_1B7800868();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  return v41 == 0;
}

uint64_t TransactionGroup.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TransactionGroup.id.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TransactionGroup.includedTransactionIDs.getter()
{
  type metadata accessor for TransactionGroup(0);
}

uint64_t TransactionGroup.includedTransactionIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TransactionGroup(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TransactionGroup.init(id:includedTransactionIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B77FFA18();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TransactionGroup(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static TransactionGroup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TransactionGroup(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_1B72F48EC(v5, v6);
}

uint64_t sub_1B72F4734(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1B78022F8();

    sub_1B7800798();
    v16 = sub_1B7802368();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1B78020F8() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72F48EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FFA18();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1B71A6970(&qword_1EB99DAF0);
      v26 = sub_1B7800758();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1B71A6970(&qword_1EB99DBE0);
        v31 = sub_1B7800828();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72F4C74(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v68 = a2 + 56;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v9 = (v6 - 1) & v6;
LABEL_13:
    v62 = result;
    v12 = *(result + 48) + 88 * (v8 | (v2 << 6));
    v13 = *(v12 + 16);
    v79 = *v12;
    v80 = v13;
    v15 = *(v12 + 48);
    v14 = *(v12 + 64);
    v16 = *(v12 + 32);
    v84 = *(v12 + 80);
    v82 = v15;
    v83 = v14;
    v81 = v16;
    v17 = *(v12 + 48);
    v75 = *(v12 + 32);
    v76 = v17;
    v77 = *(v12 + 64);
    v78 = *(v12 + 80);
    v18 = *(v12 + 16);
    v73 = *v12;
    v74 = v18;
    v19 = a2;
    sub_1B78022F8();
    sub_1B723C474(&v79, v72);
    FoundInMailItem.OrderDetails.hash(into:)();
    v20 = sub_1B7802368();
    v21 = -1 << *(v19 + 32);
    v22 = v20 & ~v21;
    v23 = v68;
    if (((*(v68 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_54:
      sub_1B723C4D0(&v79);
      return 0;
    }

    v24 = v19;
    v57 = v9;
    v58 = v7;
    v59 = v2;
    v60 = v3;
    v25 = ~v21;
    v26 = v79;
    v63 = v84;
    v27 = v80;
    v70 = v80;
    v71 = *(&v79 + 1);
    v28 = v81;
    v66 = BYTE8(v81);
    v29 = v82;
    v30 = v83;
    v64 = *(&v80 + 1);
    v61 = v24;
    v31 = *(v24 + 48);
    v69 = v81;
    v65 = v31;
    while (1)
    {
      v32 = (v31 + 88 * v22);
      if (*v32 != v26)
      {
        goto LABEL_16;
      }

      v33 = *(v32 + 2);
      v34 = *(v32 + 3);
      v35 = *(v32 + 4);
      v36 = v32[40];
      v37 = *(v32 + 6);
      v38 = *(v32 + 7);
      v40 = *(v32 + 8);
      v39 = *(v32 + 9);
      v41 = v32[80];
      if (v33)
      {
        if (!v27)
        {
          goto LABEL_16;
        }

        if (*(v32 + 1) != v71 || v33 != v27)
        {
          v67 = *(v32 + 7);
          v43 = *(v32 + 8);
          v44 = v26;
          v45 = v25;
          v46 = *(v32 + 9);
          v47 = *(v32 + 6);
          v48 = sub_1B78020F8();
          v37 = v47;
          v39 = v46;
          v25 = v45;
          v26 = v44;
          v40 = v43;
          v31 = v65;
          v38 = v67;
          v23 = v68;
          v28 = v69;
          v27 = v70;
          if ((v48 & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else if (v27)
      {
        goto LABEL_16;
      }

      if (v35)
      {
        if (!v28)
        {
          goto LABEL_16;
        }

        if (v34 != v64 || v35 != v28)
        {
          v50 = v39;
          v51 = v37;
          v52 = sub_1B78020F8();
          v28 = v69;
          v27 = v70;
          v23 = v68;
          if ((v52 & 1) == 0)
          {
            goto LABEL_16;
          }

          v37 = v51;
          v39 = v50;
        }
      }

      else if (v28)
      {
        goto LABEL_16;
      }

      if (v36 != v66)
      {
        goto LABEL_16;
      }

      if (v38)
      {
        if (!*(&v29 + 1))
        {
          goto LABEL_16;
        }

        if (v37 != v29 || v38 != *(&v29 + 1))
        {
          v54 = v39;
          v55 = sub_1B78020F8();
          v39 = v54;
          v28 = v69;
          v27 = v70;
          v23 = v68;
          if ((v55 & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else if (*(&v29 + 1))
      {
        goto LABEL_16;
      }

      if (v39)
      {
        break;
      }

      if (!*(&v30 + 1))
      {
        goto LABEL_50;
      }

LABEL_16:
      v22 = (v22 + 1) & v25;
      if (((*(v23 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if (!*(&v30 + 1))
    {
      goto LABEL_16;
    }

    if (__PAIR128__(v39, v40) != v30)
    {
      v56 = sub_1B78020F8();
      v28 = v69;
      v27 = v70;
      v23 = v68;
      if ((v56 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_50:
    if (v41 != v63)
    {
      goto LABEL_16;
    }

    sub_1B723C4D0(&v79);
    a2 = v61;
    result = v62;
    v2 = v59;
    v3 = v60;
    v6 = v57;
    v7 = v58;
  }

  while (v57);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72F5070(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v42 = a2 + 56;
  v34 = result + 56;
  v35 = result;
  v38 = a2;
  v33 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v36 = v2;
    v37 = (v6 - 1) & v6;
    v8 = __clz(__rbit64(v6)) | (v2 << 6);
LABEL_13:
    v12 = (*(result + 48) + 48 * v8);
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = v12[5];
    v40 = v12[4];
    v18 = a2;
    sub_1B78022F8();

    v41 = v17;

    sub_1B7800798();
    v39 = v15;
    if (v16)
    {
      sub_1B7802318();
      v19 = v16;
      sub_1B7800798();
    }

    else
    {
      v19 = 0;
      sub_1B7802318();
    }

    sub_1B7800798();
    v20 = sub_1B7802368();
    v21 = -1 << *(v18 + 32);
    v22 = v20 & ~v21;
    if (((*(v42 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_40:

      return 0;
    }

    v23 = ~v21;
    v24 = *(v38 + 48);
    while (1)
    {
      v25 = (v24 + 48 * v22);
      v26 = v25[2];
      v27 = v25[3];
      v28 = v25[4];
      v29 = v25[5];
      v30 = *v25 == v14 && v25[1] == v13;
      if (!v30 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v27)
      {
        break;
      }

      if (!v19)
      {
        goto LABEL_32;
      }

LABEL_19:
      v22 = (v22 + 1) & v23;
      if (((*(v42 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    if (!v19)
    {
      goto LABEL_19;
    }

    v31 = v26 == v39 && v27 == v19;
    if (!v31 && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_32:
    v32 = v28 == v40 && v29 == v41;
    if (!v32 && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_19;
    }

    v3 = v34;
    result = v35;
    v6 = v37;
    a2 = v38;
    v7 = v33;
    v2 = v36;
  }

  while (v37);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v10);
    ++v9;
    if (v11)
    {
      v36 = v10;
      v37 = (v11 - 1) & v11;
      v8 = __clz(__rbit64(v11)) | (v10 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72F5358(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v76 = a2 + 56;
  v70 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v68 = (v6 - 1) & v6;
LABEL_13:
    v69 = result;
    v11 = *(result + 48) + 88 * (v8 | (v2 << 6));
    v12 = *(v11 + 16);
    v84 = *v11;
    v85 = v12;
    v14 = *(v11 + 48);
    v13 = *(v11 + 64);
    v15 = *(v11 + 32);
    v89 = *(v11 + 80);
    v87 = v14;
    v88 = v13;
    v86 = v15;
    v77 = a2;
    sub_1B78022F8();
    v16 = v84;
    v17 = v85;
    v18 = v86;
    v19 = *(&v87 + 1);
    v73 = v88;
    v74 = v87;
    v20 = v89;
    sub_1B72630FC(&v84, v78);
    sub_1B7800798();
    sub_1B7800798();
    sub_1B7800798();
    v72 = v20;
    if (v20)
    {
      if (v20 == 1)
      {
        MEMORY[0x1B8CA6620](1);
        goto LABEL_19;
      }

      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    MEMORY[0x1B8CA6620](v21);
    sub_1B7800798();
LABEL_19:
    sub_1B7800798();
    v22 = sub_1B7802368();
    v23 = v77;
    v24 = -1 << *(v77 + 32);
    v25 = v22 & ~v24;
    if (((*(v76 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_83:
      sub_1B7263284(&v84);
      return 0;
    }

    v71 = v19;
    v66 = v2;
    v67 = v3;
    v75 = ~v24;
    while (1)
    {
      v31 = *(v23 + 48) + 88 * v25;
      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      v34 = *(v31 + 32);
      v35 = *(v31 + 40);
      v37 = *(v31 + 48);
      v36 = *(v31 + 56);
      v39 = *(v31 + 64);
      v38 = *(v31 + 72);
      v40 = *(v31 + 80);
      v41 = *v31 == v16 && *(v31 + 8) == *(&v16 + 1);
      if (!v41 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_23;
      }

      v42 = v33 == v17 && v32 == *(&v17 + 1);
      if (!v42 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_23;
      }

      v43 = v34 == v18 && v35 == *(&v18 + 1);
      if (!v43 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_23;
      }

      v78[0] = v37;
      v78[1] = v36;
      v78[2] = v39;
      v78[3] = v38;
      v79 = v40;
      v80 = v74;
      v81 = v71;
      v82 = v73;
      v83 = v72;
      if (v40)
      {
        if (v40 == 1)
        {
          if (v72 == 1)
          {
            if (v37 == v74 && v36 == v71)
            {
              sub_1B7263158(v74, v71, v39, v38, 1);
              v61 = v74;
              v62 = v71;
              v64 = *(&v73 + 1);
              v63 = v73;
              v65 = 1;
              goto LABEL_79;
            }

            v45 = sub_1B78020F8();
            sub_1B7263158(v37, v36, v39, v38, 1);
            v46 = v74;
            v47 = v71;
            v49 = *(&v73 + 1);
            v48 = v73;
            v50 = 1;
            goto LABEL_72;
          }

          sub_1B7263158(v37, v36, v39, v38, 1);
          v26 = v74;
          v27 = v71;
          v29 = *(&v73 + 1);
          v28 = v73;
          v30 = v72;
LABEL_22:
          sub_1B7263158(v26, v27, v28, v29, v30);
          sub_1B72F77B0(v78);
          goto LABEL_23;
        }

        if (v72 == 2)
        {
          v57 = v37 == v74 && v36 == v71;
          if (v57 || (sub_1B78020F8() & 1) != 0)
          {
            if (v39 == v73 && v38 == *(&v73 + 1))
            {
              sub_1B7263158(v37, v36, v73, *(&v73 + 1), 2);
              v61 = v74;
              v62 = v71;
              v64 = *(&v73 + 1);
              v63 = v73;
              v65 = 2;
              goto LABEL_79;
            }

            v45 = sub_1B78020F8();
            sub_1B7263158(v37, v36, v39, v38, 2);
            v46 = v74;
            v47 = v71;
            v49 = *(&v73 + 1);
            v48 = v73;
            v50 = 2;
            goto LABEL_72;
          }

          sub_1B7263158(v37, v36, v39, v38, 2);
          v26 = v74;
          v27 = v71;
          v29 = *(&v73 + 1);
          v28 = v73;
          v30 = 2;
          goto LABEL_22;
        }

        v51 = v72;
        v52 = v37;
        v53 = v36;
        v54 = v39;
        v55 = v38;
        v56 = 2;
LABEL_61:
        sub_1B7263158(v52, v53, v54, v55, v56);
        v26 = v74;
        v27 = v71;
        v29 = *(&v73 + 1);
        v28 = v73;
        v30 = v51;
        goto LABEL_22;
      }

      if (v72)
      {
        v51 = v72;
        v52 = v37;
        v53 = v36;
        v54 = v39;
        v55 = v38;
        v56 = 0;
        goto LABEL_61;
      }

      v59 = v37 == v74 && v36 == v71;
      if (!v59 && (sub_1B78020F8() & 1) == 0)
      {
        sub_1B7263158(v37, v36, v39, v38, 0);
        v26 = v74;
        v27 = v71;
        v29 = *(&v73 + 1);
        v28 = v73;
        v30 = 0;
        goto LABEL_22;
      }

      if (v39 == v73 && v38 == *(&v73 + 1))
      {
        break;
      }

      v45 = sub_1B78020F8();
      sub_1B7263158(v37, v36, v39, v38, 0);
      v46 = v74;
      v47 = v71;
      v49 = *(&v73 + 1);
      v48 = v73;
      v50 = 0;
LABEL_72:
      sub_1B7263158(v46, v47, v48, v49, v50);
      sub_1B72F77B0(v78);
      if (v45)
      {
        goto LABEL_80;
      }

LABEL_23:
      v25 = (v25 + 1) & v75;
      v23 = v77;
      if (((*(v76 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    sub_1B7263158(v37, v36, v73, *(&v73 + 1), 0);
    v61 = v74;
    v62 = v71;
    v64 = *(&v73 + 1);
    v63 = v73;
    v65 = 0;
LABEL_79:
    sub_1B7263158(v61, v62, v63, v64, v65);
    sub_1B72F77B0(v78);
LABEL_80:
    sub_1B7263284(&v84);
    result = v69;
    v7 = v70;
    a2 = v77;
    v2 = v66;
    v3 = v67;
    v6 = v68;
  }

  while (v68);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v68 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72F59BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsSuggestionsOrderPickup(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v31 - v9);
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = &v31 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v32 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v21 = a2 + 56;
  v33 = v20;
  v34 = &v31 - v12;
  v35 = v13;
  v36 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v37 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(v13 + 72);
      sub_1B72F7064(*(a1 + 48) + v25 * (v22 | (v15 << 6)), v14, type metadata accessor for MapsSuggestionsOrderPickup);
      sub_1B72F774C(v14, v10);
      sub_1B78022F8();
      sub_1B7800798();
      sub_1B7800798();
      sub_1B7800798();
      v26 = sub_1B7802368();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v29 = ~v27;
      while (1)
      {
        sub_1B72F7064(*(a2 + 48) + v28 * v25, v7, type metadata accessor for MapsSuggestionsOrderPickup);
        v30 = _s10FinanceKit26MapsSuggestionsOrderPickupV2eeoiySbAC_ACtFZ_0(v7, v10);
        sub_1B72F70CC(v7, type metadata accessor for MapsSuggestionsOrderPickup);
        if (v30)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_1B72F70CC(v10, type metadata accessor for MapsSuggestionsOrderPickup);
      v13 = v35;
      a1 = v36;
      v20 = v33;
      v14 = v34;
      v19 = v37;
      if (!v37)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_1B72F70CC(v10, type metadata accessor for MapsSuggestionsOrderPickup);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v32 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v37 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72F5CCC()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B72F5D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7879360 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B72F5DDC(uint64_t a1)
{
  v2 = sub_1B72F605C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72F5E18(uint64_t a1)
{
  v2 = sub_1B72F605C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransactionGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991B18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F605C();
  sub_1B78023F8();
  v12 = 0;
  sub_1B77FFA18();
  sub_1B71A6970(&qword_1EB98F718);
  sub_1B7801FC8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for TransactionGroup(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
    sub_1B72F6464(&qword_1EB997160, &qword_1EB98F718);
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B72F605C()
{
  result = qword_1EB991B20;
  if (!qword_1EB991B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991B20);
  }

  return result;
}

uint64_t TransactionGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1B77FFA18();
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991B28);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TransactionGroup(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F605C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_1B71A6970(&qword_1EB98F740);
  v15 = v26;
  v16 = v24;
  sub_1B7801E48();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
  v28 = 1;
  sub_1B72F6464(&qword_1EB991B30, &qword_1EB98F740);
  sub_1B7801E48();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_1B72F7064(v18, v22, type metadata accessor for TransactionGroup);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B72F70CC(v18, type metadata accessor for TransactionGroup);
}

uint64_t sub_1B72F6464(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990B80);
    sub_1B71A6970(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B72F651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1B72F48EC(v7, v8);
}

uint64_t TransactionGroup.StylingMetadata.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TransactionGroup.StylingMetadata.description.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TransactionGroup.StylingMetadata.representativeTransactionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TransactionGroup.StylingMetadata(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TransactionGroup.StylingMetadata.representativeTransactionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TransactionGroup.StylingMetadata(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TransactionGroup.StylingMetadata.fallbackCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TransactionGroup.StylingMetadata(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t TransactionGroup.StylingMetadata.fallbackCategory.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TransactionGroup.StylingMetadata(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t TransactionGroup.StylingMetadata.init(description:representativeTransactionID:fallbackCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v7 = *a4;
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for TransactionGroup.StylingMetadata(0);
  v9 = *(v8 + 20);
  v10 = sub_1B77FFA18();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  a5[*(v8 + 24)] = v7;
  return result;
}

BOOL static TransactionGroup.StylingMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1B78020F8()) && (v5 = type metadata accessor for TransactionGroup.StylingMetadata(0), (_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0()))
  {
    return *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B72F6934()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_1B72F69A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72F761C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72F69C8(uint64_t a1)
{
  v2 = sub_1B72F6C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72F6A04(uint64_t a1)
{
  v2 = sub_1B72F6C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransactionGroup.StylingMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991B38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F6C2C();
  sub_1B78023F8();
  v11[15] = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v9 = type metadata accessor for TransactionGroup.StylingMetadata(0);
    v11[14] = 1;
    sub_1B77FFA18();
    sub_1B71A6970(&qword_1EB98F718);
    sub_1B7801FC8();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_1B72C5958();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B72F6C2C()
{
  result = qword_1EB991B40;
  if (!qword_1EB991B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991B40);
  }

  return result;
}

uint64_t TransactionGroup.StylingMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v23 = sub_1B77FFA18();
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991B48);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = v17 - v6;
  v8 = type metadata accessor for TransactionGroup.StylingMetadata(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F6C2C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v8;
  v19 = a1;
  v12 = v22;
  v11 = v23;
  v28 = 0;
  v13 = v24;
  *v10 = sub_1B7801DF8();
  v10[1] = v14;
  v17[2] = v14;
  v27 = 1;
  sub_1B71A6970(&qword_1EB98F740);
  sub_1B7801E48();
  (*(v21 + 32))(v10 + *(v18 + 20), v5, v11);
  v25 = 2;
  sub_1B72C5A00();
  v17[1] = 0;
  sub_1B7801E48();
  v15 = v19;
  (*(v12 + 8))(v7, v13);
  *(v10 + *(v18 + 24)) = v26;
  sub_1B72F7064(v10, v20, type metadata accessor for TransactionGroup.StylingMetadata);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_1B72F70CC(v10, type metadata accessor for TransactionGroup.StylingMetadata);
}

uint64_t sub_1B72F7064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72F70CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B72F723C()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B72F72C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B72F72C0()
{
  if (!qword_1EB991B60)
  {
    sub_1B77FFA18();
    sub_1B71A6970(&qword_1EB99DAF0);
    v0 = sub_1B7800FF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB991B60);
    }
  }
}

uint64_t sub_1B72F7368()
{
  result = sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B72F7410()
{
  result = qword_1EB991B78;
  if (!qword_1EB991B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991B78);
  }

  return result;
}

unint64_t sub_1B72F7468()
{
  result = qword_1EB991B80;
  if (!qword_1EB991B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991B80);
  }

  return result;
}

unint64_t sub_1B72F74C0()
{
  result = qword_1EB991B88;
  if (!qword_1EB991B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991B88);
  }

  return result;
}

unint64_t sub_1B72F7518()
{
  result = qword_1EB991B90;
  if (!qword_1EB991B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991B90);
  }

  return result;
}

unint64_t sub_1B72F7570()
{
  result = qword_1EB991B98;
  if (!qword_1EB991B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991B98);
  }

  return result;
}

unint64_t sub_1B72F75C8()
{
  result = qword_1EB991BA0;
  if (!qword_1EB991BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991BA0);
  }

  return result;
}

uint64_t sub_1B72F761C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B7879380 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B78793A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B72F774C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72F77B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B72F7818()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  qword_1EB991BB0 = result;
  return result;
}

id sub_1B72F786C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v5 setFormatOptions_];
  *a3 = v5;
  return result;
}

uint64_t sub_1B72F7904@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v30 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1B78023B8();
  if (!v2)
  {
    v32 = v8;
    v33 = v13;
    v31 = v11;
    v34 = v5;
    v15 = v37;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v16 = sub_1B7802118();
    v18 = v17;
    if (qword_1EB98E998 != -1)
    {
      swift_once();
    }

    v19 = qword_1EB991BB0;
    v20 = sub_1B7800838();
    v21 = [v19 dateFromString_];

    v22 = v4;
    if (v21)
    {
      v23 = v15;
      v25 = v33;
      v24 = v34;
    }

    else
    {
      v24 = v34;
      if (qword_1EB98E9A0 != -1)
      {
        swift_once();
      }

      v26 = qword_1EB991BB8;
      v27 = sub_1B7800838();
      v21 = [v26 dateFromString_];

      v25 = v32;
      if (v21)
      {
        v25 = v31;
      }

      else
      {
        if (qword_1EB98E9A8 != -1)
        {
          swift_once();
        }

        v28 = qword_1EB991BC0;
        v29 = sub_1B7800838();
        v21 = [v28 dateFromString_];

        if (!v21)
        {
          strcpy(v35, "Invalid date: ");
          v35[15] = -18;
          MEMORY[0x1B8CA4D30](v16, v18);

          sub_1B7801B18();
          swift_allocError();
          sub_1B7801AC8();

          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1(v36);
        }
      }

      v23 = v15;
    }

    sub_1B77FF928();

    (*(v24 + 32))(v23, v25, v22);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return result;
}

id sub_1B72F7CF8()
{
  result = sub_1B72F7D18();
  qword_1EB991BE0 = result;
  return result;
}

id sub_1B72F7D18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v22 - v1;
  v23 = sub_1B77FFAF8();
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FFB08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFC88();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  (*(v7 + 104))(v9, *MEMORY[0x1E6969830], v6);
  sub_1B77FFB18();
  (*(v7 + 8))(v9, v6);
  v15 = sub_1B77FFBB8();
  (*(v11 + 8))(v13, v10);
  [v14 setCalendar_];

  sub_1B77FFA28();
  v16 = sub_1B77FFA58();
  (*(v3 + 8))(v5, v23);
  [v14 setLocale_];

  sub_1B77FFCA8();
  v17 = sub_1B77FFCF8();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v2, 1, v17) != 1)
  {
    v19 = sub_1B77FFCB8();
    (*(v18 + 8))(v2, v17);
  }

  [v14 setTimeZone_];

  v20 = sub_1B7800838();
  [v14 setDateFormat_];

  return v14;
}

uint64_t sub_1B72F8134(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  *v7 = a4;
  v7[1] = 0;
  v8 = *(*(v6 - 8) + 104);

  return v8();
}

uint64_t sub_1B72F81C8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1B78023E8();
  if (qword_1EB98E9B8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB991BE0;
  v3 = sub_1B77FF8B8();
  v4 = [v2 stringFromDate_];

  sub_1B7800868();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  sub_1B7802158();

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1B72F8324@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t RawOrderReturnInfo.returnPolicyURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF4F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RawOrderReturnInfo.returnPolicyURL.setter(uint64_t a1)
{
  v3 = sub_1B77FF4F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RawOrderReturnInfo.returnPolicyDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderReturnInfo() + 20));

  return v1;
}

uint64_t type metadata accessor for RawOrderReturnInfo()
{
  result = qword_1EDAF88A0;
  if (!qword_1EDAF88A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawOrderReturnInfo.returnPolicyDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderReturnInfo() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawOrderReturnInfo.displayCountdown.setter(char a1)
{
  result = type metadata accessor for RawOrderReturnInfo();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t RawOrderReturnInfo.init(returnPolicyURL:returnPolicyDescription:returnManagementURL:returnDeadline:displayCountdown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v11 = type metadata accessor for RawOrderReturnInfo();
  v12 = v11[6];
  v13 = (a7 + v11[5]);
  v14 = sub_1B77FF4F8();
  v15 = *(v14 - 8);
  (*(v15 + 56))(a7 + v12, 1, 1, v14);
  v16 = v11[7];
  v17 = sub_1B77FF988();
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  v18 = v11[8];
  (*(v15 + 32))(a7, a1, v14);
  *v13 = a2;
  v13[1] = a3;
  sub_1B7213740(a4, a7 + v12, &unk_1EB994C70);
  result = sub_1B7213740(a5, a7 + v16, &qword_1EB98EBD0);
  *(a7 + v18) = a6;
  return result;
}

unint64_t sub_1B72F8994()
{
  v1 = *v0;
  v2 = 0x6F506E7275746572;
  v3 = 0xD000000000000013;
  v4 = 0x65446E7275746572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_1B72F8A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72FA18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72F8A7C(uint64_t a1)
{
  v2 = sub_1B72F9DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72F8AB8(uint64_t a1)
{
  v2 = sub_1B72F9DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderReturnInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F9DC0();
  sub_1B78023F8();
  v13 = 0;
  sub_1B77FF4F8();
  sub_1B72FA358(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for RawOrderReturnInfo();
    v12 = 1;
    sub_1B7801EF8();
    v11 = 2;
    sub_1B7801F38();
    v10 = 3;
    sub_1B77FF988();
    sub_1B72FA358(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    v9 = 4;
    sub_1B7801F08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawOrderReturnInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = v33 - v6;
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v39 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C10);
  v36 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v11 = v33 - v10;
  v12 = type metadata accessor for RawOrderReturnInfo();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 24);
  v37 = v8;
  v17 = *(v8 + 56);
  v44 = v16;
  v17(&v15[v16], 1, 1, v7);
  v18 = *(v12 + 28);
  v19 = sub_1B77FF988();
  v20 = *(*(v19 - 8) + 56);
  v43 = v18;
  v20(&v15[v18], 1, 1, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72F9DC0();
  v40 = v11;
  v21 = v42;
  sub_1B78023C8();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v25 = v43;
    sub_1B7205418(&v15[v44], &unk_1EB994C70);
    return sub_1B7205418(&v15[v25], &qword_1EB98EBD0);
  }

  else
  {
    v33[2] = v19;
    v42 = v12;
    v22 = v37;
    v23 = v38;
    v24 = v36;
    v49 = 0;
    sub_1B72FA358(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    sub_1B7801E48();
    (*(v22 + 32))(v15, v39, v7);
    v48 = 1;
    v26 = sub_1B7801D78();
    v27 = &v15[*(v42 + 20)];
    *v27 = v26;
    v27[1] = v28;
    v33[1] = v28;
    v47 = 2;
    sub_1B7801DB8();
    v39 = a1;
    sub_1B7213740(v23, &v15[v44], &unk_1EB994C70);
    v46 = 3;
    sub_1B72FA358(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v29 = v35;
    sub_1B7801DB8();
    sub_1B7213740(v29, &v15[v43], &qword_1EB98EBD0);
    v45 = 4;
    v30 = sub_1B7801D88();
    v31 = *(v42 + 32);
    (*(v24 + 8))(v40, v41);
    v15[v31] = v30;
    sub_1B72F9E14(v15, v34);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_1B72F9E78(v15);
  }
}

void RawOrderReturnInfo.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for RawOrderReturnInfo();
  v10 = v9[6];
  v11 = sub_1B77FF4F8();
  v31 = *(*(v11 - 8) + 56);
  v32 = v10;
  v31(a2 + v10, 1, 1, v11);
  v12 = v9[7];
  v13 = sub_1B77FF988();
  v14 = *(v13 - 8);
  v34 = *(v14 + 56);
  v35 = v12;
  v33 = v14 + 56;
  v34(a2 + v12, 1, 1, v13);
  v15 = [a1 returnPolicyURL];
  sub_1B77FF478();

  v16 = [a1 returnPolicyDescription];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B7800868();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = (a2 + v9[5]);
  *v21 = v18;
  v21[1] = v20;
  v22 = [a1 returnManagementURL];
  if (v22)
  {
    v23 = v22;
    sub_1B77FF478();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = 1;
  v31(v8, v24, 1, v11);
  sub_1B7213740(v8, a2 + v32, &unk_1EB994C70);
  v26 = [a1 returnDeadline];
  v27 = v36;
  if (v26)
  {
    v28 = v26;
    sub_1B77FF928();

    v25 = 0;
  }

  v34(v27, v25, 1, v13);
  v29 = v9[8];
  sub_1B7213740(v27, a2 + v35, &qword_1EB98EBD0);
  v30 = ManagedOrderReturnInfo.displayCountdown.getter();

  *(a2 + v29) = v30;
}

BOOL _s10FinanceKit18RawOrderReturnInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v51 - v9;
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  if ((sub_1B77FF458() & 1) == 0)
  {
    return 0;
  }

  v20 = type metadata accessor for RawOrderReturnInfo();
  v21 = *(v20 + 20);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    v54 = v11;
    if (*v22 != *v24 || v23 != v25)
    {
      v26 = v20;
      v27 = sub_1B78020F8();
      v20 = v26;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v54 = v11;
    if (v25)
    {
      return 0;
    }
  }

  v51 = v4;
  v28 = *(v20 + 24);
  v29 = *(v17 + 48);
  v52 = a1;
  v53 = v20;
  sub_1B7205588(a1 + v28, v19, &unk_1EB994C70);
  v30 = a2 + v28;
  v31 = a2;
  sub_1B7205588(v30, &v19[v29], &unk_1EB994C70);
  v32 = *(v54 + 48);
  if (v32(v19, 1, v10) == 1)
  {
    if (v32(&v19[v29], 1, v10) == 1)
    {
      sub_1B7205418(v19, &unk_1EB994C70);
      goto LABEL_16;
    }

LABEL_14:
    v33 = &qword_1EB991C30;
LABEL_22:
    sub_1B7205418(v19, v33);
    return 0;
  }

  sub_1B7205588(v19, v16, &unk_1EB994C70);
  if (v32(&v19[v29], 1, v10) == 1)
  {
    (*(v54 + 8))(v16, v10);
    goto LABEL_14;
  }

  v34 = v54;
  (*(v54 + 32))(v13, &v19[v29], v10);
  sub_1B72FA358(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  v35 = sub_1B7800828();
  v36 = *(v34 + 8);
  v36(v13, v10);
  v36(v16, v10);
  sub_1B7205418(v19, &unk_1EB994C70);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v37 = v52;
  v38 = *(v53 + 28);
  v39 = *(v8 + 48);
  v19 = v57;
  sub_1B7205588(v52 + v38, v57, &qword_1EB98EBD0);
  sub_1B7205588(v31 + v38, &v19[v39], &qword_1EB98EBD0);
  v40 = *(v58 + 48);
  v41 = v51;
  if (v40(v19, 1, v51) == 1)
  {
    if (v40(&v19[v39], 1, v41) == 1)
    {
      sub_1B7205418(v19, &qword_1EB98EBD0);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v42 = v56;
  sub_1B7205588(v19, v56, &qword_1EB98EBD0);
  if (v40(&v19[v39], 1, v41) == 1)
  {
    (*(v58 + 8))(v42, v41);
LABEL_21:
    v33 = &qword_1EB98FCE0;
    goto LABEL_22;
  }

  v44 = v58;
  v45 = v55;
  (*(v58 + 32))(v55, &v19[v39], v41);
  sub_1B72FA358(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v46 = sub_1B7800828();
  v47 = *(v44 + 8);
  v47(v45, v41);
  v47(v42, v41);
  sub_1B7205418(v19, &qword_1EB98EBD0);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v48 = *(v53 + 32);
  v49 = *(v37 + v48);
  v50 = *(v31 + v48);
  if (v49 != 2)
  {
    return v50 != 2 && ((v50 ^ v49) & 1) == 0;
  }

  return v50 == 2;
}

unint64_t sub_1B72F9DC0()
{
  result = qword_1EB991C08;
  if (!qword_1EB991C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991C08);
  }

  return result;
}

uint64_t sub_1B72F9E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderReturnInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72F9E78(uint64_t a1)
{
  v2 = type metadata accessor for RawOrderReturnInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B72F9EFC()
{
  sub_1B77FF4F8();
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      sub_1B72FA020(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        sub_1B72FA020(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
        if (v3 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EDAFC578);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B72FA020(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B72FA088()
{
  result = qword_1EB991C18;
  if (!qword_1EB991C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991C18);
  }

  return result;
}

unint64_t sub_1B72FA0E0()
{
  result = qword_1EB991C20;
  if (!qword_1EB991C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991C20);
  }

  return result;
}

unint64_t sub_1B72FA138()
{
  result = qword_1EB991C28;
  if (!qword_1EB991C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991C28);
  }

  return result;
}

uint64_t sub_1B72FA18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F506E7275746572 && a2 == 0xEF4C52557963696CLL;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B78793F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7879410 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65446E7275746572 && a2 == 0xEE00656E696C6461 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7879430 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B72FA358(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B72FA3A0()
{
  v1 = v0;
  if (qword_1EDAF8978 != -1)
  {
    swift_once();
  }

  v2 = *(off_1EDAF8980 + 2);
  v3 = type metadata accessor for PaymentTransactionImporter();
  v4 = swift_allocObject();
  v4[2] = v2;
  type metadata accessor for ManagedTransactionImporter();
  swift_allocObject();
  v4[3] = ManagedTransactionImporter.init()();
  type metadata accessor for BankConnectTransactionsMatcher();
  v5 = swift_allocObject();
  type metadata accessor for ManagedTransactionCategoryImporter();
  *(v5 + 16) = swift_allocObject();
  v4[4] = v5;
  v6 = type metadata accessor for PaymentTransactionDeleter();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v15 = v3;
  v16 = &protocol witness table for PaymentTransactionImporter;
  *&v14 = v4;
  v12 = v6;
  v13 = &protocol witness table for PaymentTransactionDeleter;
  *&v11 = v7;
  type metadata accessor for PaymentTransactionProcessor();
  v8 = swift_allocObject();
  sub_1B71E4C44(&v14, v8 + 16);
  sub_1B71E4C44(&v11, v8 + 56);
  *&v1[OBJC_IVAR___FKPaymentTransactionProcessor_paymentTransactionProcessor] = v8;
  v10.receiver = v1;
  v10.super_class = FKPaymentTransactionProcessor;
  swift_retain_n();
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t type metadata accessor for FKPaymentTransactionProcessor()
{
  result = qword_1EB991C40;
  if (!qword_1EB991C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB991C40);
  }

  return result;
}

uint64_t sub_1B72FA77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B719B06C(v3 + 16, v10);
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 8))(a1, a2, a3, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1B72FA940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B719B06C(v4 + 56, v12);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 8))(a1, a2, a3, a4, v9, v10);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1B72FAB14(uint64_t a1, uint64_t a2)
{
  sub_1B719B06C(v2 + 56, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 16))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1B72FAD30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

id BankConnectOsloProvider.__allocating_init(financeStore:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_processingTask] = 0;
  *&v3[OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_financeStore] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BankConnectOsloProvider.init(financeStore:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_processingTask] = 0;
  *&v1[OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_financeStore] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BankConnectOsloProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1B72FAE60()
{
  if (qword_1EDAFB7C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAFB7C8;
  v1 = type metadata accessor for BankConnectOsloProvider();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_processingTask] = 0;
  *&v2[OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_financeStore] = v0;
  v4.receiver = v2;
  v4.super_class = v1;

  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1B72FAFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  if (*(v4 + OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_processingTask))
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B78000B8();
    __swift_project_value_buffer(v9, qword_1EDAF65B0);
    oslog = sub_1B7800098();
    v10 = sub_1B78011D8();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B7198000, oslog, v10, "Listeners already setup for account balance, ignoring.", v11, 2u);
      MEMORY[0x1B8CA7A40](v11, -1, -1);
    }
  }

  else
  {
    v12 = ObjectType;
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    if (qword_1EDAFA648 != -1)
    {
      swift_once();
    }

    v13 = _os_activity_create(&dword_1B7198000, "bankConnect/osloProvider", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v13, &state);
    sub_1B72FB1EC(v4, a1, a2, a3, v12);
    os_activity_scope_leave(&state);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B72FB1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a3;
  v45 = a5;
  v39 = a4;
  v7 = sub_1B78000B8();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v33 - v10;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_1EDAF65B0);

  v36 = v11;
  v12 = sub_1B7800098();
  v13 = sub_1B78011F8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v44[0] = v16;
    *v15 = 136315138;
    v17 = sub_1B7800FB8();
    v35 = v7;
    v19 = sub_1B71A3EF8(v17, v18, v44);
    v7 = v35;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1B7198000, v12, v13, "Listening to account balance changes for fpanIDs: %s.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8CA7A40](v16, -1, -1);
    v20 = v15;
    v8 = v34;
    MEMORY[0x1B8CA7A40](v20, -1, -1);
  }

  result = sub_1B72FB5CC(a2, *(a1 + OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_financeStore), &v42);
  if (v43)
  {
    sub_1B71E4C44(&v42, v44);
    v22 = sub_1B7800DF8();
    v23 = v37;
    (*(*(v22 - 8) + 56))(v37, 1, 1, v22);
    sub_1B719B06C(v44, &v42);
    v24 = v40;
    v25 = v38;
    (*(v40 + 16))(v38, v36, v7);
    v26 = (*(v24 + 80) + 72) & ~*(v24 + 80);
    v27 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = v7;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    sub_1B71E4C44(&v42, v29 + 32);
    (*(v24 + 32))(v29 + v26, v25, v28);
    v30 = (v29 + v27);
    v31 = v39;
    *v30 = v41;
    v30[1] = v31;
    *(v29 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v45;

    v32 = sub_1B76A1F9C(0, 0, v23, &unk_1B7816F20, v29);
    __swift_destroy_boxed_opaque_existential_1(v44);
    *(a1 + OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_processingTask) = v32;
  }

  return result;
}

uint64_t sub_1B72FB5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v61 = a1;
  v68 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C58);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v47 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C60);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C68);
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v47 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C70);
  v57 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C78);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C80);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - v21;
  v69 = 0;
  v70 = -1;
  v66 = a2;
  v23 = FinanceStore.internalConsents(since:isMonitoring:)(&v69, 1);
  v49 = v13;
  v50 = v18;
  v51 = v16;
  v52 = v15;
  v53 = v20;
  v54 = v19;
  v48 = v9;
  v24 = v65;
  v69 = v23;
  type metadata accessor for InternalConsentAsyncSequence();
  sub_1B72FE224(&qword_1EB991C88, type metadata accessor for InternalConsentAsyncSequence);
  sub_1B7802058();
  v25 = sub_1B77FFA18();
  v26 = *(*(v25 - 8) + 56);
  v27 = v67;
  v26(v67, 1, 1, v25);
  v69 = 0;
  v70 = -1;
  v28 = v66;
  v29 = v22;
  v30 = FinanceStore.internalAccounts(forAccountID:since:isMonitoring:)(v27, &v69, 1);
  sub_1B7205418(v67, &unk_1EB993A10);
  v69 = v30;
  type metadata accessor for InternalAccountAsyncSequence();
  sub_1B72FE224(&qword_1EB991C90, type metadata accessor for InternalAccountAsyncSequence);
  v31 = v50;
  sub_1B7802058();
  v32 = v49;
  v26(v49, 1, 1, v25);
  v69 = 0;
  v70 = -1;
  v33 = FinanceStore.internalAccountBalances(for:since:isMonitoring:)(v32, &v69, 1);
  v34 = v53;
  v35 = v33;
  sub_1B7205418(v32, &unk_1EB993A10);
  v69 = v35;
  type metadata accessor for InternalAccountBalanceAsyncSequence();
  sub_1B72FE224(&qword_1EB991C98, type metadata accessor for InternalAccountBalanceAsyncSequence);
  v36 = v48;
  sub_1B7802058();
  sub_1B728216C(&qword_1EB991CA0, &qword_1EB991C80);
  sub_1B728216C(&qword_1EB991CA8, &qword_1EB991C78);
  v37 = v34;
  v47 = v29;
  sub_1B728216C(&qword_1EB991CB0, &qword_1EB991C70);
  v38 = v55;
  sub_1B77FFFC8();
  sub_1B728216C(&qword_1EB991CB8, &qword_1EB991C58);
  sub_1B7800F38();
  sub_1B7205418(v38, &qword_1EB991C58);
  v39 = swift_allocObject();
  v40 = v61;
  v39[2] = v59;
  v39[3] = v40;
  v39[4] = v28;
  sub_1B7205540(0, &qword_1EB991CC0);
  sub_1B728216C(&qword_1EB991CC8, &qword_1EB991C60);

  v41 = v31;
  v42 = v62;
  sub_1B7802088();
  (*(v57 + 8))(v36, v24);
  (*(v51 + 8))(v41, v52);
  (*(v37 + 8))(v47, v54);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991CD0);
  v44 = v68;
  v68[3] = v43;
  v44[4] = sub_1B728216C(&qword_1EB991CD8, &qword_1EB991CD0);
  __swift_allocate_boxed_opaque_existential_1(v44);
  sub_1B728216C(&qword_1EB991CE0, &qword_1EB991C68);
  v45 = v64;
  sub_1B7800F18();
  return (*(v63 + 8))(v42, v45);
}

uint64_t sub_1B72FC0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v8 = sub_1B78000B8();
  v7[17] = v8;
  v9 = *(v8 - 8);
  v7[18] = v9;
  v7[19] = *(v9 + 64);
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B72FC1EC, 0, 0);
}

uint64_t sub_1B72FC1EC()
{
  v1 = v0[13];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B7800F08();

  v6 = v0[5];
  v7 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v6);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_1B72FC3A8;

  return MEMORY[0x1EEE6D8D0](v0 + 11, 0, 0, v0 + 12, v6, v7);
}

uint64_t sub_1B72FC3A8()
{

  if (v0)
  {
    v1 = sub_1B72FC8AC;
  }

  else
  {
    v1 = sub_1B72FC4B8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B72FC4B8()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[22];
    v3 = v0[20];
    v25 = v3;
    v26 = v0[19];
    v5 = v0[17];
    v4 = v0[18];
    v28 = v0[16];
    v29 = v0[21];
    v27 = v0[15];
    v6 = v0[14];
    v7 = sub_1B7800DF8();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v2, 1, 1, v7);
    (*(v4 + 16))(v3, v6, v5);
    v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v10 = (v26 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    (*(v4 + 32))(v11 + v9, v25, v5);
    v12 = (v11 + v10);
    *v12 = v27;
    v12[1] = v28;
    *(v11 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)) = v1;
    sub_1B7205588(v2, v29, &unk_1EB99C280);
    LODWORD(v9) = (*(v8 + 48))(v29, 1, v7);

    v13 = v1;

    v14 = v0[21];
    if (v9 == 1)
    {
      sub_1B7205418(v0[21], &unk_1EB99C280);
    }

    else
    {
      sub_1B7800DE8();
      (*(v8 + 8))(v14, v7);
    }

    v17 = *(v11 + 16);
    swift_unknownObjectRetain();

    if (v17)
    {
      swift_getObjectType();
      v18 = sub_1B7800CD8();
      v20 = v19;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    sub_1B7205418(v0[22], &unk_1EB99C280);
    v21 = swift_allocObject();
    *(v21 + 16) = &unk_1B7816F40;
    *(v21 + 24) = v11;
    if (v20 | v18)
    {
      v0[7] = 0;
      v0[8] = 0;
      v0[9] = v18;
      v0[10] = v20;
    }

    swift_task_create();

    v22 = v0[5];
    v23 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v22);
    v24 = swift_task_alloc();
    v0[23] = v24;
    *v24 = v0;
    v24[1] = sub_1B72FC3A8;

    return MEMORY[0x1EEE6D8D0](v0 + 11, 0, 0, v0 + 12, v22, v23);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v15 = v0[1];

    return v15();
  }
}