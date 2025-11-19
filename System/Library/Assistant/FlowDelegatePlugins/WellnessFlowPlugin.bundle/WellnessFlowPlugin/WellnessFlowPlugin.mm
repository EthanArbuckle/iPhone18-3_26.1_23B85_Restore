uint64_t variable initialization expression of GenericBinaryButtonSnippet._context()
{
  sub_16E12C();
  sub_20EC();

  return sub_16DC6C();
}

unint64_t sub_20EC()
{
  result = qword_1C5608;
  if (!qword_1C5608)
  {
    sub_16E12C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5608);
  }

  return result;
}

uint64_t variable initialization expression of HeightQueryModel.dateLabel()
{
  sub_2594();
  sub_16D5CC();
  v0 = sub_2564();

  return sub_214C(v0, v1, v2, v3);
}

uint64_t variable initialization expression of BloodPressureQueryModel.url()
{
  sub_2594();
  sub_16BE9C();
  v0 = sub_2564();

  return sub_214C(v0, v1, v2, v3);
}

uint64_t _s18WellnessFlowPlugin016LogBloodPressureB0C23catLoggingWrapperSimple33_19615545966715E74D03477B0A4DCD5FLLAA0ah4CATsJ0Cvpfi_0()
{
  v0 = *(*(sub_16D63C() - 8) + 64);
  __chkstk_darwin();
  type metadata accessor for WellnessLoggingCATsSimple();
  sub_16D62C();
  return sub_16D5FC();
}

