void *sub_1E540(uint64_t a1)
{
  v2 = sub_106290();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  __chkstk_darwin(v2);
  v64 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E4(&qword_1376F0, &unk_10A900);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v67 = &v64 - v7;
  v8 = sub_105B70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v68 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E4(&qword_137710, &qword_108108);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v16 = sub_25E4(&qword_137718, &qword_108110);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v69 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v64 - v21;
  __chkstk_darwin(v20);
  v24 = &v64 - v23;
  if (a1)
  {
    v70 = sub_105600();
    if (sub_105840())
    {
      sub_105B60();

      goto LABEL_6;
    }
  }

  else
  {
    v70 = 0;
  }

  (*(v9 + 56))(v24, 1, 1, v8);
LABEL_6:
  (*(v9 + 104))(v22, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v8);
  (*(v9 + 56))(v22, 0, 1, v8);
  v25 = *(v12 + 48);
  sub_14994(v24, v15, &qword_137718, &qword_108110);
  sub_14994(v22, &v15[v25], &qword_137718, &qword_108110);
  v26 = *(v9 + 48);
  if (v26(v15, 1, v8) == 1)
  {
    sub_16F70(v22, &qword_137718, &qword_108110);
    sub_16F70(v24, &qword_137718, &qword_108110);
    if (v26(&v15[v25], 1, v8) == 1)
    {
      sub_16F70(v15, &qword_137718, &qword_108110);
      v27 = v70;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v28 = v69;
  sub_14994(v15, v69, &qword_137718, &qword_108110);
  if (v26(&v15[v25], 1, v8) == 1)
  {
    sub_16F70(v22, &qword_137718, &qword_108110);
    sub_16F70(v24, &qword_137718, &qword_108110);
    (*(v9 + 8))(v28, v8);
LABEL_11:
    sub_16F70(v15, &qword_137710, &qword_108108);
    v27 = v70;
LABEL_17:
    if (qword_136C68 != -1)
    {
      swift_once();
    }

    v41 = sub_106D20();
    sub_135C4(v41, qword_1376D8);

    v42 = sub_106D10();
    v43 = sub_106FC0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v71 = v27;
      v72 = v45;
      *v44 = 136315138;

      sub_25E4(&qword_137720, &qword_108118);
      v46 = sub_106E30();
      v48 = sub_722E8(v46, v47, &v72);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "Failed to resolve NoEntity reference to Alarm reference: %s", v44, 0xCu);
      sub_2738(v45);
    }

    else
    {
    }

    return 0;
  }

  v29 = v68;
  (*(v9 + 32))(v68, &v15[v25], v8);
  sub_1F804(qword_137728, &type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues);
  v30 = v28;
  v31 = sub_106E00();
  v32 = *(v9 + 8);
  v32(v29, v8);
  sub_16F70(v22, &qword_137718, &qword_108110);
  sub_16F70(v24, &qword_137718, &qword_108110);
  v32(v30, v8);
  sub_16F70(v15, &qword_137718, &qword_108110);
  v27 = v70;
  if ((v31 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v33 = sub_105B10();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_105B00();
  v36 = sub_105950();

  if (!v36)
  {
    goto LABEL_17;
  }

  v37 = v64;
  sub_106280();
  v38 = v67;
  sub_106270();
  (*(v65 + 8))(v37, v66);
  v39 = sub_106D80();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {

    sub_16F70(v38, &qword_1376F0, &unk_10A900);
    goto LABEL_17;
  }

  sub_106AA0();
  v50 = sub_106D50();
  (*(v40 + 8))(v38, v39);
  if (!v50)
  {

    goto LABEL_17;
  }

  if (qword_136C68 != -1)
  {
    swift_once();
  }

  v51 = sub_106D20();
  sub_135C4(v51, qword_1376D8);
  v52 = v50;
  v53 = sub_106D10();
  v54 = sub_106FC0();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v72 = v56;
    *v55 = 136315138;
    v57 = v52;
    v58 = [v57 description];
    v70 = v27;
    v59 = v58;
    v60 = sub_106E20();
    v62 = v61;

    v63 = sub_722E8(v60, v62, &v72);

    *(v55 + 4) = v63;
    _os_log_impl(&dword_0, v53, v54, "resolvedNoEntityReference: Resolved NoEntity reference %s from SRR. Using it to search alarm.", v55, 0xCu);
    sub_2738(v56);
  }

  return v50;
}

id sub_1EED0()
{
  v0 = sub_106960();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105940();
  if (v42)
  {
    sub_1F7A8(v41, v43);
    sub_135FC(v43, v41);
    sub_105A20();
    if (swift_dynamicCast())
    {

      sub_105930();
LABEL_14:

      if (v40)
      {
        v9 = sub_AA950();

LABEL_16:

        sub_2738(v43);
LABEL_19:
        v10 = v41;
LABEL_20:
        sub_2738(v10);
        return v9;
      }

      sub_2738(v43);
LABEL_18:

      v9 = 0;
      goto LABEL_19;
    }

    sub_105A50();
    if (swift_dynamicCast() || (sub_105AC0(), swift_dynamicCast()) || (sub_105A30(), swift_dynamicCast()))
    {
LABEL_13:

      sub_1059F0();
      goto LABEL_14;
    }

    sub_105AA0();
    if (swift_dynamicCast())
    {

      sub_105C60();
      if (v40)
      {
        sub_AB3EC();
      }

      sub_105C60();

      if (v40)
      {
        v9 = sub_AA950();

        goto LABEL_16;
      }

      sub_2738(v43);

      goto LABEL_18;
    }

    sub_105A60();
    if (swift_dynamicCast())
    {
LABEL_26:

      sub_105570();
      goto LABEL_14;
    }

    sub_105A70();
    if (swift_dynamicCast())
    {

      sub_105570();

      if (v40)
      {

        sub_105600();

        v9 = sub_1D748();

        goto LABEL_16;
      }
    }

    else
    {
      sub_105B80();
      if (swift_dynamicCast())
      {
        goto LABEL_13;
      }

      sub_105D80();
      if (swift_dynamicCast())
      {
        goto LABEL_13;
      }

      sub_105AD0();
      if (swift_dynamicCast())
      {

        sub_105C40();
        goto LABEL_14;
      }

      sub_105990();
      if (swift_dynamicCast())
      {
        goto LABEL_13;
      }

      if (swift_dynamicCast())
      {
        goto LABEL_26;
      }
    }

    sub_2738(v41);
    if (sub_105E40() && (v12 = sub_1E22C(), , v12) || (v13 = sub_27744()) != 0 && (v12 = sub_1E540(v13), , v12))
    {
      v14 = [v12 identifier];
      if (v14)
      {
        v15 = v14;
        if (qword_136C68 != -1)
        {
          swift_once();
        }

        v16 = sub_106D20();
        sub_135C4(v16, qword_1376D8);
        v17 = v12;
        v18 = sub_106D10();
        v19 = sub_106FC0();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v41[0] = v21;
          *v20 = 136315138;
          v22 = v17;
          v23 = [v22 description];
          v24 = sub_106E20();
          v26 = v25;

          v27 = sub_722E8(v24, v26, v41);

          *(v20 + 4) = v27;
          _os_log_impl(&dword_0, v18, v19, "Found alarm reference from task: %s", v20, 0xCu);
          sub_2738(v21);
        }

        sub_106A50();
        v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v29 = sub_106E10();
        v9 = [v28 initWithIdentifier:v15 displayString:v29];

        sub_1F7B8();
        isa = sub_107090(1).super.super.isa;
        [v9 setIncludeSleepAlarm:isa];

        v10 = v43;
        goto LABEL_20;
      }
    }

    if (qword_136C68 != -1)
    {
      swift_once();
    }

    v31 = sub_106D20();
    sub_135C4(v31, qword_1376D8);

    v32 = sub_106D10();
    v33 = sub_106FB0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41[0] = v35;
      *v34 = 136315138;
      sub_274CC(v4);
      v36 = sub_106950();
      v38 = v37;
      (*(v1 + 8))(v4, v0);
      v39 = sub_722E8(v36, v38, v41);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_0, v32, v33, "Unable to get alarmSearch from alarmTask. Verb is %s", v34, 0xCu);
      sub_2738(v35);
    }

    sub_2738(v43);
  }

  else
  {
    sub_16F70(v41, &qword_137490, qword_108C80);
    if (qword_136C68 != -1)
    {
      swift_once();
    }

    v5 = sub_106D20();
    sub_135C4(v5, qword_1376D8);
    v6 = sub_106D10();
    v7 = sub_106FB0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "NLv4TranslationParse: Dialog act is not a UsoTask_noVerb_common_Alarm or has no target, cannot support input", v8, 2u);
    }
  }

  return 0;
}

_OWORD *sub_1F7A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1F7B8()
{
  result = qword_137520;
  if (!qword_137520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_137520);
  }

  return result;
}

