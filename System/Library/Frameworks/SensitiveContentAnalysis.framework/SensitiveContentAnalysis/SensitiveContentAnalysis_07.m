uint64_t ContentDescription.Description.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A10);
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v45 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A18);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v45 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A20);
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v59 = &v45 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A28);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A30);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A38);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - v13;
  v15 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1AEAE0CC4();
  v16 = v61;
  sub_1AEAFA41C();
  if (!v16)
  {
    v17 = v10;
    v46 = v8;
    v47 = v14;
    v18 = v59;
    v19 = v60;
    v61 = v12;
    v20 = sub_1AEAFA17C();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v20 + 32);
      if (v21 == 1 && v22 != 5)
      {
        if (*(v20 + 32) <= 1u)
        {
          if (*(v20 + 32))
          {
            v64 = 1;
            sub_1AEAE0E14();
            v39 = v47;
            sub_1AEAFA0AC();
            v40 = v61;
            (*(v49 + 8))(v7, v51);
            (*(v40 + 8))(v39, v11);
            swift_unknownObjectRelease();
            v43 = 0;
            v44 = 3;
            v42 = 1;
          }

          else
          {
            v63 = 0;
            sub_1AEAE0E68();
            v33 = v47;
            sub_1AEAFA0AC();
            v34 = v61;
            (*(v48 + 8))(v17, v46);
            (*(v34 + 8))(v33, v11);
            swift_unknownObjectRelease();
            v42 = 0;
            v43 = 0;
            v44 = 3;
          }
        }

        else
        {
          if (v22 == 2)
          {
            v60 = v20;
            v65 = 2;
            sub_1AEAE0DC0();
            v35 = v47;
            sub_1AEAFA0AC();
            v36 = v58;
            v41 = v50;
            v42 = sub_1AEAFA13C();
            (*(v52 + 8))(v18, v41);
            (*(v61 + 8))(v35, v11);
            swift_unknownObjectRelease();
            v43 = 0;
            v44 = 0;
LABEL_20:
            *v36 = v42;
            *(v36 + 8) = v43;
            *(v36 + 16) = v44;
            return __swift_destroy_boxed_opaque_existential_1(v62);
          }

          v29 = v47;
          if (v22 == 3)
          {
            v66 = 3;
            sub_1AEAE0D6C();
            v30 = v57;
            sub_1AEAFA0AC();
            v31 = v61;
            v32 = v53;
            v42 = sub_1AEAFA13C();
            (*(v55 + 8))(v30, v32);
            (*(v31 + 8))(v29, v11);
            swift_unknownObjectRelease();
            v43 = 0;
            v44 = 1;
          }

          else
          {
            v69 = 4;
            sub_1AEAE0D18();
            sub_1AEAFA0AC();
            v37 = v61;
            v68 = 0;
            v38 = v54;
            v42 = sub_1AEAFA13C();
            v67 = 1;
            v43 = sub_1AEAFA13C();
            (*(v56 + 8))(v19, v38);
            (*(v37 + 8))(v29, v11);
            swift_unknownObjectRelease();
            v44 = 2;
          }
        }

        v36 = v58;
        goto LABEL_20;
      }
    }

    v24 = sub_1AEAF9E7C();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91C8);
    *v26 = &type metadata for ContentDescription.Description;
    v27 = v47;
    sub_1AEAFA0BC();
    sub_1AEAF9E6C();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v61 + 8))(v27, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

__n128 ContentDescription.description.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

BOOL static ContentDescription.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16) > 1u)
  {
    v7 = a1[1];
    v8 = a2[1];
    if (*(a1 + 16) == 2)
    {
      if (v4 != 2 || v2 != v3 || v7 != v8)
      {
        return 0;
      }
    }

    else if (v2 | v7)
    {
      if (v4 != 3 || v3 != 1 || v8 != 0)
      {
        return 0;
      }
    }

    else
    {
      v14 = v8 | v3;
      if (v4 != 3 || v14 != 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a1 + 16))
  {
    return v4 == 1 && v2 == v3;
  }

  return !*(a2 + 16) && v2 == v3;
}

uint64_t sub_1AEAE06F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AEAFA2BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AEAE0784(uint64_t a1)
{
  v2 = sub_1AEAE0EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE07C0(uint64_t a1)
{
  v2 = sub_1AEAE0EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContentDescription.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v8 = *v1;
  v7 = v1[1];
  HIDWORD(v10) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAE0EBC();
  sub_1AEAFA42C();
  v11 = v8;
  v12 = v7;
  v13 = BYTE4(v10);
  sub_1AEAE0F10();
  sub_1AEAFA22C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ContentDescription.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAE0EBC();
  sub_1AEAFA41C();
  if (!v2)
  {
    sub_1AEAE0F64();
    sub_1AEAFA14C();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AEAE0B04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16) > 1u)
  {
    v6 = a1[1];
    v7 = a2[1];
    if (*(a1 + 16) == 2)
    {
      if (v4 != 2 || v2 != v3 || v6 != v7)
      {
        return 0;
      }
    }

    else if (v2 | v6)
    {
      if (v4 != 3 || v3 != 1 || v7 != 0)
      {
        return 0;
      }
    }

    else
    {
      v14 = v7 | v3;
      if (v4 != 3 || v14 != 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      v5 = v4 == 1;
    }

    else
    {
      v5 = v4 == 0;
    }

    if (!v5 || v2 != v3)
    {
      return 0;
    }
  }

  return 1;
}

double static ContentDescription.photo.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1AEB028D0;
  *(a1 + 16) = 3;
  return result;
}

void static ContentDescription.video.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t static ContentDescription.photos(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  return result;
}

uint64_t static ContentDescription.videos(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  if (result == 1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  return result;
}

uint64_t static ContentDescription.photosAndVideos(numberOfPhotos:numberOfVideos:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!result)
  {
    if (a2 == 1)
    {
      a2 = 0;
      v3 = 3;
      goto LABEL_8;
    }

LABEL_7:
    v3 = 2;
    goto LABEL_8;
  }

  if (result != 1 || a2)
  {
    goto LABEL_7;
  }

  v3 = 3;
LABEL_8:
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = v3;
  return result;
}

uint64_t _s24SensitiveContentAnalysis0B11DescriptionV0D0O2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      if (v4 == 1)
      {
        return v2 == v3;
      }
    }

    else if (!*(a2 + 16))
    {
      return v2 == v3;
    }

    return 0;
  }

  v5 = a1[1];
  v6 = a2[1];
  if (*(a1 + 16) != 2)
  {
    if (v2 | v5)
    {
      if (v4 != 3 || v3 != 1 || v6 != 0)
      {
        return 0;
      }
    }

    else
    {
      v11 = v6 | v3;
      if (v4 != 3 || v11 != 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v4 != 2)
  {
    return 0;
  }

  return v2 == v3 && v5 == v6;
}

unint64_t sub_1AEAE0CC4()
{
  result = qword_1EB5F1390;
  if (!qword_1EB5F1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F1390);
  }

  return result;
}

unint64_t sub_1AEAE0D18()
{
  result = qword_1EB5F1398;
  if (!qword_1EB5F1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F1398);
  }

  return result;
}

unint64_t sub_1AEAE0D6C()
{
  result = qword_1EB5F13A0;
  if (!qword_1EB5F13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F13A0);
  }

  return result;
}

unint64_t sub_1AEAE0DC0()
{
  result = qword_1EB5F13A8;
  if (!qword_1EB5F13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F13A8);
  }

  return result;
}

unint64_t sub_1AEAE0E14()
{
  result = qword_1EB5F13B0;
  if (!qword_1EB5F13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F13B0);
  }

  return result;
}

unint64_t sub_1AEAE0E68()
{
  result = qword_1EB5F13B8;
  if (!qword_1EB5F13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F13B8);
  }

  return result;
}

unint64_t sub_1AEAE0EBC()
{
  result = qword_1EB5F13C0[0];
  if (!qword_1EB5F13C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F13C0);
  }

  return result;
}

unint64_t sub_1AEAE0F10()
{
  result = qword_1EB5E9A48;
  if (!qword_1EB5E9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9A48);
  }

  return result;
}

unint64_t sub_1AEAE0F64()
{
  result = qword_1EB5E9A58;
  if (!qword_1EB5E9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9A58);
  }

  return result;
}

uint64_t sub_1AEAE0FCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AEAE1018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1AEAE105C(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1AEAE1074(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1AEAE1118()
{
  result = qword_1EB5F17D0[0];
  if (!qword_1EB5F17D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F17D0);
  }

  return result;
}

unint64_t sub_1AEAE1170()
{
  result = qword_1EB5F19E0[0];
  if (!qword_1EB5F19E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F19E0);
  }

  return result;
}

unint64_t sub_1AEAE11C8()
{
  result = qword_1EB5F1BF0;
  if (!qword_1EB5F1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F1BF0);
  }

  return result;
}

unint64_t sub_1AEAE1220()
{
  result = qword_1EB5F2000[0];
  if (!qword_1EB5F2000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2000);
  }

  return result;
}

unint64_t sub_1AEAE1278()
{
  result = qword_1EB5F2210[0];
  if (!qword_1EB5F2210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2210);
  }

  return result;
}

unint64_t sub_1AEAE12D0()
{
  result = qword_1EB5F2320;
  if (!qword_1EB5F2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2320);
  }

  return result;
}

unint64_t sub_1AEAE1328()
{
  result = qword_1EB5F2328[0];
  if (!qword_1EB5F2328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2328);
  }

  return result;
}

unint64_t sub_1AEAE1380()
{
  result = qword_1EB5F23B0;
  if (!qword_1EB5F23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F23B0);
  }

  return result;
}

unint64_t sub_1AEAE13D8()
{
  result = qword_1EB5F23B8[0];
  if (!qword_1EB5F23B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F23B8);
  }

  return result;
}

unint64_t sub_1AEAE1430()
{
  result = qword_1EB5F2440;
  if (!qword_1EB5F2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2440);
  }

  return result;
}

unint64_t sub_1AEAE1488()
{
  result = qword_1EB5F2448[0];
  if (!qword_1EB5F2448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2448);
  }

  return result;
}

unint64_t sub_1AEAE14E0()
{
  result = qword_1EB5F24D0;
  if (!qword_1EB5F24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F24D0);
  }

  return result;
}

unint64_t sub_1AEAE1538()
{
  result = qword_1EB5F24D8[0];
  if (!qword_1EB5F24D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F24D8);
  }

  return result;
}

unint64_t sub_1AEAE1590()
{
  result = qword_1EB5F2560;
  if (!qword_1EB5F2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2560);
  }

  return result;
}

unint64_t sub_1AEAE15E8()
{
  result = qword_1EB5F2568[0];
  if (!qword_1EB5F2568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2568);
  }

  return result;
}

unint64_t sub_1AEAE1640()
{
  result = qword_1EB5F25F0;
  if (!qword_1EB5F25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F25F0);
  }

  return result;
}

unint64_t sub_1AEAE1698()
{
  result = qword_1EB5F25F8[0];
  if (!qword_1EB5F25F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F25F8);
  }

  return result;
}

unint64_t sub_1AEAE16F0()
{
  result = qword_1EB5F2680;
  if (!qword_1EB5F2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2680);
  }

  return result;
}

unint64_t sub_1AEAE1748()
{
  result = qword_1EB5F2688[0];
  if (!qword_1EB5F2688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2688);
  }

  return result;
}

uint64_t sub_1AEAE179C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F65646976 && a2 == 0xE500000000000000;
  if (v4 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F746F6870 && a2 == 0xE500000000000000 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736F746F6870 && a2 == 0xE600000000000000 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736F65646976 && a2 == 0xE600000000000000 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E41736F746F6870 && a2 == 0xEF736F6564695664)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

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

uint64_t sub_1AEAE1964(uint64_t a1)
{
  v2 = sub_1AEAE1AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE19A0(uint64_t a1)
{
  v2 = sub_1AEAE1AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SCEmptyReply.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAE1AF0();
  sub_1AEAFA42C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AEAE1AF0()
{
  result = qword_1EB5F2710;
  if (!qword_1EB5F2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2710);
  }

  return result;
}

uint64_t sub_1AEAE1B94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAE1AF0();
  sub_1AEAFA42C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AEAE1CD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v23 = a1;
  AssociatedConformanceWitness = a2;
  v8 = sub_1AEAF9C3C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a4 + 8);
  swift_getWitnessTable();
  sub_1AEAF927C();
  v17 = v23;
  v16 = AssociatedConformanceWitness;
  if ((*(v13 + 48))(v12, 1, a3) == 1)
  {
    result = (*(v9 + 8))(v12, v8);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    v19 = (*(v13 + 32))(v15, v12, a3);
    v22[1] = v22;
    MEMORY[0x1EEE9AC00](v19);
    v22[0] = &v22[-8];
    v22[-6] = a3;
    v22[-5] = a4;
    v22[-4] = v17;
    v22[-3] = v16;
    swift_getAssociatedTypeWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v21 = swift_getAssociatedConformanceWitness();
    sub_1AEAE207C(sub_1AEAE96A0, AssociatedTypeWitness, a5);
    return (*(v13 + 8))(v15, a3);
  }

  return result;
}

uint64_t sub_1AEAE207C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v16 = *(a2 - 8);
  v17 = a1;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  a3[3] = type metadata accessor for CodableResult();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  v17(v7);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AEAE2300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void *, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;

  a7(a6, v13, a3, a4);
}

uint64_t _s24SensitiveContentAnalysis15MessageHandlersV12addAsyncMainyy5ReplyQzx7FailureQzYKScMYccAA12SCXPCMessageRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AEA42FDC();
  v8 = sub_1AEAF9AFC();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;

  _s24SensitiveContentAnalysis15MessageHandlersV8addAsync7toQueue_ySo17OS_dispatch_queueC_5ReplyQzx7FailureQzYKctAA12SCXPCMessageRzlF(v8, sub_1AEAE7E38, v9, a3, a4);
}

uint64_t _s24SensitiveContentAnalysis15MessageHandlersV8addAsync7toQueue_ySo17OS_dispatch_queueC_yx7FailureQzYKctAA12SCXPCMessageRzAA12SCEmptyReplyV0P0RtzlF(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;

  _s24SensitiveContentAnalysis15MessageHandlersV8addAsync7toQueue_ySo17OS_dispatch_queueC_5ReplyQzx7FailureQzYKctAA12SCXPCMessageRzlF(a1, sub_1AEAE96C4, v10, a4, a5);
}