uint64_t variable initialization expression of PhoneRingsSnippet._dynamicTypeSize@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2440(&qword_1C5610, &qword_1763B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2378(uint64_t a1)
{
  v2 = *(*(sub_16DC4C() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_16DC8C();
}

uint64_t sub_2440(uint64_t *a1, uint64_t *a2)
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

uint64_t variable initialization expression of SleepQueryModel.appPunchout()
{
  sub_2594();
  sub_16C11C();
  v0 = sub_2564();

  return sub_214C(v0, v1, v2, v3);
}

uint64_t variable initialization expression of SleepQueryModel.snippetHeaderModel()
{
  sub_2594();
  type metadata accessor for SnippetHeaderModel();
  v0 = sub_2564();

  return sub_214C(v0, v1, v2, v3);
}

uint64_t sub_2504@<X0>(uint64_t *a1@<X8>)
{
  result = _s18WellnessFlowPlugin26SingleActivitySummaryModelV4date16SiriDialogEngine0J8CalendarCSgvpfi_0();
  *a1 = result;
  return result;
}

unint64_t sub_25A0(uint64_t *a1, char a2, char a3)
{
  v6 = a1[4];
  sub_2D20(a1, a1[3]);
  v7 = sub_16C3FC();
  v8 = a1[4];
  sub_2D20(a1, a1[3]);
  v9 = sub_16C41C();
  v10 = a1[4];
  sub_2D20(a1, a1[3]);
  v11 = sub_16C40C();
  v12 = (v11 | v7) & a2;
  sub_2D64(a1);
  v13 = 0x100000000;
  if ((a3 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x1000000;
  if ((v12 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 0x10000;
  if ((v7 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = 256;
  if ((v9 & 1) == 0)
  {
    v16 = 0;
  }

  return (v15 | v13 | v16) & 0xFFFFFFFFFFFFFFFELL | v11 & 1 | v14;
}

BOOL sub_2698(int a1)
{
  sub_2440(&qword_1C5678, &qword_16F308);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16F2F0;
  *(inited + 32) = BYTE2(a1) & 1;
  *(inited + 33) = a1 & 1;
  *(inited + 34) = BYTE1(a1) & 1;
  v3 = 32;
  do
  {
    v4 = v3;
    if (v3 == 35)
    {
      break;
    }

    v5 = *(inited + v3++);
  }

  while (v5 != 1);
  v6 = v4 != 35;

  return v6;
}

uint64_t sub_2730(unint64_t a1)
{
  if (BYTE3(a1) == 2)
  {
    goto LABEL_2;
  }

  v3 = a1 >> 24;
  if (!sub_2698((a1 >> 24) & 0x1010101))
  {
    return 2;
  }

  if ((v3 & 0x10000) == 0 && (v3 & 1) == 0 || ((v3 & 0x1000000) == 0 ? (result = 3) : (result = 4), (v3 & 0x101000000) == 0x1000000))
  {
LABEL_2:
    if (BYTE2(a1) <= 6u)
    {
      return (0x10000050100uLL >> ((a1 >> 13) & 0x38));
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t sub_27C4(unsigned __int16 a1)
{
  v1 = a1;
  v2 = sub_16DBEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 == 270)
  {
    return 6;
  }

  v8 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v6, v8, v2);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v18[7] = v1;
    v13 = sub_16E1EC();
    v15 = sub_3AB7C(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&def_259DC, v9, v10, "Selecting querying flow for dataType: %s", v11, 0xCu);
    sub_2D64(v12);
  }

  (*(v3 + 8))(v6, v2);
  result = 0;
  v16 = v1 + 37;
  if ((v1 - 219) > 0x32)
  {
    goto LABEL_9;
  }

  if (((1 << v16) & 0x73D0838D52801) != 0)
  {
    return result;
  }

  if (((1 << v16) & 0x2045201000) != 0)
  {
    return 2;
  }

LABEL_9:
  if ((v1 - 18) < 3)
  {
    return 1;
  }

  v17 = (v1 - 159) < 2 || v1 == 17;
  if (!v17 && v1 != 76)
  {
    if (v1 == 174)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

BOOL sub_2A50(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = BYTE2(a1);
  result = 0;
  switch(v3)
  {
    case 1:

      return 1;
    case 9:
      return result;
    default:
      v5 = sub_16E6BC();

      if (v5)
      {
        return 1;
      }

      if (sub_158B28(v2) == 0x657461647075 && v6 == 0xE600000000000000)
      {

        if (v1 == 270)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_16E6BC();

        result = 0;
        if (v1 == 270 || (v8 & 1) == 0)
        {
          return result;
        }
      }

      return sub_C1AF4(v1, &off_1B80D8);
  }
}

uint64_t sub_2C74(unint64_t a1)
{
  v1 = a1;
  if (a1 == 270)
  {
    return 4;
  }

  if (!sub_2A50(a1))
  {
    return 3;
  }

  result = 0;
  if ((v1 - 230) > 0x27 || ((1 << (v1 + 26)) & 0xE7A00708A5) == 0)
  {
    if ((v1 - 18) < 3)
    {
      return 2;
    }

    if (v1 != 17 && v1 != 76)
    {
      if (v1 == 191)
      {
        return 1;
      }

      if (v1 != 159)
      {
        if (v1 == 128)
        {
          return 1;
        }

        return 3;
      }
    }
  }

  return result;
}

void *sub_2D20(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2D64(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2DB0()
{
  v33 = sub_16BF5C();
  v1 = sub_42F0(v33);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v11);
  v13 = *(v12 + 64);
  sub_433C();
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = sub_16BD9C();
  v18 = sub_42F0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_4304();
  v25 = v24 - v23;
  v26 = type metadata accessor for SynthesizedWellnessIntent();
  sub_4270(v0 + *(v26 + 24), v16, &qword_1C5690, &dword_16F320);
  if (sub_369C(v16, 1, v17) == 1)
  {
    sub_4208(v16);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v25, v16, v17);
    sub_16BF4C();
    if (sub_16BD8C())
    {
      (*(v3 + 8))(v10, v33);
      (*(v20 + 8))(v25, v17);
      return 2;
    }

    else
    {
      sub_16BD4C();
      v28 = sub_16BF0C();
      v29 = *(v3 + 8);
      v30 = v8;
      v31 = v33;
      v29(v30, v33);
      v29(v10, v31);
      (*(v20 + 8))(v25, v17);
      return (v28 & 1) == 0;
    }
  }
}

uint64_t sub_3054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_2440(&qword_1C5680, &unk_16F310);
  sub_4348(v3);
  v5 = *(v4 + 64);
  sub_433C();
  __chkstk_darwin(v6);
  v90 = &v86 - v7;
  v8 = sub_2440(&qword_1C5688, &unk_16F500);
  sub_4348(v8);
  v10 = *(v9 + 64);
  sub_433C();
  __chkstk_darwin(v11);
  v13 = &v86 - v12;
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v16 = *(v15 + 64);
  sub_433C();
  __chkstk_darwin(v17);
  v19 = &v86 - v18;
  v20 = type metadata accessor for SynthesizedWellnessIntent();
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  sub_4304();
  v25 = v24 - v23;
  v26 = v21[8];
  v27 = sub_16BD9C();
  sub_214C(v25 + v26, 1, 1, v27);
  v28 = v21[12];
  v29 = v21[13];
  v87 = v21[10];
  v88 = v29;
  v30 = v25 + v28;
  v31 = sub_16CE0C();
  sub_438C(v31);
  v89 = v21[14];
  v32 = sub_16CC6C();
  sub_438C(v32);
  sub_42CC();
  v34 = *(v33 + 16);
  v35 = sub_42BC();
  *v25 = v36(v35);
  sub_42CC();
  v38 = *(v37 + 24);
  v39 = sub_42BC();
  *(v25 + 2) = v40(v39);
  v41 = a1[3];
  v42 = a1[4];
  sub_4314();
  v43 = *(v42 + 32);
  v44 = sub_42BC();
  v45(v44);
  sub_344C(v19, v25 + v26, &qword_1C5690, &dword_16F320);
  sub_42CC();
  v47 = *(v46 + 40);
  v48 = sub_42BC();
  *(v25 + v21[9]) = v49(v48) & 1;
  sub_42CC();
  v51 = *(v50 + 48);
  v52 = sub_42BC();
  v54 = v53(v52);
  *(v25 + v87) = v54;
  sub_42CC();
  v56 = *(v55 + 56);
  v57 = sub_42BC();
  *(v25 + v21[11]) = v58(v57);
  sub_42CC();
  v60 = *(v59 + 64);
  v61 = sub_42BC();
  *v30 = v62(v61);
  *(v30 + 8) = v63 & 1;
  v64 = a1[3];
  v65 = a1[4];
  sub_4314();
  v66 = *(v65 + 72);
  v67 = sub_42BC();
  v68(v67);
  sub_344C(v13, v25 + v88, &qword_1C5688, &unk_16F500);
  v69 = a1[3];
  v70 = a1[4];
  sub_4314();
  v71 = *(v70 + 80);
  v72 = v90;
  v73 = sub_432C();
  v74(v73);
  sub_344C(v72, v25 + v89, &qword_1C5680, &unk_16F310);
  v75 = a1[3];
  v76 = a1[4];
  sub_4314();
  v77 = *(v76 + 88);
  v78 = sub_432C();
  *(v25 + v21[15]) = v79(v78) & 1;
  v80 = a1[3];
  v81 = a1[4];
  sub_4314();
  v82 = *(v81 + 96);
  v83 = sub_432C();
  *(v25 + v21[16]) = v84(v83) & 1;
  sub_3498(v25, v91);
  sub_2D64(a1);
  return sub_34FC(v25);
}

uint64_t type metadata accessor for SynthesizedWellnessIntent()
{
  result = qword_1C56F0;
  if (!qword_1C56F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_344C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_43AC(a1, a2, a3, a4);
  sub_4378(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_3498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynthesizedWellnessIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_34FC(uint64_t a1)
{
  v2 = type metadata accessor for SynthesizedWellnessIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_356C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  v7 = sub_436C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = sub_2440(&qword_1C5688, &unk_16F500);
    v14 = sub_436C(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = a3[11];
    }

    else
    {
      v9 = sub_2440(&qword_1C5680, &unk_16F310);
      v10 = a3[12];
    }

LABEL_3:

    return sub_369C(a1 + v10, a2, v9);
  }

  v12 = *(a1 + a3[9]);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t sub_36D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2440(&qword_1C5690, &dword_16F320);
  result = sub_436C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[9]) = (a2 - 1);
      return result;
    }

    v13 = sub_2440(&qword_1C5688, &unk_16F500);
    v14 = sub_436C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[11];
    }

    else
    {
      v11 = sub_2440(&qword_1C5680, &unk_16F310);
      v12 = a4[12];
    }
  }

  return sub_214C(a1 + v12, a2, a2, v11);
}

void sub_3804()
{
  sub_3A10(319, &qword_1C5700);
  if (v0 <= 0x3F)
  {
    sub_3A5C(319, &qword_1C5708, &type metadata accessor for DateInterval, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_3A10(319, &qword_1C5710);
      if (v2 <= 0x3F)
      {
        sub_3A5C(319, &qword_1C5718, &type metadata accessor for UsoEntity_common_MeasurementComponent, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_3A10(319, &qword_1C5720);
          if (v4 <= 0x3F)
          {
            sub_3A5C(319, &qword_1C5728, &type metadata accessor for UsoEntity_common_MeasurementQualifier.DefinedValues, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_3A5C(319, &unk_1C5730, &type metadata accessor for UsoEntity_common_ListPosition.DefinedValues, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
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

void sub_3A10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_16E3EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_3A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_3AC0()
{
  v1 = v0;
  v2 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_16BD9C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_4304();
  v16 = v15 - v14;
  v17 = sub_16C0EC();
  v18 = sub_42F0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_4304();
  v25 = v24 - v23;
  v26 = [objc_allocWithZone(NSDateIntervalFormatter) init];
  [v26 setDateStyle:1];
  sub_16C0DC();
  isa = sub_16C0CC().super.isa;
  (*(v20 + 8))(v25, v17);
  [v26 setTimeZone:isa];

  v28 = type metadata accessor for SynthesizedWellnessIntent();
  sub_4270(v1 + v28[6], v7, &qword_1C5690, &dword_16F320);
  if (sub_369C(v7, 1, v8) == 1)
  {
    sub_4208(v7);
    v29 = 0xE300000000000000;
    v30 = 7104878;
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    v31 = sub_16BD2C().super.isa;
    v32 = [v26 stringFromDateInterval:v31];

    if (v32)
    {
      v30 = sub_16E1BC();
      v29 = v33;
    }

    else
    {
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    (*(v11 + 8))(v16, v8);
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_16E47C(171);
  v49._countAndFlagsBits = 0x203A62726576;
  v49._object = 0xE600000000000000;
  sub_16E26C(v49);
  LOBYTE(v45) = *v1;
  sub_16E52C();
  v50._countAndFlagsBits = 0x707954617461640ALL;
  v50._object = 0xEB00000000203A65;
  sub_16E26C(v50);
  LOWORD(v45) = *(v1 + 2);
  sub_2440(&qword_1C5790, &unk_16F3B0);
  v51._countAndFlagsBits = sub_16E3DC();
  sub_4354(v51);

  v52._countAndFlagsBits = 0x6E6152657461640ALL;
  v52._object = 0xEC000000203A6567;
  sub_16E26C(v52);
  v53._countAndFlagsBits = v30;
  v53._object = v29;
  sub_16E26C(v53);

  v54._object = 0x800000000017A8A0;
  v54._countAndFlagsBits = 0xD000000000000013;
  sub_16E26C(v54);
  if (*(v1 + v28[7]))
  {
    v34._countAndFlagsBits = 1702195828;
  }

  else
  {
    v34._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + v28[7]))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  v34._object = v35;
  sub_16E26C(v34);

  v55._countAndFlagsBits = 0xD000000000000012;
  v55._object = 0x800000000017A8C0;
  sub_16E26C(v55);
  LOBYTE(v45) = *(v1 + v28[8]);
  sub_2440(&qword_1C5798, &qword_1728A0);
  v56._countAndFlagsBits = sub_16E3DC();
  sub_4354(v56);

  v57._object = 0x800000000017A8E0;
  v57._countAndFlagsBits = 0xD000000000000013;
  sub_16E26C(v57);
  v36 = (v1 + v28[10]);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  v45 = v37;
  v46 = v36;
  sub_2440(&qword_1C57A0, &qword_16F3C0);
  v58._countAndFlagsBits = sub_16E3DC();
  sub_4354(v58);

  v59._countAndFlagsBits = 0xD000000000000017;
  v59._object = 0x800000000017A900;
  sub_16E26C(v59);
  v38 = v28[11];
  sub_2440(&qword_1C5688, &unk_16F500);
  v60._countAndFlagsBits = sub_16E3DC();
  sub_4354(v60);

  v61._countAndFlagsBits = 0x736F507473696C0ALL;
  v61._object = 0xEF203A6E6F697469;
  sub_16E26C(v61);
  v39 = v28[12];
  sub_2440(&qword_1C5680, &unk_16F310);
  v62._countAndFlagsBits = sub_16E3DC();
  sub_4354(v62);

  v63._countAndFlagsBits = 0x726174537361680ALL;
  v63._object = 0xEF203A6574614474;
  sub_16E26C(v63);
  if (*(v1 + v28[13]))
  {
    v40._countAndFlagsBits = 1702195828;
  }

  else
  {
    v40._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + v28[13]))
  {
    v41 = 0xE400000000000000;
  }

  else
  {
    v41 = 0xE500000000000000;
  }

  v40._object = v41;
  sub_16E26C(v40);

  v64._countAndFlagsBits = 0x44646E457361680ALL;
  v64._object = 0xED0000203A657461;
  sub_16E26C(v64);
  if (*(v1 + v28[14]))
  {
    v42._countAndFlagsBits = 1702195828;
  }

  else
  {
    v42._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + v28[14]))
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v42._object = v43;
  sub_16E26C(v42);

  return v47;
}

uint64_t sub_40EC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

unint64_t sub_4188(uint64_t a1)
{
  result = sub_41B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_41B0()
{
  result = qword_1C5788;
  if (!qword_1C5788)
  {
    type metadata accessor for SynthesizedWellnessIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5788);
  }

  return result;
}

uint64_t sub_4208(uint64_t a1)
{
  v2 = sub_2440(&qword_1C5690, &dword_16F320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_43AC(a1, a2, a3, a4);
  sub_4378(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void *sub_4314()
{

  return sub_2D20(v0, v1);
}

void sub_4354(Swift::String a1)
{

  sub_16E26C(a1);
}

uint64_t sub_438C(uint64_t a1)
{

  return sub_214C(v2 + v1, 1, 1, a1);
}

uint64_t sub_43AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2440(a3, a4);
}

uint64_t sub_43D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 250))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_4414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 250) = 1;
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

    *(result + 250) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_44AC()
{
  sub_87A0();

  return sub_16C33C();
}

uint64_t sub_4500()
{
  sub_8A88();
  v1[114] = v0;
  v1[113] = v2;
  v3 = type metadata accessor for UnavailableDataFlow();
  v1[115] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[116] = sub_8BC0();
  v6 = sub_16D63C();
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[117] = sub_8BC0();
  v9 = sub_16DBEC();
  v1[118] = v9;
  sub_888C(v9);
  v1[119] = v10;
  v12 = *(v11 + 64);
  v1[120] = sub_8C38();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_4608()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 952);
  v3 = *(v0 + 944);
  *(v0 + 1056) = *(*(v0 + 912) + 249);
  sub_16D78C();
  v4 = sub_50C8();
  *(v0 + 984) = v4;
  v5 = sub_16DBBC();
  *(v0 + 992) = v5;
  sub_8B48();
  v6 = *(v2 + 16);
  *(v0 + 1000) = v6;
  *(v0 + 1008) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = v4;
  v8 = sub_16DBDC();
  sub_16E36C();

  if (sub_8CFC())
  {
    sub_8BD8();
    v9 = sub_8A44();
    *v5 = 138412290;
    *(v5 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    sub_88FC(&def_259DC, v11, v12, "Created intent: %@");
    sub_8748(v9, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_8A2C();
  }

  v13 = *(v0 + 976);
  v14 = *(v0 + 952);
  v15 = *(v0 + 944);
  v16 = *(v0 + 912);

  v17 = *(v14 + 8);
  *(v0 + 1016) = v17;
  *(v0 + 1024) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v15);
  v18 = *(v16 + 240);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 896;
  *(v0 + 24) = sub_485C;
  v19 = swift_continuation_init();
  *(v0 + 816) = sub_2440(&qword_1C57A8, &unk_16F4E0);
  *(v0 + 792) = v19;
  *(v0 + 760) = _NSConcreteStackBlock;
  *(v0 + 768) = 1107296256;
  *(v0 + 776) = sub_53C4;
  *(v0 + 784) = &unk_1B8A88;
  [v18 handleGetMenstruationPrediction:v7 completion:v0 + 760];
  sub_8CC0();

  return _swift_continuation_await();
}

uint64_t sub_485C()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_8A60();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4930()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 968);
  v5 = *(v0 + 944);
  v6 = *(v0 + 896);
  *(v0 + 1032) = v6;
  sub_8B48();
  sub_8B60();
  v2();
  v7 = v6;
  v8 = sub_16DBDC();
  sub_16E36C();

  if (sub_8CFC())
  {
    sub_8BD8();
    v9 = sub_8A44();
    *v1 = 138412290;
    *(v1 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    sub_88FC(&def_259DC, v11, v12, "Received response: %@");
    sub_8748(v9, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_8A2C();
  }

  v13 = *(v0 + 1024);
  v14 = (*(v0 + 1016))(*(v0 + 968), *(v0 + 944));
  v15 = (*(&stru_20.maxprot + (swift_isaMask & *v7)))(v14);
  if (v15 != 4)
  {
    switch(v15)
    {
      case 'g':
        sub_8C14();
        sub_8388((v7 + 40), v0 + 344);
        sub_8284((v7 + 80), v0 + 384);
        v21 = sub_16C58C();
        sub_8D14(v21);
        v22 = sub_16C57C();
        *(v0 + 568) = v21;
        *(v0 + 576) = &protocol witness table for ResponseFactory;
        *(v0 + 544) = v22;
        type metadata accessor for WellnessCATsSimple();
        sub_8D2C();
        sub_8CB4();
        v23 = sub_16D5FC();
        type metadata accessor for WellnessCATs();
        sub_8D2C();
        sub_8CB4();
        v24 = sub_16D58C();
        *(v0 + 584) = v23;
        *(v0 + 592) = v24;
        sub_83EC();
        sub_16C4EC();

        sub_8440(v0 + 344);
        break;
      case 'f':
        v25 = *(v0 + 984);
        v26 = *(v0 + 936);
        v27 = *(v0 + 928);
        v28 = *(v0 + 920);
        v29 = *(v0 + 912);
        v30 = *(v0 + 904);
        v31 = *(v0 + 1056);
        sub_16D6FC();
        v32 = *(v29 + 248);
        v33 = v28[5];
        sub_16BD9C();
        sub_8AB4();
        sub_214C(v34, v35, v36, v37);
        sub_8388(v29 + 40, &v27[v28[6]]);
        sub_8284(v29 + 80, &v27[v28[7]]);
        v38 = sub_16C58C();
        sub_8D14(v38);
        v39 = sub_16C57C();
        v40 = &v27[v28[8]];
        v40[3] = v38;
        v40[4] = &protocol witness table for ResponseFactory;
        *v40 = v39;
        type metadata accessor for WellnessCATsSimple();
        sub_8B90();
        sub_16D62C();
        sub_8C5C();
        v41 = sub_16D5FC();
        type metadata accessor for WellnessCATs();
        sub_8B90();
        sub_16D62C();
        sub_8C5C();
        v42 = sub_16D58C();
        *v27 = v32;
        *&v27[v28[9]] = v41;
        *&v27[v28[10]] = v42;
        sub_88E4();
        sub_85F8(v43, v44);
        sub_16C4EC();

        sub_8494(v27);
        break;
      case 'e':
        sub_8C14();
        v16 = v7[248];
        sub_8388((v7 + 40), v0 + 88);
        sub_8284((v7 + 80), v0 + 128);
        v17 = sub_16C58C();
        sub_8D14(v17);
        v18 = sub_16C57C();
        *(v0 + 312) = v17;
        *(v0 + 320) = &protocol witness table for ResponseFactory;
        *(v0 + 288) = v18;
        type metadata accessor for WellnessCATsSimple();
        sub_8D2C();
        sub_8CB4();
        v19 = sub_16D5FC();
        type metadata accessor for WellnessCATs();
        sub_8D2C();
        sub_8CB4();
        v20 = sub_16D58C();
        *(v0 + 80) = v16;
        *(v0 + 328) = v19;
        *(v0 + 336) = v20;
        sub_84F0();
        sub_16C4EC();

        sub_8544(v0 + 80);
        break;
      default:
        v49 = *(v0 + 1008);
        v50 = *(v0 + 1000);
        v51 = *(v0 + 992);
        v52 = *(v0 + 960);
        v53 = *(v0 + 944);
        sub_8B48();
        v54 = sub_8CA8();
        v50(v54);
        v55 = v7;
        v56 = sub_16DBDC();
        v57 = sub_16E37C();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = sub_8BD8();
          v59 = swift_slowAlloc();
          *v58 = 138412290;
          *(v58 + 4) = v55;
          *v59 = v7;
          v60 = v55;
          _os_log_impl(&def_259DC, v56, v57, "Received unhandled response code: %@", v58, 0xCu);
          sub_8748(v59, &qword_1C57B8, &qword_1715A0);
          sub_8A2C();
          sub_89F4();
        }

        v61 = *(v0 + 1024);
        v62 = *(v0 + 1016);
        v71 = *(v0 + 984);
        v63 = *(v0 + 960);
        v64 = *(v0 + 944);
        v65 = *(v0 + 912);
        v66 = *(v0 + 904);
        v67 = *(v0 + 1056);

        v62(v63, v64);
        sub_16D6FC();
        sub_8284(v65 + 80, v0 + 600);
        sub_82E0();
        sub_16C4EC();

        sub_8334(v0 + 600);
        break;
    }

    sub_8BF0();

    v68 = *(v0 + 8);
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  v45 = swift_task_alloc();
  *(v0 + 1040) = v45;
  *v45 = v0;
  v45[1] = sub_4F1C;
  v46 = *(v0 + 912);
  sub_8CC0();

  return sub_5410();
}

uint64_t sub_4F1C()
{
  sub_8A88();
  v1 = *v0;
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 1040);
  *v3 = *v0;
  *(v2 + 1048) = v6;

  sub_8ACC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_5010()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 984);
  v4 = *(v0 + 904);
  v5 = *(v0 + 1056);
  sub_16D72C();
  sub_16C4FC();

  sub_8BF0();

  v6 = *(v0 + 8);

  return v6();
}

id sub_50C8()
{
  v1 = (sub_2440(&qword_1C5808, &unk_16F520) - 8);
  v2 = *(*v1 + 64);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v38 - v4;
  v6 = sub_2440(&qword_1C5688, &unk_16F500);
  v7 = sub_4348(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_887C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = [objc_allocWithZone(sub_16DB2C()) init];
  v18 = v0[3];
  v17 = v0[4];
  sub_2D20(v0, v18);
  (*(v17 + 72))(v18, v17);
  v19 = v0[3];
  v20 = v0[4];
  sub_2D20(v0, v19);
  v21 = (*(v20 + 104))(v19, v20);
  v22 = v1[14];
  sub_86FC(v15, v5, &qword_1C5688, &unk_16F500);
  v5[v22] = v21;
  v23 = sub_16CE0C();
  sub_8A94(v5);
  if (!v24)
  {
    sub_86B0(v5, v12, &qword_1C5688, &unk_16F500);
    v27 = *(v23 - 8);
    v28 = *(v27 + 88);
    v29 = sub_8C50();
    v31 = v30(v29);
    if (v31 == enum case for UsoEntity_common_MeasurementQualifier.DefinedValues.common_MeasurementQualifier_StartOf(_:))
    {
      v32 = v16;
      if (v21)
      {
        if (v21 == 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = 3;
        }
      }

      else
      {
        v33 = 5;
      }

LABEL_17:
      [v32 setProjectionFocus:v33];
      v25 = &qword_1C5688;
      v26 = &unk_16F500;
      goto LABEL_18;
    }

    if (v31 == enum case for UsoEntity_common_MeasurementQualifier.DefinedValues.common_MeasurementQualifier_EndOf(_:))
    {
      v32 = v16;
      if (v21)
      {
        if (v21 == 1)
        {
          v33 = 2;
        }

        else
        {
          v33 = 4;
        }
      }

      else
      {
        v33 = 6;
      }

      goto LABEL_17;
    }

    v34 = *(v27 + 8);
    v35 = sub_8C50();
    v36(v35);
  }

  [v16 setProjectionFocus:0];
  v25 = &qword_1C5808;
  v26 = &unk_16F520;
LABEL_18:
  sub_8748(v5, v25, v26);
  return v16;
}

uint64_t sub_53C4(uint64_t a1, void *a2)
{
  v3 = *sub_2D20((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_104B3C(v3, v4);
}

uint64_t sub_5410()
{
  sub_8A88();
  v1[41] = v2;
  v1[42] = v0;
  v3 = sub_16C46C();
  v1[43] = v3;
  sub_888C(v3);
  v1[44] = v4;
  v6 = *(v5 + 64);
  v1[45] = sub_8C38();
  v1[46] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[47] = v7;
  sub_888C(v7);
  v1[48] = v8;
  v10 = *(v9 + 64);
  v1[49] = sub_8BC0();
  v11 = sub_16D63C();
  sub_4348(v11);
  v13 = *(v12 + 64);
  v1[50] = sub_8BC0();
  v14 = type metadata accessor for UnavailableDataFlow();
  v1[51] = v14;
  sub_4348(v14);
  v16 = *(v15 + 64);
  v1[52] = sub_8BC0();
  v17 = sub_16BF5C();
  v1[53] = v17;
  sub_888C(v17);
  v1[54] = v18;
  v20 = *(v19 + 64);
  v1[55] = sub_8C38();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v21 = sub_16CE0C();
  v1[60] = v21;
  sub_888C(v21);
  v1[61] = v22;
  v24 = *(v23 + 64);
  v1[62] = sub_8BC0();
  v25 = sub_2440(&qword_1C57D8, &qword_16F4F8);
  v1[63] = v25;
  sub_4348(v25);
  v27 = *(v26 + 64);
  v1[64] = sub_8BC0();
  v28 = sub_2440(&qword_1C5688, &unk_16F500);
  sub_4348(v28);
  v30 = *(v29 + 64);
  v1[65] = sub_8C38();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v31 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v31);
  v33 = *(v32 + 64);
  v1[68] = sub_8C38();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v34 = sub_16DBEC();
  v1[74] = v34;
  sub_888C(v34);
  v1[75] = v35;
  v37 = *(v36 + 64);
  v1[76] = sub_8C38();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v38, v39, v40);
}

uint64_t sub_5768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36)
{
  sub_8A10();
  a35 = v37;
  a36 = v38;
  sub_8B6C();
  a34 = v36;
  v39 = v36[79];
  v40 = v36[75];
  v41 = v36[74];
  v42 = sub_16DBBC();
  v36[80] = v42;
  sub_8B48();
  v43 = *(v40 + 16);
  v36[81] = v43;
  v36[82] = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v39, v42, v41);
  v44 = sub_16DBDC();
  v45 = sub_16E36C();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v36[79];
  v48 = v36[75];
  v49 = v36[74];
  if (v46)
  {
    v50 = sub_8BD8();
    v51 = swift_slowAlloc();
    a25 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_3AB7C(0xD000000000000014, 0x800000000016F430, &a25);
    _os_log_impl(&def_259DC, v44, v45, "Executing %s success pattern", v50, 0xCu);
    sub_2D64(v51);
    sub_8A2C();
    sub_8A2C();
  }

  v52 = *(v48 + 8);
  v52(v47, v49);
  v36[83] = v52;
  v53 = v36[72];
  v54 = v36[67];
  v55 = v36[66];
  v56 = v36[64];
  v76 = v36[63];
  v58 = v36[60];
  v57 = v36[61];
  v60 = v36[41];
  v59 = v36[42];
  sub_6EFC(v36[73]);
  sub_74F8(v53);
  v61 = v59[3];
  v62 = v59[4];
  sub_2D20(v59, v61);
  (*(v62 + 72))(v61, v62);
  (*(v57 + 104))(v55, enum case for UsoEntity_common_MeasurementQualifier.DefinedValues.common_MeasurementQualifier_EndOf(_:), v58);
  sub_214C(v55, 0, 1, v58);
  v63 = *(v76 + 48);
  sub_86B0(v54, v56, &qword_1C5688, &unk_16F500);
  sub_86B0(v55, v56 + v63, &qword_1C5688, &unk_16F500);
  sub_8A94(v56);
  if (v64)
  {
    v65 = v36[67];
    v66 = v36[60];
    sub_8748(v36[66], &qword_1C5688, &unk_16F500);
    sub_8748(v65, &qword_1C5688, &unk_16F500);
    sub_8A94(v56 + v63);
    if (!v64)
    {
      JUMPOUT(0x5A9CLL);
    }

    sub_8748(v36[64], &qword_1C5688, &unk_16F500);
    JUMPOUT(0x5D38);
  }

  v67 = v36[60];
  sub_86B0(v36[64], v36[65], &qword_1C5688, &unk_16F500);
  v68 = sub_369C(v56 + v63, 1, v67);
  v69 = v36[67];
  v70 = v36[66];
  v71 = v36[65];
  if (v68 != 1)
  {
    JUMPOUT(0x5C50);
  }

  v73 = v36[60];
  v72 = v36[61];
  sub_8748(v36[66], &qword_1C5688, &unk_16F500);
  v74 = sub_8748(v69, &qword_1C5688, &unk_16F500);
  return sub_5A88(v74);
}

uint64_t sub_5A88()
{
  v3 = *(v0 + 8);
  v4 = sub_8CA8();
  v5(v4);
  sub_8748(v1[64], &qword_1C57D8, &qword_16F4F8);
  v6 = v1[68];
  v7 = v1[53];
  sub_86B0(v1[73], v6, &qword_1C57E0, &unk_171C60);
  sub_8B20(v6, 1, v7);
  if (v22)
  {
    v8 = v1[77];
    v9 = v1[74];
    sub_8748(v1[68], &qword_1C57E0, &unk_171C60);
    sub_8B48();
    v10 = sub_8B78();
    v11(v10);
    v12 = sub_16DBDC();
    v13 = sub_16E37C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&def_259DC, v12, v13, "Failed to return cycle tracking prediction: start date not available.", v14, 2u);
      sub_8A2C();
    }

    v28 = v1[77];
    v29 = v1[75];
    v30 = v1[74];
    v31 = v1[73];
    v84 = v1[72];
    v33 = v1[51];
    v32 = v1[52];
    v34 = v1[50];
    v35 = v1[42];

    (*(v2 - 96))(v28, v30);
    LOBYTE(v30) = *(v35 + 248);
    v36 = v33[5];
    sub_16BD9C();
    sub_8AB4();
    sub_214C(v37, v38, v39, v40);
    sub_8388(v35 + 40, &v32[v33[6]]);
    sub_8284(v35 + 80, &v32[v33[7]]);
    v41 = sub_16C58C();
    sub_8D14(v41);
    v42 = sub_16C57C();
    v43 = &v32[v33[8]];
    v43[3] = v41;
    v43[4] = &protocol witness table for ResponseFactory;
    *v43 = v42;
    type metadata accessor for WellnessCATsSimple();
    sub_8B90();
    sub_16D62C();
    sub_8C5C();
    v44 = sub_16D5FC();
    type metadata accessor for WellnessCATs();
    sub_8B90();
    sub_16D62C();
    sub_8C5C();
    v45 = sub_16D58C();
    *v32 = v30;
    *&v32[v33[9]] = v44;
    *&v32[v33[10]] = v45;
    sub_88E4();
    sub_85F8(v46, v47);
    *(v2 - 88) = sub_16C32C();
    v48 = sub_8CA8();
    sub_8748(v48, v49, &unk_171C60);
    sub_8494(v32);
    sub_8748(v84, &qword_1C57E0, &unk_171C60);
    sub_87F4();
    v71 = v51;
    v72 = v50;
    v73 = v1[65];
    v74 = v1[64];
    v75 = v1[62];
    v76 = v1[59];
    v77 = v1[58];
    v78 = v1[57];
    v79 = v1[56];
    v80 = v1[55];
    v81 = v1[52];
    v82 = v1[50];
    v83 = v1[49];
    v85 = v1[46];
    *(v2 - 96) = v1[45];

    v52 = *(v2 - 96);

    v53 = v1[1];
    v54 = *(v2 - 88);
    sub_891C();

    return v57(v55, v56, v57, v58, v59, v60, v61, v62, v71, v72, v73, v74, v75, v76);
  }

  else
  {
    v15 = v1[72];
    v16 = v1[57];
    v17 = v1[54];
    v18 = v1[53];
    (*(v17 + 32))(v1[56], v1[68], v18);
    sub_16BF4C();
    v19 = sub_8B9C();
    sub_7AC8(v19, v20);
    v21 = *(v17 + 8);
    v1[89] = v21;
    v1[90] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v16, v18);
    sub_16BF4C();
    sub_8B20(v15, 1, v18);
    if (v22)
    {
      v24 = v1[55];
      v23 = v1[56];
      v25 = v1[53];
      sub_88CC();
      sub_85F8(v26, v27);
      sub_16E16C();
    }

    v64 = v1[56];
    v65 = v1[42];
    v21(v1[55], v1[53]);
    v66 = sub_2D20((v65 + 200), *(v65 + 224));
    v67 = swift_task_alloc();
    v1[91] = v67;
    *(v67 + 16) = v64;
    *(v67 + 24) = v65;
    v68 = *v66;
    v69 = swift_task_alloc();
    v1[92] = v69;
    *v69 = v1;
    v69[1] = sub_6948;
    sub_891C();

    return sub_72104();
  }
}

uint64_t sub_6370()
{
  v2 = *v1;
  sub_8A60();
  *v4 = v3;
  v3[34] = v1;
  v3[35] = v5;
  v3[36] = v0;
  sub_8C88();
  v7 = *(v6 + 696);
  *v8 = *v1;
  *(v9 + 704) = v0;

  sub_8C88();
  v11 = *(v10 + 688);

  sub_8ACC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_649C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_8A10();
  sub_8B6C();
  v42 = *(v37 + 680);
  (*(v37 + 672))(*(v37 + 472), *(v37 + 424));
  v43 = *(v37 + 680);
  v44 = *(v37 + 672);
  v45 = *(v37 + 464);
  v65 = sub_8958(*(v37 + 280));
  v44(v45, v40);
  sub_16C43C();
  v46 = sub_8BA8();
  v47(v46);
  sub_889C();
  (*(v39 + 8))(v41, v36);
  v48 = [v65 patternId];
  sub_16E1BC();

  sub_16C76C();
  v49 = sub_8AD8();

  *(v37 + 320) = v49;
  sub_16C28C();
  v66 = sub_16C32C();

  (*(a21 + 8))(v38, a22);
  sub_8B60();
  sub_8748(v50, v51, v52);
  sub_8B60();
  sub_8748(v53, v54, v55);
  sub_87F4();
  sub_8828();

  sub_8938();
  sub_891C();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v65, a21, a22, a23, a24, v66, a26, a27, a28);
}

uint64_t sub_66E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_8A10();
  sub_8B6C();
  v30 = v28[85];
  v31 = v28[84];
  v32 = v28[58];
  v33 = v28[53];
  (v31)(v28[59], v33);
  (v31)(v32, v33);
  v34 = v28[88];
  sub_89C0();
  v35 = sub_8948();
  v29(v35);
  swift_errorRetain();
  v36 = sub_16DBDC();
  sub_16E37C();

  if (sub_8CFC())
  {
    sub_8BD8();
    v37 = sub_8A44();
    *v31 = 138412290;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v38;
    *v37 = v38;
    sub_88FC(&def_259DC, v39, v40, "Error executing pattern: %@");
    sub_8748(v37, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_8A2C();
  }

  else
  {
  }

  v41 = sub_8990();
  v42(v41);
  sub_8284(v36 + 80, (v28 + 2));
  sub_82E0();
  v57 = sub_16C32C();
  sub_8334((v28 + 2));
  v43 = sub_8B9C();
  sub_8748(v43, v44, &unk_171C60);
  v45 = sub_8948();
  sub_8748(v45, v46, v47);
  sub_87F4();
  sub_8828();

  sub_8938();
  sub_891C();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v57, a26, a27, a28);
}

uint64_t sub_6948()
{
  v2 = *v1;
  sub_8A60();
  *v4 = v3;
  v3[37] = v1;
  v3[38] = v5;
  v3[39] = v0;
  sub_8C88();
  v7 = *(v6 + 736);
  *v8 = *v1;
  *(v9 + 744) = v0;

  sub_8C88();
  v11 = *(v10 + 728);

  sub_8ACC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_6A74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_8A10();
  sub_8B6C();
  v42 = *(v37 + 720);
  v43 = *(v37 + 712);
  v44 = *(v37 + 448);
  v64 = sub_8958(*(v37 + 304));
  v43(v44, v40);
  sub_16C43C();
  v45 = sub_8BA8();
  v46(v45);
  sub_889C();
  (*(v39 + 8))(v41, v36);
  v47 = [v64 patternId];
  sub_16E1BC();

  sub_16C76C();
  v48 = sub_8AD8();

  *(v37 + 320) = v48;
  sub_16C28C();
  v65 = sub_16C32C();

  (*(a21 + 8))(v38, a22);
  sub_8B60();
  sub_8748(v49, v50, v51);
  sub_8B60();
  sub_8748(v52, v53, v54);
  sub_87F4();
  sub_8828();

  sub_8938();
  sub_891C();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v64, a21, a22, a23, a24, v65, a26, a27, a28);
}

uint64_t sub_6CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_8A10();
  sub_8B6C();
  v31 = *(v28 + 720);
  (*(v28 + 712))(*(v28 + 448), *(v28 + 424));
  v32 = *(v28 + 744);
  sub_89C0();
  v33 = sub_8948();
  v30(v33);
  swift_errorRetain();
  v34 = sub_16DBDC();
  sub_16E37C();

  if (sub_8CFC())
  {
    sub_8BD8();
    v35 = sub_8A44();
    *v29 = 138412290;
    swift_errorRetain();
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v36;
    *v35 = v36;
    sub_88FC(&def_259DC, v37, v38, "Error executing pattern: %@");
    sub_8748(v35, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_8A2C();
  }

  else
  {
  }

  v39 = sub_8990();
  v40(v39);
  sub_8284(v34 + 80, v28 + 16);
  sub_82E0();
  v55 = sub_16C32C();
  sub_8334(v28 + 16);
  v41 = sub_8B9C();
  sub_8748(v41, v42, &unk_171C60);
  v43 = sub_8948();
  sub_8748(v43, v44, v45);
  sub_87F4();
  sub_8828();

  sub_8938();
  sub_891C();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v55, a26, a27, a28);
}

uint64_t sub_6EFC@<X0>(uint64_t a1@<X8>)
{
  v101 = sub_8CDC(a1);
  v4 = sub_42F0(v101);
  v99 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_887C();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_8AC0();
  v97 = v12;
  sub_89B4();
  __chkstk_darwin(v13);
  sub_8AC0();
  v100 = v14;
  sub_89B4();
  v16 = __chkstk_darwin(v15);
  v18 = &v93 - v17;
  v19 = __chkstk_darwin(v16);
  sub_8C74(v19, v20, v21, v22, v23, v24, v25, v26, v93);
  v27 = sub_2440(&qword_1C57E0, &unk_171C60);
  v28 = sub_4348(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_887C();
  v95 = v31 - v32;
  sub_89B4();
  __chkstk_darwin(v33);
  sub_8AC0();
  v96 = v34;
  sub_89B4();
  __chkstk_darwin(v35);
  sub_8C94();
  __chkstk_darwin(v36);
  v38 = &v93 - v37;
  v39 = sub_2440(&qword_1C5680, &unk_16F310);
  v40 = sub_4348(v39);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  sub_887C();
  v45 = v43 - v44;
  __chkstk_darwin(v46);
  v48 = &v93 - v47;
  v49 = v2[4];
  sub_2D20(v2, v2[3]);
  v50 = sub_8A6C();
  v51(v50);
  v52 = sub_16CC6C();
  sub_8B20(v48, 1, v52);
  if (v76)
  {
    goto LABEL_3;
  }

  sub_86B0(v48, v45, &qword_1C5680, &unk_16F310);
  v71 = *(v52 - 1);
  v72 = *(v71 + 88);
  v73 = sub_8C68();
  v75 = v74(v73);
  v76 = v75 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:) || v75 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Previous(_:);
  if (!v76)
  {
    if (v75 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:))
    {
      v80 = [v1 nextPeriodStart];
      if (v80)
      {
        v81 = v80;
        sub_16BF3C();

        v82 = 0;
      }

      else
      {
        v82 = 1;
      }

      sub_214C(v3, v82, 1, v101);
      v92 = v3;
      goto LABEL_31;
    }

    v87 = *(v71 + 8);
    v88 = sub_8C68();
    v89(v88);
LABEL_3:
    v53 = [v1 lastPeriodStart];
    v54 = v101;
    if (v53)
    {
      sub_8B90();
      sub_16BF3C();

      v55 = v98;
      v56 = v99;
      v57 = *(v99 + 32);
      v57(v98, v18, v54);
      v94 = v1;
      v58 = [v1 nextPeriodStart];
      if (v58)
      {
        v59 = v58;
        v60 = v97;
        sub_16BF3C();

        v57(v100, v60, v54);
        sub_16BF4C();
        sub_16BECC();
        v62 = v61;
        v63 = *(v56 + 8);
        v63(v10, v54);
        sub_16BECC();
        v65 = vabdd_f64(v64, v62);
        sub_16BECC();
        v67 = v55;
        if (v65 >= vabdd_f64(v66, v62))
        {
          v90 = [v94 nextPeriodStart];
          if (!v90)
          {
            v91 = 1;
            v70 = v95;
            goto LABEL_30;
          }

          v69 = v90;
          v70 = v95;
        }

        else
        {
          v68 = [v94 lastPeriodStart];
          if (!v68)
          {
            v91 = 1;
            v70 = v96;
            goto LABEL_30;
          }

          v69 = v68;
          v70 = v96;
        }

        sub_16BF3C();

        v91 = 0;
LABEL_30:
        v63(v100, v54);
        v63(v67, v54);
        sub_214C(v70, v91, 1, v54);
        v92 = v70;
LABEL_31:
        sub_86FC(v92, v102, &qword_1C57E0, &unk_171C60);
        return sub_8748(v48, &qword_1C5680, &unk_16F310);
      }

      (*(v56 + 8))(v55, v54);
    }

    sub_8748(v48, &qword_1C5680, &unk_16F310);
    sub_8AB4();
    return sub_214C(v83, v84, v85, v54);
  }

  sub_8748(v48, &qword_1C5680, &unk_16F310);
  v77 = [v1 lastPeriodStart];
  if (v77)
  {
    v78 = v77;
    sub_16BF3C();

    v79 = 0;
  }

  else
  {
    v79 = 1;
  }

  sub_214C(v38, v79, 1, v101);
  return sub_86FC(v38, v102, &qword_1C57E0, &unk_171C60);
}

uint64_t sub_74F8@<X0>(uint64_t a1@<X8>)
{
  v102 = sub_8CDC(a1);
  v4 = sub_42F0(v102);
  v100 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_887C();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_8AC0();
  v98 = v12;
  sub_89B4();
  __chkstk_darwin(v13);
  sub_8AC0();
  v101 = v14;
  sub_89B4();
  v16 = __chkstk_darwin(v15);
  v18 = &v94 - v17;
  v19 = __chkstk_darwin(v16);
  sub_8C74(v19, v20, v21, v22, v23, v24, v25, v26, v94);
  v27 = sub_2440(&qword_1C57E0, &unk_171C60);
  v28 = sub_4348(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_887C();
  v96 = v31 - v32;
  sub_89B4();
  __chkstk_darwin(v33);
  sub_8AC0();
  v97 = v34;
  sub_89B4();
  __chkstk_darwin(v35);
  sub_8C94();
  __chkstk_darwin(v36);
  v38 = &v94 - v37;
  v39 = sub_2440(&qword_1C5680, &unk_16F310);
  v40 = sub_4348(v39);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  sub_887C();
  v45 = v43 - v44;
  __chkstk_darwin(v46);
  v48 = &v94 - v47;
  v49 = v2[4];
  sub_2D20(v2, v2[3]);
  v50 = sub_8A6C();
  v51(v50);
  v52 = sub_16CC6C();
  sub_8B20(v48, 1, v52);
  if (!v53)
  {
    sub_86B0(v48, v45, &qword_1C5680, &unk_16F310);
    v73 = *(v52 - 8);
    v74 = *(v73 + 88);
    v75 = sub_8C68();
    v77 = v76(v75);
    if (v77 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:))
    {
      v78 = [v1 lastPeriodEnd];
      if (v78)
      {
        v79 = v78;
        sub_16BF3C();

        v80 = 0;
      }

      else
      {
        v80 = 1;
      }

      sub_214C(v38, v80, 1, v102);
      v93 = v38;
      goto LABEL_27;
    }

    if (v77 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:))
    {
      v81 = [v1 nextPeriodEnd];
      if (v81)
      {
        v82 = v81;
        sub_16BF3C();

        v83 = 0;
      }

      else
      {
        v83 = 1;
      }

      sub_214C(v3, v83, 1, v102);
      v93 = v3;
      goto LABEL_27;
    }

    v88 = *(v73 + 8);
    v89 = sub_8C68();
    v90(v89);
  }

  v54 = [v1 lastPeriodEnd];
  v55 = v102;
  if (!v54)
  {
LABEL_15:
    sub_8748(v48, &qword_1C5680, &unk_16F310);
    sub_8AB4();
    return sub_214C(v84, v85, v86, v55);
  }

  v56 = v54;
  sub_16BF3C();

  v57 = v99;
  v58 = v100;
  v59 = *(v100 + 32);
  v59(v99, v18, v55);
  v95 = v1;
  v60 = [v1 nextPeriodEnd];
  if (!v60)
  {
    (*(v58 + 8))(v57, v55);
    goto LABEL_15;
  }

  v61 = v60;
  v62 = v98;
  sub_16BF3C();

  v59(v101, v62, v55);
  sub_16BF4C();
  sub_16BECC();
  v64 = v63;
  v65 = *(v58 + 8);
  v65(v10, v55);
  sub_16BECC();
  v67 = vabdd_f64(v66, v64);
  sub_16BECC();
  v69 = v57;
  if (v67 >= vabdd_f64(v68, v64))
  {
    v91 = [v95 nextPeriodEnd];
    if (!v91)
    {
      v92 = 1;
      v72 = v96;
      goto LABEL_26;
    }

    v71 = v91;
    v72 = v96;
  }

  else
  {
    v70 = [v95 lastPeriodEnd];
    if (!v70)
    {
      v92 = 1;
      v72 = v97;
      goto LABEL_26;
    }

    v71 = v70;
    v72 = v97;
  }

  sub_16BF3C();

  v92 = 0;
LABEL_26:
  v65(v101, v55);
  v65(v69, v55);
  sub_214C(v72, v92, 1, v55);
  v93 = v72;
LABEL_27:
  sub_86FC(v93, v103, &qword_1C57E0, &unk_171C60);
  return sub_8748(v48, &qword_1C5680, &unk_16F310);
}

uint64_t sub_7AC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v3);
  v5 = *(v4 + 64);
  sub_433C();
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_16BF5C();
  v10 = sub_42F0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a2, v8, &qword_1C57E0, &unk_171C60);
  sub_8B20(v8, 1, v9);
  if (v17)
  {
    sub_8748(v8, &qword_1C57E0, &unk_171C60);
    v18 = 0;
  }

  else
  {
    v19 = *(v12 + 32);
    v20 = sub_8C50();
    v21(v20);
    sub_88CC();
    sub_85F8(v22, v23);
    v24 = sub_16E16C();
    if (v24)
    {
      v18 = 0;
    }

    else
    {
      v18 = sub_16E16C() ^ 1;
    }

    (*(v12 + 8))(v16, v9);
  }

  return v18 & 1;
}