uint64_t sub_1F804(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1F878(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1F908(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int sub_1FA34(unsigned __int8 a1)
{
  sub_107400();
  sub_107410(a1);
  return sub_107420();
}

Swift::Int sub_1FA98()
{
  sub_107400();
  sub_1FA0C(v2, *v0);
  return sub_107420();
}

uint64_t sub_1FB6C()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v15 - v3;
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_108210;
  *(v5 + 32) = 0x6C6562616CLL;
  *(v5 + 40) = 0xE500000000000000;
  sub_14994(v0, v4, &qword_137598, &unk_107EB0);
  v6 = sub_106160();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    v8 = sub_1A924((v5 + 48));
    (*(v7 + 32))(v8, v4, v6);
  }

  strcpy((v5 + 80), "noAlarmExists");
  *(v5 + 94) = -4864;
  found = type metadata accessor for ErrorNotFoundParameters(0);
  *(v5 + 96) = *(v0 + found[5]);
  *(v5 + 120) = &type metadata for Bool;
  *(v5 + 128) = 0x6F43686372616573;
  *(v5 + 136) = 0xEF6E6F697469646ELL;
  v10 = *(v0 + found[6]);
  v11 = sub_25E4(&qword_137888, &unk_10A130);
  *(v5 + 144) = v10;
  *(v5 + 168) = v11;
  *(v5 + 176) = 1701669236;
  *(v5 + 184) = 0xE400000000000000;
  v12 = *(v0 + found[7]);
  if (v12)
  {
    v13 = sub_1060A0();
  }

  else
  {
    v13 = 0;
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  *(v5 + 192) = v12;
  *(v5 + 216) = v13;

  return v5;
}

uint64_t sub_1FDC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_14994(a1, v13, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v16;
}

uint64_t sub_1FF98(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1FFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_200C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_20184()
{
  sub_202B8(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_202B8(319, &qword_137900, &type metadata accessor for SpeakableString, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_202B8(319, &unk_137908, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_202B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2031C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137940);
  sub_135C4(v0, qword_137940);
  return sub_106A80();
}

uint64_t sub_20368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_104E10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v9 = sub_32658(0xD00000000000001CLL, 0x800000000010C530), (v10 & 1) != 0) && (sub_135FC(*(a1 + 56) + 32 * v9, v22), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v20;
    v11 = v21;
    sub_20680(v20, v21);
    sub_104E00();
    if (qword_136C70 != -1)
    {
      swift_once();
    }

    v15 = sub_106D20();
    sub_135C4(v15, qword_137940);
    v16 = sub_106D10();
    v17 = sub_106FC0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Followup PluginAction available.", v18, 2u);
    }

    sub_14DD8(v12, v11);

    (*(v5 + 32))(a2, v8, v4);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

uint64_t sub_20680(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2077C(uint64_t (*a1)(void))
{
  v3 = sub_25E4(&qword_137598, &unk_107EB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  sub_25E4(&qword_137880, &unk_108290);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1082C0;
  *(v10 + 32) = 0xD000000000000016;
  *(v10 + 40) = 0x800000000010C590;
  sub_14994(v1, v9, &qword_137598, &unk_107EB0);
  v11 = sub_106160();
  v12 = *(v11 - 8);
  v27 = *(v12 + 48);
  if (v27(v9, 1, v11) == 1)
  {
    sub_16F70(v9, &qword_137598, &unk_107EB0);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    v13 = sub_1A924((v10 + 48));
    (*(v12 + 32))(v13, v9, v11);
  }

  *(v10 + 80) = 7368801;
  *(v10 + 88) = 0xE300000000000000;
  v14 = a1(0);
  v15 = *(v1 + v14[5]);
  v26 = v12;
  if (v15)
  {
    v16 = sub_106100();
    v17 = v15;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v17;
  *(v10 + 120) = v16;
  strcpy((v10 + 128), "hideSleepAlarm");
  *(v10 + 143) = -18;
  *(v10 + 144) = *(v1 + v14[6]);
  *(v10 + 168) = &type metadata for Bool;
  strcpy((v10 + 176), "isMixedAlarms");
  *(v10 + 190) = -4864;
  *(v10 + 192) = *(v1 + v14[7]);
  *(v10 + 216) = &type metadata for Bool;
  *(v10 + 224) = 0xD000000000000010;
  *(v10 + 232) = 0x800000000010C5B0;
  *(v10 + 240) = *(v1 + v14[8]);
  *(v10 + 264) = &type metadata for Bool;
  *(v10 + 272) = 0xD000000000000018;
  *(v10 + 280) = 0x800000000010C5D0;
  *(v10 + 288) = *(v1 + v14[9]);
  *(v10 + 312) = &type metadata for Bool;
  *(v10 + 320) = 0xD000000000000012;
  *(v10 + 328) = 0x800000000010C5F0;
  *(v10 + 336) = *(v1 + v14[10]);
  *(v10 + 360) = &type metadata for Bool;
  *(v10 + 368) = 0xD000000000000016;
  *(v10 + 376) = 0x800000000010C610;
  *(v10 + 384) = *(v1 + v14[11]);
  *(v10 + 408) = &type metadata for Bool;
  *(v10 + 416) = 0xD000000000000016;
  *(v10 + 424) = 0x800000000010C630;
  *(v10 + 432) = *(v1 + v14[12]);
  *(v10 + 456) = &type metadata for Bool;
  *(v10 + 464) = 0xD000000000000017;
  *(v10 + 472) = 0x800000000010C650;
  *(v10 + 480) = *(v1 + v14[13]);
  *(v10 + 504) = &type metadata for Bool;
  *(v10 + 512) = 0x736D657469;
  *(v10 + 520) = 0xE500000000000000;
  v18 = *(v1 + v14[14]);
  *(v10 + 552) = sub_25E4(&qword_137B40, &unk_108390);
  *(v10 + 528) = v18;
  *(v10 + 560) = 0x616C417065656C73;
  *(v10 + 568) = 0xEA00000000006D72;
  v19 = *(v1 + v14[15]);
  if (v19)
  {
    v20 = type metadata accessor for AlarmAlarm(0);
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(v10 + 584) = 0u;
  }

  *(v10 + 576) = v21;
  *(v10 + 600) = v20;
  *(v10 + 608) = 0xD000000000000012;
  *(v10 + 616) = 0x800000000010C670;
  sub_14994(v1 + v14[16], v7, &qword_137598, &unk_107EB0);
  if (v27(v7, 1, v11) == 1)
  {

    sub_16F70(v7, &qword_137598, &unk_107EB0);
    *(v10 + 624) = 0u;
    *(v10 + 640) = 0u;
  }

  else
  {
    *(v10 + 648) = v11;
    v22 = sub_1A924((v10 + 624));
    (*(v26 + 32))(v22, v7, v11);
  }

  *(v10 + 656) = 0xD000000000000011;
  *(v10 + 664) = 0x800000000010C690;
  v23 = *(v1 + v14[17]);
  if (v23)
  {
    v24 = sub_1060A0();
  }

  else
  {
    v24 = 0;
    *(v10 + 680) = 0u;
  }

  *(v10 + 672) = v23;
  *(v10 + 696) = v24;

  return v10;
}

uint64_t sub_20CD4(uint64_t (*a1)(void))
{
  v3 = sub_25E4(&qword_137598, &unk_107EB0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  sub_25E4(&qword_137880, &unk_108290);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1082D0;
  strcpy((v7 + 32), "isMixedAlarms");
  *(v7 + 46) = -4864;
  *(v7 + 48) = *v1;
  *(v7 + 72) = &type metadata for Bool;
  *(v7 + 80) = 0xD000000000000010;
  *(v7 + 88) = 0x800000000010C5B0;
  *(v7 + 96) = v1[1];
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 128) = 0xD000000000000018;
  *(v7 + 136) = 0x800000000010C5D0;
  *(v7 + 144) = v1[2];
  *(v7 + 168) = &type metadata for Bool;
  *(v7 + 176) = 0xD000000000000012;
  *(v7 + 184) = 0x800000000010C5F0;
  *(v7 + 192) = v1[3];
  *(v7 + 216) = &type metadata for Bool;
  *(v7 + 224) = 0xD000000000000016;
  *(v7 + 232) = 0x800000000010C610;
  *(v7 + 240) = v1[4];
  *(v7 + 264) = &type metadata for Bool;
  *(v7 + 272) = 0xD000000000000016;
  *(v7 + 280) = 0x800000000010C630;
  *(v7 + 288) = v1[5];
  *(v7 + 312) = &type metadata for Bool;
  *(v7 + 320) = 0xD000000000000017;
  *(v7 + 328) = 0x800000000010C650;
  *(v7 + 336) = v1[6];
  *(v7 + 360) = &type metadata for Bool;
  *(v7 + 368) = 0xD000000000000012;
  *(v7 + 376) = 0x800000000010C670;
  v8 = a1(0);
  sub_14994(&v1[*(v8 + 44)], v6, &qword_137598, &unk_107EB0);
  v9 = sub_106160();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_16F70(v6, &qword_137598, &unk_107EB0);
    *(v7 + 384) = 0u;
    *(v7 + 400) = 0u;
  }

  else
  {
    *(v7 + 408) = v9;
    v11 = sub_1A924((v7 + 384));
    (*(v10 + 32))(v11, v6, v9);
  }

  *(v7 + 416) = 0xD000000000000011;
  *(v7 + 424) = 0x800000000010C690;
  v12 = *&v1[*(v8 + 48)];
  if (v12)
  {
    v13 = sub_1060A0();
  }

  else
  {
    v13 = 0;
    *(v7 + 440) = 0;
    *(v7 + 448) = 0;
  }

  *(v7 + 432) = v12;
  *(v7 + 456) = v13;

  return v7;
}

uint64_t sub_20FD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_14994(a1, v13, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v16;
}

void sub_211D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 56));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2132C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

void sub_21410()
{
  sub_211D8(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_211D8(319, &qword_137A10, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_211D8(319, &qword_137A18, type metadata accessor for AlarmAlarm, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_211D8(319, &unk_137A20, type metadata accessor for AlarmAlarm, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_211D8(319, &unk_137908, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
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

uint64_t sub_21764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 44);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = a2;
  }

  return result;
}

void sub_2182C()
{
  sub_211D8(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_211D8(319, &unk_137908, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2194C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137CA8);
  sub_135C4(v0, qword_137CA8);
  return sub_106A80();
}

uint64_t sub_21998(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_25E4(&qword_137D80, &qword_108460);
    v2 = sub_107290();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_135FC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1F7A8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1F7A8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1F7A8(v31, v32);
    result = sub_107120(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1F7A8(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_21C94(void *a1)
{
  v2 = [objc_allocWithZone(SAUIAddViews) init];
  v3 = [objc_allocWithZone(SADialog) init];
  v4 = [objc_allocWithZone(SADialogText) init];
  v5 = sub_106E10();
  [v4 setText:v5];

  [v3 setContent:v4];
  v6 = [objc_allocWithZone(SAAlarmSnippet) init];
  v7 = [a1 title];
  [v6 setTitle:v7];

  v8 = v6;
  v9 = [a1 speakableText];
  [v8 setSpeakableText:v9];

  [v8 setDialog:v3];
  sub_16F28(0, &qword_137D88, SAAlarmObject_ptr);
  isa = sub_106ED0().super.isa;
  [v8 setAlarms:isa];

  v11 = [a1 alarms];
  if (!v11)
  {
LABEL_21:
    sub_106EC0();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v35 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      sub_106F10();
    }

    sub_106F20();
    sub_16F28(0, &qword_1375B8, SAAceView_ptr);
    v33 = sub_106ED0().super.isa;

    [v2 setViews:v33];

    sub_104D30();
    v34 = sub_106E10();

    [v2 setDialogPhase:v34];

    return v2;
  }

  v36 = v4;
  v37 = v3;
  v38 = v2;
  v12 = v11;
  v13 = sub_106EE0();

  if (!(v13 >> 62))
  {
    v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

LABEL_19:
  v14 = sub_107270();
  if (!v14)
  {
LABEL_20:

    v2 = v38;
    v4 = v36;
    v3 = v37;
    goto LABEL_21;
  }

LABEL_4:
  v15 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = sub_1071C0();
    }

    else
    {
      if (v15 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }

      v17 = *(v13 + 8 * v15 + 32);
    }

    v18 = v17;
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v20 = [objc_allocWithZone(SAAlarmObject) init];
    v21 = [v18 hour];
    [v20 setHour:v21];

    v22 = [v18 minute];
    [v20 setMinute:v22];

    v23 = [v18 label];
    [v20 setLabel:v23];

    v24 = [v18 enabled];
    [v20 setEnabled:v24];

    v25 = [v18 frequency];
    [v20 setFrequency:v25];

    v26 = [v18 relativeOffsetMinutes];
    [v20 setRelativeOffsetMinutes:v26];

    v27 = [v18 firing];
    [v20 setFiring:v27];

    v28 = [v20 dataSourceInfo];
    [v20 setDataSourceInfo:v28];

    result = [v8 alarms];
    if (!result)
    {
      break;
    }

    v30 = result;
    v31 = sub_106EE0();

    v32 = v20;
    sub_106EC0();
    if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v31 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_106F10();
    }

    sub_106F20();
    if (v31)
    {
      v16.super.isa = sub_106ED0().super.isa;
    }

    else
    {
      v16.super.isa = 0;
    }

    [v8 setAlarms:v16.super.isa];

    ++v15;
    if (v19 == v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_222B8(unint64_t a1)
{
  v2 = sub_104EC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_105060();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (!sub_107270())
    {
      goto LABEL_10;
    }
  }

  else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_10;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = sub_1071C0();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_27;
    }

    v12 = *(a1 + 32);
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = sub_105020();
    if (*(v16 + 16))
    {
      (*(v8 + 16))(v11, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

      sub_105050();
      (*(v8 + 8))(v11, v7);
      sub_104EB0();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
    }

    v21 = sub_21C94(v15);

    sub_25E4(&qword_137D68, &qword_108450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_107FC0;
    strcpy((inited + 32), "ClientFlowView");
    *(inited + 47) = -18;
    v23 = [v21 dictionary];
    if (v23)
    {
      v24 = v23;
      v32 = sub_16F28(0, &qword_137D78, NSMutableDictionary_ptr);
      *&v31 = v24;
      sub_1F7A8(&v31, (inited + 48));
    }

    else
    {
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = 7104878;
      *(inited + 56) = 0xE300000000000000;
    }

    v25 = sub_EA35C(inited);
    swift_setDeallocating();
    sub_227B8(inited + 32);
    v26 = [objc_opt_self() sharedAnalytics];
    if (v26)
    {
      v27 = v26;
      sub_21998(v25);

      isa = sub_106DC0().super.isa;

      [v27 logEventWithType:3700 context:isa];
    }

    else
    {
    }

    return;
  }

LABEL_10:
  if (qword_136C78 != -1)
  {
LABEL_27:
    swift_once();
  }

  v17 = sub_106D20();
  sub_135C4(v17, qword_137CA8);
  v30 = sub_106D10();
  v18 = sub_106FC0();
  if (os_log_type_enabled(v30, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v30, v18, "Snippet did not contain an alarm snippet.", v19, 2u);
  }

  v20 = v30;
}

uint64_t sub_227B8(uint64_t a1)
{
  v2 = sub_25E4(&qword_137D70, &qword_108458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22820(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_25E4(&qword_137508, &qword_107E18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v39 - v6;
  v8 = sub_25E4(&qword_137510, &qword_107E20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v39 - v10;
  v12 = sub_1045E0();
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(v2) init];
  v17 = sub_1047D0();
  v18 = *(*(v17 - 8) + 56);
  v18(v11, 1, 1, v17);
  v19 = sub_1047F0();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v20 = v16;
  sub_1045C0();
  v21 = *a1;
  sub_104590();
  v22 = a1[1];
  sub_1045B0();
  sub_104790();
  v18(v11, 0, 1, v17);
  sub_1045D0();
  isa = sub_104560().super.isa;
  [v20 setTime:isa];

  v24 = a1[2];
  v39[1] = a1[3];
  v25 = sub_106E10();
  [v20 setLabel:v25];

  v26 = a1[4];
  v43 = v26;
  v42 = _swiftEmptyArrayStorage;
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = (v26 + 32);
    do
    {
      v29 = *v28++;
      v30 = sub_106BC0();
      if ((v31 & 1) == 0)
      {
        v32 = v30;
        sub_1069A0();
        v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v34 = sub_106E10();
        v35 = [v33 initWithIdentifier:0 displayString:v34];

        [v35 setRepeatSchedule:v32];
        sub_106EC0();
        if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v36 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
          sub_106F10();
        }

        sub_106F20();
      }

      --v27;
    }

    while (v27);
  }

  sub_16F70(&v43, &qword_137D90, &qword_108468);
  sub_1069A0();
  v37 = sub_106ED0().super.isa;

  [v20 setRepeatSchedule:v37];

  (*(v40 + 8))(v15, v41);
  return v20;
}

id sub_22C8C()
{
  v1 = sub_105700();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_25E4(&qword_137500, &qword_107E10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = [objc_allocWithZone(v0) init];
  sub_B245C(v9);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_16F70(v9, &qword_13AFE0, &qword_10A320);
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_16F70(v9, &qword_13AFE0, &qword_10A320);
    sub_105690();
    (*(v2 + 8))(v5, v1);
  }

  v15 = sub_106220();

  if (v15)
  {
    sub_105F40();

    v16 = sub_1045E0();
    v17 = *(v16 - 8);
    isa = 0;
    if ((*(v17 + 48))(v13, 1, v16) != 1)
    {
      isa = sub_104560().super.isa;
      (*(v17 + 8))(v13, v16);
    }
  }

  else
  {
    v19 = sub_1045E0();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    isa = 0;
  }

  [v14 setTime:isa];

  sub_B2290();
  if (v20)
  {
    sub_106E60();

    v21 = sub_106E10();
  }

  else
  {
    v21 = 0;
  }

  [v14 setLabel:v21];

  v22 = sub_B53C4();
  if (v22)
  {
    v23 = v22;
    INDateComponentsRange.alarmRepeatSchedule.getter();
  }

  sub_1069A0();
  v24 = sub_106ED0().super.isa;

  [v14 setRepeatSchedule:v24];

  return v14;
}

id sub_23088()
{
  v1 = sub_25E4(&qword_137500, &qword_107E10);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = [objc_allocWithZone(v0) init];
  v6 = sub_B68AC();
  [v5 setAlarmSearch:v6];

  [v5 setOperation:2 * (sub_B20AC() == 8)];
  sub_B5BA8(v4);
  v7 = sub_1045E0();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    isa = sub_104560().super.isa;
    (*(v8 + 8))(v4, v7);
  }

  [v5 setProposedTime:isa];

  sub_B2324();
  if (v10)
  {
    v11 = sub_106E10();
  }

  else
  {
    v11 = 0;
  }

  [v5 setProposedLabel:v11];

  v12 = sub_B5620();
  if (v12)
  {
    v13 = sub_105F80();

    if (v13)
    {
      sub_1F7B8();
      v14 = sub_105F00();
      v12 = sub_107080(v14 & 1).super.super.isa;
    }

    else
    {
      v12 = 0;
    }
  }

  [v5 setProposedMeridiemSetByUser:v12];

  return v5;
}

id sub_232D4()
{
  v1 = [objc_allocWithZone(v0) init];
  v2 = sub_B68AC();
  [v1 setAlarmSearch:v2];

  if (sub_B3584() == 13)
  {
    v3 = 3;
  }

  else
  {
    v4 = sub_B20AC();
    v5 = 1;
    if (v4 == 4)
    {
      v5 = 2;
    }

    if (v4 == 7)
    {
      v5 = 4;
    }

    if (v4 == 11)
    {
      v3 = 1;
    }

    else
    {
      v3 = v5;
    }
  }

  [v1 setAlarmSearchType:v3];

  return v1;
}

__n128 sub_23398(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_233AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_233F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2344C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137D98);
  sub_135C4(v0, qword_137D98);
  return sub_106A80();
}

uint64_t sub_23498(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = *(*(sub_25E4(&qword_137DB8, &unk_1085B0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = sub_106D20();
  v2[26] = v4;
  v5 = *(v4 - 8);
  v2[27] = v5;
  v6 = *(v5 + 64) + 15;
  v2[28] = swift_task_alloc();
  v7 = sub_106300();
  v2[29] = v7;
  v8 = *(v7 - 8);
  v2[30] = v8;
  v9 = *(v8 + 64) + 15;
  v2[31] = swift_task_alloc();
  v10 = sub_106320();
  v2[32] = v10;
  v11 = *(v10 - 8);
  v2[33] = v11;
  v12 = *(v11 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v13 = sub_104D60();
  v2[37] = v13;
  v14 = *(v13 - 8);
  v2[38] = v14;
  v15 = *(v14 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v16 = *(*(sub_25E4(&qword_137DC0, &unk_10A0A0) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v17 = sub_106AE0();
  v2[43] = v17;
  v18 = *(v17 - 8);
  v2[44] = v18;
  v19 = *(v18 + 64) + 15;
  v2[45] = swift_task_alloc();
  v20 = sub_104670();
  v2[46] = v20;
  v21 = *(v20 - 8);
  v2[47] = v21;
  v22 = *(v21 + 64) + 15;
  v2[48] = swift_task_alloc();
  v23 = sub_106370();
  v2[49] = v23;
  v24 = *(v23 - 8);
  v2[50] = v24;
  v25 = *(v24 + 64) + 15;
  v2[51] = swift_task_alloc();
  v26 = sub_104FF0();
  v2[52] = v26;
  v27 = *(v26 - 8);
  v2[53] = v27;
  v28 = *(v27 + 64) + 15;
  v2[54] = swift_task_alloc();

  return _swift_task_switch(sub_23888, 0, 0);
}

uint64_t sub_23888()
{
  v103 = v0;
  if (qword_136C80 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4(v0[26], qword_137D98);
  v0[55] = v1;
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UpdateAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  v5 = v0[23];

  sub_25E4(&qword_137DC8, &unk_1085C0);
  v6 = sub_105150();
  v0[56] = v6;
  v7 = sub_105170();
  v0[57] = v7;
  v8 = [v6 updatedAlarm];
  v0[58] = v8;
  if (v8)
  {
    v9 = v8;
    v98 = v7;
    v10 = v0[54];
    v11 = v0[50];
    v12 = v0[51];
    v13 = v0[49];
    sub_25E4(&qword_137DD0, &unk_108920);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_108470;
    *(inited + 32) = v9;
    v15 = v9;
    sub_BD4A4(inited, v10);
    swift_setDeallocating();
    v16 = *(inited + 16);
    swift_arrayDestroy();
    sub_106360();
    LOBYTE(v10) = sub_106340();
    (*(v11 + 8))(v12, v13);
    if (v10)
    {
      v17 = v0[47];
      v18 = v0[48];
      v19 = v0[46];
      sub_106210();
      v20 = sub_75DD4(0, v18, 0);
      v0[59] = v20;
      (*(v17 + 8))(v18, v19);
      if (!v20)
      {
        v71 = sub_106D10();
        v72 = sub_106FB0();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_0, v71, v72, "Can NOT retrieve alarm data.", v73, 2u);
        }

        sub_25E4(&qword_137DD8, &unk_1085D0);
        sub_26E48();
        swift_allocError();
        *v74 = 3;
        swift_willThrow();

        goto LABEL_32;
      }

      v22 = v0[43];
      v21 = v0[44];
      v23 = v0[42];
      sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v23);
      if ((*(v21 + 48))(v23, 1, v22) == 1)
      {
        sub_16F70(v0[42], &qword_137DC0, &unk_10A0A0);
        v24 = sub_106D10();
        v25 = sub_106FB0();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_0, v24, v25, "Can NOT retrieve alarm snippet model.", v26, 2u);
        }

        sub_25E4(&qword_137DD8, &unk_1085D0);
        sub_26E48();
        swift_allocError();
        *v27 = 3;
        swift_willThrow();

LABEL_32:

        v75 = v0[51];
        v76 = v0[48];
        v77 = v0[45];
        v78 = v0[41];
        v79 = v0[42];
        v81 = v0[39];
        v80 = v0[40];
        v82 = v0[36];
        v89 = v0[35];
        v90 = v0[34];
        v92 = v0[31];
        v94 = v0[28];
        v96 = v0[25];
        v100 = v0[24];
        (*(v0[53] + 8))(v0[54], v0[52]);

        v83 = v0[1];

        return v83();
      }

      (*(v0[44] + 32))(v0[45], v0[42], v0[43]);
      if ([v98 operation] == &dword_0 + 2)
      {
        if (qword_136E88 != -1)
        {
          swift_once();
        }

        v84 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence;

        v85 = swift_task_alloc();
        v0[60] = v85;
        *v85 = v0;
        v85[1] = sub_246B0;

        return sub_7ED70(v20 + v84, v20);
      }

      else
      {
        if (qword_136E88 != -1)
        {
          swift_once();
        }

        sub_25E4(&qword_137880, &unk_108290);
        v86 = swift_allocObject();
        v0[64] = v86;
        *(v86 + 16) = xmmword_107FC0;
        *(v86 + 32) = 0x6D72616C61;
        *(v86 + 40) = 0xE500000000000000;
        *(v86 + 72) = type metadata accessor for AlarmAlarm(0);
        *(v86 + 48) = v20;
        v87 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v101 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

        v88 = swift_task_alloc();
        v0[65] = v88;
        *v88 = v0;
        v88[1] = sub_24D84;

        return v101(0xD00000000000002DLL, 0x800000000010C800, v86);
      }
    }

    else
    {
      v97 = v15;
      if ([v98 operation] == &dword_0 + 2)
      {
        v42 = v0[40];
        v43 = v0[35];
        v44 = v0[30];
        v45 = v0[31];
        v47 = v0[28];
        v46 = v0[29];
        v49 = v0[26];
        v48 = v0[27];
        sub_104CF0();
        (*(v44 + 104))(v45, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v46);
        (*(v48 + 16))(v47, v1, v49);
        mach_absolute_time();
        sub_106330();
        if (qword_136E90 != -1)
        {
          swift_once();
        }

        v50 = v0[23];
        v51 = swift_task_alloc();
        v0[69] = v51;
        v51[2] = v50;
        v51[3] = v97;
        v51[4] = v98;
        v52 = swift_task_alloc();
        v0[70] = v52;
        *v52 = v0;
        v52[1] = sub_255E0;

        return sub_A9BCC(sub_26E3C, v51);
      }

      else
      {
        v61 = v0[47];
        v60 = v0[48];
        v62 = v0[46];
        v99 = v0[34];
        v64 = v0[30];
        v63 = v0[31];
        v65 = v0[28];
        v91 = v0[39];
        v93 = v0[29];
        v66 = v0[27];
        v95 = v0[26];
        sub_106210();
        v67 = sub_75DD4(0, v60, 0);
        v0[75] = v67;
        (*(v61 + 8))(v60, v62);
        sub_104CF0();
        (*(v64 + 104))(v63, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v93);
        (*(v66 + 16))(v65, v1, v95);
        mach_absolute_time();
        sub_106330();
        if (qword_136E90 != -1)
        {
          swift_once();
        }

        v68 = v0[23];
        v69 = swift_task_alloc();
        v0[76] = v69;
        *(v69 + 16) = v68;
        *(v69 + 24) = v67;
        v70 = swift_task_alloc();
        v0[77] = v70;
        *v70 = v0;
        v70[1] = sub_25A6C;

        return sub_A9FD8(sub_26E34, v69);
      }
    }
  }

  else
  {
    v28 = v0[26];
    v29 = v0[27];
    v30 = v0[24];
    v31 = v0[25];
    v32 = sub_106750();
    v0[5] = v32;
    v0[6] = &protocol witness table for ABCReport;
    v33 = sub_1A924(v0 + 2);
    strcpy(v33, "Update Handled");
    v33[15] = -18;
    v34 = enum case for UnhandledAbortSubtype.expectedObject(_:);
    v35 = sub_106680();
    (*(*(v35 - 8) + 104))(v33, v34, v35);
    (*(*(v32 - 8) + 104))(v33, enum case for ABCReport.unhandledAbort(_:), v32);
    sub_1064D0();
    sub_2738(v0 + 2);
    sub_107190(96);
    v105._countAndFlagsBits = 0xD00000000000005ELL;
    v105._object = 0x800000000010C710;
    sub_106E80(v105);
    v36 = [v7 description];
    v37 = sub_106E20();
    v39 = v38;

    v106._countAndFlagsBits = v37;
    v106._object = v39;
    sub_106E80(v106);

    (*(v29 + 16))(v31, v1, v28);
    (*(v29 + 56))(v31, 0, 1, v28);
    sub_26DC4(v31, v30);
    v40 = (*(v29 + 48))(v30, 1, v28);

    v41 = v0[24];
    if (v40 == 1)
    {
      sub_16F70(v0[24], &qword_137DB8, &unk_1085B0);
    }

    else
    {

      v54 = sub_106D10();
      v55 = sub_106FB0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v102[0] = swift_slowAlloc();
        *v56 = 136315650;
        v57 = sub_1071A0();
        v59 = sub_722E8(v57, v58, v102);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2048;
        *(v56 + 14) = 41;
        *(v56 + 22) = 2080;
        *(v56 + 24) = sub_722E8(0, 0xE000000000000000, v102);
        _os_log_impl(&dword_0, v54, v55, "FatalError at %s:%lu - %s", v56, 0x20u);
        swift_arrayDestroy();
      }

      (*(v0[27] + 8))(v0[24], v0[26]);
    }

    sub_104C90();
    return sub_107250();
  }
}

uint64_t sub_246B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  v4[61] = v1;

  v7 = v4[59];

  if (v1)
  {
    v8 = sub_25F00;
  }

  else
  {
    v4[62] = a1;
    v8 = sub_247F4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_247F4()
{
  v1 = v0[44];
  v2 = v0[43];
  v3 = v0[41];
  v24 = v0[55];
  v25 = v0[36];
  v4 = v0[30];
  v20 = v0[45];
  v21 = v0[31];
  v5 = v0[28];
  v6 = v0[27];
  v22 = v0[29];
  v23 = v0[26];
  sub_104CF0();
  v7 = sub_106AF0();
  v0[20] = v7;
  v0[21] = sub_26EAC();
  v8 = sub_1A924(v0 + 17);
  sub_25E4(&qword_137DF0, qword_1085E0);
  v9 = *(v1 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_107FC0;
  (*(v1 + 16))(v11 + v10, v20, v2);
  sub_106930();
  (*(*(v7 - 8) + 104))(v8, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v7);
  (*(v4 + 104))(v21, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v22);
  (*(v6 + 16))(v5, v24, v23);
  mach_absolute_time();
  sub_106330();
  v12 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v13 = swift_task_alloc();
  v0[63] = v13;
  *v13 = v0;
  v13[1] = sub_24A28;
  v14 = v0[62];
  v15 = v0[54];
  v16 = v0[41];
  v17 = v0[36];
  v18 = v0[22];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v18, v16, v15, v0 + 17, v17, 0, 0, 0);
}

uint64_t sub_24A28()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 328);
  v4 = *(*v0 + 304);
  v5 = *(*v0 + 296);
  v6 = *(*v0 + 288);
  v7 = *(*v0 + 264);
  v8 = *(*v0 + 256);
  v10 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_16F70(v1 + 136, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_24BFC, 0, 0);
}

uint64_t sub_24BFC()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);

  v5 = *(v0 + 336);
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  v9 = *(v0 + 408);
  v8 = *(v0 + 416);
  v10 = *(v0 + 384);
  v12 = *(v0 + 320);
  v11 = *(v0 + 328);
  v16 = *(v0 + 312);
  v17 = *(v0 + 288);
  v18 = *(v0 + 280);
  v19 = *(v0 + 272);
  v20 = *(v0 + 248);
  v13 = *(v0 + 224);
  v21 = *(v0 + 200);
  v22 = *(v0 + 192);
  (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  (*(v6 + 8))(v7, v8);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24D84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  *(*v2 + 528) = v1;

  if (v1)
  {
    v7 = sub_25450;
  }

  else
  {
    v8 = v4[64];
    v9 = v4[59];

    v4[67] = a1;
    v7 = sub_24EC0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_24EC0()
{
  v1 = v0[44];
  v2 = v0[43];
  v3 = v0[41];
  v24 = v0[55];
  v25 = v0[36];
  v4 = v0[30];
  v20 = v0[45];
  v21 = v0[31];
  v5 = v0[28];
  v6 = v0[27];
  v22 = v0[29];
  v23 = v0[26];
  sub_104CF0();
  v7 = sub_106AF0();
  v0[15] = v7;
  v0[16] = sub_26EAC();
  v8 = sub_1A924(v0 + 12);
  sub_25E4(&qword_137DF0, qword_1085E0);
  v9 = *(v1 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_107FC0;
  (*(v1 + 16))(v11 + v10, v20, v2);
  sub_106930();
  (*(*(v7 - 8) + 104))(v8, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v7);
  (*(v4 + 104))(v21, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v22);
  (*(v6 + 16))(v5, v24, v23);
  mach_absolute_time();
  sub_106330();
  v12 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v13 = swift_task_alloc();
  v0[68] = v13;
  *v13 = v0;
  v13[1] = sub_250F4;
  v14 = v0[67];
  v15 = v0[54];
  v16 = v0[41];
  v17 = v0[36];
  v18 = v0[22];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v18, v16, v15, v0 + 12, v17, 0, 0, 0);
}

uint64_t sub_250F4()
{
  v1 = *v0;
  v2 = *(*v0 + 544);
  v3 = *(*v0 + 328);
  v4 = *(*v0 + 304);
  v5 = *(*v0 + 296);
  v6 = *(*v0 + 288);
  v7 = *(*v0 + 264);
  v8 = *(*v0 + 256);
  v10 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_16F70(v1 + 96, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_252C8, 0, 0);
}

uint64_t sub_252C8()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 448);

  v5 = *(v0 + 336);
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  v9 = *(v0 + 408);
  v8 = *(v0 + 416);
  v10 = *(v0 + 384);
  v12 = *(v0 + 320);
  v11 = *(v0 + 328);
  v16 = *(v0 + 312);
  v17 = *(v0 + 288);
  v18 = *(v0 + 280);
  v19 = *(v0 + 272);
  v20 = *(v0 + 248);
  v13 = *(v0 + 224);
  v21 = *(v0 + 200);
  v22 = *(v0 + 192);
  (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  (*(v6 + 8))(v7, v8);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25450()
{
  v1 = v0[64];
  v3 = v0[58];
  v2 = v0[59];
  v5 = v0[56];
  v4 = v0[57];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[43];

  (*(v7 + 8))(v6, v8);
  v25 = v0[66];
  v9 = v0[51];
  v10 = v0[48];
  v11 = v0[45];
  v12 = v0[41];
  v13 = v0[42];
  v15 = v0[39];
  v14 = v0[40];
  v16 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[31];
  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[24];
  (*(v0[53] + 8))(v0[54], v0[52]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_255E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  v4[71] = a1;
  v4[72] = v1;

  v7 = v4[69];
  if (v1)
  {

    return _swift_task_switch(sub_26084, 0, 0);
  }

  else
  {

    v8 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v9 = swift_task_alloc();
    v4[73] = v9;
    *v9 = v6;
    v9[1] = sub_257A0;
    v10 = v4[54];
    v11 = v4[40];
    v12 = v4[35];
    v13 = v4[22];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v13, v11, v10, v12, 0);
  }
}

uint64_t sub_257A0()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v5 = sub_26220;
  }

  else
  {
    v5 = sub_258D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_258D4()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  v9 = *(v0 + 408);
  v8 = *(v0 + 416);
  v10 = *(v0 + 384);
  v11 = *(v0 + 360);
  v13 = *(v0 + 328);
  v12 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 288);
  v19 = *(v0 + 280);
  v20 = *(v0 + 272);
  v21 = *(v0 + 248);
  v14 = *(v0 + 224);
  v22 = *(v0 + 200);
  v23 = *(v0 + 192);
  (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
  (*(v6 + 8))(v7, v8);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_25A6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 616);
  v6 = *v2;
  v4[78] = a1;
  v4[79] = v1;

  v7 = v4[76];
  if (v1)
  {

    return _swift_task_switch(sub_263BC, 0, 0);
  }

  else
  {

    v8 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v9 = swift_task_alloc();
    v4[80] = v9;
    *v9 = v6;
    v9[1] = sub_25C2C;
    v10 = v4[54];
    v11 = v4[39];
    v12 = v4[34];
    v13 = v4[22];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v13, v11, v10, v12, 0);
  }
}

uint64_t sub_25C2C()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v4 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v5 = sub_26564;
  }

  else
  {
    v5 = sub_25D60;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_25D60()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 424);
  v8 = *(v0 + 432);
  v10 = *(v0 + 408);
  v9 = *(v0 + 416);
  v11 = *(v0 + 384);
  v12 = *(v0 + 360);
  v14 = *(v0 + 328);
  v13 = *(v0 + 336);
  v17 = *(v0 + 320);
  v18 = *(v0 + 288);
  v19 = *(v0 + 280);
  v20 = *(v0 + 272);
  v21 = *(v0 + 248);
  v22 = *(v0 + 224);
  v23 = *(v0 + 200);
  v24 = *(v0 + 192);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  (*(v7 + 8))(v8, v9);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_25F00()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 448);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 344);

  (*(v5 + 8))(v4, v6);
  v23 = *(v0 + 488);
  v7 = *(v0 + 408);
  v8 = *(v0 + 384);
  v9 = *(v0 + 360);
  v10 = *(v0 + 328);
  v11 = *(v0 + 336);
  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  v14 = *(v0 + 288);
  v17 = *(v0 + 280);
  v18 = *(v0 + 272);
  v19 = *(v0 + 248);
  v20 = *(v0 + 224);
  v21 = *(v0 + 200);
  v22 = *(v0 + 192);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26084()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 280);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v25 = *(v0 + 576);
  v9 = *(v0 + 408);
  v10 = *(v0 + 384);
  v11 = *(v0 + 360);
  v12 = *(v0 + 328);
  v13 = *(v0 + 336);
  v15 = *(v0 + 312);
  v14 = *(v0 + 320);
  v16 = *(v0 + 288);
  v19 = *(v0 + 280);
  v20 = *(v0 + 272);
  v21 = *(v0 + 248);
  v22 = *(v0 + 224);
  v23 = *(v0 + 200);
  v24 = *(v0 + 192);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26220()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 280);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v25 = *(v0 + 592);
  v9 = *(v0 + 408);
  v10 = *(v0 + 384);
  v11 = *(v0 + 360);
  v12 = *(v0 + 328);
  v13 = *(v0 + 336);
  v15 = *(v0 + 312);
  v14 = *(v0 + 320);
  v16 = *(v0 + 288);
  v19 = *(v0 + 280);
  v20 = *(v0 + 272);
  v21 = *(v0 + 248);
  v22 = *(v0 + 224);
  v23 = *(v0 + 200);
  v24 = *(v0 + 192);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_263BC()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 296);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *(v0 + 256);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v26 = *(v0 + 632);
  v10 = *(v0 + 408);
  v11 = *(v0 + 384);
  v12 = *(v0 + 360);
  v13 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v17 = *(v0 + 288);
  v20 = *(v0 + 280);
  v21 = *(v0 + 272);
  v22 = *(v0 + 248);
  v23 = *(v0 + 224);
  v24 = *(v0 + 200);
  v25 = *(v0 + 192);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_26564()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 296);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *(v0 + 256);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v26 = *(v0 + 648);
  v10 = *(v0 + 408);
  v11 = *(v0 + 384);
  v12 = *(v0 + 360);
  v13 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v17 = *(v0 + 288);
  v20 = *(v0 + 280);
  v21 = *(v0 + 272);
  v22 = *(v0 + 248);
  v23 = *(v0 + 224);
  v24 = *(v0 + 200);
  v25 = *(v0 + 192);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2670C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_104670();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106100();
  sub_25E4(&qword_137DC8, &unk_1085C0);
  sub_105160();
  v15 = sub_1060F0();
  v16 = a1[1];

  a1[1] = v15;
  sub_106210();
  v17 = sub_75DD4(0, v14, 0);
  (*(v11 + 8))(v14, v10);
  v18 = *a1;

  *a1 = v17;
  v19 = [a4 proposedLabel];
  if (v19)
  {
    v20 = v19;
    sub_106E20();

    sub_106E50();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_106160();
  (*(*(v22 - 8) + 56))(v9, v21, 1, v22);
  v23 = type metadata accessor for ModifyAlarmIntentHandledRenameParameters(0);
  return sub_1A814(v9, a1 + *(v23 + 24));
}

uint64_t sub_2694C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_106100();
  sub_25E4(&qword_137DC8, &unk_1085C0);
  sub_105160();
  v5 = sub_1060F0();
  v6 = a1[1];

  a1[1] = v5;
  v7 = *a1;

  *a1 = a3;
  return result;
}

uint64_t sub_269D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CE64;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_26A94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CE64;

  return sub_23498(a1, a2);
}

uint64_t sub_26B34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return sub_D4BFC(a1);
}

uint64_t sub_26BF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_25E4(&qword_1374F0, &qword_1080F0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_26C8C, 0, 0);
}

uint64_t sub_26C8C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_106630();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_169D8(v3, v1, v2);
  sub_16F70(v2, &qword_1374F0, &qword_1080F0);

  v6 = v0[1];

  return v6(v5);
}

unint64_t sub_26D70()
{
  result = qword_137DB0;
  if (!qword_137DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137DB0);
  }

  return result;
}

uint64_t sub_26DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137DB8, &unk_1085B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26E48()
{
  result = qword_137DE0;
  if (!qword_137DE0)
  {
    sub_14EB0(&qword_137DD8, &unk_1085D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137DE0);
  }

  return result;
}

unint64_t sub_26EAC()
{
  result = qword_137DE8;
  if (!qword_137DE8)
  {
    sub_106AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137DE8);
  }

  return result;
}

uint64_t sub_26F44(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v5 = sub_106200();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  a2(0);
  sub_1061E0();
  result = sub_1060D0();
  *a3 = result;
  return result;
}

uint64_t sub_26FE0(uint64_t *a1, uint64_t a2)
{
  v27 = a2;
  v26 = sub_106CC0();
  v24 = *(v26 - 8);
  v3 = *(v24 + 64);
  __chkstk_darwin(v26);
  v23 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = _s20HandleIntentStrategyVMa();
  v5 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s21ConfirmIntentStrategyVMa_0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106910();
  sub_1068F0();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  v21[1] = sub_25E4(&qword_13B190, &qword_10BC90);
  sub_104AC0();
  sub_262C(a1, v11);
  v22 = a1;
  v12 = *(v8 + 20);
  v13 = sub_106630();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = &v11[v12];
  v17 = v27;
  v15(v16, v27, v13);
  sub_27424(&qword_137E00, _s21ConfirmIntentStrategyVMa_0);
  sub_104A80();
  sub_104AD0();
  sub_262C(a1, v7);
  v18 = v25;
  v15(&v7[*(v25 + 20)], v17, v13);
  v19 = *(v18 + 24);
  (*(v24 + 104))(v23, enum case for ExecutionInfo.Action.alarmDismiss(_:), v26);
  sub_1063A0();
  sub_27424(&qword_137E08, _s20HandleIntentStrategyVMa);
  sub_104A50();
  sub_104AB0();
  (*(v14 + 8))(v17, v13);
  sub_2738(v22);
  sub_2746C(v7, _s20HandleIntentStrategyVMa);
  return sub_2746C(v11, _s21ConfirmIntentStrategyVMa_0);
}

BOOL sub_273C0()
{
  sub_25E4(&qword_1376C8, &qword_10B020);
  v0 = sub_105150();
  sub_1068E0();

  v1 = sub_106900();
  return v1 == sub_106900();
}

