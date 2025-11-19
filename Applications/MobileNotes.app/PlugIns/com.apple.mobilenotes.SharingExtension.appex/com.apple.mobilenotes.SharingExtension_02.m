uint64_t sub_10004CB90(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return 0x10002u >> (8 * a1);
  }

  if (qword_100106A28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000B5530();
  sub_100036380(v2, qword_100106FB8);
  v3 = sub_1000B5520();
  v4 = sub_1000B5930();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown preferred background color — returning nil", v5, 2u);
  }

  return 2;
}

uint64_t sub_10004CC90(uint64_t result)
{
  if (result >= 3u)
  {
    if (qword_100106A28 != -1)
    {
      swift_once();
    }

    v1 = sub_1000B5530();
    sub_100036380(v1, qword_100106FB8);
    v2 = sub_1000B5520();
    v3 = sub_1000B5930();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unknown attachment view type — returning default", v4, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ICNoteArchiveModel()
{
  result = qword_100107070;
  if (!qword_100107070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004CDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004CE8C(uint64_t a1, char a2, uint64_t *a3)
{
  v70 = a3;
  v5 = sub_1000B4F00();
  v63 = *(v5 - 8);
  v6 = v63[8];
  __chkstk_darwin(v5);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030480(&qword_100106AF0, &qword_1000CAE60);
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v68 = &v59 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return result;
  }

  v14 = v68;
  v15 = (v68 + *(result + 48));
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v65 = *(v11 + 72);
  v60 = v16;
  sub_100030C74(a1 + v16, v68, &qword_100106AF0, &qword_1000CAE60);
  v17 = v63[4];
  v18 = v69;
  v66 = (v63 + 4);
  v67 = v5;
  v17(v69, v14, v5);
  v64 = v15;
  v19 = *v15;
  v20 = v15[1];
  v21 = *v70;
  v23 = sub_100063284(v18);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_24;
  }

  LOBYTE(v18) = v22;
  v27 = v21[3];
  v61 = v19;
  if (v27 >= v26)
  {
    v19 = v66;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v32 = v20;
    while (1)
    {
LABEL_8:
      v20 = v19 - 3;
      v33 = *v70;
      if (v18)
      {
        v18 = v67;
        (*v20)(v69, v67);
        v34 = (v33[7] + 16 * v23);
        v35 = v34[1];
        *v34 = v61;
        v34[1] = v32;

        v36 = v13 - 1;
        if (v13 == 1)
        {
          return result;
        }
      }

      else
      {
        v33[(v23 >> 6) + 8] |= 1 << v23;
        v18 = v67;
        result = (v17)(v33[6] + v63[9] * v23, v69, v67);
        v37 = (v33[7] + 16 * v23);
        *v37 = v61;
        v37[1] = v32;
        v38 = v33[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_25;
        }

        v33[2] = v40;
        v36 = v13 - 1;
        if (v13 == 1)
        {
          return result;
        }
      }

      v13 = a1 + v65 + v60;
      v62 = (v19 - 3);
      while (1)
      {
        v43 = v68;
        sub_100030C74(v13, v68, &qword_100106AF0, &qword_1000CAE60);
        v20 = *v19;
        v44 = v69;
        (*v19)(v69, v43, v18);
        a1 = *v64;
        v17 = v64[1];
        v45 = *v70;
        v23 = sub_100063284(v44);
        v47 = v45[2];
        v48 = (v46 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          break;
        }

        v50 = v46;
        if (v45[3] < v49)
        {
          v51 = v70;
          sub_1000648BC(v49, 1);
          v52 = *v51;
          v53 = sub_100063284(v69);
          if ((v50 & 1) != (v54 & 1))
          {
            goto LABEL_27;
          }

          v23 = v53;
        }

        v55 = *v70;
        if (v50)
        {
          v18 = v67;
          (*v62)(v69, v67);
          v41 = (v55[7] + 16 * v23);
          v42 = v41[1];
          *v41 = a1;
          v41[1] = v17;

          v19 = v66;
        }

        else
        {
          v55[(v23 >> 6) + 8] |= 1 << v23;
          v19 = v66;
          v18 = v67;
          result = (v20)(v55[6] + v63[9] * v23, v69, v67);
          v56 = (v55[7] + 16 * v23);
          *v56 = a1;
          v56[1] = v17;
          v57 = v55[2];
          v39 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v39)
          {
            goto LABEL_25;
          }

          v55[2] = v58;
        }

        v13 += v65;
        if (!--v36)
        {
          return result;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v32 = v20;
      sub_10005C648();
    }
  }

  v28 = v70;
  sub_1000648BC(v26, a2 & 1);
  v29 = *v28;
  v30 = sub_100063284(v69);
  if ((v18 & 1) == (v31 & 1))
  {
    v23 = v30;
    v32 = v20;
    v19 = v66;
    goto LABEL_8;
  }

LABEL_27:
  result = sub_1000B5F50();
  __break(1u);
  return result;
}

uint64_t sub_10004D334(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000449D4(a1, a2);
  }

  return a1;
}

uint64_t sub_10004D348(uint64_t a1, uint64_t a2)
{
  v4 = _s8ActivityVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D464()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D4B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10004D4DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004D4F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100030480(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004D570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004D640(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10004D6F0()
{
  sub_10004D9AC(319, &qword_100106CA0);
  if (v0 <= 0x3F)
  {
    sub_10004D9AC(319, &qword_100107080);
    if (v1 <= 0x3F)
    {
      sub_10004D954();
      if (v2 <= 0x3F)
      {
        sub_10004D9AC(319, &qword_100107090);
        if (v3 <= 0x3F)
        {
          sub_10004D9AC(319, &qword_100107098);
          if (v4 <= 0x3F)
          {
            sub_10004D9AC(319, &qword_1001070A0);
            if (v5 <= 0x3F)
            {
              sub_10004D9AC(319, &qword_1001070A8);
              if (v6 <= 0x3F)
              {
                sub_10004D9AC(319, &qword_1001070B0);
                if (v7 <= 0x3F)
                {
                  sub_10004D9F8(319, &qword_1001070B8, &qword_1001070C0, &qword_1000CAEA8);
                  if (v8 <= 0x3F)
                  {
                    sub_10004D9F8(319, &qword_1001070C8, &qword_1001070D0, &qword_1000CAEB0);
                    if (v9 <= 0x3F)
                    {
                      sub_10004D9F8(319, &qword_1001070D8, &unk_1001070E0, &qword_1000CAEB8);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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
  }
}

void sub_10004D954()
{
  if (!qword_100107088)
  {
    sub_1000B4EA0();
    v0 = sub_1000B5AC0();
    if (!v1)
    {
      atomic_store(v0, &qword_100107088);
    }
  }
}

void sub_10004D9AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000B5AC0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10004D9F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10003052C(a3, a4);
    v5 = sub_1000B5AC0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ICMarkdownFlavor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICMarkdownFlavor(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICNoteArchiveModel.Backgrounds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICNoteArchiveModel.Backgrounds(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICNoteArchiveModel.PaperStyles(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ICNoteArchiveModel.PaperStyles(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10004DE4C()
{
  result = qword_100107170;
  if (!qword_100107170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107170);
  }

  return result;
}

unint64_t sub_10004DED4()
{
  result = qword_100107188;
  if (!qword_100107188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107188);
  }

  return result;
}

unint64_t sub_10004DF2C()
{
  result = qword_100107190;
  if (!qword_100107190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107190);
  }

  return result;
}

unint64_t sub_10004DFB4()
{
  result = qword_1001071A8;
  if (!qword_1001071A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001071A8);
  }

  return result;
}

unint64_t sub_10004E00C()
{
  result = qword_1001071B0;
  if (!qword_1001071B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001071B0);
  }

  return result;
}

uint64_t sub_10004E090(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004E0E8()
{
  result = qword_1001071C8;
  if (!qword_1001071C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001071C8);
  }

  return result;
}

uint64_t sub_10004E13C(uint64_t a1)
{
  *(a1 + 8) = sub_10004E6EC(&qword_100106F30, type metadata accessor for ICNoteArchiveModel);
  result = sub_10004E6EC(&qword_100107208, type metadata accessor for ICNoteArchiveModel);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10004E1C0()
{
  result = qword_100107218;
  if (!qword_100107218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107218);
  }

  return result;
}

unint64_t sub_10004E214()
{
  result = qword_100107220;
  if (!qword_100107220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107220);
  }

  return result;
}

unint64_t sub_10004E268()
{
  result = qword_100107230;
  if (!qword_100107230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107230);
  }

  return result;
}

unint64_t sub_10004E2BC()
{
  result = qword_100107238;
  if (!qword_100107238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107238);
  }

  return result;
}

unint64_t sub_10004E310()
{
  result = qword_100107240;
  if (!qword_100107240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107240);
  }

  return result;
}

unint64_t sub_10004E364()
{
  result = qword_100107248;
  if (!qword_100107248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107248);
  }

  return result;
}

unint64_t sub_10004E3B8()
{
  result = qword_100107250;
  if (!qword_100107250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107250);
  }

  return result;
}

unint64_t sub_10004E40C()
{
  result = qword_100107278;
  if (!qword_100107278)
  {
    sub_10003052C(&unk_1001070E0, &qword_1000CAEB8);
    sub_10004E6EC(&qword_100107260, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107278);
  }

  return result;
}

uint64_t sub_10004E4C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10004E50C()
{
  result = qword_100107290;
  if (!qword_100107290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107290);
  }

  return result;
}

unint64_t sub_10004E560()
{
  result = qword_100107298;
  if (!qword_100107298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107298);
  }

  return result;
}

uint64_t sub_10004E5B4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_1001070C0, &qword_1000CAEA8);
    sub_10004E6EC(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004E650(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_1001070D0, &qword_1000CAEB0);
    sub_10004E6EC(a2, _s8ActivityVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004E6EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004E734()
{
  result = qword_1001072C0;
  if (!qword_1001072C0)
  {
    sub_10003052C(&unk_1001070E0, &qword_1000CAEB8);
    sub_10004E6EC(&qword_1001072A8, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001072C0);
  }

  return result;
}

uint64_t sub_10004E7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004E858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004E8B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F3258;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10004E904(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F33C0;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10004E950()
{
  result = qword_1001072C8;
  if (!qword_1001072C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001072C8);
  }

  return result;
}

unint64_t sub_10004E9A4()
{
  result = qword_1001072D0;
  if (!qword_1001072D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001072D0);
  }

  return result;
}

unint64_t sub_10004E9F8()
{
  result = qword_1001072D8;
  if (!qword_1001072D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001072D8);
  }

  return result;
}

unint64_t sub_10004EA4C()
{
  result = qword_1001072E0;
  if (!qword_1001072E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001072E0);
  }

  return result;
}

unint64_t sub_10004EAA0()
{
  result = qword_1001072E8;
  if (!qword_1001072E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001072E8);
  }

  return result;
}

unint64_t sub_10004EAF4()
{
  result = qword_1001072F0;
  if (!qword_1001072F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001072F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICNoteArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICNoteArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004EC9C()
{
  result = qword_1001072F8;
  if (!qword_1001072F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001072F8);
  }

  return result;
}

unint64_t sub_10004ECF4()
{
  result = qword_100107300;
  if (!qword_100107300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107300);
  }

  return result;
}

unint64_t sub_10004ED4C()
{
  result = qword_100107308;
  if (!qword_100107308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107308);
  }

  return result;
}

uint64_t sub_10004EDAC()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000B5620();

  return v3;
}

uint64_t sub_10004EE14()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100107310);
  sub_100036380(v0, qword_100107310);
  return sub_1000B5510();
}

uint64_t sub_10004EE60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000B4DB0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10004EED8()
{
  v1 = [*v0 hashtags];
  sub_1000362AC(0, &qword_100107350, ICHashtag_ptr);
  sub_100050E74(&qword_100107358, &qword_100107350, ICHashtag_ptr);
  v2 = sub_1000B5830();

  v3 = sub_10005619C(v2);

  v4 = sub_100087CEC(v3);

  return v4;
}

uint64_t sub_10004EFB8(uint64_t a1)
{
  v3 = *v1;
  [v3 persistPendingChanges];
  v4 = v3;
  sub_10004D3AC(a1, &v7);
  sub_100057760(v4, a1, &v7);
  if (qword_100106A00 != -1)
  {
    swift_once();
  }

  sub_100050F88();
  v5 = sub_1000B4AF0();
  sub_10004570C(&v7);
  return v5;
}

uint64_t sub_10004F0A8()
{
  v1 = [v0 visibleNotesInFolder];
  sub_1000362AC(0, &qword_100106D78, ICNote_ptr);
  v2 = sub_1000B57A0();

  if (v2 >> 62)
  {
LABEL_13:
    v3 = sub_1000B5CF0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_1000B5C20();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_11:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_11;
          }
        }

        v7 = v5;
        v8 = sub_10004F214();

        sub_100063534(v8);
        ++v4;
      }

      while (v6 != v3);
    }
  }

  v9 = sub_100087CEC(_swiftEmptyArrayStorage);

  return v9;
}