uint64_t sub_7CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_8C50();
  v9 = sub_2440(v7, v8);
  sub_4348(v9);
  v11 = *(v10 + 64);
  sub_433C();
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v15);
  v17 = *(v16 + 64);
  sub_433C();
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v21);
  v23 = *(v22 + 64);
  sub_433C();
  __chkstk_darwin(v24);
  v26 = &v41 - v25;
  sub_16D4EC();
  v27 = sub_16D47C();
  v28 = *(a4(0) + 24);
  v29 = *(a1 + v28);

  *(a1 + v28) = v27;
  LOBYTE(v27) = *(a3 + 248);
  sub_16BD9C();
  sub_8AB4();
  sub_214C(v30, v31, v32, v33);
  sub_12093C(v27, v14, v20);
  sub_8748(v14, &qword_1C5690, &dword_16F320);
  v34 = sub_16BE9C();
  sub_8B20(v20, 1, v34);
  if (v35)
  {
    sub_8748(v20, &qword_1C57F8, &unk_172510);
    sub_16D5CC();
    sub_8AB4();
    sub_214C(v36, v37, v38, v39);
  }

  else
  {
    sub_61120(v26);
    (*(*(v34 - 8) + 8))(v20, v34);
  }

  return sub_8640(v26, a1);
}

uint64_t sub_7EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7F8C;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_7F8C()
{
  sub_8A88();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_8A60();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_8084()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_811C;

  return sub_4500();
}

uint64_t sub_811C()
{
  sub_8A88();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_8A60();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_8220(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_82E0()
{
  result = qword_1C57B0;
  if (!qword_1C57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C57B0);
  }

  return result;
}

uint64_t sub_8388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_83EC()
{
  result = qword_1C57C0;
  if (!qword_1C57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C57C0);
  }

  return result;
}

uint64_t sub_8494(uint64_t a1)
{
  v2 = type metadata accessor for UnavailableDataFlow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_84F0()
{
  result = qword_1C57D0;
  if (!qword_1C57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C57D0);
  }

  return result;
}

uint64_t sub_85F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8640(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_86B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_43AC(a1, a2, a3, a4);
  sub_8B38(v5);
  v7 = *(v6 + 16);
  v8 = sub_8B9C();
  v9(v8);
  return v4;
}

uint64_t sub_86FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_43AC(a1, a2, a3, a4);
  sub_8B38(v5);
  v7 = *(v6 + 32);
  v8 = sub_8B9C();
  v9(v8);
  return v4;
}

uint64_t sub_8748(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2440(a2, a3);
  sub_8B38(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_87A0()
{
  result = qword_1C5810;
  if (!qword_1C5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5810);
  }

  return result;
}

uint64_t sub_87F4()
{
  result = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[68];
  v11 = v0[67];
  v12 = v0[66];
  return result;
}

uint64_t sub_8828()
{
  v5 = v0[65];
  v6 = v0[64];
  v7 = v0[62];
  v8 = v0[59];
  v9 = v0[58];
  v10 = v0[57];
  v11 = v0[56];
  v12 = v0[55];
  v13 = v0[52];
  v14 = v0[50];
  v15 = v0[49];
  v3 = v0[45];
  *(v1 - 96) = v0[46];
  *(v1 - 88) = v3;
}

uint64_t sub_889C()
{

  return sub_16C75C();
}

void sub_88FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_8958@<X0>(void *a1@<X8>)
{
  v4 = v1[72];
  *(v2 - 96) = v1[73];
  *(v2 - 88) = v4;
  v5 = v1[53];
  v6 = v1[48];
  v7 = v1[46];
  v12 = v1[47];
  v8 = v1[44];
  v9 = v1[45];
  v10 = v1[43];
  *(v2 - 80) = v1[42];

  return a1;
}

uint64_t sub_8990()
{
  v1 = v0[83];
  result = v0[76];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[42];
  v7 = v0[75] + 8;
  return result;
}

uint64_t sub_89C0()
{
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[76];
  v6 = v0[74];

  return swift_beginAccess();
}

uint64_t sub_89F4()
{
}

uint64_t sub_8A2C()
{
}

uint64_t sub_8A44()
{

  return swift_slowAlloc();
}

uint64_t sub_8AD8()
{
  v1 = *(v0 - 80);
  v2 = v1[14];
  sub_2D20(v1 + 10, v1[13]);

  return sub_16C2FC();
}

uint64_t sub_8B48()
{

  return swift_beginAccess();
}

uint64_t sub_8BC0()
{

  return swift_task_alloc();
}

uint64_t sub_8BD8()
{

  return swift_slowAlloc();
}

uint64_t sub_8BF0()
{
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[120];
  v5 = v0[117];
  v6 = v0[116];
}

void sub_8C14()
{
  v2 = *(v0 + 984);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  v6 = *(v0 + 1056);

  sub_16D76C();
}

uint64_t sub_8C38()
{

  return swift_task_alloc();
}

uint64_t sub_8CDC@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = a1;

  return sub_16BF5C();
}

BOOL sub_8CFC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_8D14(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_8D2C()
{

  return sub_16D62C();
}

__n128 GenericBinaryButtonSnippet.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_16E12C();
  sub_99D0();
  sub_9484(v4, v5);
  v6 = sub_16DC6C();
  LOBYTE(v10) = *(a1 + 48);
  v8 = *(a1 + 16);
  result = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v8;
  *(a2 + 32) = result;
  *(a2 + 48) = v10;
  *(a2 + 56) = v6;
  *(a2 + 64) = v9;
  return result;
}

uint64_t GenericBinaryButtonSnippet.body.getter()
{
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x48uLL);
  sub_944C(v0, v3);
  sub_16E0BC();
  sub_9484(&qword_1C5818, &type metadata accessor for BinaryButtonView);
  return sub_16E08C();
}

uint64_t sub_8EA4(__int128 *a1)
{
  v2 = sub_16E02C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440(&qword_1C5830, &qword_178B90);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = sub_2440(&qword_1C5838, qword_16F620);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v16 = &v27 - v15;
  v17 = a1[1];
  v35 = *a1;
  v36 = v17;
  v37 = a1[2];
  if (a1[3])
  {
    v39[0] = a1[2];
    v31 = a1[2];
    v29 = v13;
    v28 = v14;
    v18 = swift_allocObject();
    memcpy((v18 + 16), a1, 0x48uLL);
    sub_97F8(v39, v34);
    sub_944C(a1, v34);
    sub_9854();
    sub_16DFFC();
    (*(v3 + 104))(v6, enum case for ButtonItemButtonStyle.Role.preferred(_:), v2);
    v19 = sub_98C8(&qword_1C5848, &qword_1C5830, &qword_178B90);
    sub_16DF2C();
    (*(v3 + 8))(v6, v2);
    v20 = *(v30 + 8);
    v20(v10, v7);
    v34[0] = v7;
    v34[1] = v19;
    swift_getOpaqueTypeConformance2();
    v21 = v29;
    v22 = sub_16DF1C();
    (*(v28 + 8))(v16, v21);
  }

  else
  {
    v39[0] = a1[2];
    v31 = a1[2];
    v23 = swift_allocObject();
    memcpy((v23 + 16), a1, 0x48uLL);
    sub_944C(a1, v34);
    sub_97F8(v39, v34);
    sub_9854();
    sub_16DFFC();
    sub_98C8(&qword_1C5848, &qword_1C5830, &qword_178B90);
    v22 = sub_16DF1C();
    v20 = *(v30 + 8);
    v20(v10, v7);
  }

  v38 = v36;
  v31 = v36;
  v24 = swift_allocObject();
  memcpy((v24 + 16), a1, 0x48uLL);
  sub_944C(a1, v34);
  sub_97F8(&v38, v34);
  sub_9854();
  sub_16DFFC();
  v34[3] = &type metadata for AnyView;
  v34[4] = &protocol witness table for AnyView;
  v34[0] = v22;
  v32 = v7;
  v33 = sub_98C8(&qword_1C5850, &qword_1C5830, &qword_178B90);
  v25 = sub_9910(&v31);
  (*(v30 + 16))(v25, v10, v7);
  sub_16E0AC();
  return (v20)(v10, v7);
}

