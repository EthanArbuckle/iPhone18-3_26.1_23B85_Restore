unint64_t sub_1C9953484()
{
  result = qword_1EC3CDCE8;
  if (!qword_1EC3CDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDCE8);
  }

  return result;
}

unint64_t sub_1C99534DC()
{
  result = qword_1EC3CDCF0;
  if (!qword_1EC3CDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDCF0);
  }

  return result;
}

unint64_t sub_1C9953534()
{
  result = qword_1EC3CDCF8;
  if (!qword_1EC3CDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDCF8);
  }

  return result;
}

unint64_t sub_1C9953588()
{
  result = qword_1EC3CDD08;
  if (!qword_1EC3CDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD08);
  }

  return result;
}

unint64_t sub_1C99535DC()
{
  result = qword_1EC3CDD20;
  if (!qword_1EC3CDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD20);
  }

  return result;
}

uint64_t sub_1C9953630(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CDD10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C99536A8()
{
  result = qword_1EC3CDD38;
  if (!qword_1EC3CDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD38);
  }

  return result;
}

unint64_t sub_1C99536FC()
{
  result = qword_1EC3CDD48;
  if (!qword_1EC3CDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SoundActionsUtils.PostProcessingBlueprint.Action.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SoundActionsUtils.PostProcessingBlueprint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C995390C()
{
  result = qword_1EC3CDD58;
  if (!qword_1EC3CDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD58);
  }

  return result;
}

unint64_t sub_1C9953964()
{
  result = qword_1EC3CDD60;
  if (!qword_1EC3CDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD60);
  }

  return result;
}

unint64_t sub_1C99539BC()
{
  result = qword_1EC3CDD68;
  if (!qword_1EC3CDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD68);
  }

  return result;
}

unint64_t sub_1C9953A14()
{
  result = qword_1EC3CDD70;
  if (!qword_1EC3CDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD70);
  }

  return result;
}

unint64_t sub_1C9953A6C()
{
  result = qword_1EC3CDD78;
  if (!qword_1EC3CDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD78);
  }

  return result;
}

unint64_t sub_1C9953AC4()
{
  result = qword_1EC3CDD80;
  if (!qword_1EC3CDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD80);
  }

  return result;
}

uint64_t sub_1C9953B34()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CE5D8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  v8 = v0;
  sub_1C996FE74(&unk_1EC3CE4C8);
  sub_1C9A92028();
  sub_1C9A91D88();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C996F9D4;
  *(v5 + 24) = 0;
  sub_1C97A2CEC(&qword_1EC3CE5E0);
  sub_1C996FE74(&unk_1EC3CE5E8);
  sub_1C996FE74(&unk_1EC3CE5F0);
  sub_1C9A92078();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C9953D8C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v79 = a3;
  v73 = a4;
  v71 = sub_1C97A2CEC(&qword_1EC3C7740);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v60 - v8;
  v72 = sub_1C97A2CEC(&qword_1EC3CD5C0);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v60 - v9;
  v10 = sub_1C9A91748();
  v80 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  sub_1C9A91738();
  v81 = 0;
  v82 = 0xE000000000000000;
  LODWORD(v78) = a1;
  v83 = a1;
  sub_1C9A93728();
  v18 = v81;
  v19 = v82;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v20 = sub_1C9A91B58();
  v21 = sub_1C97BFF6C(v20, qword_1EC3D3108);
  v64 = *(v80 + 16);
  v65 = v80 + 16;
  v64(v15, v17, v10);

  v66 = v21;
  v22 = sub_1C9A91B38();
  v23 = sub_1C9A92FC8();

  LODWORD(v75) = v23;
  v76 = v22;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v62 = v4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v81 = v26;
    *v25 = 136315394;
    sub_1C996D568(&qword_1EC3C5480);
    v27 = sub_1C9A93A98();
    v63 = v17;
    v28 = v10;
    v30 = v29;
    v77 = *(v80 + 8);
    v77(v15, v28);
    v31 = sub_1C9849140(v27, v30, &v81);
    v10 = v28;
    v17 = v63;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1C9849140(v18, v19, &v81);
    v32 = v76;
    _os_log_impl(&dword_1C9788000, v76, v75, "Started Creating Sound Recognition Session %s (%s)", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v26, -1, -1);
    v33 = v25;
    v5 = v62;
    MEMORY[0x1CCA93280](v33, -1, -1);
  }

  else
  {

    v77 = *(v80 + 8);
    v77(v15, v10);
  }

  v34 = sub_1C99586E4(v78, v17, v79, a2);
  if (v5)
  {

    return (v77)(v17, v10);
  }

  else
  {
    v36 = v34;
    v79 = 0;
    v37 = swift_allocObject();
    v37[2] = sub_1C9945DA8;
    v37[3] = 0;
    v37[4] = v36;
    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C996FE74(&unk_1EC3CE310);
    v38 = v67;
    sub_1C9A91EF8();
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1C9A935B8();

    v81 = 0xD000000000000018;
    v82 = 0x80000001C9AD9E50;
    v76 = sub_1C996D568(&qword_1EC3C5480);
    v39 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v39);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    v78 = v18;
    MEMORY[0x1CCA90230](v18, v19);
    MEMORY[0x1CCA90230](2112041, 0xE300000000000000);
    v40 = v68;
    sub_1C993AFD4();

    (*(v69 + 8))(v38, v71);
    sub_1C996FE74(&unk_1EC3CD5D8);
    v41 = v72;
    v42 = sub_1C9A91F28();
    (*(v70 + 8))(v40, v41);
    v43 = v73;
    v44 = v64;
    v64(v73, v17, v10);
    *&v43[*(type metadata accessor for SoundRecognition.Session() + 20)] = v42;
    v45 = v74;
    v44(v74, v17, v10);

    v46 = sub_1C9A91B38();
    v47 = sub_1C9A92FC8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v45;
      v49 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81 = v75;
      *v49 = 136315394;
      v50 = sub_1C9A93A98();
      v51 = v77;
      v52 = v50;
      v53 = v10;
      v61 = v10;
      v55 = v54;
      v63 = v17;
      v77(v48, v53);
      v56 = sub_1C9849140(v52, v55, &v81);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      v57 = sub_1C9849140(v78, v19, &v81);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_1C9788000, v46, v47, "Finished Creating Sound Recognition Session %s (%s)", v49, 0x16u);
      v58 = v75;
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v58, -1, -1);
      MEMORY[0x1CCA93280](v49, -1, -1);

      return v51(v63, v61);
    }

    else
    {

      v59 = v77;
      v77(v45, v10);
      return v59(v17, v10);
    }
  }
}

uint64_t sub_1C9954680@<X0>(int a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v79 = a3;
  v73 = a4;
  v71 = sub_1C97A2CEC(&qword_1EC3C7740);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v60 - v8;
  v72 = sub_1C97A2CEC(&qword_1EC3CD5C0);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v60 - v9;
  v10 = sub_1C9A91748();
  v80 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  sub_1C9A91738();
  v81 = 0;
  v82 = 0xE000000000000000;
  LODWORD(v78) = a1;
  v83 = a1;
  sub_1C9A93728();
  v18 = v81;
  v19 = v82;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v20 = sub_1C9A91B58();
  v21 = sub_1C97BFF6C(v20, qword_1EC3D3108);
  v64 = *(v80 + 16);
  v65 = v80 + 16;
  v64(v15, v17, v10);

  v66 = v21;
  v22 = sub_1C9A91B38();
  v23 = sub_1C9A92FC8();

  LODWORD(v75) = v23;
  v76 = v22;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v62 = v4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v81 = v26;
    *v25 = 136315394;
    sub_1C996D568(&qword_1EC3C5480);
    v27 = sub_1C9A93A98();
    v63 = v17;
    v28 = v10;
    v30 = v29;
    v77 = *(v80 + 8);
    v77(v15, v28);
    v31 = sub_1C9849140(v27, v30, &v81);
    v10 = v28;
    v17 = v63;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1C9849140(v18, v19, &v81);
    v32 = v76;
    _os_log_impl(&dword_1C9788000, v76, v75, "Started Creating Sound Recognition Session %s (%s)", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v26, -1, -1);
    v33 = v25;
    v5 = v62;
    MEMORY[0x1CCA93280](v33, -1, -1);
  }

  else
  {

    v77 = *(v80 + 8);
    v77(v15, v10);
  }

  v34 = sub_1C99588D4(v78, v17, v79, a2);
  if (v5)
  {

    return (v77)(v17, v10);
  }

  else
  {
    v36 = v34;
    v79 = 0;
    v37 = swift_allocObject();
    v37[2] = sub_1C9945DA8;
    v37[3] = 0;
    v37[4] = v36;
    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C996FE74(&unk_1EC3CE310);
    v38 = v67;
    sub_1C9A91EF8();
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1C9A935B8();

    v81 = 0xD000000000000018;
    v82 = 0x80000001C9AD9E50;
    v76 = sub_1C996D568(&qword_1EC3C5480);
    v39 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v39);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    v78 = v18;
    MEMORY[0x1CCA90230](v18, v19);
    MEMORY[0x1CCA90230](2112041, 0xE300000000000000);
    v40 = v68;
    sub_1C993AFD4();

    (*(v69 + 8))(v38, v71);
    sub_1C996FE74(&unk_1EC3CD5D8);
    v41 = v72;
    v42 = sub_1C9A91F28();
    (*(v70 + 8))(v40, v41);
    v43 = v73;
    v44 = v64;
    v64(v73, v17, v10);
    *&v43[*(type metadata accessor for SoundRecognition.Session() + 20)] = v42;
    v45 = v74;
    v44(v74, v17, v10);

    v46 = sub_1C9A91B38();
    v47 = sub_1C9A92FC8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v45;
      v49 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81 = v75;
      *v49 = 136315394;
      v50 = sub_1C9A93A98();
      v51 = v77;
      v52 = v50;
      v53 = v10;
      v61 = v10;
      v55 = v54;
      v63 = v17;
      v77(v48, v53);
      v56 = sub_1C9849140(v52, v55, &v81);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      v57 = sub_1C9849140(v78, v19, &v81);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_1C9788000, v46, v47, "Finished Creating Sound Recognition Session %s (%s)", v49, 0x16u);
      v58 = v75;
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v58, -1, -1);
      MEMORY[0x1CCA93280](v49, -1, -1);

      return v51(v63, v61);
    }

    else
    {

      v59 = v77;
      v77(v45, v10);
      return v59(v17, v10);
    }
  }
}

void sub_1C9954F74()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v71 = v7;
  v8 = sub_1C97A2CEC(&qword_1EC3C77C0);
  sub_1C97ABF78(v8, &v77);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  sub_1C97ABFB4(v10);
  v11 = sub_1C97A2CEC(&qword_1EC3CE3D8);
  sub_1C97ABF78(v11, &v78);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  sub_1C97ABFB4(v13);
  v14 = sub_1C9A91748();
  sub_1C97AE9C8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C98435A0();
  v72 = v18 - v19;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C9971634();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C98BBB18();
  sub_1C9A91738();
  sub_1C9971228();
  sub_1C9971600(v22);
  MEMORY[0x1CCA90230](*v6, v6[1]);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v23 = sub_1C9A91B58();
  sub_1C97BFF6C(v23, qword_1EC3D3108);
  v24 = sub_1C9971360();
  v70 = v25;
  v25(v24);

  v26 = sub_1C9A91B38();
  v27 = sub_1C9A92FC8();

  v73 = v27;
  if (os_log_type_enabled(v26, v27))
  {
    v79 = v16;
    v28 = sub_1C99716C8();
    swift_slowAlloc();
    *v28 = 136446466;
    sub_1C9970F78();
    sub_1C996D568(v29);
    sub_1C9A93A98();
    v30 = *(v79 + 8);
    v31 = sub_1C9971360();
    v30(v31);
    v32 = sub_1C98B7774();
    v35 = sub_1C9849140(v32, v33, v34);

    *(v28 + 4) = v35;
    v36 = v30;
    v2 = v1;
    *(v28 + 12) = 2080;
    v37 = sub_1C9971590();
    *(v28 + 14) = sub_1C9849140(v37, v75, v38);
    sub_1C9971688(&dword_1C9788000, "Started Creating Accessibility Sound Recognition Session %{public}s (%s)", v73);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    v36 = *(v16 + 8);
    v39 = sub_1C99715D4();
    v36(v39);
  }

  sub_1C9971584();
  memcpy(v40, v41, v42);
  sub_1C9963CD8(v76, v4);
  if (v2)
  {
    (v36)(v0, v14);
  }

  else
  {
    v74 = v36;
    v43 = sub_1C9813668();
    sub_1C97A2CEC(v43);
    sub_1C97AE9EC();
    sub_1C99714C4();
    sub_1C996FE74(v44);
    sub_1C97E89F0();
    v45 = sub_1C9A91F28();

    sub_1C97DAA28();
    v46 = swift_allocObject();
    v46[2] = sub_1C9970F50;
    v46[3] = 0;
    v46[4] = v45;
    sub_1C9A91EF8();
    sub_1C99713F4();

    sub_1C99712E4();
    sub_1C99715EC(v47);
    sub_1C9970F78();
    sub_1C996D568(v48);
    v49 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v49);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    v50 = sub_1C9971590();
    MEMORY[0x1CCA90230](v50);
    sub_1C99714F4();
    sub_1C993B0C8();

    sub_1C97DAA58();
    v51();
    sub_1C9971158(&unk_1EC3CE3F8);
    v52 = sub_1C9813A90();
    sub_1C97DAA58();
    v53 = sub_1C9871794();
    v54(v53);
    v55 = sub_1C97AEB30();
    v70(v55);
    *(v71 + *(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)) = v52;
    (v70)(v72, v0, v14);

    v56 = sub_1C9A91B38();
    v57 = sub_1C9A92FC8();

    if (os_log_type_enabled(v56, v57))
    {
      sub_1C99716C8();
      sub_1C9971668();
      *v72 = 136446466;
      sub_1C9A93A98();
      v58 = sub_1C98B7774();
      v74(v58);
      v59 = sub_1C98BBB4C();
      v62 = sub_1C9849140(v59, v60, v61);

      *(v72 + 4) = v62;
      *(v72 + 12) = 2080;
      v63 = sub_1C9971590();
      v65 = sub_1C9849140(v63, v75, v64);

      *(v72 + 14) = v65;
      sub_1C9971648(&dword_1C9788000, v66, v67, "Finished Creating Accessibility Sound Recognition Session %{public}s (%s)");
      swift_arrayDestroy();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();

      (v74)(v0, v14);
    }

    else
    {

      v68 = sub_1C997159C();
      v74(v68);
      v69 = sub_1C99715D4();
      v74(v69);
    }
  }

  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C99557B8@<X0>(void (*a1)(char *, uint64_t)@<X0>, _OWORD *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v74 = a3;
  v72 = sub_1C97A2CEC(&qword_1EC3C77C0);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v62 - v7;
  v73 = sub_1C97A2CEC(&qword_1EC3CE3D8);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v62 - v8;
  v9 = sub_1C9A91748();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v62 - v16;
  sub_1C9A91738();
  v79 = 0x206D6F74737563;
  v80 = 0xE700000000000000;
  v18 = *a1;
  v19 = *(a1 + 1);
  v77 = a1;
  MEMORY[0x1CCA90230](v18, v19);
  v78 = v79;
  v20 = v80;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v21 = sub_1C9A91B58();
  v22 = sub_1C97BFF6C(v21, qword_1EC3D3108);
  v23 = *(v10 + 16);
  v66 = v10 + 16;
  v65 = v23;
  v23(v15, v17, v9);

  v67 = v22;
  v24 = sub_1C9A91B38();
  LODWORD(v22) = sub_1C9A92FC8();

  LODWORD(v76) = v22;
  if (os_log_type_enabled(v24, v22))
  {
    v25 = swift_slowAlloc();
    v82 = v10;
    v26 = v25;
    v27 = swift_slowAlloc();
    v62 = v20;
    v63 = v27;
    v79 = v27;
    *v26 = 136446466;
    sub_1C996D568(&qword_1EC3C5480);
    v28 = sub_1C9A93A98();
    v29 = v17;
    v30 = v9;
    v32 = v31;
    v64 = a2;
    v33 = *(v82 + 8);
    v33(v15, v30);
    v34 = sub_1C9849140(v28, v32, &v79);
    v9 = v30;
    v17 = v29;

    *(v26 + 4) = v34;
    v35 = v33;
    v4 = v3;
    a2 = v64;
    *(v26 + 12) = 2080;
    v20 = v62;
    *(v26 + 14) = sub_1C9849140(v78, v62, &v79);
    _os_log_impl(&dword_1C9788000, v24, v76, "Started Creating Accessibility Sound Recognition Session %{public}s (%s)", v26, 0x16u);
    v36 = v63;
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v36, -1, -1);
    v37 = v26;
    v10 = v82;
    MEMORY[0x1CCA93280](v37, -1, -1);
  }

  else
  {

    v35 = *(v10 + 8);
    v35(v15, v9);
  }

  memcpy(__dst, v77 + 16, sizeof(__dst));
  v38 = sub_1C9964664(__dst, a2);
  if (v4)
  {
    v35(v17, v9);
  }

  else
  {
    v76 = 0;
    v77 = v35;
    v82 = v10;
    v79 = v38;
    sub_1C97A2CEC(&unk_1EC3CE050);
    sub_1C996FE74(&unk_1EC3CCE80);
    v40 = sub_1C9A91F28();

    v41 = swift_allocObject();
    v41[2] = sub_1C9970F50;
    v41[3] = 0;
    v41[4] = v40;
    v42 = v68;
    sub_1C9A91EF8();
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_1C9A935B8();

    v79 = 0xD000000000000026;
    v80 = 0x80000001C9ADA6A0;
    v64 = sub_1C996D568(&qword_1EC3C5480);
    v43 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v43);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    MEMORY[0x1CCA90230](v78, v20);
    MEMORY[0x1CCA90230](2112041, 0xE300000000000000);
    v44 = v69;
    sub_1C993B0C8();

    (*(v70 + 8))(v42, v72);
    sub_1C996FE74(&unk_1EC3CE3F8);
    v45 = v73;
    v46 = sub_1C9A91F28();
    (*(v71 + 8))(v44, v45);
    v47 = v74;
    v48 = v65;
    v65(v74, v17, v9);
    *&v47[*(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)] = v46;
    v49 = v75;
    v48(v75, v17, v9);

    v50 = sub_1C9A91B38();
    v51 = sub_1C9A92FC8();

    v52 = v17;
    if (os_log_type_enabled(v50, v51))
    {
      v53 = v49;
      v54 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v54 = 136446466;
      v55 = sub_1C9A93A98();
      v74 = v52;
      v57 = v56;
      v77(v53, v9);
      v58 = sub_1C9849140(v55, v57, &v79);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      v59 = sub_1C9849140(v78, v20, &v79);

      *(v54 + 14) = v59;
      _os_log_impl(&dword_1C9788000, v50, v51, "Finished Creating Accessibility Sound Recognition Session %{public}s (%s)", v54, 0x16u);
      v60 = v73;
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v60, -1, -1);
      MEMORY[0x1CCA93280](v54, -1, -1);

      return (v77)(v74, v9);
    }

    else
    {

      v61 = v77;
      v77(v49, v9);
      return v61(v17, v9);
    }
  }
}

void sub_1C99561D4()
{
  sub_1C97AEB94();
  v2 = v1;
  v71 = v3;
  v72 = v4;
  v70 = v5;
  v7 = v6;
  v66 = v8;
  v64 = sub_1C97A2CEC(&qword_1EC3C77C0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v65 = sub_1C97A2CEC(&qword_1EC3CE3D8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AC02C();
  v11 = sub_1C9A91748();
  sub_1C97AE9C8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C98435A0();
  v67 = v15 - v16;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C9971634();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98BBB18();
  sub_1C9A91738();
  sub_1C9971228();
  v75 = v19;
  v76 = v20;
  v69 = v7;
  MEMORY[0x1CCA90230](*v7, v7[1]);
  v21 = v76;
  v74 = v75;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v22 = sub_1C9A91B58();
  sub_1C97BFF6C(v22, qword_1EC3D3108);
  v23 = sub_1C9971360();
  v63 = v24;
  v24(v23);

  v25 = sub_1C9A91B38();
  v26 = sub_1C9A92FC8();

  v68 = v26;
  v73 = v76;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_1C99716C8();
    v75 = swift_slowAlloc();
    *v27 = 136446466;
    sub_1C9970F78();
    sub_1C996D568(v28);
    sub_1C9A93A98();
    v29 = *(v13 + 8);
    v30 = sub_1C9971360();
    v29(v30);
    v31 = sub_1C98B7774();
    v34 = sub_1C9849140(v31, v32, v33);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1C9849140(v74, v21, &v75);
    sub_1C9971688(&dword_1C9788000, "Started Creating Accessibility Sound Recognition Session %{public}s (%s)", v68);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v2 = v1;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    v29 = *(v13 + 8);
    v35 = sub_1C99715D4();
    v29(v35);
  }

  v36 = sub_1C9963BE8(v69, v70, v71, v72);
  if (v2)
  {
    (v29)(v0, v11);
  }

  else
  {
    v37 = v36;
    sub_1C97DAA28();
    v38 = swift_allocObject();
    v38[2] = sub_1C9970F50;
    v38[3] = 0;
    v38[4] = v37;
    v39 = sub_1C9813668();
    sub_1C97A2CEC(v39);
    sub_1C97AE9EC();
    sub_1C99714C4();
    sub_1C996FE74(v40);
    sub_1C9A91EF8();
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C99712E4();
    v75 = v42;
    v76 = v41;
    sub_1C9970F78();
    sub_1C996D568(v43);
    v44 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v44);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    MEMORY[0x1CCA90230](v74, v21);
    sub_1C99714F4();
    sub_1C993B0C8();

    v45 = sub_1C997121C();
    v46(v45, v64);
    sub_1C9971158(&unk_1EC3CE3F8);
    v47 = sub_1C9813A90();
    v48 = sub_1C9945F10();
    v49(v48, v65);
    v50 = sub_1C97AEB30();
    v63(v50);
    *(v66 + *(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)) = v47;
    (v63)(v67, v0, v11);

    v51 = sub_1C9A91B38();
    v52 = sub_1C9A92FC8();

    if (os_log_type_enabled(v51, v52))
    {
      sub_1C99716C8();
      v75 = sub_1C9971668();
      *v67 = 136446466;
      sub_1C9A93A98();
      v53 = sub_1C98B7774();
      v29(v53);
      v54 = sub_1C98BBB4C();
      v57 = sub_1C9849140(v54, v55, v56);

      *(v67 + 4) = v57;
      *(v67 + 12) = 2080;
      v58 = sub_1C9849140(v74, v73, &v75);

      *(v67 + 14) = v58;
      sub_1C9971648(&dword_1C9788000, v59, v60, "Finished Creating Accessibility Sound Recognition Session %{public}s (%s)");
      swift_arrayDestroy();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();

      (v29)(v0, v11);
    }

    else
    {

      v61 = sub_1C997159C();
      v29(v61);
      v62 = sub_1C99715D4();
      v29(v62);
    }
  }

  sub_1C9971380();
  sub_1C97AEB5C();
}

uint64_t sub_1C9956924()
{
  sub_1C988A500();
  if (qword_1EC3C5E00 != -1)
  {
    sub_1C97E88A0();
  }

  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  memcpy(v5, &unk_1EC3D3360, 0x41uLL);
  v6 = v1;
  v7 = v0;
  sub_1C97E2DB0(__dst, v4);
  v2 = sub_1C985F310();
  sub_1C97DA1E0(v5, &qword_1EC3C76A0);
  return v2;
}