uint64_t sub_1AEAE2510(uint64_t a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v15 - v12;
  result = a2(a1, &v15 - v12);
  if (v6)
  {
    return (*(v11 + 32))(a6, v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t _s24SensitiveContentAnalysis15MessageHandlersV8addAsync7toQueue_ySo17OS_dispatch_queueC_5ReplyQzx7FailureQzYKctAA12SCXPCMessageRzlF(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a1;
  v12 = *v5;

  v13 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v12;
  if ((result & 1) == 0)
  {
    result = sub_1AEAE7CE0(0, v12[2] + 1, 1, v12);
    v12 = result;
    *v5 = result;
  }

  v16 = v12[2];
  v15 = v12[3];
  if (v16 >= v15 >> 1)
  {
    result = sub_1AEAE7CE0((v15 > 1), v16 + 1, 1, v12);
    v12 = result;
  }

  v12[2] = v16 + 1;
  v17 = &v12[2 * v16];
  v17[4] = sub_1AEAE7E5C;
  v17[5] = v11;
  *v5 = v12;
  return result;
}

void sub_1AEAE2728(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v19 - v14;
  sub_1AEAF97FC();
  v21 = a4;
  v22 = a5;
  v23 = a2;
  v24 = a3;
  v25 = a1;
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = v26;
  sub_1AEA97020(sub_1AEAE9660, v20, "SensitiveContentAnalysis/SwiftXPC.swift", 39, 2, 87, v16, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  if (v18)
  {
    (*(v13 + 32))(v19[0], v15, AssociatedTypeWitness);
  }
}

uint64_t sub_1AEAE28FC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v10[2] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v10[4] = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  v10[5] = v13;
  v10[6] = sub_1AEAF97FC();
  v10[7] = sub_1AEAF97EC();
  v16 = (a2 + *a2);
  v14 = swift_task_alloc();
  v10[8] = v14;
  *v14 = v10;
  v14[1] = sub_1AEAE2AB4;

  return v16(a1, a4, v13);
}

uint64_t sub_1AEAE2AB4()
{

  v2 = sub_1AEAF977C();
  if (v0)
  {
    v3 = sub_1AEAE2C7C;
  }

  else
  {
    v3 = sub_1AEAE2C0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v1);
}

uint64_t sub_1AEAE2C0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEAE2C7C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AEAE2D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v14;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v9 = *(a8 - 8);
  v8[13] = v9;
  v8[14] = *(v9 + 64);
  v8[15] = swift_task_alloc();
  sub_1AEAF97FC();
  v8[16] = sub_1AEAF97EC();
  v11 = sub_1AEAF977C();
  v8[17] = v11;
  v8[18] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1AEAE2E10, v11, v10);
}

uint64_t sub_1AEAE2E10()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v11 = *(v0 + 56);
  v13 = *(v0 + 88);
  v3 = *(v0 + 88);
  (*(v2 + 16))(v1, *(v0 + 72), v3);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v0 + 152) = v5;
  *(v5 + 16) = v13;
  *(v5 + 32) = v11;
  (*(v2 + 32))(v5 + v4, v1, v3);

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  *v6 = v0;
  v6[1] = sub_1AEAE3078;

  return sub_1AEAE3254(v0 + 16, &unk_1AEB039C0, v5, AssociatedTypeWitness, v8, AssociatedConformanceWitness, v12, v9);
}

uint64_t sub_1AEAE3078()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1AEAE31BC, v3, v2);
}

uint64_t sub_1AEAE31BC()
{

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_1AEAF926C();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AEAE3254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v13;
  v8[18] = v14;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[9] = a1;
  v8[10] = a2;
  v8[19] = *(a5 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  sub_1AEAF97FC();
  v8[23] = sub_1AEAF97EC();
  v10 = sub_1AEAF977C();
  v8[24] = v10;
  v8[25] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1AEAE336C, v10, v9);
}

uint64_t sub_1AEAE336C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  v5 = *(v0 + 128);
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  *(v0 + 64) = v1;
  v6 = type metadata accessor for CodableResult();
  *(v0 + 208) = v6;
  v2[3] = v6;
  WitnessTable = swift_getWitnessTable();
  *(v0 + 216) = WitnessTable;
  v2[4] = WitnessTable;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  *(v0 + 224) = boxed_opaque_existential_1;
  v12 = (v3 + *v3);
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_1AEAE34C8;
  v10 = *(v0 + 168);

  return v12(boxed_opaque_existential_1, v10);
}

uint64_t sub_1AEAE34C8()
{
  v2 = *v1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_1AEAE3698;
  }

  else
  {
    v5 = sub_1AEAE3604;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1AEAE3604()
{

  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEAE3698()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 104);
  v6 = *(v0 + 72);
  v10 = *(v0 + 208);

  v7 = *(v4 + 32);
  v7(v1, v2, v5);
  __swift_deallocate_boxed_opaque_existential_1(v6);
  v7(v3, v1, v5);
  *(v6 + 24) = v10;
  __swift_allocate_boxed_opaque_existential_1(v6);
  (*(v4 + 16))();
  swift_storeEnumTagMultiPayload();
  (*(v4 + 8))(v3, v5);

  v8 = *(v0 + 8);

  return v8();
}

double sub_1AEAE37E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v42 = a3;
  v43 = a4;
  v41 = a2;
  v46 = a7;
  v10 = sub_1AEAF928C();
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AEAF9C3C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v47 = a5;
  v45 = *(a5 - 8);
  v17 = *(v45 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v49 = *(a6 + 8);
  swift_getWitnessTable();
  sub_1AEAF927C();
  v37 = v11;
  v38 = a6;
  v21 = v45;
  if ((*(v45 + 48))(v16, 1, v47) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v22 = v46;
    v46[4] = 0;
    result = 0.0;
    *v22 = 0u;
    v22[1] = 0u;
  }

  else
  {
    v35 = *(v21 + 32);
    v36 = v20;
    v24 = v47;
    v35(v20, v16, v47);
    v25 = *(v21 + 16);
    v34 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25(v34, v20, v24);
    v27 = v39;
    v26 = v40;
    (*(v39 + 16))(v44, a1, v40);
    v28 = (*(v21 + 80) + 48) & ~*(v21 + 80);
    v29 = (v17 + *(v27 + 80) + v28) & ~*(v27 + 80);
    v30 = swift_allocObject();
    v31 = v38;
    *(v30 + 2) = v24;
    *(v30 + 3) = v31;
    v32 = v42;
    *(v30 + 4) = v41;
    *(v30 + 5) = v32;
    v35(&v30[v28], v34, v24);
    (*(v27 + 32))(&v30[v29], v44, v26);

    sub_1AEAF925C();

    sub_1AEA41FAC(v48, &qword_1EB5E9A80);
    (*(v21 + 8))(v36, v24);
    v33 = v46;
    *v46 = 0;
    v33[1] = 0;
    v33[2] = 0;
    *&result = 1;
    *(v33 + 3) = xmmword_1AEB028D0;
  }

  return result;
}

uint64_t sub_1AEAE3C04(uint64_t (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v15 - v12;
  result = a1(a3, v15 - v12);
  if (v6)
  {
    return (*(v11 + 32))(a6, v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1AEAE3D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  v13 = *v6;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if ((result & 1) == 0)
  {
    result = sub_1AEAE7CE0(0, v13[2] + 1, 1, v13);
    v13 = result;
    *v6 = result;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    result = sub_1AEAE7CE0((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a6;
  v17[5] = v12;
  *v6 = v13;
  return result;
}

double sub_1AEAE3E68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v51 = a3;
  v52 = a7;
  v48 = a6;
  v50 = a2;
  v55 = a8;
  v49 = sub_1AEAF928C();
  v53 = *(v49 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AEAF9C3C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v56 = a4;
  v54 = *(a4 - 8);
  v17 = *(v54 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v58 = *(a5 + 8);
  swift_getWitnessTable();
  sub_1AEAF927C();
  v44 = v11;
  v45 = a5;
  v22 = v53;
  v21 = v54;
  v46 = a1;
  if ((*(v54 + 48))(v16, 1, v56) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v23 = v55;
    v55[4] = 0;
    result = 0.0;
    *v23 = 0u;
    v23[1] = 0u;
  }

  else
  {
    v41 = *(v21 + 32);
    v43 = v20;
    v25 = v16;
    v26 = v56;
    v41(v20, v25, v56);
    sub_1AEA42FDC();
    v42 = sub_1AEAF9AFC();
    v27 = *(v21 + 16);
    v40 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27(v40, v20, v26);
    v28 = v22;
    v29 = *(v22 + 16);
    v30 = v47;
    v31 = v49;
    v29(v47, v46, v49);
    v32 = (*(v21 + 80) + 48) & ~*(v21 + 80);
    v33 = (v17 + *(v28 + 80) + v32) & ~*(v28 + 80);
    v34 = swift_allocObject();
    v35 = v45;
    *(v34 + 2) = v26;
    *(v34 + 3) = v35;
    v36 = v51;
    *(v34 + 4) = v50;
    *(v34 + 5) = v36;
    v41(&v34[v32], v40, v26);
    (*(v28 + 32))(&v34[v33], v30, v31);

    v37 = v42;
    sub_1AEAF925C();

    sub_1AEA41FAC(v57, &qword_1EB5E9A80);
    (*(v21 + 8))(v43, v26);
    v38 = v55;
    *v55 = 0;
    v38[1] = 0;
    v38[2] = 0;
    *&result = 1;
    *(v38 + 3) = xmmword_1AEB028D0;
  }

  return result;
}

uint64_t sub_1AEAE42C0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[6] = sub_1AEAF97FC();
  v7[7] = sub_1AEAF97EC();
  v13 = (a2 + *a2);
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_1AEAE43F4;

  return (v13)(a1, a4, v7 + 2);
}

uint64_t sub_1AEAE43F4()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 72) = *(v2 + 16);
    v3 = sub_1AEAF977C();
    v5 = v4;
    v6 = sub_1AEAE453C;
  }

  else
  {
    v3 = sub_1AEAF977C();
    v5 = v7;
    v6 = sub_1AEAE462C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1AEAE453C()
{
  v1 = v0[9];
  v2 = v0[5];

  v0[3] = v1;
  type metadata accessor for SCAError(0);
  sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
  v3 = sub_1AEAF8C2C();
  *v2 = v3;
  v0[4] = v3;
  sub_1AEAB9BC4();
  swift_willThrowTypedImpl();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AEAE462C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEAE4690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a6;
  v37 = a8;
  v33 = a2;
  v34 = a7;
  v32 = a4;
  v35 = a1;
  v10 = sub_1AEAF928C();
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v30 - v18;
  v20 = sub_1AEAF982C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v16, a3, a5);
  (*(v11 + 16))(&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v10);
  sub_1AEAF97FC();
  v21 = v33;

  v22 = sub_1AEAF97EC();
  v23 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v24 = (v15 + *(v11 + 80) + v23) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 2) = v22;
  *(v25 + 3) = v26;
  v27 = v35;
  v28 = v36;
  *(v25 + 4) = a5;
  *(v25 + 5) = v28;
  *(v25 + 6) = v27;
  *(v25 + 7) = v21;
  (*(v14 + 32))(&v25[v23], v16, a5);
  (*(v11 + 32))(&v25[v24], v31, v30);
  sub_1AEA5E2A0(0, 0, v19, v37, v25);
}

uint64_t sub_1AEAE4960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v14;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v9 = *(a8 - 8);
  v8[13] = v9;
  v8[14] = *(v9 + 64);
  v8[15] = swift_task_alloc();
  sub_1AEAF97FC();
  v8[16] = sub_1AEAF97EC();
  v11 = sub_1AEAF977C();
  v8[17] = v11;
  v8[18] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1AEAE4A5C, v11, v10);
}

uint64_t sub_1AEAE4A5C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v12 = *(v0 + 56);
  v13 = *(v0 + 88);
  v3 = *(v0 + 88);
  (*(v2 + 16))(v1, *(v0 + 72), v3);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v0 + 152) = v5;
  *(v5 + 16) = v13;
  *(v5 + 32) = v12;
  (*(v2 + 32))(v5 + v4, v1, v3);

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = sub_1AEAB9B14();
  sub_1AEAB9B6C();
  sub_1AEAB9BC4();
  *v6 = v0;
  v6[1] = sub_1AEAE4C58;

  return sub_1AEAE3254(v0 + 16, &unk_1AEB03998, v5, AssociatedTypeWitness, &type metadata for CodableSCAError, AssociatedConformanceWitness, v9, v10);
}

uint64_t sub_1AEAE4C58()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1AEAE96C0, v3, v2);
}

uint64_t MessageHandlers.findAndInvokeHandler(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_1AEAF8FEC();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(*v2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + 40;
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = *(v12 - 8);

      v13(&v20, a1);

      if (v21)
      {
        break;
      }

      ++v11;
      v12 += 16;
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    if (v21 == 1)
    {
      goto LABEL_10;
    }

    return sub_1AEA49728(&v20, v19);
  }

  else
  {
LABEL_6:
    v14 = sub_1AEA4351C();
    (*(v5 + 16))(v8, v14, v4);
    v15 = sub_1AEAF8FCC();
    v16 = sub_1AEAF9A9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1AEA3F000, v15, v16, "Couldn't find handler for received message!", v17, 2u);
      MEMORY[0x1B270E620](v17, -1, -1);
    }

    result = (*(v5 + 8))(v8, v4);
LABEL_10:
    v18 = v19;
    *(v19 + 32) = 0;
    *v18 = 0u;
    v18[1] = 0u;
  }

  return result;
}