uint64_t sub_9484(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_94E8(uint64_t *a1, char a2)
{
  v2 = a1[7];
  if (v2)
  {
    v4 = *a1;
    v5 = a1[1];
    sub_2440(&qword_1C5858, &qword_173C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16F530;
    v7 = v2;
    sub_16E41C();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = a2;
    sub_16E14C();
    sub_16E11C();
  }

  else
  {
    v9 = a1[8];
    sub_16E12C();
    sub_99D0();
    sub_9484(v10, v11);
    result = sub_16DC5C();
    __break(1u);
  }

  return result;
}

uint64_t sub_96AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_96EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9790(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_9854()
{
  result = qword_1C5840;
  if (!qword_1C5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5840);
  }

  return result;
}

uint64_t sub_98C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_9790(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_9910(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_9970()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_99E8()
{
  sub_8A88();
  v2 = *v0;
  v1[11] = v3;
  v1[12] = v2;
  v4 = sub_16C89C();
  v1[13] = v4;
  sub_888C(v4);
  v1[14] = v5;
  v7 = *(v6 + 64);
  v1[15] = sub_8BC0();
  v8 = sub_16C80C();
  v1[16] = v8;
  sub_888C(v8);
  v1[17] = v9;
  v11 = *(v10 + 64);
  v1[18] = sub_8BC0();
  v12 = sub_16C83C();
  v1[19] = v12;
  sub_888C(v12);
  v1[20] = v13;
  v15 = *(v14 + 64);
  v1[21] = sub_8BC0();
  v16 = sub_16C7DC();
  v1[22] = v16;
  sub_888C(v16);
  v1[23] = v17;
  v19 = *(v18 + 64);
  v1[24] = sub_8BC0();
  v20 = sub_16DBEC();
  v1[25] = v20;
  sub_888C(v20);
  v1[26] = v21;
  v23 = *(v22 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_9C04()
{
  v108 = v0;
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[11];
  v8 = sub_16DBBC();
  sub_8B48();
  v104 = *(v3 + 16);
  v104(v1, v8, v2);
  (*(v4 + 16))(v5, v7, v6);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[29];
  v14 = v0[25];
  v13 = v0[26];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[22];
  if (v11)
  {
    v101 = v0[29];
    v18 = v0[12];
    v98 = v0[25];
    v19 = sub_CA60();
    v107 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v107);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_C8E0();
    sub_16E68C();
    (*(v16 + 8))(v15, v17);
    v23 = sub_C9E0();
    v26 = sub_3AB7C(v23, v24, v25);

    *(v19 + 14) = v26;
    _os_log_impl(&def_259DC, v9, v10, "%s received input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v27 = *(v13 + 8);
    v27(v101, v98);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    v27 = *(v13 + 8);
    v27(v12, v14);
  }

  v28 = v0 + 18;
  v29 = v0[18];
  v31 = v0 + 17;
  v30 = v0[17];
  v33 = v0 + 16;
  v32 = v0[16];
  v34 = v0[11];
  sub_16C7CC();
  v35 = *(v30 + 88);
  v36 = sub_C9E0();
  if (v37(v36) == enum case for Parse.uso(_:))
  {
    v102 = v27;
    v28 = v0 + 21;
    v38 = v0[21];
    v31 = v0 + 20;
    v39 = v0[20];
    v33 = v0 + 19;
    v40 = v0[19];
    v41 = v0[18];
    v42 = v0[15];
    v43 = v0[14];
    v99 = v0[13];
    (*(v0[17] + 96))(v41, v0[16]);
    (*(v39 + 32))(v38, v41, v40);
    sub_16C82C();
    v44 = sub_10E3DC();
    (*(v43 + 8))(v42, v99);
    if (v44)
    {

      sub_B2948();
      if (v45)
      {
        v46 = v0[28];
        v47 = v0[25];
        sub_8B48();
        v48 = sub_C9C8();
        (v104)(v48);

        v49 = sub_16DBDC();
        v50 = sub_16E37C();

        v51 = os_log_type_enabled(v49, v50);
        v52 = v0[28];
        v53 = v0[25];
        v54 = v0[20];
        v55 = v0[21];
        v56 = v0[19];
        if (v51)
        {
          v106 = v0[19];
          v57 = v0[12];
          v105 = v0[26];
          v58 = sub_CA60();
          v107 = swift_slowAlloc();
          *v58 = 136315394;
          v59 = sub_16E7AC();
          v100 = v52;
          v61 = sub_3AB7C(v59, v60, &v107);

          *(v58 + 4) = v61;
          *(v58 + 12) = 2080;

          sub_B41D0();

          v62 = sub_C9C8();
          v65 = sub_3AB7C(v62, v63, v64);

          *(v58 + 14) = v65;
          _os_log_impl(&def_259DC, v49, v50, "%s did not find a magnitude in %s", v58, 0x16u);
          swift_arrayDestroy();
          sub_8A2C();
          sub_8A2C();

          sub_CA48();
          v102(v100, v53);
          (*(v54 + 8))(v55, v106);
        }

        else
        {

          sub_CA48();
          v102(v52, v53);
          (*(v54 + 8))(v55, v56);
        }
      }

      else
      {
        v83 = sub_B2BD0();
        v84 = *v28;
        v85 = *v31;
        v86 = *v33;
        if (v83 == 61)
        {
          (*(v85 + 8))(*v28, *v33);
          sub_CA48();
        }

        else
        {
          sub_38F88(v83);
          sub_CA48();
          (*(v85 + 8))(v84, v86);
        }
      }

      goto LABEL_16;
    }

    v27 = v102;
  }

  (*(*v31 + 8))(*v28, *v33);
  v66 = v0[27];
  v67 = v0[25];
  sub_8B48();
  v68 = sub_C9C8();
  (v104)(v68);
  v69 = sub_16DBDC();
  v70 = sub_16E37C();
  v71 = os_log_type_enabled(v69, v70);
  v73 = v0[26];
  v72 = v0[27];
  v74 = v0[25];
  if (v71)
  {
    v103 = v27;
    v75 = v0[12];
    v76 = swift_slowAlloc();
    v77 = sub_CA30();
    v107 = v77;
    *v76 = 136315138;
    v78 = sub_16E7AC();
    v80 = sub_3AB7C(v78, v79, &v107);

    *(v76 + 4) = v80;
    _os_log_impl(&def_259DC, v69, v70, "%s received unsupported input", v76, 0xCu);
    sub_2D64(v77);
    sub_8A2C();
    sub_8A2C();

    v81 = sub_C9F8();
    v103(v81);
  }

  else
  {

    v82 = sub_C9F8();
    (v27)(v82);
  }

LABEL_16:
  v88 = v0[28];
  v87 = v0[29];
  v89 = v0[27];
  v90 = v0[24];
  v91 = v0[21];
  v92 = v0[18];
  v93 = v0[15];

  v94 = v0[1];
  v95 = sub_C9C8();

  return v96(v95);
}

uint64_t sub_A334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v80 = sub_16C80C();
  v7 = sub_42F0(v80);
  v77 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_887C();
  v76 = v11 - v12;
  __chkstk_darwin(v13);
  v70[3] = v70 - v14;
  sub_CA04();
  v15 = sub_16C7DC();
  v16 = sub_42F0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_4304();
  v23 = v22 - v21;
  v24 = sub_16DBEC();
  v25 = sub_42F0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_887C();
  v79 = (v30 - v31);
  __chkstk_darwin(v32);
  v34 = v70 - v33;
  v35 = sub_16DBBC();
  sub_8B48();
  v75 = v27;
  v36 = *(v27 + 16);
  v72 = v27 + 16;
  v73 = v35;
  v71 = v36;
  v36(v34, v35, v24);
  v37 = *(v18 + 16);
  v78 = a1;
  v37(v23, a1, v15);
  v38 = sub_16DBDC();
  v39 = sub_16E36C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = sub_CA60();
    v74 = v24;
    v41 = v40;
    v42 = swift_slowAlloc();
    v70[2] = a2;
    v82[0] = v42;
    *v41 = 136315394;
    v43 = sub_16E7AC();
    v45 = sub_3AB7C(v43, v44, v82);
    v70[1] = v6;
    v46 = v45;

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    sub_16C7CC();
    v47 = sub_16E1EC();
    v49 = v48;
    (*(v18 + 8))(v23, v15);
    v50 = sub_3AB7C(v47, v49, v82);

    *(v41 + 14) = v50;
    _os_log_impl(&def_259DC, v38, v39, "%s got %s", v41, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    v24 = v74;
    sub_8A2C();
  }

  else
  {

    (*(v18 + 8))(v23, v15);
  }

  v51 = *(v75 + 8);
  v51(v34, v24);
  v52 = v76;
  sub_16C7CC();
  v53 = v77;
  v54 = v80;
  v55 = (*(v77 + 88))(v52, v80);
  v56 = enum case for Parse.uso(_:);
  (*(v53 + 8))(v52, v54);
  v57 = v79;
  if (v55 == v56)
  {
    return sub_16C47C();
  }

  v59 = v73;
  sub_8B48();
  v71(v57, v59, v24);
  v60 = sub_16DBDC();
  v61 = sub_16E37C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = sub_CA30();
    v74 = v24;
    v64 = v63;
    v81 = v63;
    *v62 = 136315138;
    v65 = sub_16E7AC();
    v67 = sub_3AB7C(v65, v66, &v81);

    *(v62 + 4) = v67;
    _os_log_impl(&def_259DC, v60, v61, "%s not handling parse because it's not a uso parse", v62, 0xCu);
    sub_2D64(v64);
    sub_8A2C();
    sub_8A2C();

    v68 = v57;
    v69 = v74;
  }

  else
  {

    v68 = v57;
    v69 = v24;
  }

  v51(v68, v69);
  return sub_16C48C();
}

uint64_t sub_A884()
{
  sub_8A88();
  v1[15] = v2;
  v1[16] = v0;
  v3 = *(*(sub_2440(&qword_1C5990, &unk_16F760) - 8) + 64);
  v1[17] = sub_8BC0();
  v4 = sub_16C46C();
  v1[18] = v4;
  sub_888C(v4);
  v1[19] = v5;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[22] = v8;
  sub_888C(v8);
  v1[23] = v9;
  v11 = *(v10 + 64);
  v1[24] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[25] = v12;
  sub_888C(v12);
  v1[26] = v13;
  v15 = *(v14 + 64);
  v1[27] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_AA08()
{
  sub_C9EC();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "prompt for value: defaulting to identifier", v7, 2u);
    sub_8A2C();
  }

  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[25];
  v11 = v0[16];

  v12 = *(v9 + 8);
  v13 = sub_C9F8();
  v14(v13);
  v15 = sub_208C0(*(v11 + 16));
  v17 = v16;
  v0[28] = v16;
  sub_8388(v11 + 104, (v0 + 2));
  v18 = sub_2D20(v0 + 2, v0[5]);
  v19 = swift_task_alloc();
  v0[29] = v19;
  *(v19 + 16) = v15;
  *(v19 + 24) = v17;
  v20 = *v18;
  v21 = swift_task_alloc();
  v0[30] = v21;
  *v21 = v0;
  v21[1] = sub_ABB8;

  return sub_1095A0();
}

uint64_t sub_ABB8()
{
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v5 = v4[30];
  v6 = v4[29];
  v7 = v4[28];
  v8 = *v1;
  sub_C990();
  *v9 = v8;
  *(v11 + 248) = v10;
  *(v11 + 256) = v0;

  sub_8ACC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_ACFC()
{
  v1 = v0[31];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  sub_2D64(v0 + 2);
  sub_16C44C();
  (*(v6 + 16))(v4, v3, v5);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C79C();
  sub_16C77C();
  sub_BB98(v7);
  v9 = sub_16C55C();
  sub_214C(v7, 0, 1, v9);
  sub_16C78C();
  v10 = [v1 patternId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_8388(v8 + 184, (v0 + 7));
  v11 = v0[10];
  v12 = v0[11];
  sub_2D20(v0 + 7, v11);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v0[33] = v14;
  *v14 = v0;
  v14[1] = sub_AEB8;
  v15 = v0[31];
  v16 = v0[24];
  v17 = v0[15];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v17, v15, v16, v11, v12);
}

uint64_t sub_AEB8()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  sub_C990();
  *v7 = v6;
  *(v8 + 272) = v0;

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_AFB4()
{
  sub_C9EC();
  sub_2D64((v0 + 16));
  v1 = *(v0 + 256);
  sub_CA10();

  sub_C9BC();

  return v2();
}

uint64_t sub_B044()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v7 = *(v0 + 136);

  v8 = *(v3 + 8);
  v9 = sub_C9F8();
  v10(v9);
  sub_2D64((v0 + 56));

  sub_C9BC();

  return v11();
}

uint64_t sub_B114()
{
  sub_C9EC();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  v4 = *(v2 + 8);
  v5 = sub_C9C8();
  v6(v5);
  sub_2D64((v0 + 56));
  v7 = *(v0 + 272);
  sub_CA10();

  sub_C9BC();

  return v8();
}

uint64_t sub_B1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    sub_16E23C();
    v9 = sub_16D5CC();
    v10 = 0;
  }

  else
  {
    v9 = sub_16D5CC();
    v10 = 1;
  }

  sub_214C(v8, v10, 1, v9);
  return sub_8640(v8, a1);
}

uint64_t sub_B298()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[18] = v8;
  sub_888C(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[21] = v12;
  sub_888C(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_B418()
{
  v27 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[11];
  v5 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v5, v3);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  if (v8)
  {
    v12 = v0[13];
    v13 = v0[11];
    v25 = v0[21];
    v14 = sub_CA60();
    v15 = swift_slowAlloc();
    v16 = sub_CA30();
    v26 = v16;
    *v14 = 136315394;
    v17 = sub_16E7AC();
    v24 = v9;
    v19 = sub_3AB7C(v17, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v14, 0x16u);
    sub_C878(v15, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_2D64(v16);
    sub_8A2C();
    sub_8A2C();

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = *sub_2D20((v0[12] + 64), *(v0[12] + 88));
  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  v22[1] = sub_B658;

  return sub_7AA38();
}

uint64_t sub_B658()
{
  sub_C9D4();
  v3 = v2;
  sub_8A60();
  *v4 = v3;
  v6 = *(v5 + 192);
  *v4 = *v1;
  v3[25] = v7;

  if (v0)
  {
    v8 = v3[23];
    v9 = v3[20];
    v12 = v3 + 16;
    v10 = v3[16];
    v11 = v12[1];

    sub_C9BC();

    return v13();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t sub_B7B0()
{
  v1 = v0[25];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v1 patternId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_8388(v7 + 184, (v0 + 2));
  v9 = v0[5];
  v10 = v0[6];
  sub_2D20(v0 + 2, v9);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_B930;
  v13 = v0[25];
  v14 = v0[20];
  v15 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v15, v13, v14, v9, v10);
}

uint64_t sub_B930()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_C990();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_BA2C()
{
  sub_C9EC();
  v1 = *(v0 + 184);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);

  v7 = *(v3 + 8);
  v8 = sub_C9F8();
  v9(v8);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v10();
}

uint64_t sub_BAE4()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = *(v2 + 8);
  v5 = sub_C9C8();
  v6(v5);
  sub_2D64((v0 + 16));
  v7 = *(v0 + 216);
  v8 = *(v0 + 184);
  v9 = *(v0 + 160);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);

  sub_C9BC();

  return v12();
}

uint64_t sub_BB98@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v88 = sub_16DBEC();
  v1 = sub_42F0(v88);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_887C();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v86 = &v76 - v10;
  sub_CA04();
  v11 = sub_16C55C();
  v12 = sub_42F0(v11);
  v77 = v13;
  v78 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_4304();
  v18 = v17 - v16;
  v19 = sub_16C96C();
  v20 = sub_42F0(v19);
  v84 = v21;
  v85 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_4304();
  v81 = v25 - v24;
  sub_CA04();
  v26 = sub_16C92C();
  v27 = sub_42F0(v26);
  v82 = v28;
  v83 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  sub_887C();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = &v76 - v35;
  v37 = sub_2440(&qword_1C5980, &qword_16F748);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = &v76 - v39;
  v41 = sub_16C87C();
  v42 = sub_42F0(v41);
  v80 = v43;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  sub_887C();
  v48 = v46 - v47;
  __chkstk_darwin(v49);
  v79 = &v76 - v50;
  sub_CA04();
  sub_16CF7C();
  v51 = sub_16CF5C();
  sub_16C9DC();
  if (sub_369C(v40, 1, v41) == 1)
  {
    sub_C878(v40, &qword_1C5980, &qword_16F748);
    v52 = sub_16DBCC();
    sub_8B48();
    (*(v3 + 16))(v8, v52, v88);
    v53 = sub_16DBDC();
    v54 = sub_16E37C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&def_259DC, v53, v54, "Failed to create protobuf UsoGraph from UsoTask", v55, 2u);
      sub_8A2C();
    }

    (*(v3 + 8))(v8, v88);
    sub_16C54C();
  }

  else
  {
    v58 = v79;
    v57 = v80;
    v59 = *(v80 + 32);
    v60 = sub_C9E0();
    v61(v60);
    sub_16C91C();
    (*(v57 + 16))(v48, v58, v41);
    sub_16C90C();
    v62 = v81;
    sub_16C95C();
    (*(v82 + 16))(v33, v36, v83);
    sub_16C94C();
    sub_16C54C();
    sub_2440(&qword_1C5988, &unk_16F750);
    v63 = v84;
    v64 = *(v84 + 72);
    v65 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_16F530;
    (*(v63 + 16))(v66 + v65, v62, v85);
    sub_16C53C();
    v67 = sub_16DBCC();
    sub_8B48();
    (*(v3 + 16))(v86, v67, v88);

    v68 = sub_16DBDC();
    v69 = sub_16E36C();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v76 = v18;
      v71 = v70;
      v72 = sub_CA30();
      v89 = v51;
      v90 = v72;
      *v71 = 136315138;
      sub_16CE4C();

      v73 = sub_16E1EC();
      v75 = sub_3AB7C(v73, v74, &v90);

      *(v71 + 4) = v75;
      _os_log_impl(&def_259DC, v68, v69, "Built nlContextUpdate with SystemPrompted for task: %s", v71, 0xCu);
      sub_2D64(v72);
      sub_8A2C();
      v18 = v76;
      sub_8A2C();
    }

    (*(v3 + 8))(v86, v88);
    (*(v84 + 8))(v81, v85);
    (*(v82 + 8))(v36, v83);
    (*(v80 + 8))(v79, v41);
    return (*(v77 + 32))(v87, v18, v78);
  }
}

uint64_t sub_C22C()
{
  sub_C938(v0 + 24);
  sub_2D64((v0 + 184));

  return _swift_deallocClassInstance(v0, 224, 7);
}

uint64_t sub_C294(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_C32C;

  return sub_99E8();
}

uint64_t sub_C32C()
{
  sub_C9EC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_C9D4();
  v9 = v8;
  sub_8A60();
  *v10 = v9;
  v12 = *(v11 + 24);
  v13 = *v1;
  sub_C990();
  *v14 = v13;

  if (!v0)
  {
    v15 = *(v9 + 16);
    *v15 = v7;
    v15[1] = v5;
    v15[2] = v3;
  }

  v16 = *(v13 + 8);

  return v16();
}