char *sub_1C99569EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v61 = a2;
  v59 = a1;
  v5 = sub_1C97A2CEC(&unk_1EC3CD650);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v42 - v6;
  v53 = sub_1C97A2CEC(&unk_1EC3CE340);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v47 = &v42 - v7;
  v50 = sub_1C97A2CEC(&unk_1EC3CD660);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v42 - v8;
  v10 = sub_1C97A2CEC(&unk_1EC3CE350);
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = sub_1C97A2CEC(&unk_1EC3C9910);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - v14);
  v16 = sub_1C9A91C28();
  v56 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C97A2CEC(&unk_1EC3CD670);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v42 - v21;
  v22 = *(a4 + 16);
  v64[0] = *a4;
  v64[1] = v22;
  v65 = *(a4 + 32);
  v23 = v63;
  sub_1C9956924();
  if (!v23)
  {
    v62 = v20;
    v63 = v19;
    v43 = v9;
    v44 = v12;
    v45 = v10;
    v61 = 0;
    v24 = sub_1C9832398();
    v46 = v24;

    v66 = v24;
    v25 = v56;
    (*(v56 + 104))(v18, *MEMORY[0x1E695BD20], v16);
    *v15 = sub_1C993F164;
    v15[1] = 0;
    v26 = v57;
    v27 = v58;
    (*(v57 + 104))(v15, *MEMORY[0x1E695BD48], v58);
    sub_1C97A2CEC(&unk_1EC3CC280);
    sub_1C996FE74(&unk_1EC3C4A90);
    v28 = v60;
    sub_1C9A92018();
    (*(v26 + 8))(v15, v27);
    (*(v25 + 8))(v18, v16);

    v18 = &v42;
    MEMORY[0x1EEE9AC00](v29);
    *(&v42 - 4) = v59;
    *(&v42 - 3) = v64;
    *(&v42 - 2) = v28;
    v30 = v61;
    v31 = sub_1C993B6C4();
    if (v30)
    {
      (*(v62 + 8))(v28, v63);
    }

    else
    {
      v66 = v31;
      sub_1C97A2CEC(&unk_1EC3CC2B0);
      sub_1C97A2CEC(&qword_1EC3CD680);
      v33 = v28;
      sub_1C996FE74(&unk_1EC3C9B50);
      v34 = v49;
      sub_1C9A92048();
      sub_1C97A2CEC(&qword_1EC3C9AA0);
      v35 = v47;
      v36 = v55;
      sub_1C9A91CA8();
      (*(v54 + 8))(v34, v36);
      v37 = v43;
      v38 = v53;
      sub_1C9A91CA8();
      (*(v51 + 8))(v35, v38);
      v39 = v44;
      v40 = v50;
      sub_1C9A91CA8();
      (*(v48 + 8))(v37, v40);
      sub_1C996FE74(&unk_1EC3CD688);
      v41 = v45;
      v18 = sub_1C9A91F28();

      (*(v52 + 8))(v39, v41);
      (*(v62 + 8))(v33, v63);
    }
  }

  return v18;
}

char *sub_1C9957210(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v61 = a3;
  v60 = a2;
  v58 = a1;
  v54 = sub_1C97A2CEC(&unk_1EC3CD650);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v41 - v5;
  v52 = sub_1C97A2CEC(&unk_1EC3CE340);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v41 - v6;
  v49 = sub_1C97A2CEC(&unk_1EC3CD660);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v8 = &v41 - v7;
  v9 = sub_1C97A2CEC(&unk_1EC3CE350);
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v57 = sub_1C97A2CEC(&unk_1EC3C9910);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = (&v41 - v12);
  v14 = sub_1C9A91C28();
  v55 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C97A2CEC(&unk_1EC3CD670);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v41 - v19;
  v20 = a4[1];
  v63[0] = *a4;
  v63[1] = v20;
  v21 = a4[3];
  v64 = a4[2];
  v65 = v21;
  v66 = v63[0];
  v67 = v20;
  v68 = v64;
  v69 = v21;
  v22 = v62;
  sub_1C985F378(v60, v61);
  if (!v22)
  {
    v61 = v18;
    v62 = v17;
    v42 = v8;
    v43 = v11;
    v44 = v9;
    v60 = 0;
    v23 = sub_1C9832398();
    v45 = v23;

    v70 = v23;
    v24 = v55;
    (*(v55 + 104))(v16, *MEMORY[0x1E695BD20], v14);
    *v13 = sub_1C993F164;
    v13[1] = 0;
    v25 = v56;
    v26 = v57;
    (*(v56 + 104))(v13, *MEMORY[0x1E695BD48], v57);
    sub_1C97A2CEC(&unk_1EC3CC280);
    sub_1C996FE74(&unk_1EC3C4A90);
    v27 = v59;
    sub_1C9A92018();
    (*(v25 + 8))(v13, v26);
    (*(v24 + 8))(v16, v14);

    v16 = &v41;
    MEMORY[0x1EEE9AC00](v28);
    *(&v41 - 4) = v58;
    *(&v41 - 3) = v63;
    *(&v41 - 2) = v27;
    v29 = v60;
    v30 = sub_1C993B6C4();
    if (v29)
    {
      (*(v61 + 8))(v27, v62);
    }

    else
    {
      v70 = v30;
      sub_1C97A2CEC(&unk_1EC3CC2B0);
      sub_1C97A2CEC(&qword_1EC3CD680);
      v32 = v27;
      sub_1C996FE74(&qword_1EC3C9B50);
      v33 = v48;
      sub_1C9A92048();
      sub_1C97A2CEC(&qword_1EC3C9AA0);
      v34 = v46;
      v35 = v54;
      sub_1C9A91CA8();
      (*(v53 + 8))(v33, v35);
      v36 = v42;
      v37 = v52;
      sub_1C9A91CA8();
      (*(v50 + 8))(v34, v37);
      v38 = v43;
      v39 = v49;
      sub_1C9A91CA8();
      (*(v47 + 8))(v36, v39);
      sub_1C996FE74(&qword_1EC3CD688);
      v40 = v44;
      v16 = sub_1C9A91F28();

      (*(v51 + 8))(v38, v40);
      (*(v61 + 8))(v32, v62);
    }
  }

  return v16;
}

char *sub_1C9957AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a3;
  v24 = a1;
  v25 = sub_1C9A91408();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C9A91558();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C97A2CEC(&unk_1EC3CE360);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  sub_1C97A2CEC(&unk_1EC3CD670);
  sub_1C996FE74(&qword_1EC3CD6A0);
  sub_1C9A91F68();
  sub_1C996FE74(&unk_1EC3CE370);
  v12 = sub_1C9A91F28();
  v13 = v24;
  (*(v9 + 8))(v11, v8);
  v28 = 0x6A2E657069636572;
  v29 = 0xEB000000006E6F73;
  v14 = v25;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v25);
  sub_1C98449A8();
  sub_1C9A91538();
  (*(v3 + 8))(v5, v14);
  v15 = v7;
  v16 = v26;
  v17 = sub_1C9A915A8();
  if (v16)
  {

    (*(v27 + 8))(v7, v30);
  }

  else
  {
    v19 = v17;
    v20 = v18;
    v22 = sub_1C98DB63C();
    MEMORY[0x1EEE9AC00](v22);
    v23[-2] = v13;
    v5 = sub_1C99F437C(v12, sub_1C986F178, &v23[-4], v22);
    sub_1C97A5978(v19, v20);

    (*(v27 + 8))(v15, v30);
  }

  return v5;
}

char *sub_1C9957EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a3;
  v24 = a1;
  v25 = sub_1C9A91408();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C9A91558();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C97A2CEC(&unk_1EC3CE360);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  sub_1C97A2CEC(&unk_1EC3CD670);
  sub_1C996FE74(&qword_1EC3CD6A0);
  sub_1C9A91F68();
  sub_1C996FE74(&unk_1EC3CE370);
  v12 = sub_1C9A91F28();
  v13 = v24;
  (*(v9 + 8))(v11, v8);
  v28 = 0x6A2E657069636572;
  v29 = 0xEB000000006E6F73;
  v14 = v25;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v25);
  sub_1C98449A8();
  sub_1C9A91538();
  (*(v3 + 8))(v5, v14);
  v15 = v7;
  v16 = v26;
  v17 = sub_1C9A915A8();
  if (v16)
  {

    (*(v27 + 8))(v7, v30);
  }

  else
  {
    v19 = v17;
    v20 = v18;
    v22 = sub_1C98DB63C();
    MEMORY[0x1EEE9AC00](v22);
    v23[-2] = v13;
    v5 = sub_1C99F437C(v12, sub_1C9970EF0, &v23[-4], v22);
    sub_1C97A5978(v19, v20);

    (*(v27 + 8))(v15, v30);
  }

  return v5;
}

uint64_t sub_1C9958344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C97A2CEC(&unk_1EC3CE320);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  v14 = sub_1C99569EC(a1, a2, a3, a4);
  if (!v4)
  {
    v16[1] = v14;
    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C996FE74(&unk_1EC3CE310);
    sub_1C9943854();
    sub_1C9A920D8();

    sub_1C996FE74(&unk_1EC3CE330);
    v5 = sub_1C9A91F28();
    (*(v11 + 8))(v13, v10);
  }

  return v5;
}

uint64_t sub_1C9958514(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = v4;
  v10 = sub_1C97A2CEC(&unk_1EC3CE320);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  v14 = sub_1C9957210(a1, a2, a3, a4);
  if (!v4)
  {
    v16[1] = v14;
    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C996FE74(&unk_1EC3CE310);
    sub_1C9943854();
    sub_1C9A920D8();

    sub_1C996FE74(&unk_1EC3CE330);
    v5 = sub_1C9A91F28();
    (*(v11 + 8))(v13, v10);
  }

  return v5;
}

uint64_t sub_1C99586E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C9A91558();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v14 = sub_1C9942FF4(a1);
  sub_1C98C73E0(v14, v11);
  if (!v4)
  {
    (*(v8 + 32))(v13, v11, v7);
    if (a1)
    {
      v15 = 96;
    }

    else
    {
      v15 = 74;
    }

    v17[1] = sub_1C9958344(v13, v15, 48, a4);
    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C996FE74(&unk_1EC3CE310);
    a4 = sub_1C9A91F28();

    (*(v8 + 8))(v13, v7);
  }

  return a4;
}

_OWORD *sub_1C99588D4(char a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v7 = sub_1C9A91558();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v14 = sub_1C9942FF4(a1);
  sub_1C98C73E0(v14, v11);
  if (!v4)
  {
    (*(v8 + 32))(v13, v11, v7);
    if (a1)
    {
      v15 = 96;
    }

    else
    {
      v15 = 74;
    }

    v17[1] = sub_1C9958514(v13, v15, 48, a4);
    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C996FE74(&unk_1EC3CE310);
    a4 = sub_1C9A91F28();

    (*(v8 + 8))(v13, v7);
  }

  return a4;
}

uint64_t sub_1C9958AC4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v9 = v1[7];
  v8 = v1[8];
  v11 = v1[9];
  v10 = v1[10];
  v13 = v1[11];
  v12 = v1[12];
  v15 = v1[13];
  v16 = v1[14];
  v17 = v1[15];
  *a1 = *v1;
  a1[1] = &unk_1F492A6F0;
  a1[2] = v2;
  a1[3] = &unk_1F492A728;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = &unk_1F492A768;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = &unk_1F492A7A8;
  a1[10] = v7;
  a1[11] = v9;
  a1[12] = &unk_1F492A7E8;
  a1[13] = v8;
  a1[14] = v11;
  a1[15] = &unk_1F492A828;
  a1[16] = v10;
  a1[17] = v13;
  a1[18] = &unk_1F492A868;
  a1[19] = v12;
  a1[20] = v15;
  a1[21] = &unk_1F492A898;
  a1[22] = v16;
  a1[23] = v17;
}

uint64_t *sub_1C9958C28@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    v4 = result;
    v20 = result[2];
    v5 = result[4];
    v6 = result[7];
    v7 = result[8];
    v16 = result[10];
    v17 = result[5];
    v19 = result[11];
    v8 = result[13];
    v14 = result[16];
    v15 = result[14];
    v18 = result[17];
    v9 = result[19];
    v12 = result[22];
    v13 = result[20];
    v21 = result[23];
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    result = sub_1C996FC78(v4);
    *a2 = v3;
    *&v10 = v5;
    *(&v10 + 1) = v17;
    *(a2 + 8) = v20;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *&v10 = v16;
    *(&v10 + 1) = v19;
    *&v11 = v8;
    *(&v11 + 1) = v15;
    *(a2 + 48) = v10;
    *(a2 + 64) = v11;
    *&v10 = v14;
    *(&v10 + 1) = v18;
    *&v11 = v9;
    *(&v11 + 1) = v13;
    *(a2 + 80) = v10;
    *(a2 + 96) = v11;
    *(a2 + 112) = v12;
    *(a2 + 120) = v21;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1C9958DEC()
{
  sub_1C988A500();
  swift_getWitnessTable();
  sub_1C9958F48();
}

uint64_t sub_1C9958E84(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x41uLL);
  memcpy(v12, __dst, sizeof(v12));
  v13 = a2;
  v14 = a3;
  sub_1C97E2DB0(__src, v8);
  v6 = sub_1C98B2AB0();
  memcpy(v8, __dst, sizeof(v8));
  v9 = a2;
  v10 = a3;
  sub_1C97DA1E0(v8, &qword_1EC3CE610);
  return v6;
}

void sub_1C9958F48()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  swift_getAssociatedTypeWitness();
  sub_1C99713D4();
  sub_1C99713D4();
  sub_1C99713D4();
  type metadata accessor for SharedSoundPrintK.Configuration();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97FB2C8();
  sub_1C99715E0();
  sub_1C99614E0(v6, v7, v8, v9);
  (*(v2 + 40))(v0, v4, v2);
  v10 = sub_1C97FB300();
  v11(v10);
  sub_1C9971534();
  sub_1C97AEB5C();
}

uint64_t sub_1C99590D8()
{
  v6[3] = &unk_1F492E308;
  v6[4] = &off_1F492E690;
  v2 = swift_allocObject();
  v6[0] = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);

  v4 = sub_1C99A7FC0(v6, 0xD000000000000035, 0x80000001C9ADA6D0);
  if (!v1)
  {
    LOBYTE(v0) = v4;
  }

  sub_1C97A592C(v6);
  return v0 & 1;
}

uint64_t sub_1C99591B8()
{
  sub_1C988A500();
  if (qword_1EC3C5E00 != -1)
  {
    sub_1C97E88A0();
  }

  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  return sub_1C9958E84(__dst, v1, v0);
}