uint64_t sub_1AEAE4FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AEAFA2BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AEAE5038(uint64_t a1)
{
  v2 = sub_1AEAE7FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE5074(uint64_t a1)
{
  v2 = sub_1AEAE7FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableSCAError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAE7FA4();
  sub_1AEAFA42C();
  sub_1AEAFA20C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CodableSCAError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAE7FA4();
  sub_1AEAFA41C();
  if (!v2)
  {
    v9 = sub_1AEAFA12C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AEAE5354(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAE7FA4();
  sub_1AEAFA42C();
  sub_1AEAFA20C();
  return (*(v3 + 8))(v5, v2);
}

void sub_1AEAE548C(void (*a1)(void))
{
  a1();
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    if (swift_dynamicCast())
    {

      type metadata accessor for SCAError(0);
      sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
      sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
      sub_1AEAF8C3C();
      swift_willThrow();
    }

    else
    {

      swift_willThrow();
    }
  }
}

uint64_t CodableResult.get()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v18 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v13);
  }

  v15 = *(v5 + 32);
  v15(v11, v13, v4);
  (*(v5 + 16))(v8, v11, v4);
  if (sub_1AEAFA28C())
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    swift_allocError();
    v15(v17, v8, v4);
  }

  swift_willThrow();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1AEAE5828(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1AEAE592C(char a1)
{
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](a1 & 1);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAE5974(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1AEAE59A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1AEAFA2BC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1AEAE5A2C()
{
  sub_1AEAFA3BC();
  sub_1AEAE5904(v2, *v0);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAE5A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEAE5828(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEAE5AB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AEAE5B08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AEAE5B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEAE59A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AEAE5B88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AEAE5BDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AEAE5C30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AEAE5C84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CodableResult.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v61 = a2[2];
  v4 = v61;
  v62 = v3;
  v63 = v5;
  v64 = v6;
  v10 = v5;
  v58 = a1;
  v59 = v5;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v50 = type metadata accessor for CodableResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1AEAFA25C();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v39 - v12;
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v4;
  v62 = v3;
  v63 = v10;
  v64 = v6;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v15 = type metadata accessor for CodableResult.SuccessCodingKeys();
  v16 = swift_getWitnessTable();
  v43 = v15;
  v41 = v16;
  v46 = sub_1AEAFA25C();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v39 - v17;
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v6;
  v57 = v4;
  v61 = v4;
  v62 = v3;
  v54 = v3;
  v55 = v8;
  v63 = v59;
  v64 = v6;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  type metadata accessor for CodableResult.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_1AEAFA25C();
  v59 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v39 - v25;
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  sub_1AEAFA42C();
  (*(v20 + 16))(v23, v60, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v51;
    v28 = v47;
    v29 = v54;
    (*(v51 + 32))(v47, v23, v54);
    LOBYTE(v61) = 1;
    v30 = v49;
    v31 = v24;
    sub_1AEAFA19C();
    v32 = v53;
    sub_1AEAFA22C();
    (*(v52 + 8))(v30, v32);
    (*(v27 + 8))(v28, v29);
    v24 = v31;
  }

  else
  {
    v33 = v44;
    v34 = v40;
    v35 = v57;
    (*(v44 + 32))(v40, v23, v57);
    LOBYTE(v61) = 0;
    v36 = v42;
    sub_1AEAFA19C();
    v37 = v46;
    sub_1AEAFA22C();
    (*(v45 + 8))(v36, v37);
    (*(v33 + 8))(v34, v35);
  }

  return (*(v59 + 8))(v26, v24);
}

uint64_t CodableResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v87 = a1;
  v73 = a9;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v70 = type metadata accessor for CodableResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v62 = sub_1AEAFA18C();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v71 = &v56 - v16;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v17 = type metadata accessor for CodableResult.SuccessCodingKeys();
  v18 = swift_getWitnessTable();
  v67 = v17;
  v66 = v18;
  v60 = sub_1AEAFA18C();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v68 = &v56 - v19;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  type metadata accessor for CodableResult.CodingKeys();
  v78 = swift_getWitnessTable();
  v74 = sub_1AEAFA18C();
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v21 = &v56 - v20;
  v63 = a2;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v76 = a3;
  v65 = a4;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v64 = a6;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v22 = type metadata accessor for CodableResult();
  v72 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v56 - v29;
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v75 = v21;
  v31 = v79;
  sub_1AEAFA41C();
  if (!v31)
  {
    v58 = v24;
    v78 = v27;
    v57 = v30;
    v79 = v22;
    v32 = v75;
    v33 = v74;
    *&v80 = sub_1AEAFA17C();
    sub_1AEAF975C();
    swift_getWitnessTable();
    *&v82 = sub_1AEAF9CEC();
    *(&v82 + 1) = v34;
    *&v83 = v35;
    *(&v83 + 1) = v36;
    sub_1AEAF9CDC();
    swift_getWitnessTable();
    sub_1AEAF9A2C();
    v37 = v80;
    if (v80 == 2 || (v56 = v82, v80 = v82, v81 = v83, (sub_1AEAF9A3C() & 1) == 0))
    {
      v46 = sub_1AEAF9E7C();
      swift_allocError();
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91C8);
      *v48 = v79;
      sub_1AEAFA0BC();
      sub_1AEAF9E6C();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
      swift_willThrow();
      (*(v77 + 8))(v32, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37)
      {
        LOBYTE(v80) = 1;
        v38 = v71;
        v39 = v33;
        sub_1AEAFA0AC();
        v41 = v72;
        v40 = v73;
        v42 = v77;
        v43 = v62;
        sub_1AEAFA14C();
        (*(v61 + 8))(v38, v43);
        (*(v42 + 8))(v32, v39);
        swift_unknownObjectRelease();
        v44 = v58;
      }

      else
      {
        LOBYTE(v80) = 0;
        v49 = v68;
        v50 = v33;
        sub_1AEAFA0AC();
        v41 = v72;
        v40 = v73;
        v51 = v77;
        v52 = v60;
        sub_1AEAFA14C();
        (*(v59 + 8))(v49, v52);
        (*(v51 + 8))(v32, v50);
        swift_unknownObjectRelease();
        v44 = v78;
      }

      v45 = v79;
      swift_storeEnumTagMultiPayload();
      v54 = *(v41 + 32);
      v55 = v57;
      v54(v57, v44, v45);
      v54(v40, v55, v45);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t sub_1AEAE6B54(uint64_t *a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;

  sub_1AEAF904C();
}

uint64_t sub_1AEAE6BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AEAE6BF8, 0, 0);
}

uint64_t sub_1AEAE6BF8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_1AEAE6D1C;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0x5F28646E65536373, 0xEA0000000000293ALL, sub_1AEAE808C, v3, AssociatedTypeWitness);
}

uint64_t sub_1AEAE6D1C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEAE6E58, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AEAE6E58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEAE6EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  v9 = sub_1AEAF97AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_1AEAE72A0(a3, sub_1AEAE8A0C, v14, a4, a5);
}

uint64_t sub_1AEAE7064(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AEAFA40C();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_1AEAF978C();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_1AEAF979C();
  }
}

uint64_t sub_1AEAE72A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[7] = a3;
  v20[5] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  v10 = sub_1AEAFA40C();
  v20[2] = *(v10 - 8);
  v20[3] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v20[1] = v20 - v11;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v20[4] = a2;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();

  v20[8] = AssociatedTypeWitness;
  v20[9] = v13;
  v20[10] = AssociatedConformanceWitness;
  v20[11] = v15;
  v20[12] = v16;
  v20[13] = v17;
  v20[14] = v18;
  type metadata accessor for CodableResult();
  swift_getWitnessTable();
  sub_1AEAF905C();
}

uint64_t sub_1AEAE7570(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  v8 = sub_1AEAFA40C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  v15 = a4;
  v16 = a5;
  v17 = a1;
  _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_Gxyq_YKXE_tcfC(sub_1AEAE898C, &v13 - v10);
  v14(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AEAE76E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = a1;
  v16[0] = swift_getAssociatedTypeWitness();
  v16[1] = swift_getAssociatedTypeWitness();
  v16[2] = swift_getAssociatedConformanceWitness();
  v16[3] = swift_getAssociatedConformanceWitness();
  v16[4] = swift_getAssociatedConformanceWitness();
  v16[5] = swift_getAssociatedConformanceWitness();
  v16[6] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for CodableResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  v3 = sub_1AEAFA40C();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  (*(v10 + 16))(v6, v15, v3);
  v11 = v16[8];
  result = sub_1AEA61604(v3, v16, v9);
  if (!v11)
  {
    CodableResult.get()(v2, v14);
    return (*(v7 + 8))(v9, v2);
  }

  return result;
}

uint64_t sub_1AEAE79AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v25[1] = a4;
  v6 = sub_1AEAF928C();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v30 = AssociatedTypeWitness;
  v31 = v10;
  v32 = AssociatedConformanceWitness;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v36 = v14;
  v15 = type metadata accessor for CodableResult();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - v17;
  v19 = v8;
  v20 = v37;
  result = sub_1AEAF909C();
  if (!v20)
  {
    v37 = v16;
    v22 = v26;
    v23 = v27;
    swift_getWitnessTable();
    sub_1AEAF927C();
    v24 = (*(v22 + 8))(v19, v23);
    MEMORY[0x1EEE9AC00](v24);
    v25[-4] = a2;
    v25[-3] = a3;
    v25[-2] = v18;
    sub_1AEAE548C(sub_1AEAE80A4);
    return (*(v37 + 8))(v18, v15);
  }

  return result;
}

void *sub_1AEAE7CE0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1AEAE7EA8(uint64_t a1, uint64_t *a2)
{
  v5 = (*(v2 + 32))();
  if (v3)
  {
    v6 = v5;
    type metadata accessor for SCAError(0);
    sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
    *a2 = sub_1AEAF8C2C();
    sub_1AEAB9BC4();
    swift_willThrowTypedImpl();
  }
}

unint64_t sub_1AEAE7FA4()
{
  result = qword_1EB5F2718[0];
  if (!qword_1EB5F2718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2718);
  }

  return result;
}

uint64_t sub_1AEAE80A4@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v1 = type metadata accessor for CodableResult();
  return CodableResult.get()(v1, a1);
}

uint64_t sub_1AEAE8240()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AEAE82BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1AEAE83E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t get_enum_tag_for_layout_string_24SensitiveContentAnalysis15MessageHandlersV8Response33_DF118A8FE327A4DC5D744F45527CC1FCLLO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AEAE85C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEAE8618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1AEAE867C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1AEAE86DC()
{
  result = qword_1EB5F2A20[0];
  if (!qword_1EB5F2A20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2A20);
  }

  return result;
}

unint64_t sub_1AEAE8830()
{
  result = qword_1EB5F2E30;
  if (!qword_1EB5F2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2E30);
  }

  return result;
}

unint64_t sub_1AEAE8888()
{
  result = qword_1EB5F2E38[0];
  if (!qword_1EB5F2E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2E38);
  }

  return result;
}

unint64_t sub_1AEAE88E0()
{
  result = qword_1EB5F2EC0;
  if (!qword_1EB5F2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2EC0);
  }

  return result;
}

unint64_t sub_1AEAE8938()
{
  result = qword_1EB5F2EC8[0];
  if (!qword_1EB5F2EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2EC8);
  }

  return result;
}

void sub_1AEAE898C(void *a1)
{
  sub_1AEAE548C(sub_1AEAE89EC);
  if (v1)
  {
    *a1 = v1;
  }
}

uint64_t sub_1AEAE8A0C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  v2 = sub_1AEAF97AC();
  return sub_1AEAE7064(a1, v2);
}

uint64_t sub_1AEAE8AE0()
{
  v2 = v0[4];
  v3 = (*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(sub_1AEAF928C() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[6];
  v8 = v0[7];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1AEA63D38;

  return sub_1AEAE4960(v9, v10, v11, v7, v8, v0 + v3, v0 + v6, v2);
}

uint64_t sub_1AEAE8C30(uint64_t a1, uint64_t a2)
{
  v6 = (*(*(v2[2] - 8) + 80) + 48) & ~*(*(v2[2] - 8) + 80);
  v7 = v2[4];
  v8 = v2[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1AEA63D38;

  return sub_1AEAE42C0(a1, v7, v8, v2 + v6, v9, v10, a2);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B270E620);
  }

  return result;
}

uint64_t sub_1AEAE8D90(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v9 = *(sub_1AEAF928C() - 8);
  return sub_1AEAE4690(v2[4], v2[5], v2 + v8, v2 + ((v8 + v7 + *(v9 + 80)) & ~*(v9 + 80)), v5, v6, a1, a2);
}

uint64_t objectdestroy_92Tm()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1AEAF928C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1AEAE8FC8()
{
  v2 = v0[4];
  v3 = (*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(sub_1AEAF928C() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[6];
  v8 = v0[7];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1AEA5E1AC;

  return sub_1AEAE2D14(v9, v10, v11, v7, v8, v0 + v3, v0 + v6, v2);
}

uint64_t objectdestroy_106Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEAE91D4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  v9 = v2[4];
  v10 = v2[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1AEA5E1AC;

  return sub_1AEAE28FC(a1, v9, v10, v2 + v8, v6, v7, a2);
}

uint64_t objectdestroy_89Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1AEAF928C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1AEAE9420()
{
  sub_1AEAF928C();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1AEAE207C(sub_1AEAE96A0, AssociatedTypeWitness, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1AEAF926C();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1AEAE96DC(uint64_t a1)
{
  v2 = sub_1AEAEA62C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE9718(uint64_t a1)
{
  v2 = sub_1AEAEA62C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AEAE9754()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6465737361707962;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000018;
    if (v1 == 4)
    {
      v6 = 0xD000000000000017;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    if (v1 != 2)
    {
      v2 = 0xD00000000000001DLL;
    }

    v3 = 0xD000000000000029;
    if (!*v0)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1AEAE985C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEAEE2BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEAE9890(uint64_t a1)
{
  v2 = sub_1AEAEA5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE98CC(uint64_t a1)
{
  v2 = sub_1AEAEA5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAE9908(uint64_t a1)
{
  v2 = sub_1AEAEA77C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE9944(uint64_t a1)
{
  v2 = sub_1AEAEA77C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAE9980(uint64_t a1)
{
  v2 = sub_1AEAEA6D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE99BC(uint64_t a1)
{
  v2 = sub_1AEAEA6D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAE99F8(uint64_t a1)
{
  v2 = sub_1AEAEA680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE9A34(uint64_t a1)
{
  v2 = sub_1AEAEA680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAE9A70(uint64_t a1)
{
  v2 = sub_1AEAEA7D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE9AAC(uint64_t a1)
{
  v2 = sub_1AEAEA7D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAE9AE8(uint64_t a1)
{
  v2 = sub_1AEAEA878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE9B24(uint64_t a1)
{
  v2 = sub_1AEAEA878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAE9B60(uint64_t a1)
{
  v2 = sub_1AEAEA8CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE9B9C(uint64_t a1)
{
  v2 = sub_1AEAEA8CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAE9BD8(uint64_t a1)
{
  v2 = sub_1AEAEA824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAE9C14(uint64_t a1)
{
  v2 = sub_1AEAEA824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Entitlements.Error.encode(to:)(void *a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A90);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A98);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AA0);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v43 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AA8);
  v55 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v43 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AB0);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AB8);
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AC0);
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AC8);
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AD0);
  v19 = *(v18 - 8);
  v66 = v18;
  v67 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - v20;
  v22 = *v1;
  *&v65 = v1[1];
  *(&v65 + 1) = v22;
  v23 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAEA5D8();
  v24 = v21;
  sub_1AEAFA42C();
  v25 = v23 >> 5;
  if (v23 >> 5 <= 1)
  {
    v30 = v62;
    v31 = v63;
    v32 = v10;
    v33 = v64;
    if (!v25)
    {
      LOBYTE(v68) = 2;
      sub_1AEAEA824();
      v27 = v66;
      v28 = v24;
      sub_1AEAFA19C();
      sub_1AEAFA1DC();
      (*(v30 + 8))(v12, v32);
      return (*(v67 + 8))(v28, v27);
    }

    LOBYTE(v68) = 4;
    sub_1AEAEA77C();
    v36 = v66;
    v37 = v24;
    sub_1AEAFA19C();
    v68 = *(&v65 + 1);
    v69 = v65;
    v70 = v23 & 1;
    sub_1AEAEA728();
    sub_1AEAFA22C();
    (*(v55 + 8))(v31, v33);
    return (*(v67 + 8))(v37, v36);
  }

  if (v25 == 2)
  {
    LOBYTE(v68) = 5;
    sub_1AEAEA6D4();
    v35 = v56;
    v36 = v66;
    v37 = v21;
    sub_1AEAFA19C();
    v68 = *(&v65 + 1);
    v69 = v65;
    v70 = v23 & 1;
    sub_1AEAEA728();
    v38 = v58;
    sub_1AEAFA22C();
    (*(v57 + 8))(v35, v38);
    return (*(v67 + 8))(v37, v36);
  }

  if (v25 == 3)
  {
    LOBYTE(v68) = 6;
    sub_1AEAEA680();
    v26 = v59;
    v27 = v66;
    v28 = v21;
    sub_1AEAFA19C();
    v68 = *(&v65 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
    sub_1AEA83BD8(&qword_1EB5E8C58);
    v29 = v61;
    sub_1AEAFA22C();
    (*(v60 + 8))(v26, v29);
    return (*(v67 + 8))(v28, v27);
  }

  if (v65 == 0 && v23 == 128)
  {
    LOBYTE(v68) = 0;
    sub_1AEAEA8CC();
    v39 = v66;
    sub_1AEAFA19C();
    (*(v53 + 8))(v17, v54);
  }

  else if (v65 == __PAIR128__(1, 0) && v23 == 128)
  {
    LOBYTE(v68) = 1;
    sub_1AEAEA878();
    v40 = v50;
    v39 = v66;
    sub_1AEAFA19C();
    (*(v51 + 8))(v40, v52);
  }

  else if (v65 == __PAIR128__(2, 0) && v23 == 128)
  {
    LOBYTE(v68) = 3;
    sub_1AEAEA7D0();
    v41 = v44;
    v39 = v66;
    sub_1AEAFA19C();
    (*(v45 + 8))(v41, v46);
  }

  else
  {
    LOBYTE(v68) = 7;
    sub_1AEAEA62C();
    v42 = v47;
    v39 = v66;
    sub_1AEAFA19C();
    (*(v48 + 8))(v42, v49);
  }

  return (*(v67 + 8))(v21, v39);
}

unint64_t sub_1AEAEA5D8()
{
  result = qword_1EB5F2F98;
  if (!qword_1EB5F2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2F98);
  }

  return result;
}

unint64_t sub_1AEAEA62C()
{
  result = qword_1EB5F2FA0;
  if (!qword_1EB5F2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2FA0);
  }

  return result;
}

unint64_t sub_1AEAEA680()
{
  result = qword_1EB5F2FA8;
  if (!qword_1EB5F2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2FA8);
  }

  return result;
}

unint64_t sub_1AEAEA6D4()
{
  result = qword_1EB5F2FB0;
  if (!qword_1EB5F2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2FB0);
  }

  return result;
}

unint64_t sub_1AEAEA728()
{
  result = qword_1EB5E9AD8;
  if (!qword_1EB5E9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9AD8);
  }

  return result;
}

unint64_t sub_1AEAEA77C()
{
  result = qword_1EB5F2FB8;
  if (!qword_1EB5F2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2FB8);
  }

  return result;
}

unint64_t sub_1AEAEA7D0()
{
  result = qword_1EB5F2FC0;
  if (!qword_1EB5F2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2FC0);
  }

  return result;
}

unint64_t sub_1AEAEA824()
{
  result = qword_1EB5F2FC8;
  if (!qword_1EB5F2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2FC8);
  }

  return result;
}

unint64_t sub_1AEAEA878()
{
  result = qword_1EB5F2FD0;
  if (!qword_1EB5F2FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2FD0);
  }

  return result;
}

unint64_t sub_1AEAEA8CC()
{
  result = qword_1EB5F2FD8;
  if (!qword_1EB5F2FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2FD8);
  }

  return result;
}

uint64_t Entitlements.Error.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AE0);
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AE8);
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AF0);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9AF8);
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B00);
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v63 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B08);
  v74 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v85 = &v63 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B10);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B18);
  v70 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B20);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v63 - v22;
  v24 = a1[3];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1AEAEA5D8();
  v25 = v92;
  sub_1AEAFA41C();
  v26 = v25;
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v67 = v19;
  v66 = v17;
  v27 = v88;
  v28 = v89;
  v29 = v90;
  v69 = v21;
  v30 = v91;
  v68 = v20;
  v92 = v23;
  v31 = sub_1AEAFA17C();
  if (*(v31 + 16) != 1 || (v32 = *(v31 + 32), v32 == 8))
  {
    v36 = sub_1AEAF9E7C();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91C8);
    *v38 = &type metadata for Entitlements.Error;
    v39 = v68;
    v40 = v92;
    sub_1AEAFA0BC();
    sub_1AEAF9E6C();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v69 + 8))(v40, v39);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  if (*(v31 + 32) > 3u)
  {
    v42 = v68;
    v65 = v31;
    if (v32 > 5)
    {
      v48 = v92;
      if (v32 == 6)
      {
        LOBYTE(v93) = 6;
        sub_1AEAEA680();
        v49 = v86;
        sub_1AEAFA0AC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
        sub_1AEA83BD8(&qword_1EB5E8C50);
        v50 = v84;
        sub_1AEAFA14C();
        v64 = 0;
        (*(v83 + 8))(v49, v50);
        (*(v69 + 8))(v48, v42);
        swift_unknownObjectRelease();
        v58 = 0;
        v26 = v93;
        v59 = 96;
      }

      else
      {
        LOBYTE(v93) = 7;
        sub_1AEAEA62C();
        v57 = v87;
        sub_1AEAFA0AC();
        v64 = 0;
        (*(v81 + 8))(v57, v82);
        (*(v69 + 8))(v48, v42);
        swift_unknownObjectRelease();
        v58 = 0;
        v59 = 0x80;
        v26 = 3;
      }
    }

    else
    {
      v43 = v92;
      if (v32 == 4)
      {
        LOBYTE(v93) = 4;
        sub_1AEAEA77C();
        sub_1AEAFA0AC();
        v44 = v69;
        sub_1AEAEB76C();
        v45 = v77;
        sub_1AEAFA14C();
        v64 = 0;
        (*(v78 + 8))(v28, v45);
        (*(v44 + 8))(v43, v42);
        swift_unknownObjectRelease();
        v26 = v93;
        v58 = v94;
        v59 = v95 | 0x20;
      }

      else
      {
        LOBYTE(v93) = 5;
        sub_1AEAEA6D4();
        sub_1AEAFA0AC();
        v53 = v69;
        sub_1AEAEB76C();
        v54 = v80;
        sub_1AEAFA14C();
        v64 = 0;
        (*(v79 + 8))(v29, v54);
        (*(v53 + 8))(v43, v42);
        swift_unknownObjectRelease();
        v26 = v93;
        v58 = v94;
        v59 = v95 | 0x40;
      }
    }
  }

  else if (*(v31 + 32) > 1u)
  {
    if (v32 == 2)
    {
      LOBYTE(v93) = 2;
      sub_1AEAEA824();
      v46 = v85;
      v47 = v68;
      sub_1AEAFA0AC();
      v60 = v71;
      v61 = sub_1AEAFA0FC();
      v64 = 0;
      v26 = v61;
      v58 = v62;
      (*(v74 + 8))(v46, v60);
      (*(v69 + 8))(v92, v47);
      swift_unknownObjectRelease();
      v59 = 0;
    }

    else
    {
      LOBYTE(v93) = 3;
      sub_1AEAEA7D0();
      v55 = v68;
      v56 = v92;
      sub_1AEAFA0AC();
      v64 = 0;
      (*(v75 + 8))(v27, v76);
      (*(v69 + 8))(v56, v55);
      swift_unknownObjectRelease();
      v58 = 0;
      v59 = 0x80;
      v26 = 2;
    }
  }

  else if (*(v31 + 32))
  {
    LOBYTE(v93) = 1;
    sub_1AEAEA878();
    v51 = v68;
    v52 = v92;
    sub_1AEAFA0AC();
    v64 = 0;
    (*(v72 + 8))(v16, v73);
    (*(v69 + 8))(v52, v51);
    swift_unknownObjectRelease();
    v58 = 0;
    v59 = 0x80;
    v26 = 1;
  }

  else
  {
    LOBYTE(v93) = 0;
    sub_1AEAEA8CC();
    v33 = v67;
    v34 = v68;
    v35 = v92;
    sub_1AEAFA0AC();
    v64 = 0;
    (*(v70 + 8))(v33, v66);
    (*(v69 + 8))(v35, v34);
    swift_unknownObjectRelease();
    v58 = 0;
    v59 = 0x80;
  }

  *v30 = v26;
  *(v30 + 8) = v58;
  *(v30 + 16) = v59;
  return __swift_destroy_boxed_opaque_existential_1(v96);
}