uint64_t sub_C43C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_A884();
}

uint64_t sub_C4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_C98C;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, a2, a3);
}

uint64_t sub_C588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_C98C;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, a2, a3);
}

uint64_t sub_C63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_C6F0;

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t sub_C6F0()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_C9BC();

  return v5();
}

uint64_t sub_C7D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_B298();
}

uint64_t sub_C878(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2440(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_C8E0()
{
  result = qword_1C5998;
  if (!qword_1C5998)
  {
    sub_16C7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5998);
  }

  return result;
}

uint64_t sub_C9BC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_CA10()
{
  v2 = v0[27];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
}

uint64_t sub_CA30()
{

  return swift_slowAlloc();
}

uint64_t sub_CA48()
{
}

uint64_t sub_CA60()
{

  return swift_slowAlloc();
}

uint64_t sub_CAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_D350(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_CB44@<X0>(_BYTE *a1@<X8>)
{
  result = LogPeriodFlow.on(input:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_CB70(uint64_t a1)
{
  v2 = sub_FA70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CBAC(uint64_t a1)
{
  v2 = sub_FA70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CBE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000000017AA20 == a2;
  if (v3 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000000017AA40 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000000017AA60 == a2;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000000017AA80 == a2;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x42636972656E6567 && a2 == 0xED00006E6F747475;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x800000000017AAA0 == a2;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x800000000017AAC0 == a2;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x800000000017AAE0 == a2;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000000017AB00 == a2;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6144746867696568 && a2 == 0xEF79726575516174;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E6952656E6F6870 && a2 == 0xEA00000000007367;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001ALL && 0x800000000017AB20 == a2;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6575517065656C73 && a2 == 0xEA00000000007972;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000017 && 0x800000000017AB40 == a2;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000014 && 0x800000000017AB60 == a2;
                              if (v19 || (sub_16E6BC() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x6E69526863746177 && a2 == 0xEA00000000007367)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_16E6BC();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
        }
      }
    }
  }
}

Swift::Int sub_D0EC(unsigned __int8 a1)
{
  sub_16E72C();
  sub_16E73C(a1);
  return sub_16E75C();
}

uint64_t sub_D134(char a1)
{
  result = 0x42636972656E6567;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6144746867696568;
      break;
    case 10:
      v3 = 0x52656E6F6870;
      goto LABEL_16;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0x6575517065656C73;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      v3 = 0x526863746177;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_D350(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_16E6BC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_D3C0()
{
  sub_16E72C();
  sub_16E73C(0);
  return sub_16E75C();
}

uint64_t sub_D404(uint64_t a1)
{
  v2 = sub_F9C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D440(uint64_t a1)
{
  v2 = sub_F9C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D47C(uint64_t a1)
{
  v2 = sub_FA1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D4B8(uint64_t a1)
{
  v2 = sub_FA1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_D510()
{
  v1 = *v0;
  sub_16E72C();
  sub_16E73C(v1);
  return sub_16E75C();
}

uint64_t sub_D55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CBE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D5A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D0AC();
  *a1 = result;
  return result;
}

uint64_t sub_D5CC(uint64_t a1)
{
  v2 = sub_F37C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D608(uint64_t a1)
{
  v2 = sub_F37C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D644(uint64_t a1)
{
  v2 = sub_F974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D680(uint64_t a1)
{
  v2 = sub_F974();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D6BC(uint64_t a1)
{
  v2 = sub_F878();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D6F8(uint64_t a1)
{
  v2 = sub_F878();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D734(uint64_t a1)
{
  v2 = sub_F920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D770(uint64_t a1)
{
  v2 = sub_F920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D7AC(uint64_t a1)
{
  v2 = sub_F77C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D7E8(uint64_t a1)
{
  v2 = sub_F77C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D824(uint64_t a1)
{
  v2 = sub_F7D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D860(uint64_t a1)
{
  v2 = sub_F7D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D89C(uint64_t a1)
{
  v2 = sub_F824();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D8D8(uint64_t a1)
{
  v2 = sub_F824();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D914(uint64_t a1)
{
  v2 = sub_F728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D950(uint64_t a1)
{
  v2 = sub_F728();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D98C(uint64_t a1)
{
  v2 = sub_F62C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D9C8(uint64_t a1)
{
  v2 = sub_F62C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_DA04(uint64_t a1)
{
  v2 = sub_F5D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DA40(uint64_t a1)
{
  v2 = sub_F5D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_DA7C(uint64_t a1)
{
  v2 = sub_F584();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DAB8(uint64_t a1)
{
  v2 = sub_F584();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_DAF4(uint64_t a1)
{
  v2 = sub_F530();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DB30(uint64_t a1)
{
  v2 = sub_F530();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_DB6C(uint64_t a1)
{
  v2 = sub_F4DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DBA8(uint64_t a1)
{
  v2 = sub_F4DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_DBE4()
{
  sub_16E72C();
  sub_16E73C(0);
  return sub_16E75C();
}

uint64_t sub_DC24(uint64_t a1)
{
  v2 = sub_F434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DC60(uint64_t a1)
{
  v2 = sub_F434();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WellnessSnippets.encode(to:)(void *a1)
{
  v323 = sub_2440(&qword_1C59A0, &qword_16F770);
  sub_42F0(v323);
  v322 = v2;
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  sub_13088();
  v321 = v6;
  v320 = sub_2440(&qword_1C59A8, &qword_16F778);
  sub_42F0(v320);
  v319 = v7;
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  sub_13088();
  v318 = v11;
  sub_CA04();
  Model = type metadata accessor for TemperatureQueryModel();
  v12 = sub_8B38(Model);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_12FD4();
  v317 = v15;
  v16 = sub_2440(&qword_1C59B0, &qword_16F780);
  v17 = sub_42F0(v16);
  v314 = v18;
  v315 = v17;
  v20 = *(v19 + 64);
  sub_433C();
  __chkstk_darwin(v21);
  sub_13088();
  v313 = v22;
  sub_CA04();
  v311 = type metadata accessor for SpecificMedCompletedLogModel();
  v23 = sub_8B38(v311);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_12FD4();
  v312 = v26;
  v27 = sub_2440(&qword_1C59B8, &qword_16F788);
  v28 = sub_42F0(v27);
  v309 = v29;
  v310 = v28;
  v31 = *(v30 + 64);
  sub_433C();
  __chkstk_darwin(v32);
  sub_13088();
  v308 = v33;
  sub_CA04();
  v306 = type metadata accessor for SleepQueryModel();
  v34 = sub_8B38(v306);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_12FD4();
  v307 = v37;
  v38 = sub_2440(&qword_1C59C0, &qword_16F790);
  v39 = sub_42F0(v38);
  v304 = v40;
  v305 = v39;
  v42 = *(v41 + 64);
  sub_433C();
  __chkstk_darwin(v43);
  sub_13088();
  v303 = v44;
  sub_CA04();
  v301 = type metadata accessor for SingleActivitySummaryModel();
  v45 = sub_8B38(v301);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  sub_12FD4();
  v302 = v48;
  v49 = sub_2440(&qword_1C59C8, &qword_16F798);
  v50 = sub_42F0(v49);
  v299 = v51;
  v300 = v50;
  v53 = *(v52 + 64);
  sub_433C();
  __chkstk_darwin(v54);
  sub_13088();
  v298 = v55;
  v56 = sub_2440(&qword_1C59D0, &qword_16F7A0);
  v57 = sub_42F0(v56);
  v296 = v58;
  v297 = v57;
  v60 = *(v59 + 64);
  sub_433C();
  __chkstk_darwin(v61);
  sub_13088();
  v295 = v62;
  sub_CA04();
  v293 = type metadata accessor for HeightQueryModel();
  v63 = sub_8B38(v293);
  v65 = *(v64 + 64);
  __chkstk_darwin(v63);
  sub_12FD4();
  v294 = v66;
  v67 = sub_2440(&qword_1C59D8, &qword_16F7A8);
  v68 = sub_42F0(v67);
  v291 = v69;
  v292 = v68;
  v71 = *(v70 + 64);
  sub_433C();
  __chkstk_darwin(v72);
  sub_13088();
  v290 = v73;
  sub_CA04();
  v288 = type metadata accessor for GenericQueryModel();
  v74 = sub_8B38(v288);
  v76 = *(v75 + 64);
  __chkstk_darwin(v74);
  sub_12FD4();
  v289 = v77;
  v78 = sub_2440(&qword_1C59E0, &qword_16F7B0);
  v79 = sub_42F0(v78);
  v286 = v80;
  v287 = v79;
  v82 = *(v81 + 64);
  sub_433C();
  __chkstk_darwin(v83);
  sub_13088();
  v285 = v84;
  sub_CA04();
  v283 = type metadata accessor for HealthDataLogModel();
  v85 = sub_8B38(v283);
  v87 = *(v86 + 64);
  __chkstk_darwin(v85);
  sub_12FD4();
  v284 = v88;
  v89 = sub_2440(&qword_1C59E8, &qword_16F7B8);
  v90 = sub_42F0(v89);
  v281 = v91;
  v282 = v90;
  v93 = *(v92 + 64);
  sub_433C();
  __chkstk_darwin(v94);
  sub_13088();
  v280 = v95;
  sub_CA04();
  v278 = type metadata accessor for GenericMedCompletedLogModel();
  v96 = sub_8B38(v278);
  v98 = *(v97 + 64);
  __chkstk_darwin(v96);
  sub_12FD4();
  v279 = v99;
  v100 = sub_2440(&qword_1C59F0, &qword_16F7C0);
  v101 = sub_42F0(v100);
  v276 = v102;
  v277 = v101;
  v104 = *(v103 + 64);
  sub_433C();
  __chkstk_darwin(v105);
  sub_13088();
  v275 = v106;
  v107 = sub_2440(&qword_1C59F8, &qword_16F7C8);
  v108 = sub_42F0(v107);
  v273 = v109;
  v274 = v108;
  v111 = *(v110 + 64);
  sub_433C();
  __chkstk_darwin(v112);
  sub_13088();
  v272 = v113;
  sub_CA04();
  v270 = type metadata accessor for GenericButtonModel();
  v114 = sub_8B38(v270);
  v116 = *(v115 + 64);
  __chkstk_darwin(v114);
  sub_12FD4();
  v271 = v117;
  v118 = sub_2440(&qword_1C5A00, &qword_16F7D0);
  v119 = sub_42F0(v118);
  v268 = v120;
  v269 = v119;
  v122 = *(v121 + 64);
  sub_433C();
  __chkstk_darwin(v123);
  sub_13088();
  v267 = v124;
  sub_CA04();
  v265 = type metadata accessor for CycleTrackingLogModel();
  v125 = sub_8B38(v265);
  v127 = *(v126 + 64);
  __chkstk_darwin(v125);
  sub_12FD4();
  v266 = v128;
  v129 = sub_2440(&qword_1C5A08, &qword_16F7D8);
  v130 = sub_42F0(v129);
  v263 = v131;
  v264 = v130;
  v133 = *(v132 + 64);
  sub_433C();
  __chkstk_darwin(v134);
  sub_13088();
  v262 = v135;
  sub_CA04();
  v260 = type metadata accessor for BloodPressureLogModel();
  v136 = sub_8B38(v260);
  v138 = *(v137 + 64);
  __chkstk_darwin(v136);
  sub_12FD4();
  v261 = v139;
  v140 = sub_2440(&qword_1C5A10, &qword_16F7E0);
  v141 = sub_42F0(v140);
  v258 = v142;
  v259 = v141;
  v144 = *(v143 + 64);
  sub_433C();
  __chkstk_darwin(v145);
  sub_13088();
  v257 = v146;
  sub_CA04();
  v255 = type metadata accessor for BloodPressureQueryModel();
  v147 = sub_8B38(v255);
  v149 = *(v148 + 64);
  __chkstk_darwin(v147);
  sub_12FD4();
  v256 = v150;
  v151 = sub_2440(&qword_1C5A18, &qword_16F7E8);
  v152 = sub_42F0(v151);
  v253 = v153;
  v254 = v152;
  v155 = *(v154 + 64);
  sub_433C();
  __chkstk_darwin(v156);
  sub_13088();
  v252 = v157;
  sub_CA04();
  v158 = type metadata accessor for OxygenSaturationQueryModel();
  v159 = sub_8B38(v158);
  v161 = *(v160 + 64);
  __chkstk_darwin(v159);
  v163 = &v251 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for WellnessSnippets();
  v165 = sub_8B38(v164);
  v167 = *(v166 + 64);
  __chkstk_darwin(v165);
  v169 = &v251 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = sub_2440(&qword_1C5A20, &qword_16F7F0);
  sub_42F0(v329);
  v326 = v170;
  v172 = *(v171 + 64);
  sub_433C();
  __chkstk_darwin(v173);
  v175 = &v251 - v174;
  v176 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_F37C();
  v325 = v175;
  sub_16E77C();
  sub_F3D0(v324, v169);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v186 = v256;
      sub_11670(v169, v256, type metadata accessor for BloodPressureQueryModel);
      LOBYTE(v328[0]) = 1;
      sub_FA1C();
      sub_12FE8();
      sub_13190();
      sub_11808(v222, v223);
      sub_130DC();
      sub_13234();
      v224 = sub_13024();
      v225(v224);
      v191 = type metadata accessor for BloodPressureQueryModel;
      goto LABEL_18;
    case 2u:
      v186 = v261;
      sub_11670(v169, v261, type metadata accessor for BloodPressureLogModel);
      LOBYTE(v328[0]) = 2;
      sub_F9C8();
      sub_12FE8();
      sub_13148();
      sub_11808(v208, v209);
      sub_130DC();
      sub_13234();
      v210 = sub_13024();
      v211(v210);
      v191 = type metadata accessor for BloodPressureLogModel;
      goto LABEL_18;
    case 3u:
      v186 = v266;
      sub_11670(v169, v266, type metadata accessor for CycleTrackingLogModel);
      LOBYTE(v328[0]) = 3;
      sub_F974();
      sub_12FE8();
      sub_130E8();
      sub_11808(v214, v215);
      sub_130DC();
      sub_13234();
      v216 = sub_13024();
      v217(v216);
      v191 = type metadata accessor for CycleTrackingLogModel;
      goto LABEL_18;
    case 4u:
      v186 = v271;
      sub_11670(v169, v271, type metadata accessor for GenericButtonModel);
      LOBYTE(v328[0]) = 4;
      sub_F920();
      sub_12FE8();
      sub_131F0();
      sub_11808(v196, v197);
      sub_130DC();
      sub_13234();
      v198 = sub_13024();
      v199(v198);
      v191 = type metadata accessor for GenericButtonModel;
      goto LABEL_18;
    case 5u:
      v226 = *(v169 + 1);
      v324 = *v169;
      v227 = *(v169 + 3);
      v323 = *(v169 + 2);
      v229 = *(v169 + 4);
      v228 = *(v169 + 5);
      v230 = v169[48];
      LOBYTE(v328[0]) = 5;
      sub_F878();
      v231 = v275;
      v232 = v325;
      sub_16E60C();
      v328[0] = v324;
      v328[1] = v226;
      v328[2] = v323;
      v328[3] = v227;
      v328[4] = v229;
      v328[5] = v228;
      LOBYTE(v328[6]) = v230;
      sub_F8CC();
      v233 = v277;
      sub_16E67C();
      (*(v276 + 8))(v231, v233);
      sub_132A4();
      v234(v232, v329);

    case 6u:
      v186 = v279;
      sub_11670(v169, v279, type metadata accessor for GenericMedCompletedLogModel);
      LOBYTE(v328[0]) = 6;
      sub_F824();
      sub_12FE8();
      sub_13208();
      sub_11808(v240, v241);
      sub_130DC();
      sub_13234();
      v242 = sub_13024();
      v243(v242);
      v191 = type metadata accessor for GenericMedCompletedLogModel;
      goto LABEL_18;
    case 7u:
      v186 = v284;
      sub_11670(v169, v284, type metadata accessor for HealthDataLogModel);
      LOBYTE(v328[0]) = 7;
      sub_F7D0();
      sub_12FE8();
      sub_131D8();
      sub_11808(v218, v219);
      sub_130DC();
      sub_13234();
      v220 = sub_13024();
      v221(v220);
      v191 = type metadata accessor for HealthDataLogModel;
      goto LABEL_18;
    case 8u:
      v186 = v289;
      sub_11670(v169, v289, type metadata accessor for GenericQueryModel);
      LOBYTE(v328[0]) = 8;
      sub_F77C();
      sub_12FE8();
      sub_13178();
      sub_11808(v247, v248);
      sub_130DC();
      sub_13234();
      v249 = sub_13024();
      v250(v249);
      v191 = type metadata accessor for GenericQueryModel;
      goto LABEL_18;
    case 9u:
      v186 = v294;
      sub_11670(v169, v294, type metadata accessor for HeightQueryModel);
      LOBYTE(v328[0]) = 9;
      sub_F728();
      sub_12FE8();
      sub_13160();
      sub_11808(v204, v205);
      sub_130DC();
      sub_13234();
      v206 = sub_13024();
      v207(v206);
      v191 = type metadata accessor for HeightQueryModel;
      goto LABEL_18;
    case 0xAu:
      memcpy(v328, v169, 0xF1uLL);
      v327[0] = 10;
      sub_F62C();
      sub_12FE8();
      memcpy(v327, v328, sizeof(v327));
      sub_F680();
      sub_13234();
      v244 = sub_13024();
      v245(v244);
      sub_132A4();
      v246(v169, v163);
      return sub_F6D4(v328);
    case 0xBu:
      v186 = v302;
      sub_11670(v169, v302, type metadata accessor for SingleActivitySummaryModel);
      LOBYTE(v328[0]) = 11;
      sub_F5D8();
      sub_12FE8();
      sub_13100();
      sub_11808(v192, v193);
      sub_130DC();
      sub_13234();
      v194 = sub_13024();
      v195(v194);
      v191 = type metadata accessor for SingleActivitySummaryModel;
      goto LABEL_18;
    case 0xCu:
      v186 = v307;
      sub_11670(v169, v307, type metadata accessor for SleepQueryModel);
      LOBYTE(v328[0]) = 12;
      sub_F584();
      sub_12FE8();
      sub_131A8();
      sub_11808(v200, v201);
      sub_130DC();
      sub_13234();
      v202 = sub_13024();
      v203(v202);
      v191 = type metadata accessor for SleepQueryModel;
      goto LABEL_18;
    case 0xDu:
      v186 = v312;
      sub_11670(v169, v312, type metadata accessor for SpecificMedCompletedLogModel);
      LOBYTE(v328[0]) = 13;
      sub_F530();
      sub_12FE8();
      sub_13118();
      sub_11808(v236, v237);
      sub_130DC();
      sub_13234();
      v238 = sub_13024();
      v239(v238);
      v191 = type metadata accessor for SpecificMedCompletedLogModel;
      goto LABEL_18;
    case 0xEu:
      v186 = v317;
      sub_11670(v169, v317, type metadata accessor for TemperatureQueryModel);
      LOBYTE(v328[0]) = 14;
      sub_F4DC();
      sub_12FE8();
      sub_13130();
      sub_11808(v187, v188);
      sub_130DC();
      sub_13234();
      v189 = sub_13024();
      v190(v189);
      v191 = type metadata accessor for TemperatureQueryModel;
LABEL_18:
      sub_FAC4(v186, v191);
      goto LABEL_19;
    case 0xFu:
      memcpy(v328, v169, 0x59uLL);
      v327[0] = 15;
      sub_F434();
      sub_12FE8();
      memcpy(v327, v328, 0x59uLL);
      sub_F488();
      sub_13234();
      v212 = sub_13024();
      v213(v212);
LABEL_19:
      sub_132A4();
      v184 = v169;
      v185 = v163;
      break;
    default:
      sub_11670(v169, v163, type metadata accessor for OxygenSaturationQueryModel);
      LOBYTE(v328[0]) = 0;
      sub_FA70();
      v177 = v252;
      v178 = v329;
      v179 = v325;
      sub_16E60C();
      sub_131C0();
      sub_11808(v180, v181);
      v182 = v254;
      sub_16E67C();
      (*(v253 + 8))(v177, v182);
      sub_FAC4(v163, type metadata accessor for OxygenSaturationQueryModel);
      sub_132A4();
      v184 = v179;
      v185 = v178;
      break;
  }

  return v183(v184, v185);
}

uint64_t type metadata accessor for WellnessSnippets()
{
  result = qword_1C5CC0;
  if (!qword_1C5CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_F37C()
{
  result = qword_1C5A28;
  if (!qword_1C5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A28);
  }

  return result;
}

uint64_t sub_F3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WellnessSnippets();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_F434()
{
  result = qword_1C5A30;
  if (!qword_1C5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A30);
  }

  return result;
}

unint64_t sub_F488()
{
  result = qword_1C5A38;
  if (!qword_1C5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A38);
  }

  return result;
}

unint64_t sub_F4DC()
{
  result = qword_1C5A40;
  if (!qword_1C5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A40);
  }

  return result;
}

unint64_t sub_F530()
{
  result = qword_1C5A50;
  if (!qword_1C5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A50);
  }

  return result;
}

unint64_t sub_F584()
{
  result = qword_1C5A60;
  if (!qword_1C5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A60);
  }

  return result;
}

unint64_t sub_F5D8()
{
  result = qword_1C5A70;
  if (!qword_1C5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A70);
  }

  return result;
}

unint64_t sub_F62C()
{
  result = qword_1C5A80;
  if (!qword_1C5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A80);
  }

  return result;
}

unint64_t sub_F680()
{
  result = qword_1C5A88;
  if (!qword_1C5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A88);
  }

  return result;
}

unint64_t sub_F728()
{
  result = qword_1C5A90;
  if (!qword_1C5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A90);
  }

  return result;
}

unint64_t sub_F77C()
{
  result = qword_1C5AA0;
  if (!qword_1C5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AA0);
  }

  return result;
}

unint64_t sub_F7D0()
{
  result = qword_1C5AB0;
  if (!qword_1C5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AB0);
  }

  return result;
}

unint64_t sub_F824()
{
  result = qword_1C5AC0;
  if (!qword_1C5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AC0);
  }

  return result;
}

unint64_t sub_F878()
{
  result = qword_1C5AD0;
  if (!qword_1C5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AD0);
  }

  return result;
}

unint64_t sub_F8CC()
{
  result = qword_1C5AD8;
  if (!qword_1C5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AD8);
  }

  return result;
}

unint64_t sub_F920()
{
  result = qword_1C5AE0;
  if (!qword_1C5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AE0);
  }

  return result;
}

unint64_t sub_F974()
{
  result = qword_1C5AF0;
  if (!qword_1C5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AF0);
  }

  return result;
}

unint64_t sub_F9C8()
{
  result = qword_1C5B00;
  if (!qword_1C5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5B00);
  }

  return result;
}

unint64_t sub_FA1C()
{
  result = qword_1C5B10;
  if (!qword_1C5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5B10);
  }

  return result;
}

unint64_t sub_FA70()
{
  result = qword_1C5B20;
  if (!qword_1C5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5B20);
  }

  return result;
}

uint64_t sub_FAC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t WellnessSnippets.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v321 = a2;
  v3 = sub_2440(&qword_1C5B30, &qword_16F7F8);
  sub_12F4C(v3, &__src[48]);
  v303 = v4;
  v6 = *(v5 + 64);
  sub_433C();
  __chkstk_darwin(v7);
  sub_13088();
  sub_130A0(v8);
  v9 = sub_2440(&qword_1C5B38, &qword_16F800);
  sub_12F4C(v9, &__src[40]);
  v325 = v10;
  v12 = *(v11 + 64);
  sub_433C();
  __chkstk_darwin(v13);
  sub_13088();
  sub_130A0(v14);
  v15 = sub_2440(&qword_1C5B40, &qword_16F808);
  sub_12F4C(v15, &__src[24]);
  v324 = v16;
  v18 = *(v17 + 64);
  sub_433C();
  __chkstk_darwin(v19);
  sub_13088();
  sub_130A0(v20);
  v21 = sub_2440(&qword_1C5B48, &qword_16F810);
  sub_12F4C(v21, &__src[16]);
  v300 = v22;
  v24 = *(v23 + 64);
  sub_433C();
  __chkstk_darwin(v25);
  sub_13088();
  sub_130A0(v26);
  v27 = sub_2440(&qword_1C5B50, &qword_16F818);
  sub_12F4C(v27, __src);
  v299 = v28;
  v30 = *(v29 + 64);
  sub_433C();
  __chkstk_darwin(v31);
  sub_13088();
  sub_130A0(v32);
  v33 = sub_2440(&qword_1C5B58, &qword_16F820);
  sub_12F4C(v33, &v327);
  v296 = v34;
  v36 = *(v35 + 64);
  sub_433C();
  __chkstk_darwin(v37);
  sub_13088();
  sub_130A0(v38);
  v39 = sub_2440(&qword_1C5B60, &qword_16F828);
  sub_12F4C(v39, &v326);
  v297 = v40;
  v42 = *(v41 + 64);
  sub_433C();
  __chkstk_darwin(v43);
  sub_13088();
  sub_130A0(v44);
  v45 = sub_2440(&qword_1C5B68, &qword_16F830);
  sub_12F4C(v45, &v323);
  v294 = v46;
  v48 = *(v47 + 64);
  sub_433C();
  __chkstk_darwin(v49);
  sub_13088();
  sub_130A0(v50);
  v51 = sub_2440(&qword_1C5B70, &qword_16F838);
  sub_12F4C(v51, &v321);
  v293 = v52;
  v54 = *(v53 + 64);
  sub_433C();
  __chkstk_darwin(v55);
  sub_13088();
  sub_130A0(v56);
  v57 = sub_2440(&qword_1C5B78, &qword_16F840);
  sub_12F4C(v57, &v319);
  v292 = v58;
  v60 = *(v59 + 64);
  sub_433C();
  __chkstk_darwin(v61);
  sub_13088();
  sub_130A0(v62);
  v63 = sub_2440(&qword_1C5B80, &qword_16F848);
  sub_12F4C(v63, v317);
  v319 = v64;
  v66 = *(v65 + 64);
  sub_433C();
  __chkstk_darwin(v67);
  sub_13088();
  sub_130A0(v68);
  v69 = sub_2440(&qword_1C5B88, &qword_16F850);
  sub_12F4C(v69, v316);
  v291 = v70;
  v72 = *(v71 + 64);
  sub_433C();
  __chkstk_darwin(v73);
  sub_13088();
  sub_130A0(v74);
  v75 = sub_2440(&qword_1C5B90, &qword_16F858);
  sub_12F4C(v75, v314);
  v290 = v76;
  v78 = *(v77 + 64);
  sub_433C();
  __chkstk_darwin(v79);
  sub_13088();
  sub_130A0(v80);
  v81 = sub_2440(&qword_1C5B98, &qword_16F860);
  sub_12F4C(v81, v312);
  v289 = v82;
  v84 = *(v83 + 64);
  sub_433C();
  __chkstk_darwin(v85);
  sub_13088();
  sub_130A0(v86);
  v87 = sub_2440(&qword_1C5BA0, &qword_16F868);
  sub_12F4C(v87, v310);
  v288 = v88;
  v90 = *(v89 + 64);
  sub_433C();
  __chkstk_darwin(v91);
  sub_13088();
  sub_130A0(v92);
  v93 = sub_2440(&qword_1C5BA8, &qword_16F870);
  sub_12F4C(v93, v308);
  v287 = v94;
  v96 = *(v95 + 64);
  sub_433C();
  __chkstk_darwin(v97);
  sub_13088();
  sub_130A0(v98);
  v99 = sub_2440(&qword_1C5BB0, &qword_16F878);
  sub_12F4C(v99, &__src[232]);
  v323 = v100;
  v102 = *(v101 + 64);
  sub_433C();
  __chkstk_darwin(v103);
  sub_13088();
  v330 = v104;
  sub_CA04();
  v322 = type metadata accessor for WellnessSnippets();
  v105 = sub_8B38(v322);
  v107 = *(v106 + 64);
  __chkstk_darwin(v105);
  sub_13058();
  __chkstk_darwin(v108);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v109);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v110);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v111);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v112);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v113);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v114);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v115);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v116);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v117);
  sub_8AC0();
  sub_13058();
  v119 = __chkstk_darwin(v118);
  v121 = &v275 - v120;
  v122 = __chkstk_darwin(v119);
  v124 = &v275 - v123;
  v125 = __chkstk_darwin(v122);
  v127 = &v275 - v126;
  v128 = __chkstk_darwin(v125);
  v130 = &v275 - v129;
  v131 = __chkstk_darwin(v128);
  v133 = &v275 - v132;
  __chkstk_darwin(v131);
  v135 = &v275 - v134;
  v137 = a1[3];
  v136 = a1[4];
  v327 = a1;
  sub_2D20(a1, v137);
  sub_F37C();
  v138 = v328;
  sub_16E76C();
  if (v138)
  {
    goto LABEL_10;
  }

  v277 = v133;
  v278 = v130;
  v279 = v127;
  v280 = v124;
  v281 = v121;
  v139 = v324;
  v140 = v325;
  v328 = v135;
  v141 = v326;
  v142 = v330;
  v143 = sub_16E5FC();
  v147 = sub_11558(v143, 0);
  if (v145 == v146 >> 1)
  {
    v148 = v323;
LABEL_9:
    v162 = v322;
    v163 = sub_16E4BC();
    swift_allocError();
    v165 = v164;
    v166 = *(sub_2440(&qword_1C5BB8, &qword_16F880) + 48);
    *v165 = v162;
    sub_16E57C();
    sub_16E4AC();
    (*(*(v163 - 8) + 104))(v165, enum case for DecodingError.typeMismatch(_:), v163);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v148 + 8))(v142, v141);
LABEL_10:
    v167 = v327;
    return sub_2D64(v167);
  }

  v276 = 0;
  if (v145 >= (v146 >> 1))
  {
    __break(1u);
    JUMPOUT(0x114E4);
  }

  v149 = *(v144 + v145);
  sub_115A0(v145 + 1, v146 >> 1, v147, v144, v145, v146);
  v151 = v150;
  v153 = v152;
  swift_unknownObjectRelease();
  if (v151 != v153 >> 1)
  {
    v141 = v326;
    v148 = v323;
    v142 = v330;
    goto LABEL_9;
  }

  v154 = v140;
  v155 = v139;
  v156 = v321;
  v157 = v276;
  v158 = v320;
  v159 = v319;
  switch(v149)
  {
    case 1:
      sub_130B8(1);
      sub_FA1C();
      sub_12F7C(&__src[64]);
      type metadata accessor for BloodPressureQueryModel();
      sub_13190();
      sub_11808(v190, v191);
      sub_13078(&v296);
      sub_13034();
      sub_130D0();
      swift_unknownObjectRelease();
      v242 = sub_13010(v309);
      v243(v242);
      v244 = sub_12F30();
      v245(v244);
      sub_13068();
      goto LABEL_30;
    case 2:
      sub_130B8(2);
      sub_F9C8();
      sub_12F7C(&__src[72]);
      type metadata accessor for BloodPressureLogModel();
      sub_13148();
      sub_11808(v180, v181);
      sub_13078(&v297);
      sub_13034();
      sub_130D0();
      swift_unknownObjectRelease();
      v226 = sub_13010(v311);
      v227(v226);
      v228 = sub_12F30();
      v229(v228);
      sub_13068();
      goto LABEL_30;
    case 3:
      sub_130B8(3);
      sub_F974();
      sub_130C4();
      v187 = v330;
      sub_16E56C();
      if (v157)
      {
        sub_13094(&__src[208]);
        v197(v187, v159);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      type metadata accessor for CycleTrackingLogModel();
      sub_130E8();
      sub_11808(v198, v199);
      v200 = v280;
      sub_1324C();
      sub_130D0();
      swift_unknownObjectRelease();
      sub_13094(v313);
      v230 = sub_13298();
      v231(v230);
      v232 = sub_12F30();
      v233(v232);
      sub_130AC();
      swift_storeEnumTagMultiPayload();
      sub_12F64();
      v209 = v200;
LABEL_31:
      v272 = v328;
      sub_11670(v209, v328, v208);
      v273 = v327;
      sub_12F64();
      sub_11670(v272, v156, v274);
      v167 = v273;
      break;
    case 4:
      sub_130B8(4);
      sub_F920();
      sub_12F7C(&__src[88]);
      type metadata accessor for GenericButtonModel();
      sub_131F0();
      sub_11808(v174, v175);
      sub_13078(v298);
      sub_13034();
      sub_130D0();
      swift_unknownObjectRelease();
      v214 = sub_13010(v315);
      v215(v214);
      v216 = sub_12F30();
      v217(v216);
      sub_13068();
      goto LABEL_30;
    case 5:
      sub_130B8(5);
      sub_F878();
      sub_12F7C(&__src[96]);
      sub_11724();
      sub_1324C();
      sub_130D0();
      swift_unknownObjectRelease();
      v246 = *(v159 + 8);
      v247 = sub_13298();
      v248(v247);
      v249 = sub_12F30();
      v250(v249);
      v251 = *&__src[16];
      v252 = *&__src[32];
      v253 = *&__src[40];
      v254 = __src[48];
      v186 = v282;
      *v282 = *__src;
      v186[1] = v251;
      *(v186 + 4) = v252;
      *(v186 + 5) = v253;
      *(v186 + 48) = v254;
      sub_130AC();
      goto LABEL_29;
    case 6:
      sub_130B8(6);
      sub_F824();
      sub_12F7C(&__src[104]);
      type metadata accessor for GenericMedCompletedLogModel();
      sub_13208();
      sub_11808(v195, v196);
      sub_13078(v301);
      sub_13034();
      sub_130D0();
      swift_unknownObjectRelease();
      v260 = sub_13010(v318);
      v261(v260);
      v262 = sub_12F30();
      v263(v262);
      sub_13068();
      goto LABEL_30;
    case 7:
      sub_130B8(7);
      sub_F7D0();
      sub_12F7C(&__src[112]);
      type metadata accessor for HealthDataLogModel();
      sub_131D8();
      sub_11808(v188, v189);
      sub_13078(v302);
      sub_13034();
      sub_130D0();
      swift_unknownObjectRelease();
      v234 = sub_13010(&v320);
      v235(v234);
      v236 = sub_12F30();
      v237(v236);
      sub_13068();
      goto LABEL_30;
    case 8:
      sub_130B8(8);
      sub_F77C();
      sub_12F7C(&__src[120]);
      type metadata accessor for GenericQueryModel();
      sub_13178();
      sub_11808(v201, v202);
      sub_13078(&v303);
      sub_13034();
      sub_130D0();
      swift_unknownObjectRelease();
      v268 = sub_13010(&v322);
      v269(v268);
      v270 = sub_12F30();
      v271(v270);
      sub_13068();
      goto LABEL_30;
    case 9:
      sub_130B8(9);
      sub_F728();
      sub_12F7C(&__src[128]);
      type metadata accessor for HeightQueryModel();
      sub_13160();
      sub_11808(v178, v179);
      sub_13078(v304);
      sub_13034();
      sub_130D0();
      swift_unknownObjectRelease();
      v222 = sub_13010(&v325);
      v223(v222);
      v224 = sub_12F30();
      v225(v224);
      sub_13068();
      goto LABEL_30;
    case 10:
      sub_130B8(10);
      sub_F62C();
      sub_12F7C(&__src[136]);
      sub_116D0();
      sub_130C4();
      sub_1324C();
      sub_13274(&v324);
      swift_unknownObjectRelease();
      v264 = sub_13264();
      v265(v264);
      v266 = sub_13220();
      v267(v266);
      v186 = v283;
      memcpy(v283, __src, 0xF1uLL);
      sub_130AC();
      goto LABEL_29;
    case 11:
      sub_130B8(11);
      sub_F5D8();
      sub_12F7C(&__src[144]);
      type metadata accessor for SingleActivitySummaryModel();
      sub_13100();
      sub_11808(v172, v173);
      sub_13078(v305);
      sub_13034();
      sub_130D0();
      swift_unknownObjectRelease();
      v210 = sub_13010(&v328);
      v211(v210);
      v212 = sub_12F30();
      v213(v212);
      sub_13068();
      goto LABEL_30;
    case 12:
      sub_130B8(12);
      sub_F584();
      sub_12F7C(&__src[152]);
      type metadata accessor for SleepQueryModel();
      sub_131A8();
      sub_11808(v176, v177);
      sub_13078(v306);
      sub_13034();
      sub_130D0();
      swift_unknownObjectRelease();
      v218 = sub_13010(&__src[8]);
      v219(v218);
      v220 = sub_12F30();
      v221(v220);
      sub_13068();
      goto LABEL_30;
    case 13:
      sub_130B8(13);
      sub_F530();
      sub_12FAC();
      type metadata accessor for SpecificMedCompletedLogModel();
      sub_13118();
      sub_11808(v192, v193);
      v194 = v285;
      sub_130C4();
      sub_16E5EC();
      sub_130D0();
      swift_unknownObjectRelease();
      v255 = *(v155 + 8);
      v256 = sub_1328C();
      v257(v256);
      v258 = sub_12F30();
      v259(v258);
      sub_130AC();
      swift_storeEnumTagMultiPayload();
      sub_12F64();
      v209 = v194;
      goto LABEL_31;
    case 14:
      sub_130B8(14);
      sub_F4DC();
      sub_12FAC();
      type metadata accessor for TemperatureQueryModel();
      sub_13130();
      sub_11808(v169, v170);
      v171 = v286;
      sub_130C4();
      sub_16E5EC();
      sub_130D0();
      swift_unknownObjectRelease();
      v203 = *(v154 + 8);
      v204 = sub_1328C();
      v205(v204);
      v206 = sub_12F30();
      v207(v206);
      sub_130AC();
      swift_storeEnumTagMultiPayload();
      sub_12F64();
      v209 = v171;
      goto LABEL_31;
    case 15:
      sub_130B8(15);
      sub_F434();
      sub_12F7C(&__src[168]);
      sub_1161C();
      sub_130C4();
      sub_1324C();
      sub_13274(&__src[32]);
      swift_unknownObjectRelease();
      v182 = sub_13264();
      v183(v182);
      v184 = sub_13220();
      v185(v184);
      v186 = v284;
      memcpy(v284, __src, 0x59uLL);
      sub_130AC();
LABEL_29:
      swift_storeEnumTagMultiPayload();
      sub_12F64();
      v209 = v186;
      goto LABEL_31;
    default:
      __src[0] = 0;
      sub_FA70();
      sub_12F7C(&__src[56]);
      type metadata accessor for OxygenSaturationQueryModel();
      sub_131C0();
      sub_11808(v160, v161);
      sub_13078(v295);
      sub_13034();
      sub_130D0();
      swift_unknownObjectRelease();
      v238 = sub_13010(v307);
      v239(v238);
      v240 = sub_12F30();
      v241(v240);
      sub_13068();
LABEL_30:
      swift_storeEnumTagMultiPayload();
      sub_12F64();
      v209 = v158;
      goto LABEL_31;
  }

  return sub_2D64(v167);
}

uint64_t sub_11558(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_115A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1161C()
{
  result = qword_1C5BC0;
  if (!qword_1C5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5BC0);
  }

  return result;
}

uint64_t sub_11670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_8B38(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_116D0()
{
  result = qword_1C5BE8;
  if (!qword_1C5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5BE8);
  }

  return result;
}

unint64_t sub_11724()
{
  result = qword_1C5C10;
  if (!qword_1C5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5C10);
  }

  return result;
}

uint64_t sub_11808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1185C()
{
  result = type metadata accessor for OxygenSaturationQueryModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BloodPressureQueryModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for BloodPressureLogModel();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for CycleTrackingLogModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for GenericButtonModel();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for GenericMedCompletedLogModel();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for HealthDataLogModel();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for GenericQueryModel();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for HeightQueryModel();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for SingleActivitySummaryModel();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for SleepQueryModel();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for SpecificMedCompletedLogModel();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for TemperatureQueryModel();
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                            return 0;
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
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WellnessSnippets.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessSnippets.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
        JUMPOUT(0x11B28);
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedsLoggingCorrectionsFlow.CorrectionsTask(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_11CBC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x11D58);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_11D94()
{
  result = qword_1C5CF8;
  if (!qword_1C5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5CF8);
  }

  return result;
}

unint64_t sub_11DEC()
{
  result = qword_1C5D00;
  if (!qword_1C5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D00);
  }

  return result;
}

unint64_t sub_11E44()
{
  result = qword_1C5D08;
  if (!qword_1C5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D08);
  }

  return result;
}

unint64_t sub_11E9C()
{
  result = qword_1C5D10;
  if (!qword_1C5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D10);
  }

  return result;
}

unint64_t sub_11EF4()
{
  result = qword_1C5D18;
  if (!qword_1C5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D18);
  }

  return result;
}

unint64_t sub_11F4C()
{
  result = qword_1C5D20;
  if (!qword_1C5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D20);
  }

  return result;
}

