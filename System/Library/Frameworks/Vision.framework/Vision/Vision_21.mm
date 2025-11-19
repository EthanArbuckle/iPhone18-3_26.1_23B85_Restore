uint64_t sub_1A5CE8AC8(uint64_t a1)
{
  v2 = sub_1A5D13E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE8B04(uint64_t a1)
{
  v2 = sub_1A5D13DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE8B40(uint64_t a1)
{
  v2 = sub_1A5D13DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE8B7C()
{
  v1 = *v0;
  v2 = 2036490594;
  v3 = 0x756441676E756F79;
  v4 = 0x746C756461;
  if (v1 != 3)
  {
    v4 = 0x726F696E6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646C696863;
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

uint64_t sub_1A5CE8C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D16EA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CE8C30(uint64_t a1)
{
  v2 = sub_1A5D13CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE8C6C(uint64_t a1)
{
  v2 = sub_1A5D13CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE8CA8(uint64_t a1)
{
  v2 = sub_1A5D13CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE8CE4(uint64_t a1)
{
  v2 = sub_1A5D13CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE8D20(uint64_t a1)
{
  v2 = sub_1A5D13DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE8D5C(uint64_t a1)
{
  v2 = sub_1A5D13DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Age.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4FB8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4FC0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4FC8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4FD0);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4FD8);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4FE0);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1A5D13CA4();
  sub_1A5FD4CDC();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1A5D13DF4();
      v31 = v45;
      sub_1A5FD49EC();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1A5D13E48();
      v31 = v45;
      sub_1A5FD49EC();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1A5D13DA0();
      v22 = v33;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1A5D13D4C();
      v22 = v36;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1A5D13CF8();
      v22 = v39;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

uint64_t FaceObservation.Attributes.Age.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4FE8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4FF0);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4FF8);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5000);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5008);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5010);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1A5D13CA4();
  v16 = v46;
  sub_1A5FD4CCC();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = sub_1A5FD49BC();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = sub_1A5FD471C();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v26 = &type metadata for FaceObservation.Attributes.Age;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          sub_1A5D13DF4();
          sub_1A5FD48CC();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          sub_1A5D13E48();
          sub_1A5FD48CC();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          sub_1A5D13DA0();
          sub_1A5FD48CC();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            sub_1A5D13D4C();
            v29 = v42;
            sub_1A5FD48CC();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            sub_1A5D13CF8();
            sub_1A5FD48CC();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t FaceObservation.Attributes.Eyes.description.getter()
{
  if (*v0)
  {
    return 1852141679;
  }

  else
  {
    return 0x6465736F6C63;
  }
}

uint64_t sub_1A5CE9A9C(uint64_t a1)
{
  v2 = sub_1A5D13F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE9AD8(uint64_t a1)
{
  v2 = sub_1A5D13F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE9B14()
{
  if (*v0)
  {
    return 1852141679;
  }

  else
  {
    return 0x6465736F6C63;
  }
}

uint64_t sub_1A5CE9B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465736F6C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1852141679 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5CE9C1C(uint64_t a1)
{
  v2 = sub_1A5D13E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE9C58(uint64_t a1)
{
  v2 = sub_1A5D13E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE9C94(uint64_t a1)
{
  v2 = sub_1A5D13EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE9CD0(uint64_t a1)
{
  v2 = sub_1A5D13EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Eyes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5018);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5020);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5028);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D13E9C();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5D13EF0();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5D13F44();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t FaceObservation.Attributes.Eyes.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5030);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5038);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5040);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D13E9C();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for FaceObservation.Attributes.Eyes;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5D13EF0();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5D13F44();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t FaceObservation.Attributes.HairColor.description.getter()
{
  v1 = *v0;
  v2 = 0x6B63616C62;
  v3 = 2036429415;
  v4 = 6579570;
  if (v1 != 4)
  {
    v4 = 0x6574696877;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65646E6F6C62;
  if (v1 != 1)
  {
    v5 = 0x6E776F7262;
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

uint64_t sub_1A5CEA504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1A5FD3D5C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_1A5FD4B0C();

  if (v8)
  {
    v9 = 0;
LABEL_9:

    *a3 = v9;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v14 == a2)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v16 = sub_1A5FD4B0C();

  if (v16)
  {
    v9 = 2;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v17 == a2)
  {
    v9 = 3;
    goto LABEL_8;
  }

  v18 = sub_1A5FD4B0C();

  if (v18)
  {
    v9 = 3;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v19 == a2)
  {
    v9 = 4;
    goto LABEL_8;
  }

  v20 = sub_1A5FD4B0C();

  if (v20)
  {
    v9 = 4;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v21 == a2)
  {
    v9 = 5;
    goto LABEL_8;
  }

  v22 = sub_1A5FD4B0C();

  if (v22)
  {
    v9 = 5;
    goto LABEL_9;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CEA7DC(uint64_t a1)
{
  v2 = sub_1A5D14190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEA818(uint64_t a1)
{
  v2 = sub_1A5D14190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEA854(uint64_t a1)
{
  v2 = sub_1A5D1413C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEA890(uint64_t a1)
{
  v2 = sub_1A5D1413C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEA8CC(uint64_t a1)
{
  v2 = sub_1A5D140E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEA908(uint64_t a1)
{
  v2 = sub_1A5D140E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEA944()
{
  v1 = *v0;
  v2 = 0x6B63616C62;
  v3 = 2036429415;
  v4 = 6579570;
  if (v1 != 4)
  {
    v4 = 0x6574696877;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65646E6F6C62;
  if (v1 != 1)
  {
    v5 = 0x6E776F7262;
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

uint64_t sub_1A5CEA9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D1704C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CEAA04(uint64_t a1)
{
  v2 = sub_1A5D13F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEAA40(uint64_t a1)
{
  v2 = sub_1A5D13F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEAA7C(uint64_t a1)
{
  v2 = sub_1A5D14094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEAAB8(uint64_t a1)
{
  v2 = sub_1A5D14094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEAAF4(uint64_t a1)
{
  v2 = sub_1A5D14040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEAB30(uint64_t a1)
{
  v2 = sub_1A5D14040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEAB6C(uint64_t a1)
{
  v2 = sub_1A5D13FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEABA8(uint64_t a1)
{
  v2 = sub_1A5D13FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.HairColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5048);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5050);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5058);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5060);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5068);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5070);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5078);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D13F98();
  sub_1A5FD4CDC();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1A5D14094();
      v21 = v33;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1A5D14040();
      v21 = v36;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1A5D13FEC();
      v21 = v39;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1A5D1413C();
      v21 = v27;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1A5D140E8();
      v21 = v30;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1A5D14190();
  v22 = v42;
  sub_1A5FD49EC();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

uint64_t FaceObservation.Attributes.HairColor.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5080);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5088);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5090);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v43[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5098);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v43[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50A0);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50A8);
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50B0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43[-v21];
  v23 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1A5D13F98();
  v24 = v62;
  sub_1A5FD4CCC();
  if (!v24)
  {
    v45 = v16;
    v25 = v15;
    v27 = v60;
    v26 = v61;
    v62 = v20;
    v28 = v22;
    v29 = sub_1A5FD49BC();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
    {
      v33 = sub_1A5FD471C();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v35 = &type metadata for FaceObservation.Attributes.HairColor;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v29 + 32);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v39 = v59;
          v67 = 3;
          sub_1A5D14094();
          sub_1A5FD48CC();
          v40 = v62;
          (*(v52 + 8))(v26, v51);
          (*(v40 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v36 = v39;
        }

        else
        {
          v36 = v59;
          v37 = v62;
          if (v30 == 4)
          {
            v68 = 4;
            sub_1A5D14040();
            v38 = v57;
            sub_1A5FD48CC();
            (*(v54 + 8))(v38, v53);
          }

          else
          {
            v69 = 5;
            sub_1A5D13FEC();
            v41 = v58;
            sub_1A5FD48CC();
            (*(v55 + 8))(v41, v56);
          }

          (*(v37 + 8))(v22, v19);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v65 = 1;
            sub_1A5D1413C();
            v31 = v25;
            sub_1A5FD48CC();
            v32 = v62;
            (*(v47 + 8))(v31, v48);
          }

          else
          {
            v66 = 2;
            sub_1A5D140E8();
            sub_1A5FD48CC();
            v32 = v62;
            (*(v49 + 8))(v27, v50);
          }
        }

        else
        {
          v64 = 0;
          sub_1A5D14190();
          sub_1A5FD48CC();
          (*(v46 + 8))(v18, v45);
          v32 = v62;
        }

        (*(v32 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v36 = v59;
      }

      *v36 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t FaceObservation.Attributes.Glasses.description.getter()
{
  v1 = 0x7373616C676E7573;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7069726373657270;
  }
}

uint64_t sub_1A5CEBA9C()
{
  v1 = 0x7373616C676E7573;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7069726373657270;
  }
}

uint64_t sub_1A5CEBAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D17238(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CEBB24(uint64_t a1)
{
  v2 = sub_1A5D141E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEBB60(uint64_t a1)
{
  v2 = sub_1A5D141E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEBB9C(uint64_t a1)
{
  v2 = sub_1A5D14238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEBBD8(uint64_t a1)
{
  v2 = sub_1A5D14238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEBC14(uint64_t a1)
{
  v2 = sub_1A5D142E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEBC50(uint64_t a1)
{
  v2 = sub_1A5D142E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEBC8C(uint64_t a1)
{
  v2 = sub_1A5D1428C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEBCC8(uint64_t a1)
{
  v2 = sub_1A5D1428C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Glasses.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50B8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50C0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50C8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D141E4();
  sub_1A5FD4CDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A5D1428C();
      v9 = v21;
      sub_1A5FD49EC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A5D14238();
      v9 = v24;
      sub_1A5FD49EC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A5D142E0();
    sub_1A5FD49EC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t FaceObservation.Attributes.Glasses.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50D8);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50E0);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50E8);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50F0);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D141E4();
  v13 = v43;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_1A5D1428C();
          v27 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_1A5D14238();
          v31 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_1A5D142E0();
        v29 = v34;
        sub_1A5FD48CC();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_1A5FD471C();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
  *v23 = &type metadata for FaceObservation.Attributes.Glasses;
  sub_1A5FD48DC();
  sub_1A5FD470C();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t FaceObservation.Attributes.Smiling.description.getter()
{
  if (*v0)
  {
    return 0x676E696C696D73;
  }

  else
  {
    return 0x696C696D53746F6ELL;
  }
}

uint64_t sub_1A5CEC6D4()
{
  if (*v0)
  {
    return 0x676E696C696D73;
  }

  else
  {
    return 0x696C696D53746F6ELL;
  }
}

uint64_t sub_1A5CEC714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696C696D53746F6ELL && a2 == 0xEA0000000000676ELL;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696C696D73 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5CEC7F8(uint64_t a1)
{
  v2 = sub_1A5D14334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEC834(uint64_t a1)
{
  v2 = sub_1A5D14334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEC870(uint64_t a1)
{
  v2 = sub_1A5D143DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEC8AC(uint64_t a1)
{
  v2 = sub_1A5D143DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEC8E8(uint64_t a1)
{
  v2 = sub_1A5D14388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEC924(uint64_t a1)
{
  v2 = sub_1A5D14388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Smiling.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F50F8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5100);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5108);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14334();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5D14388();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5D143DC();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t FaceObservation.Attributes.Smiling.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5110);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5118);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5120);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14334();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for FaceObservation.Attributes.Smiling;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5D14388();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5D143DC();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t FaceObservation.Attributes.MakeupEyes.description.getter()
{
  v1 = 1701736302;
  if (*v0 != 1)
  {
    v1 = 0x7075656B616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657275736E75;
  }
}

uint64_t sub_1A5CED10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1A5FD3D5C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_1A5FD4B0C();

  if (v8)
  {
    v9 = 0;
LABEL_9:

    *a3 = v9;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v14 == a2)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v15 = sub_1A5FD4B0C();

  if (v15)
  {
    v9 = 2;
    goto LABEL_9;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CED2E0()
{
  v1 = 1701736302;
  if (*v0 != 1)
  {
    v1 = 0x7075656B616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657275736E75;
  }
}

uint64_t sub_1A5CED32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D1735C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CED354(uint64_t a1)
{
  v2 = sub_1A5D14430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CED390(uint64_t a1)
{
  v2 = sub_1A5D14430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CED3CC(uint64_t a1)
{
  v2 = sub_1A5D14484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CED408(uint64_t a1)
{
  v2 = sub_1A5D14484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CED444(uint64_t a1)
{
  v2 = sub_1A5D144D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CED480(uint64_t a1)
{
  v2 = sub_1A5D144D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CED4BC(uint64_t a1)
{
  v2 = sub_1A5D1452C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CED4F8(uint64_t a1)
{
  v2 = sub_1A5D1452C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.MakeupEyes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5128);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5130);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5138);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5140);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14430();
  sub_1A5FD4CDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A5D144D8();
      v9 = v21;
      sub_1A5FD49EC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A5D14484();
      v9 = v24;
      sub_1A5FD49EC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A5D1452C();
    sub_1A5FD49EC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t FaceObservation.Attributes.MakeupEyes.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5148);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5150);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5158);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5160);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14430();
  v13 = v43;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_1A5D144D8();
          v27 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_1A5D14484();
          v31 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_1A5D1452C();
        v29 = v34;
        sub_1A5FD48CC();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_1A5FD471C();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
  *v23 = &type metadata for FaceObservation.Attributes.MakeupEyes;
  sub_1A5FD48DC();
  sub_1A5FD470C();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t FaceObservation.Attributes.MakeupLips.description.getter()
{
  if (*v0)
  {
    return 0x7075656B616DLL;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1A5CEDEF4()
{
  if (*v0)
  {
    return 0x7075656B616DLL;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1A5CEDF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7075656B616DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5CEDFFC(uint64_t a1)
{
  v2 = sub_1A5D14580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEE038(uint64_t a1)
{
  v2 = sub_1A5D14580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEE074(uint64_t a1)
{
  v2 = sub_1A5D145D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEE0B0(uint64_t a1)
{
  v2 = sub_1A5D145D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEE0EC(uint64_t a1)
{
  v2 = sub_1A5D14628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEE128(uint64_t a1)
{
  v2 = sub_1A5D14628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.MakeupLips.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5168);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5170);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5178);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14580();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5D145D4();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5D14628();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t FaceObservation.Attributes.MakeupLips.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5180);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5188);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5190);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14580();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for FaceObservation.Attributes.MakeupLips;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5D145D4();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5D14628();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t FaceObservation.Attributes.FaceMask.description.getter()
{
  if (*v0)
  {
    return 1701736302;
  }

  else
  {
    return 1802723693;
  }
}

uint64_t sub_1A5CEE8E8()
{
  if (*v0)
  {
    return 1701736302;
  }

  else
  {
    return 1802723693;
  }
}

uint64_t sub_1A5CEE90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802723693 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5CEE9E8(uint64_t a1)
{
  v2 = sub_1A5D1467C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEEA24(uint64_t a1)
{
  v2 = sub_1A5D1467C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEEA60(uint64_t a1)
{
  v2 = sub_1A5D14724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEEA9C(uint64_t a1)
{
  v2 = sub_1A5D14724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEEAD8(uint64_t a1)
{
  v2 = sub_1A5D146D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEEB14(uint64_t a1)
{
  v2 = sub_1A5D146D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.FaceMask.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5198);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51A0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1467C();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5D146D0();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5D14724();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t FaceObservation.Attributes.FaceMask.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51B0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51B8);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51C0);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1467C();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for FaceObservation.Attributes.FaceMask;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5D146D0();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5D14724();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t FaceObservation.Attributes.Pose.description.getter()
{
  v1 = *v0;
  v2 = 0x746E6F7266;
  v3 = 0xD000000000000011;
  v4 = 0x6F72507468676972;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x666F72507466656CLL;
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

uint64_t sub_1A5CEF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1A5FD3D5C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_1A5FD4B0C();

  if (v8)
  {
    v9 = 0;
LABEL_9:

    *a3 = v9;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v14 == a2)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v16 = sub_1A5FD4B0C();

  if (v16)
  {
    v9 = 2;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v17 == a2)
  {
    v9 = 3;
    goto LABEL_8;
  }

  v18 = sub_1A5FD4B0C();

  if (v18)
  {
    v9 = 3;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v19 == a2)
  {
    v9 = 4;
    goto LABEL_8;
  }

  v20 = sub_1A5FD4B0C();

  if (v20)
  {
    v9 = 4;
    goto LABEL_9;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CEF5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D1746C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CEF604(uint64_t a1)
{
  v2 = sub_1A5D14778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEF640(uint64_t a1)
{
  v2 = sub_1A5D14778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEF67C(uint64_t a1)
{
  v2 = sub_1A5D1491C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEF6B8(uint64_t a1)
{
  v2 = sub_1A5D1491C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEF6F4(uint64_t a1)
{
  v2 = sub_1A5D148C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEF730(uint64_t a1)
{
  v2 = sub_1A5D148C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEF76C(uint64_t a1)
{
  v2 = sub_1A5D14874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEF7A8(uint64_t a1)
{
  v2 = sub_1A5D14874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEF7E4(uint64_t a1)
{
  v2 = sub_1A5D14820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEF820(uint64_t a1)
{
  v2 = sub_1A5D14820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CEF85C(uint64_t a1)
{
  v2 = sub_1A5D147CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CEF898(uint64_t a1)
{
  v2 = sub_1A5D147CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Pose.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51C8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51D0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51D8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51E0);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51E8);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51F0);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1A5D14778();
  sub_1A5FD4CDC();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1A5D148C8();
      v31 = v45;
      sub_1A5FD49EC();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1A5D1491C();
      v31 = v45;
      sub_1A5FD49EC();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1A5D14874();
      v22 = v33;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1A5D14820();
      v22 = v36;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1A5D147CC();
      v22 = v39;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

uint64_t FaceObservation.Attributes.Pose.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F51F8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5200);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5208);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5210);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5218);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5220);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1A5D14778();
  v16 = v46;
  sub_1A5FD4CCC();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = sub_1A5FD49BC();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = sub_1A5FD471C();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v26 = &type metadata for FaceObservation.Attributes.Pose;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          sub_1A5D148C8();
          sub_1A5FD48CC();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          sub_1A5D1491C();
          sub_1A5FD48CC();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          sub_1A5D14874();
          sub_1A5FD48CC();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            sub_1A5D14820();
            v29 = v42;
            sub_1A5FD48CC();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            sub_1A5D147CC();
            sub_1A5FD48CC();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

unint64_t sub_1A5CF05A8()
{
  v1 = *v0;
  v2 = 0x746E6F7266;
  v3 = 0xD000000000000011;
  v4 = 0x6F72507468676972;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x666F72507466656CLL;
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

uint64_t FaceObservation.Attributes.Category7e.description.getter()
{
  if (*v0)
  {
    return 0x63366C6562616CLL;
  }

  else
  {
    return 0x79316C6562616CLL;
  }
}

uint64_t sub_1A5CF0684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1A5FD3D5C() == a1 && v6 == a2;
  v8 = !v7;
  if (v7)
  {
    goto LABEL_16;
  }

  v9 = sub_1A5FD4B0C();

  if (v9)
  {
    v10 = 0;
LABEL_17:

    *a3 = v10;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
LABEL_16:

    v10 = v8;
    goto LABEL_17;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v10 = 1;
    goto LABEL_17;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CF07F8()
{
  if (*v0)
  {
    return 0x63366C6562616CLL;
  }

  else
  {
    return 0x79316C6562616CLL;
  }
}

uint64_t sub_1A5CF082C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79316C6562616CLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x63366C6562616CLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5CF0908(uint64_t a1)
{
  v2 = sub_1A5D14970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF0944(uint64_t a1)
{
  v2 = sub_1A5D14970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF0980(uint64_t a1)
{
  v2 = sub_1A5D14A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF09BC(uint64_t a1)
{
  v2 = sub_1A5D14A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF09F8(uint64_t a1)
{
  v2 = sub_1A5D149C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF0A34(uint64_t a1)
{
  v2 = sub_1A5D149C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Category7e.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5228);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5230);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5238);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14970();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5D149C4();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5D14A18();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t FaceObservation.Attributes.Category7e.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5240);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5248);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5250);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14970();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for FaceObservation.Attributes.Category7e;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5D149C4();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5D14A18();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1A5CF11E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1A5FD3D5C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_1A5FD4B0C();

  if (v8)
  {
    v9 = 0;
LABEL_9:

    *a3 = v9;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v14 == a2)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v16 = sub_1A5FD4B0C();

  if (v16)
  {
    v9 = 2;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v17 == a2)
  {
    v9 = 3;
    goto LABEL_8;
  }

  v18 = sub_1A5FD4B0C();

  if (v18)
  {
    v9 = 3;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v19 == a2)
  {
    v9 = 4;
    goto LABEL_8;
  }

  v20 = sub_1A5FD4B0C();

  if (v20)
  {
    v9 = 4;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v21 == a2)
  {
    v9 = 5;
    goto LABEL_8;
  }

  v22 = sub_1A5FD4B0C();

  if (v22)
  {
    v9 = 5;
    goto LABEL_9;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CF14D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D1762C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CF1500(uint64_t a1)
{
  v2 = sub_1A5D14A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF153C(uint64_t a1)
{
  v2 = sub_1A5D14A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF1578(uint64_t a1)
{
  v2 = sub_1A5D14B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF15B4(uint64_t a1)
{
  v2 = sub_1A5D14B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF15F0(uint64_t a1)
{
  v2 = sub_1A5D14B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF162C(uint64_t a1)
{
  v2 = sub_1A5D14B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF1668(uint64_t a1)
{
  v2 = sub_1A5D14BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF16A4(uint64_t a1)
{
  v2 = sub_1A5D14BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF16E0(uint64_t a1)
{
  v2 = sub_1A5D14C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF171C(uint64_t a1)
{
  v2 = sub_1A5D14C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF1758(uint64_t a1)
{
  v2 = sub_1A5D14C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF1794(uint64_t a1)
{
  v2 = sub_1A5D14C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF17D0(uint64_t a1)
{
  v2 = sub_1A5D14AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF180C(uint64_t a1)
{
  v2 = sub_1A5D14AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Category4U.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5258);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5260);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5268);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5270);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5278);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5280);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5288);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14A6C();
  sub_1A5FD4CDC();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1A5D14B68();
      v21 = v33;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1A5D14B14();
      v21 = v36;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1A5D14AC0();
      v21 = v39;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1A5D14C10();
      v21 = v27;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1A5D14BBC();
      v21 = v30;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1A5D14C64();
  v22 = v42;
  sub_1A5FD49EC();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

uint64_t FaceObservation.Attributes.Category4U.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5290);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5298);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52A0);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v43[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52A8);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v43[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52B0);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52B8);
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52C0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43[-v21];
  v23 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1A5D14A6C();
  v24 = v62;
  sub_1A5FD4CCC();
  if (!v24)
  {
    v45 = v16;
    v25 = v15;
    v27 = v60;
    v26 = v61;
    v62 = v20;
    v28 = v22;
    v29 = sub_1A5FD49BC();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
    {
      v33 = sub_1A5FD471C();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v35 = &type metadata for FaceObservation.Attributes.Category4U;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v29 + 32);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v39 = v59;
          v67 = 3;
          sub_1A5D14B68();
          sub_1A5FD48CC();
          v40 = v62;
          (*(v52 + 8))(v26, v51);
          (*(v40 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v36 = v39;
        }

        else
        {
          v36 = v59;
          v37 = v62;
          if (v30 == 4)
          {
            v68 = 4;
            sub_1A5D14B14();
            v38 = v57;
            sub_1A5FD48CC();
            (*(v54 + 8))(v38, v53);
          }

          else
          {
            v69 = 5;
            sub_1A5D14AC0();
            v41 = v58;
            sub_1A5FD48CC();
            (*(v55 + 8))(v41, v56);
          }

          (*(v37 + 8))(v22, v19);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v65 = 1;
            sub_1A5D14C10();
            v31 = v25;
            sub_1A5FD48CC();
            v32 = v62;
            (*(v47 + 8))(v31, v48);
          }

          else
          {
            v66 = 2;
            sub_1A5D14BBC();
            sub_1A5FD48CC();
            v32 = v62;
            (*(v49 + 8))(v27, v50);
          }
        }

        else
        {
          v64 = 0;
          sub_1A5D14C64();
          sub_1A5FD48CC();
          (*(v46 + 8))(v18, v45);
          v32 = v62;
        }

        (*(v32 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v36 = v59;
      }

      *v36 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1A5CF26B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1A5FD3D5C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_1A5FD4B0C();

  if (v8)
  {
    v9 = 0;
LABEL_9:

    *a3 = v9;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v14 == a2)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v16 = sub_1A5FD4B0C();

  if (v16)
  {
    v9 = 2;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v17 == a2)
  {
    v9 = 3;
    goto LABEL_8;
  }

  v18 = sub_1A5FD4B0C();

  if (v18)
  {
    v9 = 3;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v19 == a2)
  {
    v9 = 4;
    goto LABEL_8;
  }

  v20 = sub_1A5FD4B0C();

  if (v20)
  {
    v9 = 4;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v21 == a2)
  {
    v9 = 5;
    goto LABEL_8;
  }

  v22 = sub_1A5FD4B0C();

  if (v22)
  {
    v9 = 5;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v23 == a2)
  {
    v9 = 6;
    goto LABEL_8;
  }

  v24 = sub_1A5FD4B0C();

  if (v24)
  {
    v9 = 6;
    goto LABEL_9;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CF2A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D17828(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CF2A28(uint64_t a1)
{
  v2 = sub_1A5D14CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF2A64(uint64_t a1)
{
  v2 = sub_1A5D14CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF2AA0(uint64_t a1)
{
  v2 = sub_1A5D14DB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF2ADC(uint64_t a1)
{
  v2 = sub_1A5D14DB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF2B18(uint64_t a1)
{
  v2 = sub_1A5D14EB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF2B54(uint64_t a1)
{
  v2 = sub_1A5D14EB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF2B90(uint64_t a1)
{
  v2 = sub_1A5D14E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF2BCC(uint64_t a1)
{
  v2 = sub_1A5D14E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF2C08(uint64_t a1)
{
  v2 = sub_1A5D14D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF2C44(uint64_t a1)
{
  v2 = sub_1A5D14D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF2C80(uint64_t a1)
{
  v2 = sub_1A5D14D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF2CBC(uint64_t a1)
{
  v2 = sub_1A5D14D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF2CF8(uint64_t a1)
{
  v2 = sub_1A5D14F04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF2D34(uint64_t a1)
{
  v2 = sub_1A5D14F04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF2D70(uint64_t a1)
{
  v2 = sub_1A5D14E5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF2DAC(uint64_t a1)
{
  v2 = sub_1A5D14E5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Category7C.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52C8);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52D0);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52D8);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52E0);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52E8);
  v55 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v54 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52F0);
  v53 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F52F8);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5300);
  v18 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14CB8();
  v56 = v20;
  sub_1A5FD4CDC();
  v22 = (v18 + 8);
  if (v21 <= 2)
  {
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    if (v21)
    {
      if (v21 == 1)
      {
        v59 = 1;
        sub_1A5D14EB0();
        v33 = v56;
        v32 = v57;
        sub_1A5FD49EC();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_1A5D14E5C();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_1A5FD49EC();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_1A5D14F04();
      v34 = v56;
      v35 = v57;
      sub_1A5FD49EC();
      (*(v28 + 8))(v17, v15);
      return (*v22)(v34, v35);
    }
  }

  else
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        v63 = 5;
        sub_1A5D14D60();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_1A5FD49EC();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_1A5D14D0C();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_1A5FD49EC();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_1A5D14E08();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_1A5FD49EC();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_1A5D14DB4();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_1A5FD49EC();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

uint64_t FaceObservation.Attributes.Category7C.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5308);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v49[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5310);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v49[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5318);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v49[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5320);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v49[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5328);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v49[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5330);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5338);
  v53 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5340);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49[-v23];
  v25 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1A5D14CB8();
  v26 = v73;
  sub_1A5FD4CCC();
  if (!v26)
  {
    v51 = v18;
    v27 = v70;
    v28 = v71;
    v52 = v22;
    v73 = v21;
    v29 = sub_1A5FD49BC();
    if (*(v29 + 16) == 1)
    {
      v30 = *(v29 + 32);
      if (v30 != 7)
      {
        v50 = *(v29 + 32);
        if (v30 > 2)
        {
          if (v30 > 4)
          {
            v31 = v30 == 5;
            v32 = v69;
            v41 = v73;
            if (v31)
            {
              v79 = 5;
              sub_1A5D14D60();
              sub_1A5FD48CC();
              v46 = v52;
              (*(v62 + 8))(v28, v63);
            }

            else
            {
              v80 = 6;
              sub_1A5D14D0C();
              v45 = v68;
              sub_1A5FD48CC();
              v46 = v52;
              (*(v64 + 8))(v45, v65);
            }

            (*(v46 + 8))(v24, v41);
          }

          else
          {
            v31 = v30 == 3;
            v32 = v69;
            v33 = v73;
            if (v31)
            {
              v77 = 3;
              sub_1A5D14E08();
              v34 = v66;
              sub_1A5FD48CC();
              v44 = v52;
              (*(v59 + 8))(v34, v58);
            }

            else
            {
              v78 = 4;
              sub_1A5D14DB4();
              v43 = v67;
              sub_1A5FD48CC();
              v44 = v52;
              (*(v61 + 8))(v43, v60);
            }

            (*(v44 + 8))(v24, v33);
          }

          swift_unknownObjectRelease();
          v47 = v72;
          goto LABEL_25;
        }

        if (v30)
        {
          if (v30 == 1)
          {
            v75 = 1;
            sub_1A5D14EB0();
            v39 = v24;
            v40 = v73;
            sub_1A5FD48CC();
            (*(v54 + 8))(v17, v55);
            (*(v52 + 8))(v39, v40);
LABEL_21:
            swift_unknownObjectRelease();
            v47 = v72;
            v32 = v69;
LABEL_25:
            *v32 = v50;
            return __swift_destroy_boxed_opaque_existential_1(v47);
          }

          v76 = 2;
          sub_1A5D14E5C();
          v42 = v73;
          sub_1A5FD48CC();
          (*(v56 + 8))(v27, v57);
        }

        else
        {
          v74 = 0;
          sub_1A5D14F04();
          v42 = v73;
          sub_1A5FD48CC();
          (*(v53 + 8))(v20, v51);
        }

        (*(v52 + 8))(v24, v42);
        goto LABEL_21;
      }
    }

    v35 = sub_1A5FD471C();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v37 = &type metadata for FaceObservation.Attributes.Category7C;
    v38 = v73;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v52 + 8))(v24, v38);
    swift_unknownObjectRelease();
  }

  v47 = v72;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1A5CF3EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1A5FD3D5C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_1A5FD4B0C();

  if (v8)
  {
    v9 = 0;
LABEL_9:

    *a3 = v9;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v14 == a2)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v16 = sub_1A5FD4B0C();

  if (v16)
  {
    v9 = 2;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v17 == a2)
  {
    v9 = 3;
    goto LABEL_8;
  }

  v18 = sub_1A5FD4B0C();

  if (v18)
  {
    v9 = 3;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v19 == a2)
  {
    v9 = 4;
    goto LABEL_8;
  }

  v20 = sub_1A5FD4B0C();

  if (v20)
  {
    v9 = 4;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v21 == a2)
  {
    v9 = 5;
    goto LABEL_8;
  }

  v22 = sub_1A5FD4B0C();

  if (v22)
  {
    v9 = 5;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v23 == a2)
  {
    v9 = 6;
    goto LABEL_8;
  }

  v24 = sub_1A5FD4B0C();

  if (v24)
  {
    v9 = 6;
    goto LABEL_9;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CF4208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D17A70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CF4230(uint64_t a1)
{
  v2 = sub_1A5D14F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF426C(uint64_t a1)
{
  v2 = sub_1A5D14F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF42A8(uint64_t a1)
{
  v2 = sub_1A5D15054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF42E4(uint64_t a1)
{
  v2 = sub_1A5D15054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF4320(uint64_t a1)
{
  v2 = sub_1A5D14FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF435C(uint64_t a1)
{
  v2 = sub_1A5D14FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF4398(uint64_t a1)
{
  v2 = sub_1A5D151A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF43D4(uint64_t a1)
{
  v2 = sub_1A5D151A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF4410(uint64_t a1)
{
  v2 = sub_1A5D150FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF444C(uint64_t a1)
{
  v2 = sub_1A5D150FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF4488(uint64_t a1)
{
  v2 = sub_1A5D150A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF44C4(uint64_t a1)
{
  v2 = sub_1A5D150A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF4500(uint64_t a1)
{
  v2 = sub_1A5D15000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF453C(uint64_t a1)
{
  v2 = sub_1A5D15000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF4578(uint64_t a1)
{
  v2 = sub_1A5D15150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF45B4(uint64_t a1)
{
  v2 = sub_1A5D15150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Category2r.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5348);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5350);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5358);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5360);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5368);
  v55 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v54 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5370);
  v53 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5378);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5380);
  v18 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D14F58();
  v56 = v20;
  sub_1A5FD4CDC();
  v22 = (v18 + 8);
  if (v21 <= 2)
  {
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    if (v21)
    {
      if (v21 == 1)
      {
        v59 = 1;
        sub_1A5D15150();
        v33 = v56;
        v32 = v57;
        sub_1A5FD49EC();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_1A5D150FC();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_1A5FD49EC();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_1A5D151A4();
      v34 = v56;
      v35 = v57;
      sub_1A5FD49EC();
      (*(v28 + 8))(v17, v15);
      return (*v22)(v34, v35);
    }
  }

  else
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        v63 = 5;
        sub_1A5D15000();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_1A5FD49EC();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_1A5D14FAC();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_1A5FD49EC();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_1A5D150A8();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_1A5FD49EC();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_1A5D15054();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_1A5FD49EC();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

uint64_t FaceObservation.Attributes.Category2r.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5388);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v49[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5390);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v49[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5398);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v49[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53A0);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v49[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53A8);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v49[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53B0);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53B8);
  v53 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53C0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49[-v23];
  v25 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1A5D14F58();
  v26 = v73;
  sub_1A5FD4CCC();
  if (!v26)
  {
    v51 = v18;
    v27 = v70;
    v28 = v71;
    v52 = v22;
    v73 = v21;
    v29 = sub_1A5FD49BC();
    if (*(v29 + 16) == 1)
    {
      v30 = *(v29 + 32);
      if (v30 != 7)
      {
        v50 = *(v29 + 32);
        if (v30 > 2)
        {
          if (v30 > 4)
          {
            v31 = v30 == 5;
            v32 = v69;
            v41 = v73;
            if (v31)
            {
              v79 = 5;
              sub_1A5D15000();
              sub_1A5FD48CC();
              v46 = v52;
              (*(v62 + 8))(v28, v63);
            }

            else
            {
              v80 = 6;
              sub_1A5D14FAC();
              v45 = v68;
              sub_1A5FD48CC();
              v46 = v52;
              (*(v64 + 8))(v45, v65);
            }

            (*(v46 + 8))(v24, v41);
          }

          else
          {
            v31 = v30 == 3;
            v32 = v69;
            v33 = v73;
            if (v31)
            {
              v77 = 3;
              sub_1A5D150A8();
              v34 = v66;
              sub_1A5FD48CC();
              v44 = v52;
              (*(v59 + 8))(v34, v58);
            }

            else
            {
              v78 = 4;
              sub_1A5D15054();
              v43 = v67;
              sub_1A5FD48CC();
              v44 = v52;
              (*(v61 + 8))(v43, v60);
            }

            (*(v44 + 8))(v24, v33);
          }

          swift_unknownObjectRelease();
          v47 = v72;
          goto LABEL_25;
        }

        if (v30)
        {
          if (v30 == 1)
          {
            v75 = 1;
            sub_1A5D15150();
            v39 = v24;
            v40 = v73;
            sub_1A5FD48CC();
            (*(v54 + 8))(v17, v55);
            (*(v52 + 8))(v39, v40);
LABEL_21:
            swift_unknownObjectRelease();
            v47 = v72;
            v32 = v69;
LABEL_25:
            *v32 = v50;
            return __swift_destroy_boxed_opaque_existential_1(v47);
          }

          v76 = 2;
          sub_1A5D150FC();
          v42 = v73;
          sub_1A5FD48CC();
          (*(v56 + 8))(v27, v57);
        }

        else
        {
          v74 = 0;
          sub_1A5D151A4();
          v42 = v73;
          sub_1A5FD48CC();
          (*(v53 + 8))(v20, v51);
        }

        (*(v52 + 8))(v24, v42);
        goto LABEL_21;
      }
    }

    v35 = sub_1A5FD471C();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v37 = &type metadata for FaceObservation.Attributes.Category2r;
    v38 = v73;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v52 + 8))(v24, v38);
    swift_unknownObjectRelease();
  }

  v47 = v72;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1A5CF56C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1A5FD3D5C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_1A5FD4B0C();

  if (v8)
  {
    v9 = 0;
LABEL_9:

    *a3 = v9;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v14 == a2)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v16 = sub_1A5FD4B0C();

  if (v16)
  {
    v9 = 2;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v17 == a2)
  {
    v9 = 3;
    goto LABEL_8;
  }

  v18 = sub_1A5FD4B0C();

  if (v18)
  {
    v9 = 3;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v19 == a2)
  {
    v9 = 4;
    goto LABEL_8;
  }

  v20 = sub_1A5FD4B0C();

  if (v20)
  {
    v9 = 4;
    goto LABEL_9;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CF5974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D17CB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CF599C(uint64_t a1)
{
  v2 = sub_1A5D151F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF59D8(uint64_t a1)
{
  v2 = sub_1A5D151F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF5A14(uint64_t a1)
{
  v2 = sub_1A5D152A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF5A50(uint64_t a1)
{
  v2 = sub_1A5D152A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF5A8C(uint64_t a1)
{
  v2 = sub_1A5D15348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF5AC8(uint64_t a1)
{
  v2 = sub_1A5D15348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF5B04(uint64_t a1)
{
  v2 = sub_1A5D152F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF5B40(uint64_t a1)
{
  v2 = sub_1A5D152F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF5B7C(uint64_t a1)
{
  v2 = sub_1A5D1524C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF5BB8(uint64_t a1)
{
  v2 = sub_1A5D1524C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF5BF4(uint64_t a1)
{
  v2 = sub_1A5D1539C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF5C30(uint64_t a1)
{
  v2 = sub_1A5D1539C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Category1u.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53C8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53D0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53D8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53E0);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53E8);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53F0);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1A5D151F8();
  sub_1A5FD4CDC();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1A5D15348();
      v31 = v45;
      sub_1A5FD49EC();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1A5D1539C();
      v31 = v45;
      sub_1A5FD49EC();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1A5D152F4();
      v22 = v33;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1A5D152A0();
      v22 = v36;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1A5D1524C();
      v22 = v39;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

uint64_t FaceObservation.Attributes.Category1u.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F53F8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5400);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5408);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5410);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5418);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5420);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1A5D151F8();
  v16 = v46;
  sub_1A5FD4CCC();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = sub_1A5FD49BC();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = sub_1A5FD471C();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v26 = &type metadata for FaceObservation.Attributes.Category1u;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          sub_1A5D15348();
          sub_1A5FD48CC();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          sub_1A5D1539C();
          sub_1A5FD48CC();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          sub_1A5D152F4();
          sub_1A5FD48CC();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            sub_1A5D152A0();
            v29 = v42;
            sub_1A5FD48CC();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            sub_1A5D1524C();
            sub_1A5FD48CC();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1A5CF6988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1A5FD3D5C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_1A5FD4B0C();

  if (v8)
  {
    v9 = 0;
LABEL_9:

    *a3 = v9;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v14 == a2)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v16 = sub_1A5FD4B0C();

  if (v16)
  {
    v9 = 2;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v17 == a2)
  {
    v9 = 3;
    goto LABEL_8;
  }

  v18 = sub_1A5FD4B0C();

  if (v18)
  {
    v9 = 3;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v19 == a2)
  {
    v9 = 4;
    goto LABEL_8;
  }

  v20 = sub_1A5FD4B0C();

  if (v20)
  {
    v9 = 4;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v21 == a2)
  {
    v9 = 5;
    goto LABEL_8;
  }

  v22 = sub_1A5FD4B0C();

  if (v22)
  {
    v9 = 5;
    goto LABEL_9;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CF6C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D17E68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CF6CA0(uint64_t a1)
{
  v2 = sub_1A5D153F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF6CDC(uint64_t a1)
{
  v2 = sub_1A5D153F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF6D18(uint64_t a1)
{
  v2 = sub_1A5D15540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF6D54(uint64_t a1)
{
  v2 = sub_1A5D15540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF6D90(uint64_t a1)
{
  v2 = sub_1A5D15498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF6DCC(uint64_t a1)
{
  v2 = sub_1A5D15498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF6E08(uint64_t a1)
{
  v2 = sub_1A5D154EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF6E44(uint64_t a1)
{
  v2 = sub_1A5D154EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF6E80(uint64_t a1)
{
  v2 = sub_1A5D15444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF6EBC(uint64_t a1)
{
  v2 = sub_1A5D15444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF6EF8(uint64_t a1)
{
  v2 = sub_1A5D15594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF6F34(uint64_t a1)
{
  v2 = sub_1A5D15594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF6F70(uint64_t a1)
{
  v2 = sub_1A5D155E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF6FAC(uint64_t a1)
{
  v2 = sub_1A5D155E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Category3i.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5428);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5430);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5438);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5440);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5448);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5450);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5458);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D153F0();
  sub_1A5FD4CDC();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1A5D154EC();
      v21 = v33;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1A5D15498();
      v21 = v36;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1A5D15444();
      v21 = v39;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1A5D15594();
      v21 = v27;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1A5D15540();
      v21 = v30;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1A5D155E8();
  v22 = v42;
  sub_1A5FD49EC();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

uint64_t FaceObservation.Attributes.Category3i.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5460);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5468);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5470);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v43[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5478);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v43[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5480);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5488);
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5490);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43[-v21];
  v23 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1A5D153F0();
  v24 = v62;
  sub_1A5FD4CCC();
  if (!v24)
  {
    v45 = v16;
    v25 = v15;
    v27 = v60;
    v26 = v61;
    v62 = v20;
    v28 = v22;
    v29 = sub_1A5FD49BC();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
    {
      v33 = sub_1A5FD471C();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v35 = &type metadata for FaceObservation.Attributes.Category3i;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v29 + 32);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v39 = v59;
          v67 = 3;
          sub_1A5D154EC();
          sub_1A5FD48CC();
          v40 = v62;
          (*(v52 + 8))(v26, v51);
          (*(v40 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v36 = v39;
        }

        else
        {
          v36 = v59;
          v37 = v62;
          if (v30 == 4)
          {
            v68 = 4;
            sub_1A5D15498();
            v38 = v57;
            sub_1A5FD48CC();
            (*(v54 + 8))(v38, v53);
          }

          else
          {
            v69 = 5;
            sub_1A5D15444();
            v41 = v58;
            sub_1A5FD48CC();
            (*(v55 + 8))(v41, v56);
          }

          (*(v37 + 8))(v22, v19);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v65 = 1;
            sub_1A5D15594();
            v31 = v25;
            sub_1A5FD48CC();
            v32 = v62;
            (*(v47 + 8))(v31, v48);
          }

          else
          {
            v66 = 2;
            sub_1A5D15540();
            sub_1A5FD48CC();
            v32 = v62;
            (*(v49 + 8))(v27, v50);
          }
        }

        else
        {
          v64 = 0;
          sub_1A5D155E8();
          sub_1A5FD48CC();
          (*(v46 + 8))(v18, v45);
          v32 = v62;
        }

        (*(v32 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v36 = v59;
      }

      *v36 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1A5CF7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1A5FD3D5C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_1A5FD4B0C();

  if (v8)
  {
    v9 = 0;
LABEL_9:

    *a3 = v9;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v14 == a2)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v16 = sub_1A5FD4B0C();

  if (v16)
  {
    v9 = 2;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v17 == a2)
  {
    v9 = 3;
    goto LABEL_8;
  }

  v18 = sub_1A5FD4B0C();

  if (v18)
  {
    v9 = 3;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v19 == a2)
  {
    v9 = 4;
    goto LABEL_8;
  }

  v20 = sub_1A5FD4B0C();

  if (v20)
  {
    v9 = 4;
    goto LABEL_9;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CF80F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D18064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CF8118(uint64_t a1)
{
  v2 = sub_1A5D1563C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF8154(uint64_t a1)
{
  v2 = sub_1A5D1563C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF8190(uint64_t a1)
{
  v2 = sub_1A5D157E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF81CC(uint64_t a1)
{
  v2 = sub_1A5D157E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF8208(uint64_t a1)
{
  v2 = sub_1A5D15690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF8244(uint64_t a1)
{
  v2 = sub_1A5D15690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF8280(uint64_t a1)
{
  v2 = sub_1A5D156E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF82BC(uint64_t a1)
{
  v2 = sub_1A5D156E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF82F8(uint64_t a1)
{
  v2 = sub_1A5D15738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF8334(uint64_t a1)
{
  v2 = sub_1A5D15738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CF8370(uint64_t a1)
{
  v2 = sub_1A5D1578C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CF83AC(uint64_t a1)
{
  v2 = sub_1A5D1578C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.Category7f.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5498);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54A0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54A8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54B0);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54B8);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54C0);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1A5D1563C();
  sub_1A5FD4CDC();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1A5D1578C();
      v31 = v45;
      sub_1A5FD49EC();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1A5D157E0();
      v31 = v45;
      sub_1A5FD49EC();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1A5D15738();
      v22 = v33;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1A5D156E4();
      v22 = v36;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1A5D15690();
      v22 = v39;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

uint64_t FaceObservation.Attributes.Category7f.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54C8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54D0);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54D8);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54E0);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54E8);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54F0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1A5D1563C();
  v16 = v46;
  sub_1A5FD4CCC();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = sub_1A5FD49BC();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = sub_1A5FD471C();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v26 = &type metadata for FaceObservation.Attributes.Category7f;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          sub_1A5D1578C();
          sub_1A5FD48CC();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          sub_1A5D157E0();
          sub_1A5FD48CC();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          sub_1A5D15738();
          sub_1A5FD48CC();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            sub_1A5D156E4();
            v29 = v42;
            sub_1A5FD48CC();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            sub_1A5D15690();
            sub_1A5FD48CC();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t FaceObservation.Attributes.age.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.eyes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.smiling.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.glasses.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.hairColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.makeupEyes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.makeupLips.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.faceMask.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.pose.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.category7e.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.category4U.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.category7C.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.category2r.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = *(v1 + 192);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.category1u.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *a1 = *(v1 + 208);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.category3i.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *a1 = *(v1 + 224);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.category7f.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  *a1 = *(v1 + 240);
  *(a1 + 8) = v2;
}

uint64_t FaceObservation.Attributes.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000010, 0x80000001A605A1E0);
  v0 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v0);

  MEMORY[0x1AC554600](0x203A73657965202CLL, 0xE800000000000000);
  v1 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0x6E696C696D73202CLL, 0xEB00000000203A67);
  v2 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0x657373616C67202CLL, 0xEB00000000203A73);
  v3 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](0x6F4372696168202CLL, 0xED0000203A726F6CLL);
  v4 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](0x7075656B616D202CLL, 0xEE00203A73657945);
  v5 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](0x7075656B616D202CLL, 0xEE00203A7370694CLL);
  v6 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v6);

  MEMORY[0x1AC554600](0x614D65636166202CLL, 0xEC000000203A6B73);
  v7 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v7);

  MEMORY[0x1AC554600](0x203A65736F70202CLL, 0xE800000000000000);
  v8 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v8);

  MEMORY[0x1AC554600](0x6F6765746163202CLL, 0xEE00203A65377972);
  v9 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v9);

  MEMORY[0x1AC554600](0x6F6765746163202CLL, 0xEE00203A55347972);
  v10 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v10);

  MEMORY[0x1AC554600](0x6F6765746163202CLL, 0xEE00203A43377972);
  v11 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v11);

  MEMORY[0x1AC554600](0x6F6765746163202CLL, 0xEE00203A72327972);
  v12 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v12);

  MEMORY[0x1AC554600](0x6F6765746163202CLL, 0xEE00203A75317972);
  v13 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v13);

  MEMORY[0x1AC554600](0x6F6765746163202CLL, 0xEE00203A69337972);
  v14 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v14);

  MEMORY[0x1AC554600](0x6F6765746163202CLL, 0xEE00203A66377972);
  v15 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v15);

  MEMORY[0x1AC554600](0xD000000000000020, 0x80000001A605A200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758);
  v16 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v16);

  return 0;
}

void sub_1A5CF97C0(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1A5CFAA5C([a1 ageCategory], sub_1A5CE8794, &qword_1EB1F2CA8, &type metadata for FaceObservation.Attributes.Age, v22);
  v6 = v23;
  *a3 = v22[0];
  *(a3 + 8) = v6;
  sub_1A5CF9C88([a1 eyesCategory], v22);
  v7 = v23;
  *(a3 + 16) = v22[0];
  *(a3 + 24) = v7;
  sub_1A5CFA100([a1 smilingCategory], v22);
  v8 = v23;
  *(a3 + 32) = v22[0];
  *(a3 + 40) = v8;
  sub_1A5CFA578([a1 glassesCategory], v22);
  v9 = v23;
  *(a3 + 48) = v22[0];
  *(a3 + 56) = v9;
  sub_1A5CFAA5C([a1 hairColorCategory], sub_1A5CEA504, &qword_1EB1F2C68, &type metadata for FaceObservation.Attributes.HairColor, v22);
  v10 = v23;
  *(a3 + 64) = v22[0];
  *(a3 + 72) = v10;
  sub_1A5CFAD7C([a1 makeupEyesCategory], v22);
  v11 = v23;
  *(a3 + 80) = v22[0];
  *(a3 + 88) = v11;
  sub_1A5CFB260([a1 makeupLipsCategory], v22);
  v12 = v23;
  *(a3 + 96) = v22[0];
  *(a3 + 104) = v12;
  sub_1A5CFB6D8([a1 facemaskCategory], v22);
  v13 = v23;
  *(a3 + 112) = v22[0];
  *(a3 + 120) = v13;
  sub_1A5CFAA5C([a1 VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk], sub_1A5CEF358, &qword_1EB1F2C28, &type metadata for FaceObservation.Attributes.Pose, v22);
  v14 = v23;
  *(a3 + 128) = v22[0];
  *(a3 + 136) = v14;
  sub_1A5CFBB50([a1 VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE], v22);
  v15 = v23;
  *(a3 + 144) = v22[0];
  *(a3 + 152) = v15;
  sub_1A5CFAA5C([a1 VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1], sub_1A5CF11E8, &qword_1EB1F2C08, &type metadata for FaceObservation.Attributes.Category4U, v22);
  v16 = v23;
  *(a3 + 160) = v22[0];
  *(a3 + 168) = v16;
  sub_1A5CFAA5C([a1 VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk], sub_1A5CF26B8, &qword_1EB1F2BF8, &type metadata for FaceObservation.Attributes.Category7C, v22);
  v17 = v23;
  *(a3 + 176) = v22[0];
  *(a3 + 184) = v17;
  sub_1A5CFAA5C([a1 VN2riiZbQrloRhCzYW56f0rk4N3ROe151S], sub_1A5CF3EC0, &qword_1EB1F2BE8, &type metadata for FaceObservation.Attributes.Category2r, v22);
  v18 = v23;
  *(a3 + 192) = v22[0];
  *(a3 + 200) = v18;
  sub_1A5CFAA5C([a1 VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB], sub_1A5CF56C8, &qword_1EB1F2BD8, &type metadata for FaceObservation.Attributes.Category1u, v22);
  v19 = v23;
  *(a3 + 208) = v22[0];
  *(a3 + 216) = v19;
  sub_1A5CFAA5C([a1 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq], sub_1A5CF6988, &qword_1EB1F2BC8, &type metadata for FaceObservation.Attributes.Category3i, v22);
  v20 = v23;
  *(a3 + 224) = v22[0];
  *(a3 + 232) = v20;
  sub_1A5CFAA5C([a1 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP], sub_1A5CF7E58, &qword_1EB1F2BB8, &type metadata for FaceObservation.Attributes.Category7f, v22);

  v21 = v23;
  *(a3 + 240) = v22[0];
  *(a3 + 248) = v21;
  *(a3 + 256) = v5;
}

uint64_t sub_1A5CF9C88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 label];
  v5 = &selRef_gazeMask;
  v6 = [v4 identifier];

  v7 = sub_1A5FD3D5C();
  v9 = v8;

  v10 = VNFaceAttributeEyesClosed;
  sub_1A5CF0684(v7, v9, v49);
  v11 = sub_1A5D15DEC(MEMORY[0x1E69E7CC0], &qword_1EB1F2C98);
  v45 = a1;
  v12 = [a1 allLabelsWithConfidences];
  sub_1A5B16F58(0, &qword_1EB1EF088);
  v13 = sub_1A5FD3F4C();

  if (v13 >> 62)
  {
    goto LABEL_38;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_39:

    *a2 = v49[0];
    *(a2 + 8) = v11;
    return result;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v48 = v13 & 0xC000000000000001;
    v47 = v13;
    while (1)
    {
      if (v48)
      {
        v16 = MEMORY[0x1AC554EE0](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 v5[134]];
      isUniquelyReferenced_nonNull_native = sub_1A5FD3D5C();
      v10 = v19;

      v20 = sub_1A5FD3D5C();
      v22 = v21;
      v23 = v20 == isUniquelyReferenced_nonNull_native && v21 == v10;
      v24 = !v23;
      if (v23)
      {
        goto LABEL_22;
      }

      v25 = v14;
      v26 = v5;
      v27 = sub_1A5FD4B0C();

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v29 = sub_1A5FD3D5C();
        v22 = v30;
        if (v29 == isUniquelyReferenced_nonNull_native && v30 == v10)
        {
          v5 = v26;
          v14 = v25;
          v13 = v47;
LABEL_22:

          v10 = v22;
          v28 = v24;
          goto LABEL_26;
        }

        v31 = sub_1A5FD4B0C();

        if ((v31 & 1) == 0)
        {
          goto LABEL_42;
        }

        v28 = 1;
      }

      v5 = v26;
      v14 = v25;
      v13 = v47;
LABEL_26:

      [v17 confidence];
      v33 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_1A5D0E19C(v28);
      v36 = v11[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v14 = sub_1A5FD484C();
        if (!v14)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      }

      v10 = v35;
      if (v11[3] < v39)
      {
        sub_1A5D0E39C(v39, isUniquelyReferenced_nonNull_native, &qword_1EB1F2C98);
        v34 = sub_1A5D0E19C(v28);
        if ((v10 & 1) != (v40 & 1))
        {
          goto LABEL_41;
        }

LABEL_31:
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_31;
      }

      v43 = v34;
      sub_1A5D0ECE0(&qword_1EB1F2C98);
      v34 = v43;
      if (v10)
      {
LABEL_5:
        *(v11[7] + 4 * v34) = v33;

        goto LABEL_6;
      }

LABEL_32:
      v11[(v34 >> 6) + 8] |= 1 << v34;
      *(v11[6] + v34) = v28;
      *(v11[7] + 4 * v34) = v33;

      v41 = v11[2];
      v38 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v38)
      {
        goto LABEL_37;
      }

      v11[2] = v42;
LABEL_6:
      if (v14 == ++v15)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
LABEL_41:
  sub_1A5FD4B8C();
  __break(1u);
LABEL_42:
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](isUniquelyReferenced_nonNull_native, v10);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CFA100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 label];
  v5 = &selRef_gazeMask;
  v6 = [v4 identifier];

  v7 = sub_1A5FD3D5C();
  v9 = v8;

  v10 = VNFaceAttributeNotSmiling;
  sub_1A5CF0684(v7, v9, v49);
  v11 = sub_1A5D15DEC(MEMORY[0x1E69E7CC0], &qword_1EB1F2C88);
  v45 = a1;
  v12 = [a1 allLabelsWithConfidences];
  sub_1A5B16F58(0, &qword_1EB1EF088);
  v13 = sub_1A5FD3F4C();

  if (v13 >> 62)
  {
    goto LABEL_38;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_39:

    *a2 = v49[0];
    *(a2 + 8) = v11;
    return result;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v48 = v13 & 0xC000000000000001;
    v47 = v13;
    while (1)
    {
      if (v48)
      {
        v16 = MEMORY[0x1AC554EE0](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 v5[134]];
      isUniquelyReferenced_nonNull_native = sub_1A5FD3D5C();
      v10 = v19;

      v20 = sub_1A5FD3D5C();
      v22 = v21;
      v23 = v20 == isUniquelyReferenced_nonNull_native && v21 == v10;
      v24 = !v23;
      if (v23)
      {
        goto LABEL_22;
      }

      v25 = v14;
      v26 = v5;
      v27 = sub_1A5FD4B0C();

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v29 = sub_1A5FD3D5C();
        v22 = v30;
        if (v29 == isUniquelyReferenced_nonNull_native && v30 == v10)
        {
          v5 = v26;
          v14 = v25;
          v13 = v47;
LABEL_22:

          v10 = v22;
          v28 = v24;
          goto LABEL_26;
        }

        v31 = sub_1A5FD4B0C();

        if ((v31 & 1) == 0)
        {
          goto LABEL_42;
        }

        v28 = 1;
      }

      v5 = v26;
      v14 = v25;
      v13 = v47;
LABEL_26:

      [v17 confidence];
      v33 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_1A5D0E19C(v28);
      v36 = v11[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v14 = sub_1A5FD484C();
        if (!v14)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      }

      v10 = v35;
      if (v11[3] < v39)
      {
        sub_1A5D0E39C(v39, isUniquelyReferenced_nonNull_native, &qword_1EB1F2C88);
        v34 = sub_1A5D0E19C(v28);
        if ((v10 & 1) != (v40 & 1))
        {
          goto LABEL_41;
        }

LABEL_31:
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_31;
      }

      v43 = v34;
      sub_1A5D0ECE0(&qword_1EB1F2C88);
      v34 = v43;
      if (v10)
      {
LABEL_5:
        *(v11[7] + 4 * v34) = v33;

        goto LABEL_6;
      }

LABEL_32:
      v11[(v34 >> 6) + 8] |= 1 << v34;
      *(v11[6] + v34) = v28;
      *(v11[7] + 4 * v34) = v33;

      v41 = v11[2];
      v38 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v38)
      {
        goto LABEL_37;
      }

      v11[2] = v42;
LABEL_6:
      if (v14 == ++v15)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
LABEL_41:
  sub_1A5FD4B8C();
  __break(1u);
LABEL_42:
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](isUniquelyReferenced_nonNull_native, v10);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CFA578@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 label];
  v6 = [v5 identifier];

  v7 = sub_1A5FD3D5C();
  v9 = v8;

  v10 = VNFaceAttributeGlassesPrescription;
  sub_1A5CED10C(v7, v9, v47);
  v11 = sub_1A5D15EC4(MEMORY[0x1E69E7CC0], &qword_1EB1F2C78);
  v44 = a1;
  v12 = [a1 allLabelsWithConfidences];
  sub_1A5B16F58(0, &qword_1EB1EF088);
  v13 = sub_1A5FD3F4C();

  if (v13 >> 62)
  {
    goto LABEL_42;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_43:

    *a2 = v47[0];
    *(a2 + 8) = v11;
    return result;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v10 = *v10;
    v46 = v14;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1AC554EE0](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 identifier];
      v3 = sub_1A5FD3D5C();
      isUniquelyReferenced_nonNull_native = v19;

      if (sub_1A5FD3D5C() == v3 && v20 == isUniquelyReferenced_nonNull_native)
      {
        v24 = 0;
      }

      else
      {
        v22 = v10;
        v23 = sub_1A5FD4B0C();

        if (v23)
        {
          v24 = 0;
LABEL_16:
          v10 = v22;
          v14 = v46;
          goto LABEL_23;
        }

        if (sub_1A5FD3D5C() == v3 && v25 == isUniquelyReferenced_nonNull_native)
        {
          v24 = 1;
        }

        else
        {
          v38 = sub_1A5FD4B0C();

          if (v38)
          {
            v24 = 1;
            goto LABEL_16;
          }

          if (sub_1A5FD3D5C() != v3 || v39 != isUniquelyReferenced_nonNull_native)
          {
            v40 = sub_1A5FD4B0C();

            if ((v40 & 1) == 0)
            {
              goto LABEL_46;
            }

            v24 = 2;
            goto LABEL_16;
          }

          v24 = 2;
        }

        v10 = v22;
        v14 = v46;
      }

LABEL_23:

      [v17 confidence];
      v27 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = sub_1A5D0E134(v24);
      v30 = v11[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v14 = sub_1A5FD484C();
        if (!v14)
        {
          goto LABEL_43;
        }

        goto LABEL_3;
      }

      v34 = v29;
      if (v11[3] < v33)
      {
        sub_1A5D0E39C(v33, isUniquelyReferenced_nonNull_native, &qword_1EB1F2C78);
        v28 = sub_1A5D0E134(v24);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_45;
        }

LABEL_28:
        if (v34)
        {
          goto LABEL_5;
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v41 = v10;
      v42 = v28;
      sub_1A5D0ECE0(&qword_1EB1F2C78);
      v28 = v42;
      v10 = v41;
      v14 = v46;
      if (v34)
      {
LABEL_5:
        *(v11[7] + 4 * v28) = v27;

        goto LABEL_6;
      }

LABEL_29:
      v11[(v28 >> 6) + 8] |= 1 << v28;
      *(v11[6] + v28) = v24;
      *(v11[7] + 4 * v28) = v27;

      v36 = v11[2];
      v32 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v32)
      {
        goto LABEL_41;
      }

      v11[2] = v37;
LABEL_6:
      if (v14 == ++v15)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_45:
  sub_1A5FD4B8C();
  __break(1u);
LABEL_46:
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](v3, isUniquelyReferenced_nonNull_native);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CFAA5C@<X0>(void *a1@<X0>, void (*a2)(void *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = [a1 label];
  v10 = [v9 identifier];

  v11 = sub_1A5FD3D5C();
  v13 = v12;

  v43 = a2;
  a2((v44 + 1), v11, v13);
  v14 = sub_1A5D15EC4(MEMORY[0x1E69E7CC0], a3);
  v41 = a1;
  v15 = [a1 allLabelsWithConfidences];
  sub_1A5B16F58(0, &qword_1EB1EF088);
  v16 = sub_1A5FD3F4C();

  if (v16 >> 62)
  {
    goto LABEL_23;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_24:

    *a5 = BYTE1(v44[0]);
    *(a5 + 8) = v14;
    return result;
  }

LABEL_3:
  if (v17 >= 1)
  {
    v40 = a4;
    v18 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1AC554EE0](v18, v16);
      }

      else
      {
        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 identifier];
      v22 = sub_1A5FD3D5C();
      v24 = v23;

      v43(v44, v22, v24);
      [v20 confidence];
      v26 = v25;
      v27 = v44[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a4 = sub_1A5D0E134(v27);
      v30 = v14[2];
      v31 = (v29 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v17 = sub_1A5FD484C();
        if (!v17)
        {
          goto LABEL_24;
        }

        goto LABEL_3;
      }

      v33 = v29;
      if (v14[3] >= v32)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v29)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1A5D0ECE0(a3);
          if (v33)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1A5D0E39C(v32, isUniquelyReferenced_nonNull_native, a3);
        v34 = sub_1A5D0E134(v27);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33)
        {
LABEL_5:
          *(v14[7] + 4 * a4) = v26;

          goto LABEL_6;
        }
      }

      v14[(a4 >> 6) + 8] |= 1 << a4;
      *(v14[6] + a4) = v27;
      *(v14[7] + 4 * a4) = v26;

      v36 = v14[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_22;
      }

      v14[2] = v38;
LABEL_6:
      if (v17 == ++v18)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
LABEL_26:
  result = sub_1A5FD4B8C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CFAD7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 label];
  v6 = [v5 identifier];

  v7 = sub_1A5FD3D5C();
  v9 = v8;

  v10 = VNFaceAttributeMakeupEyesUnsure;
  sub_1A5CED10C(v7, v9, v47);
  v11 = sub_1A5D15EC4(MEMORY[0x1E69E7CC0], &qword_1EB1F2C58);
  v44 = a1;
  v12 = [a1 allLabelsWithConfidences];
  sub_1A5B16F58(0, &qword_1EB1EF088);
  v13 = sub_1A5FD3F4C();

  if (v13 >> 62)
  {
    goto LABEL_42;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_43:

    *a2 = v47[0];
    *(a2 + 8) = v11;
    return result;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v10 = *v10;
    v46 = v14;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1AC554EE0](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 identifier];
      v3 = sub_1A5FD3D5C();
      isUniquelyReferenced_nonNull_native = v19;

      if (sub_1A5FD3D5C() == v3 && v20 == isUniquelyReferenced_nonNull_native)
      {
        v24 = 0;
      }

      else
      {
        v22 = v10;
        v23 = sub_1A5FD4B0C();

        if (v23)
        {
          v24 = 0;
LABEL_16:
          v10 = v22;
          v14 = v46;
          goto LABEL_23;
        }

        if (sub_1A5FD3D5C() == v3 && v25 == isUniquelyReferenced_nonNull_native)
        {
          v24 = 1;
        }

        else
        {
          v38 = sub_1A5FD4B0C();

          if (v38)
          {
            v24 = 1;
            goto LABEL_16;
          }

          if (sub_1A5FD3D5C() != v3 || v39 != isUniquelyReferenced_nonNull_native)
          {
            v40 = sub_1A5FD4B0C();

            if ((v40 & 1) == 0)
            {
              goto LABEL_46;
            }

            v24 = 2;
            goto LABEL_16;
          }

          v24 = 2;
        }

        v10 = v22;
        v14 = v46;
      }

LABEL_23:

      [v17 confidence];
      v27 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = sub_1A5D0E134(v24);
      v30 = v11[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v14 = sub_1A5FD484C();
        if (!v14)
        {
          goto LABEL_43;
        }

        goto LABEL_3;
      }

      v34 = v29;
      if (v11[3] < v33)
      {
        sub_1A5D0E39C(v33, isUniquelyReferenced_nonNull_native, &qword_1EB1F2C58);
        v28 = sub_1A5D0E134(v24);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_45;
        }

LABEL_28:
        if (v34)
        {
          goto LABEL_5;
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v41 = v10;
      v42 = v28;
      sub_1A5D0ECE0(&qword_1EB1F2C58);
      v28 = v42;
      v10 = v41;
      v14 = v46;
      if (v34)
      {
LABEL_5:
        *(v11[7] + 4 * v28) = v27;

        goto LABEL_6;
      }

LABEL_29:
      v11[(v28 >> 6) + 8] |= 1 << v28;
      *(v11[6] + v28) = v24;
      *(v11[7] + 4 * v28) = v27;

      v36 = v11[2];
      v32 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v32)
      {
        goto LABEL_41;
      }

      v11[2] = v37;
LABEL_6:
      if (v14 == ++v15)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_45:
  sub_1A5FD4B8C();
  __break(1u);
LABEL_46:
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](v3, isUniquelyReferenced_nonNull_native);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CFB260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 label];
  v5 = &selRef_gazeMask;
  v6 = [v4 identifier];

  v7 = sub_1A5FD3D5C();
  v9 = v8;

  v10 = VNFaceAttributeMakeupLipsNone;
  sub_1A5CF0684(v7, v9, v49);
  v11 = sub_1A5D15DEC(MEMORY[0x1E69E7CC0], &qword_1EB1F2C48);
  v45 = a1;
  v12 = [a1 allLabelsWithConfidences];
  sub_1A5B16F58(0, &qword_1EB1EF088);
  v13 = sub_1A5FD3F4C();

  if (v13 >> 62)
  {
    goto LABEL_38;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_39:

    *a2 = v49[0];
    *(a2 + 8) = v11;
    return result;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v48 = v13 & 0xC000000000000001;
    v47 = v13;
    while (1)
    {
      if (v48)
      {
        v16 = MEMORY[0x1AC554EE0](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 v5[134]];
      isUniquelyReferenced_nonNull_native = sub_1A5FD3D5C();
      v10 = v19;

      v20 = sub_1A5FD3D5C();
      v22 = v21;
      v23 = v20 == isUniquelyReferenced_nonNull_native && v21 == v10;
      v24 = !v23;
      if (v23)
      {
        goto LABEL_22;
      }

      v25 = v14;
      v26 = v5;
      v27 = sub_1A5FD4B0C();

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v29 = sub_1A5FD3D5C();
        v22 = v30;
        if (v29 == isUniquelyReferenced_nonNull_native && v30 == v10)
        {
          v5 = v26;
          v14 = v25;
          v13 = v47;
LABEL_22:

          v10 = v22;
          v28 = v24;
          goto LABEL_26;
        }

        v31 = sub_1A5FD4B0C();

        if ((v31 & 1) == 0)
        {
          goto LABEL_42;
        }

        v28 = 1;
      }

      v5 = v26;
      v14 = v25;
      v13 = v47;
LABEL_26:

      [v17 confidence];
      v33 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_1A5D0E19C(v28);
      v36 = v11[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v14 = sub_1A5FD484C();
        if (!v14)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      }

      v10 = v35;
      if (v11[3] < v39)
      {
        sub_1A5D0E39C(v39, isUniquelyReferenced_nonNull_native, &qword_1EB1F2C48);
        v34 = sub_1A5D0E19C(v28);
        if ((v10 & 1) != (v40 & 1))
        {
          goto LABEL_41;
        }

LABEL_31:
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_31;
      }

      v43 = v34;
      sub_1A5D0ECE0(&qword_1EB1F2C48);
      v34 = v43;
      if (v10)
      {
LABEL_5:
        *(v11[7] + 4 * v34) = v33;

        goto LABEL_6;
      }

LABEL_32:
      v11[(v34 >> 6) + 8] |= 1 << v34;
      *(v11[6] + v34) = v28;
      *(v11[7] + 4 * v34) = v33;

      v41 = v11[2];
      v38 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v38)
      {
        goto LABEL_37;
      }

      v11[2] = v42;
LABEL_6:
      if (v14 == ++v15)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
LABEL_41:
  sub_1A5FD4B8C();
  __break(1u);
LABEL_42:
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](isUniquelyReferenced_nonNull_native, v10);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CFB6D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 label];
  v5 = &selRef_gazeMask;
  v6 = [v4 identifier];

  v7 = sub_1A5FD3D5C();
  v9 = v8;

  v10 = VNFaceAttributeFacemask;
  sub_1A5CF0684(v7, v9, v49);
  v11 = sub_1A5D15DEC(MEMORY[0x1E69E7CC0], &qword_1EB1F2C38);
  v45 = a1;
  v12 = [a1 allLabelsWithConfidences];
  sub_1A5B16F58(0, &qword_1EB1EF088);
  v13 = sub_1A5FD3F4C();

  if (v13 >> 62)
  {
    goto LABEL_38;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_39:

    *a2 = v49[0];
    *(a2 + 8) = v11;
    return result;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v48 = v13 & 0xC000000000000001;
    v47 = v13;
    while (1)
    {
      if (v48)
      {
        v16 = MEMORY[0x1AC554EE0](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 v5[134]];
      isUniquelyReferenced_nonNull_native = sub_1A5FD3D5C();
      v10 = v19;

      v20 = sub_1A5FD3D5C();
      v22 = v21;
      v23 = v20 == isUniquelyReferenced_nonNull_native && v21 == v10;
      v24 = !v23;
      if (v23)
      {
        goto LABEL_22;
      }

      v25 = v14;
      v26 = v5;
      v27 = sub_1A5FD4B0C();

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v29 = sub_1A5FD3D5C();
        v22 = v30;
        if (v29 == isUniquelyReferenced_nonNull_native && v30 == v10)
        {
          v5 = v26;
          v14 = v25;
          v13 = v47;
LABEL_22:

          v10 = v22;
          v28 = v24;
          goto LABEL_26;
        }

        v31 = sub_1A5FD4B0C();

        if ((v31 & 1) == 0)
        {
          goto LABEL_42;
        }

        v28 = 1;
      }

      v5 = v26;
      v14 = v25;
      v13 = v47;
LABEL_26:

      [v17 confidence];
      v33 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_1A5D0E19C(v28);
      v36 = v11[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v14 = sub_1A5FD484C();
        if (!v14)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      }

      v10 = v35;
      if (v11[3] < v39)
      {
        sub_1A5D0E39C(v39, isUniquelyReferenced_nonNull_native, &qword_1EB1F2C38);
        v34 = sub_1A5D0E19C(v28);
        if ((v10 & 1) != (v40 & 1))
        {
          goto LABEL_41;
        }

LABEL_31:
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_31;
      }

      v43 = v34;
      sub_1A5D0ECE0(&qword_1EB1F2C38);
      v34 = v43;
      if (v10)
      {
LABEL_5:
        *(v11[7] + 4 * v34) = v33;

        goto LABEL_6;
      }

LABEL_32:
      v11[(v34 >> 6) + 8] |= 1 << v34;
      *(v11[6] + v34) = v28;
      *(v11[7] + 4 * v34) = v33;

      v41 = v11[2];
      v38 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v38)
      {
        goto LABEL_37;
      }

      v11[2] = v42;
LABEL_6:
      if (v14 == ++v15)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
LABEL_41:
  sub_1A5FD4B8C();
  __break(1u);
LABEL_42:
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](isUniquelyReferenced_nonNull_native, v10);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CFBB50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 label];
  v5 = &selRef_gazeMask;
  v6 = [v4 identifier];

  v7 = sub_1A5FD3D5C();
  v9 = v8;

  v10 = VN1yPD9G185LIMKFd9RgandG6vUu4B3DZk;
  sub_1A5CF0684(v7, v9, v49);
  v11 = sub_1A5D15DEC(MEMORY[0x1E69E7CC0], &qword_1EB1F2C18);
  v45 = a1;
  v12 = [a1 allLabelsWithConfidences];
  sub_1A5B16F58(0, &qword_1EB1EF088);
  v13 = sub_1A5FD3F4C();

  if (v13 >> 62)
  {
    goto LABEL_38;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_39:

    *a2 = v49[0];
    *(a2 + 8) = v11;
    return result;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v48 = v13 & 0xC000000000000001;
    v47 = v13;
    while (1)
    {
      if (v48)
      {
        v16 = MEMORY[0x1AC554EE0](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 v5[134]];
      isUniquelyReferenced_nonNull_native = sub_1A5FD3D5C();
      v10 = v19;

      v20 = sub_1A5FD3D5C();
      v22 = v21;
      v23 = v20 == isUniquelyReferenced_nonNull_native && v21 == v10;
      v24 = !v23;
      if (v23)
      {
        goto LABEL_22;
      }

      v25 = v14;
      v26 = v5;
      v27 = sub_1A5FD4B0C();

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v29 = sub_1A5FD3D5C();
        v22 = v30;
        if (v29 == isUniquelyReferenced_nonNull_native && v30 == v10)
        {
          v5 = v26;
          v14 = v25;
          v13 = v47;
LABEL_22:

          v10 = v22;
          v28 = v24;
          goto LABEL_26;
        }

        v31 = sub_1A5FD4B0C();

        if ((v31 & 1) == 0)
        {
          goto LABEL_42;
        }

        v28 = 1;
      }

      v5 = v26;
      v14 = v25;
      v13 = v47;
LABEL_26:

      [v17 confidence];
      v33 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_1A5D0E19C(v28);
      v36 = v11[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v14 = sub_1A5FD484C();
        if (!v14)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      }

      v10 = v35;
      if (v11[3] < v39)
      {
        sub_1A5D0E39C(v39, isUniquelyReferenced_nonNull_native, &qword_1EB1F2C18);
        v34 = sub_1A5D0E19C(v28);
        if ((v10 & 1) != (v40 & 1))
        {
          goto LABEL_41;
        }

LABEL_31:
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_31;
      }

      v43 = v34;
      sub_1A5D0ECE0(&qword_1EB1F2C18);
      v34 = v43;
      if (v10)
      {
LABEL_5:
        *(v11[7] + 4 * v34) = v33;

        goto LABEL_6;
      }

LABEL_32:
      v11[(v34 >> 6) + 8] |= 1 << v34;
      *(v11[6] + v34) = v28;
      *(v11[7] + 4 * v34) = v33;

      v41 = v11[2];
      v38 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v38)
      {
        goto LABEL_37;
      }

      v11[2] = v42;
LABEL_6:
      if (v14 == ++v15)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
LABEL_41:
  sub_1A5FD4B8C();
  __break(1u);
LABEL_42:
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](isUniquelyReferenced_nonNull_native, v10);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CFBFC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _WORD *a18)
{
  *a9 = *result;
  *(a9 + 8) = *(result + 8);
  *(a9 + 16) = *a2;
  *(a9 + 24) = *(a2 + 8);
  *(a9 + 32) = *a3;
  *(a9 + 40) = *(a3 + 8);
  *(a9 + 48) = *a4;
  *(a9 + 56) = *(a4 + 8);
  *(a9 + 64) = *a5;
  *(a9 + 72) = *(a5 + 8);
  *(a9 + 80) = *a6;
  *(a9 + 88) = *(a6 + 8);
  *(a9 + 96) = *a7;
  *(a9 + 104) = *(a7 + 8);
  *(a9 + 112) = *a8;
  *(a9 + 120) = *(a8 + 8);
  *(a9 + 128) = *a10;
  *(a9 + 136) = *(a10 + 8);
  *(a9 + 144) = *a11;
  *(a9 + 152) = *(a11 + 8);
  *(a9 + 160) = *a12;
  *(a9 + 168) = *(a12 + 8);
  *(a9 + 176) = *a13;
  *(a9 + 184) = *(a13 + 8);
  *(a9 + 192) = *a14;
  *(a9 + 200) = *(a14 + 8);
  *(a9 + 208) = *a15;
  *(a9 + 216) = *(a15 + 8);
  *(a9 + 224) = *a16;
  *(a9 + 232) = *(a16 + 8);
  *(a9 + 240) = *a17;
  *(a9 + 248) = *(a17 + 8);
  *(a9 + 256) = *a18;
  return result;
}

unint64_t sub_1A5CFC0FC(char a1)
{
  result = 6645601;
  switch(a1)
  {
    case 1:
      result = 1936030053;
      break;
    case 2:
      result = 0x676E696C696D73;
      break;
    case 3:
      result = 0x73657373616C67;
      break;
    case 4:
      result = 0x6F6C6F4372696168;
      break;
    case 5:
      result = 0x79457075656B616DLL;
      break;
    case 6:
      result = 0x694C7075656B616DLL;
      break;
    case 7:
      result = 0x6B73614D65636166;
      break;
    case 8:
      result = 1702063984;
      break;
    case 9:
      result = 0x79726F6765746163;
      break;
    case 10:
    case 11:
      result = 0x79726F6765746163;
      break;
    case 12:
      result = 0x79726F6765746163;
      break;
    case 13:
      result = 0x79726F6765746163;
      break;
    case 14:
      result = 0x79726F6765746163;
      break;
    case 15:
      result = 0x79726F6765746163;
      break;
    case 16:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A5CFC2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D18214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CFC300(uint64_t a1)
{
  v2 = sub_1A5D16280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CFC33C(uint64_t a1)
{
  v2 = sub_1A5D16280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Attributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F54F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v49 = v1[16];
  v45 = *(v1 + 3);
  v44 = v1[32];
  v9 = *(v1 + 5);
  v41 = v1[48];
  v42 = *(v1 + 7);
  v43 = v9;
  v39 = v1[64];
  v40 = *(v1 + 9);
  v37 = v1[80];
  v38 = *(v1 + 11);
  v35 = v1[96];
  v36 = *(v1 + 13);
  v33 = v1[112];
  v34 = *(v1 + 15);
  v31 = v1[128];
  v32 = *(v1 + 17);
  v29 = v1[144];
  v30 = *(v1 + 19);
  v27 = v1[160];
  v28 = *(v1 + 21);
  v25 = v1[176];
  v26 = *(v1 + 23);
  v23 = v1[192];
  v24 = *(v1 + 25);
  v21 = v1[208];
  v22 = *(v1 + 27);
  v19 = v1[224];
  v20 = *(v1 + 29);
  v17 = v1[240];
  v18 = *(v1 + 31);
  v16 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D16280();

  v10 = v3;
  sub_1A5FD4CDC();
  LOBYTE(v47) = v7;
  v48 = v8;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5500);
  sub_1A5C1EC64(&qword_1EB1F5508, &qword_1EB1F5500);
  v11 = v46;
  sub_1A5FD4A5C();
  if (v11)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v13 = v44;
    v14 = v43;
    v46 = v4;

    LOBYTE(v47) = v49;
    v48 = v45;
    v50 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5510);
    sub_1A5C1EC64(&qword_1EB1F5518, &qword_1EB1F5510);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v13;
    v48 = v14;
    v50 = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5520);
    sub_1A5C1EC64(&qword_1EB1F5528, &qword_1EB1F5520);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v41;
    v48 = v42;
    v50 = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5530);
    sub_1A5C1EC64(&qword_1EB1F5538, &qword_1EB1F5530);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v39;
    v48 = v40;
    v50 = 4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5540);
    sub_1A5C1EC64(&qword_1EB1F5548, &qword_1EB1F5540);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v37;
    v48 = v38;
    v50 = 5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5550);
    sub_1A5C1EC64(&qword_1EB1F5558, &qword_1EB1F5550);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v35;
    v48 = v36;
    v50 = 6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5560);
    sub_1A5C1EC64(&qword_1EB1F5568, &qword_1EB1F5560);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v33;
    v48 = v34;
    v50 = 7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5570);
    sub_1A5C1EC64(&qword_1EB1F5578, &qword_1EB1F5570);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v31;
    v48 = v32;
    v50 = 8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5580);
    sub_1A5C1EC64(&qword_1EB1F5588, &qword_1EB1F5580);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v29;
    v48 = v30;
    v50 = 9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5590);
    sub_1A5C1EC64(&qword_1EB1F5598, &qword_1EB1F5590);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v27;
    v48 = v28;
    v50 = 10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55A0);
    sub_1A5C1EC64(&qword_1EB1F55A8, &qword_1EB1F55A0);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v25;
    v48 = v26;
    v50 = 11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55B0);
    sub_1A5C1EC64(&qword_1EB1F55B8, &qword_1EB1F55B0);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v23;
    v48 = v24;
    v50 = 12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55C0);
    sub_1A5C1EC64(&qword_1EB1F55C8, &qword_1EB1F55C0);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v21;
    v48 = v22;
    v50 = 13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55D0);
    sub_1A5C1EC64(&qword_1EB1F55D8, &qword_1EB1F55D0);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v19;
    v48 = v20;
    v50 = 14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55E0);
    sub_1A5C1EC64(&qword_1EB1F55E8, &qword_1EB1F55E0);
    sub_1A5FD4A5C();

    LOBYTE(v47) = v17;
    v48 = v18;
    v50 = 15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55F0);
    sub_1A5C1EC64(&qword_1EB1F55F8, &qword_1EB1F55F0);
    sub_1A5FD4A5C();

    v47 = v16;
    v50 = 16;
    sub_1A5B0A760();
    sub_1A5FD4A0C();
    return (*(v46 + 8))(v6, v10);
  }
}

uint64_t FaceObservation.Attributes.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  v4 = v1[16];
  v5 = *(v1 + 3);
  v6 = v1[32];
  v7 = *(v1 + 5);
  v8 = v1[48];
  v9 = *(v1 + 7);
  v10 = v1[64];
  v78 = *(v1 + 9);
  v79 = v1[80];
  v80 = *(v1 + 11);
  v81 = v1[96];
  v82 = *(v1 + 13);
  v83 = v1[112];
  v84 = *(v1 + 15);
  v85 = v1[128];
  v86 = *(v1 + 17);
  v87 = v1[144];
  v88 = *(v1 + 19);
  v89 = v1[160];
  v90 = *(v1 + 21);
  v91 = v1[176];
  v92 = *(v1 + 23);
  v93 = v1[192];
  v94 = *(v1 + 25);
  v95 = v1[208];
  v96 = *(v1 + 27);
  v97 = v1[224];
  v98 = *(v1 + 29);
  v99 = v1[240];
  v100 = *(v1 + 31);
  v101 = *(v1 + 128);
  MEMORY[0x1AC555420](*v1);
  sub_1A5D103D4(a1, v3, v11, v12, v13, v14, v15, v16);
  MEMORY[0x1AC555420](v4);
  sub_1A5D102B0(a1, v5);
  MEMORY[0x1AC555420](v6);
  sub_1A5D102B0(a1, v7);
  MEMORY[0x1AC555420](v8);
  sub_1A5D10180(a1, v9, v17, v18, v19, v20, v21, v22);
  MEMORY[0x1AC555420](v10);
  sub_1A5D10050(a1, v78, v23, v24, v25, v26, v27, v28);
  MEMORY[0x1AC555420](v79);
  sub_1A5D10180(a1, v80, v29, v30, v31, v32, v33, v34);
  MEMORY[0x1AC555420](v81);
  sub_1A5D102B0(a1, v82);
  MEMORY[0x1AC555420](v83);
  sub_1A5D102B0(a1, v84);
  MEMORY[0x1AC555420](v85);
  sub_1A5D103D4(a1, v86, v35, v36, v37, v38, v39, v40);
  MEMORY[0x1AC555420](v87);
  sub_1A5D102B0(a1, v88);
  MEMORY[0x1AC555420](v89);
  sub_1A5D10050(a1, v90, v41, v42, v43, v44, v45, v46);
  MEMORY[0x1AC555420](v91);
  sub_1A5D0FF20(a1, v92, v47, v48, v49, v50, v51, v52);
  MEMORY[0x1AC555420](v93);
  sub_1A5D0FF20(a1, v94, v53, v54, v55, v56, v57, v58);
  MEMORY[0x1AC555420](v95);
  sub_1A5D103D4(a1, v96, v59, v60, v61, v62, v63, v64);
  MEMORY[0x1AC555420](v97);
  sub_1A5D10050(a1, v98, v65, v66, v67, v68, v69, v70);
  MEMORY[0x1AC555420](v99);
  sub_1A5D103D4(a1, v100, v71, v72, v73, v74, v75, v76);
  if (v101 >= 0xFFF8)
  {
    return sub_1A5FD4C3C();
  }

  sub_1A5FD4C3C();
  sub_1A5B0A85C();
  return sub_1A5FD3CBC();
}

uint64_t FaceObservation.Attributes.hashValue.getter()
{
  sub_1A5FD4C1C();
  FaceObservation.Attributes.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.Attributes.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5600);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = a1[3];
  v121 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1A5D16280();
  sub_1A5FD4CCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v121);
  }

  v51 = a2;
  v52 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5500);
  LOBYTE(v53[0]) = 0;
  sub_1A5C1EC64(&qword_1EB1F5608, &qword_1EB1F5500);
  sub_1A5FD497C();
  v10 = v54;
  v50 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5510);
  LOBYTE(v53[0]) = 1;
  sub_1A5C1EC64(&qword_1EB1F5610, &qword_1EB1F5510);
  sub_1A5FD497C();
  v11 = v54;
  v47 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5520);
  LOBYTE(v53[0]) = 2;
  sub_1A5C1EC64(&qword_1EB1F5618, &qword_1EB1F5520);
  v46 = 0;
  sub_1A5FD497C();
  v49 = v11;
  v12 = v54;
  v45 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5530);
  LOBYTE(v53[0]) = 3;
  sub_1A5C1EC64(&qword_1EB1F5620, &qword_1EB1F5530);
  sub_1A5FD497C();
  v48 = v12;
  v13 = v54;
  v44 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5540);
  LOBYTE(v53[0]) = 4;
  sub_1A5C1EC64(&qword_1EB1F5628, &qword_1EB1F5540);
  sub_1A5FD497C();
  v35 = v13;
  v14 = v54;
  v43 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5550);
  LOBYTE(v53[0]) = 5;
  sub_1A5C1EC64(&qword_1EB1F5630, &qword_1EB1F5550);
  sub_1A5FD497C();
  v34 = v14;
  LOBYTE(v14) = v54;
  v42 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5560);
  LOBYTE(v53[0]) = 6;
  sub_1A5C1EC64(&qword_1EB1F5638, &qword_1EB1F5560);
  sub_1A5FD497C();
  v33 = v54;
  v41 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5570);
  LOBYTE(v53[0]) = 7;
  sub_1A5C1EC64(&qword_1EB1F5640, &qword_1EB1F5570);
  sub_1A5FD497C();
  v32 = v54;
  v40 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5580);
  LOBYTE(v53[0]) = 8;
  sub_1A5C1EC64(&qword_1EB1F5648, &qword_1EB1F5580);
  sub_1A5FD497C();
  v31 = v54;
  v39 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5590);
  LOBYTE(v53[0]) = 9;
  sub_1A5C1EC64(&qword_1EB1F5650, &qword_1EB1F5590);
  sub_1A5FD497C();
  v30 = v54;
  v38 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55A0);
  LOBYTE(v53[0]) = 10;
  sub_1A5C1EC64(&qword_1EB1F5658, &qword_1EB1F55A0);
  sub_1A5FD497C();
  v29 = v54;
  v37 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55B0);
  LOBYTE(v53[0]) = 11;
  sub_1A5C1EC64(&qword_1EB1F5660, &qword_1EB1F55B0);
  sub_1A5FD497C();
  v28 = v54;
  v36 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55C0);
  LOBYTE(v53[0]) = 12;
  sub_1A5C1EC64(&qword_1EB1F5668, &qword_1EB1F55C0);
  sub_1A5FD497C();
  v27 = v54;
  v46 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55D0);
  LOBYTE(v53[0]) = 13;
  sub_1A5C1EC64(&qword_1EB1F5670, &qword_1EB1F55D0);
  sub_1A5FD497C();
  v23 = v54;
  v26 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55E0);
  LOBYTE(v53[0]) = 14;
  sub_1A5C1EC64(&qword_1EB1F5678, &qword_1EB1F55E0);
  sub_1A5FD497C();
  v22 = v54;
  v25 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F55F0);
  LOBYTE(v53[0]) = 15;
  sub_1A5C1EC64(&qword_1EB1F5680, &qword_1EB1F55F0);
  sub_1A5FD497C();
  v21 = v54;
  v24 = v56;
  v103 = 16;
  sub_1A5B0A454();
  sub_1A5FD492C();
  (*(v52 + 8))(v8, v5);
  HIDWORD(v53[16]) = *&v112[3];
  *(&v53[16] + 1) = *v112;
  HIDWORD(v53[18]) = *&v111[3];
  *(&v53[18] + 1) = *v111;
  HIDWORD(v53[20]) = *&v110[3];
  *(&v53[20] + 1) = *v110;
  HIDWORD(v53[22]) = *&v109[3];
  *(&v53[22] + 1) = *v109;
  HIDWORD(v53[24]) = *&v108[3];
  *(&v53[24] + 1) = *v108;
  HIDWORD(v53[26]) = *&v107[3];
  *(&v53[26] + 1) = *v107;
  HIDWORD(v53[28]) = *&v106[3];
  *(&v53[28] + 1) = *v106;
  HIDWORD(v53[30]) = *&v105[3];
  *(&v53[30] + 1) = *v105;
  *(v53 + 1) = v120[0];
  HIDWORD(v53[0]) = *(v120 + 3);
  *(&v53[2] + 1) = *v119;
  HIDWORD(v53[2]) = *&v119[3];
  *(&v53[4] + 1) = *v118;
  HIDWORD(v53[4]) = *&v118[3];
  *(&v53[6] + 1) = *v117;
  HIDWORD(v53[6]) = *&v117[3];
  *(&v53[8] + 1) = *v116;
  HIDWORD(v53[8]) = *&v116[3];
  *(&v53[10] + 1) = *v115;
  HIDWORD(v53[10]) = *&v115[3];
  HIDWORD(v53[12]) = *&v114[3];
  *(&v53[12] + 1) = *v114;
  HIDWORD(v53[14]) = *&v113[3];
  *(&v53[14] + 1) = *v113;
  LODWORD(v52) = v104;
  LOBYTE(v53[0]) = v10;
  v15 = v50;
  v53[1] = v50;
  v17 = v48;
  v16 = v49;
  LOBYTE(v53[2]) = v49;
  v18 = v47;
  v53[3] = v47;
  LOBYTE(v53[4]) = v48;
  v53[5] = v45;
  LOBYTE(v53[6]) = v35;
  v53[7] = v44;
  LOBYTE(v53[8]) = v34;
  v53[9] = v43;
  LOBYTE(v53[10]) = v14;
  v53[11] = v42;
  LOBYTE(v53[12]) = v33;
  v53[13] = v41;
  LOBYTE(v53[14]) = v32;
  v53[15] = v40;
  LOBYTE(v53[16]) = v31;
  v53[17] = v39;
  LOBYTE(v53[18]) = v30;
  v53[19] = v38;
  LOBYTE(v53[20]) = v29;
  v53[21] = v37;
  LOBYTE(v53[22]) = v28;
  v53[23] = v36;
  LOBYTE(v53[24]) = v27;
  v53[25] = v46;
  LOBYTE(v53[26]) = v23;
  v53[27] = v26;
  LOBYTE(v53[28]) = v22;
  v53[29] = v25;
  LOBYTE(v53[30]) = v21;
  v53[31] = v24;
  LOWORD(v53[32]) = v104;
  memcpy(v51, v53, 0x102uLL);
  sub_1A5D162D4(v53, &v54);
  __swift_destroy_boxed_opaque_existential_1(v121);
  v54 = v10;
  v56 = v15;
  v57 = v16;
  v59 = v18;
  *v55 = v120[0];
  *&v55[3] = *(v120 + 3);
  *v58 = *v119;
  *&v58[3] = *&v119[3];
  v60 = v17;
  *v61 = *v118;
  *&v61[3] = *&v118[3];
  v62 = v45;
  v63 = v35;
  *v64 = *v117;
  *&v64[3] = *&v117[3];
  v65 = v44;
  v66 = v34;
  *v67 = *v116;
  *&v67[3] = *&v116[3];
  v68 = v43;
  v69 = v14;
  *v70 = *v115;
  *&v70[3] = *&v115[3];
  v71 = v42;
  v72 = v33;
  *&v73[3] = *&v114[3];
  *v73 = *v114;
  v74 = v41;
  v75 = v32;
  *&v76[3] = *&v113[3];
  *v76 = *v113;
  v77 = v40;
  v78 = v31;
  *&v79[3] = *&v112[3];
  *v79 = *v112;
  v80 = v39;
  v81 = v30;
  *&v82[3] = *&v111[3];
  *v82 = *v111;
  v83 = v38;
  v84 = v29;
  *&v85[3] = *&v110[3];
  *v85 = *v110;
  v86 = v37;
  v87 = v28;
  *&v88[3] = *&v109[3];
  *v88 = *v109;
  v89 = v36;
  v90 = v27;
  *&v91[3] = *&v108[3];
  *v91 = *v108;
  v92 = v46;
  v93 = v23;
  *&v94[3] = *&v107[3];
  *v94 = *v107;
  v95 = v26;
  v96 = v22;
  *&v97[3] = *&v106[3];
  *v97 = *v106;
  v98 = v25;
  v99 = v21;
  *&v100[3] = *&v105[3];
  *v100 = *v105;
  v101 = v24;
  v102 = v52;
  return sub_1A5D1630C(&v54);
}

uint64_t sub_1A5CFE6E0()
{
  sub_1A5FD4C1C();
  FaceObservation.Attributes.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CFE724()
{
  sub_1A5FD4C1C();
  FaceObservation.Attributes.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t static FaceObservation.Expressions.Scores.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5CFE7F0()
{
  v1 = 0x6E656469666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x7463657465447369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_1A5CFE854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D18728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CFE87C(uint64_t a1)
{
  v2 = sub_1A5D1633C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CFE8B8(uint64_t a1)
{
  v2 = sub_1A5D1633C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Expressions.Scores.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5688);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1633C();
  sub_1A5FD4CDC();
  v11 = 0;
  sub_1A5FD4A3C();
  if (!v1)
  {
    v10 = 1;
    sub_1A5FD4A3C();
    v9 = 2;
    sub_1A5FD4A2C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FaceObservation.Expressions.Scores.hash(into:)()
{
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  return sub_1A5FD4C3C();
}

uint64_t FaceObservation.Expressions.Scores.hashValue.getter()
{
  sub_1A5FD4C1C();
  FaceObservation.Expressions.Scores.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.Expressions.Scores.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5690);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1633C();
  sub_1A5FD4CCC();
  if (!v2)
  {
    v18 = 0;
    sub_1A5FD495C();
    v10 = v9;
    v17 = 1;
    sub_1A5FD495C();
    v13 = v12;
    v16 = 2;
    v14 = sub_1A5FD494C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 4) = v13;
    *(a2 + 8) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5CFED30(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5CFED94()
{
  sub_1A5FD4C1C();
  FaceObservation.Expressions.Scores.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CFEDEC()
{
  sub_1A5FD4C1C();
  FaceObservation.Expressions.Scores.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CFEE3C()
{
  v1 = *v0;
  v2 = 0x676E696C696D73;
  v3 = 0x6573697270727573;
  v4 = 0x6E696D6165726373;
  if (v1 != 4)
  {
    v4 = 0x6F69636970737573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574737567736964;
  if (v1 != 1)
  {
    v5 = 0x6C61727475656ELL;
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

uint64_t sub_1A5CFEF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D18848(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CFEF2C(uint64_t a1)
{
  v2 = sub_1A5D16390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CFEF68(uint64_t a1)
{
  v2 = sub_1A5D16390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CFEFA4(uint64_t a1)
{
  v2 = sub_1A5D16534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CFEFE0(uint64_t a1)
{
  v2 = sub_1A5D16534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CFF01C(uint64_t a1)
{
  v2 = sub_1A5D164E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CFF058(uint64_t a1)
{
  v2 = sub_1A5D164E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CFF094(uint64_t a1)
{
  v2 = sub_1A5D16438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CFF0D0(uint64_t a1)
{
  v2 = sub_1A5D16438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CFF10C(uint64_t a1)
{
  v2 = sub_1A5D16588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CFF148(uint64_t a1)
{
  v2 = sub_1A5D16588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CFF184(uint64_t a1)
{
  v2 = sub_1A5D1648C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CFF1C0(uint64_t a1)
{
  v2 = sub_1A5D1648C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CFF1FC(uint64_t a1)
{
  v2 = sub_1A5D163E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CFF238(uint64_t a1)
{
  v2 = sub_1A5D163E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Expressions.Expression.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5698);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56A0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56A8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56B0);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56B8);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56C0);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56C8);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D16390();
  sub_1A5FD4CDC();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1A5D1648C();
      v21 = v33;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1A5D16438();
      v21 = v36;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1A5D163E4();
      v21 = v39;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1A5D16534();
      v21 = v27;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1A5D164E0();
      v21 = v30;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1A5D16588();
  v22 = v42;
  sub_1A5FD49EC();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

uint64_t FaceObservation.Expressions.Expression.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56D0);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56D8);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56E0);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v43[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56E8);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v43[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56F0);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F56F8);
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5700);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43[-v21];
  v23 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1A5D16390();
  v24 = v62;
  sub_1A5FD4CCC();
  if (!v24)
  {
    v45 = v16;
    v25 = v15;
    v27 = v60;
    v26 = v61;
    v62 = v20;
    v28 = v22;
    v29 = sub_1A5FD49BC();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
    {
      v33 = sub_1A5FD471C();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v35 = &type metadata for FaceObservation.Expressions.Expression;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v29 + 32);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v39 = v59;
          v67 = 3;
          sub_1A5D1648C();
          sub_1A5FD48CC();
          v40 = v62;
          (*(v52 + 8))(v26, v51);
          (*(v40 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v36 = v39;
        }

        else
        {
          v36 = v59;
          v37 = v62;
          if (v30 == 4)
          {
            v68 = 4;
            sub_1A5D16438();
            v38 = v57;
            sub_1A5FD48CC();
            (*(v54 + 8))(v38, v53);
          }

          else
          {
            v69 = 5;
            sub_1A5D163E4();
            v41 = v58;
            sub_1A5FD48CC();
            (*(v55 + 8))(v41, v56);
          }

          (*(v37 + 8))(v22, v19);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v65 = 1;
            sub_1A5D16534();
            v31 = v25;
            sub_1A5FD48CC();
            v32 = v62;
            (*(v47 + 8))(v31, v48);
          }

          else
          {
            v66 = 2;
            sub_1A5D164E0();
            sub_1A5FD48CC();
            v32 = v62;
            (*(v49 + 8))(v27, v50);
          }
        }

        else
        {
          v64 = 0;
          sub_1A5D16588();
          sub_1A5FD48CC();
          (*(v46 + 8))(v18, v45);
          v32 = v62;
        }

        (*(v32 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v36 = v59;
      }

      *v36 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

Swift::Bool __swiftcall FaceObservation.Expressions.hasExpression(_:)(Vision::FaceObservation::Expressions::Expression a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1A5D0E134(*a1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 12 * v3 + 8);
  }

  else
  {
    return 0;
  }
}

Swift::Float __swiftcall FaceObservation.Expressions.expressionConfidence(for:)(Vision::FaceObservation::Expressions::Expression a1)
{
  v2 = *v1;
  v3 = 0.0;
  if (*(v2 + 16))
  {
    v4 = sub_1A5D0E134(*a1);
    if (v5)
    {
      return *(*(v2 + 56) + 12 * v4 + 4);
    }
  }

  return v3;
}

uint64_t sub_1A5D00198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  v49 = *a4;
  v8 = sub_1A5D15F9C(MEMORY[0x1E69E7CC0]);
  v9 = 0;
  v53 = a3;
  v54 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v51 = v16;
  v52 = a2;
  while (v15)
  {
    v18 = v9;
LABEL_11:
    v19 = (v18 << 9) | (8 * __clz(__rbit64(v15)));
    v20 = *(*(v54 + 56) + v19);
    v21 = *(a2 + 16);
    v22 = *(*(v54 + 48) + v19);
    v23 = v20;
    v24 = 0;
    if (v21)
    {
      v25 = sub_1A5BC794C(v22);
      if (v26)
      {
        [*(*(a2 + 56) + 8 * v25) floatValue];
        v24 = v27;
      }
    }

    if (*(a3 + 16) && (v28 = sub_1A5BC794C(v22), (v29 & 1) != 0))
    {
      v55 = *(*(a3 + 56) + v28);
    }

    else
    {
      v55 = 0;
    }

    v30 = v22;
    sub_1A5D00488(v30, &v56);
    v31 = v56;
    v32 = v23;
    [v23 floatValue];
    v34 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = sub_1A5D0E134(v31);
    v38 = v8[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_29;
    }

    v42 = v37;
    if (v8[3] >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = v36;
        sub_1A5D0EE1C();
        v36 = v47;
      }
    }

    else
    {
      sub_1A5D0E618(v41, isUniquelyReferenced_nonNull_native);
      v36 = sub_1A5D0E134(v31);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_31;
      }
    }

    v15 &= v15 - 1;
    if (v42)
    {
      v17 = v8[7] + 12 * v36;
      *v17 = v34;
      *(v17 + 4) = v24;
      *(v17 + 8) = v55;
    }

    else
    {
      v8[(v36 >> 6) + 8] |= 1 << v36;
      *(v8[6] + v36) = v31;
      v44 = v8[7] + 12 * v36;
      *v44 = v34;
      *(v44 + 4) = v24;
      *(v44 + 8) = v55;

      v45 = v8[2];
      v40 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v40)
      {
        goto LABEL_30;
      }

      v8[2] = v46;
    }

    v9 = v18;
    a2 = v52;
    a3 = v53;
    v16 = v51;
  }

  while (1)
  {
    v18 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      *a5 = v8;
      *(a5 + 8) = v49;
      return result;
    }

    v15 = *(v11 + 8 * v18);
    ++v9;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1A5FD4B8C();
  __break(1u);
  return result;
}

void sub_1A5D00488(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  if (v4 == sub_1A5FD3D5C() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_1A5FD4B0C();

  if (v9)
  {

LABEL_8:
    v10 = 0;
LABEL_9:
    *a2 = v10;
    return;
  }

  v11 = sub_1A5FD3D5C();
  v13 = v12;
  if (v11 == sub_1A5FD3D5C() && v13 == v14)
  {

    v10 = 1;
    goto LABEL_9;
  }

  v16 = sub_1A5FD4B0C();

  if (v16)
  {

    v10 = 1;
    goto LABEL_9;
  }

  v17 = sub_1A5FD3D5C();
  v19 = v18;
  if (v17 == sub_1A5FD3D5C() && v19 == v20)
  {

    v10 = 2;
    goto LABEL_9;
  }

  v21 = sub_1A5FD4B0C();

  if (v21)
  {

    v10 = 2;
    goto LABEL_9;
  }

  v22 = sub_1A5FD3D5C();
  v24 = v23;
  if (v22 == sub_1A5FD3D5C() && v24 == v25)
  {

    v10 = 3;
    goto LABEL_9;
  }

  v26 = sub_1A5FD4B0C();

  if (v26)
  {

    v10 = 3;
    goto LABEL_9;
  }

  v27 = sub_1A5FD3D5C();
  v29 = v28;
  if (v27 == sub_1A5FD3D5C() && v29 == v30)
  {

    v10 = 4;
    goto LABEL_9;
  }

  v31 = sub_1A5FD4B0C();

  if (v31)
  {

    v10 = 4;
    goto LABEL_9;
  }

  v32 = sub_1A5FD3D5C();
  v34 = v33;
  if (v32 == sub_1A5FD3D5C() && v34 == v35)
  {

    v10 = 5;
    goto LABEL_9;
  }

  v36 = sub_1A5FD4B0C();

  if (v36)
  {

    v10 = 5;
    goto LABEL_9;
  }

  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A605A230);
  type metadata accessor for VNExpression(0);
  sub_1A5FD481C();
  sub_1A5FD483C();
  __break(1u);
}

uint64_t sub_1A5D008A4()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x7365726F6373;
  }
}

uint64_t sub_1A5D008E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365726F6373 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A6052B00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5D009C0(uint64_t a1)
{
  v2 = sub_1A5D16604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D009FC(uint64_t a1)
{
  v2 = sub_1A5D16604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Expressions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5708);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  HIDWORD(v10) = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D16604();

  sub_1A5FD4CDC();
  v14 = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5710);
  sub_1A5D16700(&qword_1EB1F5718, sub_1A5D16658, sub_1A5D166AC);
  sub_1A5FD4A5C();

  if (!v2)
  {
    v12 = WORD2(v10);
    v11 = 1;
    sub_1A5B0A760();
    sub_1A5FD4A0C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FaceObservation.Expressions.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1A5D0FDD0(a1, v2);
  if (v3 >= 0xFFF8)
  {
    return sub_1A5FD4C3C();
  }

  sub_1A5FD4C3C();
  sub_1A5B0A85C();
  return sub_1A5FD3CBC();
}

uint64_t FaceObservation.Expressions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A5FD4C1C();
  sub_1A5D0FDD0(v4, v1);
  sub_1A5FD4C3C();
  if (v2 < 0xFFF8)
  {
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
  }

  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.Expressions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5730);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D16604();
  sub_1A5FD4CCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5710);
  v14 = 0;
  sub_1A5D16700(&qword_1EB1F5738, sub_1A5D16790, sub_1A5D167E4);
  sub_1A5FD497C();
  v9 = v15;
  v12[11] = 1;
  sub_1A5B0A454();
  sub_1A5FD492C();
  (*(v6 + 8))(v8, v5);
  v10 = v13;
  *a2 = v9;
  *(a2 + 8) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5D00FE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1A5D0FDD0(a1, v2);
  if (v3 >= 0xFFF8)
  {
    return sub_1A5FD4C3C();
  }

  sub_1A5FD4C3C();
  sub_1A5B0A85C();
  return sub_1A5FD3CBC();
}

uint64_t sub_1A5D01068()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A5FD4C1C();
  sub_1A5D0FDD0(v4, v1);
  sub_1A5FD4C3C();
  if (v2 < 0xFFF8)
  {
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
  }

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D01100(uint64_t a1)
{
  v2 = sub_1A5D1688C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D0113C(uint64_t a1)
{
  v2 = sub_1A5D1688C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D01178(uint64_t a1)
{
  v2 = sub_1A5D16934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D011B4(uint64_t a1)
{
  v2 = sub_1A5D16934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D011F0()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6172656D6163;
  v4 = 0x6F4C6E6F6D6D6F63;
  if (v1 != 4)
  {
    v4 = 0x46726568746F6E61;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C75636966666964;
  if (v1 != 1)
  {
    v5 = 0x72656877656D6F73;
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

uint64_t sub_1A5D012D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D18A58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5D012FC(uint64_t a1)
{
  v2 = sub_1A5D16838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D01338(uint64_t a1)
{
  v2 = sub_1A5D16838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D01374(uint64_t a1)
{
  v2 = sub_1A5D168E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D013B0(uint64_t a1)
{
  v2 = sub_1A5D168E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D013EC(uint64_t a1)
{
  v2 = sub_1A5D169DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D01428(uint64_t a1)
{
  v2 = sub_1A5D169DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D01464(uint64_t a1)
{
  v2 = sub_1A5D16988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D014A0(uint64_t a1)
{
  v2 = sub_1A5D16988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D014DC(uint64_t a1)
{
  v2 = sub_1A5D16A30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D01518(uint64_t a1)
{
  v2 = sub_1A5D16A30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Gaze.Direction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5750);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5758);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5760);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5768);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5770);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5778);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5780);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D16838();
  sub_1A5FD4CDC();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1A5D16934();
      v21 = v33;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1A5D168E0();
      v21 = v36;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1A5D1688C();
      v21 = v39;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1A5D169DC();
      v21 = v27;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1A5D16988();
      v21 = v30;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1A5D16A30();
  v22 = v42;
  sub_1A5FD49EC();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

uint64_t FaceObservation.Gaze.Direction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5788);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5790);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5798);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v43[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F57A0);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v43[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F57A8);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F57B0);
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F57B8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43[-v21];
  v23 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1A5D16838();
  v24 = v62;
  sub_1A5FD4CCC();
  if (!v24)
  {
    v45 = v16;
    v25 = v15;
    v27 = v60;
    v26 = v61;
    v62 = v20;
    v28 = v22;
    v29 = sub_1A5FD49BC();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
    {
      v33 = sub_1A5FD471C();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v35 = &type metadata for FaceObservation.Gaze.Direction;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v29 + 32);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v39 = v59;
          v67 = 3;
          sub_1A5D16934();
          sub_1A5FD48CC();
          v40 = v62;
          (*(v52 + 8))(v26, v51);
          (*(v40 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v36 = v39;
        }

        else
        {
          v36 = v59;
          v37 = v62;
          if (v30 == 4)
          {
            v68 = 4;
            sub_1A5D168E0();
            v38 = v57;
            sub_1A5FD48CC();
            (*(v54 + 8))(v38, v53);
          }

          else
          {
            v69 = 5;
            sub_1A5D1688C();
            v41 = v58;
            sub_1A5FD48CC();
            (*(v55 + 8))(v41, v56);
          }

          (*(v37 + 8))(v22, v19);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v65 = 1;
            sub_1A5D169DC();
            v31 = v25;
            sub_1A5FD48CC();
            v32 = v62;
            (*(v47 + 8))(v31, v48);
          }

          else
          {
            v66 = 2;
            sub_1A5D16988();
            sub_1A5FD48CC();
            v32 = v62;
            (*(v49 + 8))(v27, v50);
          }
        }

        else
        {
          v64 = 0;
          sub_1A5D16A30();
          sub_1A5FD48CC();
          (*(v46 + 8))(v18, v45);
          v32 = v62;
        }

        (*(v32 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v36 = v59;
      }

      *v36 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}