unint64_t sub_1AEAEB76C()
{
  result = qword_1EB5E9B28;
  if (!qword_1EB5E9B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9B28);
  }

  return result;
}

uint64_t Entitlements.Key.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
    sub_1AEAB7D3C();
    v2 = sub_1AEAF955C();
    MEMORY[0x1B270CB50](v2);

    MEMORY[0x1B270CB50](62, 0xE100000000000000);
    return 60;
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1AEAEB8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1AEAFA2BC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AEAEB938()
{
  if (*v0)
  {
    return 29295;
  }

  else
  {
    return 0x7463617865;
  }
}

uint64_t sub_1AEAEB964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463617865 && a2 == 0xE500000000000000;
  if (v6 || (sub_1AEAFA2BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AEAFA2BC();

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

uint64_t sub_1AEAEBA34(uint64_t a1)
{
  v2 = sub_1AEAEE54C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAEBA70(uint64_t a1)
{
  v2 = sub_1AEAEE54C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAEBAAC(uint64_t a1)
{
  v2 = sub_1AEAEE5F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAEBAE8(uint64_t a1)
{
  v2 = sub_1AEAEE5F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAEBB24(uint64_t a1)
{
  v2 = sub_1AEAEE5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAEBB60(uint64_t a1)
{
  v2 = sub_1AEAEE5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Entitlements.Key.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B30);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v19 = v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B38);
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B40);
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = v17 - v9;
  v11 = v1[1];
  v22 = *v1;
  v17[1] = v11;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAEE54C();
  sub_1AEAFA42C();
  if (v12)
  {
    v26 = 1;
    sub_1AEAEE5A0();
    v13 = v19;
    v14 = v23;
    sub_1AEAFA19C();
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
    sub_1AEA83BD8(&qword_1EB5E8C58);
    v15 = v21;
    sub_1AEAFA22C();
    (*(v20 + 8))(v13, v15);
  }

  else
  {
    v25 = 0;
    sub_1AEAEE5F4();
    v14 = v23;
    sub_1AEAFA19C();
    sub_1AEAFA1DC();
    (*(v18 + 8))(v7, v5);
  }

  return (*(v8 + 8))(v10, v14);
}

uint64_t Entitlements.Key.hashValue.getter()
{
  sub_1AEAFA3BC();
  Entitlements.Key.hash(into:)();
  return sub_1AEAFA3FC();
}

uint64_t Entitlements.Key.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B48);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B50);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B58);
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v28 - v10;
  v12 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1AEAEE54C();
  v13 = v33;
  sub_1AEAFA41C();
  if (!v13)
  {
    v14 = v31;
    v33 = v9;
    v15 = sub_1AEAFA17C();
    if (*(v15 + 16) == 1)
    {
      v16 = v11;
      v17 = v32;
      v36 = *(v15 + 32);
      if (v36)
      {
        v38 = 1;
        sub_1AEAEE5A0();
        sub_1AEAFA0AC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
        sub_1AEA83BD8(&qword_1EB5E8C50);
        sub_1AEAFA14C();
        (*(v30 + 8))(v5, v3);
        (*(v33 + 8))(v16, v17);
        swift_unknownObjectRelease();
        v23 = 0;
        v24 = v35;
      }

      else
      {
        v30 = v15;
        v37 = 0;
        sub_1AEAEE5F4();
        v22 = v16;
        sub_1AEAFA0AC();
        v24 = sub_1AEAFA0FC();
        v23 = v26;
        (*(v14 + 8))(v8, v6);
        (*(v33 + 8))(v22, v17);
        swift_unknownObjectRelease();
      }

      v27 = v29;
      *v29 = v24;
      v27[1] = v23;
      *(v27 + 16) = v36;
    }

    else
    {
      v18 = sub_1AEAF9E7C();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91C8);
      *v20 = &type metadata for Entitlements.Key;
      v21 = v32;
      sub_1AEAFA0BC();
      sub_1AEAF9E6C();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
      swift_willThrow();
      (*(v33 + 8))(v11, v21);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

void *sub_1AEAEC48C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1AEAEC49C()
{
  sub_1AEAFA3BC();
  Entitlements.Key.hash(into:)();
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAEC4F4()
{
  v1 = *v0;
  if (v0[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
    sub_1AEAB7D3C();
    v2 = sub_1AEAF955C();
    MEMORY[0x1B270CB50](v2);

    MEMORY[0x1B270CB50](62, 0xE100000000000000);
    return 60;
  }

  else
  {
  }

  return v1;
}

uint64_t static Entitlements.Source.auditToken(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for SecTask(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_Gxyq_YKXE_tcfC(sub_1AEAEE648, &v13);
  v10 = v13;
  v11 = v14;
  result = swift_allocObject();
  *(result + 16) = v10;
  *(result + 24) = v11;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = sub_1AEAEE6E0;
  *(a5 + 40) = result;
  *(a5 + 48) = 1;
  return result;
}

_OWORD *sub_1AEAEC6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *v3;
  v5 = *(v3 + 48);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (*(v4 + 16) && (v16 = sub_1AEA8EECC(a1, a2), (v17 & 1) != 0))
      {
        sub_1AEA45E18(*(v4 + 56) + 32 * v16, v23);
        sub_1AEA45304(v23, v24);
        return sub_1AEA45304(v24, a3);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1AEAFC470;
        *(v19 + 32) = a1;
        *(v19 + 40) = a2;
        sub_1AEAEE758();
        swift_allocError();
        *v20 = v19;
        *(v20 + 8) = 0;
        *(v20 + 16) = 96;
        swift_willThrow();
      }
    }

    else
    {
      sub_1AEAEE758();
      swift_allocError();
      *v18 = xmmword_1AEB039D0;
      *(v18 + 16) = 0x80;
      return swift_willThrow();
    }
  }

  else
  {
    v25 = a2;
    v6 = *(v3 + 8);
    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    if (v5)
    {
      v11 = *(v3 + 32);
    }

    else
    {
      v11 = v4;
    }

    v21 = v11;
    sub_1AEA43B10(v4, v6, v7, v8, v9, v10, v5);
    v21(a1, v25);
    return sub_1AEA44C1C(v4, v6, v7, v8, v9, v10, v5);
  }
}

uint64_t Entitlements.Source.hashValue.getter()
{
  sub_1AEAFA3BC();
  sub_1AEA45690();
  sub_1AEAF954C();
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAEC93C()
{
  sub_1AEAFA3BC();
  sub_1AEAF954C();
  return sub_1AEAFA3FC();
}

void sub_1AEAEC9B0(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 48) > 1u)
  {
    if (*(v1 + 48) != 2)
    {
      v4 = 4;
      goto LABEL_12;
    }

    MEMORY[0x1B270D930](3);
    v8 = sub_1AEAF94FC();
    sub_1AEAF9C1C();
  }

  else
  {
    if (!*(v1 + 48))
    {
      v4 = 1;
LABEL_12:
      MEMORY[0x1B270D930](v4);
      return;
    }

    v6 = v1[2];
    v5 = v1[3];
    v7 = v1[1];
    MEMORY[0x1B270D930](2);

    MEMORY[0x1EEE6C728](a1, v3, v7, v6, v5);
  }
}

double sub_1AEAECAD8()
{
  type metadata accessor for SecTask(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_Gxyq_YKXE_tcfC(sub_1AEA43A20, &v4);
  v0 = v4;
  v1 = v5;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  qword_1EB5F2F58 = sub_1AEAEFB50;
  unk_1EB5F2F60 = v2;
  result = 0.0;
  xmmword_1EB5F2F68 = 0u;
  *&qword_1EB5F2F78 = 0u;
  byte_1EB5F2F88 = 0;
  return result;
}

uint64_t static Entitlements.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB5F2F50 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = qword_1EB5F2F58;
  v3 = unk_1EB5F2F60;
  v4 = xmmword_1EB5F2F68;
  v5 = qword_1EB5F2F78;
  v6 = unk_1EB5F2F80;
  *a1 = qword_1EB5F2F58;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = byte_1EB5F2F88;
  *(a1 + 48) = byte_1EB5F2F88;

  return sub_1AEA43B10(v2, v3, v4, *(&v4 + 1), v5, v6, v7);
}

double Entitlements.init(testDict:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) = 2;
  return result;
}