unint64_t sub_11FA4()
{
  result = qword_1C5D28;
  if (!qword_1C5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D28);
  }

  return result;
}

unint64_t sub_11FFC()
{
  result = qword_1C5D30;
  if (!qword_1C5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D30);
  }

  return result;
}

unint64_t sub_12054()
{
  result = qword_1C5D38;
  if (!qword_1C5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D38);
  }

  return result;
}

unint64_t sub_120AC()
{
  result = qword_1C5D40;
  if (!qword_1C5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D40);
  }

  return result;
}

unint64_t sub_12104()
{
  result = qword_1C5D48;
  if (!qword_1C5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D48);
  }

  return result;
}

unint64_t sub_1215C()
{
  result = qword_1C5D50;
  if (!qword_1C5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D50);
  }

  return result;
}

unint64_t sub_121B4()
{
  result = qword_1C5D58;
  if (!qword_1C5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D58);
  }

  return result;
}

unint64_t sub_1220C()
{
  result = qword_1C5D60;
  if (!qword_1C5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D60);
  }

  return result;
}

unint64_t sub_12264()
{
  result = qword_1C5D68;
  if (!qword_1C5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D68);
  }

  return result;
}

unint64_t sub_122BC()
{
  result = qword_1C5D70;
  if (!qword_1C5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D70);
  }

  return result;
}