void *sub_10004F214()
{
  v1 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v41 - v3;
  v5 = _s3TagVMa();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = [v0 account];
  if (!v12)
  {
    return &_swiftEmptySetSingleton;
  }

  v13 = v12;
  v14 = [v0 visibleInlineAttachments];
  sub_1000362AC(0, &qword_100107330, ICInlineAttachment_ptr);
  sub_100050E74(&qword_100107338, &qword_100107330, ICInlineAttachment_ptr);
  v15 = sub_1000B5830();

  v16 = v13;
  sub_100050B50(v15, v16);
  v18 = v17;

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_20:

    v23 = _swiftEmptyArrayStorage;
LABEL_21:
    v40 = sub_100087CEC(v23);

    return v40;
  }

  v19 = sub_1000B5CF0();
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_4:
  v20 = v18;
  v47 = _swiftEmptyArrayStorage;
  result = sub_1000433A8(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = v47;
    v24 = v20;
    v41 = v16;
    v42 = v20 & 0xC000000000000001;
    v43 = v19;
    v44 = v20;
    do
    {
      if (v42)
      {
        v25 = sub_1000B5C20();
      }

      else
      {
        v25 = *(v24 + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = sub_1000B4EA0();
      v28 = *(*(v27 - 8) + 56);
      v29 = 1;
      v28(v9, 1, 1, v27);
      v30 = [v26 creationDate];
      if (v30)
      {
        v31 = v30;
        sub_1000B4E70();

        v29 = 0;
      }

      v28(v4, v29, 1, v27);
      sub_10004CDC8(v4, v9);
      v32 = [v26 displayText];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1000B5620();
        v36 = v35;
      }

      else
      {

        v34 = 0;
        v36 = 0xE000000000000000;
      }

      v37 = &v9[*(v46 + 20)];
      *v37 = v34;
      v37[1] = v36;
      sub_100050EC4(v9, v11);
      v47 = v23;
      v39 = v23[2];
      v38 = v23[3];
      if (v39 >= v38 >> 1)
      {
        sub_1000433A8(v38 > 1, v39 + 1, 1);
        v23 = v47;
      }

      ++v22;
      v23[2] = v39 + 1;
      sub_100050EC4(v11, v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v39);
      v24 = v44;
    }

    while (v43 != v22);

    v16 = v41;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F668(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_1000B5620();

  return v5;
}

uint64_t sub_10004F6F8(uint64_t a1)
{
  v3 = type metadata accessor for ICFolderArchiveModel(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  [v7 persistPendingChanges];
  v8 = v7;
  sub_10004D3AC(a1, v11);
  sub_1000AD360(v8, a1, v6);
  if (qword_100106A00 != -1)
  {
    swift_once();
  }

  sub_100050E2C(&qword_100107340, type metadata accessor for ICFolderArchiveModel);
  v9 = sub_1000B4AF0();
  sub_100050F28(v6, type metadata accessor for ICFolderArchiveModel);
  return v9;
}

uint64_t sub_10004F86C(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1;
  v5 = sub_1000B5650();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ICNoteArchiveModel();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v3 persistPendingChanges];
  v14 = v3;
  sub_10004D3AC(a1, v26);
  sub_10004955C(v14, a1, v13);
  if (*a1)
  {
    v15 = &v13[*(v10 + 100)];
    if (!v15[1])
    {
      goto LABEL_4;
    }

    v16 = *v15;
    v17 = v15[1];

    sub_1000B5640();
    v10 = sub_1000B5630();
    v19 = v18;

    (*(v6 + 8))(v9, v5);
    if (v19 >> 60 == 15)
    {
LABEL_4:
      if (qword_100106A30 != -1)
      {
        swift_once();
      }

      v20 = sub_1000B5530();
      sub_100036380(v20, qword_100107310);
      v21 = sub_1000B5520();
      v22 = sub_1000B5920();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "failed to encode markdown string", v23, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    if (qword_100106A00 != -1)
    {
      swift_once();
    }

    sub_100050E2C(&qword_100107208, type metadata accessor for ICNoteArchiveModel);
    v24 = sub_1000B4AF0();
    if (!v2)
    {
      v10 = v24;
    }
  }

  sub_100050F28(v13, type metadata accessor for ICNoteArchiveModel);
  return v10;
}

uint64_t sub_10004FBB8()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000B5620();

  return v3;
}

id sub_10004FC68()
{
  if ([v0 isTable])
  {
    v1 = [v0 identifier];
    if (v1)
    {
      v2 = v1;
      v3 = sub_1000B5620();
      v5 = v4;
    }

    else
    {
      v5 = 0xE500000000000000;
      v3 = 0x656C626154;
    }

    v10._countAndFlagsBits = v3;
    v10._object = v5;
    sub_1000B56E0(v10);

    v11._countAndFlagsBits = 1987273518;
    v11._object = 0xE400000000000000;
    sub_1000B56E0(v11);
    return 0;
  }

  else
  {
    result = [v0 media];
    if (result)
    {
      v7 = result;
      v8 = [result filename];

      v9 = sub_1000B5620();
      return v9;
    }
  }

  return result;
}

uint64_t sub_10004FD88()
{
  v1 = v0;
  v2 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  if ([v1 isTable])
  {
    return 7762787;
  }

  result = [v1 media];
  if (result)
  {
    v10 = result;
    v11 = [result mediaURL];

    if (v11)
    {
      sub_1000B4D50();

      v12 = sub_1000B4DB0();
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    }

    else
    {
      v12 = sub_1000B4DB0();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    }

    sub_100050A78(v6, v8);
    sub_1000B4DB0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_100050AE8(v8);
      return 0;
    }

    else
    {
      v14 = sub_1000B4C90();
      (*(v13 + 8))(v8, v12);
      return v14;
    }
  }

  return result;
}

uint64_t sub_10004FFC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  if ([v2 isPasswordProtected] || (v8 = objc_msgSend(v2, "media")) == 0)
  {
    v12 = sub_1000B4DB0();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }

  else
  {
    v9 = v8;
    v10 = [v8 mediaURL];

    if (v10)
    {
      sub_1000B4D50();

      v11 = sub_1000B4DB0();
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    }

    else
    {
      v15 = sub_1000B4DB0();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    return sub_100050A78(v7, a1);
  }
}

id sub_10005018C()
{
  if (![v0 isTable])
  {
    result = [v0 media];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result cryptoStrategy];

    if (!v5)
    {
      return 0;
    }

    v3 = [v5 decryptedData];
    swift_unknownObjectRelease();
    if (!v3)
    {
      return 0;
    }

LABEL_8:
    v6 = sub_1000B4DF0();

    return v6;
  }

  result = [v0 tableModel];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result csvData];

  if (v3)
  {
    goto LABEL_8;
  }

  return 0;
}

void *sub_100050298()
{
  v1 = [v0 attachmentModel];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_100030480(&qword_100106D60, &unk_1000CAE40);
    v4 = *(sub_1000B4DB0() - 8);
    v5 = *(v4 + 72);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000CB4E0;
    v8 = [v3 paperBundleDatabaseSubdirectoryURL];
    sub_1000B4D50();

    v9 = [v3 paperBundleAssetsSubdirectoryURL];
    sub_1000B4D50();

    v10 = sub_10008800C(v7);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  return v10;
}

id sub_100050438()
{
  if ([v0 attachmentType] != 14 && objc_msgSend(v0, "attachmentType") != 15)
  {
    return 0;
  }

  result = [v0 fallbackPDFData];
  if (result)
  {
    v2 = result;
    v3 = sub_1000B4DF0();

    return v3;
  }

  return result;
}

uint64_t sub_1000504CC()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    sub_1000B5620();
  }

  v3 = sub_1000B55F0();

  if ([v0 isURL])
  {
    goto LABEL_4;
  }

  if ([v0 hasFallbackPDF])
  {
    v5 = sub_1000B55F0();
    v6 = [v3 stringByAppendingPathExtension:v5];

    if (!v6)
    {
LABEL_7:

      return 0x2E77656976657250;
    }
  }

  else
  {
    if (![v0 hasFallbackImage])
    {
      sub_10004FD88();
      v9 = sub_1000B55F0();

      v10 = [v3 stringByAppendingPathExtension:v9];

      if (!v10)
      {
LABEL_4:

        return 0;
      }

      v8 = sub_1000B5620();

      return v8;
    }

    v7 = sub_1000B55F0();
    v6 = [v3 stringByAppendingPathExtension:v7];

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v8 = sub_1000B5620();

  return v8;
}

uint64_t sub_1000506E4(uint64_t a1)
{
  v3 = type metadata accessor for ICAttachmentArchiveModel();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v1 persistPendingChanges];
  v7 = [v1 media];
  if (v7)
  {
    v8 = v7;
    [v7 persistPendingChanges];
  }

  v9 = v1;
  sub_10004D3AC(a1, v12);
  sub_1000696D8(v9, a1, v6);
  if (qword_100106A00 != -1)
  {
    swift_once();
  }

  sub_100050E2C(&qword_100107328, type metadata accessor for ICAttachmentArchiveModel);
  v10 = sub_1000B4AF0();
  sub_100050F28(v6, type metadata accessor for ICAttachmentArchiveModel);
  return v10;
}