uint64_t Entitlements.value<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v43 = a2;
  v30 = a4;
  v6 = sub_1AEAF9C3C();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v28 - v7;
  v8 = *(v4 + 8);
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v13 = *(v4 + 32);
  v12 = *(v4 + 40);
  v14 = *(v4 + 48);
  v35 = *v4;
  v9 = v35;
  v36 = v8;
  v37 = v11;
  v38 = v10;
  v39 = v13;
  v40 = v12;
  v41 = v14;
  sub_1AEA43B10(v35, v8, v11, v10, v13, v12, v14);
  v31 = a1;
  v15 = v34;
  sub_1AEAEC6E0(a1, v43, &v42);
  result = sub_1AEA44C1C(v9, v8, v11, v10, v13, v12, v14);
  if (!v15)
  {
    v18 = v28;
    v17 = v29;
    v20 = v30;
    v19 = v31;
    v21 = v43;
    v23 = v32;
    v22 = v33;
    v24 = swift_dynamicCast();
    v25 = *(*(v22 - 8) + 56);
    if (v24)
    {
      v26 = *(v22 - 8);
      v25(v23, 0, 1, v22);
      return (*(v26 + 32))(v20, v23, v22);
    }

    else
    {
      v25(v23, 1, 1, v22);
      (*(v18 + 8))(v23, v17);
      sub_1AEAEE758();
      swift_allocError();
      *v27 = v19;
      *(v27 + 8) = v21;
      *(v27 + 16) = 32;
      swift_willThrow();
    }
  }

  return result;
}

void Entitlements.check<A>(_:equals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AEAED444(v4, a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    if (swift_dynamicCast())
    {
      v8 = (v11 & 0xE0) == 0x80 && v9 == 3 && v10 == 0;
      if (v8 && v11 == 128)
      {

        return;
      }

      sub_1AEAEE81C(v9, v10, v11);
    }

    swift_willThrow();
  }
}

uint64_t sub_1AEAED444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Entitlements.value<A>(for:)(v12, v13, v14, v11);
  if (!v5)
  {
    if (sub_1AEAF957C())
    {
      return (*(v9 + 8))(v11, a5);
    }

    else
    {
      sub_1AEAEE758();
      swift_allocError();
      *v16 = a2;
      *(v16 + 8) = a3;
      *(v16 + 16) = 64;
      swift_willThrow();
      v17 = *(v9 + 8);

      return v17(v11, a5);
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Entitlements.check(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  object = a1._object;
  v13 = *v1;
  sub_1AEA43B10(*v1, v4, v5, v6, v7, v8, v9);
  v10 = v14[5];
  sub_1AEAEC6E0(countAndFlagsBits, object, v14);
  if (v10)
  {
    sub_1AEA44C1C(v3, v4, v5, v6, v7, v8, v9);
    v14[0] = v10;
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    if (swift_dynamicCast())
    {
      if ((v5 & 0xE0) == 0x80 && v13 == 3 && !v4 && v5 == 128)
      {

        return;
      }

      sub_1AEAEE81C(v13, v4, v5);
    }

    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_1AEA44C1C(v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t sub_1AEAEDB38()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1EB5F5CC8);
  __swift_project_value_buffer(v0, qword_1EB5F5CC8);
  return sub_1AEAF8FDC();
}

uint64_t sub_1AEAEDBB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9248);
  v40 = a2;
  result = sub_1AEAFA04C();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = (v22 + 32 * v21);
      if (v40)
      {
        sub_1AEA45304(v27, v43);
      }

      else
      {
        sub_1AEA45E18(v27, v43);
        sub_1AEA458E4();
      }

      sub_1AEAFA3BC();
      v42 = v25;
      if (v26)
      {
        MEMORY[0x1B270D930](1);
        MEMORY[0x1B270D930](*(v24 + 16));
        v28 = *(v24 + 16);
        if (v28)
        {
          v29 = v24 + 40;
          do
          {

            sub_1AEAF95DC();

            v29 += 16;
            --v28;
          }

          while (v28);
        }
      }

      else
      {
        MEMORY[0x1B270D930](0);
        sub_1AEAF95DC();
      }

      result = sub_1AEAFA3FC();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v16 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v16 = v42;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 24 * v15;
      *v17 = v24;
      *(v17 + 8) = v16;
      *(v17 + 16) = v26;
      result = sub_1AEA45304(v43, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v39;
      v12 = v41;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_40;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_40:
  *v3 = v7;
  return result;
}

void *sub_1AEAEDF18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9248);
  v2 = *v0;
  v3 = sub_1AEAFA03C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v26 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = 32 * v17;
        sub_1AEA45E18(*(v2 + 56) + 32 * v17, v27);
        v24 = *(v26 + 48) + v18;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        sub_1AEA45304(v27, (*(v26 + 56) + v23));
        result = sub_1AEA458E4();
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

        v1 = v25;
        v4 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AEAEE0D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1AEA484C0(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_1AEAFA3BC();

        sub_1AEAF95DC();
        v16 = sub_1AEAFA3FC();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_1AEAFA2BC() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1AEAEE2BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001AEB08F50 == a2;
  if (v3 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001AEB08F70 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001AEB08FA0 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001AEB08FD0 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001AEB08FF0 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001AEB09010 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001AEB09030 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465737361707962 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

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

unint64_t sub_1AEAEE54C()
{
  result = qword_1EB5F2FE0;
  if (!qword_1EB5F2FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2FE0);
  }

  return result;
}

unint64_t sub_1AEAEE5A0()
{
  result = qword_1EB5F2FE8;
  if (!qword_1EB5F2FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F2FE8);
  }

  return result;
}

unint64_t sub_1AEAEE5F4()
{
  result = qword_1EB5F2FF0[0];
  if (!qword_1EB5F2FF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F2FF0);
  }

  return result;
}

uint64_t sub_1AEAEE648@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  *v9.val = *(v2 + 16);
  *&v9.val[4] = v5;
  result = SecTaskCreateWithAuditToken(0, &v9);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    sub_1AEAEE758();
    v7 = swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0x80;
    result = swift_willThrow();
    *a1 = v7;
  }

  return result;
}

void sub_1AEAEE6E0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_1AEA47970(a1, a2, a3);
  }
}

unint64_t sub_1AEAEE758()
{
  result = qword_1ED98A5C8;
  if (!qword_1ED98A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A5C8);
  }

  return result;
}

uint64_t sub_1AEAEE7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AEAEE81C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 <= 1)
  {
    if (a3 >> 5)
    {
      if (v3 != 1)
      {
        return result;
      }

      return sub_1AEA45ED0();
    }
  }

  if (v3 == 2)
  {
    return sub_1AEA45ED0();
  }

  if (v3 == 3)
  {
  }

  return result;
}

unint64_t sub_1AEAEE864()
{
  result = qword_1EB5E9B68;
  if (!qword_1EB5E9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9B68);
  }

  return result;
}

unint64_t sub_1AEAEE8C8()
{
  result = qword_1EB5E9B70;
  if (!qword_1EB5E9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9B70);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24SensitiveContentAnalysis12EntitlementsV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1AEAEE964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 17))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AEAEE9B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1AEAEEA1C(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_1AEAEEA58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AEAEEAA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1AEAEEAF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1AEAEEB48(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Entitlements.Error.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Entitlements.Error.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AEAEED74()
{
  result = qword_1EB5F3600[0];
  if (!qword_1EB5F3600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F3600);
  }

  return result;
}

unint64_t sub_1AEAEEDCC()
{
  result = qword_1EB5F3810[0];
  if (!qword_1EB5F3810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F3810);
  }

  return result;
}

unint64_t sub_1AEAEEE24()
{
  result = qword_1EB5F3A20[0];
  if (!qword_1EB5F3A20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F3A20);
  }

  return result;
}

unint64_t sub_1AEAEEE7C()
{
  result = qword_1EB5F3D30[0];
  if (!qword_1EB5F3D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F3D30);
  }

  return result;
}

unint64_t sub_1AEAEEED4()
{
  result = qword_1EB5F4140[0];
  if (!qword_1EB5F4140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4140);
  }

  return result;
}

unint64_t sub_1AEAEEF2C()
{
  result = qword_1EB5F4350[0];
  if (!qword_1EB5F4350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4350);
  }

  return result;
}

unint64_t sub_1AEAEEF84()
{
  result = qword_1EB5F4560[0];
  if (!qword_1EB5F4560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4560);
  }

  return result;
}

unint64_t sub_1AEAEEFDC()
{
  result = qword_1EB5F4770[0];
  if (!qword_1EB5F4770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4770);
  }

  return result;
}

unint64_t sub_1AEAEF034()
{
  result = qword_1EB5F4880;
  if (!qword_1EB5F4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4880);
  }

  return result;
}

unint64_t sub_1AEAEF08C()
{
  result = qword_1EB5F4888[0];
  if (!qword_1EB5F4888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4888);
  }

  return result;
}

unint64_t sub_1AEAEF0E4()
{
  result = qword_1EB5F4910;
  if (!qword_1EB5F4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4910);
  }

  return result;
}

unint64_t sub_1AEAEF13C()
{
  result = qword_1EB5F4918[0];
  if (!qword_1EB5F4918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4918);
  }

  return result;
}

unint64_t sub_1AEAEF194()
{
  result = qword_1EB5F49A0;
  if (!qword_1EB5F49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F49A0);
  }

  return result;
}

unint64_t sub_1AEAEF1EC()
{
  result = qword_1EB5F49A8[0];
  if (!qword_1EB5F49A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F49A8);
  }

  return result;
}

unint64_t sub_1AEAEF244()
{
  result = qword_1EB5F4A30;
  if (!qword_1EB5F4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4A30);
  }

  return result;
}

unint64_t sub_1AEAEF29C()
{
  result = qword_1EB5F4A38[0];
  if (!qword_1EB5F4A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4A38);
  }

  return result;
}

unint64_t sub_1AEAEF2F4()
{
  result = qword_1EB5F4AC0;
  if (!qword_1EB5F4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4AC0);
  }

  return result;
}

unint64_t sub_1AEAEF34C()
{
  result = qword_1EB5F4AC8[0];
  if (!qword_1EB5F4AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4AC8);
  }

  return result;
}

unint64_t sub_1AEAEF3A4()
{
  result = qword_1EB5F4B50;
  if (!qword_1EB5F4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4B50);
  }

  return result;
}

unint64_t sub_1AEAEF3FC()
{
  result = qword_1EB5F4B58[0];
  if (!qword_1EB5F4B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4B58);
  }

  return result;
}

unint64_t sub_1AEAEF454()
{
  result = qword_1EB5F4BE0;
  if (!qword_1EB5F4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4BE0);
  }

  return result;
}

unint64_t sub_1AEAEF4AC()
{
  result = qword_1EB5F4BE8[0];
  if (!qword_1EB5F4BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4BE8);
  }

  return result;
}

unint64_t sub_1AEAEF504()
{
  result = qword_1EB5F4C70;
  if (!qword_1EB5F4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4C70);
  }

  return result;
}

unint64_t sub_1AEAEF55C()
{
  result = qword_1EB5F4C78;
  if (!qword_1EB5F4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4C78);
  }

  return result;
}

unint64_t sub_1AEAEF5B4()
{
  result = qword_1EB5F4D00;
  if (!qword_1EB5F4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4D00);
  }

  return result;
}

unint64_t sub_1AEAEF60C()
{
  result = qword_1EB5F4D08[0];
  if (!qword_1EB5F4D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4D08);
  }

  return result;
}

unint64_t sub_1AEAEF664()
{
  result = qword_1EB5F4D90;
  if (!qword_1EB5F4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4D90);
  }

  return result;
}

unint64_t sub_1AEAEF6BC()
{
  result = qword_1EB5F4D98[0];
  if (!qword_1EB5F4D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4D98);
  }

  return result;
}

unint64_t sub_1AEAEF714()
{
  result = qword_1EB5F4E20;
  if (!qword_1EB5F4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4E20);
  }

  return result;
}

unint64_t sub_1AEAEF76C()
{
  result = qword_1EB5F4E28[0];
  if (!qword_1EB5F4E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4E28);
  }

  return result;
}

unint64_t sub_1AEAEF7C4()
{
  result = qword_1EB5F4EB0;
  if (!qword_1EB5F4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F4EB0);
  }

  return result;
}

unint64_t sub_1AEAEF81C()
{
  result = qword_1EB5F4EB8[0];
  if (!qword_1EB5F4EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F4EB8);
  }

  return result;
}

void sub_1AEAEF870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1AEA61E58(0, v1, 0);
    v3 = v2 + 56;
    v4 = sub_1AEAF9D6C();
    v5 = 0;
    v25 = v2 + 64;
    v26 = v1;
    v27 = v2 + 56;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v28 = v5;
      v29 = *(v2 + 36);

      v8 = sub_1AEAF958C();
      v9 = sub_1AEAF958C();
      v10 = v2;
      v11 = [v8 stringByAppendingPathComponent_];

      v12 = sub_1AEAF95BC();
      v14 = v13;

      v16 = *(v30 + 16);
      v15 = *(v30 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1AEA61E58((v15 > 1), v16 + 1, 1);
      }

      *(v30 + 16) = v16 + 1;
      v17 = v30 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v6 = 1 << *(v10 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v10;
      v3 = v27;
      v18 = *(v27 + 8 * v7);
      if ((v18 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v29 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v19 = v18 & (-2 << (v4 & 0x3F));
      if (v19)
      {
        v6 = __clz(__rbit64(v19)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v7 << 6;
        v21 = v7 + 1;
        v22 = (v25 + 8 * v7);
        while (v21 < (v6 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1AEA9B2DC(v4, v29, 0);
            v6 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_1AEA9B2DC(v4, v29, 0);
      }

LABEL_4:
      v5 = v28 + 1;
      v4 = v6;
      if (v28 + 1 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1AEAEFAF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    sub_1AEA45ED0();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCFeatures.check()()
{
  if ((SCFeatures.isEnabled.getter() & 1) == 0)
  {
    type metadata accessor for SCAError(0);
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    swift_willThrow();
  }
}

uint64_t static SCFeatures.withForcedFeatureFlags<A>(_:_:)(uint64_t a1)
{
  if (qword_1ED98D090 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x1EEE9AC00](a1);
  return sub_1AEAFA48C();
}

uint64_t static SCFeatures.withForcedFeatureFlags<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AEAEFD68, 0, 0);
}

uint64_t sub_1AEAEFD68()
{
  if (qword_1ED98D090 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1AEAEFEB8;
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v5, v0 + 16, &unk_1AEB04D70, v2, 0, 0, 0xD00000000000002DLL, 0x80000001AEB09130);
}

uint64_t sub_1AEAEFEB8()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEAF0008, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

SensitiveContentAnalysis::SCFeatures_optional __swiftcall SCFeatures.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1AEAF0044(unsigned __int8 a1)
{
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](a1);
  v2 = sub_1AEAFA3FC();

  return sub_1AEAF00B0(a1, v2);
}

unint64_t sub_1AEAF00B0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1AEAF0120(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA5E1AC;

  return sub_1AEA75D00(a1, v4);
}

uint64_t sub_1AEAF020C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1AEAF02C8;

  return MEMORY[0x1EEE6D8C8](v0 + 16, v2, v3);
}

uint64_t sub_1AEAF02C8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1AEAF03DC;
  }

  else
  {
    v2 = sub_1AEAF1398;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEAF03F4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1AEAF977C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[7] = v4;
  v3[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1AEAF0488, v4, v6);
}

uint64_t sub_1AEAF0488()
{
  v1 = v0[6];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1AEAF054C;
  v5 = v0[4];
  v6 = v0[5];

  return MEMORY[0x1EEE6D8D0](v0 + 2, v5, v6, v0 + 3, v2, v3);
}

uint64_t sub_1AEAF054C()
{
  v2 = *v1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1AEAF065C;
  }

  else
  {
    v5 = sub_1AEA6C4AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1AEAF0674(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AEAF0694, 0, 0);
}

uint64_t sub_1AEAF0694()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1AEAF0750;

  return MEMORY[0x1EEE6D8C8](v0 + 16, v2, v3);
}

uint64_t sub_1AEAF0750()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1AEAF0884;
  }

  else
  {
    v2 = sub_1AEAF0864;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEAF089C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[8] = a4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1AEAF977C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[9] = v6;
  v5[10] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1AEAF0938, v6, v8);
}