uint64_t sub_27424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2746C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_274CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  sub_105E50();
  sub_106940();
  v6 = sub_106960();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_16F70(v5, &unk_1374A0, &qword_10BB30);
  if (qword_136C98 != -1)
  {
    swift_once();
  }

  v8 = sub_106D20();
  sub_135C4(v8, qword_137E10);

  v9 = sub_106D10();
  v10 = sub_106FB0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = sub_105E50();
    v15 = sub_722E8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v9, v10, "Unexpected alarm verb: %s", v11, 0xCu);
    sub_2738(v12);
  }

  return (*(v7 + 104))(a1, enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:), v6);
}

uint64_t sub_27744()
{
  v0 = sub_106960();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105940();
  sub_274CC(v4);
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:) || v5 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:) || v5 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
  {
    goto LABEL_9;
  }

  if (v5 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {
    sub_27B54(v14, v12);
    if (v13)
    {
      sub_105A40();
      goto LABEL_14;
    }

    goto LABEL_45;
  }

  if (v5 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:) || v5 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
  {
    goto LABEL_9;
  }

  if (v5 == enum case for AlarmNLv4Constants.AlarmVerb.read(_:))
  {
    sub_27B54(v14, v12);
    if (v13)
    {
      sub_1059A0();
      goto LABEL_14;
    }

    goto LABEL_45;
  }

  if (v5 == enum case for AlarmNLv4Constants.AlarmVerb.request(_:) || v5 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:) || v5 == enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
  {
    goto LABEL_9;
  }

  if (v5 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
  {
    sub_27B54(v14, v12);
    if (v13)
    {
      sub_105AB0();
      if (swift_dynamicCast())
      {

        sub_105C60();
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_45;
  }

  if (v5 != enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
  {
    if (v5 != enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
    {
      if (v5 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
      {
        sub_27B54(v14, v12);
        if (!v13)
        {
          goto LABEL_45;
        }

        sub_105A80();
      }

      else
      {
        if (v5 != enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
        {
          result = sub_107360();
          __break(1u);
          return result;
        }

        sub_27B54(v14, v12);
        if (!v13)
        {
          goto LABEL_45;
        }

        sub_1059B0();
      }

      if (swift_dynamicCast())
      {

        sub_105C80();
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_27B54(v14, v12);
    if (v13)
    {
      sub_1059D0();
LABEL_14:
      if (swift_dynamicCast())
      {

        sub_1059F0();
LABEL_16:

        sub_16F70(v14, &qword_137490, qword_108C80);
        return v12[0];
      }

      goto LABEL_9;
    }

LABEL_45:
    sub_16F70(v12, &qword_137490, qword_108C80);
  }

LABEL_9:
  sub_16F70(v14, &qword_137490, qword_108C80);
  return 0;
}

uint64_t sub_27B08()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137E10);
  sub_135C4(v0, qword_137E10);
  return sub_106A80();
}

uint64_t sub_27B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137490, qword_108C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SleepCATPatternsExecutor()
{
  result = qword_137E28;
  if (!qword_137E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27C50(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v16;
}

uint64_t type metadata accessor for AlarmBaseCATsSimple()
{
  result = qword_137E78;
  if (!qword_137E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27E6C(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v16;
}

uint64_t sub_27FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_106200();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_106180();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t sub_28104()
{
  sub_1061A0();

  return swift_deallocClassInstance();
}

uint64_t sub_2813C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137EC8);
  sub_135C4(v0, qword_137EC8);
  return sub_106A80();
}

uint64_t sub_28188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  if (qword_136CA0 != -1)
  {
    swift_once();
  }

  v12 = sub_106D20();
  sub_135C4(v12, qword_137EC8);
  v13 = sub_106D10();
  v14 = sub_106FC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "CreateAlarm.NeedsValueStrategy.actionForInput() called)", v15, 2u);
  }

  v16 = sub_106630();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = enum case for DecideAction.PromptExpectation.slot(_:);
  v18 = sub_106450();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  sub_34434(a1, v11, 0, v7, a2);
  sub_16F70(v7, &unk_1374C0, &unk_1087B0);
  return sub_16F70(v11, &qword_1374F0, &qword_1080F0);
}

uint64_t sub_2841C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_104D60();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_106D20();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_106300();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_106320();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = sub_104FF0();
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_2864C, 0, 0);
}

uint64_t sub_2864C()
{
  v1 = v0[3];
  sub_25E4(&qword_137FA8, &qword_109DD0);
  v2 = sub_1051F0();
  v3 = [v2 label];

  v4 = sub_1051F0();
  v5 = [v4 repeatSchedule];

  if (qword_136CA0 != -1)
  {
    swift_once();
  }

  v6 = sub_135C4(v0[7], qword_137EC8);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "CreateAlarm.NeedsValueStrategy.makePromptForValue() called", v9, 2u);
  }

  v10 = v0[18];

  sub_BD970(v10);
  v11 = sub_106D10();
  v12 = sub_106FC0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Calling alarm RF flow.", v13, 2u);
  }

  v14 = v0[15];
  v16 = v0[11];
  v15 = v0[12];
  v18 = v0[9];
  v17 = v0[10];
  v19 = v0[7];
  v20 = v0[8];

  (*(v16 + 104))(v15, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v17);
  (*(v20 + 16))(v18, v6, v19);
  mach_absolute_time();
  sub_106330();
  if (qword_136E78 != -1)
  {
    swift_once();
  }

  v21 = v0[3];
  v22 = swift_task_alloc();
  v0[19] = v22;
  *(v22 + 16) = v21;
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_28960;

  return sub_74B10(sub_2B428, v22);
}

uint64_t sub_28960(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  v7 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v8 = sub_28DD0;
  }

  else
  {
    *(v4 + 176) = a1;
    v8 = sub_28AAC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_28AAC()
{
  v1 = v0[6];
  sub_104D10();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_28B60;
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[6];
  v8 = v0[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_28B60()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 192) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_28EB0;
  }

  else
  {
    v7 = sub_28CF0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_28CF0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_28DD0()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_28EB0()
{
  v1 = v0[24];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_28F90(uint64_t a1)
{
  v2 = sub_25E4(&qword_137598, &unk_107EB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  sub_25E4(&qword_137FA8, &qword_109DD0);
  v6 = sub_1051F0();
  v7 = [v6 label];

  if (v7)
  {
    sub_106E20();

    sub_106E50();

    v8 = sub_106160();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  }

  else
  {
    v9 = sub_106160();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  return sub_1A814(v5, a1);
}

uint64_t sub_290FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_105460();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_105410();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_105380();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v13 = *(*(sub_106290() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v14 = sub_1045E0();
  v3[17] = v14;
  v15 = *(v14 - 8);
  v3[18] = v15;
  v16 = *(v15 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v17 = sub_105E80();
  v3[22] = v17;
  v18 = *(v17 - 8);
  v3[23] = v18;
  v19 = *(v18 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v20 = sub_1053E0();
  v3[26] = v20;
  v21 = *(v20 - 8);
  v3[27] = v21;
  v22 = *(v21 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_29400, 0, 0);
}

uint64_t sub_29400()
{
  v261 = v0;
  v1 = v0;
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v1 + 208);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_25E4(&qword_137FA8, &qword_109DD0);
  v7 = sub_1051F0();
  sub_105360();
  v8 = (*(v3 + 88))(v2, v4);
  if (v8 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v9 = *(v1 + 232);
    v11 = *(v1 + 192);
    v10 = *(v1 + 200);
    v13 = *(v1 + 176);
    v12 = *(v1 + 184);
    (*(*(v1 + 216) + 96))(v9, *(v1 + 208));
    (*(v12 + 32))(v10, v9, v13);
    sub_106800();
    (*(v12 + 16))(v11, v10, v13);
    v14 = type metadata accessor for AlarmNLIntent();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_B3800(v11);
    v17 = sub_22C8C();
    v18 = [v17 time];
    if (v18)
    {
      v19 = *(v1 + 168);
      v21 = *(v1 + 136);
      v20 = *(v1 + 144);
      v22 = v18;
      sub_104570();

      v23.super.isa = sub_104560().super.isa;
      (*(v20 + 8))(v19, v21);
    }

    else
    {
      v23.super.isa = 0;
    }

    [v7 setTime:v23.super.isa];

    v55 = [v17 relativeOffsetInMinutes];
    [v7 setRelativeOffsetInMinutes:v55];

    if (qword_136CA0 != -1)
    {
      swift_once();
    }

    v56 = sub_106D20();
    sub_135C4(v56, qword_137EC8);
    v57 = v7;
    v58 = sub_106D10();
    v59 = sub_106FC0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *&v259 = swift_slowAlloc();
      v61 = v259;
      *v60 = 136315138;
      v249 = v17;
      v62 = v57;
      v63 = v1;
      v64 = [v62 description];
      v65 = sub_106E20();
      v67 = v66;

      v1 = v63;
      v17 = v249;
      v68 = sub_722E8(v65, v67, &v259);

      *(v60 + 4) = v68;
      _os_log_impl(&dword_0, v58, v59, "Updated SK intent:%s", v60, 0xCu);
      sub_2738(v61);
    }

    v69 = *(v1 + 200);
    v70 = *(v1 + 176);
    v71 = *(v1 + 184);
    v72 = *(v1 + 16);
    v259 = 0u;
    v260 = 0u;
    sub_105070();

LABEL_21:
    (*(v71 + 8))(v69, v70);
    v73 = sub_25E4(&qword_137FB0, &qword_108798);
    (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    goto LABEL_22;
  }

  if (v8 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v24 = *(v1 + 232);
    v26 = *(v1 + 176);
    v25 = *(v1 + 184);
    v27 = *(v1 + 16);
    (*(*(v1 + 216) + 96))(v24, *(v1 + 208));
    v28 = *(v24 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));
    v259 = 0u;
    v260 = 0u;
    sub_1053D0();
    sub_106800();
    swift_dynamicCastClassUnconditional();
    sub_105070();

    v29 = sub_25E4(&qword_137FB0, &qword_108798);
    (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
    (*(v25 + 8))(v24, v26);
LABEL_22:
    v75 = *(v1 + 224);
    v74 = *(v1 + 232);
    v77 = *(v1 + 192);
    v76 = *(v1 + 200);
    v79 = *(v1 + 160);
    v78 = *(v1 + 168);
    v80 = *(v1 + 152);
    v82 = *(v1 + 120);
    v81 = *(v1 + 128);
    v83 = v1;
    v84 = *(v1 + 112);
    v247 = v83[13];
    v250 = v83[10];
    v254 = v83[7];

    v85 = v83[1];
    goto LABEL_23;
  }

  if (v8 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v30 = *(v1 + 232);
    (*(*(v1 + 216) + 96))(v30, *(v1 + 208));
    v31 = *v30;
    swift_getObjectType();
    v32 = sub_107000();
    if (v32)
    {
      v33 = v32;
      v34 = *(v1 + 128);
      sub_106800();

      sub_106280();
      v35 = sub_873D4(v33, v34);
      if (v35)
      {
        v36 = v35;
        if (qword_136CA0 != -1)
        {
          swift_once();
        }

        v37 = sub_106D20();
        sub_135C4(v37, qword_137EC8);
        v38 = v7;
        v39 = sub_106D10();
        v40 = sub_106FC0();

        v253 = v38;
        v243 = v1;
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v259 = v42;
          *v41 = 136315138;
          v43 = v38;
          v44 = [v43 description];
          v45 = sub_106E20();
          v47 = v46;

          v48 = sub_722E8(v45, v47, &v259);

          *(v41 + 4) = v48;
          _os_log_impl(&dword_0, v39, v40, "Current SK intent %s", v41, 0xCu);
          sub_2738(v42);

          v1 = v243;
        }

        v49 = [v36 time];
        if (v49)
        {
          v50 = *(v1 + 160);
          v51 = *(v1 + 136);
          v52 = *(v1 + 144);
          v53 = v49;
          sub_104570();

          v54.super.isa = sub_104560().super.isa;
          (*(v52 + 8))(v50, v51);
        }

        else
        {
          v54.super.isa = 0;
        }

        v159 = v253;
        [v253 setTime:v54.super.isa];

        v160 = [v36 relativeOffsetInMinutes];
        [v253 setRelativeOffsetInMinutes:v160];

        v161 = v36;
        v162 = sub_106D10();
        v163 = sub_106FC0();

        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          *&v259 = v165;
          *v164 = 136315138;
          v166 = v161;
          v167 = v161;
          v168 = [v167 description];
          v169 = sub_106E20();
          v171 = v170;

          v172 = sub_722E8(v169, v171, &v259);

          *(v164 + 4) = v172;
          v159 = v253;
          _os_log_impl(&dword_0, v162, v163, "This turn of createAlarmIntent:%s", v164, 0xCu);
          sub_2738(v165);
        }

        else
        {
          v166 = v161;
        }

        v173 = v159;
        v174 = sub_106D10();
        v175 = sub_106FC0();

        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          *&v259 = v177;
          *v176 = 136315138;
          v178 = v173;
          v179 = [v178 description];
          v180 = sub_106E20();
          v182 = v181;

          v183 = sub_722E8(v180, v182, &v259);

          *(v176 + 4) = v183;
          _os_log_impl(&dword_0, v174, v175, "Updated SK intent:%s", v176, 0xCu);
          sub_2738(v177);
        }

        v1 = v243;
        v184 = *(v243 + 16);
        v259 = 0u;
        v260 = 0u;
        sub_105070();

        swift_unknownObjectRelease();
        v185 = sub_25E4(&qword_137FB0, &qword_108798);
        (*(*(v185 - 8) + 56))(v184, 0, 1, v185);
        goto LABEL_22;
      }
    }

    if (qword_136CA0 != -1)
    {
      swift_once();
    }

    v139 = *(v1 + 120);
    v140 = *(v1 + 88);
    v141 = *(v1 + 96);
    v142 = *(v1 + 24);
    v143 = sub_106D20();
    sub_135C4(v143, qword_137EC8);
    (*(v141 + 16))(v139, v142, v140);
    v144 = sub_106D10();
    v145 = sub_106FB0();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = *(v1 + 224);
      v147 = *(v1 + 208);
      v148 = *(v1 + 120);
      v149 = *(v1 + 96);
      v257 = *(v1 + 88);
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *&v259 = v151;
      *v150 = 136315138;
      sub_105360();
      v152 = sub_106E30();
      v154 = v153;
      (*(v149 + 8))(v148, v257);
      v155 = sub_722E8(v152, v154, &v259);

      *(v150 + 4) = v155;
      _os_log_impl(&dword_0, v144, v145, "Failed to parse userDialogAct to CreateAlarmIntent: %s", v150, 0xCu);
      sub_2738(v151);
    }

    else
    {
      v156 = *(v1 + 120);
      v158 = *(v1 + 88);
      v157 = *(v1 + 96);

      (*(v157 + 8))(v156, v158);
    }

    *(v1 + 242) = 0;
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    sub_1064E0();
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
    if (v8 == enum case for Parse.uso(_:))
    {
      v87 = *(v1 + 232);
      v89 = *(v1 + 72);
      v88 = *(v1 + 80);
      v91 = *(v1 + 56);
      v90 = *(v1 + 64);
      v92 = *(v1 + 40);
      v93 = *(v1 + 48);
      (*(*(v1 + 216) + 96))(v87, *(v1 + 208));
      (*(v89 + 32))(v88, v87, v90);
      sub_105400();
      v94 = sub_105440();
      (*(v93 + 8))(v91, v92);
      v255 = v94;
      if (v94)
      {
        v95 = *(v1 + 128);
        sub_106800();

        sub_106280();
        v96 = sub_873D4(v255, v95);
        if (v96)
        {
          v97 = v96;
          if (qword_136CA0 != -1)
          {
            swift_once();
          }

          v98 = sub_106D20();
          sub_135C4(v98, qword_137EC8);
          v99 = v7;
          v100 = sub_106D10();
          v101 = sub_106FC0();

          v251 = v99;
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            v244 = v1;
            v103 = swift_slowAlloc();
            *&v259 = v103;
            *v102 = 136315138;
            v104 = v99;
            v105 = [v104 description];
            v106 = sub_106E20();
            v108 = v107;

            v109 = sub_722E8(v106, v108, &v259);

            *(v102 + 4) = v109;
            _os_log_impl(&dword_0, v100, v101, "Current SK intent %s", v102, 0xCu);
            sub_2738(v103);
            v1 = v244;
          }

          v110 = [v97 time];
          if (v110)
          {
            v112 = *(v1 + 144);
            v111 = *(v1 + 152);
            v113 = *(v1 + 136);
            v114 = v110;
            sub_104570();

            v115.super.isa = sub_104560().super.isa;
            (*(v112 + 8))(v111, v113);
          }

          else
          {
            v115.super.isa = 0;
          }

          v217 = v251;
          [v251 setTime:v115.super.isa];

          v218 = [v97 relativeOffsetInMinutes];
          [v251 setRelativeOffsetInMinutes:v218];

          v219 = v97;
          v220 = sub_106D10();
          v221 = sub_106FC0();

          v246 = v219;
          v222 = v1;
          if (os_log_type_enabled(v220, v221))
          {
            v223 = swift_slowAlloc();
            v224 = swift_slowAlloc();
            *&v259 = v224;
            *v223 = 136315138;
            v225 = v219;
            v226 = [v225 description];
            v227 = sub_106E20();
            v229 = v228;

            v217 = v251;
            v230 = sub_722E8(v227, v229, &v259);

            *(v223 + 4) = v230;
            _os_log_impl(&dword_0, v220, v221, "This turn of createAlarmIntent:%s", v223, 0xCu);
            sub_2738(v224);
          }

          v231 = v217;
          v232 = sub_106D10();
          v233 = sub_106FC0();

          if (os_log_type_enabled(v232, v233))
          {
            v234 = swift_slowAlloc();
            v235 = swift_slowAlloc();
            *&v259 = v235;
            *v234 = 136315138;
            v236 = v231;
            v237 = [v236 description];
            v238 = sub_106E20();
            v240 = v239;

            v241 = sub_722E8(v238, v240, &v259);

            *(v234 + 4) = v241;
            _os_log_impl(&dword_0, v232, v233, "Updated SK intent:%s", v234, 0xCu);
            sub_2738(v235);
          }

          v1 = v222;
          v242 = v222 + 72;
          v71 = *(v222 + 72);
          v69 = *(v242 + 8);
          v70 = *(v1 + 64);
          v72 = *(v1 + 16);
          v259 = 0u;
          v260 = 0u;
          sub_105070();

          goto LABEL_21;
        }
      }

      if (qword_136CA0 != -1)
      {
        swift_once();
      }

      v186 = *(v1 + 112);
      v187 = *(v1 + 88);
      v188 = *(v1 + 96);
      v189 = *(v1 + 24);
      v190 = sub_106D20();
      sub_135C4(v190, qword_137EC8);
      (*(v188 + 16))(v186, v189, v187);
      v191 = sub_106D10();
      v192 = sub_106FB0();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = *(v1 + 224);
        v194 = *(v1 + 208);
        v195 = *(v1 + 112);
        v196 = *(v1 + 96);
        v258 = *(v1 + 88);
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        *&v259 = v198;
        *v197 = 136315138;
        sub_105360();
        v199 = sub_106E30();
        v201 = v200;
        (*(v196 + 8))(v195, v258);
        v202 = sub_722E8(v199, v201, &v259);

        *(v197 + 4) = v202;
        _os_log_impl(&dword_0, v191, v192, "Failed to parse userDialogAct to CreateAlarmIntent: %s", v197, 0xCu);
        sub_2738(v198);
      }

      else
      {
        v203 = *(v1 + 112);
        v205 = *(v1 + 88);
        v204 = *(v1 + 96);

        (*(v204 + 8))(v203, v205);
      }

      v137 = *(v1 + 72);
      v136 = *(v1 + 80);
      v138 = *(v1 + 64);
      *(v1 + 241) = 0;
      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      swift_allocError();
    }

    else
    {
      if (qword_136CA0 != -1)
      {
        swift_once();
      }

      v117 = *(v1 + 96);
      v116 = *(v1 + 104);
      v118 = *(v1 + 88);
      v119 = *(v1 + 24);
      v120 = sub_106D20();
      sub_135C4(v120, qword_137EC8);
      (*(v117 + 16))(v116, v119, v118);
      v121 = sub_106D10();
      v122 = sub_106FB0();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = *(v1 + 224);
        v124 = *(v1 + 208);
        v126 = *(v1 + 96);
        v125 = *(v1 + 104);
        v256 = *(v1 + 88);
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *&v259 = v128;
        *v127 = 136315138;
        sub_105360();
        v129 = sub_106E30();
        v131 = v130;
        (*(v126 + 8))(v125, v256);
        v132 = sub_722E8(v129, v131, &v259);

        *(v127 + 4) = v132;
        _os_log_impl(&dword_0, v121, v122, "Received unsupported parse: %s", v127, 0xCu);
        sub_2738(v128);
      }

      else
      {
        v134 = *(v1 + 96);
        v133 = *(v1 + 104);
        v135 = *(v1 + 88);

        (*(v134 + 8))(v133, v135);
      }

      v136 = *(v1 + 232);
      v138 = *(v1 + 208);
      v137 = *(v1 + 216);
      *(v1 + 240) = 0;
      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      swift_allocError();
    }

    sub_1064E0();
    swift_willThrow();

    (*(v137 + 8))(v136, v138);
  }

  v207 = *(v1 + 224);
  v206 = *(v1 + 232);
  v209 = *(v1 + 192);
  v208 = *(v1 + 200);
  v211 = *(v1 + 160);
  v210 = *(v1 + 168);
  v212 = *(v1 + 152);
  v214 = *(v1 + 120);
  v213 = *(v1 + 128);
  v215 = v1;
  v216 = *(v1 + 112);
  v245 = v215[13];
  v248 = v215[10];
  v252 = v215[7];

  v85 = v215[1];
LABEL_23:

  return v85();
}

uint64_t sub_2AB38()
{
  sub_2738((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2ABAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE64;

  return sub_290FC(a1, a2, a3);
}

uint64_t sub_2AC5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_2841C(a1, a2);
}

uint64_t sub_2ACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = _s18NeedsValueStrategyCMa();
  *v9 = v4;
  v9[1] = sub_1CE64;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_2ADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = _s18NeedsValueStrategyCMa();
  *v9 = v4;
  v9[1] = sub_1CE64;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_2AE84(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_104FF0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_104D60();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_2AFA0, 0, 0);
}

uint64_t sub_2AFA0()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_104D40();
  sub_104FE0();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2B050;
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[2];

  return sub_19708(v6, v4, v5);
}

uint64_t sub_2B050()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 80) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return _swift_task_switch(sub_2B27C, 0, 0);
  }

  else
  {
    v11 = *(v2 + 64);
    v12 = *(v2 + 40);

    v13 = *(v10 + 8);

    return v13();
  }
}

uint64_t sub_2B27C()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_2B2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = _s18NeedsValueStrategyCMa();
  *v15 = v7;
  v15[1] = sub_1CE64;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

unint64_t sub_2B3D4()
{
  result = qword_137FA0;
  if (!qword_137FA0)
  {
    _s18NeedsValueStrategyCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137FA0);
  }

  return result;
}

double sub_2B430@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_32658(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_135FC(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2B494()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137FB8);
  sub_135C4(v0, qword_137FB8);
  return sub_106A80();
}

uint64_t sub_2B530(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_14930(v6, a3);
  v7 = sub_135C4(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t RecreateDeletedAlarmsFlow.__allocating_init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_2B610(a1, v3);
  v6 = sub_32DB0(v5, v1, v3, v4);
  sub_2738(a1);
  return v6;
}

uint64_t sub_2B610(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t RecreateDeletedAlarmsFlow.init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_2B610(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_32C34(v8, v1, v3, v4);
  sub_2738(a1);
  return v10;
}

uint64_t RecreateDeletedAlarmsFlow.__allocating_init()()
{
  sub_106AC0();
  v0 = sub_106AB0();
  v1 = type metadata accessor for RecreateDeletedAlarmsFlow();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();

  return sub_32AEC(v0, v4);
}

uint64_t RecreateDeletedAlarmsFlow.on(input:)()
{
  v0 = sub_25E4(&qword_137FD0, &unk_1087C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v93 = &v90 - v2;
  v3 = sub_1065E0();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = *(v95 + 64);
  __chkstk_darwin(v3);
  v94 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v100 = &v90 - v8;
  v9 = sub_106960();
  v10 = *(v9 - 8);
  v102 = v9;
  v103 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v97 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v101 = &v90 - v14;
  v15 = sub_1065A0();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v99 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v90 - v20;
  v22 = sub_1053C0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1053E0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105360();
  if ((*(v28 + 88))(v31, v27) != enum case for Parse.directInvocation(_:))
  {
    (*(v28 + 8))(v31, v27);
    return 0;
  }

  (*(v28 + 96))(v31, v27);
  (*(v23 + 32))(v26, v31, v22);
  v32 = sub_1053B0();
  v33 = v22;
  v34 = v26;
  if (!v32)
  {
    (*(v23 + 8))(v26, v33);
    return 0;
  }

  v35 = v32;
  v91 = v23;
  v92 = v33;
  v36 = v16[13];
  v36(v21, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v15);
  v37 = sub_106590();
  v39 = v38;
  v40 = v16[1];
  v40(v21, v15);
  if (!*(v35 + 16))
  {

    goto LABEL_11;
  }

  v41 = sub_32658(v37, v39);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
LABEL_11:

    (*(v91 + 8))(v34, v92);
    return 0;
  }

  sub_135FC(*(v35 + 56) + 32 * v41, v106);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v91 + 8))(v34, v92);

    return 0;
  }

  v90 = v35;
  v44 = v100;
  sub_106940();
  v46 = v102;
  v45 = v103;
  if ((*(v103 + 48))(v44, 1, v102) == 1)
  {
    (*(v91 + 8))(v34, v92);

    sub_16F70(v44, &unk_1374A0, &qword_10BB30);
    return 0;
  }

  (*(v45 + 32))(v101, v44, v46);
  v48 = v99;
  v36(v99, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmSnapshotsJson(_:), v15);
  v49 = sub_106590();
  v51 = v50;
  v40(v48, v15);
  v52 = v90;
  if (!*(v90 + 16))
  {

    v65 = v91;
    v66 = v92;
LABEL_20:
    (*(v103 + 8))(v101, v46);
    (*(v65 + 8))(v34, v66);
    return 0;
  }

  v53 = sub_32658(v49, v51);
  v55 = v54;

  if ((v55 & 1) == 0)
  {

    v65 = v91;
    v66 = v92;
    v46 = v102;
    goto LABEL_20;
  }

  sub_135FC(*(v52 + 56) + 32 * v53, v106);
  v56 = swift_dynamicCast();
  v58 = v91;
  v57 = v92;
  v59 = v34;
  if ((v56 & 1) == 0)
  {
LABEL_21:

    (*(v103 + 8))(v101, v102);
    (*(v58 + 8))(v34, v57);
    return 0;
  }

  v61 = v104;
  v60 = v105;
  v62 = sub_1044D0();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_1044C0();
  sub_25E4(&qword_137530, &qword_1087D0);
  sub_14E2C();
  sub_1044B0();

  if (!*(v106[0] + 16))
  {
    sub_14DD8(v61, v60);

    goto LABEL_21;
  }

  v99 = v61;
  v100 = v60;
  v67 = *(v98 + 40);
  *(v98 + 40) = v106[0];

  v68 = sub_1053A0();
  v70 = v69;
  v71 = v94;
  v72 = v95;
  v73 = v96;
  (*(v95 + 104))(v94, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v96);
  v74 = sub_1065D0();
  v76 = v75;
  (*(v72 + 8))(v71, v73);
  if (v68 == v74 && v70 == v76)
  {

    v77 = v97;
  }

  else
  {
    v78 = sub_107370();

    v77 = v97;
    if ((v78 & 1) == 0)
    {
      sub_14DD8(v99, v100);

      v81 = *(v103 + 8);
      goto LABEL_40;
    }
  }

  (*(v103 + 104))(v77, enum case for AlarmNLv4Constants.AlarmVerb.create(_:), v102);
  sub_33370(&unk_13AFF0, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
  sub_106EB0();
  sub_106EB0();
  v79 = v100;
  if (v106[0] == v104 && v106[1] == v105)
  {
    v80 = 1;
  }

  else
  {
    v80 = sub_107370();
  }

  v81 = *(v103 + 8);
  v81(v77, v102);

  if ((v80 & 1) == 0)
  {
    sub_14DD8(v99, v79);

LABEL_40:
    v81(v101, v102);
    (*(v58 + 8))(v59, v92);
    return 0;
  }

  v82 = v99;
  if (qword_136CA8 != -1)
  {
    swift_once();
  }

  v83 = sub_106D20();
  sub_135C4(v83, qword_137FB8);
  v84 = sub_106D10();
  v85 = sub_106FC0();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_0, v84, v85, "RecreateDeletedAlarmsFlow accepting input.", v86, 2u);
  }

  v87 = v93;
  sub_20368(v90, v93);
  sub_14DD8(v82, v79);

  v81(v101, v102);
  (*(v58 + 8))(v59, v92);
  v88 = OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction;
  v89 = v98;
  swift_beginAccess();
  sub_32EEC(v87, v89 + v88);
  swift_endAccess();
  return 1;
}