id static AccessibilitySoundRecognition.isSupported.getter()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C98FA3F0();
  v1 = sub_1C99B590C();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    return (v1 != 0);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if (exclaveCapability)
    {
      v7 = MGGetProductType();
      if (qword_1EC3C5D98 != -1)
      {
        sub_1C9871824();
      }

      v8 = qword_1EC3D31E8;

      return sub_1C98F4044(v7, v8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9959488(char a1)
{
  result = 0x616C41656B6F6D73;
  switch(a1)
  {
    case 1:
      result = 0x7373657274736964;
      break;
    case 2:
      result = 1885693282;
      break;
    case 3:
      result = 0x72657A7A7562;
      break;
    case 4:
      result = 0x6E726F48726163;
      break;
    case 5:
      result = 0x776F654D746163;
      break;
    case 6:
      result = 0x6867756F63;
      break;
    case 7:
      v3 = 1735289188;
      goto LABEL_13;
    case 8:
      result = 0x6B726142676F64;
      break;
    case 9:
      v3 = 1919905636;
LABEL_13:
      result = v3 | 0x6C6C654200000000;
      break;
    case 10:
      result = 0x636F6E4B726F6F64;
      break;
    case 11:
      result = 0x72616C4165726966;
      break;
    case 12:
      result = 0x6572427373616C67;
      break;
    case 13:
      result = 0x6857656C7474656BLL;
      break;
    case 14:
      result = 0x74756F6873;
      break;
    case 15:
      result = 0x616C416E65726973;
      break;
    case 16:
      result = 0x6E75527265746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9959660(uint64_t a1)
{
  v2 = sub_1C996C5D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995969C(uint64_t a1)
{
  v2 = sub_1C996C5D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99596D8(uint64_t a1)
{
  v2 = sub_1C996C57C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959714(uint64_t a1)
{
  v2 = sub_1C996C57C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959750(uint64_t a1)
{
  v2 = sub_1C996C528();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995978C(uint64_t a1)
{
  v2 = sub_1C996C528();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99597C8(uint64_t a1)
{
  v2 = sub_1C996C4D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959804(uint64_t a1)
{
  v2 = sub_1C996C4D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959860(uint64_t a1)
{
  v2 = sub_1C996C0E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995989C(uint64_t a1)
{
  v2 = sub_1C996C0E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99598D8(uint64_t a1)
{
  v2 = sub_1C996C480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959914(uint64_t a1)
{
  v2 = sub_1C996C480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959950(uint64_t a1)
{
  v2 = sub_1C996C42C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995998C(uint64_t a1)
{
  v2 = sub_1C996C42C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99599C8(uint64_t a1)
{
  v2 = sub_1C996C624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959A04(uint64_t a1)
{
  v2 = sub_1C996C624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959A40(uint64_t a1)
{
  v2 = sub_1C996C3D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959A7C(uint64_t a1)
{
  v2 = sub_1C996C3D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959AB8(uint64_t a1)
{
  v2 = sub_1C996C384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959AF4(uint64_t a1)
{
  v2 = sub_1C996C384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959B30(uint64_t a1)
{
  v2 = sub_1C996C330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959B6C(uint64_t a1)
{
  v2 = sub_1C996C330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959BA8(uint64_t a1)
{
  v2 = sub_1C996C2DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959BE4(uint64_t a1)
{
  v2 = sub_1C996C2DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959C20(uint64_t a1)
{
  v2 = sub_1C996C288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959C5C(uint64_t a1)
{
  v2 = sub_1C996C288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959C98(uint64_t a1)
{
  v2 = sub_1C996C234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959CD4(uint64_t a1)
{
  v2 = sub_1C996C234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959D10(uint64_t a1)
{
  v2 = sub_1C996C1E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959D4C(uint64_t a1)
{
  v2 = sub_1C996C1E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959D88(uint64_t a1)
{
  v2 = sub_1C996C18C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959DC4(uint64_t a1)
{
  v2 = sub_1C996C18C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959E00(uint64_t a1)
{
  v2 = sub_1C996C678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959E3C(uint64_t a1)
{
  v2 = sub_1C996C678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959E78(uint64_t a1)
{
  v2 = sub_1C996C138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959EB4(uint64_t a1)
{
  v2 = sub_1C996C138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AccessibilitySoundRecognition.BuiltInDetectorIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v25;
  a23 = v26;
  v27 = v23;
  v29 = v28;
  sub_1C97A2CEC(&qword_1EC3CDD90);
  sub_1C97AE9C8();
  v118[0] = v31;
  v118[1] = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  v117[2] = v33;
  sub_1C97A2CEC(&qword_1EC3CDD98);
  sub_1C97AE9C8();
  v117[0] = v35;
  v117[1] = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  v116[2] = v37;
  sub_1C97A2CEC(&qword_1EC3CDDA0);
  sub_1C97AE9C8();
  v116[0] = v39;
  v116[1] = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AC02C();
  v115[2] = v41;
  sub_1C97A2CEC(&qword_1EC3CDDA8);
  sub_1C97AE9C8();
  v115[0] = v43;
  v115[1] = v42;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97AC02C();
  v114[2] = v45;
  sub_1C97A2CEC(&qword_1EC3CDDB0);
  sub_1C97AE9C8();
  v114[0] = v47;
  v114[1] = v46;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C97AC02C();
  v113 = v49;
  sub_1C97A2CEC(&qword_1EC3CDDB8);
  sub_1C97AE9C8();
  v111 = v51;
  v112 = v50;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C97AC02C();
  v110 = v53;
  v54 = sub_1C97A2CEC(&qword_1EC3CDDC0);
  sub_1C97ABF78(v54, &a21);
  v109 = v55;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C97AC02C();
  sub_1C97ABFB4(v57);
  v58 = sub_1C97A2CEC(&qword_1EC3CDDC8);
  sub_1C97ABF78(v58, &a18);
  v108 = v59;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C97AC02C();
  sub_1C97ABFB4(v61);
  v62 = sub_1C97A2CEC(&qword_1EC3CDDD0);
  sub_1C97ABF78(v62, &a15);
  v107 = v63;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C97AC02C();
  sub_1C97ABFB4(v65);
  v66 = sub_1C97A2CEC(&qword_1EC3CDDD8);
  sub_1C97ABF78(v66, &a9);
  v106 = v67;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C97AC02C();
  sub_1C97ABFB4(v69);
  v70 = sub_1C97A2CEC(&qword_1EC3CDDE0);
  sub_1C97ABF78(v70, v120);
  v105 = v71;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C97AC02C();
  sub_1C97ABFB4(v73);
  v74 = sub_1C97A2CEC(&qword_1EC3CDDE8);
  sub_1C97ABF78(v74, v118);
  v104 = v75;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C97AC02C();
  sub_1C97ABFB4(v77);
  v78 = sub_1C97A2CEC(&qword_1EC3CDDF0);
  sub_1C97ABF78(v78, v117);
  v103 = v79;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v80);
  sub_1C97AC02C();
  sub_1C97ABFB4(v81);
  v82 = sub_1C97A2CEC(&qword_1EC3CDDF8);
  sub_1C97ABF78(v82, v116);
  v102 = v83;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C97AC02C();
  sub_1C97ABFB4(v85);
  v86 = sub_1C97A2CEC(&qword_1EC3CDE00);
  sub_1C97ABF78(v86, v115);
  v101 = v87;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v88);
  sub_1C97AC02C();
  sub_1C97ABFB4(v89);
  v90 = sub_1C97A2CEC(&qword_1EC3CDE08);
  sub_1C97ABF78(v90, v114);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v91);
  sub_1C97AEA4C();
  sub_1C97A2CEC(&qword_1EC3CDE10);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v92);
  sub_1C97FB2C8();
  v120[0] = sub_1C97A2CEC(&qword_1EC3CDE18);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C97E86E4();
  v94 = *v27;
  sub_1C97BE20C(v29, v29[3]);
  sub_1C996C0E4();
  v119 = v24;
  sub_1C9A93DD8();
  switch(v94)
  {
    case 1:
      sub_1C97FB3CC();
      sub_1C996C624();
      sub_1C99710E0();
      v95 = sub_1C997107C();
      v98 = v114;
      goto LABEL_20;
    case 2:
      a13 = 2;
      sub_1C996C5D0();
      sub_1C997108C();
      v95 = sub_1C997107C();
      v98 = v115;
      goto LABEL_20;
    case 3:
      a13 = 3;
      sub_1C996C57C();
      sub_1C997108C();
      v95 = sub_1C997107C();
      v98 = v116;
      goto LABEL_20;
    case 4:
      a13 = 4;
      sub_1C996C528();
      sub_1C997108C();
      v95 = sub_1C997107C();
      v98 = v117;
      goto LABEL_20;
    case 5:
      a13 = 5;
      sub_1C996C4D4();
      sub_1C997108C();
      v95 = sub_1C997107C();
      v98 = v118;
      goto LABEL_20;
    case 6:
      a13 = 6;
      sub_1C996C480();
      sub_1C997108C();
      v95 = sub_1C997107C();
      v98 = v120;
      goto LABEL_20;
    case 7:
      a13 = 7;
      sub_1C996C42C();
      sub_1C997108C();
      v95 = sub_1C997107C();
      v98 = &a9;
      goto LABEL_20;
    case 8:
      sub_1C9971558();
      sub_1C996C3D8();
      sub_1C997108C();
      v95 = sub_1C997107C();
      v98 = &a15;
      goto LABEL_20;
    case 9:
      a13 = 9;
      sub_1C996C384();
      sub_1C997108C();
      v95 = sub_1C997107C();
      v98 = &a18;
      goto LABEL_20;
    case 10:
      a13 = 10;
      sub_1C996C330();
      sub_1C997108C();
      v95 = sub_1C997107C();
      v98 = &a21;
LABEL_20:
      v96 = *(v98 - 32);
      break;
    case 11:
      a13 = 11;
      sub_1C996C2DC();
      sub_1C99710E0();
      goto LABEL_16;
    case 12:
      a13 = 12;
      sub_1C996C288();
      sub_1C99710E0();
      goto LABEL_16;
    case 13:
      a13 = 13;
      sub_1C996C234();
      sub_1C99710E0();
      goto LABEL_16;
    case 14:
      a13 = 14;
      sub_1C996C1E0();
      sub_1C99710E0();
      goto LABEL_16;
    case 15:
      a13 = 15;
      sub_1C996C18C();
      sub_1C99710E0();
      goto LABEL_16;
    case 16:
      a13 = 16;
      sub_1C996C138();
      sub_1C99710E0();
LABEL_16:
      v95 = sub_1C9971210();
      break;
    default:
      a13 = 0;
      sub_1C996C678();
      sub_1C9A93988();
      sub_1C97DAA58();
      v95 = sub_1C98DE2C4();
      break;
  }

  v97(v95, v96);
  v99 = sub_1C97BE374();
  v100(v99);
  sub_1C97AEB5C();
}

uint64_t AccessibilitySoundRecognition.BuiltInDetectorIdentifier.hashValue.getter()
{
  sub_1C97BE32C();
  v0 = sub_1C997154C();
  MEMORY[0x1CCA91980](v0);
  return sub_1C9A93D18();
}

void AccessibilitySoundRecognition.BuiltInDetectorIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v27;
  a23 = v28;
  v163[0] = v24;
  v30 = v29;
  v159 = v31;
  sub_1C97A2CEC(&qword_1EC3CDEB0);
  sub_1C97AE9C8();
  v150 = v33;
  v151 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  v158 = v35;
  v149 = sub_1C97A2CEC(&qword_1EC3CDEB8);
  sub_1C97AE9C8();
  v148 = v36;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  v157[1] = v38;
  v39 = sub_1C97A2CEC(&qword_1EC3CDEC0);
  sub_1C97ABF78(v39, &a20);
  v147 = v40;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C97AC02C();
  v157[0] = v42;
  v43 = sub_1C97A2CEC(&qword_1EC3CDEC8);
  sub_1C97ABF78(v43, &a18);
  v146 = v44;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C97AC02C();
  v156[1] = v46;
  v47 = sub_1C97A2CEC(&qword_1EC3CDED0);
  sub_1C97ABF78(v47, &a16);
  v145 = v48;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C97AC02C();
  v156[0] = v50;
  v51 = sub_1C97A2CEC(&qword_1EC3CDED8);
  sub_1C97ABF78(v51, &a14);
  v144 = v52;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97AC02C();
  v155[1] = v54;
  v55 = sub_1C97A2CEC(&qword_1EC3CDEE0);
  sub_1C97ABF78(v55, &a9);
  v143 = v56;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C97AC02C();
  v155[0] = v58;
  v59 = sub_1C97A2CEC(&qword_1EC3CDEE8);
  sub_1C97ABF78(v59, v163);
  v142 = v60;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C97AC02C();
  v154[1] = v62;
  v63 = sub_1C97A2CEC(&qword_1EC3CDEF0);
  sub_1C97ABF78(v63, &v161);
  v141 = v64;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C97AC02C();
  v161 = v66;
  v67 = sub_1C97A2CEC(&qword_1EC3CDEF8);
  sub_1C97ABF78(v67, v160);
  v140 = v68;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C97AC02C();
  v160[1] = v70;
  v71 = sub_1C97A2CEC(&qword_1EC3CDF00);
  sub_1C97ABF78(v71, &v158);
  v139 = v72;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C97AC02C();
  v160[0] = v74;
  v75 = sub_1C97A2CEC(&qword_1EC3CDF08);
  sub_1C97ABF78(v75, v157);
  v138 = v76;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v77);
  sub_1C97AC02C();
  v154[0] = v78;
  v79 = sub_1C97A2CEC(&qword_1EC3CDF10);
  sub_1C97ABF78(v79, v156);
  v137 = v80;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C97AC02C();
  v153[1] = v82;
  v83 = sub_1C97A2CEC(&qword_1EC3CDF18);
  sub_1C97ABF78(v83, v155);
  v136 = v84;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v85);
  sub_1C97AC02C();
  v153[0] = v86;
  v87 = sub_1C97A2CEC(&qword_1EC3CDF20);
  sub_1C97ABF78(v87, v154);
  v135 = v88;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v89);
  sub_1C97AC02C();
  v152 = v90;
  v91 = sub_1C97A2CEC(&qword_1EC3CDF28);
  sub_1C97ABF78(v91, v153);
  v134 = v92;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C9945F4C();
  v94 = sub_1C97A2CEC(&qword_1EC3CDF30);
  sub_1C97AE9C8();
  v133 = v95;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v96);
  sub_1C97FB2D8();
  v97 = sub_1C97A2CEC(&unk_1EC3CDF38);
  sub_1C97AE9C8();
  v99 = v98;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v100);
  sub_1C98550DC();
  v162 = v30;
  v101 = sub_1C98138D4();
  sub_1C97BE20C(v101, v102);
  sub_1C996C0E4();
  sub_1C993AF40();
  v103 = v163[0];
  sub_1C9A93DB8();
  if (!v103)
  {
    v131 = v26;
    v130 = v94;
    v132 = v23;
    v104 = v161;
    v163[0] = v99;
    v105 = sub_1C9A93958();
    sub_1C98EE524(v105, 0);
    if (v107 != v106 >> 1)
    {
      sub_1C9899564();
      sub_1C9971540();
      if (v110 == v111)
      {
        __break(1u);
        return;
      }

      v129 = *(v109 + v108);
      sub_1C98EE520(v108 + 1);
      v113 = v112;
      v115 = v114;
      swift_unknownObjectRelease();
      if (v113 == v115 >> 1)
      {
        v116 = v159;
        switch(v129)
        {
          case 1:
            sub_1C97FB3CC();
            sub_1C996C624();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = v153;
            goto LABEL_27;
          case 2:
            a13 = 2;
            sub_1C996C5D0();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = v154;
            goto LABEL_27;
          case 3:
            a13 = 3;
            sub_1C996C57C();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = v155;
            goto LABEL_27;
          case 4:
            a13 = 4;
            sub_1C996C528();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = v156;
            goto LABEL_27;
          case 5:
            a13 = 5;
            sub_1C996C4D4();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = v157;
            goto LABEL_27;
          case 6:
            a13 = 6;
            sub_1C996C480();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = &v158;
            goto LABEL_27;
          case 7:
            a13 = 7;
            sub_1C996C42C();
            sub_1C991A6A0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = v160;
            goto LABEL_27;
          case 8:
            sub_1C9971558();
            sub_1C996C3D8();
            sub_1C991A6A0();
            swift_unknownObjectRelease();
            sub_1C97DAA58();
            v117 = v104;
            v119 = &v161;
            goto LABEL_27;
          case 9:
            a13 = 9;
            sub_1C996C384();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = v163;
            goto LABEL_27;
          case 10:
            a13 = 10;
            sub_1C996C330();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = &a9;
            goto LABEL_27;
          case 11:
            a13 = 11;
            sub_1C996C2DC();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = &a14;
            goto LABEL_27;
          case 12:
            a13 = 12;
            sub_1C996C288();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = &a16;
            goto LABEL_27;
          case 13:
            a13 = 13;
            sub_1C996C234();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = &a18;
            goto LABEL_27;
          case 14:
            a13 = 14;
            sub_1C996C1E0();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = &a20;
            goto LABEL_27;
          case 15:
            a13 = 15;
            sub_1C996C18C();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v126 = v149;
            goto LABEL_28;
          case 16:
            a13 = 16;
            sub_1C996C138();
            v125 = v158;
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            (*(v150 + 8))(v125, v151);
            goto LABEL_29;
          default:
            a13 = 0;
            sub_1C996C678();
            sub_1C9970FF0();
            swift_unknownObjectRelease();
            v117 = sub_1C9945E3C();
            v119 = &v148;
LABEL_27:
            v126 = *(v119 - 32);
LABEL_28:
            v118(v117, v126);
LABEL_29:
            v127 = sub_1C9945F10();
            v128(v127, v97);
            v124 = v162;
            *v116 = v129;
            break;
        }

        goto LABEL_10;
      }
    }

    v120 = v163[0];
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v122 = v121;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v122 = &type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier;
    sub_1C9A93868();
    sub_1C98994EC();
    sub_1C97AEB3C();
    (*(v123 + 104))(v122);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v120 + 8))(v25, v97);
  }

  v124 = v162;
LABEL_10:
  sub_1C97A592C(v124);
  sub_1C97AEB5C();
}

uint64_t sub_1C995BA9C()
{
  sub_1C9A93CC8();
  AccessibilitySoundRecognition.BuiltInDetectorIdentifier.hash(into:)();
  return sub_1C9A93D18();
}

uint64_t static AccessibilitySoundRecognition.DetectorIdentifier.== infix(_:_:)()
{
  v25 = sub_1C9A91748();
  sub_1C97AE9C8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEAD8();
  v5 = v4 - v3;
  type metadata accessor for AccessibilitySoundRecognition.DetectorIdentifier(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C98435A0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CDF48);
  sub_1C97DACE4(v13);
  sub_1C97ABFF0();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1C996D918();
  sub_1C996D918();
  sub_1C9813668();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C9970F90();
    sub_1C98B7774();
    sub_1C996D918();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = *v12 == v17[v18];
      goto LABEL_6;
    }

LABEL_8:
    sub_1C97DA1E0(v17, &qword_1EC3CDF48);
    v20 = 0;
    return v20 & 1;
  }

  sub_1C9970F90();
  sub_1C988EB2C();
  sub_1C996D918();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v1 + 8))(v9, v25);
    goto LABEL_8;
  }

  v19 = v25;
  (*(v1 + 32))(v5, &v17[v18], v25);
  v20 = sub_1C9A91708();
  v21 = *(v1 + 8);
  v21(v5, v19);
  v21(v9, v19);
LABEL_6:
  sub_1C99710B0();
  sub_1C996D864(v17, v22);
  return v20 & 1;
}

uint64_t sub_1C995BD78(uint64_t a1)
{
  v2 = sub_1C996D4C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995BDB4(uint64_t a1)
{
  v2 = sub_1C996D4C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995BE08(uint64_t a1)
{
  v2 = sub_1C996D418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995BE44(uint64_t a1)
{
  v2 = sub_1C996D418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995BE80(uint64_t a1)
{
  v2 = sub_1C996D46C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995BEBC(uint64_t a1)
{
  v2 = sub_1C996D46C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AccessibilitySoundRecognition.DetectorIdentifier.encode(to:)()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CDF50);
  sub_1C97AE9C8();
  v24 = v3;
  v25 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AC02C();
  v23 = v5;
  sub_1C9A91748();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v7 = sub_1C97A2CEC(&qword_1EC3CDF58);
  sub_1C97AE9C8();
  v22 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C9945F4C();
  type metadata accessor for AccessibilitySoundRecognition.DetectorIdentifier(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  v26 = sub_1C97A2CEC(&qword_1EC3CDF60);
  sub_1C97AE9C8();
  v12 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97FB2D8();
  v14 = sub_1C99460A8();
  sub_1C97BE20C(v14, v15);
  sub_1C996D418();
  sub_1C9971448();
  sub_1C9A93DD8();
  sub_1C9970F90();
  sub_1C996D918();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1C99715BC();
    v17(v16);
    sub_1C97FB3CC();
    sub_1C996D46C();
    v18 = v26;
    sub_1C99714B8();
    sub_1C9A93988();
    sub_1C9970F78();
    sub_1C996D568(v19);
    sub_1C9A93A18();
    (*(v24 + 8))(v23, v25);
    v20 = sub_1C99715BC();
    v21(v20);
  }

  else
  {
    sub_1C996D4C0();
    v18 = v26;
    sub_1C99714B8();
    sub_1C9A93988();
    sub_1C996D514();
    sub_1C9A93A18();
    (*(v22 + 8))(v0, v7);
  }

  (*(v12 + 8))(v1, v18);
  sub_1C9971534();
  sub_1C97AEB5C();
}

uint64_t AccessibilitySoundRecognition.DetectorIdentifier.hash(into:)()
{
  sub_1C98EE70C();
  v0 = sub_1C9A91748();
  sub_1C97AE9C8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  type metadata accessor for AccessibilitySoundRecognition.DetectorIdentifier(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = (v9 - v8);
  sub_1C9970F90();
  sub_1C9871794();
  sub_1C996D918();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C984ADE8();
    v12(v11);
    MEMORY[0x1CCA91980](1);
    sub_1C9970F78();
    sub_1C996D568(v13);
    sub_1C9A92398();
    return (*(v2 + 8))(v6, v0);
  }

  else
  {
    v15 = *v10;
    MEMORY[0x1CCA91980](0);
    return MEMORY[0x1CCA91980](v15);
  }
}

uint64_t AccessibilitySoundRecognition.DetectorIdentifier.hashValue.getter()
{
  sub_1C97BE32C();
  AccessibilitySoundRecognition.DetectorIdentifier.hash(into:)();
  return sub_1C9A93D18();
}

void AccessibilitySoundRecognition.DetectorIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_1C97AEB94();
  v78 = v12;
  v14 = v13;
  v73 = v15;
  v77 = sub_1C97A2CEC(&qword_1EC3CDF98);
  sub_1C97AE9C8();
  v74 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  v72 = v18;
  sub_1C97A2CEC(&qword_1EC3CDFA0);
  sub_1C97AE9C8();
  v69 = v20;
  v70 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AC02C();
  v71 = v22;
  sub_1C97A2CEC(&qword_1EC3CDFA8);
  sub_1C97AE9C8();
  v75 = v24;
  v76 = v23;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C98550DC();
  v26 = type metadata accessor for AccessibilitySoundRecognition.DetectorIdentifier(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C98435A0();
  v30 = v28 - v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = v67 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = v67 - v35;
  sub_1C97BE20C(v14, v14[3]);
  sub_1C996D418();
  sub_1C993AF40();
  v37 = v78;
  sub_1C9A93DB8();
  if (!v37)
  {
    v67[0] = v34;
    v67[1] = v36;
    v67[2] = v30;
    v68 = v26;
    v78 = v14;
    v38 = v76;
    v39 = sub_1C9A93958();
    sub_1C98EE524(v39, 0);
    if (v41 != v40 >> 1)
    {
      sub_1C9899564();
      sub_1C9971540();
      if (v44 == v45)
      {
        __break(1u);
        return;
      }

      v79 = *(v43 + v42);
      sub_1C98EE520(v42 + 1);
      v47 = v46;
      v49 = v48;
      swift_unknownObjectRelease();
      if (v47 == v49 >> 1)
      {
        if (v79)
        {
          sub_1C97FB3CC();
          sub_1C996D46C();
          sub_1C99711BC();
          sub_1C9A93858();
          sub_1C9A91748();
          sub_1C9970F78();
          sub_1C996D568(v50);
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v59 = sub_1C9971360();
          v60(v59);
          v61 = sub_1C9971398();
          v62(v61);
        }

        else
        {
          sub_1C996D4C0();
          sub_1C99711BC();
          sub_1C9A93858();
          sub_1C996D5AC();
          v58 = v70;
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v63 = sub_1C9971210();
          v64(v63, v58);
          v65 = sub_1C997121C();
          v66(v65, v38);
          *v67[0] = a12;
        }

        swift_storeEnumTagMultiPayload();
        sub_1C9970F90();
        sub_1C996D8BC();
        sub_1C9970F90();
        sub_1C98BBB4C();
        sub_1C996D8BC();
        v57 = v78;
        goto LABEL_10;
      }
    }

    v51 = v68;
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v53 = v52;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v53 = v51;
    sub_1C9A93868();
    sub_1C98994EC();
    sub_1C97AEB3C();
    (*(v54 + 104))(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = sub_1C997121C();
    v56(v55, v38);
    v14 = v78;
  }

  v57 = v14;
LABEL_10:
  sub_1C97A592C(v57);
  sub_1C97AEB5C();
}

BOOL sub_1C995CA78()
{
  sub_1C98AE1E8();
  sub_1C997138C();
  memcpy(v0, v1, v2);
  sub_1C9971510(__src);
  sub_1C997138C();
  memcpy(v3, v4, v5);
  sub_1C9971510(&v26);
  sub_1C997138C();
  memcpy(v6, v7, v8);
  sub_1C99716E0(v27);
  if (!v14)
  {
    v13 = *nullsub_1(v27);
    memcpy(__dst, __src, 0xD1uLL);
    sub_1C99716E0(__dst);
    if (!v14)
    {
      v17 = *nullsub_1(__dst);
      sub_1C97DA1E0(v25, &qword_1EC3CE658);
      return v13 == v17;
    }

    nullsub_1(__dst);
    goto LABEL_14;
  }

  v9 = nullsub_1(v27);
  memcpy(__dst, __src, 0xD1uLL);
  sub_1C99716E0(__dst);
  if (!v14)
  {
    nullsub_1(__dst);
    memcpy(v20, v23, 0xD1uLL);
    nullsub_1(v20);
    sub_1C98ACCA8();
LABEL_14:
    v15 = __src;
    v16 = __dst;
LABEL_15:
    sub_1C996D710(v15, v16);
    sub_1C97DA1E0(v25, &qword_1EC3CE658);
    return 0;
  }

  v10 = nullsub_1(__dst);
  v11 = *v9 == *v10 && v9[1] == v10[1];
  if (!v11 && (sub_1C9A93B18() & 1) == 0)
  {
    sub_1C996D710(__src, v20);
    v15 = v23;
    v16 = v20;
    goto LABEL_15;
  }

  memcpy(v22, v9 + 2, sizeof(v22));
  memcpy(v19, v10 + 2, 0xC0uLL);
  v12 = sub_1C9962A98(v22, v19);
  sub_1C996D710(__src, v20);
  sub_1C996D710(v23, v20);
  sub_1C97DA1E0(v25, &qword_1EC3CE658);
  return v12;
}

uint64_t sub_1C995CC84()
{
  sub_1C98AE1E8();
  v3 = v1 == 0x6E49746C697562 && v2 == 0xE700000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6D6F74737563 && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1C9A93B18();

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

uint64_t sub_1C995CD44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726F736E6574 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C995CE04(char a1)
{
  if (a1)
  {
    return 0x73726F736E6574;
  }

  else
  {
    return 25705;
  }
}

void sub_1C995CE30()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CE2B0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97E86E4();
  v5 = sub_1C97A2CEC(&qword_1EC3CE2B8);
  sub_1C97AE9C8();
  v20 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C9945F6C();
  v21 = sub_1C97A2CEC(&qword_1EC3CE2C0);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2C8();
  v11 = sub_1C99460A8();
  sub_1C97BE20C(v11, v12);
  sub_1C996F830();
  sub_1C9971614();
  sub_1C9A93DD8();
  memcpy(v23, v0, 0xD1uLL);
  if (sub_1C986EFE0(v23) == 1)
  {
    v13 = nullsub_1(v23);
    sub_1C996F884();
    sub_1C9A93988();
    LOBYTE(v22[0]) = 0;
    sub_1C9A939C8();
    if (!v1)
    {
      memcpy(v22, (v13 + 16), sizeof(v22));
      sub_1C98DDC18();
      sub_1C9A93A18();
    }

    v14 = sub_1C993AD28();
    v15(v14);
    (*(v9 + 8))(v2, v21);
  }

  else
  {
    v16 = *nullsub_1(v23);
    sub_1C996F8D8();
    sub_1C9A93988();
    LOBYTE(v22[0]) = v16;
    sub_1C996D514();
    sub_1C9A93A18();
    (*(v20 + 8))(v3, v5);
    v17 = sub_1C98DE2C4();
    v19(v17, v18);
  }

  sub_1C97BE538();
  sub_1C97AEB5C();
}

void sub_1C995D164()
{
  sub_1C97AEB94();
  v3 = v2;
  v35 = v4;
  sub_1C97A2CEC(&qword_1EC3CE2E0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98550DC();
  sub_1C97A2CEC(&qword_1EC3CE2E8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9945F6C();
  v7 = sub_1C97A2CEC(&unk_1EC3CE2F0);
  sub_1C97AE9C8();
  v36 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98021C4();
  v10 = sub_1C98138D4();
  sub_1C97BE20C(v10, v11);
  sub_1C996F830();
  sub_1C9A93DB8();
  if (!v0)
  {
    v12 = sub_1C9A93958();
    sub_1C98EE524(v12, 0);
    if (v14 != v13 >> 1)
    {
      sub_1C9899564();
      sub_1C9971540();
      if (v17 == v18)
      {
        __break(1u);
        return;
      }

      v41 = *(v16 + v15);
      sub_1C98EE520(v15 + 1);
      v20 = v19;
      v22 = v21;
      swift_unknownObjectRelease();
      if (v20 == v22 >> 1)
      {
        if (v41)
        {
          sub_1C996F884();
          sub_1C99716A8();
          LOBYTE(v38[0]) = 0;
          v28 = sub_1C9A938A8();
          v30 = v29;
          v37 = v28;
          sub_1C97FB3CC();
          sub_1C98DDCC8();
          sub_1C99711BC();
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v33 = sub_1C9971564();
          v34(v33);
          (*(v36 + 8))(v1, v7);
          memcpy(&v38[2], v39, 0xC0uLL);
          v38[0] = v37;
          v38[1] = v30;
          sub_1C996D704(v38);
        }

        else
        {
          LOBYTE(v38[0]) = 0;
          sub_1C996F8D8();
          sub_1C99716A8();
          sub_1C996D5AC();
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v31 = sub_1C99715B0();
          v32(v31);
          (*(v36 + 8))(v1, v7);
          LOBYTE(v38[0]) = v39[0];
          sub_1C996D6FC(v38);
        }

        memcpy(v40, v38, sizeof(v40));
        memcpy(v35, v40, 0xD1uLL);
        sub_1C97A592C(v3);
        goto LABEL_10;
      }
    }

    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v24 = v23;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v24 = &type metadata for AccessibilitySoundRecognition.DetectorSpecification;
    sub_1C9A93868();
    sub_1C98994EC();
    sub_1C97AEB3C();
    (*(v25 + 104))(v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v26 = sub_1C997121C();
    v27(v26, v7);
  }

  sub_1C97A592C(v3);
LABEL_10:
  sub_1C9971380();
  sub_1C97AEB5C();
}

uint64_t sub_1C995D748()
{
  sub_1C9A93CC8();
  AccessibilitySoundRecognition.DetectorIdentifier.hash(into:)();
  return sub_1C9A93D18();
}

uint64_t sub_1C995D788(uint64_t a1)
{
  v2 = sub_1C996F8D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995D7C4(uint64_t a1)
{
  v2 = sub_1C996F8D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995D800(uint64_t a1)
{
  v2 = sub_1C996F830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995D83C(uint64_t a1)
{
  v2 = sub_1C996F830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995D880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C995CD44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C995D8A8(uint64_t a1)
{
  v2 = sub_1C996F884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995D8E4(uint64_t a1)
{
  v2 = sub_1C996F884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995D99C(uint64_t a1)
{
  v2 = sub_1C996D654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995D9D8(uint64_t a1)
{
  v2 = sub_1C996D654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995DA14(uint64_t a1)
{
  v2 = sub_1C996D600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995DA50(uint64_t a1)
{
  v2 = sub_1C996D600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995DA8C(uint64_t a1)
{
  v2 = sub_1C996D6A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995DAC8(uint64_t a1)
{
  v2 = sub_1C996D6A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AccessibilitySoundRecognition.Detection.encode(to:)()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CDFC0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CDFC8);
  sub_1C97AE9C8();
  v18 = v5;
  v19 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2D8();
  v7 = sub_1C97A2CEC(&qword_1EC3CDFD0);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97E86E4();
  v11 = *v0;
  v12 = sub_1C99715BC();
  sub_1C97BE20C(v12, v13);
  sub_1C996D600();
  sub_1C9A93DD8();
  v14 = (v9 + 8);
  if (v11)
  {
    sub_1C97FB3CC();
    sub_1C996D654();
    sub_1C99714B8();
    sub_1C9A93988();
    v15 = sub_1C9971210();
  }

  else
  {
    sub_1C996D6A8();
    sub_1C99714B8();
    sub_1C9A93988();
    v16 = v19;
    v17 = *(v18 + 8);
    v15 = v2;
  }

  v17(v15, v16);
  (*v14)(v1, v7);
  sub_1C97AEB5C();
}

uint64_t AccessibilitySoundRecognition.Detection.hashValue.getter()
{
  sub_1C97BE32C();
  v0 = sub_1C997154C();
  MEMORY[0x1CCA91980](v0);
  return sub_1C9A93D18();
}

void AccessibilitySoundRecognition.Detection.init(from:)()
{
  sub_1C97AEB94();
  v2 = v1;
  v32 = v3;
  v33 = sub_1C97A2CEC(&qword_1EC3CDFF0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C9945F4C();
  v5 = sub_1C97A2CEC(&qword_1EC3CDFF8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C98021C4();
  v7 = sub_1C97A2CEC(&qword_1EC3CE000);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97FB2C8();
  sub_1C97BE20C(v2, v2[3]);
  sub_1C996D600();
  sub_1C9971614();
  sub_1C9A93DB8();
  if (!v0)
  {
    v34 = v2;
    v9 = sub_1C9A93958();
    sub_1C98EE524(v9, 0);
    if (v11 != v10 >> 1)
    {
      sub_1C9899564();
      sub_1C9971540();
      if (v14 == v15)
      {
        __break(1u);
        return;
      }

      v16 = *(v13 + v12);
      sub_1C98EE520(v12 + 1);
      v18 = v17;
      v20 = v19;
      swift_unknownObjectRelease();
      if (v18 == v20 >> 1)
      {
        if (v16)
        {
          sub_1C97FB3CC();
          sub_1C996D654();
          sub_1C99711BC();
          sub_1C9A93858();
          v21 = v32;
          swift_unknownObjectRelease();
          v22 = sub_1C997121C();
          v24 = v33;
        }

        else
        {
          sub_1C996D6A8();
          sub_1C99711BC();
          sub_1C9A93858();
          v21 = v32;
          swift_unknownObjectRelease();
          v22 = sub_1C997121C();
          v24 = v5;
        }

        v23(v22, v24);
        v30 = sub_1C97FB300();
        v31(v30);
        *v21 = v16;
        sub_1C97A592C(v34);
        goto LABEL_10;
      }
    }

    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v26 = v25;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v26 = &type metadata for AccessibilitySoundRecognition.Detection;
    sub_1C9A93868();
    sub_1C98994EC();
    sub_1C97AEB3C();
    (*(v27 + 104))(v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = sub_1C9899528();
    v29(v28, v7);
    v2 = v34;
  }

  sub_1C97A592C(v2);
LABEL_10:
  sub_1C9971578();
  sub_1C97AEB5C();
}

unint64_t AccessibilitySoundRecognition.Request.description.getter()
{
  memcpy(__dst, v0, 0xD1uLL);
  sub_1C99716E0(__dst);
  if (v1)
  {
    v2 = *(nullsub_1(__dst) + 8);
    sub_1C9A935B8();

    v5 = 0xD00000000000002BLL;
    v3 = sub_1C997154C();
    MEMORY[0x1CCA90230](v3, v2);
  }

  else
  {
    nullsub_1(__dst);
    v5 = 0;
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000024, 0x80000001C9ADA560);
    sub_1C9A93728();
  }

  return v5;
}

void *AccessibilitySoundRecognition.Request.init(detectorIdentifier:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AccessibilitySoundRecognition.DetectorIdentifier(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v7 = (v6 - v5);
  sub_1C9970F90();
  sub_1C9971264();
  sub_1C996D918();
  sub_1C984ADE8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C99710B0();
    sub_1C996D864(v7, v10);
    result = sub_1C9A93778();
    __break(1u);
  }

  else
  {
    sub_1C99710B0();
    sub_1C996D864(a1, v8);
    __src[0] = *v7;
    sub_1C996D6FC(__src);
    return memcpy(a2, __src, 0xD1uLL);
  }

  return result;
}

void AccessibilitySoundRecognition.Request.init(customModel:)()
{
  sub_1C97AEB94();
  v2 = v1;
  sub_1C9A91558();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  sub_1C99714C4();
  v4();
  sub_1C995E5A0();
  if (v0)
  {
    v5 = sub_1C9813668();
    v6(v5);
  }

  else
  {
    memcpy(v12, v14, sizeof(v12));
    v7 = sub_1C9A91478();
    v9 = v8;
    v10 = sub_1C9813668();
    v11(v10);
    v13[0] = v7;
    v13[1] = v9;
    memcpy(&v13[2], v12, 0xC0uLL);
    sub_1C996D704(v13);
    memcpy(v2, v13, 0xD1uLL);
  }

  sub_1C9971380();
  sub_1C97AEB5C();
}

void sub_1C995E5A0()
{
  sub_1C97AEB94();
  v3 = v2;
  v261 = v4;
  v289 = sub_1C9A91978();
  sub_1C97AE9C8();
  v287 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v288 = v8 - v7;
  v9 = sub_1C97A2CEC(&unk_1EC3CE660);
  v10 = sub_1C97DACE4(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98435A0();
  v270 = v11 - v12;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98435C8();
  v273 = v14;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98435C8();
  v275 = v16;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C98435C8();
  v277 = v18;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C98435C8();
  v279 = v20;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C98435C8();
  v281 = v22;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C98435C8();
  v282 = v24;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v25);
  v286 = &v247 - v26;
  v290 = sub_1C9A919A8();
  sub_1C97AE9C8();
  v285 = v27;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C98435A0();
  v262 = v29 - v30;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C98435C8();
  v263 = v32;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C98435C8();
  v264 = v34;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C98435C8();
  v265 = v36;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C98435C8();
  v266 = v38;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C98435C8();
  v267 = v40;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C98435C8();
  v268 = v42;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C98435C8();
  v269 = v44;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C98435C8();
  v271 = v46;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C98435C8();
  v272 = v48;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C98435C8();
  v274 = v50;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C98435C8();
  v276 = v52;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C98435C8();
  v278 = v54;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C98435C8();
  v280 = v56;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C98435C8();
  v283 = v58;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v59);
  v284 = &v247 - v60;
  v61 = sub_1C97A2CEC(&qword_1EC3CB2C0);
  sub_1C97DACE4(v61);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C97AEA4C();
  v63 = sub_1C9A91828();
  sub_1C97AE9C8();
  v291 = v64;
  MEMORY[0x1EEE9AC00](v65);
  sub_1C97AEAD8();
  v68 = v67 - v66;
  v69 = sub_1C9A91558();
  sub_1C97AE9C8();
  v71 = v70;
  MEMORY[0x1EEE9AC00](v72);
  sub_1C97AEAD8();
  v75 = v74 - v73;
  v76 = type metadata accessor for ModelFeatureExtractor(0);
  v77 = sub_1C97DACE4(v76);
  MEMORY[0x1EEE9AC00](v77);
  sub_1C97AEAD8();
  v80 = v79 - v78;
  (*(v71 + 16))(v75, v3, v69);
  sub_1C98B8EA8();
  if (v0)
  {
    (*(v71 + 8))(v3, v69);
    goto LABEL_30;
  }

  v259 = v69;
  v257 = 0;
  v258 = v68;
  v260 = v3;
  sub_1C98B9028(0x6F696475615F6474, 0xE800000000000000, v1);
  v81 = v80;
  if (sub_1C97ABF20(v1, 1, v63) == 1)
  {
    sub_1C97DA1E0(v1, &qword_1EC3CB2C0);
    type metadata accessor for SNError();
    sub_1C9820900(0x80000001C9AD4AA0, 0xD000000000000034, "_AccessibilitySoundRecognition");
    swift_willThrow();
    v82 = sub_1C9971100();
    v83(v82);
LABEL_9:
    sub_1C9970FA8();
    v98 = v81;
LABEL_29:
    sub_1C996D864(v98, v97);
    goto LABEL_30;
  }

  (*(v291 + 32))(v258, v1, v63);
  v84 = *(sub_1C9A91818() + 16);

  if (v84 != 3)
  {
    type metadata accessor for SNError();
    sub_1C9820900(0x80000001C9AD4AA0, 0xD00000000000002ELL, "ng from custom model");
    swift_willThrow();
    (*(v71 + 8))(v260, v259);
    v95 = sub_1C993AD28();
    v96(v95);
    goto LABEL_9;
  }

  v85 = v288;
  sub_1C993AF40();
  sub_1C9A91968();
  v86 = v286;
  sub_1C98B9418(v81, 0x72616C706D657865, 0xE800000000000000, v85, v286);
  v87 = v287;
  v256 = v81;
  v88 = v289;
  v89 = v287 + 8;
  v255 = *(v287 + 8);
  v255(v85, v289);
  if (sub_1C97ABF20(v86, 1, v290) == 1)
  {
    sub_1C97DA1E0(v86, &unk_1EC3CE660);
    type metadata accessor for SNError();
    sub_1C9971014();
    sub_1C9820900(v91, v90 + 17, v92);
    sub_1C9971464();
    (*(v71 + 8))(v260, v259);
    v93 = sub_1C993AD28();
LABEL_28:
    v94(v93);
    sub_1C9970FA8();
    v98 = v256;
    goto LABEL_29;
  }

  v254 = v63;
  v100 = v284;
  v99 = v285;
  v101 = *(v285 + 32);
  v102 = v86;
  v103 = v290;
  v286 = v285 + 32;
  v253 = v101;
  v101(v284, v102, v290);
  sub_1C9A918F8();
  v105 = *(v87 + 104);
  v104 = v87 + 104;
  LODWORD(v287) = *MEMORY[0x1E69AD830];
  v252 = v105;
  v105(v85);
  v106 = v282;
  sub_1C98B9418(v256, 0xD000000000000010, 0x80000001C9ADAC00, v85, v282);
  v107 = v89;
  v108 = v255;
  v251 = v107;
  v255(v85, v88);
  if (sub_1C97ABF20(v106, 1, v103) == 1)
  {
    sub_1C97DA1E0(v106, &unk_1EC3CE660);
    type metadata accessor for SNError();
    sub_1C9971014();
    sub_1C9820900(v110, v109 + 26, v111);
    sub_1C9971464();
    v112 = sub_1C9971100();
    v113(v112);
    (*(v99 + 8))(v100, v290);
LABEL_27:
    v93 = sub_1C9971120();
    goto LABEL_28;
  }

  sub_1C997118C();
  v114();
  sub_1C9A918F8();
  v115 = sub_1C99714A0();
  v116(v115);
  v117 = v281;
  v118 = v256;
  sub_1C997142C(v256, 0x31766E6F635F3163, v281);
  v108(v85, v106);
  sub_1C983E180(v117);
  if (v136)
  {
    sub_1C97DA1E0(v117, &unk_1EC3CE660);
    v119 = type metadata accessor for SNError();
    sub_1C9971014();
    sub_1C9820900(v121, v120 + 18, v122);
    sub_1C9971464();
    v123 = sub_1C9971100();
    v124(v123);
    sub_1C9971420();
    v125 = v290;
    v119(v283, v290);
    v119(v284, v125);
    v126 = sub_1C9971120();
    v127(v126);
    sub_1C9970FA8();
    v98 = v118;
    goto LABEL_29;
  }

  v128 = v104;
  v129 = v118;
  v130 = v280;
  sub_1C997118C();
  v131();
  sub_1C9A918F8();
  v132 = v289;
  v252(v288, v287, v289);
  sub_1C997136C();
  v134 = v279;
  v135 = v288;
  sub_1C997142C(v129, v133 + 256, v279);
  v108(v135, v132);
  sub_1C983E180(v134);
  if (v136)
  {
    sub_1C97DA1E0(v134, &unk_1EC3CE660);
    v137 = type metadata accessor for SNError();
    sub_1C9971014();
    sub_1C9820900(v139, v138 + 18, v140);
    sub_1C9971464();
    v141 = sub_1C9971100();
    v142(v141);
    sub_1C9971420();
    v143 = v130;
    v144 = v290;
LABEL_25:
    (v137)(v143, v144);
    (v137)(v283, v144);
    v169 = v284;
    v170 = v144;
LABEL_26:
    (v137)(v169, v170);
    goto LABEL_27;
  }

  v145 = v278;
  sub_1C997118C();
  v146();
  sub_1C9A918F8();
  v147 = v289;
  v252(v135, v287, v289);
  sub_1C997136C();
  v149 = v277;
  sub_1C997142C(v256, v148 + 512, v277);
  v108(v135, v147);
  sub_1C983E180(v149);
  if (v150)
  {
    sub_1C97DA1E0(v149, &unk_1EC3CE660);
    v137 = type metadata accessor for SNError();
    sub_1C9971014();
    sub_1C9820900(v152, v151 + 18, v153);
    sub_1C9971464();
    v154 = sub_1C9971100();
    v155(v154);
    sub_1C9971420();
    v156 = v145;
    v144 = v290;
LABEL_24:
    (v137)(v156, v144);
    v143 = v280;
    goto LABEL_25;
  }

  v157 = v276;
  sub_1C997118C();
  v158();
  sub_1C9A918F8();
  v159 = sub_1C99714A0();
  v160(v159);
  sub_1C997136C();
  v162 = v275;
  sub_1C997142C(v256, v161 + 768, v275);
  v108(v135, v149);
  sub_1C983E180(v162);
  if (v163)
  {
    sub_1C97DA1E0(v162, &unk_1EC3CE660);
    v137 = type metadata accessor for SNError();
    sub_1C9971014();
    sub_1C9820900(v165, v164 + 18, v166);
    sub_1C9971464();
    v167 = sub_1C9971100();
    v168(v167);
    sub_1C9971420();
    v144 = v290;
    (v137)(v157, v290);
    v156 = v278;
    goto LABEL_24;
  }

  v171 = v135;
  v172 = v290;
  sub_1C9971454();
  v173();
  sub_1C9A91948();
  sub_1C9971620();
  v287 = v128;
  v174();
  v175 = v273;
  sub_1C98B9418(v256, 12644, 0xE200000000000000, v171, v273);
  v108(v171, v88);
  v176 = sub_1C97ABF20(v175, 1, v172);
  if (v176 == 1)
  {
    sub_1C97DA1E0(v175, &unk_1EC3CE660);
    v137 = type metadata accessor for SNError();
    sub_1C9971014();
    sub_1C9820900(v178, v177 + 11, v179);
    sub_1C9971464();
    v180 = sub_1C9971100();
    v181(v180);
    sub_1C9971420();
LABEL_35:
    (v137)(v182, v172);
    (v137)(v276, v172);
    (v137)(v278, v172);
    (v137)(v280, v172);
    (v137)(v283, v172);
    v169 = v284;
    v170 = v172;
    goto LABEL_26;
  }

  v183 = v272;
  sub_1C9971454();
  v184();
  sub_1C9A91948();
  sub_1C9971620();
  v185();
  v186 = v270;
  sub_1C98B9418(v256, 12900, 0xE200000000000000, v171, v270);
  v108(v171, v88);
  if (sub_1C97ABF20(v186, 1, v172) == 1)
  {
    sub_1C97DA1E0(v186, &unk_1EC3CE660);
    v137 = type metadata accessor for SNError();
    sub_1C9971014();
    sub_1C9820900(v188, v187 + 11, v189);
    sub_1C9971464();
    v190 = sub_1C9971100();
    v191(v190);
    sub_1C9971420();
    v137();
    v182 = v274;
    goto LABEL_35;
  }

  sub_1C9971454();
  v192();
  v193 = sub_1C9A91818();
  v196 = v260;
  if (*(v193 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v197 = v172;
    v289 = *(v193 + 48);

    v198 = v285;
    v199 = *(v285 + 16);
    v200 = v269;
    v201 = sub_1C9971398();
    v199(v201);
    v202 = v257;
    sub_1C98BAA1C();
    if (v202)
    {
      v205 = *(v198 + 8);
      v205(v200, v197);
      v206 = sub_1C9899528();
      v207(v206, v259);
      v205(v271, v197);
      v205(v272, v197);
      v205(v274, v197);
      v205(v276, v197);
      v205(v278, v197);
      v205(v280, v197);
      v205(v283, v197);
      v208 = sub_1C99715BC();
      (v205)(v208);
      v209 = sub_1C9971120();
      v210(v209);
      sub_1C9970FA8();
      sub_1C996D864(v256, v211);
      goto LABEL_30;
    }

    v288 = v203;
    v212 = MEMORY[0x1E69E7CC0];
    if (v204)
    {
      v213 = v204;
    }

    else
    {
      v213 = MEMORY[0x1E69E7CC0];
    }

    v287 = v213;
    v196 = *(v198 + 8);
    v285 = v198 + 8;
    (v196)(v200, v197);
    (v199)(v268, v283, v197);
    sub_1C98BA30C();
    v281 = v216;
    v282 = v215;
    v183 = v288;
    if (v214)
    {
      v217 = v214;
    }

    else
    {
      v217 = v212;
    }

    v275 = v217;
    sub_1C997117C();
    v196();
    (v199)(v267, v280, v197);
    sub_1C98BA30C();
    v279 = v219;
    v277 = v220;
    v257 = 0;
    v221 = MEMORY[0x1E69E7CC0];
    if (v218)
    {
      v221 = v218;
    }

    v273 = v221;
    sub_1C997117C();
    v196();
    (v199)(v266, v278, v197);
    sub_1C99714D0();
    sub_1C98BA30C();
    v269 = v224;
    v270 = v223;
    v257 = 0;
    v225 = MEMORY[0x1E69E7CC0];
    if (v222)
    {
      v225 = v222;
    }

    v255 = v225;
    sub_1C997117C();
    v196();
    (v199)(v265, v276, v197);
    sub_1C99714D0();
    sub_1C98BA30C();
    v252 = v228;
    v253 = v227;
    v257 = 0;
    v229 = MEMORY[0x1E69E7CC0];
    if (v226)
    {
      v229 = v226;
    }

    v251 = v229;
    sub_1C997117C();
    v196();
    (v199)(v264, v274, v197);
    sub_1C99714D0();
    sub_1C98BA30C();
    v265 = v231;
    v250 = v232;
    v257 = 0;
    v233 = MEMORY[0x1E69E7CC0];
    if (v230)
    {
      v233 = v230;
    }

    v249 = v233;
    sub_1C997117C();
    v196();
    (v199)(v263, v272, v197);
    sub_1C99714D0();
    sub_1C98BA658();
    v264 = v235;
    v248 = v236;
    v257 = 0;
    v237 = MEMORY[0x1E69E7CC0];
    if (v234)
    {
      v237 = v234;
    }

    v247 = v237;
    sub_1C997117C();
    v196();
    (v199)(v262, v271, v197);
    sub_1C99714D0();
    sub_1C98BA658();
    v257 = 0;
  }

  v238 = v193;
  v239 = v194;
  if (v195)
  {
    v240 = v195;
  }

  else
  {
    v240 = MEMORY[0x1E69E7CC0];
  }

  v241 = v290;
  (v196)(v262, v290);
  v242 = sub_1C9971100();
  v243(v242);
  (v196)(v271, v241);
  (v196)(v272, v241);
  (v196)(v274, v241);
  (v196)(v276, v241);
  (v196)(v278, v241);
  (v196)(v280, v241);
  (v196)(v283, v241);
  (v196)(v284, v241);
  v244 = sub_1C9971120();
  v245(v244);
  sub_1C9970FA8();
  sub_1C996D864(v256, v246);
  v293[0] = v289;
  v293[1] = v183;
  v293[2] = v287;
  v293[3] = v282;
  v293[4] = v281;
  v293[5] = v275;
  v293[6] = v279;
  v293[7] = v277;
  v293[8] = v273;
  v293[9] = v270;
  v293[10] = v269;
  v293[11] = v255;
  v293[12] = v253;
  v293[13] = v252;
  v293[14] = v251;
  v293[15] = v265;
  v293[16] = v250;
  v293[17] = v249;
  v293[18] = v264;
  v293[19] = v248;
  v293[20] = v247;
  v293[21] = v238;
  v293[22] = v239;
  v293[23] = v240;
  v294[0] = v289;
  v294[1] = v183;
  v294[2] = v287;
  v294[3] = v282;
  v294[4] = v281;
  v294[5] = v275;
  v294[6] = v279;
  v294[7] = v277;
  v294[8] = v273;
  v294[9] = v270;
  v294[10] = v269;
  v294[11] = v255;
  v294[12] = v253;
  v294[13] = v252;
  v294[14] = v251;
  v294[15] = v265;
  v294[16] = v250;
  v294[17] = v249;
  v294[18] = v264;
  v294[19] = v248;
  v294[20] = v247;
  v294[21] = v238;
  v294[22] = v239;
  v294[23] = v240;
  sub_1C98DDC6C(v293, &v292);
  sub_1C996FC78(v294);
  memcpy(v261, v293, 0xC0uLL);
LABEL_30:
  sub_1C9971380();
  sub_1C97AEB5C();
}

uint64_t AccessibilitySoundRecognition.Request.runLocallyFromFile(fileURL:)(uint64_t a1, uint64_t a2)
{
  v3[144] = v2;
  v3[143] = a2;
  v3[142] = a1;
  sub_1C97AA8AC();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C995FE10()
{
  v16 = v0;
  sub_1C983B718(*(v0 + 1144), v15);
  v2 = *(v0 + 1152);
  v3 = v15[1];
  *(v0 + 1072) = v15[0];
  *(v0 + 1088) = v3;
  v4 = v15[3];
  *(v0 + 1104) = v15[2];
  *(v0 + 1120) = v4;
  memcpy((v0 + 16), v2, 0xD1uLL);
  sub_1C99716E0(v0 + 16);
  if (v5)
  {
    v6 = *(v0 + 1136);
    v7 = nullsub_1(v0 + 16);
    v8 = v7[1];
    *(v0 + 656) = *v7;
    *(v0 + 664) = v8;
    sub_1C9971584();
    memcpy(v9, v10, v11);
    memcpy((v0 + 448), (v0 + 656), 0xD0uLL);
    sub_1C9971510((v0 + 232));
    nullsub_1(v0 + 232);
    sub_1C98ACCA8();
    sub_1C99557B8((v0 + 448), (v0 + 1072), v6);
    sub_1C97DA1E0(v0 + 1072, &qword_1EC3CE010);
    sub_1C986F044(v0 + 656);
  }

  else
  {
    v12 = *(v0 + 1136);
    v13 = nullsub_1(v0 + 16);
    sub_1C9960244((v0 + 1072), *v13, v12);
    sub_1C97DA1E0(v0 + 1072, &qword_1EC3CE010);
  }

  sub_1C97DA91C();

  return v14();
}

void sub_1C995FFA4()
{
  sub_1C97AEB94();
  v3 = v2;
  v5 = v4;
  v24 = v6;
  sub_1C97A2CEC(&qword_1EC3C9AB8);
  sub_1C97AE9C8();
  v23 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98550DC();
  v9 = sub_1C97A2CEC(&unk_1EC3CE300);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEA4C();
  type metadata accessor for SoundRecognition.Session();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = (v13 - v12);
  v15 = type metadata accessor for SNUltronUtils.UltronReportingPlan(0);
  sub_1C97ACC50(v1, 1, 1, v15);
  sub_1C9953D8C(v3, v5, v1, v14);
  sub_1C97DA1E0(v1, &unk_1EC3CE300);
  if (!v0)
  {

    v16 = sub_1C988EB2C();
    sub_1C97A2CEC(v16);
    sub_1C97AE9EC();
    sub_1C996FE74(v17);
    sub_1C9A91F68();

    sub_1C9971134(&unk_1EC3C9AD0);
    v18 = sub_1C9813A90();
    v19 = sub_1C9945F10();
    v20(v19, v23);
    sub_1C9A91748();
    sub_1C97DA940();
    v21 = sub_1C98138D4();
    v22(v21);
    sub_1C996D864(v14, type metadata accessor for SoundRecognition.Session);
    *(v24 + *(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)) = v18;
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9960244@<X0>(_OWORD *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3C9AB8);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = sub_1C97A2CEC(&unk_1EC3CE300);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for SoundRecognition.Session();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SNUltronUtils.UltronReportingPlan(0);
  sub_1C97ACC50(v11, 1, 1, v15);
  sub_1C9954680(a2, a1, v11, v14);
  result = sub_1C97DA1E0(v11, &unk_1EC3CE300);
  if (!v3)
  {
    v25 = *&v14[*(v12 + 20)];

    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C996FE74(&unk_1EC3CE310);
    sub_1C9A91F68();

    sub_1C996FE74(&unk_1EC3C9AD0);
    v17 = v23;
    v18 = sub_1C9A91F28();
    (*(v22 + 8))(v8, v17);
    v19 = sub_1C9A91748();
    v20 = v24;
    (*(*(v19 - 8) + 16))(v24, v14, v19);
    sub_1C996D864(v14, type metadata accessor for SoundRecognition.Session);
    result = type metadata accessor for AccessibilitySoundRecognition.Session(0);
    *(v20 + *(result + 20)) = v18;
  }

  return result;
}

void sub_1C996056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  a10 = v27;
  v28 = sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97ABF78(v28, &a13);
  v105 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  sub_1C97ABFB4(v31);
  v32 = sub_1C9A91C28();
  v33 = sub_1C97ABF78(v32, &a10);
  v102 = v34;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AEAD8();
  sub_1C97ABFB4(v36 - v35);
  v37 = sub_1C97A2CEC(&qword_1EC3CB598);
  v38 = sub_1C97ABF78(v37, &v112);
  v40 = v39;
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v38);
  v44 = &v89 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v89 - v45;
  v47 = sub_1C97A2CEC(&qword_1EC3C77C0);
  sub_1C97ABF78(v47, &v113);
  v95 = v48;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C97AC02C();
  sub_1C97ABFB4(v50);
  v51 = sub_1C97A2CEC(&qword_1EC3CE3D8);
  sub_1C97ABF78(v51, &v114);
  v97 = v52;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97AC02C();
  sub_1C97ABFB4(v54);
  v55 = sub_1C97A2CEC(&unk_1EC3CE3E0);
  sub_1C97ABF78(v55, &v115);
  v99 = v56;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C97AC02C();
  sub_1C97ABFB4(v58);
  v60 = v24[3];
  v59 = v24[4];
  sub_1C97A5A8C(v24, v60);
  (*(*(v59 + 8) + 8))(v60);
  if (!v20)
  {
    v93 = 0;
    v61 = sub_1C99CFB50();

    sub_1C98F9BA0(v24, &v107);
    v62 = swift_allocObject();
    memcpy((v62 + 16), v26, 0xD0uLL);
    sub_1C98F9C04(&v107, (v62 + 224));
    sub_1C996FB7C(v26, &v107);
    sub_1C9A91738();
    sub_1C9971228();
    sub_1C9971600(v63);
    MEMORY[0x1CCA90230](*v26, v26[1]);
    v89 = *(&v107 + 1);
    v90 = v107;
    *&v107 = v61;
    *(&v107 + 1) = sub_1C99659B0;
    v108 = 0;
    v109 = sub_1C996FB5C;
    v110 = v62;
    v111 = 1;
    v92 = v61;

    v91 = v62;

    v64 = sub_1C988EB2C();
    sub_1C97A2CEC(v64);
    sub_1C9971258();
    sub_1C996FE74(v65);
    sub_1C9A91F68();

    v66 = v94;
    (*(v40 + 16))(v44, v46, v94);
    v67 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = sub_1C9970F50;
    *(v68 + 24) = 0;
    (*(v40 + 32))(v68 + v67, v44, v66);
    v69 = sub_1C988EB2C();
    sub_1C97A2CEC(v69);
    sub_1C97AE9EC();
    sub_1C996FE74(v70);
    sub_1C99715C8();
    sub_1C9A91EF8();
    (*(v40 + 8))(v46, v66);
    sub_1C99713F4();

    sub_1C99712E4();
    sub_1C99715EC(v71);
    sub_1C9A91748();
    sub_1C9970F78();
    sub_1C996D568(v72);
    v73 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v73);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    MEMORY[0x1CCA90230](v90, v89);

    sub_1C99714F4();
    sub_1C993B0C8();

    v74 = sub_1C997107C();
    v75(v74, v96);
    sub_1C9971158(&unk_1EC3CE3F8);
    v76 = sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3CE400);
    sub_1C97AA878();
    swift_allocObject();
    v77 = sub_1C9945DA4(v76);
    v96 = v77;
    sub_1C97DAA58();
    v78 = sub_1C97E89F0();
    v79(v78);
    *&v107 = v77;
    (*(v102 + 104))(v101, *MEMORY[0x1E695BD20], v103);
    v80 = v104;
    *v104 = sub_1C9965D98;
    v80[1] = 0;
    v81 = v105;
    v82 = v106;
    (*(v105 + 104))(v80, *MEMORY[0x1E695BD48], v106);
    sub_1C996FE74(&unk_1EC3CE408);
    v83 = v98;
    sub_1C9A92018();
    (*(v81 + 8))(v80, v82);
    v84 = sub_1C9971360();
    v85(v84);

    sub_1C99712C0(&unk_1EC3CE410);
    v86 = v100;
    v87 = sub_1C9A91F28();

    sub_1C97DAA58();
    v88(v83, v86);
    *(a10 + *(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)) = v87;
  }

  sub_1C97AEB5C();
}

BOOL static AccessibilitySoundRecognition.Request.== infix(_:_:)()
{
  sub_1C98AE1E8();
  sub_1C997138C();
  memcpy(v0, v1, v2);
  sub_1C9971510(v9);
  sub_1C996D710(&v8, v11);
  sub_1C996D710(v9, v11);
  sub_1C97BE374();
  v3 = sub_1C995CA78();
  sub_1C9971510(v10);
  sub_1C986F194(v10);
  sub_1C997138C();
  memcpy(v4, v5, v6);
  sub_1C986F194(v11);
  return v3;
}

uint64_t sub_1C9960F0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001C9ADA680 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C9960FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9960F0C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9960FD8(uint64_t a1)
{
  v2 = sub_1C996D748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9961014(uint64_t a1)
{
  v2 = sub_1C996D748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AccessibilitySoundRecognition.Request.encode(to:)()
{
  sub_1C97AEB94();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3CE018);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C98550DC();
  sub_1C997138C();
  memcpy(v3, v4, v5);
  sub_1C97BE20C(v1, v1[3]);
  sub_1C996D710(v10, v9);
  sub_1C996D748();
  sub_1C993AF40();
  sub_1C99715E0();
  sub_1C9A93DD8();
  memcpy(v9, v10, 0xD1uLL);
  sub_1C996D79C();
  sub_1C9A93A18();
  memcpy(v8, v9, 0xD1uLL);
  sub_1C986F194(v8);
  v6 = sub_1C9871794();
  v7(v6);
  sub_1C9971534();
  sub_1C97AEB5C();
}

void sub_1C99611A4()
{
  memcpy(__dst, v0, 0xD1uLL);
  sub_1C99716E0(__dst);
  if (v1)
  {
    nullsub_1(__dst);
    sub_1C9971584();
    memcpy(v2, v3, v4);
    MEMORY[0x1CCA91980](1);
    sub_1C9A92528();
    sub_1C997154C();
    sub_1C99632D4();
  }

  else
  {
    v5 = *nullsub_1(__dst);
    MEMORY[0x1CCA91980](0);
    MEMORY[0x1CCA91980](v5);
  }
}

uint64_t sub_1C996125C()
{
  sub_1C9A93CC8();
  sub_1C997138C();
  memcpy(v0, v1, v2);
  sub_1C99716E0(v9);
  if (v3)
  {
    nullsub_1(v9);
    sub_1C9971584();
    memcpy(v4, v5, v6);
    MEMORY[0x1CCA91980](1);
    sub_1C9A92528();
    sub_1C99632D4();
  }

  else
  {
    v7 = *nullsub_1(v9);
    MEMORY[0x1CCA91980](0);
    MEMORY[0x1CCA91980](v7);
  }

  return sub_1C9A93D18();
}

void AccessibilitySoundRecognition.Request.init(from:)()
{
  sub_1C97AEB94();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C97A2CEC(&qword_1EC3CE030);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98021C4();
  sub_1C97BE20C(v3, v3[3]);
  sub_1C996D748();
  sub_1C9A93DB8();
  if (!v0)
  {
    sub_1C996D7F0();
    sub_1C99714B8();
    sub_1C9A938F8();
    (*(v8 + 8))(v1, v6);
    memcpy(v5, v10, 0xD1uLL);
  }

  sub_1C97A592C(v3);
  sub_1C9971380();
  sub_1C97AEB5C();
}

uint64_t sub_1C996149C()
{
  sub_1C9A93CC8();
  sub_1C99611A4();
  return sub_1C9A93D18();
}

uint64_t sub_1C99614E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9);
  return sub_1C98B3818(v11, a1, a2, a3, a4);
}

void *sub_1C99615D0(uint64_t a1, uint64_t a2, void *__src)
{
  v4 = v3;
  v4[26] = a1;
  v4[27] = a2;
  memcpy(v4 + 2, __src, 0xC0uLL);

  sub_1C98DDC6C(__src, v11);
  v6 = sub_1C9961708();
  sub_1C996FC78(__src);
  v4[28] = v6;
  v7 = sub_1C9A92838();
  *(v7 + 16) = 2;
  *(v7 + 32) = 0;
  sub_1C97A2CEC(&qword_1EC3C6A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = 0x74757074756FLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v7;
  sub_1C97A2CEC(&qword_1EC3C9AA0);
  v9 = sub_1C9A92348();

  v4[29] = v9;
  return v4;
}

uint64_t sub_1C9961708()
{
  sub_1C97A2CEC(&qword_1EC3C6A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AB9EF0;
  *(inited + 32) = 0xD000000000000042;
  *(inited + 40) = 0x80000001C9ADA710;
  v2 = v0[11];
  *(inited + 48) = v0[10];
  *(inited + 56) = 0xD000000000000040;
  *(inited + 64) = 0x80000001C9ADA760;
  *(inited + 72) = v2;
  sub_1C997147C();
  v3[10] = v4;
  v3[11] = v5;
  v6 = v0[7];
  v3[12] = v0[8];
  v3[13] = v7;
  v9 = v0[14];
  v8 = v0[13];
  v3[14] = 0x80000001C9ADA800;
  v3[15] = v8;
  v3[16] = v4 - 10;
  v3[17] = 0x80000001C9ADA850;
  v10 = v0[22];
  v3[18] = v0[23];
  v3[19] = v4 | 4;
  v11 = v0[4];
  v12 = v0[5];
  v3[20] = 0x80000001C9ADA890;
  v3[21] = v12;
  v3[22] = v4;
  v3[23] = 0x80000001C9ADA8E0;
  v3[24] = v9;
  v3[25] = v7;
  v14 = v0[17];
  v13 = v0[16];
  v3[26] = 0x80000001C9ADA930;
  v3[27] = v13;
  v3[28] = v4 - 8;
  v3[29] = 0x80000001C9ADA980;
  v3[30] = v10;
  v3[31] = v7;
  v3[32] = 0x80000001C9ADA9C0;
  v3[33] = v6;
  v3[34] = v4;
  v3[35] = 0x80000001C9ADAA10;
  v3[36] = v14;
  v3[37] = v4 | 6;
  v3[38] = 0x80000001C9ADAA60;
  v3[39] = v11;
  v3[40] = v4 - 10;
  v3[41] = 0x80000001C9ADAAB0;
  sub_1C997147C();
  v15[42] = v16;
  v15[43] = v17;
  v15[44] = v19;
  v15[45] = v18;
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  v20 = sub_1C9971264();
  sub_1C97A2CEC(v20);
  return sub_1C9A92348();
}

void sub_1C9961994(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 224);
  sub_1C97EF1BC(a2, 0x7475706E69, 0xE500000000000000);
  *(v2 + 224) = v9;
  swift_endAccess();
  sub_1C989DC34(a1, *(v2 + 32));
  if (!v3 && v6 >= 0.75)
  {
    swift_beginAccess();

    sub_1C9884AC8();
    swift_endAccess();

    v8 = sub_1C98BBE58(v7);

    if (v8)
    {
      if (*(v8 + 16) >= 2uLL)
      {

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1C9961B04()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_1C996FC78(v2);

  return v0;
}

uint64_t sub_1C9961B64()
{
  sub_1C9961B04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9961B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1C9808F28(a1, a3) & 1) == 0)
  {
    return 0;
  }

  v3 = sub_1C97BE374();

  return sub_1C9807FAC(v3, v4);
}

uint64_t sub_1C9961BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9961CAC(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 0x6570616873;
  }
}

void sub_1C9961CDC()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CE6E8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = sub_1C98B7774();
  sub_1C97BE20C(v2, v3);
  sub_1C99709D0();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&unk_1EC3CE7E0);
  sub_1C9970FD8();
  sub_1C9970AD0(v4);
  sub_1C99711E4();
  if (!v0)
  {
    sub_1C97A2CEC(&qword_1EC3C9AA0);
    sub_1C9970FD8();
    sub_1C9970A24(v5);
    sub_1C99711E4();
  }

  v6 = sub_1C97AEB30();
  v7(v6);
  sub_1C9971380();
  sub_1C97AEB5C();
}

void sub_1C9961E54()
{
  sub_1C97C8044();
  sub_1C97BE374();

  sub_1C97C80D0();
}

uint64_t sub_1C9961E90()
{
  sub_1C98AE1E8();
  sub_1C97BE32C();
  sub_1C97C8044();
  sub_1C97C80D0();
  return sub_1C9A93D18();
}

uint64_t sub_1C9961EDC(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CE718);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C99709D0();
  sub_1C9971614();
  sub_1C9971448();
  sub_1C9A93DB8();
  sub_1C97A2CEC(&unk_1EC3CE7E0);
  sub_1C9970FC0();
  sub_1C9970AD0(v3);
  sub_1C99713A4();
  sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C9970FC0();
  sub_1C9970A24(v5);
  sub_1C99713A4();
  v6 = sub_1C97E89F0();
  v7(v6);
  sub_1C97A592C(a1);
  return v8;
}

uint64_t sub_1C99620A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_1C9808F28(a1, a4) & 1) == 0 || (sub_1C9807FAC(a2, a5) & 1) == 0)
  {
    return 0;
  }

  v7 = sub_1C97BE374();

  return sub_1C9807FAC(v7, v8);
}

uint64_t sub_1C9962120(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5373746867696577 && a2 == 0xEC00000065706168;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73746867696577 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736573616962 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C9962230(char a1)
{
  if (!a1)
  {
    return 0x5373746867696577;
  }

  if (a1 == 1)
  {
    return 0x73746867696577;
  }

  return 0x736573616962;
}

void sub_1C996228C()
{
  sub_1C97AEB94();
  v2 = v1;
  sub_1C97A2CEC(&qword_1EC3CE708);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  sub_1C97BE20C(v2, v2[3]);
  sub_1C9970A7C();
  sub_1C99715E0();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&unk_1EC3CE7E0);
  sub_1C9970FD8();
  sub_1C9970AD0(v4);
  sub_1C99711E4();
  if (!v0)
  {
    sub_1C97A2CEC(&qword_1EC3C9AA0);
    sub_1C9970FD8();
    sub_1C9970A24(v5);
    sub_1C9971448();
    sub_1C9A93A18();
    sub_1C9971448();
    sub_1C9A93A18();
  }

  v6 = sub_1C97AEB30();
  v7(v6);
  sub_1C9971380();
  sub_1C97AEB5C();
}

void sub_1C996245C()
{
  sub_1C97C8044();
  sub_1C97C80D0();

  sub_1C97C80D0();
}

uint64_t sub_1C99624B4()
{
  sub_1C97BE32C();
  sub_1C97C8044();
  sub_1C97C80D0();
  sub_1C97C80D0();
  return sub_1C9A93D18();
}

void sub_1C996251C()
{
  sub_1C97AEB94();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3CE730);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C97BE20C(v1, v1[3]);
  sub_1C9970A7C();
  sub_1C9971614();
  sub_1C9971448();
  sub_1C9A93DB8();
  sub_1C97A2CEC(&unk_1EC3CE7E0);
  sub_1C9970FC0();
  sub_1C9970AD0(v3);
  sub_1C9A938F8();
  sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C9970FC0();
  sub_1C9970A24(v4);
  sub_1C9971488();
  sub_1C9A938F8();
  sub_1C9971488();
  sub_1C9A938F8();
  v5 = sub_1C97FB300();
  v6(v5);
  sub_1C97A592C(v1);
  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C996276C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99627C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9961BEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99627E8(uint64_t a1)
{
  v2 = sub_1C99709D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9962824(uint64_t a1)
{
  v2 = sub_1C99709D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9962860@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9961EDC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C99628B8()
{
  sub_1C9A93CC8();
  sub_1C9961E54();
  return sub_1C9A93D18();
}

uint64_t sub_1C996291C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9962120(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9962944(uint64_t a1)
{
  v2 = sub_1C9970A7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9962980(uint64_t a1)
{
  v2 = sub_1C9970A7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99629BC(void *a1@<X8>)
{
  sub_1C996251C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_1C9962A24()
{
  sub_1C9A93CC8();
  sub_1C996245C();
  return sub_1C9A93D18();
}

BOOL sub_1C9962A98(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1C98AE1E8();
  result = 0;
  if (sub_1C9808F28(*(v4 + 8), *(v5 + 8)))
  {
    v6 = sub_1C984ADE8();
    if (sub_1C9807FAC(v6, v7) & 1) != 0 && (sub_1C9808F28(v3[3], v2[3]) & 1) != 0 && (sub_1C99714DC())
    {
      v8 = sub_1C984ADE8();
      if (sub_1C9807FAC(v8, v9) & 1) != 0 && (sub_1C9808F28(v3[6], v2[6]) & 1) != 0 && (sub_1C99714DC())
      {
        v10 = sub_1C984ADE8();
        if (sub_1C9807FAC(v10, v11) & 1) != 0 && (sub_1C9808F28(v3[9], v2[9]) & 1) != 0 && (sub_1C99714DC())
        {
          v12 = sub_1C984ADE8();
          if (sub_1C9807FAC(v12, v13) & 1) != 0 && (sub_1C9808F28(v3[12], v2[12]) & 1) != 0 && (sub_1C99714DC())
          {
            v14 = sub_1C984ADE8();
            if (sub_1C9807FAC(v14, v15) & 1) != 0 && (sub_1C9808F28(v3[15], v2[15]) & 1) != 0 && (sub_1C99714DC())
            {
              v16 = sub_1C984ADE8();
              if (sub_1C9807FAC(v16, v17) & 1) != 0 && (sub_1C9808F28(v3[18], v2[18]) & 1) != 0 && (sub_1C99714DC())
              {
                v18 = sub_1C984ADE8();
                if (sub_1C9807FAC(v18, v19) & 1) != 0 && (sub_1C9808F28(v3[21], v2[21]))
                {
                  v20 = sub_1C984ADE8();
                  if (sub_1C9807FAC(v20, v21))
                  {
                    v22 = sub_1C97BE374();
                    if (sub_1C9807FAC(v22, v23))
                    {
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C9962C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69537475706E69 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72616C706D657865 && a2 == 0xEE00726F736E6554;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001C9ADAD80 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C9ADADA0 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C9ADADC0 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C9ADADE0 == a2;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001C9ADAE00 == a2;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x726F736E65543164 && a2 == 0xE900000000000073;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x726F736E65543264 && a2 == 0xE900000000000073)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9A93B18();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C9962F38(char a1)
{
  result = 0x7A69537475706E69;
  switch(a1)
  {
    case 1:
      result = 0x72616C706D657865;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x726F736E65543164;
      break;
    case 8:
      result = 0x726F736E65543264;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C996304C()
{
  sub_1C97A2CEC(&qword_1EC3CE618);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = sub_1C99460A8();
  sub_1C97BE20C(v2, v3);
  sub_1C996FEC4();
  sub_1C9971448();
  sub_1C9A93DD8();
  sub_1C9A93A08();
  if (!v0)
  {
    sub_1C97FB3CC();
    sub_1C996FF18();
    sub_1C9A93A18();
    sub_1C996FF6C();
    sub_1C9971054();
    sub_1C9971054();
    sub_1C9971054();
    sub_1C9971054();
    sub_1C9971054();
    sub_1C9971054();
    sub_1C9971558();
    sub_1C9971054();
  }

  v4 = sub_1C97AEB30();
  return v5(v4);
}

void sub_1C99632D4()
{
  MEMORY[0x1CCA91980](*v0);
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C97BE374();

  sub_1C97C80D0();
}

uint64_t sub_1C9963408()
{
  sub_1C97BE32C();
  sub_1C99632D4();
  return sub_1C9A93D18();
}

void sub_1C9963440()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CE638);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97E86E4();
  sub_1C97BE20C(v2, v2[3]);
  sub_1C996FEC4();
  sub_1C99715E0();
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v2);
  }

  else
  {
    LOBYTE(v34) = 0;
    v6 = sub_1C9A938E8();
    sub_1C996FFC0();
    sub_1C9A938F8();
    v7 = v34;
    v32 = v35;
    sub_1C9970014();
    sub_1C9971028();
    v31 = v34;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    sub_1C9971028();
    v25 = v34;
    v26 = v35;
    v27 = v36;
    sub_1C9971028();
    v22 = v34;
    v23 = v35;
    v24 = v36;
    sub_1C9971028();
    v19 = v35;
    v20 = v36;
    v21 = v34;
    sub_1C9971028();
    v16 = v34;
    v17 = v35;
    v18 = v36;
    LOBYTE(v33[0]) = 7;
    sub_1C9971028();
    v14 = v35;
    v15 = v34;
    v13 = v36;
    sub_1C9971558();
    sub_1C9A938F8();
    v8 = sub_1C9971110();
    v9(v8);
    v10 = v58;
    v11 = v60;
    v12 = v59;
    v33[0] = v6;
    v33[1] = v7;
    v33[2] = v32;
    v33[3] = v28;
    v33[4] = v29;
    v33[5] = v30;
    v33[6] = v25;
    v33[7] = v26;
    v33[8] = v27;
    v33[9] = v22;
    v33[10] = v23;
    v33[11] = v24;
    v33[12] = v21;
    v33[13] = v19;
    v33[14] = v20;
    v33[15] = v16;
    v33[16] = v17;
    v33[17] = v18;
    v33[18] = v15;
    v33[19] = v14;
    v33[20] = v13;
    v33[21] = v58;
    v33[22] = v59;
    v33[23] = v60;
    sub_1C98DDC6C(v33, &v34);
    sub_1C97A592C(v2);
    v34 = v6;
    v35 = v31;
    v36 = v32;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v40 = v25;
    v41 = v26;
    v42 = v27;
    v43 = v22;
    v44 = v23;
    v45 = v24;
    v46 = v21;
    v47 = v19;
    v48 = v20;
    v49 = v16;
    v50 = v17;
    v51 = v18;
    v52 = v15;
    v53 = v14;
    v54 = v13;
    v55 = v10;
    v56 = v12;
    v57 = v11;
    sub_1C996FC78(&v34);
    memcpy(v4, v33, 0xC0uLL);
  }

  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C9963A20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9963A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9962C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9963A9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9962F30();
  *a1 = result;
  return result;
}

uint64_t sub_1C9963AC4(uint64_t a1)
{
  v2 = sub_1C996FEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9963B00(uint64_t a1)
{
  v2 = sub_1C996FEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9963B44()
{
  sub_1C9A93CC8();
  sub_1C99632D4();
  return sub_1C9A93D18();
}

void sub_1C9963B9C(void *a1@<X8>)
{
  sub_1C9963440();
  if (!v1)
  {
    memcpy(a1, v3, 0xC0uLL);
  }
}

uint64_t sub_1C9963BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  sub_1C9964FC8(__dst, a2, a3, a4, v8, v9, v10, v11, v13, v14, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9]);
  if (!v4)
  {
    sub_1C97A2CEC(&unk_1EC3CE050);
    sub_1C996FE74(&unk_1EC3CCE80);
    a4 = sub_1C9A91F28();
  }

  return a4;
}

uint64_t sub_1C9963CD8(void *a1, uint64_t a2)
{
  v66 = a2;
  v3 = sub_1C97A2CEC(&qword_1EC3CE418);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v46 - v4;
  v5 = sub_1C97A2CEC(&qword_1EC3CE420);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v46 - v6;
  v56 = sub_1C97A2CEC(&qword_1EC3CE428);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v46 - v7;
  v8 = sub_1C97A2CEC(&qword_1EC3CE430);
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v46 - v9;
  v10 = sub_1C97A2CEC(&qword_1EC3CE438);
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CE440);
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CE448);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  sub_1C97A2CEC(&qword_1EC3CE450);
  v19 = swift_allocObject();
  v20 = sub_1C996B564(20, 0, MEMORY[0x1E69E7CC0]);
  v50 = a1;
  v21 = *a1 - 512;
  if (__OFSUB__(*a1, 512))
  {
    __break(1u);
  }

  else
  {
    v48 = v3;
    v3 = v20;
    v19 = v21 / 160;
    if (qword_1EC3C5E00 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  v22 = v63;
  sub_1C9958E84(__dst, v19 + 1, 46);
  if (v22)
  {
  }

  else
  {
    v23 = sub_1C98B4394();
    v63 = 0;
    v24 = v23;

    v46 = v3;
    sub_1C9966E74(v3, v24, v18);

    sub_1C996FE74(&unk_1EC3CE458);
    v25 = sub_1C9A92008();
    sub_1C97A2CEC(&unk_1EC3CE460);
    swift_allocObject();
    v47 = sub_1C98E3778(v25);
    sub_1C97DA1E0(v18, &qword_1EC3CE448);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v64 = MEMORY[0x1E69E7CC0];
    sub_1C97A2CEC(&unk_1EC3CB570);
    sub_1C996FE74(&unk_1EC3CE470);
    v26 = v66;
    sub_1C9A92658();
    sub_1C9A91CE8();
    (*(v60 + 8))(v12, v10);
    sub_1C996FE74(&unk_1EC3CE478);
    v27 = v62;
    v19 = v15;
    v28 = sub_1C9A91F28();
    (*(v61 + 8))(v15, v27);
    v29 = v63;
    v30 = sub_1C9967230(v26);
    v63 = v29;
    if (v29)
    {
    }

    else
    {
      v64 = v30;
      v32 = v49;
      v61 = v28;
      sub_1C9953B34();
      sub_1C97A2CEC(&qword_1EC3CE480);
      v62 = MEMORY[0x1E695BED8];
      sub_1C996FE74(&unk_1EC3CE488);
      sub_1C996FE74(&unk_1EC3CE490);
      sub_1C9A91FE8();
      sub_1C97DA1E0(v32, &qword_1EC3CE418);

      v60 = *(v26 + 32);
      v33 = swift_allocObject();
      v34 = v46;
      *(v33 + 16) = v47;
      *(v33 + 24) = v34;
      v35 = v50;
      memcpy((v33 + 32), v50, 0xC0uLL);
      v36 = *(v26 + 16);
      *(v33 + 224) = *v26;
      *(v33 + 240) = v36;
      v37 = v61;
      *(v33 + 256) = *(v26 + 32);
      *(v33 + 264) = v37;

      sub_1C98DDC6C(v35, &v64);

      sub_1C97A2CEC(&unk_1EC3CE050);
      sub_1C996FE74(&unk_1EC3CE498);
      v38 = v51;
      v39 = v53;
      v40 = v59;
      sub_1C9A92048();

      (*(v52 + 8))(v40, v39);
      v41 = sub_1C996FE74(&unk_1EC3CE4A0);
      v42 = sub_1C996FE74(&unk_1EC3CCE80);
      v44 = v55;
      v43 = v56;
      MEMORY[0x1CCA8FBC0](v56, v41, v42);
      (*(v54 + 8))(v38, v43);
      sub_1C996FE74(&unk_1EC3CE4A8);
      v45 = v58;
      v19 = sub_1C9A91F28();

      (*(v57 + 8))(v44, v45);
    }
  }

  return v19;
}

void *sub_1C9964664(void *a1, _OWORD *a2)
{
  v63 = a2;
  v3 = sub_1C97A2CEC(&qword_1EC3CE418);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v43 - v4;
  v51 = sub_1C97A2CEC(&qword_1EC3CE420);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v43 - v5;
  v54 = sub_1C97A2CEC(&qword_1EC3CE428);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v43 - v6;
  v7 = sub_1C97A2CEC(&qword_1EC3CE430);
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v43 - v8;
  v58 = sub_1C97A2CEC(&qword_1EC3CE438);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v43 - v9;
  v59 = sub_1C97A2CEC(&qword_1EC3CE440);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v43 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CE448);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  sub_1C97A2CEC(&qword_1EC3CE450);
  swift_allocObject();
  result = sub_1C996B564(20, 0, MEMORY[0x1E69E7CC0]);
  v47 = a1;
  v17 = *a1 - 512;
  if (__OFSUB__(*a1, 512))
  {
    __break(1u);
  }

  else
  {
    v45 = v3;
    v18 = result;
    v19 = v63[1];
    v62[0] = *v63;
    v62[1] = v19;
    v20 = v63[3];
    v62[2] = v63[2];
    v62[3] = v20;
    v21 = v62;
    v22 = v60;
    sub_1C98B2B18(v17 / 160 + 1, 46);
    if (v22)
    {
    }

    else
    {
      v43 = v7;
      v23 = sub_1C98B4394();

      v44 = v18;
      sub_1C9966E74(v18, v23, v15);

      sub_1C996FE74(&unk_1EC3CE458);
      v24 = sub_1C9A92008();
      sub_1C97A2CEC(&unk_1EC3CE460);
      swift_allocObject();
      v60 = sub_1C98E3778(v24);
      sub_1C97DA1E0(v15, &qword_1EC3CE448);
      sub_1C97A2CEC(&unk_1EC3CA040);
      v61 = MEMORY[0x1E69E7CC0];
      sub_1C97A2CEC(&unk_1EC3CB570);
      sub_1C996FE74(&qword_1EC3CE470);
      sub_1C9A92658();
      v25 = v58;
      sub_1C9A91CE8();
      (*(v56 + 8))(v10, v25);
      sub_1C996FE74(&unk_1EC3CE478);
      v26 = v59;
      v27 = sub_1C9A91F28();
      (*(v57 + 8))(v12, v26);
      v61 = sub_1C9967674(v63);
      v28 = v46;
      v57 = v27;
      sub_1C9953B34();
      sub_1C97A2CEC(&qword_1EC3CE480);
      v58 = MEMORY[0x1E695BED8];
      sub_1C996FE74(&unk_1EC3CE488);
      v59 = 0;
      sub_1C996FE74(&unk_1EC3CE490);
      v29 = v48;
      sub_1C9A91FE8();
      sub_1C97DA1E0(v28, &qword_1EC3CE418);

      v30 = swift_allocObject();
      v31 = v44;
      *(v30 + 16) = v60;
      *(v30 + 24) = v31;
      v32 = v47;
      memcpy((v30 + 32), v47, 0xC0uLL);
      v33 = v63;
      v34 = v63[1];
      *(v30 + 224) = *v63;
      *(v30 + 240) = v34;
      v35 = v33[3];
      *(v30 + 256) = v33[2];
      *(v30 + 272) = v35;
      *(v30 + 288) = v57;

      sub_1C98DDC6C(v32, &v61);
      sub_1C98ACCA8();

      sub_1C97A2CEC(&unk_1EC3CE050);
      sub_1C996FE74(&unk_1EC3CE498);
      v37 = v50;
      v36 = v51;
      sub_1C9A92048();

      (*(v49 + 8))(v29, v36);
      v38 = sub_1C996FE74(&unk_1EC3CE4A0);
      v39 = sub_1C996FE74(&unk_1EC3CCE80);
      v41 = v53;
      v40 = v54;
      MEMORY[0x1CCA8FBC0](v54, v38, v39);
      (*(v52 + 8))(v37, v40);
      sub_1C996FE74(&unk_1EC3CE4A8);
      v42 = v43;
      v21 = sub_1C9A91F28();

      (*(v55 + 8))(v41, v42);
    }

    return v21;
  }

  return result;
}

void sub_1C9964FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v23;
  a20 = v24;
  v109 = v25;
  v108 = v26;
  v28 = v27;
  v113 = v29;
  sub_1C97AE9DC();
  v99 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v97 = v32;
  sub_1C97ABFB4(v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_1C97A2CEC(&qword_1EC3CE418);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  sub_1C97ABFB4(v35);
  v36 = sub_1C97A2CEC(&qword_1EC3CE420);
  sub_1C97ABF78(v36, &v111);
  v100 = v37;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C97AC02C();
  sub_1C97ABFB4(v39);
  v40 = sub_1C97A2CEC(&qword_1EC3CE428);
  sub_1C97ABF78(v40, &v112);
  v102 = v41;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C97AC02C();
  sub_1C97ABFB4(v43);
  v44 = sub_1C97A2CEC(&qword_1EC3CE430);
  sub_1C97AE9C8();
  v103 = v45;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C97AC02C();
  sub_1C97ABFB4(v47);
  v48 = sub_1C97A2CEC(&qword_1EC3CE438);
  sub_1C97AE9C8();
  v104 = v49;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C97AEA4C();
  v51 = sub_1C97A2CEC(&qword_1EC3CE440);
  sub_1C97ABF78(v51, &a12);
  v105 = v52;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C9945F6C();
  sub_1C97A2CEC(&qword_1EC3CE448);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3CE450);
  swift_allocObject();
  v55 = sub_1C996B564(20, 0, MEMORY[0x1E69E7CC0]);
  v101 = v28;
  v56 = *v28 - 512;
  if (__OFSUB__(*v28, 512))
  {
    __break(1u);
  }

  else
  {
    v95 = v33;
    v57 = v55;
    (*(v109 + 32))(v56 / 160 + 1, 46, v113);
    if (v20)
    {
    }

    else
    {
      v93[1] = v44;
      v58 = sub_1C98B4394();

      v107 = v57;
      sub_1C9966E74(v57, v58, v21);

      sub_1C99715C8();
      sub_1C996FE74(v59);
      v60 = sub_1C9A92008();
      sub_1C97A2CEC(&unk_1EC3CE460);
      sub_1C97AA878();
      swift_allocObject();
      v94 = sub_1C98E3778(v60);
      sub_1C99715C8();
      sub_1C97DA1E0(v61, v62);
      sub_1C97A2CEC(&unk_1EC3CA040);
      v110[0] = MEMORY[0x1E69E7CC0];
      v63 = sub_1C99460A8();
      sub_1C97A2CEC(v63);
      sub_1C9971258();
      sub_1C996FE74(v64);
      sub_1C9A92658();
      sub_1C98BBB4C();
      sub_1C9A91CE8();
      v65 = sub_1C997107C();
      v66(v65, v48);
      sub_1C996FE74(&unk_1EC3CE478);
      v67 = v106;
      v68 = sub_1C9A91F28();
      sub_1C97DAA58();
      v69(v22, v67);
      sub_1C9967AB8();
      v110[0] = v70;
      v71 = v96;
      v72 = v94;
      v104 = v68;
      sub_1C9953B34();
      v73 = sub_1C98138D4();
      sub_1C97A2CEC(v73);
      sub_1C97AE9EC();
      v106 = v74;
      sub_1C996FE74(v75);
      sub_1C996FE74(&unk_1EC3CE490);
      sub_1C9A91FE8();
      sub_1C97DA1E0(v71, &qword_1EC3CE418);

      v76 = v99;
      v77 = v98;
      (*(v99 + 16))(v98, v108, v113);
      v78 = (*(v76 + 80) + 240) & ~*(v76 + 80);
      v79 = (v97 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      v81 = v109;
      *(v80 + 2) = v113;
      *(v80 + 3) = v81;
      v82 = v107;
      *(v80 + 4) = v72;
      *(v80 + 5) = v82;
      v83 = v101;
      memcpy(v80 + 48, v101, 0xC0uLL);
      (*(v76 + 32))(&v80[v78], v77, v113);
      *&v80[v79] = v104;

      sub_1C98DDC6C(v83, v110);

      v84 = sub_1C98DE2C4();
      sub_1C97A2CEC(v84);
      sub_1C996FE74(&unk_1EC3CE498);
      sub_1C9A92048();

      sub_1C97DAA58();
      v85 = sub_1C98B7774();
      v86(v85);
      sub_1C99710C8();
      sub_1C996FE74(v87);
      sub_1C996FE74(&unk_1EC3CCE80);
      v88 = sub_1C97AEB30();
      MEMORY[0x1CCA8FBC0](v88);
      sub_1C97DAA58();
      v89 = sub_1C99715B0();
      v90(v89);
      sub_1C996FE74(&unk_1EC3CE4A8);
      sub_1C9A91F28();

      sub_1C97DAA58();
      v91 = sub_1C97FB300();
      v92(v91);
    }

    sub_1C97BE538();
    sub_1C97AEB5C();
  }
}

void sub_1C99659B0(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = sub_1C97A2CEC(&qword_1EC3CD610);
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v14 = &v14 - v2;
  v3 = MEMORY[0x1E69E7CC0];
  v18 = xmmword_1C9A9EDD0;
  while (1)
  {
    v4 = sub_1C993B624();
    if (v1)
    {

      return;
    }

    v6 = v5;
    if (v5 == -1)
    {
      v19 = v3;
      sub_1C97A2CEC(&qword_1EC3CD618);
      sub_1C996FE74(&unk_1EC3CD620);
      v12 = v14;
      sub_1C9A92658();

      sub_1C97A2CEC(&unk_1EC3CA040);
      v13 = v17;
      sub_1C9A91CE8();
      (*(v15 + 8))(v12, v13);
      return;
    }

    v7 = v4;
    sub_1C97A2CEC(&unk_1EC3C7750);
    inited = swift_initStackObject();
    *(inited + 16) = v18;
    *(inited + 32) = v7;
    *(inited + 40) = v6;
    v9 = *(v3 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || (v10 = *(v3 + 24) >> 1, v10 <= v9))
    {
      sub_1C97E69E4();
      v3 = v11;
      v10 = *(v11 + 24) >> 1;
    }

    if (v10 <= *(v3 + 16))
    {
      break;
    }

    sub_1C97A2CEC(&qword_1EC3C7B90);
    swift_arrayInitWithCopy();

    ++*(v3 + 16);
  }

  __break(1u);
}

uint64_t sub_1C9965C54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  sub_1C98DDC6C(__dst, v12);
  sub_1C9958C28(__dst, __src);
  memcpy(v15, __src, sizeof(v15));
  v6 = a2[3];
  v7 = a2[5];
  v8 = sub_1C97A5A8C(a2, v6);
  v12[3] = v6;
  v12[4] = v7;
  v9 = sub_1C981CDF0(v12);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  v10 = sub_1C9890CF8(v15, v12);
  sub_1C996FC24(__src);
  result = sub_1C97A592C(v12);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1C9965D58@<X0>(uint64_t *a1@<X8>)
{
  result = os_transaction_create();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9965DA0(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3CE578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AB9F00;
  *(inited + 32) = 0x7475706E69;
  *(inited + 40) = 0xE500000000000000;
  sub_1C97A2CEC(&qword_1EC3C7C70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C9A9FB90;
  *(v3 + 32) = vdupq_n_s64(1uLL);
  *(v3 + 48) = 1024;
  *(v3 + 56) = a1;
  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000040;
  *(inited + 64) = 0x80000001C9ADA7B0;
  *(inited + 72) = &unk_1F492AC18;
  *(inited + 80) = 0xD000000000000042;
  *(inited + 88) = 0x80000001C9ADA9C0;
  sub_1C997147C();
  *(inited + 96) = v5;
  *(inited + 104) = v4;
  *(inited + 112) = v6;
  *(inited + 120) = &unk_1F492AC78;
  *(inited + 128) = v7;
  *(inited + 136) = 0x80000001C9ADA710;
  sub_1C997147C();
  *(inited + 144) = v9;
  *(inited + 152) = v8;
  *(inited + 160) = v10;
  *(inited + 168) = &unk_1F492ACD8;
  *(inited + 176) = v11;
  *(inited + 184) = 0x80000001C9ADA800;
  sub_1C997147C();
  *(inited + 192) = v13;
  *(inited + 200) = v12;
  *(inited + 208) = v14;
  *(inited + 216) = &unk_1F492AD38;
  *(inited + 224) = v15;
  *(inited + 232) = 0x80000001C9ADA930;
  sub_1C9971528();
  *(inited + 240) = v17;
  *(inited + 248) = v16 | 4;
  *(inited + 256) = v18;
  *(inited + 264) = &unk_1F492AD98;
  *(inited + 272) = v16 | 6;
  *(inited + 280) = 0x80000001C9ADAA60;
  sub_1C9971528();
  *(inited + 304) = v19;
  *(inited + 312) = &unk_1F492AE00;
  sub_1C9971528();
  *(inited + 320) = v20 - 8;
  *(inited + 328) = v21;
  *(inited + 288) = &unk_1F492ADC0;
  *(inited + 296) = v22;
  *(inited + 336) = &unk_1F492AE28;
  *(inited + 344) = v22;
  *(inited + 352) = 0x80000001C9ADA850;
  *(inited + 360) = &unk_1F492AE58;
  sub_1C9971528();
  *(inited + 368) = v23;
  *(inited + 376) = v24;
  *(inited + 384) = &unk_1F492AE80;
  sub_1C97A2CEC(&unk_1EC3CE7E0);
  return sub_1C9A92348();
}

uint64_t sub_1C9966024(uint64_t a1)
{
  v1 = sub_1C9965DA0(a1);
  sub_1C97A2CEC(&unk_1EC3CE560);
  v2 = sub_1C9A937E8();
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = (v3 + 63) >> 6;
  if ((v4 & *(v1 + 64)) != 0)
  {
LABEL_8:

    v8 = e5rt_tensor_desc_dtype_create();
    if (v8)
    {
      v9 = v8;

      sub_1C9885EF4();
      sub_1C97AA928();
      swift_allocError();
      *v10 = v9;
      *(v10 + 4) = 0;
    }

    else
    {

      sub_1C9886C04();
      sub_1C97AA928();
      swift_allocError();
      *v11 = 0;
    }

    swift_willThrow();
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        __break(1u);
      }

      if (v7 >= v5)
      {
        break;
      }

      ++v6;
      if (*(v1 + 64 + 8 * v7))
      {
        goto LABEL_8;
      }
    }
  }

  return v2;
}

uint64_t sub_1C9966460(uint64_t result)
{
  if (!__OFSUB__(result, 512))
  {
    return sub_1C9966024((result - 512) / 5120 + 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9966490(void *a1)
{
  v68[24] = *MEMORY[0x1E69E9840];
  v3 = sub_1C9A91558();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v9 = *a1 - 512;
  if (__OFSUB__(*a1, 512))
  {
    goto LABEL_40;
  }

  v61 = v1;
  v58 = v8;
  v57 = a1;
  v59 = v7;
  v62 = &v56 - v6;
  v60 = v5;
  v10 = sub_1C9965DA0(v9 / 5120 + 1);
  inited = sub_1C97A2CEC(&unk_1EC3CE560);
  v12 = sub_1C9A937E8();
  v13 = 0;
  v65 = v10;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v10 + 64;
  v17 = v15 & *(v10 + 64);
  v18 = (v14 + 63) >> 6;
  v63 = v12 + 64;
  v64 = v12;
  if (v17)
  {
    goto LABEL_5;
  }

  while (2)
  {
    v20 = v13;
    do
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_35:
        v54 = v67;
        inited = v67;
        sub_1C9880DE8();

        if (v13)
        {
        }

        else
        {
          type metadata accessor for AccessibilitySoundRecognition.CustomModel();
          inited = swift_allocObject();
          v55 = v57;
          sub_1C98DDC6C(v57, v68);
          sub_1C99615D0(v54, v16, v55);
        }

        (v17)(v62, v18);
        return inited;
      }

      if (v13 >= v18)
      {

        v40 = v61;
        sub_1C98C73E0(38, v62);
        if (v40)
        {

          return inited;
        }

        v41 = sub_1C9880658();
        type metadata accessor for E5RTExecutionStream();
        swift_allocObject();
        v67 = sub_1C9880798(v41);
        type metadata accessor for E5RTExecutionStreamOperation();
        v42 = v58;
        sub_1C9A913F8();
        sub_1C9A91508();
        v17 = *(v59 + 8);
        v43 = v42;
        v18 = v60;
        (v17)(v43, v60);
        sub_1C98817E8();
        v16 = v52;

        sub_1C9881684();
        sub_1C9882AF4(v16);
        v13 = 0;
        goto LABEL_35;
      }

      v21 = *(v16 + 8 * v13);
      ++v20;
    }

    while (!v21);
    v19 = __clz(__rbit64(v21));
    v17 = (v21 - 1) & v21;
LABEL_11:
    v22 = v19 | (v13 << 6);
    v23 = (*(v65 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    v26 = *(*(v65 + 56) + 8 * v22);
    v68[0] = 0;

    v67 = v26;

    v27 = e5rt_tensor_desc_dtype_create();
    if (v27)
    {
      inited = v27;
      sub_1C9885EF4();
      swift_allocError();
      *v44 = inited;
      *(v44 + 4) = 0;
LABEL_25:
      swift_willThrow();

      return inited;
    }

    v66 = v24;
    v28 = v68[0];
    if (!v68[0])
    {
      sub_1C9886C04();
      swift_allocError();
      *v45 = 0;
      goto LABEL_25;
    }

    type metadata accessor for E5RTTensorDescriptorDataType();
    inited = swift_initStackObject();
    *(inited + 16) = v28;
    v68[0] = 0;
    v29 = e5rt_tensor_desc_create();
    if (v29)
    {
      v46 = v29;
      sub_1C9885EF4();
      swift_allocError();
      *v47 = v46;
      *(v47 + 4) = 0;
LABEL_28:
      swift_willThrow();

      swift_setDeallocating();
      sub_1C9881DCC();
      goto LABEL_32;
    }

    v30 = v68[0];
    if (!v68[0])
    {
      sub_1C9886C04();
      swift_allocError();
      *v48 = 0;
      goto LABEL_28;
    }

    swift_setDeallocating();
    sub_1C9881DCC();
    swift_deallocClassInstance();
    type metadata accessor for E5RTTensorDescriptor();
    inited = swift_initStackObject();
    *(inited + 16) = v30;
    v68[0] = 0;
    v31 = e5rt_operand_desc_retain_from_tensor_desc();
    if (v31)
    {
      v49 = v31;
      sub_1C9885EF4();
      swift_allocError();
      *v50 = v49;
      *(v50 + 4) = 0;
    }

    else
    {
      v32 = v68[0];
      if (v68[0])
      {
        type metadata accessor for E5RTOperandDescriptor();
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        swift_setDeallocating();
        sub_1C9881C7C();
        swift_deallocClassInstance();

        *(v63 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v34 = v64;
        v35 = (*(v64 + 48) + 16 * v22);
        v36 = v66;
        *v35 = v25;
        v35[1] = v36;
        *(*(v34 + 56) + 8 * v22) = v33;
        v37 = *(v34 + 16);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (!v38)
        {
          *(v34 + 16) = v39;
          if (!v17)
          {
            continue;
          }

LABEL_5:
          v19 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
          goto LABEL_11;
        }

        __break(1u);
LABEL_40:
        __break(1u);
      }

      sub_1C9886C04();
      swift_allocError();
      *v51 = 0;
    }

    break;
  }

  swift_willThrow();

  swift_setDeallocating();
  sub_1C9881C7C();
LABEL_32:
  swift_deallocClassInstance();
  return inited;
}

void sub_1C9966CB0()
{
  sub_1C97AEB94();
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98550DC();
  sub_1C9966460(*v3);
  if (!v0)
  {
    sub_1C99B8818();
    sub_1C987EBFC();

    type metadata accessor for AccessibilitySoundRecognition.CustomModel();
    swift_allocObject();
    sub_1C98DDC6C(v3, &v9);
    v6 = sub_1C98DE2C4();
    sub_1C99615D0(v6, v7, v3);
    sub_1C97DAA58();
    v8(v1, AssociatedTypeWitness);
  }

  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C9966E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = sub_1C97A2CEC(&unk_1EC3C9910);
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v22 - v6;
  v8 = sub_1C9A91C28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C97A2CEC(&qword_1EC3CE5F8);
  v13 = *(v12 - 8);
  v23 = v12;
  v24 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v27 = a2;
  v22 = a1;

  sub_1C97A2CEC(&qword_1EC3CB198);
  sub_1C996FE74(&unk_1EC3CE530);
  sub_1C9A91F68();

  (*(v9 + 104))(v11, *MEMORY[0x1E695BD20], v8);
  v16 = v25;
  (*(v5 + 104))(v7, *MEMORY[0x1E695BD40], v25);
  sub_1C996FE74(&unk_1EC3CE600);
  v17 = v26;
  v18 = v23;
  sub_1C9A92018();
  (*(v5 + 8))(v7, v16);
  (*(v9 + 8))(v11, v8);
  (*(v24 + 8))(v15, v18);
  v19 = v17 + *(sub_1C97A2CEC(&qword_1EC3CE448) + 36);
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *v19 = 0u;
  v20 = v22;
  *(v19 + 80) = sub_1C996FEB8;
  *(v19 + 88) = v20;
  *(v19 + 96) = 0u;
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  *(v19 + 144) = sub_1C996FEC0;
  *(v19 + 152) = v20;
  return swift_retain_n();
}

char *sub_1C9967230(uint64_t a1)
{
  v31 = a1;
  v2 = sub_1C97A2CEC(&qword_1EC3CE5A0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = sub_1C97A2CEC(&qword_1EC3CE5A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = sub_1C9A91558();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C98C73E0(3, v12);
  if (!v1)
  {
    v20 = v4;
    v21 = v8;
    v23 = v10;
    v24 = v9;
    v22 = v6;
    v14 = sub_1C99569EC(v12, 96, 48, v31);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C979AF98;
    *(v15 + 24) = 0;
    *(v15 + 32) = xmmword_1C9AB9F10;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v26 = v14;
    v27 = sub_1C9970F6C;
    v28 = v16;
    v29 = sub_1C9970F44;
    v30 = v15;

    v31 = sub_1C97A2CEC(&qword_1EC3CE5B0);
    sub_1C996FE74(&unk_1EC3CE5B8);
    v17 = v20;
    sub_1C9A91F68();

    sub_1C996FE74(&unk_1EC3CE5C0);
    sub_1C996FE10();
    v18 = v21;
    sub_1C9A920D8();

    (*(v25 + 8))(v17, v2);
    sub_1C996FE74(&unk_1EC3CE5D0);
    v8 = sub_1C9A91F28();
    (*(v22 + 8))(v18, v5);
    (*(v23 + 8))(v12, v24);
  }

  return v8;
}

char *sub_1C9967674(_OWORD *a1)
{
  v31 = a1;
  v2 = sub_1C97A2CEC(&qword_1EC3CE5A0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = sub_1C97A2CEC(&qword_1EC3CE5A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = sub_1C9A91558();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C98C73E0(3, v12);
  if (!v1)
  {
    v20 = v4;
    v21 = v8;
    v23 = v10;
    v24 = v9;
    v22 = v6;
    v14 = sub_1C9957210(v12, 96, 48, v31);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C979AF98;
    *(v15 + 24) = 0;
    *(v15 + 32) = xmmword_1C9AB9F10;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v26 = v14;
    v27 = sub_1C9970F6C;
    v28 = v16;
    v29 = sub_1C9970F44;
    v30 = v15;

    v31 = sub_1C97A2CEC(&qword_1EC3CE5B0);
    sub_1C996FE74(&unk_1EC3CE5B8);
    v17 = v20;
    sub_1C9A91F68();

    sub_1C996FE74(&unk_1EC3CE5C0);
    sub_1C996FE10();
    v18 = v21;
    sub_1C9A920D8();

    (*(v25 + 8))(v17, v2);
    sub_1C996FE74(&unk_1EC3CE5D0);
    v8 = sub_1C9A91F28();
    (*(v22 + 8))(v18, v5);
    (*(v23 + 8))(v12, v24);
  }

  return v8;
}

void sub_1C9967AB8()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CE5A0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v23 = sub_1C97A2CEC(&qword_1EC3CE5A8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AC02C();
  v7 = *(*(v2 + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98550DC();
  sub_1C9971398();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2D8();
  (*(v7 + 16))(v4, v7);
  swift_getAssociatedConformanceWitness();
  sub_1C99B8818();
  v11 = sub_1C9871794();
  v12(v11);
  if (!v0)
  {
    sub_1C993EA08();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C979AF98;
    *(v13 + 24) = 0;
    *(v13 + 32) = xmmword_1C9AB9F10;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;

    v15 = sub_1C9813668();
    sub_1C97A2CEC(v15);
    sub_1C9971258();
    sub_1C996FE74(v16);
    sub_1C9A91F68();

    sub_1C9971134(&unk_1EC3CE5C0);
    sub_1C996FE10();
    sub_1C97AEB30();
    sub_1C9A920D8();

    v17 = sub_1C99715B0();
    v18(v17);
    sub_1C997133C(&unk_1EC3CE5D0);
    sub_1C9813A90();
    v19 = sub_1C9945F10();
    v20(v19, v23);
    v21 = sub_1C997121C();
    v22(v21, AssociatedTypeWitness);
  }

  sub_1C9971380();
  sub_1C97AEB5C();
}

uint64_t sub_1C9967FAC(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v34 = a4;
  v31 = a3;
  v10 = sub_1C97A2CEC(&qword_1EC3CE4B0);
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CE4B8);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CE4C0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  if (a1)
  {
  }

  else
  {
    v35 = a2;
    v29 = v17;
    v30 = v18;
    sub_1C97A2CEC(&unk_1EC3CE460);
    sub_1C996FE74(&unk_1EC3CE4C8);
    v28 = sub_1C9A91F28();
    v35 = v28;
    v36 = sub_1C996FABC;
    v37 = 0;
    v38 = sub_1C996FCDC;
    v26 = v13;
    v39 = v31;
    v40 = 1;

    sub_1C97A2CEC(&qword_1EC3CE4D0);
    sub_1C97A2CEC(&qword_1EC3CE4D8);
    v27 = v6;
    sub_1C996FE74(&unk_1EC3CE4E0);
    sub_1C9A91F38();

    sub_1C996FE74(&unk_1EC3CE4E8);
    sub_1C9A91F98();
    (*(v32 + 8))(v12, v10);
    sub_1C996FE74(&unk_1EC3CE4F0);
    v21 = v26;
    sub_1C9A92048();
    (*(v33 + 8))(v15, v21);
    sub_1C996FE74(&unk_1EC3CE4F8);
    v22 = v29;
    v23 = sub_1C9A91F28();
    (*(v30 + 8))(v20, v22);
    a6 = sub_1C9968E10(v23, v34);
  }

  return a6;
}

uint64_t sub_1C9968470(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v34 = a4;
  v31 = a3;
  v10 = sub_1C97A2CEC(&qword_1EC3CE4B0);
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CE4B8);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CE4C0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  if (a1)
  {
  }

  else
  {
    v35 = a2;
    v29 = v17;
    v30 = v18;
    sub_1C97A2CEC(&unk_1EC3CE460);
    sub_1C996FE74(&unk_1EC3CE4C8);
    v28 = sub_1C9A91F28();
    v35 = v28;
    v36 = sub_1C996FABC;
    v37 = 0;
    v38 = sub_1C9970F34;
    v26 = v13;
    v39 = v31;
    v40 = 1;

    sub_1C97A2CEC(&qword_1EC3CE4D0);
    sub_1C97A2CEC(&qword_1EC3CE4D8);
    v27 = v6;
    sub_1C996FE74(&unk_1EC3CE4E0);
    sub_1C9A91F38();

    sub_1C996FE74(&unk_1EC3CE4E8);
    sub_1C9A91F98();
    (*(v32 + 8))(v12, v10);
    sub_1C996FE74(&unk_1EC3CE4F0);
    v21 = v26;
    sub_1C9A92048();
    (*(v33 + 8))(v15, v21);
    sub_1C996FE74(&unk_1EC3CE4F8);
    v22 = v29;
    v23 = sub_1C9A91F28();
    (*(v30 + 8))(v20, v22);
    a6 = sub_1C9969570(v23, v34);
  }

  return a6;
}

uint64_t sub_1C9968934@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v4 = v3;
  if (*a1)
  {
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3CE460);
    sub_1C996FE74(&unk_1EC3CE4C8);
    sub_1C9A91F28();
    sub_1C9968A4C();
    a2 = v8;

    if (v4)
    {
      return result;
    }
  }

  *a3 = a2;
  return result;
}

void sub_1C9968A4C()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CE4B0);
  sub_1C97AE9C8();
  v13 = v0;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98021C4();
  v15 = sub_1C97A2CEC(&qword_1EC3CE4B8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C98550DC();
  v14 = sub_1C97A2CEC(&qword_1EC3CE4C0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();

  v4 = sub_1C98B7774();
  sub_1C97A2CEC(v4);
  sub_1C97A2CEC(&qword_1EC3CE4D8);
  sub_1C9971258();
  sub_1C996FE74(v5);
  sub_1C9A91F38();

  sub_1C996FE74(&unk_1EC3CE4E8);
  sub_1C9A91F98();
  v6 = sub_1C997121C();
  v7(v6, v13);
  sub_1C996FE74(&unk_1EC3CE4F0);
  sub_1C9A92048();
  v8 = sub_1C9945F10();
  v9(v8, v15);
  sub_1C99710C8();
  sub_1C996FE74(v10);
  sub_1C9A91F28();
  v11 = sub_1C9899528();
  v12(v11, v14);
  sub_1C9969CD0();

  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C9968E10(uint64_t a1, void *a2)
{
  v35 = a1;
  v4 = sub_1C97A2CEC(&unk_1EC3C9910);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v33 - v6);
  v8 = sub_1C9A91C28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C97A2CEC(&qword_1EC3CE500);
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v38 = v33 - v12;
  v42 = sub_1C97A2CEC(&qword_1EC3CE508);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v36 = v33 - v13;
  v45 = sub_1C97A2CEC(&qword_1EC3CE510);
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v37 = v33 - v14;
  v15 = sub_1C97A2CEC(&qword_1EC3CE518);
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v40 = v33 - v16;
  v17 = sub_1C97A2CEC(&unk_1EC3CE520);
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v44 = v33 - v18;
  v19 = sub_1C9966490(a2);
  if (!v2)
  {
    v50 = v35;
    v20 = *MEMORY[0x1E695BD20];
    v21 = *(v9 + 104);
    v33[1] = v19;
    v35 = 0;
    v21(v11, v20, v8);
    *v7 = sub_1C996A4D0;
    v7[1] = 0;
    (*(v5 + 104))(v7, *MEMORY[0x1E695BD48], v4);
    sub_1C97A2CEC(&qword_1EC3CB198);
    v34 = v17;
    sub_1C996FE74(&unk_1EC3CE530);
    v22 = v38;
    sub_1C9A92018();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    sub_1C996FE74(&unk_1EC3CE538);

    v23 = v36;
    v24 = v46;
    sub_1C9A92048();

    (*(v43 + 8))(v22, v24);
    v25 = v37;
    v26 = v42;
    sub_1C9A91CA8();
    (*(v39 + 8))(v23, v26);
    sub_1C996FE74(&unk_1EC3CE540);
    v27 = v40;
    v28 = v45;
    sub_1C9A920D8();
    (*(v41 + 8))(v25, v28);
    sub_1C996FE74(&unk_1EC3CE548);
    v29 = v44;
    v30 = v48;
    sub_1C9A91F68();
    (*(v47 + 8))(v27, v30);
    sub_1C996FE74(&unk_1EC3CE550);
    v31 = v34;
    v4 = sub_1C9A91F28();

    (*(v49 + 8))(v29, v31);
  }

  return v4;
}

uint64_t sub_1C9969570(uint64_t a1, void *a2)
{
  v35 = a1;
  v4 = sub_1C97A2CEC(&unk_1EC3C9910);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v33 - v6);
  v8 = sub_1C9A91C28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C97A2CEC(&qword_1EC3CE500);
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v38 = v33 - v12;
  v42 = sub_1C97A2CEC(&qword_1EC3CE508);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v36 = v33 - v13;
  v45 = sub_1C97A2CEC(&qword_1EC3CE510);
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v37 = v33 - v14;
  v15 = sub_1C97A2CEC(&qword_1EC3CE518);
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v40 = v33 - v16;
  v17 = sub_1C97A2CEC(&unk_1EC3CE520);
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v44 = v33 - v18;
  v19 = sub_1C9966490(a2);
  if (!v2)
  {
    v50 = v35;
    v20 = *MEMORY[0x1E695BD20];
    v21 = *(v9 + 104);
    v33[1] = v19;
    v35 = 0;
    v21(v11, v20, v8);
    *v7 = sub_1C996A4D0;
    v7[1] = 0;
    (*(v5 + 104))(v7, *MEMORY[0x1E695BD48], v4);
    sub_1C97A2CEC(&qword_1EC3CB198);
    v34 = v17;
    sub_1C996FE74(&unk_1EC3CE530);
    v22 = v38;
    sub_1C9A92018();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    sub_1C996FE74(&unk_1EC3CE538);

    v23 = v36;
    v24 = v46;
    sub_1C9A92048();

    (*(v43 + 8))(v22, v24);
    v25 = v37;
    v26 = v42;
    sub_1C9A91CA8();
    (*(v39 + 8))(v23, v26);
    sub_1C996FE74(&unk_1EC3CE540);
    v27 = v40;
    v28 = v45;
    sub_1C9A920D8();
    (*(v41 + 8))(v25, v28);
    sub_1C996FE74(&unk_1EC3CE548);
    v29 = v44;
    v30 = v48;
    sub_1C9A91F68();
    (*(v47 + 8))(v27, v30);
    sub_1C996FE74(&unk_1EC3CE550);
    v31 = v34;
    v4 = sub_1C9A91F28();

    (*(v49 + 8))(v29, v31);
  }

  return v4;
}

void sub_1C9969CD0()
{
  sub_1C97AEB94();
  v3 = v2;
  v5 = v4;
  v43 = sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97AE9C8();
  v41 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C9945F4C();
  v39 = sub_1C9A91C28();
  sub_1C97AE9C8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  v38 = v12 - v11;
  v42 = sub_1C97A2CEC(&qword_1EC3CE500);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  v40 = sub_1C97A2CEC(&qword_1EC3CE508);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CE510);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CE518);
  sub_1C97AE9C8();
  v44 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  sub_1C97A2CEC(&unk_1EC3CE520);
  sub_1C97AE9C8();
  v45 = v18;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97AC02C();
  v20 = *(*(v3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v23 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97E86E4();
  (*(v20 + 16))(v5, v20);
  sub_1C9871794();
  swift_getAssociatedConformanceWitness();
  sub_1C9871794();
  swift_getAssociatedConformanceWitness();
  sub_1C9966CB0();
  (*(v23 + 8))(v3, AssociatedTypeWitness);
  if (!v1)
  {
    (*(v9 + 104))(v38, *MEMORY[0x1E695BD20], v39);
    *v0 = sub_1C996A4D0;
    v0[1] = 0;
    (*(v41 + 104))(v0, *MEMORY[0x1E695BD48], v43);
    v25 = sub_1C9813668();
    sub_1C97A2CEC(v25);
    sub_1C97AE9EC();
    sub_1C99714C4();
    sub_1C996FE74(v26);
    sub_1C9A92018();
    (*(v41 + 8))(v0, v43);
    (*(v9 + 8))(v38, v39);
    sub_1C99712C0(&unk_1EC3CE538);

    sub_1C9A92048();

    v27 = sub_1C9945F10();
    v28(v27, v42);
    sub_1C9A91CA8();
    v29 = sub_1C997121C();
    v30(v29, v40);
    sub_1C99710C8();
    sub_1C996FE74(v31);
    sub_1C9A920D8();
    v32 = sub_1C9971360();
    v33(v32);
    sub_1C997133C(&unk_1EC3CE548);
    sub_1C9A91F68();
    v34 = sub_1C9945F10();
    v35(v34, v44);
    sub_1C9971134(&unk_1EC3CE550);
    sub_1C9A91F28();

    v36 = sub_1C9899528();
    v37(v36, v45);
  }

  sub_1C9971534();
  sub_1C97AEB5C();
}

uint64_t sub_1C996A45C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = a1[1];
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    sub_1C986EF8C();
    swift_allocError();
    *v6 = 5;
    return swift_willThrow();
  }
}

uint64_t sub_1C996A4D8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_1C986EF8C();
  sub_1C97AA928();
  result = swift_allocError();
  *a2 = result;
  *v5 = a1;
  return result;
}

void sub_1C996A51C(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C9961994(*a1, a1[1]);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1C996A62C()
{
  sub_1C97AA95C();
  v1 = v0[64];
  v0[59] = &unk_1F492E330;
  v0[60] = &off_1F492E6A0;
  sub_1C97A5A8C(v0 + 56, &unk_1F492E330);
  memcpy(v1, v0 + 2, 0xD1uLL);
  sub_1C97BE374();
  swift_storeEnumTagMultiPayload();
  sub_1C986EFE8((v0 + 2), (v0 + 29));
  sub_1C97DA8BC();
  sub_1C97DA928();
  v0[65] = v2;
  *v2 = v3;
  v2[1] = sub_1C996A70C;
  v4 = v0[64];
  v5 = v0[62];

  return v7(v5, v4);
}

uint64_t sub_1C996A70C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 528) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C996A808()
{
  sub_1C97AA95C();
  sub_1C9971298();
  sub_1C9971240();
  sub_1C996D8BC();
  sub_1C97A592C(v0 + 448);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C996A898()
{
  sub_1C97AA884();
  sub_1C9971298();
  sub_1C97A592C(v0 + 448);

  sub_1C97DA91C();

  return v1();
}

uint64_t AccessibilitySoundRecognition.Session.detectionResults.getter@<X0>(void (**a1)()@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for AccessibilitySoundRecognition.Session(0);
  v3 = v2 - 8;
  v23[1] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v25 = sub_1C97A2CEC(&unk_1EC3CE040);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C9945F6C();
  v24 = sub_1C97A2CEC(&qword_1EC3CC308);
  sub_1C97AE9C8();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v23[0] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98BBB18();
  v27 = *(v1 + *(v3 + 28));
  v11 = sub_1C988EB2C();
  v12 = sub_1C97A2CEC(v11);
  sub_1C97AE9EC();
  v14 = sub_1C996FE74(v13);
  MEMORY[0x1CCA8FD00](v12, v14);
  sub_1C996D918();
  swift_allocObject();
  sub_1C996D8BC();
  sub_1C996FE74(&unk_1EC3CE060);
  sub_1C9A93738();
  v15 = *(v6 + 32);
  v16 = v23[0];
  v17 = sub_1C9971360();
  v18 = v24;
  v15(v17);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  result = (v15)(v20 + v19, v16, v18);
  v22 = v26;
  *v26 = sub_1C996DA4C;
  v22[1] = v20;
  return result;
}

uint64_t sub_1C996AC2C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v5 = sub_1C9A91AA8();
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  *(v3 + 48) = swift_task_alloc();
  type metadata accessor for AccessibilitySoundRecognition.Session(0);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C996AD24, 0, 0);
}

uint64_t sub_1C996AD24()
{
  v22 = v0;
  if (qword_1EC3C57A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C9A91AD8();
  sub_1C97BFF6C(v1, qword_1EC3D3120);
  sub_1C9971240();
  sub_1C996D918();
  sub_1C9A91A98();
  v2 = sub_1C9A91AB8();
  v3 = sub_1C9A93088();
  if (sub_1C9A93238())
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 40);
    v20 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 67109378;
    *(v7 + 4) = v4;
    *(v7 + 8) = 2080;
    sub_1C9A91748();
    sub_1C9970F78();
    sub_1C996D568(v9);
    v10 = sub_1C9A93A98();
    v12 = v11;
    sub_1C9971270();
    v13 = sub_1C9849140(v10, v12, &v21);

    *(v7 + 10) = v13;
    v14 = sub_1C9A91A88();
    _os_signpost_emit_with_name_impl(&dword_1C9788000, v2, v3, v14, "ClientReadResult_AccessibilitySoundRecognition", "{active:%{BOOL}d,workloadID:%s}", v7, 0x12u);
    sub_1C97A592C(v8);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();

    (*(v6 + 8))(v5, v20);
  }

  else
  {
    v15 = *(v0 + 48);
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);

    (*(v17 + 8))(v15, v16);
    sub_1C9971270();
  }

  **(v0 + 16) = *(v0 + 64);

  sub_1C97DA91C();

  return v18();
}

uint64_t sub_1C996AF90()
{
  sub_1C99DC5A4();
  v2 = sub_1C98EE70C();
  v3 = *(v0 + *(type metadata accessor for AccessibilitySoundRecognition.Session(v2) + 20));
  v7 = sub_1C97A2CEC(&unk_1EC3CE050);
  v8 = sub_1C9970068();
  v6[0] = v3;

  sub_1C99DC674(v6);
  if (!v1)
  {
    sub_1C97A592C(v6);
    v7 = sub_1C9A91748();
    v8 = &off_1F494ACE0;
    sub_1C981CDF0(v6);
    sub_1C97AEB3C();
    sub_1C99715C8();
    v4();
    sub_1C99DC674(v6);
  }

  return sub_1C97A592C(v6);
}

uint64_t sub_1C996B090()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1C9A91748();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1C996B188;

  return sub_1C988FC80();
}

uint64_t sub_1C996B188(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[8] = a1;
  v5[9] = v1;

  if (v1)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = sub_1C97DA8BC();
    v5[10] = v12;
    *v12 = v7;
    v12[1] = sub_1C996B300;

    return v14();
  }
}

uint64_t sub_1C996B300()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C996B404()
{
  sub_1C97AA95C();
  v1 = v0[11];
  v2 = v0[2];
  *(v2 + *(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)) = v1;
  sub_1C97DA8BC();
  sub_1C97DA928();
  v0[13] = v3;
  *v3 = v4;
  v3[1] = sub_1C98F8244;
  v5 = v0[6];

  return v7(v5);
}

uint64_t sub_1C996B4CC()
{
  sub_1C97AA884();
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;

  return sub_1C996B090();
}

void *sub_1C996B564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SafeLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v7 + 16) = v8;
  v3[2] = v7;
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = a2;
  return v3;
}

void sub_1C996B5D4(uint64_t a1)
{
  v3 = *(v1[2] + 16);
  os_unfair_lock_lock(v3);
  sub_1C996B650(v1, a1);

  os_unfair_lock_unlock(v3);
}

void sub_1C996B650(void *a1, uint64_t a2)
{

  v7 = (a1 + 4);
  sub_1C98CFC90(a2);
  v8 = a1[3];
  v9 = *(a1[4] + 16);
  if (v8 >= v9)
  {
    goto LABEL_14;
  }

  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    goto LABEL_17;
  }

  if (v9 < v10)
  {
    goto LABEL_18;
  }

  v7 = sub_1C97AE9C4(v10);
  v2 = v11;
  v3 = v12;
  v4 = v13;
  if (v13)
  {
    sub_1C9A93B88();
    swift_unknownObjectRetain_n();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = MEMORY[0x1E69E7CC0];
    }

    v16 = *(v15 + 16);

    if (__OFSUB__(v4 >> 1, v3))
    {
      goto LABEL_19;
    }

    if (v16 != (v4 >> 1) - v3)
    {
      goto LABEL_20;
    }

    v2 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v2)
    {
      goto LABEL_13;
    }

    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  while (1)
  {
    sub_1C9A0EFC0(v7, v2, v3, v4);
    v2 = v14;
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    a1[4] = v2;

LABEL_14:
    v17 = *(a2 + 16);
    v18 = a1[5];
    v19 = __OFADD__(v18, v17);
    v20 = v18 + v17;
    if (!v19)
    {
      break;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_unknownObjectRelease();
  }

  a1[5] = v20;
}

uint64_t sub_1C996B7B8(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v5);
  v6 = sub_1C996B850(v2, a1, a2);
  os_unfair_lock_unlock(v5);
  return v6;
}

uint64_t sub_1C996B850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = *(a1 + 40) - v9;
  v11 = a2 - v10;
  v12 = a3 + a2 - v10;
  v13 = (a2 - v10) & ~((a2 - v10) >> 63);
  if (v9 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v8 + 16);
  }

  v15 = v12 & ~(v12 >> 63);
  if (v9 >= v15)
  {
    v16 = v12 & ~(v12 >> 63);
  }

  else
  {
    v16 = *(v8 + 16);
  }

  v17 = v14 - v11;
  if (__OFSUB__(v14, v11))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(v12, v16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < v14)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = sub_1C97AE9C4(v14);
  v4 = v18;
  v5 = v19;
  v6 = v20;
  if ((v20 & 1) == 0)
  {
LABEL_11:
    sub_1C9A0EFC0(v3, v4, v5, v6);
LABEL_17:
    swift_unknownObjectRelease();
    return v17;
  }

  sub_1C9A93B88();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v6 >> 1, v5))
  {
    goto LABEL_22;
  }

  if (v22 != (v6 >> 1) - v5)
  {
LABEL_23:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v23)
  {
    goto LABEL_17;
  }

  return v17;
}

void *sub_1C996B9B4()
{
  v0 = sub_1C996BA30();
  v2 = *(v1 + 16);

  v4 = __OFSUB__(v0, v2);
  v5 = v0 - v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3CE580);
    swift_allocObject();

    return sub_1C996BAD4(v6, v5);
  }

  return result;
}

uint64_t sub_1C996BA30()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 40);

  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1C996BA80()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v1);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock(v1);
}

void *sub_1C996BAD4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  type metadata accessor for SafeLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *v4 = 0;
  *(v3 + 16) = v4;
  v2[2] = v3;
  return v2;
}

uint64_t sub_1C996BB28(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v4);
  v5 = sub_1C996B7B8(*(v1 + 32), a1);
  *(v2 + 32) += a1;
  os_unfair_lock_unlock(v4);
  return v5;
}

uint64_t sub_1C996BBA8()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 32);
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_1C996BBE4()
{
  v0 = sub_1C996BA30();

  v1 = sub_1C996BBA8();
  v2 = __OFSUB__(v0, v1);
  result = v0 - v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C996BC34(uint64_t a1, uint64_t a2)
{
  sub_1C97A2CEC(&qword_1EC3C7808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1C996B5D4(inited);
  swift_setDeallocating();
  return sub_1C985DA4C();
}

void sub_1C996BCE8(uint64_t a1@<X8>)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CE588);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - v4;
  v6 = sub_1C996BBE4();
  v7 = sub_1C996BB28(v6);
  if (v7 < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  v12 = v9;
  v34 = v3;
  v35 = a1;
  v13 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C97B7D40(0, v7, 0);
    v14 = v38;
    v15 = *(v38 + 16);
    v16 = 16 * v15 + 32;
    do
    {
      v38 = v14;
      v17 = *(v14 + 24);
      v18 = v15 + 1;
      if (v15 >= v17 >> 1)
      {
        sub_1C97B7D40(v17 > 1, v15 + 1, 1);
        v14 = v38;
      }

      *(v14 + 16) = v18;
      v19 = (v14 + v16);
      *v19 = 0;
      v19[1] = 0;
      v16 += 16;
      v15 = v18;
      --v10;
    }

    while (v10);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v11 + 16);
  if (v20)
  {
    v33 = v2;
    v38 = v13;
    sub_1C97B7D40(0, v20, 0);
    v21 = 32;
    v22 = v38;
    do
    {
      v36 = *(v11 + v21);
      v38 = v22;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);

      if (v24 >= v23 >> 1)
      {
        sub_1C97B7D40(v23 > 1, v24 + 1, 1);
        v22 = v38;
      }

      *(v22 + 16) = v24 + 1;
      *(v22 + 16 * v24 + 32) = v36;
      v21 += 16;
      --v20;
    }

    while (v20);

    v2 = v33;
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v38 = v14;
  sub_1C98CFD3C(v22);
  if (v12 < 0)
  {
    goto LABEL_24;
  }

  v25 = v38;
  v26 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C97B7D40(0, v12, 0);
    v26 = v38;
    v27 = *(v38 + 16);
    v28 = 16 * v27 + 32;
    do
    {
      v38 = v26;
      v29 = *(v26 + 24);
      v30 = v27 + 1;
      if (v27 >= v29 >> 1)
      {
        sub_1C97B7D40(v29 > 1, v27 + 1, 1);
        v26 = v38;
      }

      *(v26 + 16) = v30;
      v31 = (v26 + v28);
      *v31 = 0;
      v31[1] = 0;
      v28 += 16;
      v27 = v30;
      --v12;
    }

    while (v12);
  }

  v37 = v25;
  sub_1C98CFD3C(v26);
  sub_1C98CFD3C(&unk_1F492AEB0);
  v38 = v37;
  sub_1C97A2CEC(&qword_1EC3CE590);
  sub_1C996FE74(&unk_1EC3CE598);
  sub_1C9A92658();

  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  (*(v34 + 8))(v5, v2);
}

unint64_t sub_1C996C0E4()
{
  result = qword_1EC3CDE20;
  if (!qword_1EC3CDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE20);
  }

  return result;
}

unint64_t sub_1C996C138()
{
  result = qword_1EC3CDE28;
  if (!qword_1EC3CDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE28);
  }

  return result;
}

unint64_t sub_1C996C18C()
{
  result = qword_1EC3CDE30;
  if (!qword_1EC3CDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE30);
  }

  return result;
}

unint64_t sub_1C996C1E0()
{
  result = qword_1EC3CDE38;
  if (!qword_1EC3CDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE38);
  }

  return result;
}

unint64_t sub_1C996C234()
{
  result = qword_1EC3CDE40;
  if (!qword_1EC3CDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE40);
  }

  return result;
}

unint64_t sub_1C996C288()
{
  result = qword_1EC3CDE48;
  if (!qword_1EC3CDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE48);
  }

  return result;
}

unint64_t sub_1C996C2DC()
{
  result = qword_1EC3CDE50;
  if (!qword_1EC3CDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE50);
  }

  return result;
}

unint64_t sub_1C996C330()
{
  result = qword_1EC3CDE58;
  if (!qword_1EC3CDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE58);
  }

  return result;
}

unint64_t sub_1C996C384()
{
  result = qword_1EC3CDE60;
  if (!qword_1EC3CDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE60);
  }

  return result;
}

unint64_t sub_1C996C3D8()
{
  result = qword_1EC3CDE68;
  if (!qword_1EC3CDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE68);
  }

  return result;
}

unint64_t sub_1C996C42C()
{
  result = qword_1EC3CDE70;
  if (!qword_1EC3CDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE70);
  }

  return result;
}

unint64_t sub_1C996C480()
{
  result = qword_1EC3CDE78;
  if (!qword_1EC3CDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE78);
  }

  return result;
}

unint64_t sub_1C996C4D4()
{
  result = qword_1EC3CDE80;
  if (!qword_1EC3CDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE80);
  }

  return result;
}

unint64_t sub_1C996C528()
{
  result = qword_1EC3CDE88;
  if (!qword_1EC3CDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE88);
  }

  return result;
}

unint64_t sub_1C996C57C()
{
  result = qword_1EC3CDE90;
  if (!qword_1EC3CDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE90);
  }

  return result;
}

unint64_t sub_1C996C5D0()
{
  result = qword_1EC3CDE98;
  if (!qword_1EC3CDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE98);
  }

  return result;
}

unint64_t sub_1C996C624()
{
  result = qword_1EC3CDEA0;
  if (!qword_1EC3CDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDEA0);
  }

  return result;
}

unint64_t sub_1C996C678()
{
  result = qword_1EC3CDEA8;
  if (!qword_1EC3CDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDEA8);
  }

  return result;
}

uint64_t sub_1C996C6CC(char a1, uint64_t *a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1 & 1;
  v16 = a1 & 1;
  v10 = *a2;
  v11 = *(a2 + 8);
  result = a3(&v16);
  if (v11 == (result & 1))
  {
    *a2 = 0;
    goto LABEL_11;
  }

  v13 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    if (v11)
    {
      v14 = a5;
    }

    else
    {
      v14 = a6;
    }

    if (v14 < v13)
    {
      *a2 = 0;
      *(a2 + 8) = v11 ^ 1;
      if ((v11 & 1) == 0)
      {
LABEL_8:
        v15 = 0;
        return v15 | v9;
      }

LABEL_12:
      v15 = 256;
      return v15 | v9;
    }

    *a2 = v13;
LABEL_11:
    *(a2 + 8) = v11;
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1C996C7BC(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 25);
  v11 = v10 | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  switch((v10 >> 20) & 0xF)
  {
    case 1uLL:
      sub_1C99FEAF0();
      break;
    case 2uLL:
      sub_1C996C9D4(v6, v7, v8, v9 & 1, a2, a3);
      break;
    case 3uLL:
      sub_1C99FF4B4();
      break;
    case 4uLL:
      sub_1C99FF6F4();
      break;
    case 5uLL:
      sub_1C99FF910();
      break;
    case 6uLL:
      sub_1C99FFF9C();
      break;
    case 7uLL:
      sub_1C9A00214();
      break;
    case 8uLL:
      v15 = v9 | (v11 << 8);
      v16 = v8 | v7;
      if (!v14 && (v15 == 0x80000000 ? (v17 = (v16 | v6 | v12 | v13) == 0) : (v17 = 0), v17))
      {
        sub_1C99FD7F4();
      }

      else
      {
        v18 = v16 | v12 | v13;
        if (!v14 && (v15 == 0x80000000 ? (v19 = v6 == 1) : (v19 = 0), v19 ? (v20 = v18 == 0) : (v20 = 0), v20))
        {
          sub_1C99FDB44();
        }

        else if (!v14 && (v15 == 0x80000000 ? (v21 = v6 == 2) : (v21 = 0), v21 ? (v22 = v18 == 0) : (v22 = 0), v22))
        {
          sub_1C99FE3BC();
        }

        else if (!v14 && (v15 == 0x80000000 ? (v23 = v6 == 3) : (v23 = 0), v23 ? (v24 = v18 == 0) : (v24 = 0), v24))
        {
          sub_1C99FE5E8();
        }

        else if (!v14 && (v15 == 0x80000000 ? (v25 = v6 == 4) : (v25 = 0), v25 ? (v26 = v18 == 0) : (v26 = 0), v26))
        {
          sub_1C99FE824();
        }

        else if (!v14 && (v15 == 0x80000000 ? (v27 = v6 == 5) : (v27 = 0), v27 ? (v28 = v18 == 0) : (v28 = 0), v28))
        {
          sub_1C99FDD80();
        }

        else
        {
          sub_1C99FFB50();
        }
      }

      break;
    default:
      sub_1C99FDFE4();
      break;
  }
}

uint64_t sub_1C996C9D4(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, int a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v77 = a2;
  v78 = a6;
  v61 = a5;
  LODWORD(v76) = a4;
  v68 = a3;
  v66 = sub_1C97A2CEC(&qword_1EC3CE380);
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = v59 - v7;
  v67 = sub_1C97A2CEC(&qword_1EC3CE388);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = v59 - v8;
  v71 = sub_1C97A2CEC(&qword_1EC3CE390);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v59 - v9;
  v10 = sub_1C97A2CEC(&qword_1EC3CE398);
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v69 = v59 - v11;
  v12 = sub_1C97A2CEC(&unk_1EC3CE3A0);
  v13 = *(v12 - 8);
  v72 = v12;
  v73 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v59 - v14;
  v16 = sub_1C9A91408();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C9A91558();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v59 - v25;
  v79 = a1;
  v80 = v77;
  (*(v17 + 104))(v19, *MEMORY[0x1E6968F70], v16);
  sub_1C98449A8();
  v27 = v78;
  sub_1C9A91538();
  (*(v17 + 8))(v19, v16);
  v28 = v81;
  v29 = sub_1C9880658();
  if (v28)
  {
    (*(v21 + 8))(v26, v20);
  }

  else
  {
    v30 = v29;
    v81 = v15;
    type metadata accessor for E5RTExecutionStream();
    swift_allocObject();
    v31 = sub_1C9880798(v30);
    type metadata accessor for E5RTExecutionStreamOperation();
    sub_1C9A913F8();
    sub_1C9A91508();
    v32 = v24;
    v33 = *(v21 + 8);
    v33(v32, v20);
    sub_1C98817E8();
    v35 = v34;

    sub_1C9882AF4(v35);
    sub_1C9880DE8();
    v78 = v31;
    v79 = v61;
    v77 = v26;
    sub_1C97A2CEC(&unk_1EC3CC2B0);
    v60 = v20;
    v61 = v33;
    v76 = v21 + 8;
    v59[1] = sub_1C97A2CEC(&qword_1EC3C6330);
    sub_1C996FE74(&unk_1EC3C9B50);
    v37 = v62;
    sub_1C9A92048();
    sub_1C97A2CEC(&unk_1EC3CE3B0);
    v38 = v63;
    v39 = v66;
    sub_1C9A91C98();
    (*(v64 + 8))(v37, v39);
    sub_1C97A2CEC(qword_1EC3C9850);
    v40 = v35;
    v41 = v70;
    v42 = v67;
    sub_1C9A91C98();
    (*(v65 + 8))(v38, v42);
    v43 = swift_allocObject();
    v44 = v78;
    *(v43 + 16) = v78;
    *(v43 + 24) = v40;
    v45 = swift_allocObject();
    v46 = v68;
    *(v45 + 16) = v68;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1C9875D04;
    *(v47 + 24) = v45;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1C9875D20;
    *(v48 + 24) = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1C9875CE8;
    *(v49 + 24) = v43;
    v50 = swift_allocObject();
    v50[2] = sub_1C9A01F34;
    v50[3] = 0;
    v50[4] = sub_1C9875D58;
    v50[5] = v49;
    v50[6] = sub_1C9875D3C;
    v50[7] = v48;
    v51 = swift_allocObject();
    *(v51 + 2) = v44;
    *(v51 + 3) = v40;
    *(v51 + 4) = v46;
    v52 = v71;
    v53 = (v41 + *(v71 + 52));
    *v53 = sub_1C9875D98;
    v53[1] = v51;
    v54 = (v41 + *(v52 + 56));
    *v54 = sub_1C9875D74;
    v54[1] = v50;
    sub_1C996FE74(&unk_1EC3CE3C0);
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v55 = v69;
    sub_1C9A91F68();
    sub_1C97DA1E0(v41, &qword_1EC3CE390);
    v56 = v81;
    v57 = v75;
    sub_1C9A91C48();
    (*(v74 + 8))(v55, v57);
    sub_1C996FE74(&unk_1EC3CE3C8);
    v58 = v72;
    v27 = sub_1C9A91F28();

    (*(v73 + 8))(v56, v58);
    v61(v77, v60);
  }

  return v27;
}

unint64_t sub_1C996D418()
{
  result = qword_1EC3CDF68;
  if (!qword_1EC3CDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDF68);
  }

  return result;
}

unint64_t sub_1C996D46C()
{
  result = qword_1EC3CDF70;
  if (!qword_1EC3CDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDF70);
  }

  return result;
}

unint64_t sub_1C996D4C0()
{
  result = qword_1EC3CDF80;
  if (!qword_1EC3CDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDF80);
  }

  return result;
}

unint64_t sub_1C996D514()
{
  result = qword_1EC3CDF88;
  if (!qword_1EC3CDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDF88);
  }

  return result;
}

unint64_t sub_1C996D568(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C996D5AC()
{
  result = qword_1EC3CDFB8;
  if (!qword_1EC3CDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDFB8);
  }

  return result;
}

unint64_t sub_1C996D600()
{
  result = qword_1EC3CDFD8;
  if (!qword_1EC3CDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDFD8);
  }

  return result;
}

unint64_t sub_1C996D654()
{
  result = qword_1EC3CDFE0;
  if (!qword_1EC3CDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDFE0);
  }

  return result;
}

unint64_t sub_1C996D6A8()
{
  result = qword_1EC3CDFE8;
  if (!qword_1EC3CDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDFE8);
  }

  return result;
}

unint64_t sub_1C996D748()
{
  result = qword_1EC3CE020;
  if (!qword_1EC3CE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE020);
  }

  return result;
}

unint64_t sub_1C996D79C()
{
  result = qword_1EC3CE028;
  if (!qword_1EC3CE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE028);
  }

  return result;
}