uint64_t sub_1AEAF0938()
{
  v1 = v0[7];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1AEAF09FC;
  v5 = v0[5];
  v6 = v0[6];

  return MEMORY[0x1EEE6D8D0](v0 + 2, v5, v6, v0 + 3, v2, v3);
}

uint64_t sub_1AEAF09FC()
{
  v2 = *v1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1AEAF0B30;
  }

  else
  {
    v5 = sub_1AEAF0B0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1AEAF0B54@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1AEAF98EC();
  return sub_1AEAF1368(v2);
}

uint64_t SCVideoStreamAnalyzer.analysisChanges.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9BB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9BB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  type metadata accessor for SCSensitivityAnalysis(0);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8790], v2);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9BC0);
  a1[4] = sub_1AEAF0FE8();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1AEAF990C();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 16))(v9, v12, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v9, v6);
  swift_allocObject();
  v15 = v18[1];
  swift_unknownObjectWeakInit();
  sub_1AEAF991C();
  aBlock[4] = sub_1AEAF11B4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AEAA1074;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);

  [v15 setAnalysisChangedHandler_];
  _Block_release(v16);

  return (*(v7 + 8))(v12, v6);
}

unint64_t sub_1AEAF0FE8()
{
  result = qword_1EB5E9BC8;
  if (!qword_1EB5E9BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E9BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9BC8);
  }

  return result;
}

void sub_1AEAF104C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9BE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v13 = a2;
  v14 = a1;
  v8 = a1;
  v9 = a2;
  v10 = type metadata accessor for SCSensitivityAnalysis(0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  Result.init(success:failure:)(&v14, &v13, v10, v11, MEMORY[0x1E69E7288], &v15);
  v12 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9BB8);
  sub_1AEAF992C();
  (*(v5 + 8))(v7, v4);
  sub_1AEA4F1AC(v12);
}

void sub_1AEAF11B4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9BB8);

  sub_1AEAF104C(a1, a2);
}

void sub_1AEAF1240()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setAnalysisChangedHandler_];
  }
}

unint64_t sub_1AEAF12A0()
{
  result = qword_1EB5E9BD0;
  if (!qword_1EB5E9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9BD0);
  }

  return result;
}

unint64_t sub_1AEAF1314()
{
  result = qword_1EB5E9BD8;
  if (!qword_1EB5E9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9BD8);
  }

  return result;
}

uint64_t XPCError.hashValue.getter()
{
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](0);
  return sub_1AEAFA3FC();
}

uint64_t ResumedConnection.proxy.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1AEAF9C3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-v6];
  v8 = [*v1 remoteObjectProxy];
  sub_1AEAF9CCC();
  swift_unknownObjectRelease();
  v9 = swift_dynamicCast();
  v10 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v9)
  {
    v11 = *(AssociatedTypeWitness - 8);
    v10(v7, 0, 1, AssociatedTypeWitness);
    return (*(v11 + 32))(a1, v7, AssociatedTypeWitness);
  }

  else
  {
    v10(v7, 1, 1, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    result = sub_1AEAFA01C();
    __break(1u);
  }

  return result;
}

uint64_t ResumedConnection.withSyncProxy<A>(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v33 = a3;
  v34 = a2;
  v29 = a5;
  v30 = *(a4 - 8);
  v31 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AEAF9C3C();
  v28 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - v13;
  v15 = *v5;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  aBlock[4] = sub_1AEAF1A90;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AEAF1AE0;
  aBlock[3] = &block_descriptor_10;
  v18 = _Block_copy(aBlock);

  v19 = [v15 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1AEAF9CCC();
  swift_unknownObjectRelease();
  sub_1AEA45E18(v36, aBlock);
  v20 = swift_dynamicCast();
  v21 = *(v12 + 56);
  if (v20)
  {
    v21(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    v22 = v32;
    v23 = v37;
    v34(v14);
    if (!v23)
    {
      swift_beginAccess();
      v24 = *v17;
      if (!*v17)
      {
        (*(v12 + 8))(v14, AssociatedTypeWitness);
        __swift_destroy_boxed_opaque_existential_1(v36);
        (*(v30 + 32))(v29, v22, v31);
      }

      swift_willThrow();
      v25 = v24;
      (*(v30 + 8))(v22, v31);
    }

    (*(v12 + 8))(v14, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v21(v11, 1, 1, AssociatedTypeWitness);
  (*(v28 + 8))(v11, v8);
  result = sub_1AEAFA01C();
  __break(1u);
  return result;
}

id sub_1AEAF1A90(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;

  return a1;
}

void sub_1AEAF1AE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t ResumedConnection.withSyncProxy<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *v8;
  v9 = *(a6 + 24);
  v11[2] = *(a6 + 16);
  v11[3] = a7;
  v11[4] = v9;
  v11[5] = a4;
  v11[6] = a5;
  v11[7] = a1;
  v11[8] = a2;
  v12 = a3;
  return ResumedConnection.withSyncProxy<A>(_:_:)(a1, sub_1AEAF2038, v11, a7, a8);
}

uint64_t sub_1AEAF1BAC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t (*)(uint64_t a1, void *a2), void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v42 = a8;
  v46 = a2;
  v47 = a7;
  v38 = a6;
  v37[1] = a4;
  v37[2] = a5;
  v44 = a1;
  v45 = a3;
  v40 = a9;
  v43 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  v10 = sub_1AEAFA40C();
  v11 = sub_1AEAF9C3C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v37 - v14;
  v16 = *(v10 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v39 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v37 - v19;
  v21 = swift_allocBox();
  v23 = v22;
  (*(v16 + 56))(v22, 1, 1, v10);
  v24 = swift_allocObject();
  v26 = v42;
  v25 = v43;
  v24[2] = v47;
  v24[3] = v26;
  v24[4] = v25;
  v24[5] = v21;
  v47 = v21;

  v46(v44, sub_1AEAF3ABC, v24);

  swift_beginAccess();
  (*(v12 + 16))(v15, v23, v11);
  if ((*(v16 + 48))(v15, 1, v10) == 1)
  {
    (*(v12 + 8))(v15, v11);
    if (qword_1EB5F50D0 != -1)
    {
      swift_once();
    }

    v27 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v27, qword_1EB5F5CE0);
    v28 = sub_1AEAF8FCC();
    v29 = sub_1AEAF9A9C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = v31;
      *v30 = 136315138;
      v32 = sub_1AEAF9E3C();
      v34 = sub_1AEA45C14(v32, v33, &v48);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1AEA3F000, v28, v29, "Reply not called for %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1B270E620](v31, -1, -1);
      MEMORY[0x1B270E620](v30, -1, -1);
    }

    sub_1AEAF3AC8();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v20, v15, v10);
    (*(v16 + 16))(v39, v20, v10);
    v35 = v41;
    sub_1AEA61604(v10, &v48, v40);
    if (v35)
    {
      (*(v16 + 8))(v20, v10);
    }

    (*(v16 + 8))(v20, v10);
  }
}

uint64_t sub_1AEAF2070(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v20 = a2;
  v5 = sub_1AEAF9C3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  v10 = sub_1AEAFA40C();
  v11 = sub_1AEAF9C3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15 = swift_projectBox();
  (*(v6 + 16))(v8, v19, v5);
  v21[0] = v20;
  v16 = v20;
  Result.init(success:failure:)(v8, v21, a4, v9, MEMORY[0x1E69E7288], v14);
  (*(*(v10 - 8) + 56))(v14, 0, 1, v10);
  swift_beginAccess();
  return (*(v12 + 40))(v15, v14, v11);
}

uint64_t ResumedConnection.withSyncProxy(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  v8 = *(a6 + 24);
  v11 = *(a6 + 16);
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v24 = v7;
  v16 = v11;
  v17 = MEMORY[0x1E69E7CA8] + 8;
  v18 = v8;
  v19 = sub_1AEAF3588;
  v20 = v10;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  return ResumedConnection.withSyncProxy<A>(_:_:)(a1, sub_1AEAF2038, v15, MEMORY[0x1E69E7CA8] + 8, v10);
}

void sub_1AEAF2374(void *a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = (*(a5 + 16))(a4, a5);
  v9 = [objc_opt_self() interfaceWithProtocol_];

  v10 = (*(a5 + 24))(a4, a5);
  v37 = *(v10 + 16);
  v38 = v10;
  if (v37)
  {
    v11 = 0;
    v36 = v10 + 32;
    v35 = v9;
    while (v11 < *(v38 + 16))
    {
      v12 = v36 + 32 * v11;
      v13 = *(v12 + 8);
      v40 = *(v12 + 16);
      v41 = *v12;
      v39 = *(v12 + 24);
      v14 = *(v13 + 16);
      if (v14)
      {
        v43 = MEMORY[0x1E69E7CC0];

        sub_1AEA791D4(0, v14, 0);
        v15 = v43;
        v16 = v13 + 32;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B08);
          swift_dynamicCast();
          v43 = v15;
          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1AEA791D4((v17 > 1), v18 + 1, 1);
            v15 = v43;
          }

          *(v15 + 16) = v18 + 1;
          sub_1AEA45304(&v42, (v15 + 32 * v18 + 32));
          v16 += 8;
          --v14;
        }

        while (v14);
        v9 = v35;
      }

      else
      {
      }

      v19 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
      v20 = sub_1AEAF96CC();

      v21 = [v19 initWithArray_];

      *&v42 = 0;
      sub_1AEAF99BC();
      if (!v42)
      {
        goto LABEL_25;
      }

      ++v11;

      v22 = sub_1AEAF99AC();

      [v9 setClasses:v22 forSelector:v41 argumentIndex:v40 ofReply:v39];

      if (v11 == v37)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_13:

    if (a3 > 1u)
    {
      v24 = a1;
      v23 = a2;
      if (a3 == 2)
      {
        v28 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
        [v28 setRemoteObjectInterface_];
        [v28 resume];

        sub_1AEAF39EC(a1, a2, 2u);
        v29 = a6;
      }

      else
      {
        v28 = a1;
        [v28 setRemoteObjectInterface_];
        v29 = a6;
        if ((a2 & 1) == 0)
        {
          [v28 resume];
        }
      }
    }

    else
    {
      v24 = a1;
      v23 = a2;
      v25 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
      v26 = sub_1AEAF958C();
      if (a3)
      {
        v27 = [v25 initWithMachServiceName:v26 options:0];
      }

      else
      {
        v27 = [v25 initWithServiceName_];
      }

      v30 = v27;

      v28 = v30;
      [v28 setRemoteObjectInterface_];
      [v28 resume];

      v29 = a6;
    }

    sub_1AEAF39EC(v24, v23, a3);
    *v29 = v28;
  }
}

void ResumedConnection<>.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(a2 + 16))();
  sub_1AEAF2374(v6, v7, 1u, a1, *(a2 + 8), &v8);
  *a3 = v8;
}

{
  v6 = (*(a2 + 16))();
  sub_1AEAF2374(v6, v7, 0, a1, *(a2 + 8), &v8);
  *a3 = v8;
}

id sub_1AEAF2918(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();
  v9 = &v7[qword_1EB5E9BF8];
  *v9 = a2;
  *(v9 + 1) = a3;
  *&v7[qword_1EB5E9BF0] = a1;
  v13.receiver = v7;
  v13.super_class = ObjectType;

  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 setDelegate_];
  [v10 resume];

  return v11;
}

Swift::Bool __swiftcall ResumedListener.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v2 + qword_1EB5E9BF8))(_.super.isa, shouldAcceptNewConnection.super.isa, v9);
  static ConnectionConfig.exportObject(_:_:)(v11, shouldAcceptNewConnection.super.isa, v6, v5);
  [(objc_class *)shouldAcceptNewConnection.super.isa resume];
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  return 1;
}

id static ConnectionConfig.accept(_:exportingObject:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static ConnectionConfig.exportObject(_:_:)(a2, a1, a3, a4);

  return [a1 resume];
}

BOOL sub_1AEAF2CD0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = ResumedListener.listener(_:shouldAcceptNewConnection:)(v6, v7);

  return v9;
}

id ResumedListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ResumedListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AEAF2E1C(uint64_t a1)
{
}

id static ResumedListener.anonymous(exporting:)(uint64_t a1, uint64_t a2)
{
  return sub_1AEAF2EC8(a1, a2, &selRef_anonymousListener, &unk_1F248FFB0, sub_1AEAF3B1C);
}

{
  return sub_1AEAF2F78(a1, a2, &selRef_anonymousListener);
}

id static ResumedListener.service(exporting:)(uint64_t a1, uint64_t a2)
{
  return sub_1AEAF2EC8(a1, a2, &selRef_serviceListener, &unk_1F248FFD8, sub_1AEAF376C);
}

{
  return sub_1AEAF2F78(a1, a2, &selRef_serviceListener);
}

id sub_1AEAF2EC8(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() *a3];
  v10 = swift_allocObject();
  *(v10 + 16) = *(v5 + 80);
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  return sub_1AEAF2918(v9, a5, v10);
}

id sub_1AEAF2F78(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [objc_opt_self() *a3];

  return sub_1AEAF2918(v5, a1, a2);
}

id ResumedListener<>.init(exporting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  (*(a3 + 16))(v7, a3);
  v8 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v9 = sub_1AEAF958C();

  v10 = [v8 initWithMachServiceName_];

  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = a3;
  v11[4] = a1;
  v11[5] = a2;

  return sub_1AEAF2918(v10, sub_1AEAF3B1C, v11);
}

{
  (*(a3 + 16))();
  v5 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v6 = sub_1AEAF958C();

  v7 = [v5 initWithMachServiceName_];

  return sub_1AEAF2918(v7, a1, a2);
}

void static ConnectionConfig.exportObject(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a3, a4);
  v21 = [objc_opt_self() interfaceWithProtocol_];

  v22 = (*(a4 + 24))(a3, a4);
  v20 = *(v22 + 16);
  if (v20)
  {
    v7 = 0;
    while (v7 < *(v22 + 16))
    {
      v8 = v22 + 32 + 32 * v7;
      v9 = *(v8 + 8);
      v24 = *(v8 + 16);
      v25 = *v8;
      v23 = *(v8 + 24);
      v10 = *(v9 + 16);
      if (v10)
      {
        v27 = MEMORY[0x1E69E7CC0];

        sub_1AEA791D4(0, v10, 0);
        v11 = v27;
        v12 = v9 + 32;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B08);
          swift_dynamicCast();
          v27 = v11;
          v14 = *(v11 + 16);
          v13 = *(v11 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1AEA791D4((v13 > 1), v14 + 1, 1);
            v11 = v27;
          }

          *(v11 + 16) = v14 + 1;
          sub_1AEA45304(&v26, (v11 + 32 * v14 + 32));
          v12 += 8;
          --v10;
        }

        while (v10);
      }

      else
      {
      }

      v15 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
      v16 = sub_1AEAF96CC();

      v17 = [v15 initWithArray_];

      *&v26 = 0;
      sub_1AEAF99BC();
      if (!v26)
      {
        goto LABEL_15;
      }

      ++v7;

      v18 = sub_1AEAF99AC();

      [v21 setClasses:v18 forSelector:v25 argumentIndex:v24 ofReply:v23];

      if (v7 == v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    [a2 setExportedInterface_];
    swift_getAssociatedTypeWitness();
    [a2 setExportedObject_];

    swift_unknownObjectRelease();
  }
}