uint64_t RecreateDeletedAlarmsFlow.execute(completion:)()
{
  type metadata accessor for RecreateDeletedAlarmsFlow();
  sub_33370(&qword_137FE0, type metadata accessor for RecreateDeletedAlarmsFlow);
  return sub_104B50();
}

uint64_t RecreateDeletedAlarmsFlow.execute()(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(sub_25E4(&qword_137FD0, &unk_1087C0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v4 = sub_104E10();
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v2[22] = swift_task_alloc();
  v7 = sub_1062D0();
  v2[23] = v7;
  v8 = *(v7 - 8);
  v2[24] = v8;
  v9 = *(v8 + 64) + 15;
  v2[25] = swift_task_alloc();
  v10 = sub_106D00();
  v2[26] = v10;
  v11 = *(v10 - 8);
  v2[27] = v11;
  v12 = *(v11 + 64) + 15;
  v2[28] = swift_task_alloc();
  v13 = *(*(sub_25E4(&qword_137FE8, &unk_1087E0) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v14 = *(*(sub_25E4(&qword_137FF0, &unk_10C0F0) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v15 = *(*(sub_25E4(&qword_137FF8, &qword_1087F0) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v16 = sub_104DE0();
  v2[32] = v16;
  v17 = *(v16 - 8);
  v2[33] = v17;
  v18 = *(v17 + 64) + 15;
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_2C638, 0, 0);
}

uint64_t sub_2C638()
{
  if (qword_136CA8 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_137FB8);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "In RecreateDeletedAlarmsFlow async execute()", v4, 2u);
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);

  v8 = enum case for ActivityType.correction(_:);
  v9 = *(v5 + 104);
  *(v0 + 280) = v9;
  *(v0 + 288) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v6, v8, v7);
  if (qword_136CB0 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 248);
  v11 = sub_1062E0();
  *(v0 + 296) = sub_135C4(v11, qword_13B670);
  v12 = sub_104C40();
  *(v0 + 304) = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  *(v0 + 312) = v14;
  *(v0 + 320) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v10, 1, 1, v12);
  if (qword_136CB8 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = *(v0 + 248);
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v72 = *(v0 + 144);
  v73 = *(v0 + 256);
  v22 = sub_1062F0();
  *(v0 + 328) = v22;
  v23 = sub_135C4(v22, qword_13B688);
  *(v0 + 336) = v23;
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  *(v0 + 344) = v25;
  *(v0 + 352) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v18, v23, v22);
  v26 = *(v24 + 56);
  *(v0 + 360) = v26;
  *(v0 + 368) = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v26(v18, 0, 1, v22);
  v27 = *(v20 + 56);
  *(v0 + 376) = v27;
  *(v0 + 384) = (v20 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v27(v19, 1, 1, v21);
  sub_1062C0();
  sub_16F70(v19, &qword_137FE8, &unk_1087E0);
  sub_16F70(v18, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v17, &qword_137FF8, &qword_1087F0);
  v28 = *(v16 + 8);
  *(v0 + 392) = v28;
  *(v0 + 400) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v15, v73);
  if (*(*(v72 + 40) + 16))
  {
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    v31 = *(v0 + 208);
    v32 = *(v0 + 144);
    v33 = swift_allocObject();
    *(v0 + 408) = v33;
    *(v33 + 16) = 0;
    sub_106FF0();
    *(v0 + 416) = *(v32 + 32);
    sub_106CF0();
    sub_106CE0();
    v34 = *(v30 + 8);
    *(v0 + 424) = v34;
    *(v0 + 432) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v29, v31);
    v35 = *(v72 + 40);
    *(v0 + 440) = v35;
    v36 = *(v35 + 16);
    *(v0 + 448) = v36;
    if (v36)
    {
      *(v0 + 456) = sub_106800();
      *(v0 + 464) = 0;
      v38 = *(v35 + 48);
      v37 = *(v35 + 56);
      v39 = *(v35 + 64);
      v40 = *(v35 + 72);
      *(v0 + 16) = *(v35 + 32);
      *(v0 + 32) = v38;
      *(v0 + 40) = v37;
      *(v0 + 48) = v39;
      *(v0 + 56) = v40;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v41 = sub_22820((v0 + 16));
      *(v0 + 472) = v41;
      v42 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v42 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        *(*(v0 + 144) + 96) = 1;
      }

      v43 = *(v0 + 408);
      v44 = *(v0 + 144);

      v45 = swift_task_alloc();
      *(v0 + 480) = v45;
      *(v45 + 16) = v44;
      *(v45 + 24) = v41;
      *(v45 + 32) = v40 ^ 1;
      *(v45 + 40) = v43;
      v46 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v47 = swift_task_alloc();
      *(v0 + 488) = v47;
      *v47 = v0;
      v47[1] = sub_2CE74;

      return withCheckedContinuation<A>(isolation:function:_:)();
    }

    v60 = *(v0 + 424);
    v59 = *(v0 + 432);
    v61 = *(v0 + 416);
    v62 = *(v0 + 224);
    v63 = *(v0 + 208);
    v64 = *(v0 + 144);
    sub_106FE0();
    sub_106CF0();
    sub_106CE0();
    v60(v62, v63);
    swift_beginAccess();
    v65 = *(v64 + 48);
    if (v65 >> 62)
    {
      if (v65 < 0)
      {
        v70 = *(v64 + 48);
      }

      if (sub_107270())
      {
        goto LABEL_26;
      }
    }

    else if (*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_26:
      v66 = *(v0 + 408);
      swift_beginAccess();
      v67 = *(v66 + 16);
      v68 = swift_task_alloc();
      *(v0 + 504) = v68;
      *v68 = v0;
      v68[1] = sub_2D548;
      v69 = *(v0 + 144);

      return sub_31CF4(v67);
    }

    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for SiriTimeEventSender.ReasonDescription.noAlarmsCreated(_:), *(v0 + 184));
    v54 = swift_task_alloc();
    *(v0 + 496) = v54;
    *v54 = v0;
    v55 = sub_2D324;
  }

  else
  {
    v48 = sub_106D10();
    v49 = sub_106FB0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "The alarm snapshots are empty! RecreateDeletedAlarmsFlow execute() has no alarms to recreate.", v50, 2u);
    }

    v52 = *(v0 + 192);
    v51 = *(v0 + 200);
    v53 = *(v0 + 184);

    (*(v52 + 104))(v51, enum case for SiriTimeEventSender.ReasonDescription.noAlarmsToCreate(_:), v53);
    v54 = swift_task_alloc();
    *(v0 + 520) = v54;
    *v54 = v0;
    v55 = sub_2D954;
  }

  v54[1] = v55;
  v56 = *(v0 + 200);
  v57 = *(v0 + 136);
  v58 = *(v0 + 144);

  return sub_2EFC4(v57, v56);
}

uint64_t sub_2CE74()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 480);
  v4 = *v0;

  return _swift_task_switch(sub_2CF8C, 0, 0);
}

uint64_t sub_2CF8C()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 440);

    v5 = *(v0 + 424);
    v4 = *(v0 + 432);
    v6 = *(v0 + 416);
    v7 = *(v0 + 224);
    v8 = *(v0 + 208);
    v9 = *(v0 + 144);
    sub_106FE0();
    sub_106CF0();
    sub_106CE0();
    v5(v7, v8);
    swift_beginAccess();
    v10 = *(v9 + 48);
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v30 = *(v9 + 48);
      }

      if (sub_107270())
      {
        goto LABEL_4;
      }
    }

    else if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_4:
      v11 = *(v0 + 408);
      swift_beginAccess();
      v12 = *(v11 + 16);
      v13 = swift_task_alloc();
      *(v0 + 504) = v13;
      *v13 = v0;
      v13[1] = sub_2D548;
      v14 = *(v0 + 144);

      return sub_31CF4(v12);
    }

    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for SiriTimeEventSender.ReasonDescription.noAlarmsCreated(_:), *(v0 + 184));
    v31 = swift_task_alloc();
    *(v0 + 496) = v31;
    *v31 = v0;
    v31[1] = sub_2D324;
    v32 = *(v0 + 200);
    v33 = *(v0 + 136);
    v34 = *(v0 + 144);

    return sub_2EFC4(v33, v32);
  }

  else
  {
    v16 = *(v0 + 464);
    *(v0 + 464) = v16 + 1;
    v17 = *(v0 + 440) + 48 * v16;
    v19 = *(v17 + 96);
    v18 = *(v17 + 104);
    v20 = *(v17 + 112);
    v21 = *(v17 + 120);
    *(v0 + 16) = *(v17 + 80);
    v22 = *(v0 + 456);
    *(v0 + 32) = v19;
    *(v0 + 40) = v18;
    *(v0 + 48) = v20;
    *(v0 + 56) = v21;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v23 = sub_22820((v0 + 16));
    *(v0 + 472) = v23;
    v24 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v24 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      *(*(v0 + 144) + 96) = 1;
    }

    v25 = *(v0 + 408);
    v26 = *(v0 + 144);

    v27 = swift_task_alloc();
    *(v0 + 480) = v27;
    *(v27 + 16) = v26;
    *(v27 + 24) = v23;
    *(v27 + 32) = v21 ^ 1;
    *(v27 + 40) = v25;
    v28 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v29 = swift_task_alloc();
    *(v0 + 488) = v29;
    *v29 = v0;
    v29[1] = sub_2CE74;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_2D324()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_2D47C, 0, 0);
}

uint64_t sub_2D47C()
{
  v1 = v0[51];

  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[19];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2D548()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_2DB80;
  }

  else
  {
    v3 = sub_2D65C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2D65C()
{
  v42 = *(v0 + 400);
  v40 = *(v0 + 392);
  v35 = *(v0 + 376);
  v36 = *(v0 + 384);
  v32 = *(v0 + 360);
  v33 = *(v0 + 368);
  v30 = *(v0 + 344);
  v31 = *(v0 + 352);
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);
  v34 = *(v0 + 296);
  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  v8 = *(v0 + 248);
  v37 = *(v0 + 256);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v29 = *(v0 + 184);
  v41 = *(v0 + 168);
  v43 = *(v0 + 160);
  v38 = *(v0 + 144);
  v39 = *(v0 + 152);
  (*(v0 + 280))(v7, enum case for ActivityType.completed(_:));
  v3(v8, 1, 1, v5);
  v30(v10, v1, v2);
  v32(v10, 0, 1, v2);
  v35(v9, 1, 1, v29);
  sub_1062C0();
  sub_16F70(v9, &qword_137FE8, &unk_1087E0);
  sub_16F70(v10, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v8, &qword_137FF8, &qword_1087F0);
  v40(v7, v37);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v38 + v11, v39, &qword_137FD0, &unk_1087C0);
  v12 = (*(v41 + 48))(v39, 1, v43);
  v13 = *(v0 + 408);
  if (v12 == 1)
  {
    v14 = *(v0 + 136);
    sub_16F70(*(v0 + 152), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = *(v0 + 160);
    v18 = *(v0 + 136);
    (*(v16 + 32))(v15, *(v0 + 152), v17);
    sub_104F10();
    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 272);
  v20 = *(v0 + 240);
  v21 = *(v0 + 248);
  v23 = *(v0 + 224);
  v22 = *(v0 + 232);
  v24 = *(v0 + 200);
  v25 = *(v0 + 176);
  v26 = *(v0 + 152);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2D954()
{
  v1 = *v0;
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v5 = *(*v0 + 184);
  v6 = *v0;

  (*(v4 + 8))(v3, v5);
  v7 = v1[34];
  v8 = v1[31];
  v9 = v1[30];
  v10 = v1[29];
  v11 = v1[28];
  v12 = v1[25];
  v13 = v1[22];
  v14 = v1[19];

  v15 = *(v6 + 8);

  return v15();
}

uint64_t sub_2DB80()
{
  (*(v0[24] + 104))(v0[25], enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v0[23]);
  v1 = swift_task_alloc();
  v0[66] = v1;
  *v1 = v0;
  v1[1] = sub_2DC3C;
  v2 = v0[25];
  v3 = v0[17];
  v4 = v0[18];

  return sub_2EFC4(v3, v2);
}

uint64_t sub_2DC3C()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_2DD94, 0, 0);
}

uint64_t sub_2DD94()
{
  v1 = v0[64];
  v2 = v0[51];

  v3 = v0[34];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2DE6C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v23 = a5;
  v24 = a3;
  v22 = a4;
  v21 = a1;
  v6 = sub_25E4(&qword_1381B0, &qword_108910);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = sub_106D00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  v16 = *(a2 + 32);
  sub_106CF0();
  sub_106CE0();
  (*(v12 + 8))(v15, v11);
  sub_262C(a2 + 56, v25);
  sub_1A8E0(v25, v25[3]);
  (*(v7 + 16))(v10, v21, v6);
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v22;
  *(v18 + 32) = v23;
  (*(v7 + 32))(v18 + v17, v10, v6);

  sub_106B30();

  return sub_2738(v25);
}

void sub_2E0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v53 = a4;
  LODWORD(v55) = a3;
  v57 = a1;
  v6 = sub_106990();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(v6);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_25E4(&qword_1381B0, &qword_108910);
  v52 = *(v58 - 8);
  v50[1] = *(v52 + 64);
  __chkstk_darwin(v58);
  v51 = v50 - v10;
  v11 = sub_25E4(&qword_1381B8, &qword_108918);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v50 - v13);
  v15 = sub_106D00();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v56 = a2;
  v20 = *(a2 + 32);
  sub_106CF0();
  sub_106CE0();
  v21 = *(v16 + 8);
  v21(v19, v15);
  sub_14994(v57, v14, &qword_1381B8, &qword_108918);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v54;
    (*(v54 + 32))(v9, v14, v6);
    v23 = v9;
    if (qword_136CA8 != -1)
    {
      swift_once();
    }

    v24 = sub_106D20();
    sub_135C4(v24, qword_137FB8);
    v25 = sub_106D10();
    v26 = sub_106FC0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "Failed to create alarm", v27, 2u);
    }

    sub_106F60();
    v28 = sub_106750();
    v61 = v28;
    v62 = &protocol witness table for ABCReport;
    v29 = sub_1A924(v60);
    sub_33370(&qword_1381C0, &type metadata accessor for AlarmOperationError);
    swift_allocError();
    (*(v22 + 16))(v30, v23, v6);
    *v29 = sub_1045F0();
    v31 = enum case for ErrorSubType.managerReturnedError(_:);
    v32 = sub_106460();
    (*(*(v32 - 8) + 104))(v29, v31, v32);
    (*(*(v28 - 8) + 104))(v29, enum case for ABCReport.alarmUndoHandle(_:), v28);
    sub_1064D0();
    (*(v22 + 8))(v23, v6);
    sub_2738(v60);
  }

  else
  {
    v33 = *v14;
    if (qword_136CA8 != -1)
    {
      swift_once();
    }

    v34 = sub_106D20();
    sub_135C4(v34, qword_137FB8);
    v35 = sub_106D10();
    v36 = sub_106FC0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Successfully created", v37, 2u);
    }

    if (v55)
    {
      sub_106FF0();
      sub_106CF0();
      sub_106CE0();
      v21(v19, v15);
      v38 = v56;
      sub_262C(v56 + 56, v60);
      v57 = v62;
      v55 = sub_1A8E0(v60, v61);
      sub_25E4(&qword_137DD0, &unk_108920);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_108470;
      *(v39 + 32) = v33;
      v40 = v51;
      v41 = v52;
      v42 = v58;
      (*(v52 + 16))(v51, v59, v58);
      v43 = (*(v41 + 80) + 40) & ~*(v41 + 80);
      v44 = swift_allocObject();
      v45 = v53;
      *(v44 + 2) = v38;
      *(v44 + 3) = v45;
      *(v44 + 4) = v33;
      (*(v41 + 32))(&v44[v43], v40, v42);
      v46 = v33;

      sub_106B70();

      sub_2738(v60);
    }

    else
    {
      v47 = v56;
      swift_beginAccess();
      v48 = v33;
      sub_106EC0();
      if (*(&dword_10 + (*(v47 + 48) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v47 + 48) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v49 = *(&dword_10 + (*(v47 + 48) & 0xFFFFFFFFFFFFFF8));
        sub_106F10();
      }

      sub_106F20();
      swift_endAccess();
      sub_106F60();
    }
  }
}

uint64_t sub_2E89C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v54 = a5;
  v51 = a3;
  v52 = a4;
  v7 = sub_106990();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E4(&qword_1381C8, &qword_109640);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v49 - v13);
  v15 = sub_106D00();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v53 = a2;
  v20 = *(a2 + 32);
  sub_106CF0();
  sub_106CE0();
  (*(v16 + 8))(v19, v15);
  sub_14994(a1, v14, &qword_1381C8, &qword_109640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v50;
    (*(v50 + 32))(v10, v14, v7);
    if (qword_136CA8 != -1)
    {
      swift_once();
    }

    v22 = sub_106D20();
    sub_135C4(v22, qword_137FB8);
    v23 = sub_106D10();
    v24 = sub_106FC0();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v53;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v23, v24, "Failed to disable", v27, 2u);
    }

    swift_beginAccess();
    v28 = v52;
    sub_106EC0();
    if (*(&dword_10 + (*(v26 + 48) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v26 + 48) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v44 = *(&dword_10 + (*(v26 + 48) & 0xFFFFFFFFFFFFFF8));
      sub_106F10();
    }

    sub_106F20();
    swift_endAccess();
    v29 = sub_106750();
    v55[3] = v29;
    v55[4] = &protocol witness table for ABCReport;
    v30 = sub_1A924(v55);
    sub_33370(&qword_1381C0, &type metadata accessor for AlarmOperationError);
    swift_allocError();
    (*(v21 + 16))(v31, v10, v7);
    *v30 = sub_1045F0();
    v32 = enum case for ErrorSubType.managerReturnedError(_:);
    v33 = sub_106460();
    (*(*(v33 - 8) + 104))(v30, v32, v33);
    (*(*(v29 - 8) + 104))(v30, enum case for ABCReport.alarmUndoHandle(_:), v29);
    sub_1064D0();
    (*(v21 + 8))(v10, v7);
    sub_2738(v55);

    goto LABEL_24;
  }

  v34 = *v14;
  if (qword_136CA8 != -1)
  {
    swift_once();
  }

  v35 = sub_106D20();
  sub_135C4(v35, qword_137FB8);
  v36 = sub_106D10();
  v37 = sub_106FC0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "Successfully disabled", v38, 2u);
  }

  v39 = v51;
  swift_beginAccess();
  *(v39 + 16) = 1;
  if (!(v34 >> 62))
  {
    if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_15;
    }

LABEL_22:

    v45 = v53;
    swift_beginAccess();
    v46 = v52;
    sub_106EC0();
    if (*(&dword_10 + (*(v45 + 48) & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (*(v45 + 48) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_23:
      sub_106F20();
      swift_endAccess();
      goto LABEL_24;
    }

LABEL_27:
    sub_106F10();
    goto LABEL_23;
  }

  if (!sub_107270())
  {
    goto LABEL_22;
  }

LABEL_15:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v40 = sub_1071C0();
    goto LABEL_18;
  }

  if (!*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    goto LABEL_27;
  }

  v40 = *(v34 + 32);
LABEL_18:
  v41 = v40;

  v42 = v53;
  swift_beginAccess();
  v43 = v41;
  sub_106EC0();
  if (*(&dword_10 + (*(v42 + 48) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v42 + 48) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v48 = *(&dword_10 + (*(v42 + 48) & 0xFFFFFFFFFFFFFF8));
    sub_106F10();
  }

  sub_106F20();
  swift_endAccess();

LABEL_24:
  sub_25E4(&qword_1381B0, &qword_108910);
  return sub_106F60();
}

uint64_t sub_2EFC4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_104FF0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_104D60();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_106D20();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_106300();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_106320();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v19 = *(*(sub_25E4(&qword_137FE8, &unk_1087E0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v20 = *(*(sub_25E4(&qword_137FF0, &unk_10C0F0) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v21 = *(*(sub_25E4(&qword_137FF8, &qword_1087F0) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v22 = sub_104DE0();
  v3[23] = v22;
  v23 = *(v22 - 8);
  v3[24] = v23;
  v24 = *(v23 + 64) + 15;
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_2F2FC, 0, 0);
}

uint64_t sub_2F2FC()
{
  (*(v0[24] + 104))(v0[25], enum case for ActivityType.failed(_:), v0[23]);
  if (qword_136CB0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_1062E0();
  sub_135C4(v2, qword_13B670);
  v3 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v4 = sub_104C40();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  if (qword_136CB8 != -1)
  {
    swift_once();
  }

  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[3];
  v13 = sub_1062F0();
  v14 = sub_135C4(v13, qword_13B688);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v10, v14, v13);
  (*(v15 + 56))(v10, 0, 1, v13);
  v16 = sub_1062D0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, v12, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  sub_1062C0();
  sub_16F70(v11, &qword_137FE8, &unk_1087E0);
  sub_16F70(v10, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v9, &qword_137FF8, &qword_1087F0);
  (*(v7 + 8))(v6, v8);
  if (qword_136CA8 != -1)
  {
    swift_once();
  }

  v18 = sub_135C4(v0[11], qword_137FB8);
  v0[26] = v18;
  v19 = sub_106D10();
  v20 = sub_106FC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "Hitting alarm RF codepath for RecreateDeletedAlarmsFlow error case.", v21, 2u);
  }

  v33 = v0[19];
  v23 = v0[15];
  v22 = v0[16];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[11];
  v27 = v0[12];
  v28 = v0[4];

  (*(v23 + 104))(v22, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v24);
  (*(v27 + 16))(v25, v18, v26);
  mach_absolute_time();
  sub_106330();
  v29 = *(v28 + 24);
  v30 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v34 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v31 = swift_task_alloc();
  v0[27] = v31;
  *v31 = v0;
  v31[1] = sub_2F7A0;

  return (v34)(0xD000000000000017, 0x800000000010CAA0, _swiftEmptyArrayStorage);
}

uint64_t sub_2F7A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = sub_2FC40;
  }

  else
  {
    *(v4 + 232) = a1;
    v7 = sub_2F8C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_2F8C8()
{
  v1 = v0[10];
  v2 = v0[7];
  sub_104D20();
  sub_104FE0();
  v3 = async function pointer to PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)[1];
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_2F984;
  v5 = v0[29];
  v6 = v0[19];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[2];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v9, v7, v8, v6);
}

uint64_t sub_2F984()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 40);
  v10 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_2FB58, 0, 0);
}