uint64_t sub_10005088C()
{
  v1 = *v0;
  v2 = [*v0 userTitle];
  if (!v2)
  {
    v2 = [v1 title];
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2;
  v4 = sub_1000B5620();

  return v4;
}

uint64_t sub_1000509A4()
{
  v1 = [*v0 fallbackImageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000B4DF0();

  return v3;
}

uint64_t sub_100050A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050AE8(uint64_t a1)
{
  v2 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100050B50(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000B5B50();
    sub_1000362AC(0, &qword_100107330, ICInlineAttachment_ptr);
    sub_100050E74(&qword_100107338, &qword_100107330, ICInlineAttachment_ptr);
    sub_1000B5860();
    v2 = v21;
    v3 = v22;
    v5 = v23;
    v4 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

LABEL_8:
  v10 = v4;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1000B5BB0() || (sub_1000362AC(0, &qword_100107330, ICInlineAttachment_ptr), swift_dynamicCast(), v14 = v20, v4 = v10, v6 = v11, !v20))
      {
LABEL_24:
        sub_100035A5C();
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v4 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_18:
    if (![v14 isHashtagAttachment] || (v15 = objc_msgSend(v14, "tokenContentIdentifier")) == 0)
    {

      goto LABEL_8;
    }

    v16 = v15;
    v17 = [objc_opt_self() hashtagWithStandardizedContent:v15 onlyVisible:1 account:a2];

    v10 = v4;
    v11 = v6;
    if (v17)
    {
      sub_1000B5780();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000B57C0();
      }

      sub_1000B57F0();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v3 + 8 * v4);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100050E2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100050E74(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000362AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100050EC4(uint64_t a1, uint64_t a2)
{
  v4 = _s3TagVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100050F88()
{
  result = qword_100107348;
  if (!qword_100107348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107348);
  }

  return result;
}

uint64_t sub_100050FE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a1;
  v3 = sub_100030480(&qword_100107360, &qword_1000CB578);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v160 = &v135 - v5;
  v6 = sub_100030480(&qword_100107368, &qword_1000CB580);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v157 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v158 = &v135 - v10;
  v11 = sub_100030480(&qword_100107370, &qword_1000CB588);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v170 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v150 = &v135 - v15;
  v16 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v164 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v140 = &v135 - v20;
  v21 = sub_100030480(&qword_100106FF8, &qword_1000CAE70);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v162 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v161 = &v135 - v26;
  v27 = __chkstk_darwin(v25);
  v159 = &v135 - v28;
  v29 = __chkstk_darwin(v27);
  v154 = &v135 - v30;
  v31 = __chkstk_darwin(v29);
  v145 = &v135 - v32;
  v33 = __chkstk_darwin(v31);
  v139 = &v135 - v34;
  __chkstk_darwin(v33);
  v36 = &v135 - v35;
  v37 = sub_100030480(&qword_100107000, &qword_1000CAE78);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v156 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v146 = &v135 - v42;
  v43 = __chkstk_darwin(v41);
  v141 = &v135 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v135 - v46;
  __chkstk_darwin(v45);
  v49 = &v135 - v48;
  v50 = sub_1000B4EA0();
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v52(a2, 1, 1, v50);
  v53 = _s8ActivityVMa();
  v54 = v53[5];
  v55 = sub_1000B50F0();
  v142 = *(v55 - 8);
  v56 = *(v142 + 56);
  v144 = v54;
  v143 = v55;
  v165 = v56;
  v166 = v142 + 56;
  (v56)(a2 + v54, 1, 1);
  v57 = v53[6];
  v58 = sub_1000B5250();
  v147 = *(v58 - 8);
  v59 = *(v147 + 56);
  v149 = v57;
  v168 = v147 + 56;
  v169 = v58;
  v167 = v59;
  (v59)(a2 + v57, 1, 1);
  v171 = v53;
  v60 = v53[7];
  v61 = sub_1000B51D0();
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v163 = a2;
  v155 = v60;
  v153 = v61;
  v152 = v63;
  v151 = v62 + 56;
  (v63)(a2 + v60, 1, 1);
  sub_10005218C();
  sub_1000B5A40();
  sub_1000B5A30();
  v175 = v49;
  sub_100030C74(v49, v47, &qword_100107000, &qword_1000CAE78);
  v64 = sub_1000B5230();
  v65 = *(v64 - 8);
  v173 = *(v65 + 48);
  v174 = v65 + 48;
  if (v173(v47, 1, v64) == 1)
  {
    v137 = v51;
    sub_100036320(v47, &qword_100107000, &qword_1000CAE78);
    v136 = v52;
    v52(v164, 1, 1, v50);
    v138 = v36;
    v66 = v139;
    sub_100030C74(v36, v139, &qword_100106FF8, &qword_1000CAE70);
    v67 = sub_1000B5170();
    v68 = *(v67 - 8);
    if ((*(v68 + 48))(v66, 1, v67) == 1)
    {
      sub_100036320(v66, &qword_100106FF8, &qword_1000CAE70);
      v69 = 1;
      v70 = v175;
      v71 = v150;
      v72 = v145;
      v73 = v140;
    }

    else
    {
      v73 = v140;
      sub_1000B5150();
      (*(v68 + 8))(v66, v67);
      v69 = 0;
      v70 = v175;
      v71 = v150;
      v72 = v145;
    }

    v76 = v141;
    v136(v73, v69, 1, v50);
    v77 = v164;
    v78 = (*(v137 + 48))(v164, 1, v50);
    v36 = v138;
    if (v78 != 1)
    {
      sub_100036320(v77, &qword_100106E38, &unk_1000CB730);
    }
  }

  else
  {
    v74 = v164;
    sub_1000B5210();
    (*(v65 + 8))(v47, v64);
    v52(v74, 0, 1, v50);
    v75 = v140;
    (*(v51 + 32))(v140, v74, v50);
    v52(v75, 0, 1, v50);
    v70 = v175;
    v71 = v150;
    v72 = v145;
    v73 = v75;
    v76 = v141;
  }

  v79 = v73;
  v80 = v163;
  sub_1000521D8(v79, v163, &qword_100106E38, &unk_1000CB730);
  sub_100030C74(v70, v76, &qword_100107000, &qword_1000CAE78);
  v81 = v173(v76, 1, v64);
  v82 = v157;
  v83 = v170;
  v84 = v143;
  v148 = v65;
  if (v81 == 1)
  {
    v85 = v64;
    sub_100036320(v76, &qword_100107000, &qword_1000CAE78);
    v165(v83, 1, 1, v84);
    sub_100030C74(v36, v72, &qword_100106FF8, &qword_1000CAE70);
    v86 = sub_1000B5170();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v72, 1, v86) == 1)
    {
      sub_100036320(v72, &qword_100106FF8, &qword_1000CAE70);
      v88 = 1;
    }

    else
    {
      sub_1000B5130();
      (*(v87 + 8))(v72, v86);
      v88 = 0;
    }

    v90 = v154;
    v165(v71, v88, 1, v84);
    v91 = v170;
    v92 = (*(v142 + 48))(v170, 1, v84);
    v64 = v85;
    v65 = v148;
    if (v92 != 1)
    {
      sub_100036320(v91, &qword_100107370, &qword_1000CB588);
    }
  }

  else
  {
    sub_1000B51F0();
    (*(v65 + 8))(v76, v64);
    v89 = v165;
    v165(v83, 0, 1, v84);
    (*(v142 + 32))(v71, v83, v84);
    v89(v71, 0, 1, v84);
    v90 = v154;
  }

  sub_1000521D8(v71, v80 + v144, &qword_100107370, &qword_1000CB588);
  v93 = v146;
  sub_100030C74(v175, v146, &qword_100107000, &qword_1000CAE78);
  v94 = v173(v93, 1, v64);
  v95 = v162;
  if (v94 == 1)
  {
    v96 = v64;
    sub_100036320(v93, &qword_100107000, &qword_1000CAE78);
    v167(v82, 1, 1, v169);
    sub_100030C74(v36, v90, &qword_100106FF8, &qword_1000CAE70);
    v97 = sub_1000B5170();
    v98 = *(v97 - 8);
    if ((*(v98 + 48))(v90, 1, v97) == 1)
    {
      sub_100036320(v90, &qword_100106FF8, &qword_1000CAE70);
      v99 = 1;
      v100 = v158;
    }

    else
    {
      v100 = v158;
      sub_1000B5120();
      (*(v98 + 8))(v90, v97);
      v99 = 0;
    }

    v103 = v169;
    v167(v100, v99, 1, v169);
    v104 = (*(v147 + 48))(v82, 1, v103);
    v64 = v96;
    v65 = v148;
    if (v104 != 1)
    {
      sub_100036320(v82, &qword_100107368, &qword_1000CB580);
    }
  }

  else
  {
    sub_1000B51E0();
    (*(v65 + 8))(v93, v64);
    v101 = v169;
    v102 = v167;
    v167(v82, 0, 1, v169);
    v100 = v158;
    (*(v147 + 32))(v158, v82, v101);
    v102(v100, 0, 1, v101);
  }

  sub_1000521D8(v100, v80 + v149, &qword_100107368, &qword_1000CB580);
  v105 = v156;
  sub_100030C74(v175, v156, &qword_100107000, &qword_1000CAE78);
  if (v173(v105, 1, v64) == 1)
  {
    sub_100036320(v105, &qword_100107000, &qword_1000CAE78);
    v106 = 1;
    v107 = v160;
  }

  else
  {
    v107 = v160;
    sub_1000B5200();
    (*(v65 + 8))(v105, v64);
    v106 = 0;
  }

  v108 = v36;
  v152(v107, v106, 1, v153);
  sub_1000521D8(v107, v80 + v155, &qword_100107360, &qword_1000CB578);
  v109 = v159;
  sub_100030C74(v36, v159, &qword_100106FF8, &qword_1000CAE70);
  v110 = sub_1000B5170();
  v111 = *(v110 - 8);
  v112 = *(v111 + 48);
  if (v112(v109, 1, v110) == 1)
  {
    sub_100036320(v109, &qword_100106FF8, &qword_1000CAE70);
    v113 = 0;
    v114 = 0;
  }

  else
  {
    v113 = sub_1000B5140();
    v114 = v115;
    (*(v111 + 8))(v109, v110);
  }

  v116 = v171;
  v117 = (v80 + v171[8]);
  *v117 = v113;
  v117[1] = v114;
  v118 = v161;
  sub_100030C74(v108, v161, &qword_100106FF8, &qword_1000CAE70);
  v119 = v112(v118, 1, v110);
  if (v119 == 1)
  {
    sub_100036320(v118, &qword_100106FF8, &qword_1000CAE70);
    v120 = 0;
  }

  else
  {
    v121 = v118;
    v120 = sub_1000B5100();
    v122 = v121;
    v116 = v171;
    (*(v111 + 8))(v122, v110);
  }

  v123 = v80 + v116[9];
  *v123 = v120;
  *(v123 + 8) = v119 == 1;
  sub_100030C74(v108, v95, &qword_100106FF8, &qword_1000CAE70);
  if (v112(v95, 1, v110) == 1)
  {
    sub_100036320(v95, &qword_100106FF8, &qword_1000CAE70);
    v124 = 0;
    v125 = 0;
  }

  else
  {
    v124 = sub_1000B5110();
    v125 = v126;
    (*(v111 + 8))(v95, v110);
  }

  v127 = (v80 + v116[10]);
  *v127 = v124;
  v127[1] = v125;
  v128 = v172;
  v129 = [v172 data];
  v130 = sub_1000B4DF0();
  v132 = v131;

  sub_100036320(v108, &qword_100106FF8, &qword_1000CAE70);
  result = sub_100036320(v175, &qword_100107000, &qword_1000CAE78);
  v134 = (v80 + v116[11]);
  *v134 = v130;
  v134[1] = v132;
  return result;
}

uint64_t _s8ActivityVMa()
{
  result = qword_1001073D0;
  if (!qword_1001073D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10005218C()
{
  result = qword_100106C00;
  if (!qword_100106C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100106C00);
  }

  return result;
}

uint64_t sub_1000521D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100030480(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100052240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v75 = a2;
  v3 = sub_100030480(&qword_100107360, &qword_1000CB578);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v66 = &v58 - v5;
  v6 = sub_1000B51D0();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  v8 = __chkstk_darwin(v6);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = &v58 - v10;
  v11 = sub_100030480(&qword_100107368, &qword_1000CB580);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v70 = &v58 - v13;
  v14 = sub_1000B5250();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  v16 = __chkstk_darwin(v14);
  v60 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v69 = &v58 - v18;
  v19 = sub_100030480(&qword_100107370, &qword_1000CB588);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v58 - v21;
  v23 = sub_1000B50F0();
  v74 = *(v23 - 8);
  v24 = *(v74 + 64);
  v25 = __chkstk_darwin(v23);
  v64 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v73 = &v58 - v27;
  v28 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v58 - v30;
  v32 = sub_1000B4EA0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v63 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v58 - v37;
  sub_100030C74(v2, v31, &qword_100106E38, &unk_1000CB730);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    v39 = &qword_100106E38;
    v40 = &unk_1000CB730;
    v41 = v31;
  }

  else
  {
    (*(v33 + 32))(v38, v31, v32);
    v42 = _s8ActivityVMa();
    sub_100030C74(v2 + v42[5], v22, &qword_100107370, &qword_1000CB588);
    v43 = v74;
    if ((*(v74 + 48))(v22, 1, v23) == 1)
    {
      (*(v33 + 8))(v38, v32);
      v39 = &qword_100107370;
      v40 = &qword_1000CB588;
      v41 = v22;
    }

    else
    {
      v59 = v38;
      v44 = v73;
      (*(v43 + 32))(v73, v22, v23);
      v45 = v70;
      sub_100030C74(v2 + v42[6], v70, &qword_100107368, &qword_1000CB580);
      v47 = v71;
      v46 = v72;
      if ((*(v71 + 48))(v45, 1, v72) == 1)
      {
        (*(v43 + 8))(v44, v23);
        (*(v33 + 8))(v59, v32);
        v39 = &qword_100107368;
        v40 = &qword_1000CB580;
        v41 = v45;
      }

      else
      {
        v58 = v23;
        v48 = v69;
        (*(v47 + 32))(v69, v45, v46);
        v49 = v66;
        sub_100030C74(v2 + v42[7], v66, &qword_100107360, &qword_1000CB578);
        v51 = v67;
        v50 = v68;
        if ((*(v67 + 48))(v49, 1, v68) != 1)
        {
          (*(v51 + 32))(v65, v49, v50);
          v56 = *(v62 + 8);
          sub_1000B4E20();
          (*(v43 + 16))(v64, v73, v58);
          (*(v47 + 16))(v60, v48, v46);
          v57 = v65;
          (*(v51 + 16))(v61, v65, v50);
          v53 = v75;
          sub_1000B5220();
          (*(v51 + 8))(v57, v50);
          (*(v47 + 8))(v69, v72);
          (*(v43 + 8))(v73, v58);
          (*(v33 + 8))(v59, v32);
          v52 = 0;
          goto LABEL_10;
        }

        (*(v47 + 8))(v48, v46);
        (*(v43 + 8))(v73, v58);
        (*(v33 + 8))(v59, v32);
        v39 = &qword_100107360;
        v40 = &qword_1000CB578;
        v41 = v49;
      }
    }
  }

  sub_100036320(v41, v39, v40);
  v52 = 1;
  v53 = v75;
LABEL_10:
  v54 = sub_1000B5230();
  return (*(*(v54 - 8) + 56))(v53, v52, 1, v54);
}

uint64_t sub_100052A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a1;
  v69 = a2;
  v4 = sub_100030480(&qword_100107368, &qword_1000CB580);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v65 = &v54 - v6;
  v7 = sub_1000B5250();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  v9 = __chkstk_darwin(v7);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v54 - v11;
  v12 = sub_100030480(&qword_100107370, &qword_1000CB588);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v54 - v14;
  v16 = sub_1000B50F0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v61 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v68 = &v54 - v21;
  v22 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v54 - v24;
  v26 = sub_1000B4EA0();
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  v60 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v54 - v30;
  v32 = v3;
  v33 = v3;
  v35 = v34;
  sub_100030C74(v33, v25, &qword_100106E38, &unk_1000CB730);
  if ((*(v35 + 48))(v25, 1, v26) == 1)
  {
    sub_100036320(v25, &qword_100106E38, &unk_1000CB730);
LABEL_12:
    v51 = 1;
    goto LABEL_13;
  }

  (*(v35 + 32))(v31, v25, v26);
  v36 = _s8ActivityVMa();
  sub_100030C74(v32 + v36[5], v15, &qword_100107370, &qword_1000CB588);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    (*(v35 + 8))(v31, v26);
    sub_100036320(v15, &qword_100107370, &qword_1000CB588);
    goto LABEL_12;
  }

  v59 = v31;
  v37 = v68;
  (*(v17 + 32))(v68, v15, v16);
  v38 = v65;
  sub_100030C74(v32 + v36[6], v65, &qword_100107368, &qword_1000CB580);
  v40 = v66;
  v39 = v67;
  if ((*(v66 + 48))(v38, 1, v67) == 1)
  {
    (*(v17 + 8))(v37, v16);
    (*(v35 + 8))(v59, v26);
    sub_100036320(v38, &qword_100107368, &qword_1000CB580);
    goto LABEL_12;
  }

  v41 = v16;
  v42 = v64;
  (*(v40 + 32))(v64, v38, v39);
  v43 = v32 + v36[9];
  if (*(v43 + 8) == 1 || (v44 = (v32 + v36[8]), (v45 = v44[1]) == 0) || (v46 = (v32 + v36[10]), !v46[1]))
  {
    (*(v40 + 8))(v42, v39);
    (*(v17 + 8))(v68, v41);
    (*(v35 + 8))(v59, v26);
    goto LABEL_12;
  }

  v65 = *v43;
  v58 = *v44;
  v47 = *v46;
  v56 = v45;
  v57 = v47;
  v48 = *(v63 + 8);

  sub_1000B4E20();
  v49 = *(v17 + 16);
  v55 = v41;
  v49(v61, v68, v41);
  v50 = v67;
  (*(v40 + 16))(v62, v42, v67);
  sub_1000B5160();
  (*(v40 + 8))(v42, v50);
  (*(v17 + 8))(v68, v55);
  (*(v35 + 8))(v59, v26);
  v51 = 0;
LABEL_13:
  v52 = sub_1000B5170();
  return (*(*(v52 - 8) + 56))(v69, v51, 1, v52);
}