uint64_t Selector.expects(_:atIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = 0;
}

uint64_t ArgumentExpectation.init(selector:expectedClasses:argumentIndex:ofReply:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t Selector.reply(expects:atIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = 1;
}

uint64_t sub_1AEAF3518()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1EB5F5CE0);
  __swift_project_value_buffer(v0, qword_1EB5F5CE0);
  return sub_1AEAF8FDC();
}

uint64_t sub_1AEAF3588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1AEAF3A24;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AEAF3A60;
  *(v10 + 24) = v9;

  v7(a1, sub_1AEAF3A8C, v10);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AEAF36D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AEAF37A0()
{
  result = qword_1EB5E9C10;
  if (!qword_1EB5E9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9C10);
  }

  return result;
}

uint64_t sub_1AEAF3854()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AEAF3950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1AEAF3998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AEAF39EC(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1AEAF3A24(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 1;
  return v2(&v4);
}

unint64_t sub_1AEAF3AC8()
{
  result = qword_1EB5E9C78;
  if (!qword_1EB5E9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9C78);
  }

  return result;
}

uint64_t sub_1AEAF3B34()
{
  v1 = (v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer____lazy_storage___analysisInterval);
  if (*(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer____lazy_storage___analysisInterval + 9))
  {
    os_unfair_lock_assert_owner((*(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lock) + 16));
    v2 = v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config;
    swift_beginAccess();
    result = *v2;
    v4 = *(v2 + 8);
    if (v4)
    {
LABEL_5:
      *v1 = *&result;
      v1[8] = v4;
      v1[9] = 0;
      return result;
    }

    if (*&result * 0.5 <= *&result * 1.5)
    {
      v5 = *(v2 + 8);
      sub_1AEAF76FC(result, *&result * 0.5, *&result * 1.5);
      v4 = v5;
      result = v6;
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    return *v1;
  }

  return result;
}

uint64_t SampleTimer.debugDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEAF77A0(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1AEAF3D28@<X0>(_OWORD *a1@<X8>)
{
  *&v6 = 0;
  *(&v6 + 1) = 0xE000000000000000;
  MEMORY[0x1B270CB50](0x6152656C706D6173, 0xEB000000003A6574);
  swift_beginAccess();
  sub_1AEAF999C();
  MEMORY[0x1B270CB50](44, 0xE100000000000000);
  v2 = SampleTimer.Stats.debugDescription.getter();
  v4 = v3;

  MEMORY[0x1B270CB50](v2, v4);

  *a1 = v6;
  return result;
}

uint64_t SampleTimer.Stats.debugDescription.getter()
{
  sub_1AEAF9E1C();

  v0 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v0);

  MEMORY[0x1B270CB50](0x2D776F6C6C6F662CLL, 0xEB000000003A7075);
  v1 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v1);

  MEMORY[0x1B270CB50](0x756E69746E6F632CLL, 0xEB000000003A7365);
  v2 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v2);

  return 0x3A6C616974696E69;
}

uint64_t sub_1AEAF3FEC(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v3 = a2;
    swift_once();
    a2 = v3;
  }

  v4[1] = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9CA0);
  Atomic.wrappedValue.getter(v4);
  return v4[0];
}

uint64_t (*sub_1AEAF405C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB5F5270 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB5F5278;
  v3[3] = qword_1EB5F5278;
  v3[1] = v4;

  v3[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9CA0);
  Atomic.wrappedValue.getter(v3);
  return sub_1AEA69B7C;
}

uint64_t sub_1AEAF413C(uint64_t a1, uint64_t *a2)
{
  v5 = MEMORY[0x1E69E7CC8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9D80);
  return Atomic.init(wrappedValue:)(&v5, v3, a2);
}

id SampleTimer.init(id:config:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ObjectType = swift_getObjectType();
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = a3[2];
  v10 = *(a3 + 24);
  v11 = a3[4];
  LOBYTE(a3) = *(a3 + 40);
  v12 = &v3[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats];
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  *&v3[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastAnalysisTime] = 0;
  v3[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastFrameNeedsFollowUp] = 0;
  v13 = &v3[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastFrameNeedingFollowUpTime];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v3[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer____lazy_storage___analysisInterval];
  *v14 = 0;
  *(v14 + 4) = 256;
  v15 = OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *&v3[v15] = v16;
  v17 = &v3[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_id];
  *v17 = a1;
  v17[1] = a2;
  v18 = &v3[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config];
  *v18 = v7;
  v18[8] = v8;
  *(v18 + 2) = v9;
  v18[24] = v10;
  *(v18 + 4) = v11;
  v18[40] = a3;
  v21.receiver = v3;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

id SampleTimer.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats + 16];
  v4[1] = *&v0[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats];
  v5 = v2;
  sub_1AEAF43A0();
  v4[0].receiver = v0;
  v4[0].super_class = ObjectType;
  return [(objc_super *)v4 dealloc];
}

uint64_t sub_1AEAF43A0()
{
  v1 = sub_1AEAF8FEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = sub_1AEA8BFEC();
  (*(v2 + 16))(v4, v8, v1);
  v9 = sub_1AEAF8FCC();
  v10 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v7;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[2] = v11;
    v19 = v13;
    *v12 = 136380675;
    v18[0] = v5;
    v18[1] = v6;
    v14 = SampleTimer.Stats.debugDescription.getter();
    v16 = sub_1AEA45C14(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1AEA3F000, v9, v10, "Finished.%{private}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B270E620](v13, -1, -1);
    MEMORY[0x1B270E620](v12, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

Swift::Bool __swiftcall SampleTimer.shouldSampleFrame(now:)(Swift::Double now)
{
  swift_getObjectType();
  v2 = *(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lock);
  os_unfair_lock_lock(v2 + 4);
  sub_1AEA6E5DC(&v4);
  os_unfair_lock_unlock(v2 + 4);
  return v4;
}

void sub_1AEAF46CC(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v6 = a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config;
  swift_beginAccess();
  if ((*(v6 + 40) & 1) == 0)
  {
    if (qword_1EB5F5260 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EB5F5268);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9CA0);
    Atomic.withLock<A>(_:)();

    if (v17)
    {
      goto LABEL_14;
    }
  }

  v7 = a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastFrameNeedingFollowUpTime;
  if ((*(a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastFrameNeedingFollowUpTime + 8) & 1) == 0 && (*(v6 + 24) & 1) == 0)
  {
    v8 = *(v6 + 16);
    if (v8 != 0.0 && v8 <= a3 - *v7)
    {
      *v7 = 0;
      v16 = 1;
      *(v7 + 8) = 1;
LABEL_15:
      *a2 = v16;
      return;
    }
  }

  v10 = COERCE_DOUBLE(sub_1AEAF3B34());
  if ((v11 & 1) != 0 || a3 - *(a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastAnalysisTime) < v10)
  {
LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  *(a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastAnalysisTime) = a3;
  os_unfair_lock_assert_owner((*(a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lock) + 16));
  v13 = *v6;
  v14 = *(v6 + 8);
  if (v14)
  {
LABEL_19:
    v15 = a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer____lazy_storage___analysisInterval;
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 9) = 0;
    v16 = 1;
    goto LABEL_15;
  }

  if (v13 * 0.5 <= v13 * 1.5)
  {
    sub_1AEAF76FC(v12, v13 * 0.5, v13 * 1.5);
    goto LABEL_19;
  }

  __break(1u);
}

double sub_1AEAF48F8()
{
  v0 = sub_1AEAF8D6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AEAF8D5C();
  sub_1AEAF8D3C();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t SampleTimer.shouldReportDetection(now:for:)(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lock);
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_1AEA70F10(&v5);
  os_unfair_lock_unlock(v3 + 4);
  return v5;
}

Swift::Void __swiftcall SampleTimer.updateBaseInterval(to:)(Swift::Double_optional to)
{
  v2 = *(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lock);
  os_unfair_lock_lock(v2 + 4);
  sub_1AEA6E584();
  os_unfair_lock_unlock(v2 + 4);
}

Swift::Void __swiftcall SampleTimer.timeOutDetectionForStreamContinuation()()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA70FE8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1AEAF4B98(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config;
  result = swift_beginAccess();
  if ((*(v1 + 40) & 1) == 0)
  {
    if (qword_1EB5F5260 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EB5F5268);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9CA0);
    Atomic.withLock<A>(_:)();
  }

  return result;
}

unint64_t sub_1AEAF4CC8(uint64_t *a1, uint64_t a2, double a3)
{
  v6 = sub_1AEAF8D6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AEAF8FEC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_id);
  v15 = *(a2 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_id + 8);
  v37 = a1;
  if (!*(*a1 + 16) || (result = sub_1AEA8EECC(v14, v15), (v17 & 1) == 0))
  {
    v38 = v14;
    v36 = a2;
    v18 = sub_1AEA8BFEC();
    (*(v11 + 16))(v13, v18, v10);

    v19 = sub_1AEAF8FCC();
    v20 = sub_1AEAF9A8C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = v6;
      v22 = v21;
      v23 = swift_slowAlloc();
      v34 = v7;
      v24 = v23;
      v39 = v23;
      *v22 = 136315395;
      *(v22 + 4) = sub_1AEA45C14(v38, v15, &v39);
      *(v22 + 12) = 2049;
      *(v22 + 14) = a3;
      _os_log_impl(&dword_1AEA3F000, v19, v20, "Delaying detection on %s for %{private}f seconds.", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v25 = v24;
      v7 = v34;
      MEMORY[0x1B270E620](v25, -1, -1);
      v26 = v22;
      v6 = v35;
      MEMORY[0x1B270E620](v26, -1, -1);
    }

    result = (*(v11 + 8))(v13, v10);
    v27 = *(v36 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      *(v36 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats + 16) = v29;
      sub_1AEAF8D5C();
      sub_1AEAF8D3C();
      v31 = v30;
      (*(v7 + 8))(v9, v6);
      v32 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v32;
      result = sub_1AEA6245C(v38, v15, isUniquelyReferenced_nonNull_native, v31);
      *v32 = v39;
    }
  }

  return result;
}

id SampleTimer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1AEAF5080(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6769666E6F63;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6769666E6F63;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AEAFA2BC();
  }

  return v8 & 1;
}

uint64_t sub_1AEAF5118()
{
  sub_1AEAFA3BC();
  sub_1AEAF95DC();

  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAF518C()
{
  sub_1AEAF95DC();
}

uint64_t sub_1AEAF51EC()
{
  sub_1AEAFA3BC();
  sub_1AEAF95DC();

  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAF525C@<X0>(char *a1@<X8>)
{
  v2 = sub_1AEAFA08C();

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

void sub_1AEAF52BC(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x6769666E6F63;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AEAF52EC()
{
  if (*v0)
  {
    return 0x6769666E6F63;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1AEAF5318@<X0>(char *a1@<X8>)
{
  v2 = sub_1AEAFA08C();

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

uint64_t sub_1AEAF537C(uint64_t a1)
{
  v2 = sub_1AEAF7C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAF53B8(uint64_t a1)
{
  v2 = sub_1AEAF7C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleTimer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9CD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAF7C2C();
  sub_1AEAFA42C();
  LOBYTE(v17) = 0;
  sub_1AEAFA1DC();
  if (!v2)
  {
    v9 = (v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config);
    swift_beginAccess();
    v10 = *(v9 + 8);
    v11 = v9[2];
    v12 = *(v9 + 24);
    v13 = v9[4];
    v14 = *(v9 + 40);
    v17 = *v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v16[7] = 1;
    sub_1AEAF7C80();
    sub_1AEAFA22C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AEAF55DC()
{
  sub_1AEAF917C();
  sub_1AEAF7CD4();
  sub_1AEAF921C();
  sub_1AEAF921C();
  return sub_1AEAF921C();
}

id SampleTimer.__allocating_init(from:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1AEAF918C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = MEMORY[0x1B270C730](25705, 0xE200000000000000, v11);
  if (v15)
  {
    v16 = v15;
    v28 = v14;
    sub_1AEAF919C();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v7 + 8))(a1, v6);

      sub_1AEA41FAC(v5, &qword_1EB5E8E28);
      return 0;
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
      (*(v7 + 16))(v9, v13, v6);
      sub_1AEAF7CD4();
      sub_1AEAF920C();
      v27 = v29;
      v26 = v30;
      sub_1AEAF920C();
      v25 = v1;
      v18 = v29;
      v19 = v30;
      sub_1AEAF920C();
      v20 = *(v7 + 8);
      v20(v9, v6);
      v21 = v29;
      v22 = v30;
      v29 = v27;
      v30 = v26;
      v31 = v18;
      v32 = v19;
      v33 = v21;
      v34 = v22;
      v23 = objc_allocWithZone(v25);
      v24 = SampleTimer.init(id:config:)(v28, v16, &v29);
      v20(a1, v6);
      v20(v13, v6);
      return v24;
    }
  }

  else
  {
    (*(v7 + 8))(a1, v6);
    return 0;
  }
}

uint64_t sub_1AEAF5A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AEAF7CD4();
  sub_1AEAF920C();
  sub_1AEAF920C();
  sub_1AEAF920C();
  v4 = sub_1AEAF918C();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

void *sub_1AEAF5B8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AEAF7A00(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Void __swiftcall SampleTimer.encode(with:)(NSCoder with)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = with.super.isa;
    v5 = sub_1AEAF958C();
    v6 = sub_1AEAF958C();
    [v3 encodeObject:v5 forKey:v6];

    swift_beginAccess();
    sub_1AEAF5D48(v3);
  }

  else
  {
    sub_1AEAFA01C();
    __break(1u);
  }
}

void sub_1AEAF5D48(void *a1)
{
  v3 = v1[8];
  v4 = v1[24];
  if (v1[40])
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1AEAF997C();
  }

  v6 = sub_1AEAF958C();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1AEAF997C();
  }

  v8 = sub_1AEAF958C();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1AEAF997C();
  }

  v10 = sub_1AEAF958C();
  [a1 encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

id SampleTimer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t SampleTimer.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    sub_1AEA49EF8(0, &unk_1EB5E8E50);
    v5 = sub_1AEAF9BDC();
    if (v5)
    {
      v6 = v5;
      v20 = a1;
      sub_1AEAF6138(v4, &v21);
      v7 = v21;
      v8 = v22;
      v9 = v23;
      v10 = v24;
      v11 = ObjectType;
      v12 = v25;
      v13 = v26;
      v14 = sub_1AEAF95BC();
      v16 = v15;
      v21 = v7;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v12;
      v26 = v13;
      v17 = objc_allocWithZone(v11);
      v18 = SampleTimer.init(id:config:)(v14, v16, &v21);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
    }

    else
    {

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v18;
  }

  else
  {

    result = sub_1AEAFA01C();
    __break(1u);
  }

  return result;
}

void sub_1AEAF6138(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AEA49EF8(0, &qword_1ED989AC0);
  v4 = sub_1AEAF9BDC();
  v5 = v4;
  v6 = 0;
  v7 = 0;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v8;
  }

  v9 = sub_1AEAF9BDC();
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v6 = v11;
  }

  v12 = sub_1AEAF9BDC();
  v13 = v12;
  if (v12)
  {
    [v12 doubleValue];
    v15 = v14;
  }

  else
  {

    v15 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v5 == 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v10 == 0;
  *(a2 + 32) = v15;
  *(a2 + 40) = v13 == 0;
}

uint64_t sub_1AEAF62CC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1AEAF958C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_9:
    sub_1AEA41FAC(&v10, &unk_1EB5E9680);
    return 0;
  }

  v3 = sub_1AEAF958C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1AEAF9CCC();
    swift_unknownObjectRelease();
  }

  else
  {
    *v8 = 0u;
    v9 = 0u;
  }

  v10 = *v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_9;
  }

  sub_1AEA49EF8(0, &qword_1ED989AC0);
  if (swift_dynamicCast())
  {
    [v8[0] doubleValue];
    v6 = v5;

    return v6;
  }

  return 0;
}