uint64_t sub_2FB58()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2FC40()
{
  v1 = v0[26];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v2 = sub_106D10();
  v3 = sub_106FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Failed to produce Incomplete response.", v4, 2u);
  }

  v5 = v0[28];
  v6 = v0[2];

  sub_104F00();

  v7 = v0[25];
  v8 = v0[21];
  v9 = v0[22];
  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2FDB0(uint64_t a1, char a2)
{
  *(v3 + 372) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_104D60();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  MultipleParameters = type metadata accessor for CreateAlarmCreateMultipleParameters(0);
  *(v3 + 96) = MultipleParameters;
  v8 = *(*(MultipleParameters - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v9 = sub_104670();
  *(v3 + 112) = v9;
  v10 = *(v9 - 8);
  *(v3 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v12 = sub_106D20();
  *(v3 + 136) = v12;
  v13 = *(v12 - 8);
  *(v3 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v15 = sub_106300();
  *(v3 + 160) = v15;
  v16 = *(v15 - 8);
  *(v3 + 168) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v18 = sub_106320();
  *(v3 + 184) = v18;
  v19 = *(v18 - 8);
  *(v3 + 192) = v19;
  v20 = *(v19 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  v21 = sub_104FF0();
  *(v3 + 216) = v21;
  v22 = *(v21 - 8);
  *(v3 + 224) = v22;
  v23 = *(v22 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_30088, 0, 0);
}

uint64_t sub_30088()
{
  v2 = *(v0 + 56);
  swift_beginAccess();
  v3 = *(v2 + 48);
  if (v3 >> 62)
  {
LABEL_71:
    if (!sub_107270())
    {
      goto LABEL_76;
    }
  }

  else if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_76;
  }

  v4 = *(v2 + 48);
  if (!(v4 >> 62))
  {
    if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_5;
    }

LABEL_76:
    sub_331BC();
    swift_allocError();
    *v86 = 0;
    swift_willThrow();
    v87 = *(v0 + 232);
    v89 = *(v0 + 200);
    v88 = *(v0 + 208);
    v90 = *(v0 + 176);
    v91 = *(v0 + 152);
    v92 = *(v0 + 128);
    v93 = *(v0 + 104);
    v95 = *(v0 + 80);
    v94 = *(v0 + 88);

    v96 = *(v0 + 8);

    return v96();
  }

  if (v4 < 0)
  {
    v85 = *(v2 + 48);
  }

  if (!sub_107270())
  {
    goto LABEL_76;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_1071C0();
  }

  else
  {
    if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_84;
    }

    v5 = *(v4 + 32);
  }

  *(v0 + 240) = v5;
  v6 = *(v0 + 232);
  v7 = *(v0 + 372);
  v8 = *(v2 + 48);

  sub_BD4A4(v9, v6);

  v1 = &selRef_undoable;
  if (v7 == 1)
  {
    if (qword_136CA8 == -1)
    {
LABEL_10:
      sub_135C4(*(v0 + 136), qword_137FB8);
      v10 = sub_106D10();
      v11 = sub_106FC0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "Producing dialog for creating a disabled alarm.", v12, 2u);
      }

      goto LABEL_13;
    }

LABEL_84:
    swift_once();
    goto LABEL_10;
  }

LABEL_13:
  if (v1[405] != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 56);
  v14 = sub_135C4(*(v0 + 136), qword_137FB8);
  *(v0 + 248) = v14;

  v15 = sub_106D10();
  v16 = sub_106FC0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    v18 = *(v2 + 48);
    if (v18 >> 62)
    {
      if (v18 < 0)
      {
        v98 = *(v2 + 48);
      }

      v19 = sub_107270();
    }

    else
    {
      v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    }

    v20 = *(v0 + 56);
    *(v17 + 4) = v19;

    _os_log_impl(&dword_0, v15, v16, "Restored %ld alarms.", v17, 0xCu);
  }

  else
  {
    v21 = *(v0 + 56);
  }

  v22 = sub_106D10();
  v23 = sub_106FC0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "Hitting alarm RF codepath for RecreateDeletedAlarms flow.", v24, 2u);
  }

  v25 = *(v2 + 48);
  if (v25 >> 62)
  {
    if (v25 < 0)
    {
      v97 = *(v2 + 48);
    }

    v26 = sub_107270();
  }

  else
  {
    v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  }

  v27 = *(v0 + 152);
  v28 = *(v0 + 136);
  v29 = *(v0 + 144);
  v30 = *(v0 + 56);
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 160));
  (*(v29 + 16))(v27, v14, v28);
  mach_absolute_time();
  v31 = *(v0 + 176);
  v32 = *(v0 + 152);
  if (v26 < 2)
  {
    v39 = *(v0 + 200);
    v41 = *(v0 + 120);
    v40 = *(v0 + 128);
    v42 = *(v0 + 112);
    v43 = *(v0 + 56);
    sub_106330();
    v44 = *(v30 + 24);
    v45 = *(v43 + 96);
    *(v0 + 368) = 0;
    *(v0 + 370) = v45;
    *(v0 + 371) = 0;
    sub_106210();
    v46 = sub_75DD4(0, v40, 0);
    *(v0 + 304) = v46;
    (*(v41 + 8))(v40, v42);
    sub_106100();
    if (qword_136E48 != -1)
    {
      swift_once();
    }

    v47 = sub_1060F0();
    *(v0 + 312) = v47;
    if (*(v0 + 369))
    {
      v48 = 256;
    }

    else
    {
      v48 = 0;
    }

    v49 = v48 | *(v0 + 368);
    if (*(v0 + 370))
    {
      v50 = 0x10000;
    }

    else
    {
      v50 = 0;
    }

    if (*(v0 + 371))
    {
      v51 = 0x1000000;
    }

    else
    {
      v51 = 0;
    }

    v52 = sub_74804(v46, v47, v49 | v50 | v51, 0);
    *(v0 + 320) = v52;
    v53 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v105 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v54 = swift_task_alloc();
    *(v0 + 328) = v54;
    *v54 = v0;
    v54[1] = sub_311D4;
    v55 = 0xD000000000000021;
    v56 = 0x800000000010CA50;
    v57 = v52;
  }

  else
  {
    v33 = *(v0 + 208);
    sub_106330();
    v101 = *(v30 + 24);
    v34 = *(v2 + 48);
    if (v34 >> 62)
    {
      if (v34 < 0)
      {
        v99 = *(v2 + 48);
      }

      v102 = sub_107270();
    }

    else
    {
      v102 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    }

    v35 = 0;
    while (1)
    {
      v1 = v35;
      if (v102 == v35)
      {
        break;
      }

      if ((v34 & 0xC000000000000001) != 0)
      {
        v36 = sub_1071C0();
      }

      else
      {
        if (v35 >= *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_70;
        }

        v36 = *(v34 + 8 * v35 + 32);
      }

      v37 = v36;
      if (__OFADD__(v1, 1))
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v38 = [v36 sleepAlarmAttribute];

      v35 = (v1 + 1);
      if (v38)
      {

        break;
      }
    }

    v100 = *(*(v0 + 56) + 96);
    v58 = *(v2 + 48);
    v103 = v58 & 0xFFFFFFFFFFFFFF8;
    if (v58 >> 62)
    {
      v106 = sub_107270();
    }

    else
    {
      v106 = *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8));
    }

    v104 = v58 & 0xC000000000000001;
    v59 = (*(v0 + 120) + 8);

    v60 = 0;
    while (v106 != v60)
    {
      v2 = v0;
      if (v104)
      {
        v61 = sub_1071C0();
      }

      else
      {
        if (v60 >= *(v103 + 16))
        {
          goto LABEL_68;
        }

        v61 = *(v58 + 8 * v60 + 32);
      }

      v62 = v61;
      v63 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v64 = v58;
      v65 = *(v0 + 128);
      v66 = *(v0 + 112);
      sub_106210();
      v67 = sub_75DD4(0, v65, 0);

      v68 = v65;
      v58 = v64;
      (*v59)(v68, v66);
      ++v60;
      if (v67)
      {
        sub_106EC0();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v69 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
          sub_106F10();
        }

        sub_106F20();
        v60 = v63;
      }
    }

    v70 = v102 == v1;
    v71 = v0;
    v72 = *(v0 + 128);
    v73 = *(v0 + 104);
    v74 = *(v0 + 112);
    v75 = *(v0 + 96);

    v76 = sub_106160();
    (*(*(v76 - 8) + 56))(v73, 1, 1, v76);
    v77 = v75[5];
    *(v73 + v77) = 0;
    v78 = v75[6];
    *(v73 + v78) = 0;
    *(v73 + v75[7]) = 0;
    *(v73 + v75[8]) = 0;
    *(v73 + v75[9]) = v70;
    *(v73 + v75[10]) = v100;
    *(v73 + v75[11]) = _swiftEmptyArrayStorage;
    *(v73 + v75[12]) = 1;
    *(v73 + v75[13]) = 0;
    sub_106210();
    v79 = sub_75DD4(0, v72, 0);
    (*v59)(v72, v74);
    *(v73 + v77) = v79;
    sub_106100();
    if (qword_136E48 != -1)
    {
      swift_once();
    }

    v80 = v71[13];

    *(v73 + v78) = sub_1060F0();
    v81 = sub_74468();
    v71[32] = v81;
    v82 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v105 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v83 = swift_task_alloc();
    v71[33] = v83;
    *v83 = v71;
    v83[1] = sub_30B0C;
    v56 = 0x800000000010CA80;
    v55 = 0xD00000000000001ALL;
    v57 = v81;
  }

  return v105(v55, v56, v57);
}

uint64_t sub_30B0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v7 = *(v3 + 256);

  if (v1)
  {
    v8 = sub_30E88;
  }

  else
  {
    v8 = sub_30C48;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_30C48()
{
  v1 = v0[11];
  sub_33160(v0[13]);
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_30D08;
  v4 = v0[34];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[11];
  v8 = v0[6];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_30D08()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = v2[34];
  (*(v2[9] + 8))(v2[11], v2[8]);

  if (v0)
  {
    v6 = sub_318AC;
  }

  else
  {
    v6 = sub_310BC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_30E88()
{
  v29 = v0;
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  sub_33160(v0[13]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[35];
  v5 = v0[31];
  swift_errorRetain();
  v6 = sub_106D10();
  v7 = sub_106FB0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    v0[5] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v10 = sub_106E30();
    v12 = sub_722E8(v10, v11, &v28);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "Failure while attempting to use RF: %s", v8, 0xCu);
    sub_2738(v9);
  }

  v13 = v0[29];
  v14 = v0[30];
  v15 = v0[27];
  v16 = v0[28];
  swift_willThrow();

  (*(v16 + 8))(v13, v15);
  v17 = v0[29];
  v19 = v0[25];
  v18 = v0[26];
  v20 = v0[22];
  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[13];
  v25 = v0[10];
  v24 = v0[11];

  v26 = v0[1];

  return v26();
}

uint64_t sub_310BC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 232);
  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);
  v13 = *(v0 + 104);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_311D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v7 = *(v3 + 320);

  if (v1)
  {
    v8 = sub_31558;
  }

  else
  {
    v8 = sub_31310;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_31310()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[10];

  sub_104CF0();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[44] = v5;
  *v5 = v0;
  v5[1] = sub_313D8;
  v6 = v0[42];
  v7 = v0[29];
  v8 = v0[25];
  v9 = v0[10];
  v10 = v0[6];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v9, v7, v8, 0);
}

uint64_t sub_313D8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = v2[42];
  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {
    v6 = sub_31AD0;
  }

  else
  {
    v6 = sub_31794;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_31558()
{
  v31 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];

  (*(v4 + 8))(v3, v5);
  v6 = v0[43];
  v7 = v0[31];
  swift_errorRetain();
  v8 = sub_106D10();
  v9 = sub_106FB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    v0[5] = v6;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v12 = sub_106E30();
    v14 = sub_722E8(v12, v13, &v30);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Failure while attempting to use RF: %s", v10, 0xCu);
    sub_2738(v11);
  }

  v15 = v0[29];
  v16 = v0[30];
  v17 = v0[27];
  v18 = v0[28];
  swift_willThrow();

  (*(v18 + 8))(v15, v17);
  v19 = v0[29];
  v21 = v0[25];
  v20 = v0[26];
  v22 = v0[22];
  v23 = v0[19];
  v24 = v0[16];
  v25 = v0[13];
  v27 = v0[10];
  v26 = v0[11];

  v28 = v0[1];

  return v28();
}

uint64_t sub_31794()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 232);
  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);
  v13 = *(v0 + 104);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_318AC()
{
  v26 = v0;
  (*(v0[24] + 8))(v0[26], v0[23]);
  v1 = v0[37];
  v2 = v0[31];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    v0[5] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v25);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Failure while attempting to use RF: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[28];
  swift_willThrow();

  (*(v13 + 8))(v10, v12);
  v14 = v0[29];
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[22];
  v18 = v0[19];
  v19 = v0[16];
  v20 = v0[13];
  v22 = v0[10];
  v21 = v0[11];

  v23 = v0[1];

  return v23();
}

uint64_t sub_31AD0()
{
  v26 = v0;
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[45];
  v2 = v0[31];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    v0[5] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v25);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Failure while attempting to use RF: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[28];
  swift_willThrow();

  (*(v13 + 8))(v10, v12);
  v14 = v0[29];
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[22];
  v18 = v0[19];
  v19 = v0[16];
  v20 = v0[13];
  v22 = v0[10];
  v21 = v0[11];

  v23 = v0[1];

  return v23();
}

uint64_t sub_31CF4(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v1;
  v3[1] = sub_31D90;

  return sub_2FDB0(v1 + 16, a1);
}

uint64_t sub_31D90()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_320E8;
  }

  else
  {
    v3 = sub_31EA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_31EA4()
{
  sub_105180();
  v1 = v0[10];
  v2 = v0[11];
  sub_1A8E0(v0 + 7, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_31F68;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_31F68()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_32100;
  }

  else
  {
    v3 = sub_3207C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3207C()
{
  sub_2738(v0 + 2);
  sub_2738(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t sub_32100()
{
  sub_2738(v0 + 2);
  sub_2738(v0 + 7);
  v1 = v0[15];
  v2 = v0[1];

  return v2();
}

Swift::Int sub_32184()
{
  v1 = *v0;
  sub_107400();
  sub_107410(v1);
  return sub_107420();
}

Swift::Int sub_321F8()
{
  v1 = *v0;
  sub_107400();
  sub_107410(v1);
  return sub_107420();
}

uint64_t RecreateDeletedAlarmsFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_2738((v0 + 56));
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction, &qword_137FD0, &unk_1087C0);
  return v0;
}

uint64_t RecreateDeletedAlarmsFlow.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_2738((v0 + 56));
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction, &qword_137FD0, &unk_1087C0);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_32370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_32420;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_32420(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_3251C()
{
  v2 = *v0;
  type metadata accessor for RecreateDeletedAlarmsFlow();
  return sub_104B50();
}

uint64_t sub_3257C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return RecreateDeletedAlarmsFlow.execute()(a1);
}

uint64_t sub_32618()
{
  type metadata accessor for RecreateDeletedAlarmsFlow();

  return sub_104B80();
}

unint64_t sub_32658(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_107400();
  sub_106E70();
  v6 = sub_107420();

  return sub_327AC(a1, a2, v6);
}

unint64_t sub_326D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_107120(*(v2 + 40));

  return sub_32864(a1, v4);
}

unint64_t sub_32714(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_105F50();
  sub_33370(&qword_1381A0, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange);
  v5 = sub_106DE0();

  return sub_3292C(a1, v5);
}

unint64_t sub_327AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_107370())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_32864(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_330B0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_107130();
      sub_3310C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_3292C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_105F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_33370(&qword_1381A8, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange);
      v16 = sub_106E00();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_32AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_106200();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v10 = sub_106AC0();
  v11 = &protocol witness table for SiriAlarmManagerImpl;
  *&v9 = a1;
  type metadata accessor for CreateAlarmCATs_Async();
  sub_1061E0();
  *(a2 + 16) = sub_1060D0();
  type metadata accessor for CreateAlarmCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 24) = sub_1060D0();
  *(a2 + 32) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 96) = 0;
  v6 = OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction;
  v7 = sub_104E10();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  sub_1AD44(&v9, a2 + 56);
  return a2;
}

uint64_t sub_32C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_106200();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v15 = a3;
  v16 = a4;
  v10 = sub_1A924(&v14);
  (*(*(a3 - 8) + 32))(v10, a1, a3);
  type metadata accessor for CreateAlarmCATs_Async();
  sub_1061E0();
  *(a2 + 16) = sub_1060D0();
  type metadata accessor for CreateAlarmCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 24) = sub_1060D0();
  *(a2 + 32) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 96) = 0;
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction;
  v12 = sub_104E10();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  sub_1AD44(&v14, a2 + 56);
  return a2;
}

uint64_t sub_32DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecreateDeletedAlarmsFlow();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  return sub_32C34(v10, v14, a3, a4);
}

uint64_t type metadata accessor for RecreateDeletedAlarmsFlow()
{
  result = qword_138028;
  if (!qword_138028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_32EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137FD0, &unk_1087C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_32F84()
{
  sub_33058();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_33058()
{
  if (!qword_138038)
  {
    sub_104E10();
    v0 = sub_1070E0();
    if (!v1)
    {
      atomic_store(v0, &qword_138038);
    }
  }
}

uint64_t sub_33160(uint64_t a1)
{
  MultipleParameters = type metadata accessor for CreateAlarmCreateMultipleParameters(0);
  (*(*(MultipleParameters - 8) + 8))(a1, MultipleParameters);
  return a1;
}

unint64_t sub_331BC()
{
  result = qword_138198;
  if (!qword_138198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_138198);
  }

  return result;
}

uint64_t sub_33210()
{
  v1 = sub_25E4(&qword_1381B0, &qword_108910);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_332E8(uint64_t a1)
{
  v3 = *(sub_25E4(&qword_1381B0, &qword_108910) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_2E0F0(a1, v4, v5, v6, v7);
}

uint64_t sub_33370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_333B8()
{
  v1 = sub_25E4(&qword_1381B0, &qword_108910);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_33498(uint64_t a1)
{
  v3 = *(sub_25E4(&qword_1381B0, &qword_108910) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2E89C(a1, v4, v5, v6, v7);
}

uint64_t getEnumTagSinglePayload for RecreateDeletedAlarmsFlow.RecreateAlarmError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecreateDeletedAlarmsFlow.RecreateAlarmError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_3367C()
{
  result = qword_1381D0;
  if (!qword_1381D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1381D0);
  }

  return result;
}

uint64_t sub_336E0()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_1381D8);
  sub_135C4(v0, qword_1381D8);
  return sub_106A80();
}

uint64_t sub_3372C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_3374C, 0, 0);
}

uint64_t sub_3374C()
{
  v1 = v0[9];
  sub_25E4(&qword_1381F0, &qword_108A90);
  v2 = sub_1051F0();
  v0[10] = v2;
  v3 = sub_105200();
  v0[11] = v3;
  if (qword_136CC0 != -1)
  {
    swift_once();
  }

  v4 = sub_106D20();
  v0[12] = sub_135C4(v4, qword_1381D8);
  v5 = v3;
  v6 = sub_106D10();
  v7 = sub_106FC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [v5 unsupportedReason];

    _os_log_impl(&dword_0, v6, v7, "DeleteAlarm.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v8, 0xCu);
  }

  else
  {

    v6 = v5;
  }

  v9 = [v2 alarmSearch];
  v0[13] = v9;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_33940;
  v11 = v0[8];

  return sub_17218(v11, v9, v5);
}

uint64_t sub_33940()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_33AC4;
  }

  else
  {

    v4 = sub_33A5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_33A5C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_33AC4()
{
  v22 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    *(v0 + 56) = v5;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v8 = sub_106E30();
    v10 = sub_722E8(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "Error in legacy path: %s", v6, 0xCu);
    sub_2738(v7);
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = sub_106750();
  *(v0 + 40) = v14;
  *(v0 + 48) = &protocol witness table for ABCReport;
  v15 = sub_1A924((v0 + 16));
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738((v0 + 16));
  swift_willThrow();

  v18 = *(v0 + 8);
  v19 = *(v0 + 120);

  return v18();
}

uint64_t sub_33D1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_3372C(a1, a2);
}