unint64_t sub_12314()
{
  result = qword_1C5D78;
  if (!qword_1C5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D78);
  }

  return result;
}

unint64_t sub_1236C()
{
  result = qword_1C5D80;
  if (!qword_1C5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D80);
  }

  return result;
}

unint64_t sub_123C4()
{
  result = qword_1C5D88;
  if (!qword_1C5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D88);
  }

  return result;
}

unint64_t sub_1241C()
{
  result = qword_1C5D90;
  if (!qword_1C5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D90);
  }

  return result;
}

unint64_t sub_12474()
{
  result = qword_1C5D98;
  if (!qword_1C5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D98);
  }

  return result;
}

unint64_t sub_124CC()
{
  result = qword_1C5DA0;
  if (!qword_1C5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DA0);
  }

  return result;
}

unint64_t sub_12524()
{
  result = qword_1C5DA8;
  if (!qword_1C5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DA8);
  }

  return result;
}

unint64_t sub_1257C()
{
  result = qword_1C5DB0;
  if (!qword_1C5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DB0);
  }

  return result;
}

unint64_t sub_125D4()
{
  result = qword_1C5DB8;
  if (!qword_1C5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DB8);
  }

  return result;
}

unint64_t sub_1262C()
{
  result = qword_1C5DC0;
  if (!qword_1C5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DC0);
  }

  return result;
}

unint64_t sub_12684()
{
  result = qword_1C5DC8;
  if (!qword_1C5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DC8);
  }

  return result;
}

unint64_t sub_126DC()
{
  result = qword_1C5DD0;
  if (!qword_1C5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DD0);
  }

  return result;
}

unint64_t sub_12734()
{
  result = qword_1C5DD8;
  if (!qword_1C5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DD8);
  }

  return result;
}

unint64_t sub_1278C()
{
  result = qword_1C5DE0;
  if (!qword_1C5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DE0);
  }

  return result;
}

unint64_t sub_127E4()
{
  result = qword_1C5DE8;
  if (!qword_1C5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DE8);
  }

  return result;
}

unint64_t sub_1283C()
{
  result = qword_1C5DF0;
  if (!qword_1C5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DF0);
  }

  return result;
}

unint64_t sub_12894()
{
  result = qword_1C5DF8;
  if (!qword_1C5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DF8);
  }

  return result;
}

unint64_t sub_128EC()
{
  result = qword_1C5E00;
  if (!qword_1C5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E00);
  }

  return result;
}

unint64_t sub_12944()
{
  result = qword_1C5E08;
  if (!qword_1C5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E08);
  }

  return result;
}

unint64_t sub_1299C()
{
  result = qword_1C5E10;
  if (!qword_1C5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E10);
  }

  return result;
}

unint64_t sub_129F4()
{
  result = qword_1C5E18;
  if (!qword_1C5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E18);
  }

  return result;
}

unint64_t sub_12A4C()
{
  result = qword_1C5E20;
  if (!qword_1C5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E20);
  }

  return result;
}

unint64_t sub_12AA4()
{
  result = qword_1C5E28;
  if (!qword_1C5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E28);
  }

  return result;
}

unint64_t sub_12AFC()
{
  result = qword_1C5E30;
  if (!qword_1C5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E30);
  }

  return result;
}

unint64_t sub_12B54()
{
  result = qword_1C5E38;
  if (!qword_1C5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E38);
  }

  return result;
}

unint64_t sub_12BAC()
{
  result = qword_1C5E40;
  if (!qword_1C5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E40);
  }

  return result;
}

unint64_t sub_12C04()
{
  result = qword_1C5E48;
  if (!qword_1C5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E48);
  }

  return result;
}

unint64_t sub_12C5C()
{
  result = qword_1C5E50;
  if (!qword_1C5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E50);
  }

  return result;
}

unint64_t sub_12CB4()
{
  result = qword_1C5E58;
  if (!qword_1C5E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E58);
  }

  return result;
}

unint64_t sub_12D0C()
{
  result = qword_1C5E60;
  if (!qword_1C5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E60);
  }

  return result;
}

unint64_t sub_12D64()
{
  result = qword_1C5E68;
  if (!qword_1C5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E68);
  }

  return result;
}

unint64_t sub_12DBC()
{
  result = qword_1C5E70;
  if (!qword_1C5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E70);
  }

  return result;
}

unint64_t sub_12E14()
{
  result = qword_1C5E78;
  if (!qword_1C5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E78);
  }

  return result;
}

unint64_t sub_12E6C()
{
  result = qword_1C5E80;
  if (!qword_1C5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E80);
  }

  return result;
}

unint64_t sub_12EC4()
{
  result = qword_1C5E88;
  if (!qword_1C5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E88);
  }

  return result;
}

uint64_t sub_12F30()
{
  v1 = *(*(v0 - 384) + 8);
  result = *(v0 - 72);
  v3 = *(v0 - 360);
  return result;
}

uint64_t sub_12F4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_12F7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 360);
  v5 = *(v1 - 72);

  return sub_16E56C();
}

uint64_t sub_12FAC()
{
  v2 = *(v0 - 360);
  v3 = *(v0 - 72);

  return sub_16E56C();
}

uint64_t sub_12FE8()
{
  v3 = *(v1 - 72);
  v4 = *(v0 + 592);

  return sub_16E60C();
}

uint64_t sub_13034()
{
  v2 = *(v0 - 256);

  return sub_16E5EC();
}

uint64_t sub_13068()
{
  result = v0;
  v3 = *(v1 - 392);
  return result;
}

uint64_t sub_13220()
{
  v2 = *v0;
  result = *(v1 - 72);
  v4 = *(v1 - 360);
  return result;
}

uint64_t sub_13234()
{
  v2 = *(v0 + 608);

  return sub_16E67C();
}

uint64_t sub_1324C()
{

  return sub_16E5EC();
}

uint64_t WatchRingsModel.exerciseGoalValue.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t WatchRingsModel.exerciseGoalValue.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.exerciseTotalValue.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t WatchRingsModel.exerciseTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.moveGoalValue.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t WatchRingsModel.moveGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.moveTotalValue.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t WatchRingsModel.moveTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.standGoalValue.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t WatchRingsModel.standGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.standTotalValue.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t WatchRingsModel.standTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.exerciseLabel.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return sub_8B9C();
}

uint64_t PhoneRingsModel.exerciseLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t PhoneRingsModel.exerciseValueLabel.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return sub_8B9C();
}

uint64_t PhoneRingsModel.exerciseValueLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t PhoneRingsModel.exerciseUnitLabel.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return sub_8B9C();
}

uint64_t PhoneRingsModel.exerciseUnitLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t PhoneRingsModel.moveLabel.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return sub_8B9C();
}

uint64_t PhoneRingsModel.moveLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t PhoneRingsModel.moveValueLabel.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return sub_8B9C();
}

uint64_t PhoneRingsModel.moveValueLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t PhoneRingsModel.moveUnitLabel.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return sub_8B9C();
}

uint64_t PhoneRingsModel.moveUnitLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 184);

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t PhoneRingsModel.standLabel.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return sub_8B9C();
}

uint64_t PhoneRingsModel.standLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 200);

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t PhoneRingsModel.standValueLabel.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return sub_8B9C();
}

uint64_t PhoneRingsModel.standValueLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 216);

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t PhoneRingsModel.standUnitLabel.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return sub_8B9C();
}

uint64_t PhoneRingsModel.standUnitLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 232);

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

void __swiftcall PhoneRingsModel.init(exerciseGoalValue:exerciseTotalValue:moveGoalValue:moveTotalValue:standGoalValue:standTotalValue:exerciseLabel:exerciseUnitLabel:moveLabel:moveUnitLabel:standLabel:standUnitLabel:isSmartEnabled:)(WellnessFlowPlugin::PhoneRingsModel *__return_ptr retstr, Swift::Double exerciseGoalValue, Swift::Double exerciseTotalValue, Swift::Double moveGoalValue, Swift::Double moveTotalValue, Swift::Double standGoalValue, Swift::Double standTotalValue, Swift::String exerciseLabel, Swift::String exerciseUnitLabel, Swift::String moveLabel, Swift::String moveUnitLabel, Swift::String standLabel, Swift::String standUnitLabel, Swift::Bool isSmartEnabled)
{
  v68 = 0;
  v66 = 0;
  v64 = 0;
  v62 = 0;
  v60 = 0;
  v58 = 0;
  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (exerciseTotalValue <= -9.22337204e18)
  {
    goto LABEL_26;
  }

  v20 = v16;
  if (exerciseTotalValue >= sub_154A4())
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = v28;
  v34 = v27;
  v35 = v26;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v22;
  v40 = v21;
  v41 = v32;
  v42 = v31;
  v43 = v30;
  v44 = v29;
  *__src = exerciseTotalValue;
  v45 = sub_16E68C();
  sub_15480(v45, v46);
  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_28;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v20 >= sub_154A4())
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v55 = v40;
  *__src = v20;
  v104._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v104);

  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_31;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v43 >= sub_154A4())
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v54 = v71;
  *__src = v43;
  v47 = sub_16E68C();
  sub_15480(v47, v48);
  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_34;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v44 >= sub_154A4())
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v53 = v70;
  *__src = v44;
  v105._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v105);

  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_37;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v41 >= sub_154A4())
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v49 = v70;
  v52 = v71;
  *__src = v41;
  v50 = sub_16E68C();
  sub_15480(v50, v51);
  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_40;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v42 < sub_154A4())
  {
    v106._countAndFlagsBits = sub_16E68C();
    sub_16E26C(v106);

    *__src = v20;
    __src[8] = v68;
    *&__src[9] = *v67;
    *&__src[12] = *&v67[3];
    *&__src[16] = exerciseTotalValue;
    __src[24] = v66;
    *&__src[25] = *v65;
    *&__src[28] = *&v65[3];
    *&__src[32] = v44;
    __src[40] = v64;
    *&__src[44] = *&v63[3];
    *&__src[41] = *v63;
    *&__src[48] = v43;
    __src[56] = v62;
    *&__src[60] = *&v61[3];
    *&__src[57] = *v61;
    *&__src[64] = v42;
    __src[72] = v60;
    *&__src[76] = *&v59[3];
    *&__src[73] = *v59;
    *&__src[80] = v41;
    __src[88] = v58;
    *&__src[92] = *&v57[3];
    *&__src[89] = *v57;
    *&__src[96] = v55;
    *&__src[104] = v39;
    *&__src[112] = v70;
    *&__src[120] = v71;
    *&__src[128] = v38;
    *&__src[136] = v37;
    *&__src[144] = v36;
    *&__src[152] = v35;
    *&__src[160] = v70;
    *&__src[168] = v71;
    *&__src[176] = v34;
    *&__src[184] = v33;
    *&__src[192] = standLabel;
    *&__src[208] = v70;
    *&__src[216] = v71;
    *&__src[224] = standUnitLabel;
    __src[240] = isSmartEnabled;
    v70 = v20;
    LOBYTE(v71) = v68;
    HIDWORD(v71) = *&v67[3];
    *(&v71 + 1) = *v67;
    v72 = exerciseTotalValue;
    v73 = v66;
    *v74 = *v65;
    *&v74[3] = *&v65[3];
    v75 = v44;
    v76 = v64;
    *v77 = *v63;
    *&v77[3] = *&v63[3];
    v78 = v43;
    v79 = v62;
    *v80 = *v61;
    *&v80[3] = *&v61[3];
    v81 = v42;
    v82 = v60;
    *v83 = *v59;
    *&v83[3] = *&v59[3];
    v84 = v41;
    v85 = v58;
    *v86 = *v57;
    *&v86[3] = *&v57[3];
    v87 = v55;
    v88 = v39;
    v89 = v53;
    v90 = v54;
    v91 = v38;
    v92 = v37;
    v93 = v36;
    v94 = v35;
    v95 = v49;
    v96 = v52;
    v97 = v34;
    v98 = v33;
    v99 = standLabel;
    v100 = *&__src[208];
    v101 = *&__src[216];
    v102 = standUnitLabel;
    v103 = isSmartEnabled;
    sub_13E04(__src, v56);
    sub_F6D4(&v70);
    memcpy(retstr, __src, 0xF1uLL);
    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_13E3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000000017AB80 == a2;
  if (v3 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000000017ABA0 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616F4765766F6DLL && a2 == 0xED000065756C6156;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61746F5465766F6DLL && a2 == 0xEE0065756C61566CLL;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616F47646E617473 && a2 == 0xEE0065756C61566CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746F54646E617473 && a2 == 0xEF65756C61566C61;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6573696372657865 && a2 == 0xED00006C6562614CLL;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x800000000017ABC0 == a2;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x800000000017ABE0 == a2;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6562614C65766F6DLL && a2 == 0xE90000000000006CLL;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x756C615665766F6DLL && a2 == 0xEE006C6562614C65;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x74696E5565766F6DLL && a2 == 0xED00006C6562614CLL;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x62614C646E617473 && a2 == 0xEA00000000006C65;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6C6156646E617473 && a2 == 0xEF6C6562614C6575;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x696E55646E617473 && a2 == 0xEE006C6562614C74;
                              if (v19 || (sub_16E6BC() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_16E6BC();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
        }
      }
    }
  }
}

unint64_t sub_14368(char a1)
{
  result = 0x6C616F4765766F6DLL;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x61746F5465766F6DLL;
      break;
    case 4:
      result = 0x616F47646E617473;
      break;
    case 5:
      result = 0x746F54646E617473;
      break;
    case 6:
      result = 0x6573696372657865;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6562614C65766F6DLL;
      break;
    case 10:
      result = 0x756C615665766F6DLL;
      break;
    case 11:
      result = 0x74696E5565766F6DLL;
      break;
    case 12:
      result = 0x62614C646E617473;
      break;
    case 13:
      result = 0x6C6156646E617473;
      break;
    case 14:
      result = 0x696E55646E617473;
      break;
    case 15:
      result = 0x457472616D537369;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_145B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_13E3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_145D8(uint64_t a1)
{
  v2 = sub_14910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14614(uint64_t a1)
{
  v2 = sub_14910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneRingsModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C5E90, &qword_170D30);
  v6 = sub_42F0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v46 - v11;
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_14910();
  sub_16E77C();
  v14 = *v3;
  v15 = *(v3 + 8);
  v47 = 0;
  sub_16E62C();
  if (!v2)
  {
    v16 = v3[2];
    v17 = *(v3 + 24);
    sub_153FC(1);
    sub_16E62C();
    v18 = v3[4];
    v19 = *(v3 + 40);
    sub_153FC(2);
    sub_16E62C();
    v20 = v3[6];
    v21 = *(v3 + 56);
    sub_153FC(3);
    sub_16E62C();
    v22 = v3[8];
    v23 = *(v3 + 72);
    sub_153FC(4);
    sub_16E62C();
    v24 = v3[10];
    v25 = *(v3 + 88);
    sub_153FC(5);
    sub_16E62C();
    v26 = v3[12];
    v27 = v3[13];
    sub_153FC(6);
    sub_16E61C();
    v28 = v3[14];
    v29 = v3[15];
    sub_153FC(7);
    sub_16E61C();
    v30 = v3[16];
    v31 = v3[17];
    sub_153FC(8);
    sub_16E61C();
    v32 = v3[18];
    v33 = v3[19];
    sub_153FC(9);
    sub_16E61C();
    v34 = v3[20];
    v35 = v3[21];
    sub_153FC(10);
    sub_16E61C();
    v36 = v3[22];
    v37 = v3[23];
    sub_153FC(11);
    sub_16E61C();
    v38 = v3[24];
    v39 = v3[25];
    sub_153FC(12);
    sub_16E61C();
    v40 = v3[26];
    v41 = v3[27];
    sub_153FC(13);
    sub_16E61C();
    v42 = v3[28];
    v43 = v3[29];
    sub_153FC(14);
    sub_16E61C();
    v44 = *(v3 + 240);
    v47 = 15;
    sub_16E65C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_14910()
{
  result = qword_1C5E98;
  if (!qword_1C5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E98);
  }

  return result;
}

void *PhoneRingsModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2440(&qword_1C5EA0, &qword_170D38);
  v6 = sub_42F0(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  v65 = a1;
  sub_2D20(a1, a1[3]);
  sub_14910();
  sub_16E76C();
  if (v2)
  {
    v118 = v2;
    sub_1543C();
    sub_2D64(a1);
  }

  else
  {
    v10 = a2;
    LOBYTE(v68) = 0;
    v11 = sub_16E59C();
    v117 = v12 & 1;
    sub_15414(1);
    v13 = sub_16E59C();
    v115 = v14 & 1;
    sub_15414(2);
    v15 = sub_16E59C();
    v113 = v16 & 1;
    sub_15414(3);
    v63 = sub_16E59C();
    v111 = v17 & 1;
    sub_15414(4);
    v62 = sub_16E59C();
    v109 = v18 & 1;
    sub_15414(5);
    v61 = sub_16E59C();
    v107 = v19 & 1;
    sub_15414(6);
    v58 = sub_16E58C();
    v60 = v21;
    sub_15414(7);
    v22 = sub_16E58C();
    v59 = v23;
    v56 = v22;
    sub_15414(8);
    v55 = sub_16E58C();
    v57 = v24;
    v25 = v13;
    v53 = v10;
    sub_15414(9);
    v26 = sub_16E58C();
    v54 = v27;
    v28 = v26;
    sub_15414(10);
    v29 = sub_16E58C();
    v52 = v30;
    v31 = v29;
    sub_15414(11);
    v50 = sub_16E58C();
    v51 = v32;
    sub_15414(12);
    v48 = sub_16E58C();
    v49 = v33;
    sub_15414(13);
    v47 = sub_16E58C();
    v66 = v34;
    sub_15414(14);
    v45 = sub_16E58C();
    v46 = v35;
    v105 = 15;
    v118 = 0;
    v36 = sub_16E5CC();
    v37 = sub_15428();
    v38(v37);
    v64 = v36 & 1;
    v67[0] = v11;
    v39 = v117;
    LOBYTE(v67[1]) = v117;
    v67[2] = v25;
    v40 = v115;
    LOBYTE(v67[3]) = v115;
    v67[4] = v15;
    v41 = v113;
    LOBYTE(v67[5]) = v113;
    v67[6] = v63;
    v42 = v111;
    LOBYTE(v67[7]) = v111;
    v67[8] = v62;
    v43 = v109;
    LOBYTE(v67[9]) = v109;
    v67[10] = v61;
    v44 = v107;
    LOBYTE(v67[11]) = v107;
    v67[12] = v58;
    v67[13] = v60;
    v67[14] = v56;
    v67[15] = v59;
    v67[16] = v55;
    v67[17] = v57;
    v67[18] = v28;
    v67[19] = v54;
    v67[20] = v31;
    v67[21] = v52;
    v67[22] = v50;
    v67[23] = v51;
    v67[24] = v48;
    v67[25] = v49;
    v67[26] = v47;
    v67[27] = v66;
    v67[28] = v45;
    v67[29] = v46;
    LOBYTE(v67[30]) = v64;
    sub_13E04(v67, &v68);
    sub_2D64(v65);
    v68 = v11;
    v69 = v39;
    *v70 = *v116;
    *&v70[3] = *&v116[3];
    v71 = v25;
    v72 = v40;
    *v73 = *v114;
    *&v73[3] = *&v114[3];
    v74 = v15;
    v75 = v41;
    *v76 = *v112;
    *&v76[3] = *&v112[3];
    v77 = v63;
    v78 = v42;
    *&v79[3] = *&v110[3];
    *v79 = *v110;
    v80 = v62;
    v81 = v43;
    *&v82[3] = *&v108[3];
    *v82 = *v108;
    v83 = v61;
    v84 = v44;
    *v85 = *v106;
    *&v85[3] = *&v106[3];
    v86 = v58;
    v87 = v60;
    v88 = v56;
    v89 = v59;
    v90 = v55;
    v91 = v57;
    v92 = v28;
    v93 = v54;
    v94 = v31;
    v95 = v52;
    v96 = v50;
    v97 = v51;
    v98 = v48;
    v99 = v49;
    v100 = v47;
    v101 = v66;
    v102 = v45;
    v103 = v46;
    v104 = v64;
    sub_F6D4(&v68);
    return memcpy(v53, v67, 0xF1uLL);
  }
}

void *sub_15084@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = PhoneRingsModel.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xF1uLL);
  }

  return result;
}