unint64_t sub_1C996D7F0()
{
  result = qword_1EC3CE038;
  if (!qword_1EC3CE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE038);
  }

  return result;
}

uint64_t sub_1C996D864(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C996D8BC()
{
  sub_1C98AE1E8();
  v2(0);
  sub_1C97DA940();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C996D918()
{
  sub_1C98AE1E8();
  v2(0);
  sub_1C97DA940();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C996D974()
{
  sub_1C97AA95C();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for AccessibilitySoundRecognition.Session(0);
  sub_1C97DACE4(v6);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  swift_task_alloc();
  sub_1C97DA928();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C97D9C3C;

  return sub_1C996AC2C(v5, v3, v0 + v8);
}

void sub_1C996DA4C()
{
  v0 = sub_1C97A2CEC(&qword_1EC3CC308);
  sub_1C97DACE4(v0);

  sub_1C98F98D0();
}

unint64_t sub_1C996DB0C()
{
  result = qword_1EC3CE078;
  if (!qword_1EC3CE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE078);
  }

  return result;
}

unint64_t sub_1C996DBAC()
{
  result = qword_1EC3CE088;
  if (!qword_1EC3CE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE088);
  }

  return result;
}

unint64_t sub_1C996DC04()
{
  result = qword_1EC3CE090;
  if (!qword_1EC3CE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE090);
  }

  return result;
}