uint64_t sub_33DDC()
{
  v1 = *(v0 + 16);
  sub_25E4(&qword_1381F0, &qword_108A90);
  v2 = sub_1051F0();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_33E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CE64;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t type metadata accessor for SearchAlarmCATPatternsExecutor()
{
  result = qword_1381F8;
  if (!qword_1381F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_33FA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v16;
}

uint64_t type metadata accessor for UpdateAlarmCATs_Async()
{
  result = qword_138248;
  if (!qword_138248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_341C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v16;
}

uint64_t sub_34350()
{
  sub_106440();
  sub_4CD70(&qword_138410, 255, &type metadata accessor for ButtonOption);
  sub_106EB0();
  sub_106EB0();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_107370();
  }

  return v1 & 1;
}

void sub_34434(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v577 = a4;
  v507 = a3;
  v537 = a2;
  v579 = a1;
  v575 = a5;
  v5 = sub_25E4(&unk_1383C0, &qword_107DF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v480 - v7;
  v516 = sub_106440();
  v515 = *(v516 - 8);
  v9 = *(v515 + 64);
  v10 = __chkstk_darwin(v516);
  v506 = &v480 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v509 = &v480 - v12;
  v521 = sub_1065A0();
  v520 = *(v521 - 8);
  v13 = *(v520 + 64);
  __chkstk_darwin(v521);
  v519 = &v480 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v500 = sub_106960();
  v503 = *(v500 - 8);
  v15 = *(v503 + 64);
  __chkstk_darwin(v500);
  v486 = &v480 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v499 = sub_25E4(&qword_137498, &unk_108C50);
  v17 = *(*(v499 - 8) + 64);
  v18 = __chkstk_darwin(v499);
  v501 = &v480 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v491 = &v480 - v20;
  v21 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v487 = &v480 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v480 - v26;
  v28 = __chkstk_darwin(v25);
  v494 = &v480 - v29;
  v30 = __chkstk_darwin(v28);
  v484 = &v480 - v31;
  v32 = __chkstk_darwin(v30);
  v497 = &v480 - v33;
  __chkstk_darwin(v32);
  v551 = &v480 - v34;
  v514 = sub_105380();
  v513 = *(v514 - 8);
  v35 = *(v513 + 64);
  v36 = __chkstk_darwin(v514);
  v38 = &v480 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36);
  v489 = &v480 - v40;
  __chkstk_darwin(v39);
  v510 = &v480 - v41;
  v42 = sub_25E4(&unk_137460, &unk_108C60);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v531 = &v480 - v44;
  v533 = sub_1050D0();
  v532 = *(v533 - 8);
  v45 = *(v532 + 64);
  v46 = __chkstk_darwin(v533);
  v525 = &v480 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v526 = &v480 - v48;
  v535 = sub_1053C0();
  v539 = *(v535 - 8);
  v49 = *(v539 + 64);
  __chkstk_darwin(v535);
  v534 = &v480 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v518 = sub_105520();
  v545 = *(v518 - 8);
  v51 = *(v545 + 64);
  v52 = __chkstk_darwin(v518);
  v512 = &v480 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v542 = &v480 - v54;
  v522 = sub_105460();
  v527 = *(v522 - 8);
  v55 = *(v527 + 64);
  v56 = __chkstk_darwin(v522);
  v493 = &v480 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v511 = &v480 - v59;
  __chkstk_darwin(v58);
  v517 = &v480 - v60;
  v523 = sub_105410();
  v524 = *(v523 - 8);
  v61 = *(v524 + 64);
  v62 = __chkstk_darwin(v523);
  v490 = &v480 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v488 = &v480 - v65;
  v66 = __chkstk_darwin(v64);
  v485 = &v480 - v67;
  __chkstk_darwin(v66);
  v528 = &v480 - v68;
  v553 = sub_1053E0();
  v552 = *(v553 - 8);
  v69 = *(v552 + 64);
  v70 = __chkstk_darwin(v553);
  v538 = &v480 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v549 = &v480 - v72;
  v558 = sub_105E80();
  v557 = *(v558 - 8);
  v73 = *(v557 + 64);
  v74 = __chkstk_darwin(v558);
  v546 = &v480 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v556 = &v480 - v76;
  v565 = sub_104E70();
  v568 = *(v565 - 8);
  v77 = *(v568 + 64);
  __chkstk_darwin(v565);
  v541 = &v480 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v563 = sub_25E4(&unk_1383D0, &qword_107DF8);
  v79 = *(*(v563 - 8) + 64);
  __chkstk_darwin(v563);
  v572 = &v480 - v80;
  v81 = sub_25E4(&unk_1374B0, &unk_108C70);
  v82 = *(*(v81 - 8) + 64);
  v83 = __chkstk_darwin(v81 - 8);
  v548 = &v480 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __chkstk_darwin(v83);
  v567 = &v480 - v86;
  __chkstk_darwin(v85);
  v573 = &v480 - v87;
  v578 = sub_106450();
  v576 = *(v578 - 8);
  v88 = *(v576 + 64);
  v89 = __chkstk_darwin(v578);
  v504 = &v480 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __chkstk_darwin(v89);
  v505 = &v480 - v92;
  v93 = __chkstk_darwin(v91);
  v495 = &v480 - v94;
  v95 = __chkstk_darwin(v93);
  v496 = &v480 - v96;
  v97 = __chkstk_darwin(v95);
  v529 = &v480 - v98;
  v99 = __chkstk_darwin(v97);
  v530 = &v480 - v100;
  __chkstk_darwin(v99);
  v569 = &v480 - v101;
  v102 = sub_25E4(&unk_1383E0, &qword_107E00);
  v103 = *(*(v102 - 8) + 64);
  v104 = __chkstk_darwin(v102);
  v544 = &v480 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __chkstk_darwin(v104);
  v571 = &v480 - v107;
  v108 = __chkstk_darwin(v106);
  v110 = &v480 - v109;
  __chkstk_darwin(v108);
  v112 = &v480 - v111;
  v113 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v114 = *(*(v113 - 8) + 64);
  v115 = __chkstk_darwin(v113 - 8);
  v508 = &v480 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __chkstk_darwin(v115);
  v502 = &v480 - v118;
  v119 = __chkstk_darwin(v117);
  v536 = &v480 - v120;
  v121 = __chkstk_darwin(v119);
  v540 = &v480 - v122;
  v123 = __chkstk_darwin(v121);
  v543 = &v480 - v124;
  v125 = __chkstk_darwin(v123);
  v555 = &v480 - v126;
  v127 = __chkstk_darwin(v125);
  v574 = &v480 - v128;
  v129 = __chkstk_darwin(v127);
  v554 = &v480 - v130;
  v131 = __chkstk_darwin(v129);
  v570 = &v480 - v132;
  v133 = __chkstk_darwin(v131);
  v135 = &v480 - v134;
  __chkstk_darwin(v133);
  v137 = &v480 - v136;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v138 = sub_106D20();
  v566 = sub_135C4(v138, qword_137440);
  v139 = sub_106D10();
  v140 = sub_106FA0();
  v141 = os_log_type_enabled(v139, v140);
  v492 = v38;
  v498 = v27;
  v550 = v8;
  if (v141)
  {
    v142 = swift_slowAlloc();
    v547 = v102;
    v143 = v142;
    v144 = swift_slowAlloc();
    *&v582 = v144;
    *v143 = 136315138;
    v580 = sub_106800();
    sub_25E4(&qword_138430, &qword_108CB8);
    v145 = sub_106E30();
    v147 = v135;
    v148 = v110;
    v149 = sub_722E8(v145, v146, &v582);

    *(v143 + 4) = v149;
    v110 = v148;
    v135 = v147;
    _os_log_impl(&dword_0, v139, v140, "AlarmFlowUtils.decideActionForInput with intent type: %s", v143, 0xCu);
    sub_2738(v144);

    v102 = v547;
  }

  v150 = sub_13AA4(v579);
  v151 = v578;
  if ((v150 & 1) == 0)
  {
    goto LABEL_60;
  }

  v152 = v576;
  v153 = *(v576 + 104);
  v482 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v560 = v576 + 104;
  v559 = v153;
  v153(v137);
  v154 = *(v152 + 56);
  v562 = v152 + 56;
  v561 = v154;
  v154(v137, 0, 1, v151);
  v155 = *(v102 + 48);
  sub_14994(v577, v112, &unk_1374C0, &unk_1087B0);
  sub_14994(v137, &v112[v155], &unk_1374C0, &unk_1087B0);
  v157 = v152 + 48;
  v156 = *(v152 + 48);
  v158 = v156(v112, 1, v151);
  v564 = v156;
  if (v158 == 1)
  {
    sub_16F70(v137, &unk_1374C0, &unk_1087B0);
    v159 = v156(&v112[v155], 1, v151);
    v160 = v574;
    if (v159 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  sub_14994(v112, v135, &unk_1374C0, &unk_1087B0);
  if (v156(&v112[v155], 1, v151) == 1)
  {
    sub_16F70(v137, &unk_1374C0, &unk_1087B0);
    (*(v576 + 8))(v135, v151);
    v160 = v574;
LABEL_11:
    sub_16F70(v112, &unk_1383E0, &qword_107E00);
    goto LABEL_12;
  }

  v175 = v576;
  v176 = &v112[v155];
  v177 = v569;
  (*(v576 + 32))(v569, v176, v151);
  sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation);
  v178 = sub_106E00();
  v179 = v175;
  v180 = v102;
  v181 = v110;
  v182 = *(v179 + 8);
  v182(v177, v578);
  sub_16F70(v137, &unk_1374C0, &unk_1087B0);
  v182(v135, v578);
  v110 = v181;
  v151 = v578;
  v102 = v180;
  sub_16F70(v112, &unk_1374C0, &unk_1087B0);
  v160 = v574;
  if (v178)
  {
    goto LABEL_30;
  }

LABEL_12:
  v161 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v559(v160, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v151);
  v561(v160, 0, 1, v151);
  v162 = *(v102 + 48);
  v163 = v571;
  sub_14994(v577, v571, &unk_1374C0, &unk_1087B0);
  sub_14994(v160, v163 + v162, &unk_1374C0, &unk_1087B0);
  v164 = v564;
  if (v564(v163, 1, v151) == 1)
  {
    sub_16F70(v160, &unk_1374C0, &unk_1087B0);
    if (v164(v163 + v162, 1, v151) == 1)
    {
      v112 = v163;
LABEL_15:
      sub_16F70(v112, &unk_1374C0, &unk_1087B0);
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v165 = v555;
  sub_14994(v163, v555, &unk_1374C0, &unk_1087B0);
  if (v164(v163 + v162, 1, v151) == 1)
  {
    sub_16F70(v574, &unk_1374C0, &unk_1087B0);
    (*(v576 + 8))(v165, v151);
LABEL_18:
    v481 = v161;
    sub_16F70(v163, &unk_1383E0, &qword_107E00);
    v166 = v565;
    goto LABEL_19;
  }

  v481 = v161;
  v483 = v157;
  v190 = v576;
  v191 = v569;
  (*(v576 + 32))(v569, v163 + v162, v151);
  sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation);
  v192 = sub_106E00();
  v193 = *(v190 + 8);
  v193(v191, v151);
  sub_16F70(v574, &unk_1374C0, &unk_1087B0);
  v193(v165, v151);
  v157 = v483;
  v166 = v565;
  sub_16F70(v163, &unk_1374C0, &unk_1087B0);
  if (v192)
  {
LABEL_30:
    v194 = v570;
    v559(v570, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v151);
    v561(v194, 0, 1, v151);
    v195 = *(v102 + 48);
    sub_14994(v577, v110, &unk_1374C0, &unk_1087B0);
    sub_14994(v194, &v110[v195], &unk_1374C0, &unk_1087B0);
    v196 = v564;
    if (v564(v110, 1, v151) == 1)
    {
      sub_16F70(v194, &unk_1374C0, &unk_1087B0);
      if (v196(&v110[v195], 1, v151) == 1)
      {
        sub_16F70(v110, &unk_1374C0, &unk_1087B0);
        v197 = 1;
LABEL_37:
        sub_A570(v579, v197 & 1, v575);
        return;
      }
    }

    else
    {
      v198 = v554;
      sub_14994(v110, v554, &unk_1374C0, &unk_1087B0);
      if (v196(&v110[v195], 1, v151) != 1)
      {
        v199 = v576;
        v200 = &v110[v195];
        v201 = v569;
        (*(v576 + 32))(v569, v200, v151);
        sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation);
        v197 = sub_106E00();
        v202 = *(v199 + 8);
        v202(v201, v151);
        sub_16F70(v194, &unk_1374C0, &unk_1087B0);
        v202(v198, v151);
        sub_16F70(v110, &unk_1374C0, &unk_1087B0);
        goto LABEL_37;
      }

      sub_16F70(v194, &unk_1374C0, &unk_1087B0);
      (*(v576 + 8))(v198, v151);
    }

    sub_16F70(v110, &unk_1383E0, &qword_107E00);
    v197 = 0;
    goto LABEL_37;
  }

LABEL_19:
  v483 = v157;
  v167 = v573;
  sub_99E8(v573);
  v168 = v567;
  sub_104E40();
  v169 = v568;
  (*(v568 + 56))(v168, 0, 1, v166);
  v170 = *(v563 + 48);
  v171 = v167;
  v172 = v572;
  sub_14994(v171, v572, &unk_1374B0, &unk_108C70);
  sub_14994(v168, v172 + v170, &unk_1374B0, &unk_108C70);
  v173 = *(v169 + 48);
  if (v173(v172, 1, v166) == 1)
  {
    sub_16F70(v168, &unk_1374B0, &unk_108C70);
    v174 = v572;
    sub_16F70(v573, &unk_1374B0, &unk_108C70);
    if (v173(v174 + v170, 1, v166) == 1)
    {
      sub_16F70(v174, &unk_1374B0, &unk_108C70);
      goto LABEL_47;
    }
  }

  else
  {
    v183 = v548;
    sub_14994(v172, v548, &unk_1374B0, &unk_108C70);
    if (v173(v172 + v170, 1, v166) != 1)
    {
      v223 = v568;
      v224 = v172 + v170;
      v225 = v541;
      (*(v568 + 32))(v541, v224, v166);
      sub_4CD70(&qword_1374E8, 255, &type metadata accessor for ActionForInput);
      v547 = v102;
      v226 = sub_106E00();
      v227 = *(v223 + 8);
      v227(v225, v166);
      sub_16F70(v567, &unk_1374B0, &unk_108C70);
      sub_16F70(v573, &unk_1374B0, &unk_108C70);
      v102 = v547;
      v227(v183, v166);
      sub_16F70(v172, &unk_1374B0, &unk_108C70);
      v184 = v550;
      v185 = v551;
      if (v226)
      {
LABEL_47:
        v228 = v543;
        v559(v543, enum case for DecideAction.PromptExpectation.slot(_:), v151);
        v561(v228, 0, 1, v151);
        v229 = *(v102 + 48);
        v230 = v544;
        sub_14994(v577, v544, &unk_1374C0, &unk_1087B0);
        sub_14994(v228, v230 + v229, &unk_1374C0, &unk_1087B0);
        v231 = v564;
        if (v564(v230, 1, v151) == 1)
        {
          sub_16F70(v228, &unk_1374C0, &unk_1087B0);
          if (v231(v230 + v229, 1, v151) == 1)
          {
            sub_16F70(v230, &unk_1374C0, &unk_1087B0);
LABEL_75:
            v271 = sub_106D10();
            v272 = sub_106FC0();
            if (os_log_type_enabled(v271, v272))
            {
              v273 = swift_slowAlloc();
              *v273 = 0;
              _os_log_impl(&dword_0, v271, v272, "Received cancel input slow prompt input – .cancel()", v273, 2u);
            }

            sub_104E40();
            return;
          }
        }

        else
        {
          v236 = v540;
          sub_14994(v230, v540, &unk_1374C0, &unk_1087B0);
          if (v231(v230 + v229, 1, v151) != 1)
          {
            v266 = v576;
            v267 = v230 + v229;
            v268 = v569;
            (*(v576 + 32))(v569, v267, v151);
            sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation);
            v269 = sub_106E00();
            v270 = *(v266 + 8);
            v270(v268, v151);
            sub_16F70(v228, &unk_1374C0, &unk_1087B0);
            v270(v236, v151);
            sub_16F70(v230, &unk_1374C0, &unk_1087B0);
            if (v269)
            {
              goto LABEL_75;
            }

            goto LABEL_57;
          }

          sub_16F70(v228, &unk_1374C0, &unk_1087B0);
          (*(v576 + 8))(v236, v151);
        }

        sub_16F70(v230, &unk_1383E0, &qword_107E00);
LABEL_57:
        v237 = sub_106D10();
        v238 = sub_106FC0();
        if (os_log_type_enabled(v237, v238))
        {
          v239 = swift_slowAlloc();
          *v239 = 0;
          _os_log_impl(&dword_0, v237, v238, "Received cancel input on non-confirmation, non-slot prompt input – .ignore()", v239, 2u);
        }

LABEL_60:
        sub_104E60();
        return;
      }

      goto LABEL_27;
    }

    sub_16F70(v567, &unk_1374B0, &unk_108C70);
    v174 = v572;
    sub_16F70(v573, &unk_1374B0, &unk_108C70);
    (*(v568 + 8))(v183, v166);
  }

  sub_16F70(v174, &unk_1383D0, &qword_107DF8);
  v184 = v550;
  v185 = v551;
LABEL_27:
  v186 = v549;
  sub_105360();
  v187 = v552;
  v188 = v553;
  v189 = (*(v552 + 88))(v186, v553);
  if (v189 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v187 + 96))(v186, v188);
LABEL_40:
    v204 = v557;
    v205 = v556;
    v206 = v558;
    (*(v557 + 32))(v556, v186, v558);
    v207 = v546;
    (*(v204 + 16))(v546, v205, v206);
    v208 = type metadata accessor for AlarmNLIntent();
    v209 = *(v208 + 48);
    v210 = *(v208 + 52);
    swift_allocObject();
    v211 = sub_B3800(v207);

    v212 = sub_106D10();
    v213 = sub_106FC0();

    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      *&v582 = v215;
      *v214 = 136315138;
      v580 = v211;
      sub_4CD70(&qword_137480, 255, type metadata accessor for AlarmNLIntent);
      v216 = sub_105620();
      v218 = sub_722E8(v216, v217, &v582);

      *(v214 + 4) = v218;
      _os_log_impl(&dword_0, v212, v213, "alarmNLIntent: %s", v214, 0xCu);
      sub_2738(v215);
      v151 = v578;
    }

    v219 = sub_B372C();
    if ((v219 - 1) < 2)
    {
      (*(v557 + 8))(v556, v558);
      v220 = sub_106D10();
      v221 = sub_106FC0();
      if (os_log_type_enabled(v220, v221))
      {
        v222 = swift_slowAlloc();
        *v222 = 0;
        _os_log_impl(&dword_0, v220, v221, "User cancel the alarm request.", v222, 2u);
      }

      sub_104E40();
      goto LABEL_89;
    }

    if (v219)
    {
      (*(v557 + 8))(v556, v558);
      v260 = v538;
      sub_105360();
      v261 = sub_579C(v260, v537);
      (*(v552 + 8))(v260, v553);
      if (v261)
      {
        sub_106800();
        v262 = swift_dynamicCastClass();

        if (v262)
        {
          v263 = sub_106D10();
          v264 = sub_106FC0();
          if (os_log_type_enabled(v263, v264))
          {
            v265 = swift_slowAlloc();
            *v265 = 0;
            _os_log_impl(&dword_0, v263, v264, "Request was not cancelled by user. Proceed.", v265, 2u);
          }

          sub_104E50();
          goto LABEL_89;
        }
      }

      v233 = sub_106D10();
      v278 = sub_106FB0();
      if (!os_log_type_enabled(v233, v278))
      {
        goto LABEL_88;
      }

      v279 = swift_slowAlloc();
      v280 = swift_slowAlloc();
      *&v582 = v280;
      *v279 = 136315138;
      *(v279 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC40, &v582);
      _os_log_impl(&dword_0, v233, v278, "Flows stack receives unexpected intent type. Expecting: %s", v279, 0xCu);
      sub_2738(v280);

      goto LABEL_87;
    }

    v232 = v536;
    sub_14994(v577, v536, &unk_1374C0, &unk_1087B0);
    if (v564(v232, 1, v151) == 1)
    {
      (*(v557 + 8))(v556, v558);
      sub_16F70(v232, &unk_1374C0, &unk_1087B0);
      v233 = sub_106D10();
      v234 = sub_106FC0();
      if (!os_log_type_enabled(v233, v234))
      {
LABEL_88:

        sub_104E60();
LABEL_89:

        return;
      }

      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&dword_0, v233, v234, "User returned accepted for non-prompt input. Ignoring.", v235, 2u);
LABEL_87:

      goto LABEL_88;
    }

    v281 = v576;
    v282 = v530;
    (*(v576 + 32))(v530, v232, v151);
    v283 = v529;
    (*(v281 + 16))(v529, v282, v151);
    v284 = (*(v281 + 88))(v283, v151);
    if (v284 == v482)
    {
      goto LABEL_114;
    }

    if (v284 == enum case for DecideAction.PromptExpectation.slot(_:))
    {
      (*(v557 + 8))(v556, v558);
      v285 = sub_106D10();
      v286 = sub_106FC0();
      if (os_log_type_enabled(v285, v286))
      {
        v287 = swift_slowAlloc();
        *v287 = 0;
        _os_log_impl(&dword_0, v285, v286, "User returned accepted for non-binary input. Ignoring.", v287, 2u);
      }

      sub_104E60();
LABEL_117:

LABEL_118:
      (*(v576 + 8))(v282, v151);
      return;
    }

    if (v284 == v481)
    {
LABEL_114:
      (*(v557 + 8))(v556, v558);
      v320 = sub_106D10();
      v321 = sub_106FC0();
      if (os_log_type_enabled(v320, v321))
      {
        v322 = swift_slowAlloc();
        *v322 = 0;
        _os_log_impl(&dword_0, v320, v321, "User accepted the task, will handle.", v322, 2u);
      }

      sub_104E50();
      goto LABEL_117;
    }

LABEL_223:
    sub_107360();
    __break(1u);
    goto LABEL_224;
  }

  if (v189 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v187 + 96))(v186, v188);
    v203 = *(v186 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));

    goto LABEL_40;
  }

  if (v189 == enum case for Parse.directInvocation(_:))
  {
    (*(v187 + 96))(v186, v188);
    v240 = v534;
    v241 = v535;
    (*(v539 + 32))(v534, v186, v535);
    v242 = v531;
    sub_106580();
    v243 = v532;
    v244 = v533;
    if ((*(v532 + 48))(v242, 1, v533) == 1)
    {
      sub_16F70(v242, &unk_137460, &unk_108C60);
      goto LABEL_64;
    }

    v288 = v526;
    (*(v243 + 32))(v526, v242, v244);
    v289 = v525;
    (*(v243 + 16))(v525, v288, v244);
    v290 = (*(v243 + 88))(v289, v244);
    if (v290 == enum case for ConfirmationResponse.confirmed(_:))
    {
      sub_104E50();
    }

    else
    {
      if (v290 != enum case for ConfirmationResponse.rejected(_:))
      {
        v332 = *(v243 + 8);
        v332(v288, v244);
        v332(v289, v244);
LABEL_64:
        v245 = sub_1053B0();
        if (v245)
        {
          v246 = v245;
          v247 = v520;
          v248 = v519;
          v249 = v521;
          (*(v520 + 104))(v519, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v521);
          v250 = sub_106590();
          v252 = v251;
          (*(v247 + 8))(v248, v249);
          sub_2B430(v250, v252, v246, &v582);

          if (!v583)
          {
            v257 = &qword_137490;
            v258 = qword_108C80;
            v259 = &v582;
LABEL_120:
            sub_16F70(v259, v257, v258);
            goto LABEL_121;
          }

          if (swift_dynamicCast())
          {
            v254 = v580;
            v253 = v581;

            sub_106420();
            v255 = v515;
            v256 = v516;
            if ((*(v515 + 48))(v184, 1, v516) != 1)
            {
              (*(v255 + 32))(v509, v184, v256);

              v350 = sub_106D10();
              v351 = sub_106FC0();

              if (os_log_type_enabled(v350, v351))
              {
                v352 = swift_slowAlloc();
                v353 = swift_slowAlloc();
                *&v582 = v353;
                *v352 = 136315138;
                v354 = sub_722E8(v254, v253, &v582);

                *(v352 + 4) = v354;
                _os_log_impl(&dword_0, v350, v351, "Received confirmation directInvocation, buttonPressed: %s", v352, 0xCu);
                sub_2738(v353);
              }

              else
              {
              }

              v370 = v515;
              v371 = v506;
              v372 = v516;
              (*(v515 + 104))(v506, enum case for ButtonOption.yes(_:), v516);
              v373 = v509;
              v374 = sub_34350();
              v375 = *(v370 + 8);
              v375(v371, v372);
              v376 = (v539 + 8);
              if (v374)
              {
                sub_104E50();
              }

              else
              {
                sub_104E40();
              }

              v375(v373, v372);
              (*v376)(v240, v241);
              return;
            }

            v257 = &unk_1383C0;
            v258 = &qword_107DF0;
            v259 = v184;
            goto LABEL_120;
          }
        }

LABEL_121:
        v323 = sub_106D10();
        v324 = sub_106FC0();
        if (os_log_type_enabled(v323, v324))
        {
          v325 = swift_slowAlloc();
          *v325 = 0;
          _os_log_impl(&dword_0, v323, v324, "Request was not cancelled by user. Proceed.", v325, 2u);
        }

        sub_104E50();
        goto LABEL_124;
      }

      sub_104E40();
    }

    (*(v243 + 8))(v288, v244);
LABEL_124:
    (*(v539 + 8))(v240, v241);
    return;
  }

  if (v189 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v187 + 96))(v186, v188);
    v274 = *v186;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v275 = sub_106D10();
      v276 = sub_106FC0();
      if (os_log_type_enabled(v275, v276))
      {
        v277 = swift_slowAlloc();
        *v277 = 0;
        _os_log_impl(&dword_0, v275, v276, "User cancelled the task.", v277, 2u);
      }

      sub_104E40();
      goto LABEL_84;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v346 = v502;
      sub_14994(v577, v502, &unk_1374C0, &unk_1087B0);
      if (v564(v346, 1, v151) == 1)
      {
        sub_16F70(v346, &unk_1374C0, &unk_1087B0);
        v347 = sub_106D10();
        v348 = sub_106FC0();
        if (os_log_type_enabled(v347, v348))
        {
          v349 = swift_slowAlloc();
          *v349 = 0;
          _os_log_impl(&dword_0, v347, v348, "User returned accepted for non-prompt input. Ignoring.", v349, 2u);
        }

        goto LABEL_215;
      }

      v378 = v576;
      v282 = v496;
      (*(v576 + 32))(v496, v346, v151);
      v379 = v495;
      (*(v378 + 16))(v495, v282, v151);
      v380 = (*(v378 + 88))(v379, v151);
      if (v380 != v482)
      {
        if (v380 == enum case for DecideAction.PromptExpectation.slot(_:))
        {
          v381 = sub_106D10();
          v382 = sub_106FC0();
          if (os_log_type_enabled(v381, v382))
          {
            v383 = swift_slowAlloc();
            *v383 = 0;
            _os_log_impl(&dword_0, v381, v382, "User returned accepted for non-binary input. Ignoring.", v383, 2u);
          }

          sub_104E60();
LABEL_193:
          swift_unknownObjectRelease();
          goto LABEL_118;
        }

        if (v380 != v481)
        {
          goto LABEL_223;
        }
      }

      v426 = sub_106D10();
      v427 = sub_106FC0();
      if (os_log_type_enabled(v426, v427))
      {
        v428 = swift_slowAlloc();
        *v428 = 0;
        _os_log_impl(&dword_0, v426, v427, "User accepted the task, will handle.", v428, 2u);
      }

      sub_104E50();
      goto LABEL_193;
    }

    if ((v507 & 1) == 0)
    {
LABEL_208:
      v450 = v538;
      sub_105360();
      v451 = sub_579C(v450, v537);
      (*(v552 + 8))(v450, v553);
      if (!v451 || (sub_106800(), v452 = swift_dynamicCastClass(), v451, !v452))
      {
        v461 = v513;
        v462 = v489;
        v463 = v514;
        (*(v513 + 16))(v489, v579, v514);
        v464 = sub_106D10();
        v465 = sub_106FB0();
        if (os_log_type_enabled(v464, v465))
        {
          v466 = swift_slowAlloc();
          *&v582 = swift_slowAlloc();
          *v466 = 136315394;
          *(v466 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC40, &v582);
          *(v466 + 12) = 2080;
          sub_4CD70(&unk_1374D0, 255, &type metadata accessor for Input);
          v467 = sub_107340();
          v468 = v462;
          v470 = v469;
          (*(v461 + 8))(v468, v463);
          v471 = sub_722E8(v467, v470, &v582);

          *(v466 + 14) = v471;
          _os_log_impl(&dword_0, v464, v465, "Intent from parse does not match IntentType. Expected %s, received %s", v466, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v461 + 8))(v462, v463);
        }

LABEL_215:
        sub_104E60();
LABEL_84:
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRetain();
      v453 = sub_106D10();
      v454 = sub_106FC0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v453, v454))
      {
        v455 = swift_slowAlloc();
        v456 = swift_slowAlloc();
        *&v582 = v456;
        *v455 = 136315138;
        v580 = v274;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v457 = sub_106E30();
        v459 = sub_722E8(v457, v458, &v582);

        *(v455 + 4) = v459;
        v460 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_219:
        _os_log_impl(&dword_0, v453, v454, v460, v455, 0xCu);
        sub_2738(v456);

        goto LABEL_220;
      }

      goto LABEL_220;
    }

    swift_getObjectType();
    if (sub_107000())
    {
      sub_274CC(v185);

      v377 = 0;
    }

    else
    {
      v377 = 1;
    }

    v439 = v500;
    v440 = v503;
    v441 = *(v503 + 56);
    v441(v185, v377, 1, v500);
    v442 = v497;
    (*(v440 + 104))(v497, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v439);
    v441(v442, 0, 1, v439);
    v443 = *(v499 + 48);
    v444 = v185;
    v445 = v491;
    sub_14994(v444, v491, &unk_1374A0, &qword_10BB30);
    sub_14994(v442, v445 + v443, &unk_1374A0, &qword_10BB30);
    v446 = *(v440 + 48);
    if (v446(v445, 1, v439) == 1)
    {
      sub_16F70(v497, &unk_1374A0, &qword_10BB30);
      sub_16F70(v551, &unk_1374A0, &qword_10BB30);
      v447 = v446(v445 + v443, 1, v439) == 1;
      v448 = v445;
      if (!v447)
      {
        goto LABEL_207;
      }

      sub_16F70(v445, &unk_1374A0, &qword_10BB30);
    }

    else
    {
      v449 = v484;
      sub_14994(v445, v484, &unk_1374A0, &qword_10BB30);
      if (v446(v445 + v443, 1, v439) == 1)
      {
        sub_16F70(v497, &unk_1374A0, &qword_10BB30);
        sub_16F70(v551, &unk_1374A0, &qword_10BB30);
        (*(v503 + 8))(v449, v439);
        v448 = v491;
LABEL_207:
        sub_16F70(v448, &qword_137498, &unk_108C50);
        goto LABEL_208;
      }

      v472 = v503;
      v473 = v491;
      v474 = v486;
      (*(v503 + 32))(v486, v491 + v443, v439);
      sub_4CD70(&qword_138400, 255, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
      v475 = sub_106E00();
      v476 = *(v472 + 8);
      v476(v474, v439);
      sub_16F70(v497, &unk_1374A0, &qword_10BB30);
      sub_16F70(v551, &unk_1374A0, &qword_10BB30);
      v476(v449, v439);
      sub_16F70(v473, &unk_1374A0, &qword_10BB30);
      if ((v475 & 1) == 0)
      {
        goto LABEL_208;
      }
    }

    swift_unknownObjectRetain();
    v453 = sub_106D10();
    v454 = sub_106FC0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v453, v454))
    {
      v455 = swift_slowAlloc();
      v456 = swift_slowAlloc();
      *&v582 = v456;
      *v455 = 136315138;
      v580 = v274;
      swift_unknownObjectRetain();
      sub_25E4(&unk_137470, &unk_10BC40);
      v477 = sub_106E30();
      v479 = sub_722E8(v477, v478, &v582);

      *(v455 + 4) = v479;
      v460 = "decideActionForInput decide handle disambiguation userDialogAct: %s";
      goto LABEL_219;
    }