uint64_t sub_150F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 241))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 104);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1514C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneRingsModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
        JUMPOUT(0x152BCLL);
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_152F8()
{
  result = qword_1C5EA8;
  if (!qword_1C5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EA8);
  }

  return result;
}

unint64_t sub_15350()
{
  result = qword_1C5EB0;
  if (!qword_1C5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EB0);
  }

  return result;
}

unint64_t sub_153A8()
{
  result = qword_1C5EB8;
  if (!qword_1C5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EB8);
  }

  return result;
}

void sub_15464()
{
  v1 = v0[16];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[13];
}

void sub_15480(unint64_t a1, unint64_t a2)
{
  STACK[0x280] = a1;
  STACK[0x288] = a2;
  v3._countAndFlagsBits = 47;
  v3._object = 0xE100000000000000;

  sub_16E26C(v3);
}

uint64_t sub_154C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 296))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_15508(uint64_t result, int a2, int a3)
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
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_155A4()
{
  sub_17858();

  return sub_16C33C();
}

uint64_t sub_155F8()
{
  sub_8A88();
  *(v1 + 392) = v2;
  *(v1 + 216) = v3;
  *(v1 + 224) = v0;
  v4 = type metadata accessor for GenericButtonModel();
  *(v1 + 232) = v4;
  v5 = *(*(v4 - 8) + 64);
  *(v1 + 240) = sub_8BC0();
  v6 = *(*(sub_2440(&qword_1C57F8, &unk_172510) - 8) + 64);
  *(v1 + 248) = sub_8BC0();
  v7 = sub_16BE9C();
  *(v1 + 256) = v7;
  sub_888C(v7);
  *(v1 + 264) = v8;
  v10 = *(v9 + 64);
  *(v1 + 272) = sub_8BC0();
  v11 = sub_16C46C();
  *(v1 + 280) = v11;
  sub_888C(v11);
  *(v1 + 288) = v12;
  v14 = *(v13 + 64) + 15;
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  v15 = sub_16C7BC();
  *(v1 + 312) = v15;
  sub_888C(v15);
  *(v1 + 320) = v16;
  v18 = *(v17 + 64);
  *(v1 + 328) = sub_8BC0();
  v19 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64);
  *(v1 + 336) = sub_8BC0();
  v20 = sub_17960();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_157D4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 392);
  sub_16D74();
  v3 = sub_16E14C();
  v4 = sub_1730C(v2, v3);

  v5 = *(v1 + 280);
  v6 = 1;
  if (v4 != 205)
  {
    v7 = *(v0 + 336);
    sub_208C0(v4);
    sub_16E23C();

    v6 = 0;
  }

  v8 = *(v0 + 336);
  v9 = sub_16D5CC();
  sub_214C(v8, v6, 1, v9);
  sub_179F4(v4);
  v10 = swift_task_alloc();
  *(v0 + 344) = v10;
  *v10 = v0;
  v10[1] = sub_1592C;
  v11 = *(v0 + 336);

  return sub_1649CC();
}

uint64_t sub_1592C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *v2;
  *(*v2 + 352) = a1;

  v6 = *(v3 + 336);
  if (v1)
  {

    sub_C878(v6, &qword_1C5800, &unk_16F510);
    v7 = sub_162F4;
  }

  else
  {
    sub_C878(v6, &qword_1C5800, &unk_16F510);
    v7 = sub_15A9C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_15A9C()
{
  v1 = v0[44];
  v2 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  v7 = v0[28];
  sub_16C43C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  v8 = [v1 catId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  v9 = v7[9];
  sub_2D20(v7 + 5, v7[8]);
  v10 = *(v9 + 8);
  v11 = sub_17970();
  v12(v11);
  v13 = v0[6];
  sub_2D20(v0 + 2, v0[5]);
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64(v0 + 2);
  }

  else
  {
    v14 = v7[9];
    sub_2D20(v7 + 5, v7[8]);
    v15 = *(v14 + 8);
    v16 = sub_17970();
    v17(v16);
    v18 = v0[11];
    sub_2D20(v0 + 7, v0[10]);
    sub_17970();
    v19 = sub_16C3FC();
    sub_2D64(v0 + 7);
    sub_2D64(v0 + 2);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      v22 = v0[44];
      v23 = v0[28];
      v24 = v23[33];
      v25 = v23[34];
      sub_2D20(v23 + 30, v24);
      sub_2440(&qword_1C5ED8, &unk_173090);
      v26 = swift_allocObject();
      v0[47] = v26;
      *(v26 + 16) = xmmword_170F70;
      *(v26 + 32) = v22;
      v27 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
      v28 = v22;
      swift_task_alloc();
      sub_179E8();
      v0[48] = v29;
      *v29 = v30;
      v29[1] = sub_16128;
      v31 = v0[41];

      return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v0 + 12, v26, v31, v24, v25);
    }
  }

  v20 = v0[31];
  v21 = v0[32];
  sub_1602A8(v0[28], v20);
  if (sub_369C(v20, 1, v21) == 1)
  {
    sub_C878(v0[31], &qword_1C57F8, &unk_172510);
    goto LABEL_6;
  }

  v32 = v0[44];
  v34 = v0[33];
  v33 = v0[34];
  v35 = v0[32];
  v37 = v0[29];
  v36 = v0[30];
  v38 = v0[28];
  (*(v34 + 32))(v33, v0[31], v35);
  v39 = v38[36];
  v40 = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
  v42 = v41;
  (*(v34 + 16))(v36 + *(v37 + 20), v33, v35);
  *v36 = v40;
  v36[1] = v42;
  v43 = v38[33];
  v44 = v38[34];
  sub_2D20(v38 + 30, v43);
  v0[25] = type metadata accessor for WellnessSnippets();
  v0[26] = sub_17548();
  v45 = sub_9910(v0 + 22);
  sub_175A0(v36, v45);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v46 = swift_allocObject();
  v0[45] = v46;
  *(v46 + 16) = xmmword_170F70;
  *(v46 + 32) = v32;
  v47 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v48 = v32;
  swift_task_alloc();
  sub_179E8();
  v0[46] = v49;
  *v49 = v50;
  v49[1] = sub_15F24;
  v51 = v0[41];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v0 + 17, v0 + 22, v46, v51, v43, v44);
}

uint64_t sub_15F24()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 368);
  v4 = *(v1 + 360);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  sub_2D64((v2 + 176));
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1602C()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 216);

  sub_17604(v7);
  v9 = *(v5 + 8);
  v10 = sub_C9E0();
  v11(v10);
  v12 = *(v2 + 8);
  v13 = sub_C9C8();
  v14(v13);
  sub_17464((v0 + 136), v8);
  sub_17980();

  sub_C9BC();

  return v15();
}

uint64_t sub_16128()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 384);
  v3 = *(v1 + 376);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_16228()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 216);

  v5 = *(v2 + 8);
  v6 = sub_C9C8();
  v7(v6);
  sub_17464((v0 + 96), v4);
  sub_17980();

  sub_C9BC();

  return v8();
}

uint64_t sub_162F4()
{
  v1 = *(v0 + 216);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  sub_17980();

  sub_C9BC();

  return v2();
}

uint64_t sub_1639C()
{
  sub_8A88();
  v1[86] = v0;
  v1[85] = v2;
  v3 = sub_16DBEC();
  v1[87] = v3;
  sub_888C(v3);
  v1[88] = v4;
  v6 = *(v5 + 64) + 15;
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_16458()
{
  v46 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  sub_16DBBC();
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = sub_C9C8();
  v4(v5);
  v6 = sub_16DBDC();
  v7 = sub_16E36C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 720);
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  if (v8)
  {
    v44 = v4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_3AB7C(0xD000000000000016, 0x8000000000170FE0, &v45);
    _os_log_impl(&def_259DC, v6, v7, "Executing %s", v12, 0xCu);
    sub_2D64(v13);

    v4 = v44;
  }

  v14 = *(v10 + 8);
  v15 = sub_C9E0();
  v14(v15);
  v16 = *(v0 + 688);
  v17 = v16[4];
  sub_2D20(v16, v16[3]);
  v18 = *(v17 + 24);
  v19 = sub_C9E0();
  v21 = v20(v19);
  if (v21 == 270)
  {
    v22 = *(v0 + 680);
    sub_8284(*(v0 + 688) + 80, v0 + 184);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v0 + 184);
LABEL_13:
    v41 = *(v0 + 720);
    v42 = *(v0 + 712);

    sub_C9BC();

    return v43();
  }

  v23 = v21;
  sub_16D74();
  v24 = sub_16E14C();
  v25 = sub_1730C(v23, v24);

  if (v25 == 205 || !sub_C1AF4(v23, &off_1B8198))
  {
    v30 = *(v0 + 712);
    v31 = *(v0 + 696);
    swift_beginAccess();
    v32 = sub_C9C8();
    v4(v32);
    v33 = sub_16DBDC();
    v34 = sub_16E37C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&def_259DC, v33, v34, "Nil HealthKitIdentifier, returning genericNotSupported instead of dataTypeNotSupported.", v35, 2u);
    }

    v36 = *(v0 + 712);
    v37 = *(v0 + 704);
    v38 = *(v0 + 696);
    v39 = *(v0 + 688);
    v40 = *(v0 + 680);

    (v14)(v36, v38);
    sub_8284(v39 + 80, v0 + 16);
    *(v0 + 176) = 0;
    sub_17358();
    sub_16C4EC();
    sub_173AC(v0 + 16);
    goto LABEL_13;
  }

  swift_task_alloc();
  sub_179E8();
  *(v0 + 728) = v26;
  *v26 = v27;
  v26[1] = sub_16858;
  v28 = *(v0 + 688);

  return sub_155F8();
}

uint64_t sub_16858()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 728);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1693C()
{
  if (*(v0 + 568))
  {
    v1 = *(v0 + 680);
    sub_17464((v0 + 544), v0 + 504);
    sub_8388(v0 + 504, v0 + 584);
    v2 = swift_allocObject();
    sub_17464((v0 + 584), v2 + 16);
    sub_16C73C();
    v3 = sub_16C1DC();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    *(v0 + 672) = sub_16C1CC();
    sub_16C4EC();
    sub_2D64((v0 + 504));
  }

  else
  {
    v6 = *(v0 + 688);
    v7 = *(v0 + 680);
    sub_C878(v0 + 544, &qword_1C5ED0, &qword_171090);
    sub_8284(v6 + 80, v0 + 344);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v0 + 344);
  }

  v8 = *(v0 + 720);
  v9 = *(v0 + 712);

  sub_C9BC();

  return v10();
}

uint64_t sub_16AC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_16AE0, 0, 0);
}

uint64_t sub_16AE0()
{
  sub_8A88();
  sub_8388(*(v0 + 24), *(v0 + 16));
  sub_C9BC();

  return v1();
}

uint64_t sub_16B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_16BEC;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_16BEC()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_16CDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_1639C();
}

unint64_t sub_16D74()
{
  result = qword_1C5EC0;
  if (!qword_1C5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EC0);
  }

  return result;
}

uint64_t sub_16DC8()
{
  sub_16E25C();
}

uint64_t sub_16F40(uint64_t a1, __int16 a2)
{
  sub_140650(a2);
  sub_179A0();
}

uint64_t sub_16F98(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_179A0();
}

uint64_t sub_16FDC()
{
  sub_16E25C();
}

uint64_t sub_170FC()
{
  sub_16E25C();
}

Swift::Int sub_171B0()
{
  sub_16E72C();
  sub_170FC();
  return sub_16E75C();
}

Swift::Int sub_17224(uint64_t a1, __int16 a2)
{
  sub_16E72C();
  sub_140650(a2);
  sub_179C4();

  return sub_16E75C();
}

Swift::Int sub_172B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_16E72C();
  a3(a2);
  sub_179C4();

  return sub_16E75C();
}

uint64_t sub_1730C(__int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 205;
  }

  v3 = sub_17660(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 205;
  }
}

unint64_t sub_17358()
{
  result = qword_1C5EC8;
  if (!qword_1C5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EC8);
  }

  return result;
}

double sub_17400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_176E8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_8220(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_17464(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1747C()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_174B4()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

unint64_t sub_17548()
{
  result = qword_1C5EE0;
  if (!qword_1C5EE0)
  {
    type metadata accessor for WellnessSnippets();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EE0);
  }

  return result;
}

uint64_t sub_175A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericButtonModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17604(uint64_t a1)
{
  v2 = type metadata accessor for GenericButtonModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_17660(__int16 a1)
{
  v3 = *(v1 + 40);
  sub_16E72C();
  sub_140650(a1);
  sub_16E25C();

  v4 = sub_16E75C();

  return sub_17760(a1, v4);
}

unint64_t sub_176E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_16E72C();
  sub_16E25C();
  v6 = sub_16E75C();

  return sub_178AC(a1, a2, v6);
}

unint64_t sub_17760(__int16 a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_140650(*(*(v2 + 48) + 2 * i));
    v7 = v6;
    v9 = v8;
    sub_140650(a1);
    if (v7 == v11 && v9 == v10)
    {

      return i;
    }

    v13 = sub_16E6BC();

    if (v13)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_17858()
{
  result = qword_1C5EE8;
  if (!qword_1C5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EE8);
  }

  return result;
}

unint64_t sub_178AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_16E6BC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_17980()
{
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[34];
  v8 = v0[30];
  v7 = v0[31];
}

uint64_t sub_179A0()
{

  return sub_16E25C();
}

uint64_t sub_179C4()
{

  return sub_16E25C();
}

BOOL sub_179F4(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_16DBEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 205)
  {
    v8 = sub_16DBBC();
    swift_beginAccess();
    (*(v4 + 16))(v7, v8, v3);
    v9 = sub_16DBDC();
    v10 = sub_16E37C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&def_259DC, v9, v10, "Cannot determine if isLoggingSupported for nil identifier. Assuming it is supported.", v11, 2u);
    }

    (*(v4 + 8))(v7, v3);
    return 1;
  }

  else
  {
    return !sub_C1BA4(a1, &off_1B8158);
  }
}

uint64_t sub_17B94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_17BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_17C4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_17960();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_17C74()
{
  v1 = *(v0 + 16);
  v1[3] = sub_16C85C();
  v1[4] = &protocol witness table for AceOutput;
  sub_9910(v1);
  sub_16C84C();
  sub_C9BC();

  return v2();
}

uint64_t sub_17D10()
{
  sub_8A88();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = *(*(sub_2440(&qword_1C6020, &qword_1712D8) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_17DA4()
{
  sub_8A88();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = *(*(sub_2440(&qword_1C6020, &qword_1712D8) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

void sub_17E38()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[5];
    v9 = *(v1 + 24);
    *(v1 + 16) = v4;
    *(v1 + 24) = v6;

    v10 = sub_16C7BC();
    (*(*(v10 - 8) + 16))(v5, v7, v10);
    sub_214C(v5, 0, 1, v10);
    v11 = OBJC_IVAR____TtC18WellnessFlowPlugin19MockResponseFactory_outputGenerationManifest;
    swift_beginAccess();
    sub_18FD0(v5, v1 + v11);
    swift_endAccess();
    v8[3] = sub_16C85C();
    v8[4] = &protocol witness table for AceOutput;
    sub_9910(v8);
    sub_16C84C();

    sub_C9BC();

    v12();
  }
}

uint64_t sub_17F9C()
{
  sub_8A88();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = *(*(sub_2440(&qword_1C6020, &qword_1712D8) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_18030()
{
  v1 = v0[3];

  sub_19040(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin19MockResponseFactory_outputGenerationManifest);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t type metadata accessor for MockResponseFactory()
{
  result = qword_1C5F18;
  if (!qword_1C5F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_180F0()
{
  sub_18198();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_18198()
{
  if (!qword_1C5F28)
  {
    sub_16C7BC();
    v0 = sub_16E3EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C5F28);
    }
  }
}

uint64_t sub_181F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18288;

  return sub_17C4C(a1);
}

uint64_t sub_18288()
{
  sub_8A88();
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_C9BC();

  return v2();
}

uint64_t sub_18374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_18458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5);
}

uint64_t sub_186DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_187C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190AC;

  return sub_17DA4();
}

uint64_t sub_18874()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190AC;

  return sub_17D10();
}

uint64_t sub_18928()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190AC;

  return sub_17F9C();
}

uint64_t sub_189DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ResponseGenerating.makeResponseOutput(resultModel:conversationModel:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_18288;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResponseGenerating.makeResponseOutput(resultModel:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(resultModel:outputGenerationManifest:)(a1, a2, a3, a4, a5);
}

uint64_t sub_18B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResponseGenerating.makeResponseOutput(conversationModel:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(conversationModel:outputGenerationManifest:)(a1, a2, a3, a4, a5);
}