uint64_t SampleTimer.Config.baseInterval.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static SampleTimer.Config.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED98B2B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED98B2B8;
  v3 = byte_1ED98B2C0;
  v4 = qword_1ED98B2C8;
  v5 = byte_1ED98B2D0;
  v6 = qword_1ED98B2D8;
  v7 = byte_1ED98B2E0;
  if (qword_1ED98B2F0 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  if (v18 & 1) != 0 || (v13)
  {
    sub_1AEAF7D28();
  }

  else
  {
    v3 = 0;
    v2 = v12;
  }

  sub_1AEAFA47C();
  if (v18 & 1) != 0 || (v15)
  {
    sub_1AEAF7D28();
  }

  else
  {
    v5 = 0;
    v4 = v14;
  }

  result = sub_1AEAFA47C();
  if (v18 & 1) != 0 || (v17)
  {
    result = sub_1AEAF7D28();
    if (v9)
    {
      v10 = v6;
    }

    else
    {
      v10 = result;
    }

    v11 = v9 & v7;
  }

  else
  {
    v11 = 0;
    v10 = v16;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11 & 1;
  return result;
}

uint64_t static SampleTimer.Config.localOverride.getter()
{
  if (qword_1ED98B2F0 != -1)
  {
    swift_once();
  }

  return sub_1AEAFA47C();
}

void __swiftcall SampleTimer.Config.init(baseInterval:followUpFrameInterval:continueStreamTimeout:)(SensitiveContentAnalysis::SampleTimer::Config *__return_ptr retstr, Swift::Double_optional baseInterval, Swift::Double_optional followUpFrameInterval, Swift::Double_optional continueStreamTimeout)
{
  retstr->baseInterval.value = *&baseInterval.is_nil;
  retstr->baseInterval.is_nil = followUpFrameInterval.is_nil;
  *(&retstr->followUpFrameInterval.value + 7) = *&continueStreamTimeout.is_nil;
  BYTE6(retstr->continueStreamTimeout.value) = v4 & 1;
  *(&retstr[1].baseInterval.value + 5) = v5;
  BYTE4(retstr[1].followUpFrameInterval.value) = v6 & 1;
}

void __swiftcall SampleTimer.Config.init()(SensitiveContentAnalysis::SampleTimer::Config *__return_ptr retstr)
{
  static SampleTimer.Config.default.getter(&v7);
  v2 = v8;
  v3 = v9;
  v4 = v10;
  v5 = v11;
  v6 = v12;
  retstr->baseInterval.value = v7;
  retstr->baseInterval.is_nil = v2;
  *(&retstr->followUpFrameInterval.value + 7) = v3;
  BYTE6(retstr->continueStreamTimeout.value) = v4;
  *(&retstr[1].baseInterval.value + 5) = v5;
  BYTE4(retstr[1].followUpFrameInterval.value) = v6;
}

uint64_t sub_1AEAF66F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9D58);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1ED98B2E8 = result;
  return result;
}

uint64_t static SampleTimer.Config.$localOverride.getter()
{
  if (qword_1ED98B2F0 != -1)
  {
    swift_once();
  }
}

void sub_1AEAF67C0()
{
  qword_1ED98B2B8 = 0x3FF0000000000000;
  byte_1ED98B2C0 = 0;
  qword_1ED98B2C8 = 0x3FE0000000000000;
  byte_1ED98B2D0 = 0;
  qword_1ED98B2D8 = 0x4072C00000000000;
  byte_1ED98B2E0 = 0;
}

uint64_t static SampleTimer.Config.halfSecondFollowUpInterval.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED98B2B0 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = byte_1ED98B2C0;
  v2 = qword_1ED98B2C8;
  v3 = byte_1ED98B2D0;
  v4 = qword_1ED98B2D8;
  v5 = byte_1ED98B2E0;
  *a1 = qword_1ED98B2B8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1AEAF6884()
{
  qword_1EB5F5290 = 0x3FF0000000000000;
  byte_1EB5F5298 = 0;
  qword_1EB5F52A0 = 0;
  byte_1EB5F52A8 = 0;
  qword_1EB5F52B0 = 0x4072C00000000000;
  byte_1EB5F52B8 = 0;
}

uint64_t static SampleTimer.Config.noFollowUpInterval.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB5F5288 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = byte_1EB5F5298;
  v2 = qword_1EB5F52A0;
  v3 = byte_1EB5F52A8;
  v4 = qword_1EB5F52B0;
  v5 = byte_1EB5F52B8;
  *a1 = qword_1EB5F5290;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1AEAF6944()
{
  qword_1EB5F52C8 = 0x3FF0000000000000;
  byte_1EB5F52D0 = 0;
  qword_1EB5F52D8 = 0x3FE0000000000000;
  byte_1EB5F52E0 = 0;
  qword_1EB5F52E8 = 0;
  byte_1EB5F52F0 = 0;
}

uint64_t static SampleTimer.Config.noContinueTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB5F52C0 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = byte_1EB5F52D0;
  v2 = qword_1EB5F52D8;
  v3 = byte_1EB5F52E0;
  v4 = qword_1EB5F52E8;
  v5 = byte_1EB5F52F0;
  *a1 = qword_1EB5F52C8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1AEAF6A00()
{
  qword_1EB5F5300 = 0x3FF0000000000000;
  byte_1EB5F5308 = 0;
  qword_1EB5F5310 = 0;
  byte_1EB5F5318 = 0;
  qword_1EB5F5320 = 0;
  byte_1EB5F5328 = 0;
}

uint64_t static SampleTimer.Config.noContinueTimeoutOrFollowUp.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB5F52F8 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = byte_1EB5F5308;
  v2 = qword_1EB5F5310;
  v3 = byte_1EB5F5318;
  v4 = qword_1EB5F5320;
  v5 = byte_1EB5F5328;
  *a1 = qword_1EB5F5300;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AEAF6AB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x80000001AEB09240;
  if (v2 == 1)
  {
    v4 = 0x80000001AEB09240;
  }

  else
  {
    v4 = 0x80000001AEB09260;
  }

  if (*a1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x65746E4965736162;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000006C617672;
  }

  if (*a2 != 1)
  {
    v3 = 0x80000001AEB09260;
  }

  if (*a2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = 0x65746E4965736162;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xEC0000006C617672;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AEAFA2BC();
  }

  return v9 & 1;
}

uint64_t sub_1AEAF6B90()
{
  sub_1AEAFA3BC();
  sub_1AEAF95DC();

  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAF6C44()
{
  sub_1AEAF95DC();
}

uint64_t sub_1AEAF6CE4()
{
  sub_1AEAFA3BC();
  sub_1AEAF95DC();

  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAF6D94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AEAF7F00();
  *a1 = result;
  return result;
}

void sub_1AEAF6DC4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006C617672;
  v4 = 0x80000001AEB09240;
  if (v2 != 1)
  {
    v4 = 0x80000001AEB09260;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0x65746E4965736162;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1AEAF6E34()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x65746E4965736162;
  }
}

uint64_t sub_1AEAF6EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AEAF7F00();
  *a1 = result;
  return result;
}

uint64_t sub_1AEAF6EC8(uint64_t a1)
{
  v2 = sub_1AEAF7F4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAF6F04(uint64_t a1)
{
  v2 = sub_1AEAF7F4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleTimer.Config.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9D00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAF7F4C();
  sub_1AEAFA41C();
  if (!v2)
  {
    v25 = 0;
    v9 = sub_1AEAFA0DC();
    v11 = v10;
    v12 = v9;
    v24 = 1;
    v13 = sub_1AEAFA0DC();
    v22 = v14;
    v21 = v13;
    v23 = 2;
    v16 = sub_1AEAFA0DC();
    v17 = v8;
    v19 = v18;
    (*(v6 + 8))(v17, v5);
    *a2 = v12;
    *(a2 + 8) = v11 & 1;
    *(a2 + 16) = v21;
    *(a2 + 24) = v22 & 1;
    *(a2 + 32) = v16;
    *(a2 + 40) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SampleTimer.Config.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9D10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = v7;
  v10[1] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAF7F4C();
  sub_1AEAFA42C();
  v17 = 0;
  v8 = v13;
  sub_1AEAFA1BC();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = 1;
  sub_1AEAFA1BC();
  v15 = 2;
  sub_1AEAFA1BC();
  return (*(v4 + 8))(v6, v3);
}

id sub_1AEAF7350(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = &v3[OBJC_IVAR____TtC24SensitiveContentAnalysis29SampleTimerSecureCodingConfig_config];
  *v9 = *a1;
  v9[8] = v4;
  *(v9 + 2) = v5;
  v9[24] = v6;
  *(v9 + 4) = v7;
  v9[40] = v8;
  v11.receiver = v3;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1AEAF7514(void *a1)
{
  ObjectType = swift_getObjectType();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    sub_1AEAF6138(v4, &v17);
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v11 = v22;
    v12 = objc_allocWithZone(ObjectType);
    v13 = &v12[OBJC_IVAR____TtC24SensitiveContentAnalysis29SampleTimerSecureCodingConfig_config];
    *v13 = v6;
    v13[8] = v7;
    *(v13 + 2) = v8;
    v13[24] = v9;
    *(v13 + 4) = v10;
    v13[40] = v11;
    v16.receiver = v12;
    v16.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v16, sel_init);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v14;
  }

  else
  {
    result = sub_1AEAFA01C();
    __break(1u);
  }

  return result;
}

id sub_1AEAF76C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AEAF76FC(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1B270E640](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1AEAF76FC(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1AEAF77D8@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = sub_1AEAB1C4C();
  v6 = v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config;
  result = swift_beginAccess();
  v8 = 1;
  if ((*(v6 + 24) & 1) != 0 || *(v6 + 16) == 0.0)
  {
    goto LABEL_12;
  }

  v9 = OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastFrameNeedsFollowUp;
  if (*(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastFrameNeedsFollowUp) == 1)
  {
    *(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastFrameNeedsFollowUp) = 0;
    if ((v5 & 1) == 0)
    {
LABEL_7:
      v8 = v5 & 1;
LABEL_12:
      *a1 = v8;
      return result;
    }

    v10 = *(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats + 8);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      *(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats + 8) = v12;
      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v13 = *(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats);
    v14 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      v8 = 0;
      *(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats) = v14;
      v15 = v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lastFrameNeedingFollowUpTime;
      *v15 = v4;
      *(v15 + 8) = 0;
      *(v3 + v9) = 1;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1AEAF790C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 8) = v4;
  sub_1AEAF3B34();
  if (v6)
  {
    os_unfair_lock_assert_owner((*(v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lock) + 16));
    v8 = *v5;
    v9 = *(v5 + 8);
    if ((v9 & 1) == 0)
    {
      if (v8 * 0.5 > v8 * 1.5)
      {
        __break(1u);
        return;
      }

      sub_1AEAF76FC(v7, v8 * 0.5, v8 * 1.5);
    }

    v10 = v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer____lazy_storage___analysisInterval;
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 9) = 0;
  }
}

void *sub_1AEAF7A00(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9D60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAF7C2C();
  sub_1AEAFA41C();
  if (!v1)
  {
    LOBYTE(v14) = 0;
    v8 = sub_1AEAFA0FC();
    v10 = v9;
    v13[15] = 1;
    sub_1AEAF8314();
    sub_1AEAFA14C();
    v12 = objc_allocWithZone(type metadata accessor for SampleTimer());
    v7 = SampleTimer.init(id:config:)(v8, v10, &v14);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1AEAF7C2C()
{
  result = qword_1EB5E9CD8;
  if (!qword_1EB5E9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9CD8);
  }

  return result;
}

unint64_t sub_1AEAF7C80()
{
  result = qword_1EB5E9CE0;
  if (!qword_1EB5E9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9CE0);
  }

  return result;
}

unint64_t sub_1AEAF7CD4()
{
  result = qword_1EB5E9CF0;
  if (!qword_1EB5E9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9CF0);
  }

  return result;
}

uint64_t sub_1AEAF7D28()
{
  v0 = sub_1AEAF8FEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*sub_1AEA5CE80() != 1)
  {
    return 0;
  }

  result = sub_1AEAF62CC();
  if ((v5 & 1) == 0 || (result = sub_1AEAF62CC(), (v6 & 1) == 0))
  {
    v7 = result;
    v8 = sub_1AEA8BFEC();
    (*(v1 + 16))(v3, v8, v0);
    v9 = sub_1AEAF8FCC();
    v10 = sub_1AEAF9A8C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_1AEA3F000, v9, v10, "Using continueStream timeout from defaults: %f", v11, 0xCu);
      MEMORY[0x1B270E620](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return v7;
  }

  return result;
}

uint64_t sub_1AEAF7F00()
{
  v0 = sub_1AEAFA08C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1AEAF7F4C()
{
  result = qword_1EB5E9D08;
  if (!qword_1EB5E9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9D08);
  }

  return result;
}

unint64_t sub_1AEAF7FA4()
{
  result = qword_1EB5E9D20;
  if (!qword_1EB5E9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9D20);
  }

  return result;
}

unint64_t sub_1AEAF7FFC()
{
  result = qword_1EB5E9D28;
  if (!qword_1EB5E9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9D28);
  }

  return result;
}

unint64_t sub_1AEAF8054()
{
  result = qword_1EB5E9D30;
  if (!qword_1EB5E9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9D30);
  }

  return result;
}

unint64_t sub_1AEAF80AC()
{
  result = qword_1EB5E9D38;
  if (!qword_1EB5E9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9D38);
  }

  return result;
}

unint64_t sub_1AEAF8104()
{
  result = qword_1EB5E9D40;
  if (!qword_1EB5E9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9D40);
  }

  return result;
}

unint64_t sub_1AEAF815C()
{
  result = qword_1EB5E9D48;
  if (!qword_1EB5E9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9D48);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AEAF8224(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEAF8244(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

void *sub_1AEAF82D0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1AEAF8314()
{
  result = qword_1EB5E9D68;
  if (!qword_1EB5E9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9D68);
  }

  return result;
}

unint64_t sub_1AEAF8398@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  v6 = *(*result + 16);
  if (v6)
  {
    v7 = *(v3 + 24);
    v8 = *(v3 + 32);
    v9 = (*(v3 + 16) + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_id);
    v10 = *v9;
    v11 = v9[1];
    result = sub_1AEA8EECC(*v9, v11);
    if (v12)
    {
      if (v7 - *(*(v5 + 56) + 8 * result) < v8)
      {
        LOBYTE(v6) = 1;
        goto LABEL_7;
      }

      result = sub_1AEA61330(0, 1, v10, v11);
    }

    LOBYTE(v6) = 0;
  }

LABEL_7:
  *a2 = v6;
  return result;
}

uint64_t SCVCPDecompressionSessionSetContentAnalyzer_cold_1()
{
  dlerror();
  abort_report_np();
  return __getMADUserSafetyPolicyClass_block_invoke_cold_1();
}