LABEL_220:

    sub_104E50();
    goto LABEL_84;
  }

  if (v189 != enum case for Parse.uso(_:))
  {
    if (v189 == enum case for Parse.ifClientAction(_:))
    {
      v308 = *(v187 + 8);
      v308(v186, v188);
      v309 = v538;
      sub_105360();
      v310 = sub_579C(v309, v537);
      v308(v309, v188);
      v311 = v310;
      v312 = sub_106D10();
      v313 = sub_106FC0();

      if (os_log_type_enabled(v312, v313))
      {
        v314 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        *&v582 = v315;
        *v314 = 136315138;
        v580 = v310;
        v316 = v311;
        sub_25E4(&unk_1383F0, &qword_107E08);
        v317 = sub_106E30();
        v319 = sub_722E8(v317, v318, &v582);

        *(v314 + 4) = v319;
        _os_log_impl(&dword_0, v312, v313, "Handling ifClientAction for intent: %s", v314, 0xCu);
        sub_2738(v315);
      }

      sub_104E50();
    }

    else
    {
      v333 = v513;
      v334 = v510;
      v335 = v514;
      (*(v513 + 16))(v510, v579, v514);
      v336 = sub_106D10();
      v337 = sub_106FB0();
      if (os_log_type_enabled(v336, v337))
      {
        v338 = v334;
        v339 = swift_slowAlloc();
        v340 = swift_slowAlloc();
        *&v582 = v340;
        *v339 = 136315138;
        sub_105360();
        v341 = v553;
        v342 = sub_106E30();
        v344 = v343;
        (*(v333 + 8))(v338, v335);
        v345 = sub_722E8(v342, v344, &v582);

        *(v339 + 4) = v345;
        _os_log_impl(&dword_0, v336, v337, "Received an unsupported parse: %s", v339, 0xCu);
        sub_2738(v340);
      }

      else
      {

        (*(v333 + 8))(v334, v335);
        v341 = v553;
      }

      sub_104E60();
      (*(v552 + 8))(v549, v341);
    }

    return;
  }

  (*(v187 + 96))(v186, v188);
  (*(v524 + 32))(v528, v186, v523);
  v291 = v517;
  sub_105400();
  v292 = sub_105450();
  v293 = *(v527 + 8);
  v527 += 8;
  v293(v291, v522);
  v294 = 0;
  v295 = *(v292 + 16);
  v296 = (v545 + 8);
  v297 = v518;
  v298 = v545;
  while (v295 != v294)
  {
    if (v294 >= *(v292 + 16))
    {
      __break(1u);
LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    v299 = v542;
    (*(v298 + 16))(v542, v292 + ((*(v298 + 80) + 32) & ~*(v298 + 80)) + *(v298 + 72) * v294++, v297);
    v300 = sub_1054C0();
    (*(v298 + 8))(v299, v297);
    if (v300)
    {

      v301 = v508;
      sub_14994(v577, v508, &unk_1374C0, &unk_1087B0);
      v302 = v578;
      if (v564(v301, 1, v578) == 1)
      {
        sub_16F70(v301, &unk_1374C0, &unk_1087B0);
        v303 = sub_106D10();
        v304 = sub_106FC0();
        v305 = os_log_type_enabled(v303, v304);
        v306 = v524;
        if (v305)
        {
          v307 = swift_slowAlloc();
          *v307 = 0;
          _os_log_impl(&dword_0, v303, v304, "User returned accepted for non-prompt input. Ignoring.", v307, 2u);
        }

        sub_104E60();
        goto LABEL_173;
      }

      v355 = v576;
      v356 = v505;
      (*(v576 + 32))(v505, v301, v302);
      v357 = v504;
      (*(v355 + 16))(v504, v356, v302);
      v358 = (*(v355 + 88))(v357, v302);
      v306 = v524;
      if (v358 == v482)
      {
        goto LABEL_169;
      }

      if (v358 == enum case for DecideAction.PromptExpectation.slot(_:))
      {
        v359 = sub_106D10();
        v360 = sub_106FC0();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          *v361 = 0;
          _os_log_impl(&dword_0, v359, v360, "User returned accepted for non-binary input. Ignoring.", v361, 2u);
        }

        sub_104E60();
LABEL_172:
        (*(v576 + 8))(v356, v302);
LABEL_173:
        (*(v306 + 8))(v528, v523);
        return;
      }

      if (v358 == v481)
      {
LABEL_169:
        v384 = sub_106D10();
        v385 = sub_106FC0();
        if (os_log_type_enabled(v384, v385))
        {
          v386 = swift_slowAlloc();
          *v386 = 0;
          _os_log_impl(&dword_0, v384, v385, "User accepted the task, will handle.", v386, 2u);
        }

        sub_104E50();
        goto LABEL_172;
      }

LABEL_224:
      sub_107360();
      __break(1u);
      return;
    }
  }

  v326 = v511;
  sub_105400();
  v327 = sub_105450();
  v293(v326, v522);
  v328 = 0;
  v329 = *(v327 + 16);
  v330 = v512;
  while (1)
  {
    if (v329 == v328)
    {

      if (v507)
      {
        v362 = v493;
        sub_105400();
        v363 = sub_105440();
        v293(v362, v522);
        if (v363)
        {
          v364 = v494;
          sub_274CC(v494);

          v365 = 0;
          v366 = v499;
        }

        else
        {
          v365 = 1;
          v366 = v499;
          v364 = v494;
        }

        v387 = v503;
        v388 = *(v503 + 56);
        v389 = v500;
        v388(v364, v365, 1, v500);
        v390 = v498;
        (*(v387 + 104))(v498, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v389);
        v388(v390, 0, 1, v389);
        v391 = *(v366 + 48);
        v392 = v501;
        sub_14994(v364, v501, &unk_1374A0, &qword_10BB30);
        v393 = v392;
        sub_14994(v390, v392 + v391, &unk_1374A0, &qword_10BB30);
        v394 = *(v387 + 48);
        if (v394(v393, 1, v389) == 1)
        {
          sub_16F70(v390, &unk_1374A0, &qword_10BB30);
          v395 = v501;
          sub_16F70(v364, &unk_1374A0, &qword_10BB30);
          if (v394(v395 + v391, 1, v389) == 1)
          {
            sub_16F70(v395, &unk_1374A0, &qword_10BB30);
            goto LABEL_195;
          }

          goto LABEL_180;
        }

        v396 = v487;
        sub_14994(v393, v487, &unk_1374A0, &qword_10BB30);
        if (v394(v393 + v391, 1, v389) == 1)
        {
          sub_16F70(v498, &unk_1374A0, &qword_10BB30);
          v395 = v501;
          sub_16F70(v364, &unk_1374A0, &qword_10BB30);
          (*(v503 + 8))(v396, v389);
LABEL_180:
          sub_16F70(v395, &qword_137498, &unk_108C50);
          goto LABEL_181;
        }

        v429 = v503;
        v430 = v393 + v391;
        v431 = v486;
        (*(v503 + 32))(v486, v430, v389);
        sub_4CD70(&qword_138400, 255, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
        v432 = sub_106E00();
        v433 = *(v429 + 8);
        v433(v431, v389);
        sub_16F70(v498, &unk_1374A0, &qword_10BB30);
        sub_16F70(v364, &unk_1374A0, &qword_10BB30);
        v433(v396, v389);
        sub_16F70(v393, &unk_1374A0, &qword_10BB30);
        if (v432)
        {
LABEL_195:
          v400 = v524;
          v434 = *(v524 + 16);
          v402 = v485;
          v403 = v523;
          v434(v485, v528, v523);
          v404 = sub_106D10();
          v405 = sub_106FC0();
          if (os_log_type_enabled(v404, v405))
          {
            v406 = swift_slowAlloc();
            v407 = swift_slowAlloc();
            *&v582 = v407;
            *v406 = 136315138;
            v434(v488, v402, v403);
            v435 = sub_106E30();
            v437 = v436;
            v411 = *(v400 + 8);
            v411(v402, v403);
            v438 = sub_722E8(v435, v437, &v582);

            *(v406 + 4) = v438;
            v413 = "decideActionForInput decide handle disambiguation UsoParse: %s";
            goto LABEL_197;
          }

          goto LABEL_198;
        }
      }

LABEL_181:
      v397 = v538;
      sub_105360();
      v398 = sub_579C(v397, v537);
      (*(v552 + 8))(v397, v553);
      if (!v398 || (sub_106800(), v399 = swift_dynamicCastClass(), v398, !v399))
      {
        v414 = v513;
        v415 = v492;
        v416 = v514;
        (*(v513 + 16))(v492, v579, v514);
        v417 = sub_106D10();
        v418 = sub_106FB0();
        if (os_log_type_enabled(v417, v418))
        {
          v419 = v415;
          v420 = swift_slowAlloc();
          *&v582 = swift_slowAlloc();
          *v420 = 136315394;
          *(v420 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC40, &v582);
          *(v420 + 12) = 2080;
          sub_4CD70(&unk_1374D0, 255, &type metadata accessor for Input);
          v421 = sub_107340();
          v423 = v422;
          (*(v414 + 8))(v419, v416);
          v424 = sub_722E8(v421, v423, &v582);

          *(v420 + 14) = v424;
          _os_log_impl(&dword_0, v417, v418, "Intent from parse does not match IntentType. Expected %s, received %s", v420, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v414 + 8))(v415, v416);
        }

        v425 = v523;
        sub_104E60();
        (*(v524 + 8))(v528, v425);
        return;
      }

      v400 = v524;
      v401 = *(v524 + 16);
      v402 = v490;
      v403 = v523;
      v401(v490, v528, v523);
      v404 = sub_106D10();
      v405 = sub_106FC0();
      if (os_log_type_enabled(v404, v405))
      {
        v406 = swift_slowAlloc();
        v407 = swift_slowAlloc();
        *&v582 = v407;
        *v406 = 136315138;
        v401(v488, v402, v403);
        v408 = sub_106E30();
        v410 = v409;
        v411 = *(v400 + 8);
        v411(v402, v403);
        v412 = sub_722E8(v408, v410, &v582);

        *(v406 + 4) = v412;
        v413 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_197:
        _os_log_impl(&dword_0, v404, v405, v413, v406, 0xCu);
        sub_2738(v407);

LABEL_199:
        sub_104E50();
        v411(v528, v403);
        return;
      }

LABEL_198:

      v411 = *(v400 + 8);
      v411(v402, v403);
      goto LABEL_199;
    }

    if (v328 >= *(v327 + 16))
    {
      goto LABEL_222;
    }

    (*(v545 + 16))(v330, v327 + ((*(v545 + 80) + 32) & ~*(v545 + 80)) + *(v545 + 72) * v328, v297);
    if (sub_1054D0())
    {
      break;
    }

    ++v328;
    v331 = sub_1054E0();
    (*v296)(v330, v297);
    if (v331)
    {
      goto LABEL_152;
    }
  }

  (*v296)(v330, v297);
LABEL_152:

  v367 = sub_106D10();
  v368 = sub_106FC0();
  if (os_log_type_enabled(v367, v368))
  {
    v369 = swift_slowAlloc();
    *v369 = 0;
    _os_log_impl(&dword_0, v367, v368, "User cancelled/rejected the task, will cancel the request.", v369, 2u);
  }

  sub_104E40();
  (*(v524 + 8))(v528, v523);
}

void sub_38E38(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v577 = a4;
  v507 = a3;
  v537 = a2;
  v579 = a1;
  v575 = a5;
  v5 = sub_25E4(&unk_1383C0, &qword_107DF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v480 - v7;
  v516 = sub_106440();
  v515 = *(v516 - 8);
  v9 = *(v515 + 64);
  v10 = __chkstk_darwin(v516);
  v506 = &v480 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v509 = &v480 - v12;
  v521 = sub_1065A0();
  v520 = *(v521 - 8);
  v13 = *(v520 + 64);
  __chkstk_darwin(v521);
  v519 = &v480 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v500 = sub_106960();
  v503 = *(v500 - 8);
  v15 = *(v503 + 64);
  __chkstk_darwin(v500);
  v486 = &v480 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v499 = sub_25E4(&qword_137498, &unk_108C50);
  v17 = *(*(v499 - 8) + 64);
  v18 = __chkstk_darwin(v499);
  v501 = &v480 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v491 = &v480 - v20;
  v21 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v487 = &v480 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v480 - v26;
  v28 = __chkstk_darwin(v25);
  v494 = &v480 - v29;
  v30 = __chkstk_darwin(v28);
  v484 = &v480 - v31;
  v32 = __chkstk_darwin(v30);
  v497 = &v480 - v33;
  __chkstk_darwin(v32);
  v551 = &v480 - v34;
  v514 = sub_105380();
  v513 = *(v514 - 8);
  v35 = *(v513 + 64);
  v36 = __chkstk_darwin(v514);
  v38 = &v480 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36);
  v489 = &v480 - v40;
  __chkstk_darwin(v39);
  v510 = &v480 - v41;
  v42 = sub_25E4(&unk_137460, &unk_108C60);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v531 = &v480 - v44;
  v533 = sub_1050D0();
  v532 = *(v533 - 8);
  v45 = *(v532 + 64);
  v46 = __chkstk_darwin(v533);
  v525 = &v480 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v526 = &v480 - v48;
  v535 = sub_1053C0();
  v539 = *(v535 - 8);
  v49 = *(v539 + 64);
  __chkstk_darwin(v535);
  v534 = &v480 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v518 = sub_105520();
  v545 = *(v518 - 8);
  v51 = *(v545 + 64);
  v52 = __chkstk_darwin(v518);
  v512 = &v480 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v542 = &v480 - v54;
  v522 = sub_105460();
  v527 = *(v522 - 8);
  v55 = *(v527 + 64);
  v56 = __chkstk_darwin(v522);
  v493 = &v480 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v511 = &v480 - v59;
  __chkstk_darwin(v58);
  v517 = &v480 - v60;
  v523 = sub_105410();
  v524 = *(v523 - 8);
  v61 = *(v524 + 64);
  v62 = __chkstk_darwin(v523);
  v490 = &v480 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v488 = &v480 - v65;
  v66 = __chkstk_darwin(v64);
  v485 = &v480 - v67;
  __chkstk_darwin(v66);
  v528 = &v480 - v68;
  v553 = sub_1053E0();
  v552 = *(v553 - 8);
  v69 = *(v552 + 64);
  v70 = __chkstk_darwin(v553);
  v538 = &v480 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v549 = &v480 - v72;
  v558 = sub_105E80();
  v557 = *(v558 - 8);
  v73 = *(v557 + 64);
  v74 = __chkstk_darwin(v558);
  v546 = &v480 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v556 = &v480 - v76;
  v565 = sub_104E70();
  v568 = *(v565 - 8);
  v77 = *(v568 + 64);
  __chkstk_darwin(v565);
  v541 = &v480 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v563 = sub_25E4(&unk_1383D0, &qword_107DF8);
  v79 = *(*(v563 - 8) + 64);
  __chkstk_darwin(v563);
  v572 = &v480 - v80;
  v81 = sub_25E4(&unk_1374B0, &unk_108C70);
  v82 = *(*(v81 - 8) + 64);
  v83 = __chkstk_darwin(v81 - 8);
  v548 = &v480 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __chkstk_darwin(v83);
  v567 = &v480 - v86;
  __chkstk_darwin(v85);
  v573 = &v480 - v87;
  v578 = sub_106450();
  v576 = *(v578 - 8);
  v88 = *(v576 + 64);
  v89 = __chkstk_darwin(v578);
  v504 = &v480 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __chkstk_darwin(v89);
  v505 = &v480 - v92;
  v93 = __chkstk_darwin(v91);
  v495 = &v480 - v94;
  v95 = __chkstk_darwin(v93);
  v496 = &v480 - v96;
  v97 = __chkstk_darwin(v95);
  v529 = &v480 - v98;
  v99 = __chkstk_darwin(v97);
  v530 = &v480 - v100;
  __chkstk_darwin(v99);
  v569 = &v480 - v101;
  v102 = sub_25E4(&unk_1383E0, &qword_107E00);
  v103 = *(*(v102 - 8) + 64);
  v104 = __chkstk_darwin(v102);
  v544 = &v480 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __chkstk_darwin(v104);
  v571 = &v480 - v107;
  v108 = __chkstk_darwin(v106);
  v110 = &v480 - v109;
  __chkstk_darwin(v108);
  v112 = &v480 - v111;
  v113 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v114 = *(*(v113 - 8) + 64);
  v115 = __chkstk_darwin(v113 - 8);
  v508 = &v480 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __chkstk_darwin(v115);
  v502 = &v480 - v118;
  v119 = __chkstk_darwin(v117);
  v536 = &v480 - v120;
  v121 = __chkstk_darwin(v119);
  v540 = &v480 - v122;
  v123 = __chkstk_darwin(v121);
  v543 = &v480 - v124;
  v125 = __chkstk_darwin(v123);
  v555 = &v480 - v126;
  v127 = __chkstk_darwin(v125);
  v574 = &v480 - v128;
  v129 = __chkstk_darwin(v127);
  v554 = &v480 - v130;
  v131 = __chkstk_darwin(v129);
  v570 = &v480 - v132;
  v133 = __chkstk_darwin(v131);
  v135 = &v480 - v134;
  __chkstk_darwin(v133);
  v137 = &v480 - v136;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v138 = sub_106D20();
  v566 = sub_135C4(v138, qword_137440);
  v139 = sub_106D10();
  v140 = sub_106FA0();
  v141 = os_log_type_enabled(v139, v140);
  v492 = v38;
  v498 = v27;
  v550 = v8;
  if (v141)
  {
    v142 = swift_slowAlloc();
    v547 = v102;
    v143 = v142;
    v144 = swift_slowAlloc();
    *&v582 = v144;
    *v143 = 136315138;
    v580 = sub_106840();
    sub_25E4(&qword_138418, &qword_108CA0);
    v145 = sub_106E30();
    v147 = v135;
    v148 = v110;
    v149 = sub_722E8(v145, v146, &v582);

    *(v143 + 4) = v149;
    v110 = v148;
    v135 = v147;
    _os_log_impl(&dword_0, v139, v140, "AlarmFlowUtils.decideActionForInput with intent type: %s", v143, 0xCu);
    sub_2738(v144);

    v102 = v547;
  }

  v150 = sub_13AA4(v579);
  v151 = v578;
  if ((v150 & 1) == 0)
  {
    goto LABEL_60;
  }

  v152 = v576;
  v153 = *(v576 + 104);
  v482 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v560 = v576 + 104;
  v559 = v153;
  v153(v137);
  v154 = *(v152 + 56);
  v562 = v152 + 56;
  v561 = v154;
  v154(v137, 0, 1, v151);
  v155 = *(v102 + 48);
  sub_14994(v577, v112, &unk_1374C0, &unk_1087B0);
  sub_14994(v137, &v112[v155], &unk_1374C0, &unk_1087B0);
  v157 = v152 + 48;
  v156 = *(v152 + 48);
  v158 = v156(v112, 1, v151);
  v564 = v156;
  if (v158 == 1)
  {
    sub_16F70(v137, &unk_1374C0, &unk_1087B0);
    v159 = v156(&v112[v155], 1, v151);
    v160 = v574;
    if (v159 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  sub_14994(v112, v135, &unk_1374C0, &unk_1087B0);
  if (v156(&v112[v155], 1, v151) == 1)
  {
    sub_16F70(v137, &unk_1374C0, &unk_1087B0);
    (*(v576 + 8))(v135, v151);
    v160 = v574;
LABEL_11:
    sub_16F70(v112, &unk_1383E0, &qword_107E00);
    goto LABEL_12;
  }

  v175 = v576;
  v176 = &v112[v155];
  v177 = v569;
  (*(v576 + 32))(v569, v176, v151);
  sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation);
  v178 = sub_106E00();
  v179 = v175;
  v180 = v102;
  v181 = v110;
  v182 = *(v179 + 8);
  v182(v177, v578);
  sub_16F70(v137, &unk_1374C0, &unk_1087B0);
  v182(v135, v578);
  v110 = v181;
  v151 = v578;
  v102 = v180;
  sub_16F70(v112, &unk_1374C0, &unk_1087B0);
  v160 = v574;
  if (v178)
  {
    goto LABEL_30;
  }

LABEL_12:
  v161 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v559(v160, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v151);
  v561(v160, 0, 1, v151);
  v162 = *(v102 + 48);
  v163 = v571;
  sub_14994(v577, v571, &unk_1374C0, &unk_1087B0);
  sub_14994(v160, v163 + v162, &unk_1374C0, &unk_1087B0);
  v164 = v564;
  if (v564(v163, 1, v151) == 1)
  {
    sub_16F70(v160, &unk_1374C0, &unk_1087B0);
    if (v164(v163 + v162, 1, v151) == 1)
    {
      v112 = v163;
LABEL_15:
      sub_16F70(v112, &unk_1374C0, &unk_1087B0);
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v165 = v555;
  sub_14994(v163, v555, &unk_1374C0, &unk_1087B0);
  if (v164(v163 + v162, 1, v151) == 1)
  {
    sub_16F70(v574, &unk_1374C0, &unk_1087B0);
    (*(v576 + 8))(v165, v151);
LABEL_18:
    v481 = v161;
    sub_16F70(v163, &unk_1383E0, &qword_107E00);
    v166 = v565;
    goto LABEL_19;
  }

  v481 = v161;
  v483 = v157;
  v190 = v576;
  v191 = v569;
  (*(v576 + 32))(v569, v163 + v162, v151);
  sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation);
  v192 = sub_106E00();
  v193 = *(v190 + 8);
  v193(v191, v151);
  sub_16F70(v574, &unk_1374C0, &unk_1087B0);
  v193(v165, v151);
  v157 = v483;
  v166 = v565;
  sub_16F70(v163, &unk_1374C0, &unk_1087B0);
  if (v192)
  {
LABEL_30:
    v194 = v570;
    v559(v570, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v151);
    v561(v194, 0, 1, v151);
    v195 = *(v102 + 48);
    sub_14994(v577, v110, &unk_1374C0, &unk_1087B0);
    sub_14994(v194, &v110[v195], &unk_1374C0, &unk_1087B0);
    v196 = v564;
    if (v564(v110, 1, v151) == 1)
    {
      sub_16F70(v194, &unk_1374C0, &unk_1087B0);
      if (v196(&v110[v195], 1, v151) == 1)
      {
        sub_16F70(v110, &unk_1374C0, &unk_1087B0);
        v197 = 1;
LABEL_37:
        sub_A570(v579, v197 & 1, v575);
        return;
      }
    }

    else
    {
      v198 = v554;
      sub_14994(v110, v554, &unk_1374C0, &unk_1087B0);
      if (v196(&v110[v195], 1, v151) != 1)
      {
        v199 = v576;
        v200 = &v110[v195];
        v201 = v569;
        (*(v576 + 32))(v569, v200, v151);
        sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation);
        v197 = sub_106E00();
        v202 = *(v199 + 8);
        v202(v201, v151);
        sub_16F70(v194, &unk_1374C0, &unk_1087B0);
        v202(v198, v151);
        sub_16F70(v110, &unk_1374C0, &unk_1087B0);
        goto LABEL_37;
      }

      sub_16F70(v194, &unk_1374C0, &unk_1087B0);
      (*(v576 + 8))(v198, v151);
    }

    sub_16F70(v110, &unk_1383E0, &qword_107E00);
    v197 = 0;
    goto LABEL_37;
  }

LABEL_19:
  v483 = v157;
  v167 = v573;
  sub_99E8(v573);
  v168 = v567;
  sub_104E40();
  v169 = v568;
  (*(v568 + 56))(v168, 0, 1, v166);
  v170 = *(v563 + 48);
  v171 = v167;
  v172 = v572;
  sub_14994(v171, v572, &unk_1374B0, &unk_108C70);
  sub_14994(v168, v172 + v170, &unk_1374B0, &unk_108C70);
  v173 = *(v169 + 48);
  if (v173(v172, 1, v166) == 1)
  {
    sub_16F70(v168, &unk_1374B0, &unk_108C70);
    v174 = v572;
    sub_16F70(v573, &unk_1374B0, &unk_108C70);
    if (v173(v174 + v170, 1, v166) == 1)
    {
      sub_16F70(v174, &unk_1374B0, &unk_108C70);
      goto LABEL_47;
    }
  }

  else
  {
    v183 = v548;
    sub_14994(v172, v548, &unk_1374B0, &unk_108C70);
    if (v173(v172 + v170, 1, v166) != 1)
    {
      v223 = v568;
      v224 = v172 + v170;
      v225 = v541;
      (*(v568 + 32))(v541, v224, v166);
      sub_4CD70(&qword_1374E8, 255, &type metadata accessor for ActionForInput);
      v547 = v102;
      v226 = sub_106E00();
      v227 = *(v223 + 8);
      v227(v225, v166);
      sub_16F70(v567, &unk_1374B0, &unk_108C70);
      sub_16F70(v573, &unk_1374B0, &unk_108C70);
      v102 = v547;
      v227(v183, v166);
      sub_16F70(v172, &unk_1374B0, &unk_108C70);
      v184 = v550;
      v185 = v551;
      if (v226)
      {
LABEL_47:
        v228 = v543;
        v559(v543, enum case for DecideAction.PromptExpectation.slot(_:), v151);
        v561(v228, 0, 1, v151);
        v229 = *(v102 + 48);
        v230 = v544;
        sub_14994(v577, v544, &unk_1374C0, &unk_1087B0);
        sub_14994(v228, v230 + v229, &unk_1374C0, &unk_1087B0);
        v231 = v564;
        if (v564(v230, 1, v151) == 1)
        {
          sub_16F70(v228, &unk_1374C0, &unk_1087B0);
          if (v231(v230 + v229, 1, v151) == 1)
          {
            sub_16F70(v230, &unk_1374C0, &unk_1087B0);
LABEL_75:
            v271 = sub_106D10();
            v272 = sub_106FC0();
            if (os_log_type_enabled(v271, v272))
            {
              v273 = swift_slowAlloc();
              *v273 = 0;
              _os_log_impl(&dword_0, v271, v272, "Received cancel input slow prompt input – .cancel()", v273, 2u);
            }

            sub_104E40();
            return;
          }
        }

        else
        {
          v236 = v540;
          sub_14994(v230, v540, &unk_1374C0, &unk_1087B0);
          if (v231(v230 + v229, 1, v151) != 1)
          {
            v266 = v576;
            v267 = v230 + v229;
            v268 = v569;
            (*(v576 + 32))(v569, v267, v151);
            sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation);
            v269 = sub_106E00();
            v270 = *(v266 + 8);
            v270(v268, v151);
            sub_16F70(v228, &unk_1374C0, &unk_1087B0);
            v270(v236, v151);
            sub_16F70(v230, &unk_1374C0, &unk_1087B0);
            if (v269)
            {
              goto LABEL_75;
            }

            goto LABEL_57;
          }

          sub_16F70(v228, &unk_1374C0, &unk_1087B0);
          (*(v576 + 8))(v236, v151);
        }

        sub_16F70(v230, &unk_1383E0, &qword_107E00);
LABEL_57:
        v237 = sub_106D10();
        v238 = sub_106FC0();
        if (os_log_type_enabled(v237, v238))
        {
          v239 = swift_slowAlloc();
          *v239 = 0;
          _os_log_impl(&dword_0, v237, v238, "Received cancel input on non-confirmation, non-slot prompt input – .ignore()", v239, 2u);
        }

LABEL_60:
        sub_104E60();
        return;
      }

      goto LABEL_27;
    }

    sub_16F70(v567, &unk_1374B0, &unk_108C70);
    v174 = v572;
    sub_16F70(v573, &unk_1374B0, &unk_108C70);
    (*(v568 + 8))(v183, v166);
  }

  sub_16F70(v174, &unk_1383D0, &qword_107DF8);
  v184 = v550;
  v185 = v551;
LABEL_27:
  v186 = v549;
  sub_105360();
  v187 = v552;
  v188 = v553;
  v189 = (*(v552 + 88))(v186, v553);
  if (v189 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v187 + 96))(v186, v188);