uint64_t sub_100053134(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100030480(&qword_100107370, &qword_1000CB588);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100030480(&qword_100107368, &qword_1000CB580);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100030480(&qword_100107360, &qword_1000CB578);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100053324(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100030480(&qword_100107370, &qword_1000CB588);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100030480(&qword_100107368, &qword_1000CB580);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_100030480(&qword_100107360, &qword_1000CB578);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000534F0()
{
  sub_100053674(319, &qword_100107088, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_100053674(319, &qword_1001073E0, &type metadata accessor for ActivityEventObject);
    if (v1 <= 0x3F)
    {
      sub_100053674(319, &qword_1001073E8, &type metadata accessor for ActivityEventParticipant);
      if (v2 <= 0x3F)
      {
        sub_100053674(319, &qword_1001073F0, &type metadata accessor for PersistedActivityEvent.Activities);
        if (v3 <= 0x3F)
        {
          sub_1000360A8();
          if (v4 <= 0x3F)
          {
            sub_100053674(319, &unk_1001073F8, type metadata accessor for NotesVersion);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100053674(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000B5AC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000536C8(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100107478, &qword_1000CB5F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_100054598();
  sub_1000B6020();
  LOBYTE(v27) = 0;
  sub_1000B4EA0();
  sub_100054700(&qword_100107228, &type metadata accessor for Date);
  sub_1000B5E60();
  if (!v2)
  {
    v11 = _s8ActivityVMa();
    v12 = v11[5];
    LOBYTE(v27) = 1;
    sub_1000B50F0();
    sub_100054700(&qword_100107480, &type metadata accessor for ActivityEventObject);
    sub_1000B5E60();
    v13 = v11[6];
    LOBYTE(v27) = 2;
    sub_1000B5250();
    sub_100054700(&qword_100107488, &type metadata accessor for ActivityEventParticipant);
    sub_1000B5E60();
    v14 = v11[7];
    LOBYTE(v27) = 3;
    sub_1000B51D0();
    sub_100054700(&qword_100107490, &type metadata accessor for PersistedActivityEvent.Activities);
    sub_1000B5E60();
    v15 = (v3 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v27) = 4;
    sub_1000B5E20();
    v18 = v3 + v11[9];
    v19 = *v18;
    LOBYTE(v18) = *(v18 + 8);
    v27 = v19;
    LOBYTE(v28) = v18;
    v29 = 5;
    type metadata accessor for NotesVersion(0);
    sub_100054700(&qword_100107498, type metadata accessor for NotesVersion);
    sub_1000B5E60();
    v20 = (v3 + v11[10]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v27) = 6;
    sub_1000B5E20();
    v23 = (v3 + v11[11]);
    v24 = v23[1];
    v27 = *v23;
    v28 = v24;
    v29 = 7;
    sub_1000457C8(v27, v24);
    sub_100054748();
    sub_1000B5EB0();
    sub_1000449D4(v27, v28);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100053AF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_100030480(&qword_100107360, &qword_1000CB578);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v58 = &v57 - v5;
  v6 = sub_100030480(&qword_100107368, &qword_1000CB580);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v60 = &v57 - v8;
  v9 = sub_100030480(&qword_100107370, &qword_1000CB588);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v59 = &v57 - v11;
  v12 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v61 = &v57 - v14;
  v64 = sub_100030480(&qword_100107440, &qword_1000CB5F0);
  v62 = *(v64 - 8);
  v15 = *(v62 + 64);
  __chkstk_darwin(v64);
  v17 = &v57 - v16;
  v18 = _s8ActivityVMa();
  v19 = *(*(v18 - 1) + 64);
  __chkstk_darwin(v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000B4EA0();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = v18[5];
  v24 = sub_1000B50F0();
  v25 = *(*(v24 - 8) + 56);
  v68 = v23;
  v25(&v21[v23], 1, 1, v24);
  v26 = v18[6];
  v27 = sub_1000B5250();
  v28 = *(*(v27 - 8) + 56);
  v67 = v26;
  v28(&v21[v26], 1, 1, v27);
  v29 = v18[7];
  v30 = sub_1000B51D0();
  v31 = *(*(v30 - 8) + 56);
  v66 = v29;
  v70 = v21;
  v31(&v21[v29], 1, 1, v30);
  v32 = a1[3];
  v33 = a1[4];
  v69 = a1;
  sub_1000458B4(a1, v32);
  sub_100054598();
  v63 = v17;
  v34 = v65;
  sub_1000B6010();
  if (v34)
  {
    v38 = v68;
    v39 = v66;
    v40 = v67;
    sub_100035DA8(v69);
    v41 = v70;
    sub_100036320(v70, &qword_100106E38, &unk_1000CB730);
    sub_100036320(v41 + v38, &qword_100107370, &qword_1000CB588);
    sub_100036320(v41 + v40, &qword_100107368, &qword_1000CB580);
    sub_100036320(v41 + v39, &qword_100107360, &qword_1000CB578);
  }

  else
  {
    v36 = v59;
    v35 = v60;
    v65 = v18;
    LOBYTE(v71) = 0;
    sub_100054700(&qword_100107288, &type metadata accessor for Date);
    v37 = v61;
    sub_1000B5DB0();
    sub_1000521D8(v37, v70, &qword_100106E38, &unk_1000CB730);
    LOBYTE(v71) = 1;
    sub_100054700(&qword_100107450, &type metadata accessor for ActivityEventObject);
    v42 = v36;
    sub_1000B5DB0();
    v43 = v70;
    sub_1000521D8(v42, &v70[v68], &qword_100107370, &qword_1000CB588);
    LOBYTE(v71) = 2;
    sub_100054700(&qword_100107458, &type metadata accessor for ActivityEventParticipant);
    sub_1000B5DB0();
    sub_1000521D8(v35, v43 + v67, &qword_100107368, &qword_1000CB580);
    LOBYTE(v71) = 3;
    sub_100054700(&qword_100107460, &type metadata accessor for PersistedActivityEvent.Activities);
    v44 = v58;
    sub_1000B5DB0();
    sub_1000521D8(v44, v43 + v66, &qword_100107360, &qword_1000CB578);
    LOBYTE(v71) = 4;
    v45 = sub_1000B5D70();
    v46 = v65;
    v47 = (v43 + v65[8]);
    *v47 = v45;
    v47[1] = v48;
    type metadata accessor for NotesVersion(0);
    v72 = 5;
    sub_100054700(&qword_100107468, type metadata accessor for NotesVersion);
    sub_1000B5DB0();
    v49 = v43 + v46[9];
    v50 = BYTE8(v71);
    *v49 = v71;
    *(v49 + 8) = v50;
    LOBYTE(v71) = 6;
    v51 = sub_1000B5D70();
    v52 = (v43 + v46[10]);
    *v52 = v51;
    v52[1] = v53;
    v72 = 7;
    sub_1000545EC();
    v54 = v63;
    sub_1000B5E00();
    (*(v62 + 8))(v54, v64);
    v55 = v70;
    *&v70[v46[11]] = v71;
    sub_100054640(v55, v57);
    sub_100035DA8(v69);
    return sub_1000546A4(v55);
  }
}

uint64_t sub_1000543A8()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x6B6361626C6C6166;
  v4 = 0x6B6361626C6C6166;
  if (v1 != 6)
  {
    v3 = 0x6B6361626C6C6166;
  }

  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7069636974726170;
  if (v1 != 2)
  {
    v5 = 0x7974697669746361;
  }

  if (*v0)
  {
    v2 = 0x7463656A626FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000544BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000549F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000544F0(uint64_t a1)
{
  v2 = sub_100054598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005452C(uint64_t a1)
{
  v2 = sub_100054598();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100054598()
{
  result = qword_100107448;
  if (!qword_100107448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107448);
  }

  return result;
}

unint64_t sub_1000545EC()
{
  result = qword_100107470;
  if (!qword_100107470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107470);
  }

  return result;
}

uint64_t sub_100054640(uint64_t a1, uint64_t a2)
{
  v4 = _s8ActivityVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000546A4(uint64_t a1)
{
  v2 = _s8ActivityVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100054700(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100054748()
{
  result = qword_1001074A0;
  if (!qword_1001074A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001074A0);
  }

  return result;
}

uint64_t _s8ActivityV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8ActivityV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000548F0()
{
  result = qword_1001074A8;
  if (!qword_1001074A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001074A8);
  }

  return result;
}

unint64_t sub_100054948()
{
  result = qword_1001074B0;
  if (!qword_1001074B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001074B0);
  }

  return result;
}

unint64_t sub_1000549A0()
{
  result = qword_1001074B8;
  if (!qword_1001074B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001074B8);
  }

  return result;
}

uint64_t sub_1000549F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000065707954 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001000C7190 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xED0000656C746954 || (sub_1000B5F20() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000061746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_1000B5F20();

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

uint64_t sub_100054CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100054D9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for ICArchiveModel()
{
  result = qword_100107518;
  if (!qword_100107518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100054EB0()
{
  sub_10004D954();
  if (v0 <= 0x3F)
  {
    sub_100054FAC();
    if (v1 <= 0x3F)
    {
      sub_10004D9F8(319, &qword_100107530, &qword_100107538, &unk_1000CB9C0);
      if (v2 <= 0x3F)
      {
        sub_10004D9F8(319, &qword_100107540, &unk_100107548, &qword_1000CB760);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100054FAC()
{
  if (!qword_100107528)
  {
    v0 = sub_1000B5AC0();
    if (!v1)
    {
      atomic_store(v0, &qword_100107528);
    }
  }
}

uint64_t sub_100054FFC(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_1001075B8, &qword_1000CB7C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_100055A20();
  sub_1000B6020();
  LOBYTE(v17[0]) = *v3;
  v18 = 0;
  sub_10004E214();
  sub_1000B5EB0();
  if (!v2)
  {
    v11 = *(v3 + 8);
    LOBYTE(v17[0]) = 1;
    sub_1000B5EA0();
    v12 = type metadata accessor for ICArchiveModel();
    v13 = v12[6];
    LOBYTE(v17[0]) = 2;
    sub_1000B4EA0();
    sub_100055C78(&qword_100107228, &type metadata accessor for Date);
    sub_1000B5E60();
    v14 = (v3 + v12[7]);
    v15 = v14[1];
    v17[0] = *v14;
    v17[1] = v15;
    v17[2] = v14[2];
    v18 = 3;
    sub_100055B88();
    sub_1000B5E60();
    *&v17[0] = *(v3 + v12[8]);
    v18 = 4;
    sub_100030480(&qword_100107538, &unk_1000CB9C0);
    sub_100055BDC(&qword_1001075C8, &qword_1001075D0);
    sub_1000B5E60();
    *&v17[0] = *(v3 + v12[9]);
    v18 = 5;
    sub_100030480(&unk_100107548, &qword_1000CB760);
    sub_100055CC0(&qword_1001075D8);
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100055354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v37 = &v31 - v5;
  v38 = sub_100030480(&qword_100107588, &qword_1000CB7B8);
  v36 = *(v38 - 8);
  v6 = *(v36 + 64);
  __chkstk_darwin(v38);
  v8 = &v31 - v7;
  v9 = type metadata accessor for ICArchiveModel();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0;
  *(v13 + 1) = 1;
  v14 = v10[8];
  sub_1000B4E90();
  v15 = sub_1000B4EA0();
  (*(*(v15 - 8) + 56))(&v13[v14], 0, 1, v15);
  v16 = &v13[v10[9]];
  *v16 = xmmword_1000CB720;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v17 = v10[10];
  *&v13[v17] = 0;
  v18 = v10[11];
  v41 = v13;
  *&v13[v18] = 0;
  v19 = a1;
  v20 = a1[3];
  v21 = a1[4];
  v42 = v19;
  sub_1000458B4(v19, v20);
  sub_100055A20();
  v39 = v8;
  v22 = v40;
  sub_1000B6010();
  if (v22)
  {
    v23 = v41;
  }

  else
  {
    v33 = v17;
    v34 = v16;
    v40 = v14;
    v25 = v36;
    v24 = v37;
    v32 = v18;
    v46 = 0;
    sub_1000316AC();
    v26 = v38;
    sub_1000B5E00();
    v23 = v41;
    *v41 = v43;
    LOBYTE(v43) = 1;
    *(v23 + 8) = sub_1000B5DF0();
    LOBYTE(v43) = 2;
    sub_100055C78(&qword_100107288, &type metadata accessor for Date);
    sub_1000B5DB0();
    sub_10004CDC8(v24, v23 + v40);
    v46 = 3;
    sub_100055AD0();
    sub_1000B5DB0();
    v28 = v44;
    v29 = v34;
    *v34 = v43;
    *(v29 + 1) = v28;
    *(v29 + 2) = v45;
    sub_100030480(&qword_100107538, &unk_1000CB9C0);
    v46 = 4;
    sub_100055BDC(&qword_1001075A0, &qword_1001075A8);
    sub_1000B5DB0();
    *(v23 + v33) = v43;
    sub_100030480(&unk_100107548, &qword_1000CB760);
    v46 = 5;
    sub_100055CC0(&qword_1001075B0);
    v30 = v39;
    sub_1000B5DB0();
    (*(v25 + 8))(v30, v26);
    *(v23 + v32) = v43;
    sub_100055B24(v23, v35);
  }

  sub_100035DA8(v42);
  return sub_100055A74(v23);
}

uint64_t sub_100055874()
{
  v1 = *v0;
  v2 = 0x6E65644965707974;
  v3 = 0x4264657461657263;
  v4 = 1936154996;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697369766572;
  if (v1 != 1)
  {
    v5 = 0x4164657461657263;
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

uint64_t sub_100055944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100055F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100055978(uint64_t a1)
{
  v2 = sub_100055A20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000559B4(uint64_t a1)
{
  v2 = sub_100055A20();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100055A20()
{
  result = qword_100107590;
  if (!qword_100107590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107590);
  }

  return result;
}

uint64_t sub_100055A74(uint64_t a1)
{
  v2 = type metadata accessor for ICArchiveModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100055AD0()
{
  result = qword_100107598;
  if (!qword_100107598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107598);
  }

  return result;
}

uint64_t sub_100055B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICArchiveModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100055B88()
{
  result = qword_1001075C0;
  if (!qword_1001075C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001075C0);
  }

  return result;
}

uint64_t sub_100055BDC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_100107538, &unk_1000CB9C0);
    sub_100055C78(a2, _s3TagVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100055C78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100055CC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&unk_100107548, &qword_1000CB760);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100055E80()
{
  result = qword_1001075E0;
  if (!qword_1001075E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001075E0);
  }

  return result;
}

unint64_t sub_100055ED8()
{
  result = qword_1001075E8;
  if (!qword_1001075E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001075E8);
  }

  return result;
}

unint64_t sub_100055F30()
{
  result = qword_1001075F0;
  if (!qword_1001075F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001075F0);
  }

  return result;
}

uint64_t sub_100055F84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4264657461657263 && a2 == 0xE900000000000079 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000C71B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000B5F20();

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

uint64_t sub_10005619C(uint64_t a1)
{
  v3 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v49 - v5;
  v7 = _s3TagVMa();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_1000B5B90();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v66 = _swiftEmptyArrayStorage;
  sub_1000433A8(0, v11 & ~(v11 >> 63), 0);
  v12 = v66;
  if (v58)
  {
    result = sub_1000B5B40();
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    result = sub_1000B5B20();
    v14 = *(a1 + 36);
  }

  v63 = result;
  v64 = v14;
  v65 = v58 != 0;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v54 = v6;
    v55 = a1;
    v16 = 0;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v17 = a1;
    }

    v51 = a1 + 56;
    v52 = v17;
    v49[1] = v1;
    v50 = a1 + 64;
    v53 = v11;
    while (v16 < v11)
    {
      if (__OFADD__(v16++, 1))
      {
        goto LABEL_42;
      }

      v20 = v63;
      v60 = v64;
      v61 = v12;
      v59 = v65;
      sub_100057430(v63, v64, v65, a1);
      v22 = v21;
      v23 = sub_1000B4EA0();
      v24 = *(*(v23 - 8) + 56);
      v25 = 1;
      v26 = v10;
      v24(v10, 1, 1, v23);
      v27 = [v22 creationDate];
      v28 = v54;
      if (v27)
      {
        v29 = v27;
        sub_1000B4E70();

        v25 = 0;
      }

      v24(v28, v25, 1, v23);
      v30 = v28;
      v10 = v26;
      sub_10004CDC8(v30, v26);
      v31 = [v22 displayText];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1000B5620();
        v35 = v34;
      }

      else
      {

        v33 = 0;
        v35 = 0xE000000000000000;
      }

      a1 = v55;
      v11 = v53;
      v36 = &v10[*(v57 + 20)];
      *v36 = v33;
      v36[1] = v35;
      v12 = v61;
      v66 = v61;
      v38 = v61[2];
      v37 = v61[3];
      if (v38 >= v37 >> 1)
      {
        sub_1000433A8(v37 > 1, v38 + 1, 1);
        v12 = v66;
      }

      v12[2] = v38 + 1;
      result = sub_100050EC4(v10, v12 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v38);
      if (v58)
      {
        if (!v59)
        {
          goto LABEL_47;
        }

        if (sub_1000B5B60())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_100030480(&qword_100107610, &qword_1000CB8E8);
        v18 = sub_1000B5850();
        sub_1000B5BC0();
        result = v18(v62, 0);
        if (v16 == v11)
        {
LABEL_39:
          sub_100057B3C(v63, v64, v65);
          return v12;
        }
      }

      else
      {
        if (v59)
        {
          goto LABEL_48;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v39 = 1 << *(a1 + 32);
        if (v20 >= v39)
        {
          goto LABEL_43;
        }

        v40 = v20 >> 6;
        v41 = *(v51 + 8 * (v20 >> 6));
        if (((v41 >> v20) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (*(a1 + 36) != v60)
        {
          goto LABEL_45;
        }

        v42 = v41 & (-2 << (v20 & 0x3F));
        if (v42)
        {
          v39 = __clz(__rbit64(v42)) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v43 = v40 << 6;
          v44 = v40 + 1;
          v45 = (v50 + 8 * v40);
          while (v44 < (v39 + 63) >> 6)
          {
            v47 = *v45++;
            v46 = v47;
            v43 += 64;
            ++v44;
            if (v47)
            {
              result = sub_100057B3C(v20, v60, 0);
              v39 = __clz(__rbit64(v46)) + v43;
              goto LABEL_38;
            }
          }

          result = sub_100057B3C(v20, v60, 0);
        }

LABEL_38:
        v48 = *(a1 + 36);
        v63 = v39;
        v64 = v48;
        v65 = 0;
        if (v16 == v11)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

id sub_1000566B0(id a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  if ((*a3 & 1) == 0 || (v9 = [a1 managedObjectContext]) == 0)
  {
LABEL_8:
    ObjectType = swift_getObjectType();
    v14 = a1;
    v16 = (*(a2 + 16))(v5[1], v5[2], a3, ObjectType, a2);
    if (!v4)
    {
      v14 = v16;
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v14 = v14;
        v19 = v14;
        if ([v18 isRenamable])
        {
          if (v5[4])
          {
            v20 = v5[3];
            v21 = v5[4];
          }

          v19 = sub_1000B55F0();

          [v18 setTitle:v19];
        }
      }
    }

    return v14;
  }

  v10 = *(v3 + 40);
  if (v10 == 2)
  {

    goto LABEL_8;
  }

  v11 = v9;
  v12 = objc_opt_self();
  v13 = &selRef_localAccountInContext_;
  if ((v10 & 1) == 0)
  {
    v13 = &selRef_cloudKitAccountInContext_;
  }

  v14 = [v12 *v13];

  if (!v14)
  {
    goto LABEL_8;
  }

  return v14;
}

id sub_100056864(id a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = a1;
  v5 = *(v3 + 16);
  v24 = a1;
  if (!v5)
  {
    goto LABEL_18;
  }

  v7 = 0;
  v8 = v3 + 40;
  v23 = v8;
  do
  {
    v9 = (v8 + 16 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_31;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_6;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      v13 = sub_10006320C(v11, v12);
      if (v14)
      {
        if ([*(*(a2 + 56) + 8 * v13) identifier])
        {
          break;
        }
      }

LABEL_6:
      ++v10;
      v9 += 2;
      if (v7 == v5)
      {
        v4 = v24;
        goto LABEL_18;
      }
    }

    sub_1000B5780();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000B57C0();
    }

    a1 = sub_1000B57F0();
    v4 = v24;
    v8 = v23;
  }

  while (v7 != v5);
LABEL_18:
  a1 = [v4 subFolderIdentifiersOrderedSet];
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_34;
  }

  v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    a1 = a1;
    v18 = a1;
    if (!v17)
    {
      break;
    }

    v19 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        a1 = sub_1000B5C20();
      }

      else
      {
        if (v19 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        a1 = _swiftEmptyArrayStorage[v19 + 4];
      }

      v20 = a1;
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v18 addObject:a1];

      ++v19;
      if (v21 == v17)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v22 = a1;
    v17 = sub_1000B5CF0();
    a1 = v22;
  }

LABEL_29:

  [v24 setSubFolderOrderMergeableDataDirty:1];
  [v24 saveSubFolderMergeableDataIfNeeded];
  return [v24 subFolderIdentifiersOrderedSetDocument];
}

uint64_t sub_100056B04()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_1001075F8);
  sub_100036380(v0, qword_1001075F8);
  return sub_1000B5510();
}

uint64_t sub_100056B50(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100107650, &qword_1000CB9B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_100057C34();
  sub_1000B6020();
  LOBYTE(v16) = *v3;
  v17 = 0;
  sub_10004E214();
  sub_1000B5EB0();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v16) = 1;
    sub_1000B5E70();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v16) = 2;
    sub_1000B5E20();
    LOBYTE(v16) = *(v3 + 40);
    v17 = 3;
    sub_100057C88();
    sub_1000B5E60();
    v16 = *(v3 + 48);
    v17 = 4;
    sub_100030480(&qword_100107538, &unk_1000CB9C0);
    sub_1000583B8(&qword_1001075C8, &qword_1001075D0);
    sub_1000B5E60();
    v16 = *(v3 + 56);
    v17 = 5;
    sub_100030480(&unk_100107548, &qword_1000CB760);
    sub_100055CC0(&qword_1001075D8);
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100056E6C()
{
  v1 = *v0;
  v2 = 0x6E65644965707974;
  v3 = 1701869940;
  v4 = 1936154996;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

uint64_t sub_100056F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100057D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100056F50(uint64_t a1)
{
  v2 = sub_100057C34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100056F8C(uint64_t a1)
{
  v2 = sub_100057C34();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100056FC8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100057F30(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_100057024(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4C41434F4CLL;
  }

  else
  {
    v2 = 0x44554F4C43;
  }

  if (*a2)
  {
    v3 = 0x4C41434F4CLL;
  }

  else
  {
    v3 = 0x44554F4C43;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000B5F20();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000570A4()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100057114()
{
  *v0;
  sub_1000B56A0();
}

Swift::Int sub_100057168()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_1000571D4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F3490;
  v8._object = v3;
  v5 = sub_1000B5D60(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100057234(uint64_t *a1@<X8>)
{
  v2 = 0x44554F4C43;
  if (*v1)
  {
    v2 = 0x4C41434F4CLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_100057330()
{
  sub_100058680();
  sub_10005862C();

  return sub_1000B4FF0();
}

uint64_t sub_1000573B8()
{
  sub_100058680();
  sub_10005862C();

  return sub_1000B5010();
}

void sub_100057430(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000B5BA0();
      sub_1000362AC(0, &qword_100107350, ICHashtag_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000362AC(0, &qword_100107350, ICHashtag_ptr);
    if (sub_1000B5B70() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1000B5B80();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_1000B5A90(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_1000B5AA0();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100057654(int a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  if (qword_100106A38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000B5530();
  sub_100036380(v2, qword_1001075F8);
  v3 = sub_1000B5520();
  v4 = sub_1000B5930();
  if (os_log_type_enabled(v3, v4))
  {
    v1 = 2;
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown account type — returning nil", v5, 2u);
  }

  else
  {

    return 2;
  }

  return v1;
}

uint64_t sub_100057760@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_10004CE38(a2);
  v5 = [a1 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000B5620();
    v39 = v8;
  }

  else
  {
    v7 = 0;
    v39 = 0xE000000000000000;
  }

  v9 = [a1 localizedName];
  v10 = sub_1000B5620();
  v36 = v11;
  v37 = v10;

  v35 = sub_100057654([a1 accountType]);
  v12 = [a1 hashtags];
  sub_1000362AC(0, &qword_100107350, ICHashtag_ptr);
  sub_100057A9C();
  v13 = sub_1000B5830();

  v14 = sub_10005619C(v13);

  v15 = sub_100087CEC(v14);

  v38 = a1;
  v16 = [a1 subFolderIdentifiersOrderedSet];
  v17 = [v16 allObjects];

  sub_1000362AC(0, &qword_100106FE8, NSString_ptr);
  v18 = sub_1000B57A0();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v15;
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_16:

    v22 = _swiftEmptyArrayStorage;
LABEL_17:
    LOBYTE(v41) = 1;
    *(&v41 + 1) = v7;
    *&v42 = v39;
    *(&v42 + 1) = v37;
    *&v43 = v36;
    BYTE8(v43) = v35;
    *&v44 = v34;
    *(&v44 + 1) = v22;
    LOBYTE(v45[0]) = 1;
    v45[1] = v7;
    v45[2] = v39;
    v45[3] = v37;
    v45[4] = v36;
    v46 = v35;
    v47 = v34;
    v48 = v22;
    sub_100057B04(&v41, v40);
    result = sub_10004570C(v45);
    v31 = v42;
    *a3 = v41;
    a3[1] = v31;
    v32 = v44;
    a3[2] = v43;
    a3[3] = v32;
    return result;
  }

  v19 = sub_1000B5CF0();
  v34 = v15;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_6:
  v45[0] = _swiftEmptyArrayStorage;
  result = sub_1000432C4(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v33 = v7;
    v21 = 0;
    v22 = v45[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = sub_1000B5C20();
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = sub_1000B5620();
      v27 = v26;

      v45[0] = v22;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        sub_1000432C4((v28 > 1), v29 + 1, 1);
        v22 = v45[0];
      }

      ++v21;
      v22[2] = v29 + 1;
      v30 = &v22[2 * v29];
      v30[4] = v25;
      v30[5] = v27;
    }

    while (v19 != v21);

    v7 = v33;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_100057A9C()
{
  result = qword_100107358;
  if (!qword_100107358)
  {
    sub_1000362AC(255, &qword_100107350, ICHashtag_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107358);
  }

  return result;
}

uint64_t sub_100057B3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 sub_100057B48(uint64_t a1, uint64_t a2)
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

uint64_t sub_100057B5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100057BA4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100057C04(uint64_t a1)
{
  *(a1 + 8) = sub_1000456B8();
  result = sub_100050F88();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100057C34()
{
  result = qword_100107658;
  if (!qword_100107658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107658);
  }

  return result;
}

unint64_t sub_100057C88()
{
  result = qword_100107660;
  if (!qword_100107660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107660);
  }

  return result;
}

uint64_t sub_100057CDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s3TagVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000C71B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000B5F20();

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

uint64_t sub_100057F30@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100030480(&qword_100107668, &qword_1000CB9D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_100057C34();
  sub_1000B6010();
  if (v2)
  {
    sub_100035DA8(a1);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_1000316AC();
    sub_1000B5E00();
    v11 = LOBYTE(v35[0]);
    LOBYTE(v35[0]) = 1;
    v12 = sub_1000B5DC0();
    v14 = v13;
    v29 = v12;
    LOBYTE(v35[0]) = 2;
    v28 = sub_1000B5D70();
    v30 = v15;
    LOBYTE(v31) = 3;
    sub_100058364();
    sub_1000B5DB0();
    v27 = LOBYTE(v35[0]);
    sub_100030480(&qword_100107538, &unk_1000CB9C0);
    LOBYTE(v31) = 4;
    sub_1000583B8(&qword_1001075A0, &qword_1001075A8);
    sub_1000B5DB0();
    v26 = v11;
    v16 = v35[0];
    sub_100030480(&unk_100107548, &qword_1000CB760);
    v39 = 5;
    sub_100055CC0(&qword_1001075B0);
    sub_1000B5DB0();
    (*(v6 + 8))(v9, v5);
    v25 = v40;
    v17 = v26;
    LOBYTE(v31) = v26;
    v19 = v28;
    v18 = v29;
    *(&v31 + 1) = v29;
    *&v32 = v14;
    v20 = v30;
    *(&v32 + 1) = v28;
    *&v33 = v30;
    BYTE8(v33) = v27;
    *&v34 = v16;
    *(&v34 + 1) = v40;
    sub_100057B04(&v31, v35);
    sub_100035DA8(a1);
    LOBYTE(v35[0]) = v17;
    v35[1] = v18;
    v35[2] = v14;
    v35[3] = v19;
    v35[4] = v20;
    v36 = v27;
    v37 = v16;
    v38 = v25;
    result = sub_10004570C(v35);
    v22 = v32;
    *a2 = v31;
    a2[1] = v22;
    v23 = v34;
    a2[2] = v33;
    a2[3] = v23;
  }

  return result;
}

unint64_t sub_100058364()
{
  result = qword_100107670;
  if (!qword_100107670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107670);
  }

  return result;
}

uint64_t sub_1000583B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_100107538, &unk_1000CB9C0);
    sub_100057CDC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100058468()
{
  result = qword_100107678;
  if (!qword_100107678)
  {
    sub_10003052C(&qword_100107680, &qword_1000CBA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107678);
  }

  return result;
}

unint64_t sub_1000584D0()
{
  result = qword_100107688;
  if (!qword_100107688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107688);
  }

  return result;
}

unint64_t sub_100058528()
{
  result = qword_100107690;
  if (!qword_100107690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107690);
  }

  return result;
}

unint64_t sub_100058580()
{
  result = qword_100107698;
  if (!qword_100107698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107698);
  }

  return result;
}

unint64_t sub_1000585D8()
{
  result = qword_1001076A0;
  if (!qword_1001076A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001076A0);
  }

  return result;
}

unint64_t sub_10005862C()
{
  result = qword_1001076A8;
  if (!qword_1001076A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001076A8);
  }

  return result;
}

unint64_t sub_100058680()
{
  result = qword_1001076B0;
  if (!qword_1001076B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001076B0);
  }

  return result;
}

uint64_t sub_1000586D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v5;
    sub_1000658B4(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    v14 = sub_1000B4DB0();
    result = (*(*(v14 - 8) + 8))(a5, v14);
    *v5 = v34;
  }

  else
  {
    v16 = *v5;
    v17 = sub_100063054(a5);
    if (v18)
    {
      v19 = v17;
      v20 = *v6;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v6;
      v35 = *v6;
      if (!v21)
      {
        sub_10005C8D4();
        v22 = v35;
      }

      v23 = *(v22 + 48);
      v24 = sub_1000B4DB0();
      v25 = *(v24 - 8);
      v26 = *(v25 + 8);
      v26(v23 + *(v25 + 72) * v19, v24);
      v27 = (*(v22 + 56) + 32 * v19);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];

      sub_10005B9A4(v19, v22);
      result = (v26)(a5, v24);
      *v6 = v22;
    }

    else
    {
      v32 = sub_1000B4DB0();
      v33 = *(*(v32 - 8) + 8);

      return v33(a5, v32);
    }
  }

  return result;
}

uint64_t sub_1000588D0()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_1001076C0);
  sub_100036380(v0, qword_1001076C0);
  return sub_1000B5510();
}

id sub_10005891C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_1000B5450();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  __chkstk_darwin(v0);
  v28 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000B5970();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v26);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000B5960();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_1000B5560();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v25 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_queue;
  v24[1] = sub_1000362AC(0, &unk_1001077C0, OS_dispatch_queue_ptr);
  v33 = sub_100030480(&qword_1001077D0, &qword_1000CBD30);
  sub_100030480(&qword_1001077D8, &qword_1000CBD38);
  v24[0] = sub_1000B5660();
  sub_1000B5550();
  v33 = _swiftEmptyArrayStorage;
  sub_10005D7AC(&qword_1001077E0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100030480(&qword_1001077E8, &qword_1000CBD40);
  sub_10005D7F4(&qword_1001077F0, &qword_1001077E8, &qword_1000CBD40);
  v11 = v27;
  sub_1000B5B10();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *&v11[v25] = sub_1000B59A0();
  v12 = objc_allocWithZone(NSUserDefaults);
  v13 = sub_1000B55F0();
  v14 = [v12 initWithSuiteName:v13];

  if (!v14)
  {
    v14 = [objc_opt_self() standardUserDefaults];
  }

  *&v11[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_userDefaults] = v14;
  v15 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_allowedContentTypes;
  sub_100030480(&qword_1001077F8, &qword_1000CBD48);
  v16 = v29;
  v17 = *(v29 + 72);
  v18 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000CAB50;
  v20 = [objc_opt_self() universalTypeIdentifier];
  v21 = v28;
  sub_1000B5440();

  (*(v16 + 32))(v19 + v18, v21, v30);
  *&v11[v15] = v19;
  v22 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_importStates;
  *&v11[v22] = sub_100030A6C(_swiftEmptyArrayStorage);
  *&v11[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_archiveImporter] = [objc_allocWithZone(type metadata accessor for ICArchiveImporter()) init];
  v32.receiver = v11;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, "init");
}

id sub_100058DD0(uint64_t a1)
{
  v33 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_1000B5450();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  __chkstk_darwin(v1);
  v29 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000B5970();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v27);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000B5960();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = sub_1000B5560();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v26 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_queue;
  v25[2] = sub_1000362AC(0, &unk_1001077C0, OS_dispatch_queue_ptr);
  v35 = sub_100030480(&qword_1001077D0, &qword_1000CBD30);
  sub_100030480(&qword_1001077D8, &qword_1000CBD38);
  v25[1] = sub_1000B5660();
  sub_1000B5550();
  v35 = _swiftEmptyArrayStorage;
  sub_10005D7AC(&qword_1001077E0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100030480(&qword_1001077E8, &qword_1000CBD40);
  sub_10005D7F4(&qword_1001077F0, &qword_1001077E8, &qword_1000CBD40);
  sub_1000B5B10();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  v12 = v28;
  *&v12[v26] = sub_1000B59A0();
  v13 = objc_allocWithZone(NSUserDefaults);
  v14 = sub_1000B55F0();
  v15 = [v13 initWithSuiteName:v14];

  if (!v15)
  {
    v15 = [objc_opt_self() standardUserDefaults];
  }

  *&v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_userDefaults] = v15;
  v16 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_allowedContentTypes;
  sub_100030480(&qword_1001077F8, &qword_1000CBD48);
  v17 = v30;
  v18 = *(v30 + 72);
  v19 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000CAB50;
  v21 = [objc_opt_self() universalTypeIdentifier];
  v22 = v29;
  sub_1000B5440();

  (*(v17 + 32))(v20 + v19, v22, v31);
  *&v12[v16] = v20;
  v23 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_importStates;
  *&v12[v23] = sub_100030A6C(_swiftEmptyArrayStorage);
  *&v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_archiveImporter] = v33;
  v34.receiver = v12;
  v34.super_class = ObjectType;
  return objc_msgSendSuper2(&v34, "init");
}

uint64_t sub_1000592E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_userDefaults);
  v2 = [objc_opt_self() userDefaultsKey];
  if (!v2)
  {
    sub_1000B5620();
    v2 = sub_1000B55F0();
  }

  v3 = [v1 BOOLForKey:v2];

  if (!v3)
  {
    return 0;
  }

  if (sub_1000B4C90() == 0x6372617365746F6ELL && v4 == 0xEC00000065766968)
  {

    return 1;
  }

  else
  {
    v6 = sub_1000B5F20();

    return v6 & 1;
  }
}

uint64_t sub_1000594D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000B4DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_importStates;
  swift_beginAccess();
  if (!*(*&v3[v11] + 16) || (sub_100063054(a1), (v12 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    v13 = *&v3[v11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *&v3[v11];
    *&v3[v11] = 0x8000000000000000;
    sub_1000658B4(0, _swiftEmptyArrayStorage, 0, 0, a1, isUniquelyReferenced_nonNull_native);
    *&v3[v11] = v26;
    swift_endAccess();
    sub_1000362AC(0, &unk_1001077C0, OS_dispatch_queue_ptr);
    v15 = sub_1000B5980();
    (*(v9 + 16))(&aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    (*(v9 + 32))(v17 + v16, &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = a2;
    v18[1] = a3;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_10005D6E0;
    *(v19 + 24) = v17;
    aBlock[4] = sub_10005D784;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100059F54;
    aBlock[3] = &unk_1000F4998;
    v20 = _Block_copy(aBlock);
    v21 = v4;

    dispatch_sync(v15, v20);

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1000597E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_1000B4DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v57 - v13;
  v15 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  v62 = a2;
  v63 = a1;
  v20 = *(a1 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_archiveImporter);
  v21 = ICArchiveImporter.objects(forArchiveAt:)();
  v64 = a4;
  v65 = a3;
  v59 = v14;
  v60 = v9;
  v61 = v8;
  v38 = v21[2];
  v58 = v21;
  v39 = 0;
  if (v38)
  {
    v42 = *(v16 + 16);
    v41 = v16 + 16;
    v40 = v42;
    v43 = v21 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v31 = *(v41 + 56);
    while (1)
    {
      v40(v19, v43, v15);
      v44 = sub_1000B5060();
      (*(v41 - 8))(v19, v15);
      v45 = __OFADD__(v39, v44);
      v39 += v44;
      if (v45)
      {
        break;
      }

      v43 += v31;
      if (!--v38)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    swift_once();
    v22 = sub_1000B5530();
    sub_100036380(v22, qword_1001076C0);
    swift_errorRetain();
    v23 = sub_1000B5520();
    v24 = sub_1000B5920();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = v31;
      v27 = swift_slowAlloc();
      v66[0] = v27;
      *v25 = 136315138;
      swift_getErrorValue();
      v28 = sub_1000B5F60();
      v30 = sub_100062B20(v28, v29, v66);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error getting objects for archive {error: %s}", v25, 0xCu);
      sub_100035DA8(v27);
      v31 = v26;
    }

    v32 = v61;
    v33 = v38;
    (*(v38 + 16))(v61, v62, v31);
    swift_beginAccess();
    v35 = sub_100059DC4(v66);
    if (v34[1])
    {
      v36 = *v34;
      *v34 = v39;
      swift_errorRetain();
    }

    (v35)(v66, 0);
    swift_endAccess();
    (*(v33 + 8))(v32, v31);
    v65(0);
  }

  else
  {
LABEL_11:
    v47 = v60;
    v46 = v61;
    if (qword_100106A40 != -1)
    {
      swift_once();
    }

    v48 = sub_1000B5530();
    sub_100036380(v48, qword_1001076C0);
    v49 = sub_1000B5520();
    v50 = sub_1000B5910();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v65;
    v53 = v59;
    if (v51)
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v49, v50, "Created objects for archive {noteCount: %ld}", v54, 0xCu);
    }

    (*(v47 + 16))(v53, v62, v46);
    swift_beginAccess();
    v56 = sub_100059DC4(v66);
    if (*(v55 + 8))
    {
      *(v55 + 8) = v58;
    }

    (v56)(v66, 0);
    swift_endAccess();

    result = (*(v47 + 8))(v53, v46);
    if (v39 < 0)
    {
      __break(1u);
    }

    else
    {
      return v52(v39);
    }
  }

  return result;
}

void (*sub_100059DC4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_1000B4DB0();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10005D098(v3, v8);
  return sub_100059EDC;
}

void sub_100059EDC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_10005A0B0()
{
  v0 = objc_allocWithZone(NSError);
  v1 = NSCocoaErrorDomain;
  v2 = [v0 initWithDomain:v1 code:3072 userInfo:0];

  qword_1001076D8 = v2;
}

void sub_10005A11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, void (*a8)(void), void (*a9)(void))
{
  v100 = a8;
  v97 = a6;
  v86 = a5;
  v85 = a4;
  v90 = a3;
  v89 = a2;
  v12 = sub_1000B5540();
  v95 = *(v12 - 8);
  v13 = *(v95 + 64);
  __chkstk_darwin(v12);
  v93 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000B5560();
  v92 = *(v94 - 8);
  v15 = *(v92 + 64);
  __chkstk_darwin(v94);
  v91 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000B4DB0();
  v101 = *(v17 - 8);
  v18 = *(v101 + 64);
  v19 = __chkstk_darwin(v17);
  v88 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v87 = &v76 - v21;
  __chkstk_darwin(v20);
  v23 = &v76 - v22;
  v24 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_importStates;
  swift_beginAccess();
  v99 = v9;
  v25 = *&v9[v24];
  if (*(v25 + 16) && (v26 = sub_100063054(a1), (v27 & 1) != 0))
  {
    v102 = a1;
    v98 = a9;
    v28 = (*(v25 + 56) + 32 * v26);
    v30 = *v28;
    v29 = v28[1];
    v32 = v28[2];
    v31 = v28[3];
    swift_endAccess();
    v96 = a7;
    if (v30)
    {
      swift_errorRetain();
      swift_errorRetain();
      v33 = v31;

      v34 = v32;
      v35 = sub_1000B4C60();
      if (qword_100106A48 != -1)
      {
        swift_once();
      }

      v36 = qword_1001076D8;
      sub_1000362AC(0, &qword_100106F08, NSError_ptr);
      v37 = v36;
      v38 = sub_1000B5AA0();

      if ((v38 & 1) == 0)
      {
        v97(v30);
      }

      sub_10005AA24(v102);
      v100();
    }

    else
    {
      v82 = v12;
      v39 = v29;
      v40 = objc_allocWithZone(NSProgress);
      v77 = v31;
      v80 = v31;
      v81 = v39;

      v79 = v32;
      v78 = v32;
      v41 = [v40 init];
      v42 = v102;
      v84 = *(v101 + 16);
      v84(v23, v102, v17);
      v43 = v99;
      swift_beginAccess();
      v45 = sub_100059DC4(aBlock);
      v46 = *(v44 + 8);
      v83 = v41;
      if (v46)
      {
        v47 = *(v44 + 16);
        *(v44 + 16) = v41;
        v48 = v41;

        v42 = v102;
      }

      (v45)(aBlock, 0);
      v49 = v87;
      swift_endAccess();
      v87 = *(v101 + 8);
      (v87)(v23, v17);
      v84(v49, v42, v17);
      swift_beginAccess();
      v51 = sub_100059DC4(aBlock);
      if (*(v50 + 8))
      {
        v52 = v50;
        aBlock[6] = v83;
        v76 = v51;
        swift_getKeyPath();
        v53 = swift_allocObject();
        *(v53 + 16) = v85;
        *(v53 + 24) = v86;

        v54 = sub_1000B4C80();

        v55 = *(v52 + 24);
        *(v52 + 24) = v54;

        v76(aBlock, 0);
      }

      else
      {
        (v51)(aBlock, 0);
      }

      swift_endAccess();
      (v87)(v49, v17);
      v87 = *&v43[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_queue];
      v56 = v88;
      v84(v88, v102, v17);
      v57 = v101;
      v58 = (*(v101 + 80) + 56) & ~*(v101 + 80);
      v59 = (v18 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      *(v61 + 2) = v43;
      *(v61 + 3) = 0;
      v62 = v79;
      *(v61 + 4) = v81;
      *(v61 + 5) = v62;
      *(v61 + 6) = v77;
      (*(v57 + 32))(&v61[v58], v56, v17);
      v63 = &v61[v59];
      v64 = v90;
      *v63 = v89;
      *(v63 + 1) = v64;
      v65 = &v61[v60];
      v66 = v96;
      *v65 = v97;
      *(v65 + 1) = v66;
      v67 = &v61[(v60 + 23) & 0xFFFFFFFFFFFFFFF8];
      v68 = v98;
      *v67 = v100;
      v67[1] = v68;
      aBlock[4] = sub_10005CF9C;
      aBlock[5] = v61;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10005AEE0;
      aBlock[3] = &unk_1000F48F8;
      v69 = _Block_copy(aBlock);

      v70 = v78;
      v71 = v80;
      v72 = v43;

      v73 = v91;
      sub_1000B5550();
      aBlock[7] = _swiftEmptyArrayStorage;
      sub_10005D7AC(&qword_1001077A0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100030480(&qword_1001077A8, &unk_1000CBD20);
      sub_10005D7F4(&unk_1001077B0, &qword_1001077A8, &unk_1000CBD20);
      v74 = v93;
      v75 = v82;
      sub_1000B5B10();
      sub_1000B5990();
      _Block_release(v69);

      (*(v95 + 8))(v74, v75);
      (*(v92 + 8))(v73, v94);
    }
  }

  else
  {
    swift_endAccess();
    __break(1u);
  }
}

void sub_10005AA24(uint64_t a1)
{
  v23 = sub_1000B4DB0();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_importStates;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16) && (v9 = sub_100063054(a1), (v10 & 1) != 0))
  {
    v22 = a1;
    v11 = (*(v8 + 56) + 32 * v9);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    swift_endAccess();
    v16 = v13;

    v17 = v12;
    swift_errorRetain();
    v18 = v15;
    v21 = v14;
    [v14 cancel];
    if (v15)
    {
      v19 = v18;
      sub_1000B4C50();
    }

    v20 = v21;
    a1 = v22;
  }

  else
  {
    swift_endAccess();
    v17 = 0;
    v16 = 0;
    v20 = 0;
    v15 = 0;
  }

  (*(v3 + 16))(v6, a1, v23);
  swift_beginAccess();
  sub_1000586D4(0, 0, 0, 0, v6);
  swift_endAccess();
  sub_10005B780(v17, v16, v20, v15);
}

void sub_10005AC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void))
{
  v14 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_importStates;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if (!*(v15 + 16) || (v16 = sub_100063054(a6), (v17 & 1) == 0))
  {
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  v18 = (*(v15 + 56) + 32 * v16);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = v18[3];

  v23 = v21;
  v24 = v22;
  v25 = v23;
  swift_errorRetain();
  swift_endAccess();
  sub_10005B780(v19, v20, v21, v22);
  if (v21)
  {
    v26 = a7();
    v27 = [v26 managedObjectContext];
    if (v27)
    {
      v28 = v27;
      __chkstk_darwin(v27);
      sub_1000B5A60();
      v29 = [objc_opt_self() sharedGenerator];
      [v29 generatePreviewsIfNeeded];

      sub_10005AA24(a6);
      a11();

      return;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  sub_1000B5CE0();
  __break(1u);
}

uint64_t sub_10005AEE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10005B154(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v12 = [a1 folder];
  if (v12)
  {
    v13 = v12;
    [a2 deleteObject:a1];
    v14 = type metadata accessor for ICArchiveImporter();
    v15 = (*(a3 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_archiveImporter) + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager);
    v16 = *v15;
    v17 = v15[1];
    swift_unknownObjectRetain();
    v20[0] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v20[1] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v24 = 2;
    ObjectType = swift_getObjectType();
    v19 = sub_10004436C(a2, v20, v16, 0, 0, v14, ObjectType, v17);
    ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(a4, a5, v13, a6);
  }

  else
  {
    __break(1u);
  }
}

char *sub_10005B29C()
{
  v1 = v0;
  v55 = sub_1000B4DB0();
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v55);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_importStates;
  swift_beginAccess();
  v7 = *&v0[v6];
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v47 = v2 + 16;
  v48 = v7;
  v50 = (v2 + 8);
  swift_bridgeObjectRetain_n();
  result = v0;
  v42 = result;
  v43 = v8;
  v14 = 0;
  v45 = v5;
  v46 = v2;
  v51 = v6;
  while (v11)
  {
LABEL_11:
    v22 = *(v48 + 48);
    v49 = *(v2 + 72);
    (*(v2 + 16))(v5, v22 + v49 * (__clz(__rbit64(v11)) | (v14 << 6)), v55);
    swift_beginAccess();
    v23 = *&v1[v6];
    if (*(v23 + 16) && (v24 = sub_100063054(v5), (v25 & 1) != 0))
    {
      v26 = (*(v23 + 56) + 32 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v20 = v26[3];
      swift_endAccess();
      v53 = v28;

      v54 = v27;
      swift_errorRetain();
      v30 = v20;
      v52 = v29;
      v31 = v29;
      [v31 cancel];
      if (v20)
      {
        v32 = v30;
        sub_1000B4C50();
      }

      v5 = v45;
      v2 = v46;
    }

    else
    {
      swift_endAccess();
      v53 = 0;
      v54 = 0;
      v52 = 0;
      v20 = 0;
    }

    swift_beginAccess();
    v33 = *&v1[v6];
    v34 = sub_100063054(v5);
    if (v35)
    {
      v36 = v34;
      v44 = v20;
      v37 = v51;
      v38 = *&v1[v51];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *&v1[v37];
      v56 = v40;
      v41 = v1;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10005C8D4();
        v40 = v56;
      }

      (*v50)((*(v40 + 48) + v36 * v49), v55);
      v15 = (*(v40 + 56) + 32 * v36);
      v16 = *v15;
      v17 = v15[1];
      v19 = v15[2];
      v18 = v15[3];

      sub_10005B9A4(v36, v40);
      *&v41[v37] = v40;
      v1 = v41;
      v5 = v45;
      v2 = v46;
      v8 = v43;
      v20 = v44;
    }

    v11 &= v11 - 1;
    swift_endAccess();
    sub_10005B780(v54, v53, v52, v20);
    result = (*v50)(v5, v55);
    v6 = v51;
  }

  while (1)
  {
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v21 >= v12)
    {
    }

    v11 = *(v8 + 8 * v21);
    ++v14;
    if (v11)
    {
      v14 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005B6E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10005B730(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10005B780(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
  }
}

void sub_10005B7DC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000B5B30() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_1000B5620();
      sub_1000B5FB0();
      v12 = v11;
      sub_1000B56A0();
      v13 = sub_1000B5FE0();

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
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
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
}

unint64_t sub_10005B9A4(int64_t a1, uint64_t a2)
{
  v44 = sub_1000B4DB0();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = sub_1000B5B30();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v42 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v40 = a2 + 64;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v41(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10005D7AC(&unk_100107790, &type metadata accessor for URL);
      v26 = sub_1000B5590();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v11);
          if (a1 != v11 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_10005BCC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000B5B30() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1000B5FA0();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_10005BE34()
{
  v1 = v0;
  v38 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v40 = *(v38 - 8);
  v2 = *(v40 + 64);
  __chkstk_darwin(v38);
  v37 = &v32 - v3;
  sub_100030480(&unk_100107810, &unk_1000CBD60);
  v4 = *v0;
  v5 = sub_1000B5D00();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v39 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    v36 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v40;
        v21 = *(v40 + 72) * v19;
        v22 = v37;
        v23 = v38;
        (*(v40 + 16))(v37, *(v4 + 48) + v21, v38);
        v24 = 24 * v19;
        v25 = *(v4 + 56) + 24 * v19;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = v39;
        v29 = *(v20 + 32);
        LOBYTE(v20) = *(v25 + 16);
        v29(*(v39 + 48) + v21, v22, v23);
        v30 = *(v28 + 56);
        v4 = v36;
        v31 = v30 + v24;
        *v31 = v26;
        *(v31 + 8) = v27;
        *(v31 + 16) = v20;
        result = sub_100035D34(v26, v27, v20);
        v14 = v41;
      }

      while (v41);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v32;
        v6 = v39;
        goto LABEL_18;
      }

      v18 = *(v33 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_10005C0DC()
{
  v1 = v0;
  sub_100030480(&qword_100106EF0, &unk_1000CADC0);
  v2 = *v0;
  v3 = sub_1000B5D00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10005C248()
{
  v1 = v0;
  sub_100030480(&unk_100107820, &unk_1000CBD70);
  v2 = *v0;
  v3 = sub_1000B5D00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100030378(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100030C64(v19, (*(v4 + 56) + 32 * v17));
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_10005C3C8()
{
  v1 = v0;
  v34 = sub_1000B4DB0();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030480(&qword_100106B10, &qword_1000CA378);
  v4 = *v0;
  v5 = sub_1000B5D00();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_errorRetain();
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_10005C648()
{
  v1 = v0;
  v36 = sub_1000B4F00();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030480(&qword_100106AF8, &unk_1000CA360);
  v4 = *v0;
  v5 = sub_1000B5D00();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_10005C8D4()
{
  v1 = v0;
  v2 = sub_1000B4DB0();
  v3 = *(v2 - 8);
  v43 = v2;
  v44 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030480(&qword_100106AD0, &unk_1000CA320);
  v6 = *v0;
  v7 = sub_1000B5D00();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v36 = v1;
    v37 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v45 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = v44 + 32;
    v39 = v44 + 16;
    v40 = v17;
    v41 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v43;
        v23 = v44;
        v24 = *(v44 + 72) * v21;
        v25 = v42;
        (*(v44 + 16))(v42, *(v6 + 48) + v24, v43);
        v26 = *(v6 + 56);
        v27 = 32 * v21;
        v28 = (v26 + 32 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[3];
        v46 = v28[2];
        v32 = v45;
        (*(v23 + 32))(*(v45 + 48) + v24, v25, v22);
        v33 = (*(v32 + 56) + v27);
        v6 = v41;
        *v33 = v29;
        v33[1] = v30;
        v34 = v46;
        v33[2] = v46;
        v33[3] = v31;
        swift_errorRetain();
        v35 = v31;

        result = v34;
        v17 = v40;
        v16 = v47;
      }

      while (v47);
    }

    v19 = v12;
    v8 = v45;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v36;
        goto LABEL_18;
      }

      v20 = *(v37 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_10005CB80()
{
  v1 = v0;
  sub_100030480(&unk_100107800, &unk_1000CBD50);
  v2 = *v0;
  v3 = sub_1000B5D00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_10005CCCC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10005CD04()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

void sub_10005CD50()
{
  v1 = *(v0 + 16);
  v2 = sub_1000B4C60();
  (*(v1 + 16))(v1, v2);
}

id sub_10005CDC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 completedUnitCount];
  *a2 = result;
  return result;
}

uint64_t sub_10005CE0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005CE44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_10005CE70()
{
  v1 = sub_1000B4DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v0 + 24);

  v9 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v6 + 8);

  v12 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

void sub_10005CF9C()
{
  v1 = *(sub_1000B4DB0() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 1);
  sub_10005AC0C(v0[2], v0[3], v0[4], v0[5], v0[6], v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *v5);
}

uint64_t sub_10005D05C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_10005D098(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1000B4DB0();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_10005D574(v6);
  v6[12] = sub_10005D26C(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_10005D1D4;
}

void sub_10005D1D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_10005D26C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x58uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 32) = a2;
  *(v8 + 40) = v3;
  v10 = sub_1000B4DB0();
  *(v9 + 48) = v10;
  v11 = *(v10 - 8);
  *(v9 + 56) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 64) = v12;
  v13 = *v3;
  v14 = sub_100063054(a2);
  *(v9 + 80) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10005C8D4();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100064CA4(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_100063054(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1000B5F50();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 72) = v14;
  if (v20)
  {
    v25 = *(*v4 + 56) + 32 * v14;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0uLL;
  }

  *v9 = v26;
  *(v9 + 8) = v27;
  *(v9 + 16) = v28;
  return sub_10005D430;
}

void sub_10005D430(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = *(*a1 + 80);
  if (v3)
  {
    v7 = *v1[5];
    v8 = v1[9];
    if ((*a1)[10])
    {
      v9 = (v7[7] + 32 * v8);
      *v9 = v2;
      v9[1] = v3;
      v9[2] = v4;
      v9[3] = v5;
    }

    else
    {
      v12 = v1[8];
      (*(v1[7] + 16))(v12, v1[4], v1[6]);
      sub_100065DE4(v8, v12, v2, v3, v4, v5, v7);
    }
  }

  else if ((*a1)[10])
  {
    v10 = v1[9];
    v11 = *v1[5];
    (*(v1[7] + 8))(*(v11 + 48) + *(v1[7] + 72) * v10, v1[6]);
    sub_10005B9A4(v10, v11);
  }

  v13 = v1[8];
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  sub_10005D5A8(v2, v3, v4, v5);
  sub_10005B780(v14, v15, v16, v17);
  free(v13);

  free(v1);
}

uint64_t (*sub_10005D574(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10005D59C;
}

void sub_10005D5A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    v5 = a4;

    v6 = a3;
  }
}

uint64_t sub_10005D604()
{
  v1 = sub_1000B4DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10005D6E0()
{
  v1 = *(sub_1000B4DB0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1000597E8(v3, v0 + v2, v5, v6);
}

uint64_t sub_10005D784()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10005D7AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005D7F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005D860()
{
  v0 = sub_1000B5430();
  sub_10003640C(v0, qword_100112BF0);
  sub_100036380(v0, qword_100112BF0);
  sub_100030480(&qword_1001078D0, &qword_1000CC060);
  v1 = (sub_100030480(&qword_1001078D8, &qword_1000CC068) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000CBD80;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_1000B5410();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "creation_date_millis_since_epoch";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "last_modified_date_millis_since_epoch";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "tags";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "audio_attachments_meta";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  return sub_1000B5420();
}

uint64_t sub_10005DB44()
{
  result = sub_1000B5310();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        v3 = v0;
        switch(result)
        {
          case 4:
            v7 = *(type metadata accessor for NoteMetadata(0) + 40);
LABEL_18:
            v0 = v3;
            sub_1000B5330();
            break;
          case 5:
            sub_1000B5340();
            break;
          case 6:
            type metadata accessor for AudioAttachmentMetadata(0);
            sub_10005EFDC(&qword_100107898, type metadata accessor for AudioAttachmentMetadata);
            sub_1000B5360();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v5 = v0;
            v6 = *(type metadata accessor for NoteMetadata(0) + 28);
            break;
          case 2:
            v5 = v0;
            v8 = *(type metadata accessor for NoteMetadata(0) + 32);
            break;
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for NoteMetadata(0) + 36);
            goto LABEL_18;
          default:
            goto LABEL_5;
        }

        v0 = v5;
        sub_1000B5350();
      }

LABEL_5:
      result = sub_1000B5310();
    }
  }

  return result;
}

uint64_t sub_10005DCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10005E8DC(v3, a1, a2, a3, type metadata accessor for NoteMetadata);
  if (!v4)
  {
    sub_10005E960(v3, a1, a2, a3, type metadata accessor for NoteMetadata);
    sub_10005DE8C(v3);
    sub_10005DF04(v3);
    if (*(*v3 + 16))
    {
      sub_1000B53E0();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for AudioAttachmentMetadata(0);
      sub_10005EFDC(&qword_100107898, type metadata accessor for AudioAttachmentMetadata);
      sub_1000B5400();
    }

    v9 = v3 + *(type metadata accessor for NoteMetadata(0) + 24);
    return sub_1000B52A0();
  }

  return result;
}

uint64_t sub_10005DE8C(uint64_t a1)
{
  result = type metadata accessor for NoteMetadata(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1000B53D0();
  }

  return result;
}

uint64_t sub_10005DF04(uint64_t a1)
{
  result = type metadata accessor for NoteMetadata(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1000B53D0();
  }

  return result;
}

uint64_t sub_10005DF7C@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  a2[1] = _swiftEmptyArrayStorage;
  v4 = a2 + a1[6];
  result = sub_1000B52B0();
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  v10[8] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[8] = 1;
  return result;
}

uint64_t sub_10005E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1000B52C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10005E084(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1000B52C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_10005E0F8(uint64_t a1, uint64_t a2))()
{
  result = ICCloudSyncingObject.MoveAction.Types.rawValue.getter;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_10005E150(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005EFDC(&qword_1001078C8, type metadata accessor for NoteMetadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005E1F4(uint64_t a1)
{
  v2 = sub_10005EFDC(&qword_100106FA0, type metadata accessor for NoteMetadata);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10005E264()
{
  sub_10005EFDC(&qword_100106FA0, type metadata accessor for NoteMetadata);

  return sub_1000B53B0();
}

uint64_t sub_10005E2E8()
{
  v0 = sub_1000B5430();
  sub_10003640C(v0, qword_100112C08);
  sub_100036380(v0, qword_100112C08);
  sub_100030480(&qword_1001078D0, &qword_1000CC060);
  v1 = (sub_100030480(&qword_1001078D8, &qword_1000CC068) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000CBD80;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_1000B5410();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "audio_file_name";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "audio_name";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "transcript_file_name";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "summary_file_name";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "is_call_recording";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  return sub_1000B5420();
}

uint64_t sub_10005E5B4()
{
  while (1)
  {
    result = sub_1000B5310();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for AudioAttachmentMetadata(0) + 32);
          goto LABEL_3;
        case 5:
          v8 = *(type metadata accessor for AudioAttachmentMetadata(0) + 36);
LABEL_3:
          v0 = 0;
          sub_1000B5350();
          break;
        case 6:
          v5 = *(type metadata accessor for AudioAttachmentMetadata(0) + 40);
          sub_1000B5320();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v6 = *(type metadata accessor for AudioAttachmentMetadata(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for AudioAttachmentMetadata(0) + 24);
          goto LABEL_3;
        case 3:
          v4 = *(type metadata accessor for AudioAttachmentMetadata(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_10005E6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10005E7EC(v3);
  if (!v4)
  {
    sub_10005E864(v3);
    sub_10005E8DC(v3, a1, a2, a3, type metadata accessor for AudioAttachmentMetadata);
    sub_10005E960(v3, a1, a2, a3, type metadata accessor for AudioAttachmentMetadata);
    sub_10005E9E4(v3);
    sub_10005EA5C(v3);
    return sub_1000B52A0();
  }

  return result;
}

uint64_t sub_10005E7EC(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1000B53F0();
  }

  return result;
}

uint64_t sub_10005E864(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1000B53F0();
  }

  return result;
}

uint64_t sub_10005E8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1000B53F0();
  }

  return result;
}

uint64_t sub_10005E960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1000B53F0();
  }

  return result;
}

uint64_t sub_10005E9E4(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1000B53F0();
  }

  return result;
}

uint64_t sub_10005EA5C(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_1000B53C0();
  }

  return result;
}

uint64_t sub_10005EAD8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000B52B0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  *(a2 + v11) = 2;
  return result;
}

uint64_t sub_10005EB58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000B52C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10005EBC0(uint64_t a1)
{
  v3 = sub_1000B52C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_10005EC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005EFDC(&qword_1001078E8, type metadata accessor for AudioAttachmentMetadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005ECF8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1000B5430();
  v6 = sub_100036380(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_10005ED94(uint64_t a1)
{
  v2 = sub_10005EFDC(&qword_100107898, type metadata accessor for AudioAttachmentMetadata);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_10005EE00()
{
  sub_1000B5FB0();
  sub_1000B55A0();
  return sub_1000B5FE0();
}

uint64_t sub_10005EE58()
{
  sub_10005EFDC(&qword_100107898, type metadata accessor for AudioAttachmentMetadata);

  return sub_1000B53B0();
}

Swift::Int sub_10005EED4()
{
  sub_1000B5FB0();
  sub_1000B55A0();
  return sub_1000B5FE0();
}

uint64_t sub_10005EFDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005F11C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005F22C(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1000B5F20() & 1) == 0)
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

uint64_t sub_10005F2BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_10005F874(v14, v11);
        sub_10005F874(v15, v8);
        v17 = sub_10005F430(v11, v8);
        sub_10005F8D8(v8);
        sub_10005F8D8(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_10005F430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1000B5F20();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1000B5F20();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
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

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_1000B5F20();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_1000B5F20();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_1000B5F20();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[10];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 != 2)
  {
    if (v46 != 2 && ((v45 ^ v46) & 1) == 0)
    {
      goto LABEL_50;
    }

    return 0;
  }

  if (v46 != 2)
  {
    return 0;
  }

LABEL_50:
  sub_1000B52C0();
  sub_10005EFDC(&qword_1001078E0, &type metadata accessor for UnknownStorage);
  return sub_1000B55E0() & 1;
}

uint64_t sub_10005F6A0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NoteMetadata(0);
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1000B5F20();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1000B5F20();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v4[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v4;
  if (sub_10005F22C(*a1, *a2) & 1) != 0 && (sub_10005F2BC(a1[1], a2[1]))
  {
    v32 = v31[6];
    sub_1000B52C0();
    sub_10005EFDC(&qword_1001078E0, &type metadata accessor for UnknownStorage);
    return sub_1000B55E0() & 1;
  }

  return 0;
}

uint64_t sub_10005F874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F8D8(uint64_t a1)
{
  v2 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005F948(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000B52C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10005FA08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000B52C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10005FAAC()
{
  sub_10005FEDC(319, &qword_100107958, &type metadata for String, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10005FBE4();
    if (v1 <= 0x3F)
    {
      sub_1000B52C0();
      if (v2 <= 0x3F)
      {
        sub_10005FEDC(319, &qword_100106CA0, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10005FEDC(319, &unk_100107968, &type metadata for Int64, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10005FBE4()
{
  if (!qword_100107960)
  {
    type metadata accessor for AudioAttachmentMetadata(255);
    v0 = sub_1000B5810();
    if (!v1)
    {
      atomic_store(v0, &qword_100107960);
    }
  }
}

uint64_t sub_10005FC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B52C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10005FD30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000B52C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10005FDEC()
{
  sub_1000B52C0();
  if (v0 <= 0x3F)
  {
    sub_10005FEDC(319, &qword_100106CA0, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10005FEDC(319, &qword_100107080, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10005FEDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ICArchivePreviewer.__allocating_init(forArchiveAt:)(void (**a1)(char *, uint64_t))
{
  v2 = swift_allocObject();
  ICArchivePreviewer.init(forArchiveAt:)(a1);
  return v2;
}

id ICArchivePreviewer.startPreviewing(_:completion:)(uint64_t *a1, void (*a2)(void *, uint64_t), void *a3)
{
  v4 = v3;
  v76 = a2;
  v77 = a3;
  v6 = sub_1000B4DB0();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  __chkstk_darwin(v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v73 - v16;
  __chkstk_darwin(v15);
  v19 = &v73 - v18;
  swift_beginAccess();
  v20 = *(v3 + 24);
  if (*(v20 + 16) && (v21 = sub_100063128(a1), (v22 & 1) != 0))
  {
    v73 = a1;
    v23 = *(v20 + 56) + 24 * v21;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    swift_endAccess();
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        swift_errorRetain();
        v76(v25, 1);
        v46 = [objc_allocWithZone(NSProgress) init];
        sub_100065534(v25, v24, 2);
        return v46;
      }

      else
      {
        v51 = [objc_opt_self() progressWithTotalUnitCount:1];
        sub_100030480(&qword_100106D88, &qword_1000CAAF8);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1000CAB50;
        v53 = swift_allocObject();
        v54 = v77;
        *(v53 + 16) = v76;
        *(v53 + 24) = v54;
        *(v52 + 32) = sub_100063208;
        *(v52 + 40) = v53;
        swift_beginAccess();

        v77 = v51;
        v55 = *(v4 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = *(v4 + 24);
        *(v4 + 24) = 0x8000000000000000;
        v57 = v73;
        sub_100065318(v51, v52, 0, v73, isUniquelyReferenced_nonNull_native);
        *(v4 + 24) = v79;
        swift_endAccess();
        v58 = v11;
        v59 = *(v11 + 16);
        v59(v19, v57, v10);
        v60 = *(v58 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = v4;
        v74 = *(v58 + 32);
        v75 = v61;
        v62 = v19;
        v63 = v10;
        (v74)(v61 + ((v60 + 24) & ~v60), v62, v10);
        v76 = *(v4 + 16);
        v59(v17, v73, v10);
        v64 = (v60 + 16) & ~v60;
        v65 = (v12 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
        v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
        v67 = swift_allocObject();
        (v74)(v67 + v64, v17, v63);
        v68 = v77;
        *(v67 + v65) = v77;
        *(v67 + v66) = v4;
        v69 = (v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8));
        v70 = v75;
        *v69 = sub_100065514;
        v69[1] = v70;
        aBlock[4] = sub_100065518;
        aBlock[5] = v67;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100062AB8;
        aBlock[3] = &unk_1000F4A38;
        v71 = _Block_copy(aBlock);
        swift_retain_n();
        v72 = v68;

        [v76 performBackgroundTask:v71];
        _Block_release(v71);

        return v72;
      }
    }

    else if (v26)
    {
      v47 = objc_opt_self();
      v48 = v25;
      v49 = [v47 progressWithTotalUnitCount:1];
      [v49 setCompletedUnitCount:{objc_msgSend(v49, "totalUnitCount")}];
      v50 = v48;
      v76(v25, 0);
      sub_100065534(v25, v24, 1);
      sub_100065534(v25, v24, 1);
      return v49;
    }

    else
    {
      sub_100030480(&qword_100106D88, &qword_1000CAAF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CAB50;
      v28 = swift_allocObject();
      v29 = v77;
      *(v28 + 16) = v76;
      *(v28 + 24) = v29;
      *(inited + 32) = sub_100067D5C;
      *(inited + 40) = v28;
      aBlock[0] = v24;
      sub_100035D34(v25, v24, 0);
      v30 = v25;

      sub_100063430(inited);
      v31 = aBlock[0];
      swift_beginAccess();
      v32 = *(v4 + 24);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v79 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      sub_100065318(v25, v31, 0, v73, v33);
      *(v4 + 24) = v79;
      swift_endAccess();
      return v30;
    }
  }

  else
  {
    swift_endAccess();
    if (qword_100106A60 != -1)
    {
      swift_once();
    }

    v35 = sub_1000B5530();
    sub_100036380(v35, qword_100107A58);
    v36 = v11;
    (*(v11 + 16))(v14, a1, v10);
    v37 = sub_1000B5520();
    v38 = sub_1000B5930();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v39 = 136315138;
      sub_1000B5040();
      sub_100066EA8(&qword_100106F10, &type metadata accessor for URL);
      v40 = v75;
      v41 = sub_1000B5EE0();
      v43 = v42;
      (*(v74 + 8))(v9, v40);
      (*(v36 + 8))(v14, v10);
      v44 = sub_100062B20(v41, v43, aBlock);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Object to be previewed does not exist {url: %s}", v39, 0xCu);
      sub_100035DA8(v73);
    }

    else
    {

      (*(v36 + 8))(v14, v10);
    }

    sub_1000363B8();
    swift_allocError();
    *v45 = 4;
    (v76)();

    return [objc_allocWithZone(NSProgress) init];
  }
}

void ICArchivePreviewer.stopPreviewing(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000B4DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v41 - v12);
  swift_beginAccess();
  v14 = v1[3];
  if (!*(v14 + 16) || (v15 = sub_100063128(a1), (v16 & 1) == 0))
  {
    v44 = v5;
    swift_endAccess();
    if (qword_100106A60 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  v17 = *(v14 + 56) + 24 * v15;
  v18 = *v17;
  v4 = *(v17 + 8);
  v19 = *(v17 + 16);
  swift_endAccess();
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      swift_beginAccess();
      v38 = v2[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v2[3];
      v2[3] = 0x8000000000000000;
      v36 = v18;
      v37 = v4;
      goto LABEL_15;
    }

LABEL_14:
    swift_beginAccess();
    v34 = v2[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v2[3];
    v2[3] = 0x8000000000000000;
    v36 = 0;
    v37 = 0;
LABEL_15:
    sub_100065318(v36, v37, 3, a1, isUniquelyReferenced_nonNull_native);
    v2[3] = v45;
    swift_endAccess();
    return;
  }

  if (!v19)
  {
    v9 = v18;

    [v9 cancel];
    swift_beginAccess();
    v20 = v2[3];
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v2[3];
    v2[3] = 0x8000000000000000;
    sub_100065318(0, 0, 3, a1, v21);
    v2[3] = v45;
    swift_endAccess();
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v10 = *(v4 + 16);
    if (!v10)
    {
LABEL_9:

      return;
    }

    v8 = 0;
    v13 = (v4 + 40);
    while (v8 < *(v4 + 16))
    {
      ++v8;
      v23 = *(v13 - 1);
      v22 = *v13;
      v46 = v2;
      v47 = 1;

      v23(&v46);

      v13 += 2;
      if (v10 == v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
LABEL_11:
    v24 = sub_1000B5530();
    sub_100036380(v24, qword_100107A58);
    (*(v10 + 16))(v13, a1, v9);
    v25 = sub_1000B5520();
    v26 = sub_1000B5930();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v43 = a1;
      v28 = v27;
      v42 = swift_slowAlloc();
      v46 = v42;
      *v28 = 136315138;
      sub_1000B5040();
      sub_100066EA8(&qword_100106F10, &type metadata accessor for URL);
      v29 = sub_1000B5EE0();
      v30 = v4;
      v32 = v31;
      (*(v44 + 8))(v8, v30);
      (*(v10 + 8))(v13, v9);
      v33 = sub_100062B20(v29, v32, &v46);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Object to be previewed does not exist {url: %s}", v28, 0xCu);
      sub_100035DA8(v42);

      a1 = v43;
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    goto LABEL_14;
  }

  [v18 setMarkedForDeletion:1];
  swift_beginAccess();
  v39 = v2[3];
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v2[3];
  v2[3] = 0x8000000000000000;
  sub_100065318(0, 0, 3, a1, v40);
  v2[3] = v45;
  swift_endAccess();
  sub_100065534(v18, v4, 1);
}

uint64_t sub_100060E14()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100107A58);
  sub_100036380(v0, qword_100107A58);
  return sub_1000B5510();
}

uint64_t ICArchivePreviewer.init(forArchiveAt:)(void (**a1)(char *, uint64_t))
{
  v3 = v1;
  v5 = *v1;
  v78 = sub_100030480(&qword_100106AD8, &unk_1000CA330);
  v83 = *(v78 - 8);
  v6 = *(v83 + 64);
  __chkstk_darwin(v78);
  v8 = v70 - v7;
  v87 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v84 = *(v87 - 8);
  v9 = *(v84 + 64);
  __chkstk_darwin(v87);
  v82 = v70 - v10;
  v1[3] = sub_10002FF88(&_swiftEmptyArrayStorage);
  v11 = (v1 + 3);
  v12 = [objc_opt_self() sharedContext];
  if (!v12 || (v13 = v12, v14 = [v12 persistentContainer], v13, !v14))
  {
    if (qword_100106A60 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_6;
  }

  v75 = v8;
  v76 = v11;
  v3[2] = v14;
  v77 = v14;
  v15 = [v77 viewContext];
  v16 = type metadata accessor for ICArchiveImporter();
  v81 = objc_allocWithZone(v16);
  ObjectType = swift_getObjectType();
  v17 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v79 = v2;
  v19 = IsAlexandriaDemoModeEnabled;
  v20 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v21 = objc_allocWithZone(v16);
  v21[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting] = 0;
  v22 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  *&v21[v22] = sub_100030190(&_swiftEmptyArrayStorage);
  *&v21[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_saveBatchSize] = 32;
  v21[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v23 = &v21[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v23 = 0u;
  v23[1] = 0u;
  *&v21[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context] = v15;
  v24 = &v21[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
  *v24 = v19;
  v24[1] = v20;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = 0;
  *(v24 + 16) = 2;
  v25 = &v21[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager];
  *v25 = v17;
  v25[1] = &protocol witness table for NSFileManager;
  v86.receiver = v21;
  v86.super_class = v16;
  v26 = v15;
  v27 = objc_msgSendSuper2(&v86, "init");
  sub_100037400();

  swift_deallocPartialClassInstance();
  v28 = v79;
  v29 = ICArchiveImporter.objects(forArchiveAt:)();
  if (v28)
  {
    v30 = sub_1000B4DB0();
    (*(*(v30 - 8) + 8))(a1, v30);

    return v3;
  }

  v71 = v27;
  v72 = 0;
  v38 = v29[2];
  v73 = a1;
  v74 = v3;
  if (v38)
  {
    v39 = *(v84 + 16);
    v40 = *(v84 + 80);
    v70[1] = v29;
    v79 = (v40 + 32) & ~v40;
    ObjectType = v39;
    v41 = v29 + v79;
    v3 = *(v84 + 72);
    v81 = (v84 + 16);
    a1 = (v84 + 8);
    v42 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v43 = v82;
      v44 = v87;
      ObjectType(v82, v41, v87);
      v45 = sub_1000B5050();
      (*a1)(v43, v44);
      v46 = *(v45 + 16);
      v47 = v42[2];
      v48 = v47 + v46;
      if (__OFADD__(v47, v46))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        swift_once();
LABEL_6:
        v31 = sub_1000B5530();
        sub_100036380(v31, qword_100107A58);
        v32 = sub_1000B5520();
        v33 = sub_1000B5930();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "No shared note context has been set up", v34, 2u);
        }

        [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:134060 userInfo:0];
        swift_willThrow();
        v35 = sub_1000B4DB0();
        (*(*(v35 - 8) + 8))(a1, v35);
        v36 = v3[3];

        swift_deallocPartialClassInstance();
        return v3;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v48 <= v42[3] >> 1)
      {
        if (*(v45 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v47 <= v48)
        {
          v50 = v47 + v46;
        }

        else
        {
          v50 = v47;
        }

        v42 = sub_1000335D4(isUniquelyReferenced_nonNull_native, v50, 1, v42);
        if (*(v45 + 16))
        {
LABEL_23:
          if ((v42[3] >> 1) - v42[2] < v46)
          {
            goto LABEL_43;
          }

          swift_arrayInitWithCopy();

          if (v46)
          {
            v51 = v42[2];
            v52 = __OFADD__(v51, v46);
            v53 = v51 + v46;
            if (v52)
            {
              goto LABEL_44;
            }

            v42[2] = v53;
          }

          goto LABEL_13;
        }
      }

      if (v46)
      {
        goto LABEL_42;
      }

LABEL_13:
      v41 = v3 + v41;
      if (!--v38)
      {

        a1 = v73;
        v3 = v74;
        goto LABEL_29;
      }
    }
  }

  v42 = &_swiftEmptyArrayStorage;
LABEL_29:
  v54 = v42[2];
  v55 = v75;
  if (v54)
  {
    v85 = &_swiftEmptyArrayStorage;
    sub_100043240(0, v54, 0);
    v56 = v85;
    v82 = *(v84 + 16);
    v57 = v42 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v84 += 16;
    v58 = *(v84 + 56);
    v59 = v78;
    do
    {
      (v82)(v55, v57, v87);
      v60 = v55 + *(v59 + 48);
      *v60 = 0;
      *(v60 + 8) = 0;
      *(v60 + 16) = 3;
      v85 = v56;
      v62 = v56[2];
      v61 = v56[3];
      if (v62 >= v61 >> 1)
      {
        sub_100043240(v61 > 1, v62 + 1, 1);
        v59 = v78;
        v56 = v85;
      }

      v56[2] = v62 + 1;
      sub_1000669DC(v55, v56 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v62);
      v57 += v58;
      --v54;
    }

    while (v54);

    a1 = v73;
    v3 = v74;
  }

  else
  {

    v56 = &_swiftEmptyArrayStorage;
  }

  v63 = v72;
  if (v56[2])
  {
    sub_100030480(&unk_100107810, &unk_1000CBD60);
    v64 = sub_1000B5D20();
  }

  else
  {
    v64 = &_swiftEmptyDictionarySingleton;
  }

  v65 = v77;
  v85 = v64;
  sub_100066444(v56, 1, &v85);
  if (!v63)
  {
    v66 = sub_1000B4DB0();
    (*(*(v66 - 8) + 8))(a1, v66);

    v67 = v85;
    v68 = v76;
    swift_beginAccess();
    v69 = *v68;
    *v68 = v67;

    return v3;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}