unint64_t sub_1C996DC58(uint64_t a1)
{
  result = sub_1C98DDEC4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C996DC80(uint64_t a1)
{
  result = sub_1C98DDE70();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C996DCC8()
{
  result = sub_1C9A91748();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C996DD90()
{
  sub_1C9A91748();
  if (v0 <= 0x3F)
  {
    sub_1C996DE14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C996DE14()
{
  if (!qword_1EC3CE0C8)
  {
    sub_1C97AA4F0(&unk_1EC3CA040);
    v0 = sub_1C9A91DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3CE0C8);
    }
  }
}

uint64_t sub_1C996DEBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
  }

  if (a2 >= 0xFF && *(a1 + 209))
  {
    return sub_1C97BE3EC(*a1 + 254);
  }

  v3 = *(a1 + 208);
  if (v3 > 1)
  {
    return sub_1C97BE3EC(v3 ^ 0xFF);
  }

  else
  {
    return sub_1C97BE3EC(-1);
  }
}

uint64_t sub_1C996DEF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 208) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C996DF98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 208))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C996DFD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C996E064(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C996E0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1C996E184(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C97BE280(result, a2 + 16);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C996E370()
{
  result = qword_1EC3CE0D8;
  if (!qword_1EC3CE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0D8);
  }

  return result;
}

unint64_t sub_1C996E3C8()
{
  result = qword_1EC3CE0E0;
  if (!qword_1EC3CE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0E0);
  }

  return result;
}