LABEL_40:
    v204 = v557;
    v205 = v556;
    v206 = v558;
    (*(v557 + 32))(v556, v186, v558);
    v207 = v546;
    (*(v204 + 16))(v546, v205, v206);
    v208 = type metadata accessor for AlarmNLIntent();
    v209 = *(v208 + 48);
    v210 = *(v208 + 52);
    swift_allocObject();
    v211 = sub_B3800(v207);

    v212 = sub_106D10();
    v213 = sub_106FC0();

    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      *&v582 = v215;
      *v214 = 136315138;
      v580 = v211;
      sub_4CD70(&qword_137480, 255, type metadata accessor for AlarmNLIntent);
      v216 = sub_105620();
      v218 = sub_722E8(v216, v217, &v582);

      *(v214 + 4) = v218;
      _os_log_impl(&dword_0, v212, v213, "alarmNLIntent: %s", v214, 0xCu);
      sub_2738(v215);
      v151 = v578;
    }

    v219 = sub_B372C();
    if ((v219 - 1) < 2)
    {
      (*(v557 + 8))(v556, v558);
      v220 = sub_106D10();
      v221 = sub_106FC0();
      if (os_log_type_enabled(v220, v221))
      {
        v222 = swift_slowAlloc();
        *v222 = 0;
        _os_log_impl(&dword_0, v220, v221, "User cancel the alarm request.", v222, 2u);
      }

      sub_104E40();
      goto LABEL_89;
    }

    if (v219)
    {
      (*(v557 + 8))(v556, v558);
      v260 = v538;
      sub_105360();
      v261 = sub_579C(v260, v537);
      (*(v552 + 8))(v260, v553);
      if (v261)
      {
        sub_106840();
        v262 = swift_dynamicCastClass();

        if (v262)
        {
          v263 = sub_106D10();
          v264 = sub_106FC0();
          if (os_log_type_enabled(v263, v264))
          {
            v265 = swift_slowAlloc();
            *v265 = 0;
            _os_log_impl(&dword_0, v263, v264, "Request was not cancelled by user. Proceed.", v265, 2u);
          }

          sub_104E50();
          goto LABEL_89;
        }
      }

      v233 = sub_106D10();
      v278 = sub_106FB0();
      if (!os_log_type_enabled(v233, v278))
      {
        goto LABEL_88;
      }

      v279 = swift_slowAlloc();
      v280 = swift_slowAlloc();
      *&v582 = v280;
      *v279 = 136315138;
      *(v279 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC20, &v582);
      _os_log_impl(&dword_0, v233, v278, "Flows stack receives unexpected intent type. Expecting: %s", v279, 0xCu);
      sub_2738(v280);

      goto LABEL_87;
    }

    v232 = v536;
    sub_14994(v577, v536, &unk_1374C0, &unk_1087B0);
    if (v564(v232, 1, v151) == 1)
    {
      (*(v557 + 8))(v556, v558);
      sub_16F70(v232, &unk_1374C0, &unk_1087B0);
      v233 = sub_106D10();
      v234 = sub_106FC0();
      if (!os_log_type_enabled(v233, v234))
      {
LABEL_88:

        sub_104E60();
LABEL_89:

        return;
      }

      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&dword_0, v233, v234, "User returned accepted for non-prompt input. Ignoring.", v235, 2u);
LABEL_87:

      goto LABEL_88;
    }

    v281 = v576;
    v282 = v530;
    (*(v576 + 32))(v530, v232, v151);
    v283 = v529;
    (*(v281 + 16))(v529, v282, v151);
    v284 = (*(v281 + 88))(v283, v151);
    if (v284 == v482)
    {
      goto LABEL_114;
    }

    if (v284 == enum case for DecideAction.PromptExpectation.slot(_:))
    {
      (*(v557 + 8))(v556, v558);
      v285 = sub_106D10();
      v286 = sub_106FC0();
      if (os_log_type_enabled(v285, v286))
      {
        v287 = swift_slowAlloc();
        *v287 = 0;
        _os_log_impl(&dword_0, v285, v286, "User returned accepted for non-binary input. Ignoring.", v287, 2u);
      }

      sub_104E60();
LABEL_117:

LABEL_118:
      (*(v576 + 8))(v282, v151);
      return;
    }

    if (v284 == v481)
    {
LABEL_114:
      (*(v557 + 8))(v556, v558);
      v320 = sub_106D10();
      v321 = sub_106FC0();
      if (os_log_type_enabled(v320, v321))
      {
        v322 = swift_slowAlloc();
        *v322 = 0;
        _os_log_impl(&dword_0, v320, v321, "User accepted the task, will handle.", v322, 2u);
      }

      sub_104E50();
      goto LABEL_117;
    }

LABEL_223:
    sub_107360();
    __break(1u);
    goto LABEL_224;
  }

  if (v189 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v187 + 96))(v186, v188);
    v203 = *(v186 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));

    goto LABEL_40;
  }

  if (v189 == enum case for Parse.directInvocation(_:))
  {
    (*(v187 + 96))(v186, v188);
    v240 = v534;
    v241 = v535;
    (*(v539 + 32))(v534, v186, v535);
    v242 = v531;
    sub_106580();
    v243 = v532;
    v244 = v533;
    if ((*(v532 + 48))(v242, 1, v533) == 1)
    {
      sub_16F70(v242, &unk_137460, &unk_108C60);
      goto LABEL_64;
    }

    v288 = v526;
    (*(v243 + 32))(v526, v242, v244);
    v289 = v525;
    (*(v243 + 16))(v525, v288, v244);
    v290 = (*(v243 + 88))(v289, v244);
    if (v290 == enum case for ConfirmationResponse.confirmed(_:))
    {
      sub_104E50();
    }

    else
    {
      if (v290 != enum case for ConfirmationResponse.rejected(_:))
      {
        v332 = *(v243 + 8);
        v332(v288, v244);
        v332(v289, v244);
LABEL_64:
        v245 = sub_1053B0();
        if (v245)
        {
          v246 = v245;
          v247 = v520;
          v248 = v519;
          v249 = v521;
          (*(v520 + 104))(v519, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v521);
          v250 = sub_106590();
          v252 = v251;
          (*(v247 + 8))(v248, v249);
          sub_2B430(v250, v252, v246, &v582);

          if (!v583)
          {
            v257 = &qword_137490;
            v258 = qword_108C80;
            v259 = &v582;
LABEL_120:
            sub_16F70(v259, v257, v258);
            goto LABEL_121;
          }

          if (swift_dynamicCast())
          {
            v254 = v580;
            v253 = v581;

            sub_106420();
            v255 = v515;
            v256 = v516;
            if ((*(v515 + 48))(v184, 1, v516) != 1)
            {
              (*(v255 + 32))(v509, v184, v256);

              v350 = sub_106D10();
              v351 = sub_106FC0();

              if (os_log_type_enabled(v350, v351))
              {
                v352 = swift_slowAlloc();
                v353 = swift_slowAlloc();
                *&v582 = v353;
                *v352 = 136315138;
                v354 = sub_722E8(v254, v253, &v582);

                *(v352 + 4) = v354;
                _os_log_impl(&dword_0, v350, v351, "Received confirmation directInvocation, buttonPressed: %s", v352, 0xCu);
                sub_2738(v353);
              }

              else
              {
              }

              v370 = v515;
              v371 = v506;
              v372 = v516;
              (*(v515 + 104))(v506, enum case for ButtonOption.yes(_:), v516);
              v373 = v509;
              v374 = sub_34350();
              v375 = *(v370 + 8);
              v375(v371, v372);
              v376 = (v539 + 8);
              if (v374)
              {
                sub_104E50();
              }

              else
              {
                sub_104E40();
              }

              v375(v373, v372);
              (*v376)(v240, v241);
              return;
            }

            v257 = &unk_1383C0;
            v258 = &qword_107DF0;
            v259 = v184;
            goto LABEL_120;
          }
        }

LABEL_121:
        v323 = sub_106D10();
        v324 = sub_106FC0();
        if (os_log_type_enabled(v323, v324))
        {
          v325 = swift_slowAlloc();
          *v325 = 0;
          _os_log_impl(&dword_0, v323, v324, "Request was not cancelled by user. Proceed.", v325, 2u);
        }

        sub_104E50();
        goto LABEL_124;
      }

      sub_104E40();
    }

    (*(v243 + 8))(v288, v244);
LABEL_124:
    (*(v539 + 8))(v240, v241);
    return;
  }

  if (v189 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v187 + 96))(v186, v188);
    v274 = *v186;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v275 = sub_106D10();
      v276 = sub_106FC0();
      if (os_log_type_enabled(v275, v276))
      {
        v277 = swift_slowAlloc();
        *v277 = 0;
        _os_log_impl(&dword_0, v275, v276, "User cancelled the task.", v277, 2u);
      }

      sub_104E40();
      goto LABEL_84;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v346 = v502;
      sub_14994(v577, v502, &unk_1374C0, &unk_1087B0);
      if (v564(v346, 1, v151) == 1)
      {
        sub_16F70(v346, &unk_1374C0, &unk_1087B0);
        v347 = sub_106D10();
        v348 = sub_106FC0();
        if (os_log_type_enabled(v347, v348))
        {
          v349 = swift_slowAlloc();
          *v349 = 0;
          _os_log_impl(&dword_0, v347, v348, "User returned accepted for non-prompt input. Ignoring.", v349, 2u);
        }

        goto LABEL_215;
      }

      v378 = v576;
      v282 = v496;
      (*(v576 + 32))(v496, v346, v151);
      v379 = v495;
      (*(v378 + 16))(v495, v282, v151);
      v380 = (*(v378 + 88))(v379, v151);
      if (v380 != v482)
      {
        if (v380 == enum case for DecideAction.PromptExpectation.slot(_:))
        {
          v381 = sub_106D10();
          v382 = sub_106FC0();
          if (os_log_type_enabled(v381, v382))
          {
            v383 = swift_slowAlloc();
            *v383 = 0;
            _os_log_impl(&dword_0, v381, v382, "User returned accepted for non-binary input. Ignoring.", v383, 2u);
          }

          sub_104E60();
LABEL_193:
          swift_unknownObjectRelease();
          goto LABEL_118;
        }

        if (v380 != v481)
        {
          goto LABEL_223;
        }
      }

      v426 = sub_106D10();
      v427 = sub_106FC0();
      if (os_log_type_enabled(v426, v427))
      {
        v428 = swift_slowAlloc();
        *v428 = 0;
        _os_log_impl(&dword_0, v426, v427, "User accepted the task, will handle.", v428, 2u);
      }

      sub_104E50();
      goto LABEL_193;
    }

    if ((v507 & 1) == 0)
    {
LABEL_208:
      v450 = v538;
      sub_105360();
      v451 = sub_579C(v450, v537);
      (*(v552 + 8))(v450, v553);
      if (!v451 || (sub_106840(), v452 = swift_dynamicCastClass(), v451, !v452))
      {
        v461 = v513;
        v462 = v489;
        v463 = v514;
        (*(v513 + 16))(v489, v579, v514);
        v464 = sub_106D10();
        v465 = sub_106FB0();
        if (os_log_type_enabled(v464, v465))
        {
          v466 = swift_slowAlloc();
          *&v582 = swift_slowAlloc();
          *v466 = 136315394;
          *(v466 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC20, &v582);
          *(v466 + 12) = 2080;
          sub_4CD70(&unk_1374D0, 255, &type metadata accessor for Input);
          v467 = sub_107340();
          v468 = v462;
          v470 = v469;
          (*(v461 + 8))(v468, v463);
          v471 = sub_722E8(v467, v470, &v582);

          *(v466 + 14) = v471;
          _os_log_impl(&dword_0, v464, v465, "Intent from parse does not match IntentType. Expected %s, received %s", v466, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v461 + 8))(v462, v463);
        }

LABEL_215:
        sub_104E60();
LABEL_84:
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRetain();
      v453 = sub_106D10();
      v454 = sub_106FC0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v453, v454))
      {
        v455 = swift_slowAlloc();
        v456 = swift_slowAlloc();
        *&v582 = v456;
        *v455 = 136315138;
        v580 = v274;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v457 = sub_106E30();
        v459 = sub_722E8(v457, v458, &v582);

        *(v455 + 4) = v459;
        v460 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_219:
        _os_log_impl(&dword_0, v453, v454, v460, v455, 0xCu);
        sub_2738(v456);

        goto LABEL_220;
      }

      goto LABEL_220;
    }

    swift_getObjectType();
    if (sub_107000())
    {
      sub_274CC(v185);

      v377 = 0;
    }

    else
    {
      v377 = 1;
    }

    v439 = v500;
    v440 = v503;
    v441 = *(v503 + 56);
    v441(v185, v377, 1, v500);
    v442 = v497;
    (*(v440 + 104))(v497, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v439);
    v441(v442, 0, 1, v439);
    v443 = *(v499 + 48);
    v444 = v185;
    v445 = v491;
    sub_14994(v444, v491, &unk_1374A0, &qword_10BB30);
    sub_14994(v442, v445 + v443, &unk_1374A0, &qword_10BB30);
    v446 = *(v440 + 48);
    if (v446(v445, 1, v439) == 1)
    {
      sub_16F70(v497, &unk_1374A0, &qword_10BB30);
      sub_16F70(v551, &unk_1374A0, &qword_10BB30);
      v447 = v446(v445 + v443, 1, v439) == 1;
      v448 = v445;
      if (!v447)
      {
        goto LABEL_207;
      }

      sub_16F70(v445, &unk_1374A0, &qword_10BB30);
    }

    else
    {
      v449 = v484;
      sub_14994(v445, v484, &unk_1374A0, &qword_10BB30);
      if (v446(v445 + v443, 1, v439) == 1)
      {
        sub_16F70(v497, &unk_1374A0, &qword_10BB30);
        sub_16F70(v551, &unk_1374A0, &qword_10BB30);
        (*(v503 + 8))(v449, v439);
        v448 = v491;
LABEL_207:
        sub_16F70(v448, &qword_137498, &unk_108C50);
        goto LABEL_208;
      }

      v472 = v503;
      v473 = v491;
      v474 = v486;
      (*(v503 + 32))(v486, v491 + v443, v439);
      sub_4CD70(&qword_138400, 255, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
      v475 = sub_106E00();
      v476 = *(v472 + 8);
      v476(v474, v439);
      sub_16F70(v497, &unk_1374A0, &qword_10BB30);
      sub_16F70(v551, &unk_1374A0, &qword_10BB30);
      v476(v449, v439);
      sub_16F70(v473, &unk_1374A0, &qword_10BB30);
      if ((v475 & 1) == 0)
      {
        goto LABEL_208;
      }
    }

    swift_unknownObjectRetain();
    v453 = sub_106D10();
    v454 = sub_106FC0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v453, v454))
    {
      v455 = swift_slowAlloc();
      v456 = swift_slowAlloc();
      *&v582 = v456;
      *v455 = 136315138;
      v580 = v274;
      swift_unknownObjectRetain();
      sub_25E4(&unk_137470, &unk_10BC40);
      v477 = sub_106E30();
      v479 = sub_722E8(v477, v478, &v582);

      *(v455 + 4) = v479;
      v460 = "decideActionForInput decide handle disambiguation userDialogAct: %s";
      goto LABEL_219;
    }

LABEL_220:

    sub_104E50();
    goto LABEL_84;
  }

  if (v189 != enum case for Parse.uso(_:))
  {
    if (v189 == enum case for Parse.ifClientAction(_:))
    {
      v308 = *(v187 + 8);
      v308(v186, v188);
      v309 = v538;
      sub_105360();
      v310 = sub_579C(v309, v537);
      v308(v309, v188);
      v311 = v310;
      v312 = sub_106D10();
      v313 = sub_106FC0();

      if (os_log_type_enabled(v312, v313))
      {
        v314 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        *&v582 = v315;
        *v314 = 136315138;
        v580 = v310;
        v316 = v311;
        sub_25E4(&unk_1383F0, &qword_107E08);
        v317 = sub_106E30();
        v319 = sub_722E8(v317, v318, &v582);

        *(v314 + 4) = v319;
        _os_log_impl(&dword_0, v312, v313, "Handling ifClientAction for intent: %s", v314, 0xCu);
        sub_2738(v315);
      }

      sub_104E50();
    }

    else
    {
      v333 = v513;
      v334 = v510;
      v335 = v514;
      (*(v513 + 16))(v510, v579, v514);
      v336 = sub_106D10();
      v337 = sub_106FB0();
      if (os_log_type_enabled(v336, v337))
      {
        v338 = v334;
        v339 = swift_slowAlloc();
        v340 = swift_slowAlloc();
        *&v582 = v340;
        *v339 = 136315138;
        sub_105360();
        v341 = v553;
        v342 = sub_106E30();
        v344 = v343;
        (*(v333 + 8))(v338, v335);
        v345 = sub_722E8(v342, v344, &v582);

        *(v339 + 4) = v345;
        _os_log_impl(&dword_0, v336, v337, "Received an unsupported parse: %s", v339, 0xCu);
        sub_2738(v340);
      }

      else
      {

        (*(v333 + 8))(v334, v335);
        v341 = v553;
      }

      sub_104E60();
      (*(v552 + 8))(v549, v341);
    }

    return;
  }

  (*(v187 + 96))(v186, v188);
  (*(v524 + 32))(v528, v186, v523);
  v291 = v517;
  sub_105400();
  v292 = sub_105450();
  v293 = *(v527 + 8);
  v527 += 8;
  v293(v291, v522);
  v294 = 0;
  v295 = *(v292 + 16);
  v296 = (v545 + 8);
  v297 = v518;
  v298 = v545;
  while (v295 != v294)
  {
    if (v294 >= *(v292 + 16))
    {
      __break(1u);
LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    v299 = v542;
    (*(v298 + 16))(v542, v292 + ((*(v298 + 80) + 32) & ~*(v298 + 80)) + *(v298 + 72) * v294++, v297);
    v300 = sub_1054C0();
    (*(v298 + 8))(v299, v297);
    if (v300)
    {

      v301 = v508;
      sub_14994(v577, v508, &unk_1374C0, &unk_1087B0);
      v302 = v578;
      if (v564(v301, 1, v578) == 1)
      {
        sub_16F70(v301, &unk_1374C0, &unk_1087B0);
        v303 = sub_106D10();
        v304 = sub_106FC0();
        v305 = os_log_type_enabled(v303, v304);
        v306 = v524;
        if (v305)
        {
          v307 = swift_slowAlloc();
          *v307 = 0;
          _os_log_impl(&dword_0, v303, v304, "User returned accepted for non-prompt input. Ignoring.", v307, 2u);
        }

        sub_104E60();
        goto LABEL_173;
      }

      v355 = v576;
      v356 = v505;
      (*(v576 + 32))(v505, v301, v302);
      v357 = v504;
      (*(v355 + 16))(v504, v356, v302);
      v358 = (*(v355 + 88))(v357, v302);
      v306 = v524;
      if (v358 == v482)
      {
        goto LABEL_169;
      }

      if (v358 == enum case for DecideAction.PromptExpectation.slot(_:))
      {
        v359 = sub_106D10();
        v360 = sub_106FC0();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          *v361 = 0;
          _os_log_impl(&dword_0, v359, v360, "User returned accepted for non-binary input. Ignoring.", v361, 2u);
        }

        sub_104E60();
LABEL_172:
        (*(v576 + 8))(v356, v302);
LABEL_173:
        (*(v306 + 8))(v528, v523);
        return;
      }

      if (v358 == v481)
      {
LABEL_169:
        v384 = sub_106D10();
        v385 = sub_106FC0();
        if (os_log_type_enabled(v384, v385))
        {
          v386 = swift_slowAlloc();
          *v386 = 0;
          _os_log_impl(&dword_0, v384, v385, "User accepted the task, will handle.", v386, 2u);
        }

        sub_104E50();
        goto LABEL_172;
      }

LABEL_224:
      sub_107360();
      __break(1u);
      return;
    }
  }

  v326 = v511;
  sub_105400();
  v327 = sub_105450();
  v293(v326, v522);
  v328 = 0;
  v329 = *(v327 + 16);
  v330 = v512;
  while (1)
  {
    if (v329 == v328)
    {

      if (v507)
      {
        v362 = v493;
        sub_105400();
        v363 = sub_105440();
        v293(v362, v522);
        if (v363)
        {
          v364 = v494;
          sub_274CC(v494);

          v365 = 0;
          v366 = v499;
        }

        else
        {
          v365 = 1;
          v366 = v499;
          v364 = v494;
        }

        v387 = v503;
        v388 = *(v503 + 56);
        v389 = v500;
        v388(v364, v365, 1, v500);
        v390 = v498;
        (*(v387 + 104))(v498, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v389);
        v388(v390, 0, 1, v389);
        v391 = *(v366 + 48);
        v392 = v501;
        sub_14994(v364, v501, &unk_1374A0, &qword_10BB30);
        v393 = v392;
        sub_14994(v390, v392 + v391, &unk_1374A0, &qword_10BB30);
        v394 = *(v387 + 48);
        if (v394(v393, 1, v389) == 1)
        {
          sub_16F70(v390, &unk_1374A0, &qword_10BB30);
          v395 = v501;
          sub_16F70(v364, &unk_1374A0, &qword_10BB30);
          if (v394(v395 + v391, 1, v389) == 1)
          {
            sub_16F70(v395, &unk_1374A0, &qword_10BB30);
            goto LABEL_195;
          }

          goto LABEL_180;
        }

        v396 = v487;
        sub_14994(v393, v487, &unk_1374A0, &qword_10BB30);
        if (v394(v393 + v391, 1, v389) == 1)
        {
          sub_16F70(v498, &unk_1374A0, &qword_10BB30);
          v395 = v501;
          sub_16F70(v364, &unk_1374A0, &qword_10BB30);
          (*(v503 + 8))(v396, v389);
LABEL_180:
          sub_16F70(v395, &qword_137498, &unk_108C50);
          goto LABEL_181;
        }

        v429 = v503;
        v430 = v393 + v391;
        v431 = v486;
        (*(v503 + 32))(v486, v430, v389);
        sub_4CD70(&qword_138400, 255, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
        v432 = sub_106E00();
        v433 = *(v429 + 8);
        v433(v431, v389);
        sub_16F70(v498, &unk_1374A0, &qword_10BB30);
        sub_16F70(v364, &unk_1374A0, &qword_10BB30);
        v433(v396, v389);
        sub_16F70(v393, &unk_1374A0, &qword_10BB30);
        if (v432)
        {
LABEL_195:
          v400 = v524;
          v434 = *(v524 + 16);
          v402 = v485;
          v403 = v523;
          v434(v485, v528, v523);
          v404 = sub_106D10();
          v405 = sub_106FC0();
          if (os_log_type_enabled(v404, v405))
          {
            v406 = swift_slowAlloc();
            v407 = swift_slowAlloc();
            *&v582 = v407;
            *v406 = 136315138;
            v434(v488, v402, v403);
            v435 = sub_106E30();
            v437 = v436;
            v411 = *(v400 + 8);
            v411(v402, v403);
            v438 = sub_722E8(v435, v437, &v582);

            *(v406 + 4) = v438;
            v413 = "decideActionForInput decide handle disambiguation UsoParse: %s";
            goto LABEL_197;
          }

          goto LABEL_198;
        }
      }

LABEL_181:
      v397 = v538;
      sub_105360();
      v398 = sub_579C(v397, v537);
      (*(v552 + 8))(v397, v553);
      if (!v398 || (sub_106840(), v399 = swift_dynamicCastClass(), v398, !v399))
      {
        v414 = v513;
        v415 = v492;
        v416 = v514;
        (*(v513 + 16))(v492, v579, v514);
        v417 = sub_106D10();
        v418 = sub_106FB0();
        if (os_log_type_enabled(v417, v418))
        {
          v419 = v415;
          v420 = swift_slowAlloc();
          *&v582 = swift_slowAlloc();
          *v420 = 136315394;
          *(v420 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC20, &v582);
          *(v420 + 12) = 2080;
          sub_4CD70(&unk_1374D0, 255, &type metadata accessor for Input);
          v421 = sub_107340();
          v423 = v422;
          (*(v414 + 8))(v419, v416);
          v424 = sub_722E8(v421, v423, &v582);

          *(v420 + 14) = v424;
          _os_log_impl(&dword_0, v417, v418, "Intent from parse does not match IntentType. Expected %s, received %s", v420, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v414 + 8))(v415, v416);
        }

        v425 = v523;
        sub_104E60();
        (*(v524 + 8))(v528, v425);
        return;
      }

      v400 = v524;
      v401 = *(v524 + 16);
      v402 = v490;
      v403 = v523;
      v401(v490, v528, v523);
      v404 = sub_106D10();
      v405 = sub_106FC0();
      if (os_log_type_enabled(v404, v405))
      {
        v406 = swift_slowAlloc();
        v407 = swift_slowAlloc();
        *&v582 = v407;
        *v406 = 136315138;
        v401(v488, v402, v403);
        v408 = sub_106E30();
        v410 = v409;
        v411 = *(v400 + 8);
        v411(v402, v403);
        v412 = sub_722E8(v408, v410, &v582);

        *(v406 + 4) = v412;
        v413 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_197:
        _os_log_impl(&dword_0, v404, v405, v413, v406, 0xCu);
        sub_2738(v407);

LABEL_199:
        sub_104E50();
        v411(v528, v403);
        return;
      }

LABEL_198:

      v411 = *(v400 + 8);
      v411(v402, v403);
      goto LABEL_199;
    }

    if (v328 >= *(v327 + 16))
    {
      goto LABEL_222;
    }

    (*(v545 + 16))(v330, v327 + ((*(v545 + 80) + 32) & ~*(v545 + 80)) + *(v545 + 72) * v328, v297);
    if (sub_1054D0())
    {
      break;
    }

    ++v328;
    v331 = sub_1054E0();
    (*v296)(v330, v297);
    if (v331)
    {
      goto LABEL_152;
    }
  }

  (*v296)(v330, v297);
LABEL_152:

  v367 = sub_106D10();
  v368 = sub_106FC0();
  if (os_log_type_enabled(v367, v368))
  {
    v369 = swift_slowAlloc();
    *v369 = 0;
    _os_log_impl(&dword_0, v367, v368, "User cancelled/rejected the task, will cancel the request.", v369, 2u);
  }

  sub_104E40();
  (*(v524 + 8))(v528, v523);
}