unint64_t sub_1C996E420()
{
  result = qword_1EC3CE0E8;
  if (!qword_1EC3CE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0E8);
  }

  return result;
}

unint64_t sub_1C996E478()
{
  result = qword_1EC3CE0F0;
  if (!qword_1EC3CE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0F0);
  }

  return result;
}

unint64_t sub_1C996E4D0()
{
  result = qword_1EC3CE0F8;
  if (!qword_1EC3CE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0F8);
  }

  return result;
}

unint64_t sub_1C996E524(uint64_t a1)
{
  result = sub_1C98DDCC8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C996E54C(uint64_t a1)
{
  result = sub_1C98DDC18();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C996E578()
{
  result = qword_1EC3CE100;
  if (!qword_1EC3CE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE100);
  }

  return result;
}

unint64_t sub_1C996E5D0()
{
  result = qword_1EC3CE108;
  if (!qword_1EC3CE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE108);
  }

  return result;
}

unint64_t sub_1C996E628()
{
  result = qword_1EC3CE110;
  if (!qword_1EC3CE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE110);
  }

  return result;
}

uint64_t sub_1C996E67C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C996E6C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C996E704()
{
  result = qword_1EC3CE120;
  if (!qword_1EC3CE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE120);
  }

  return result;
}

unint64_t sub_1C996E75C()
{
  result = qword_1EC3CE128;
  if (!qword_1EC3CE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE128);
  }

  return result;
}

unint64_t sub_1C996E7B4()
{
  result = qword_1EC3CE130;
  if (!qword_1EC3CE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE130);
  }

  return result;
}

unint64_t sub_1C996E80C()
{
  result = qword_1EC3CE138;
  if (!qword_1EC3CE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE138);
  }

  return result;
}

unint64_t sub_1C996E864()
{
  result = qword_1EC3CE140;
  if (!qword_1EC3CE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE140);
  }

  return result;
}

unint64_t sub_1C996E8BC()
{
  result = qword_1EC3CE148;
  if (!qword_1EC3CE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE148);
  }

  return result;
}

unint64_t sub_1C996E914()
{
  result = qword_1EC3CE150;
  if (!qword_1EC3CE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE150);
  }

  return result;
}

unint64_t sub_1C996E96C()
{
  result = qword_1EC3CE158;
  if (!qword_1EC3CE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE158);
  }

  return result;
}

unint64_t sub_1C996E9C4()
{
  result = qword_1EC3CE160;
  if (!qword_1EC3CE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE160);
  }

  return result;
}

unint64_t sub_1C996EA1C()
{
  result = qword_1EC3CE168;
  if (!qword_1EC3CE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE168);
  }

  return result;
}

unint64_t sub_1C996EA74()
{
  result = qword_1EC3CE170;
  if (!qword_1EC3CE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE170);
  }

  return result;
}