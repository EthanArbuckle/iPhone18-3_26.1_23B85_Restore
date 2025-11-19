uint64_t sub_29D5F3928(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v13 = &type metadata for HeadphoneListeningArticleDataProvider;
      v14 = sub_29D5F4080();
      v2 = sub_29D5F40D4();
    }

    else
    {
      v13 = &type metadata for HearingAidsArticleDataProvider;
      v14 = sub_29D5F3E54();
      v2 = sub_29D5F3EA8();
    }
  }

  else if (a1)
  {
    v13 = &type metadata for AudiogramArticleDataProvider;
    v14 = sub_29D5F4128();
    v2 = sub_29D5F417C();
  }

  else
  {
    v13 = &type metadata for HearingHealthArticleDataProvider;
    v14 = sub_29D5F41D0();
    v2 = sub_29D5F4224();
  }

  v15 = v2;
  sub_29D5F3EFC();
  sub_29D5F3F68();
  if (swift_dynamicCast())
  {
    sub_29D5DBB48(v10, v16);
    v3 = v17;
    v4 = v18;
    sub_29D5E32A8(v16, v17);
    if (qword_2A1A1EA08 != -1)
    {
      swift_once();
    }

    v13 = &type metadata for DeviceConfigurationProvider;
    v14 = &off_2A2431B98;
    v15 = &off_2A2431B88;
    v12[0] = swift_allocObject();
    sub_29D5F4278(&unk_2A1A20BA8, v12[0] + 16);
    v5 = (*(v4 + 8))(v12, v3, v4);
    sub_29D5DF1C4(v12);
    v6 = v16;
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29D5F3FCC(v10);
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v7 = &type metadata for HeadphoneListeningArticleDataProvider;
        v13 = &type metadata for HeadphoneListeningArticleDataProvider;
        v14 = sub_29D5F4080();
        v8 = sub_29D5F40D4();
      }

      else
      {
        v7 = &type metadata for HearingAidsArticleDataProvider;
        v13 = &type metadata for HearingAidsArticleDataProvider;
        v14 = sub_29D5F3E54();
        v8 = sub_29D5F3EA8();
      }
    }

    else if (a1)
    {
      v7 = &type metadata for AudiogramArticleDataProvider;
      v13 = &type metadata for AudiogramArticleDataProvider;
      v14 = sub_29D5F4128();
      v8 = sub_29D5F417C();
    }

    else
    {
      v7 = &type metadata for HearingHealthArticleDataProvider;
      v13 = &type metadata for HearingHealthArticleDataProvider;
      v14 = sub_29D5F41D0();
      v8 = sub_29D5F4224();
    }

    v15 = v8;
    sub_29D5E32A8(v12, v7);
    v5 = sub_29D65E014();
    v6 = v12;
  }

  sub_29D5DF1C4(v6);
  return v5;
}

void sub_29D5F3BB8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v6 = sub_29D5F3E08();
  if (v6 <= 1)
  {
    if (v6)
    {
      *(a3 + 24) = &type metadata for AudiogramArticleDataProvider;
      *(a3 + 32) = sub_29D5F4128();
      v7 = sub_29D5F417C();
    }

    else
    {
      *(a3 + 24) = &type metadata for HearingHealthArticleDataProvider;
      *(a3 + 32) = sub_29D5F41D0();
      v7 = sub_29D5F4224();
    }

    goto LABEL_14;
  }

  if (v6 == 2)
  {
    *(a3 + 24) = &type metadata for HeadphoneListeningArticleDataProvider;
    *(a3 + 32) = sub_29D5F4080();
    v7 = sub_29D5F40D4();
    goto LABEL_14;
  }

  if (v6 == 3)
  {
    *(a3 + 24) = &type metadata for HearingAidsArticleDataProvider;
    *(a3 + 32) = sub_29D5F3E54();
    v7 = sub_29D5F3EA8();
LABEL_14:
    *(a3 + 40) = v7;
    return;
  }

  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v8 = sub_29D65F314();
  sub_29D5DE6EC(v8, qword_2A17AD6F0);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v9 = sub_29D65F2F4();
  v10 = sub_29D6601F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_29D64A1D0(0xD000000000000022, 0x800000029D6622F0, &v13);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29D64A1D0(a1, a2, &v13);
    _os_log_impl(&dword_29D5D7000, v9, v10, "[%{public}s] Article identifier %{public}s could not be found", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v12, -1, -1);
    MEMORY[0x29ED63350](v11, -1, -1);
  }

  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
}

uint64_t sub_29D5F3E08()
{
  v0 = sub_29D660634();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_29D5F3E54()
{
  result = qword_2A1A1E528;
  if (!qword_2A1A1E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E528);
  }

  return result;
}

unint64_t sub_29D5F3EA8()
{
  result = qword_2A1A1E520;
  if (!qword_2A1A1E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E520);
  }

  return result;
}

unint64_t sub_29D5F3EFC()
{
  result = qword_2A1A1EA90;
  if (!qword_2A1A1EA90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A1EA90);
  }

  return result;
}

unint64_t sub_29D5F3F68()
{
  result = qword_2A17AC478;
  if (!qword_2A17AC478)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC478);
  }

  return result;
}

uint64_t sub_29D5F3FCC(uint64_t a1)
{
  sub_29D5F4028();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D5F4028()
{
  if (!qword_2A17AC480)
  {
    sub_29D5F3F68();
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC480);
    }
  }
}

unint64_t sub_29D5F4080()
{
  result = qword_2A1A1EA78;
  if (!qword_2A1A1EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1EA78);
  }

  return result;
}

unint64_t sub_29D5F40D4()
{
  result = qword_2A1A1EA70;
  if (!qword_2A1A1EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1EA70);
  }

  return result;
}

unint64_t sub_29D5F4128()
{
  result = qword_2A1A1EA88;
  if (!qword_2A1A1EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1EA88);
  }

  return result;
}

unint64_t sub_29D5F417C()
{
  result = qword_2A1A1EA80;
  if (!qword_2A1A1EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1EA80);
  }

  return result;
}

unint64_t sub_29D5F41D0()
{
  result = qword_2A1A1EAD8;
  if (!qword_2A1A1EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1EAD8);
  }

  return result;
}

unint64_t sub_29D5F4224()
{
  result = qword_2A1A1EAD0;
  if (!qword_2A1A1EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1EAD0);
  }

  return result;
}

uint64_t sub_29D5F42E4(uint64_t a1, unint64_t a2)
{
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v4 = sub_29D5F3E08();
  if (v4 != 4)
  {
    return sub_29D5F3928(v4);
  }

  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v5 = sub_29D65F314();
  sub_29D5DE6EC(v5, qword_2A17AD6F0);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v6 = sub_29D65F2F4();
  v7 = sub_29D6601F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_29D64A1D0(0xD000000000000022, 0x800000029D6622F0, &v11);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_29D64A1D0(a1, a2, &v11);
    _os_log_impl(&dword_29D5D7000, v6, v7, "[%{public}s] Article identifier %{public}s could not be found", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v9, -1, -1);
    MEMORY[0x29ED63350](v8, -1, -1);
  }

  return 0;
}

uint64_t sub_29D5F4494()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin27HearingAppPluginAppDelegate____lazy_storage___articleIdentifiersByUrl);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin27HearingAppPluginAppDelegate____lazy_storage___articleIdentifiersByUrl);
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    return v1;
  }

  v28 = OBJC_IVAR____TtC16HearingAppPlugin27HearingAppPluginAppDelegate____lazy_storage___articleIdentifiersByUrl;
  v1 = sub_29D5E2204(MEMORY[0x29EDCA190]);
  v3 = 0;
  while (1)
  {
    v5 = byte_2A2431260[v3++ + 32];
    v6 = 0xD000000000000022;
    if (v5 == 2)
    {
      v6 = 0xD000000000000016;
    }

    v7 = "oreThanYourHearing";
    if (v5 != 2)
    {
      v7 = "nAppDelegate.swift";
    }

    v8 = 0xD000000000000018;
    if (!v5)
    {
      v8 = 0xD000000000000017;
    }

    v9 = "UnderstandingHearingLoss";
    if (v5)
    {
      v9 = "SafeHeadphoneListening";
    }

    v10 = v5 <= 1 ? v8 : v6;
    v11 = v5 <= 1 ? v9 : v7;
    v12 = v11 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_29D5E1AF8(v10, v12);
    v16 = v1[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v1[3] >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v25 = v14;
      sub_29D62BAAC();
      v14 = v25;
      if (v20)
      {
        goto LABEL_4;
      }

LABEL_25:
      v1[(v14 >> 6) + 8] |= 1 << v14;
      v22 = (v1[6] + 16 * v14);
      *v22 = v10;
      v22[1] = v12;
      *(v1[7] + v14) = v5;
      v23 = v1[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_33;
      }

      v1[2] = v24;
      if (v3 == 4)
      {
LABEL_30:
        v26 = *(v0 + v28);
        *(v0 + v28) = v1;

        return v1;
      }
    }

    else
    {
      sub_29D62B4FC(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_29D5E1AF8(v10, v12);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_34;
      }

LABEL_24:
      if ((v20 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_4:
      v4 = v14;

      *(v1[7] + v4) = v5;
      if (v3 == 4)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_29D6606C4();
  __break(1u);
  return result;
}

void sub_29D5F47B8(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  ObjectType = swift_getObjectType();
  sub_29D5F6418(0, &qword_2A17AC4C8, MEMORY[0x29EDB9940]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v53 - v7;
  v9 = sub_29D65D9E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D65DAF4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v16 + 16);
  v59 = a1;
  v21(v20, a1, v15);
  v57 = v2;
  v22 = sub_29D65F2F4();
  v23 = sub_29D660214();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v54 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v55 = v9;
    v27 = v26;
    v60 = v26;
    *v25 = 136446466;
    v28 = sub_29D6607A4();
    v30 = sub_29D64A1D0(v28, v29, &v60);
    ObjectType = v10;
    v31 = v30;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2082;
    sub_29D5F6548(&qword_2A17AC298, MEMORY[0x29EDB9B18]);
    v32 = sub_29D660674();
    v34 = v33;
    (*(v16 + 8))(v20, v15);
    v35 = sub_29D64A1D0(v32, v34, &v60);
    v10 = ObjectType;

    *(v25 + 14) = v35;
    _os_log_impl(&dword_29D5D7000, v22, v23, "[%{public}s] Received request to open URL: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v36 = v27;
    v9 = v55;
    MEMORY[0x29ED63350](v36, -1, -1);
    v37 = v25;
    v14 = v54;
    MEMORY[0x29ED63350](v37, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v20, v15);
  }

  sub_29D65D9C4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_29D5F64EC(v8, &qword_2A17AC4C8, MEMORY[0x29EDB9940]);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    sub_29D65D9D4();
    v38 = sub_29D65FF24();

    v39 = [v38 pathComponents];

    v40 = v14;
    v41 = sub_29D660034();

    v42 = sub_29D5F4D84(v41);
    if (v42 == 4)
    {
      v43 = *MEMORY[0x29EDBA6E0];
      v44 = sub_29D65EA04();
      v45 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v43 healthStore:v44 currentCountryCode:0];

      v46 = v45;
      LOBYTE(v44) = sub_29D5F5CA0(v41);

      if (v44)
      {
        v47 = sub_29D65EA14();
        sub_29D65DD04();
        v48 = v10;
        v49 = sub_29D65EA04();
        sub_29D65DD34();
        v50 = sub_29D65DD24();
        v51 = sub_29D65DCF4();

        [v47 presentViewController:v51 animated:1 completion:0];
        (*(v48 + 8))(v40, v9);
      }

      else
      {
        (*(v10 + 8))(v40, v9);
      }
    }

    else
    {
      v52 = v42;

      sub_29D5F4F9C(v52);
      (*(v10 + 8))(v40, v9);
    }
  }
}

uint64_t sub_29D5F4D84(void *a1)
{
  swift_getObjectType();
  if (a1[2] == 2)
  {
    v2 = a1[4] == 47 && a1[5] == 0xE100000000000000;
    if (v2 || (sub_29D660694() & 1) != 0)
    {
      v4 = a1[6];
      v3 = a1[7];
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      v5 = sub_29D5F4494();
      if (*(v5 + 16))
      {
        v6 = sub_29D5E1AF8(v4, v3);
        v8 = v7;

        if (v8)
        {
          v9 = *(*(v5 + 56) + v6);

          return v9;
        }
      }

      else
      {
      }
    }
  }

  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v11 = sub_29D65F2F4();
  v12 = sub_29D6601F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446466;
    v15 = sub_29D6607A4();
    v17 = sub_29D64A1D0(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = MEMORY[0x29ED623E0](a1, MEMORY[0x29EDC99B0]);
    v20 = sub_29D64A1D0(v18, v19, &v21);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_29D5D7000, v11, v12, "[[%{public}s] Received request for invalid article: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v14, -1, -1);
    MEMORY[0x29ED63350](v13, -1, -1);
  }

  return 4;
}

void sub_29D5F4F9C(unsigned __int8 a1)
{
  v2 = sub_29D65EC74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v8 = &type metadata for HeadphoneListeningArticleDataProvider;
      v37 = &type metadata for HeadphoneListeningArticleDataProvider;
      v38 = sub_29D5F4080();
      v9 = sub_29D5F40D4();
    }

    else
    {
      v8 = &type metadata for HearingAidsArticleDataProvider;
      v37 = &type metadata for HearingAidsArticleDataProvider;
      v38 = sub_29D5F3E54();
      v9 = sub_29D5F3EA8();
    }
  }

  else if (a1)
  {
    v8 = &type metadata for AudiogramArticleDataProvider;
    v37 = &type metadata for AudiogramArticleDataProvider;
    v38 = sub_29D5F4128();
    v9 = sub_29D5F417C();
  }

  else
  {
    v8 = &type metadata for HearingHealthArticleDataProvider;
    v37 = &type metadata for HearingHealthArticleDataProvider;
    v38 = sub_29D5F41D0();
    v9 = sub_29D5F4224();
  }

  v39 = v9;
  sub_29D5E32A8(v36, v8);
  sub_29D65E024();
  sub_29D5DF1C4(v36);
  sub_29D5F3928(a1);
  v10 = objc_allocWithZone(sub_29D65E004());
  v11 = sub_29D65DFF4();
  v12 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  v13 = sub_29D65EA14();
  v14 = [v13 navigationController];

  if (!v14)
  {
    v14 = sub_29D65EA14();
    [v14 presentViewController:v12 animated:0 completion:0];
LABEL_25:

    return;
  }

  v34 = v14;
  if (a1 == 2)
  {
  }

  else
  {
    v15 = sub_29D660694();

    v14 = v34;
    if ((v15 & 1) == 0)
    {
LABEL_24:
      [v14 presentViewController:v12 animated:0 completion:0];
      goto LABEL_25;
    }
  }

  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  v16 = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  sub_29D65E9F4();
  v31 = v16;
  v17 = sub_29D5E26B0(v16, v7);
  (*(v3 + 8))(v7, v2);
  v18 = [v14 viewControllers];
  v19 = sub_29D5DF448(0, &qword_2A17AC4B8, 0x29EDC7DA8);
  v20 = sub_29D660034();

  if (v20 >> 62)
  {
    v21 = sub_29D6604B4();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v12;
  v33 = v11;
  v30[1] = v19;
  if (!v21)
  {

    v23 = 0;
LABEL_22:
    v35[4] = v23;
    v35[5] = v17;
    v36[0] = MEMORY[0x29EDCA190];
    v30[0] = v17;
    v24 = 0;
    do
    {
      while (1)
      {
        v27 = v35[v24 + 4];
        sub_29D6600C4();
        v28 = v27;
        sub_29D6600B4();
        sub_29D6600A4();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        ++v24;
        if (v27)
        {
          break;
        }

        if (v24 == 2)
        {
          goto LABEL_23;
        }
      }

      MEMORY[0x29ED623B0](v26);
      if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();
    }

    while (v24 != 2);
LABEL_23:
    sub_29D5F6484();
    swift_arrayDestroy();
    v25 = sub_29D660024();

    v14 = v34;
    [v34 setViewControllers:v25 animated:0];

    v12 = v32;
    v11 = v33;
    goto LABEL_24;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x29ED62900](0, v20);
    goto LABEL_20;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v20 + 32);
LABEL_20:
    v23 = v22;

    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_29D5F5530(void *a1, uint64_t a2)
{
  sub_29D5F6418(0, &qword_2A17AC4A8, MEMORY[0x29EDC2B18]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v36 = v35 - v7;
  v8 = sub_29D65EC74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D65EC84();
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65EBC4();
  sub_29D65EB34();
  v19 = *(v9 + 16);
  v35[1] = a2;
  v19(v13, a2, v8);
  v20 = objc_allocWithZone(sub_29D65F0C4());
  v21 = a1;
  v22 = sub_29D65F0B4();
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = v37;
    v26 = v14;
    v27 = v21;
    v28 = sub_29D5F58CC(v24, &v38);
    if (v39)
    {
      sub_29D5F646C(&v38, v40);
      v29 = v22;
      v30 = [v27 identifier];
      sub_29D65FF64();

      v31 = sub_29D65EC54();
      v32 = v36;
      sub_29D65F084();

      v22 = v29;
      v33 = sub_29D65F094();
      (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
      sub_29D65F0A4();

      sub_29D5DF1C4(v40);
      (*(v25 + 8))(v18, v26);
    }

    else
    {
      (*(v25 + 8))(v18, v14, v28);

      sub_29D5F64EC(&v38, &qword_2A17AC4B0, sub_29D5F3EFC);
    }
  }

  else
  {
    (*(v37 + 8))(v18, v14);
  }

  return v22;
}

double sub_29D5F58CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  if (!v3)
  {
    sub_29D65FF64();
    v3 = sub_29D65FF24();
  }

  v4 = *MEMORY[0x29EDBA8E0];
  v5 = sub_29D65FF64();
  v7 = v6;
  if (v5 == sub_29D65FF64() && v7 == v8)
  {

    goto LABEL_10;
  }

  v10 = sub_29D660694();
  v11 = v3;

  if (v10)
  {

LABEL_10:
    *(a2 + 24) = &type metadata for HearingHealthArticleDataProvider;
    *(a2 + 32) = sub_29D5F41D0();
    v12 = sub_29D5F4224();
LABEL_11:
    *(a2 + 40) = v12;
    return result;
  }

  v14 = *MEMORY[0x29EDBA8F8];
  v15 = sub_29D65FF64();
  v17 = v16;
  v18 = sub_29D65FF64();
  v20 = v19;

  if (v15 == v18 && v17 == v20)
  {

    goto LABEL_19;
  }

  v22 = sub_29D660694();

  if (v22)
  {
LABEL_19:
    *(a2 + 24) = &type metadata for HeadphoneListeningArticleDataProvider;
    *(a2 + 32) = sub_29D5F4080();
    v12 = sub_29D5F40D4();
    goto LABEL_11;
  }

  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

id sub_29D5F5A80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingAppPluginAppDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HearingAppPluginAppDelegate()
{
  result = qword_2A17AC490;
  if (!qword_2A17AC490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5F5B88()
{
  result = sub_29D65F314();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_29D5F5C68()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_29D5F5CA0(void *a1)
{
  swift_getObjectType();
  v2 = sub_29D65F314();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v5 = sub_29D65F254();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[2] == 2 && (a1[4] == 47 && a1[5] == 0xE100000000000000 || (sub_29D660694() & 1) != 0) && (a1[6] == 0x54676E6972616548 && a1[7] == 0xEB00000000747365 || (sub_29D660694() & 1) != 0))
  {
    sub_29D5DF448(0, &qword_2A17AC690, 0x29EDBABB0);
    sub_29D65F274();
    v21 = *MEMORY[0x29EDBA5A0];
    v22 = sub_29D65F264();
    v23 = [v22 areAllRequirementsSatisfied];

    (*(v6 + 8))(v10, v5);
    return v23;
  }

  else
  {
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v11 = sub_29D65F2F4();
    v12 = sub_29D6601F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136446466;
      v15 = sub_29D6607A4();
      v17 = sub_29D64A1D0(v15, v16, &v26);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = MEMORY[0x29ED623E0](a1, MEMORY[0x29EDC99B0]);
      v20 = sub_29D64A1D0(v18, v19, &v26);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_29D5D7000, v11, v12, "[[%{public}s] Cannot open hearing test with path components: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v14, -1, -1);
      MEMORY[0x29ED63350](v13, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_29D5F6170(void *a1, uint64_t a2)
{
  v21 = a2;
  v22 = a1;
  v2 = sub_29D65EC74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65EC84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(type metadata accessor for HeadphoneNotificationsDataDetailConfigurationProvider()) init];
  v15 = *&v14[OBJC_IVAR____TtC16HearingAppPlugin53HeadphoneNotificationsDataDetailConfigurationProvider_dataType];
  sub_29D65EC24();
  sub_29D65EC14();
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_29D65EF74();

  sub_29D5F64EC(v23, &qword_2A17AC0D8, sub_29D5F63B4);
  v16 = v21;
  sub_29D65EB34();
  (*(v3 + 16))(v7, v16, v2);
  v17 = objc_allocWithZone(sub_29D65ED04());
  v18 = v22;
  v19 = sub_29D65ECE4();
  (*(v9 + 8))(v13, v8);
  return v19;
}

unint64_t sub_29D5F63B4()
{
  result = qword_2A17AC0E0;
  if (!qword_2A17AC0E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC0E0);
  }

  return result;
}

void sub_29D5F6418(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660434();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_OWORD *sub_29D5F646C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_29D5F6484()
{
  if (!qword_2A17AC4C0)
  {
    sub_29D5DF448(255, &qword_2A17AC4B8, 0x29EDC7DA8);
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC4C0);
    }
  }
}

uint64_t sub_29D5F64EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D5F6418(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5F6548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D5F6608()
{
  sub_29D660724();
  MEMORY[0x29ED62AD0](0);
  return sub_29D660744();
}

uint64_t sub_29D5F6674()
{
  sub_29D660724();
  MEMORY[0x29ED62AD0](0);
  return sub_29D660744();
}

uint64_t sub_29D5F66D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000029D6667A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29D660694();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29D5F677C(uint64_t a1)
{
  v2 = sub_29D5F8210();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D5F67B8(uint64_t a1)
{
  v2 = sub_29D5F8210();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D5F67F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_29D65E0E4();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5F8264(0, &qword_2A17AC528, MEMORY[0x29EDC9E80]);
  v9 = v8;
  v25 = *(v8 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  sub_29D5E32A8(a1, a1[3]);
  sub_29D5F8210();
  sub_29D660764();
  if (!v2)
  {
    v20 = v25;
    v21 = v26;
    sub_29D5F7F04(&qword_2A17AC530, MEMORY[0x29EDC1770]);
    sub_29D660644();
    (*(v20 + 8))(v13, v9);
    (*(v21 + 32))(v18, v27, v4);
    sub_29D5F7FFC(v18, v24);
  }

  return sub_29D5DF1C4(a1);
}

uint64_t sub_29D5F6AB8(void *a1)
{
  sub_29D5F8264(0, &qword_2A17AC518, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_29D5E32A8(a1, a1[3]);
  sub_29D5F8210();
  sub_29D660774();
  sub_29D65E0E4();
  sub_29D5F7F04(&qword_2A1A1E540, MEMORY[0x29EDC1770]);
  sub_29D660654();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_29D5F6C40()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D65E0D4();
  v147 = *(v1 - 8);
  v148 = v1;
  v2 = *(v147 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v146 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5F7F50(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v144 = &v140 - v8;
  v9 = sub_29D65E314();
  v154 = *(v9 - 8);
  v155 = v9;
  v10 = *(v154 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v151 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v164 = &v140 - v15;
  v160 = sub_29D65E0E4();
  v165 = *(v160 - 8);
  v16 = *(v165 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v160, v17);
  v143 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v156 = &v140 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v157 = &v140 - v25;
  MEMORY[0x2A1C7C4A8](v24, v26);
  v150 = &v140 - v27;
  v28 = sub_29D65F314();
  v162 = *(v28 - 8);
  v163 = v28;
  v29 = *(v162 + 64);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v152 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v145 = &v140 - v35;
  MEMORY[0x2A1C7C4A8](v34, v36);
  v161 = &v140 - v37;
  v38 = sub_29D65EDC4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v38, v41);
  v43 = &v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5F7F50(0, &qword_2A17AC4F0, type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v44 - 8, v46);
  v48 = &v140 - v47;
  v49 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v53 = MEMORY[0x2A1C7C4A8](v49, v52);
  v55 = &v140 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v53, v56);
  v58 = &v140 - v57;
  v159 = v0;
  sub_29D65EF44();
  sub_29D5F7F04(&qword_2A17AC4F8, type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData);
  sub_29D5F7F04(&qword_2A17AC500, type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData);
  sub_29D65EDB4();
  v61 = *(v39 + 8);
  v60 = v39 + 8;
  v59 = v61;
  v153 = v38;
  (v61)(v43, v38);
  if ((*(v50 + 48))(v48, 1, v49) == 1)
  {
    sub_29D5F8120(v48, &qword_2A17AC4F0, type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData);
    v62 = v152;
    sub_29D65F2D4();
    v63 = sub_29D65F2F4();
    v64 = sub_29D660204();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v166[0] = v66;
      *v65 = 136315138;
      v67 = sub_29D6607A4();
      v69 = sub_29D64A1D0(v67, v68, v166);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_29D5D7000, v63, v64, "%s Could not access action handler user data!", v65, 0xCu);
      sub_29D5DF1C4(v66);
      MEMORY[0x29ED63350](v66, -1, -1);
      MEMORY[0x29ED63350](v65, -1, -1);
    }

    return (*(v162 + 8))(v62, v163);
  }

  v142 = v60;
  v152 = v59;
  sub_29D5F7FFC(v48, v58);
  sub_29D65F2E4();
  sub_29D5F8060(v58, v55);
  v71 = sub_29D65F2F4();
  v72 = sub_29D660214();
  v73 = os_log_type_enabled(v71, v72);
  v149 = v58;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v166[0] = v75;
    *v74 = 136315394;
    v76 = sub_29D6607A4();
    v78 = sub_29D64A1D0(v76, v77, v166);

    *(v74 + 4) = v78;
    *(v74 + 12) = 2080;
    v140 = *(v165 + 16);
    v79 = v160;
    v140(v150, v55, v160);
    v80 = sub_29D65FF84();
    v82 = v81;
    sub_29D5F80C4(v55);
    v83 = sub_29D64A1D0(v80, v82, v166);
    v84 = v149;

    *(v74 + 14) = v83;
    _os_log_impl(&dword_29D5D7000, v71, v72, "%s Did select cell with feature status %s", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v75, -1, -1);
    v85 = v74;
    v86 = v140;
    MEMORY[0x29ED63350](v85, -1, -1);

    v141 = *(v162 + 8);
    v141(v161, v163);
  }

  else
  {
    v84 = v58;

    sub_29D5F80C4(v55);
    v141 = *(v162 + 8);
    v141(v161, v163);
    v86 = *(v165 + 16);
    v79 = v160;
  }

  v87 = v157;
  v86(v157, v84, v79);
  v88 = v159;
  sub_29D65EF44();
  v161 = sub_29D65EDA4();
  v89 = v86;
  v91 = v152;
  v90 = v153;
  (v152)(v43, v153);
  sub_29D65EF44();
  sub_29D65E184();
  v92 = v90;
  v93 = v89;
  v91(v43, v92);
  v94 = v156;
  v89(v156, v87, v79);
  v95 = (*(v165 + 88))(v94, v79);
  if (v95 == *MEMORY[0x29EDC1760])
  {
    v96 = *(v88 + qword_2A17AC4D0);
    v97 = v154;
    v98 = v155;
    v99 = v151;
    v100 = v164;
    (*(v154 + 16))(v151, v164, v155);
    v101 = objc_allocWithZone(type metadata accessor for NoiseNotificationsSettingsViewController(0));
    v102 = v96;
    v103 = sub_29D61A8C8(v102, v99, 0);

    v104 = v161;
    v105 = [v161 navigationController];
    if (v105)
    {
      v106 = v105;
      [v105 pushViewController:v103 animated:1];
    }

    else
    {
    }

    (*(v97 + 8))(v100, v98);
    (*(v165 + 8))(v87, v160);
    return sub_29D5F80C4(v149);
  }

  v107 = v164;
  v108 = v155;
  if (v95 == *MEMORY[0x29EDC1768])
  {
    v109 = *(v159 + qword_2A17AC4D0);
    v110 = v164;
    v111 = v154;
    v112 = v79;
    v113 = v151;
    (*(v154 + 16))(v151, v164, v155);
    v114 = objc_allocWithZone(type metadata accessor for NoiseNotificationsSettingsViewController(0));
    v115 = v109;
    v116 = sub_29D61A8C8(v115, v113, 1);

    sub_29D65ED74();
    [v115 setOnboardingCompleted_];
    [v115 setNoiseEnabled_];
    [v115 setNotificationsEnabled_];
    [v115 setNotificationThreshold_];
    v117 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    v118 = v161;
    [v161 presentViewController:v117 animated:1 completion:0];

    (*(v111 + 8))(v110, v108);
    (*(v165 + 8))(v87, v112);
    return sub_29D5F80C4(v149);
  }

  if (v95 == *MEMORY[0x29EDC1758])
  {
    v119 = v146;
    v120 = v147;
    v121 = v148;
    (*(v147 + 104))(v146, *MEMORY[0x29EDC1720], v148);
    sub_29D65E0C4();

    (*(v120 + 8))(v119, v121);
    (*(v154 + 8))(v107, v108);
    (*(v165 + 8))(v87, v79);
    return sub_29D5F80C4(v149);
  }

  v122 = v165;
  if (v95 == *MEMORY[0x29EDC1750])
  {
    v123 = v144;
    sub_29D6004D0(v144);
    v124 = sub_29D65DAF4();
    v125 = *(v124 - 8);
    if ((*(v125 + 48))(v123, 1, v124) == 1)
    {

      (*(v154 + 8))(v164, v108);
      (*(v122 + 8))(v87, v79);
      sub_29D5F80C4(v149);
      return sub_29D5F8120(v123, &qword_2A1A1E558, MEMORY[0x29EDB9B18]);
    }

    else
    {
      sub_29D65DAB4();

      (*(v154 + 8))(v164, v108);
      (*(v122 + 8))(v87, v79);
      sub_29D5F80C4(v149);
      return (*(v125 + 8))(v123, v124);
    }
  }

  else
  {
    v126 = v145;
    sub_29D65F2E4();
    v127 = v79;
    v128 = v143;
    v89(v143, v87, v127);
    v129 = sub_29D65F2F4();
    LODWORD(v159) = sub_29D6601F4();
    if (os_log_type_enabled(v129, v159))
    {
      v130 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v166[0] = v153;
      *v130 = 136315650;
      v131 = sub_29D6607A4();
      v133 = sub_29D64A1D0(v131, v132, v166);

      *(v130 + 4) = v133;
      *(v130 + 12) = 2080;
      *(v130 + 14) = sub_29D64A1D0(0x63656C6553646964, 0xEB00000000292874, v166);
      *(v130 + 22) = 2080;
      v93(v150, v128, v127);
      v134 = sub_29D65FF84();
      v136 = v135;
      v137 = *(v122 + 8);
      v137(v128, v127);
      v138 = sub_29D64A1D0(v134, v136, v166);

      *(v130 + 24) = v138;
      _os_log_impl(&dword_29D5D7000, v129, v159, "%s.%s Unhandled feature status %s", v130, 0x20u);
      v139 = v153;
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v139, -1, -1);
      MEMORY[0x29ED63350](v130, -1, -1);

      v141(v145, v163);
      (*(v154 + 8))(v164, v155);
    }

    else
    {

      v137 = *(v122 + 8);
      v137(v128, v127);
      v141(v126, v163);
      (*(v154 + 8))(v107, v108);
    }

    v137(v157, v127);
    sub_29D5F80C4(v149);
    return (v137)(v156, v127);
  }
}

uint64_t sub_29D5F7CBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D65EDC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v2);
  v11 = qword_2A17AC4D0;
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A20BF8;
  *&v10[v11] = qword_2A1A20BF8;
  (*(v5 + 16))(v9, a1, v4);
  v13 = v12;
  v14 = sub_29D65EF54();
  (*(v5 + 8))(a1, v4);
  return v14;
}

id sub_29D5F7E24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoiseNotificationsFeatureStatusActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D5F7F04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D5F7F50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660434();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D5F7FC4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5F7FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5F8060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5F80C4(uint64_t a1)
{
  v2 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5F8120(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D5F7F50(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5F81A4()
{
  result = sub_29D65E0E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D5F8210()
{
  result = qword_2A17AC520;
  if (!qword_2A17AC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC520);
  }

  return result;
}

void sub_29D5F8264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D5F8210();
    v7 = a3(a1, &type metadata for NoiseNotificationsFeatureStatusActionHandlerData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NoiseNotificationsFeatureStatusActionHandlerData.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NoiseNotificationsFeatureStatusActionHandlerData.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_29D5F83B4()
{
  result = qword_2A17AC538;
  if (!qword_2A17AC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC538);
  }

  return result;
}

unint64_t sub_29D5F840C()
{
  result = qword_2A17AC540;
  if (!qword_2A17AC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC540);
  }

  return result;
}

unint64_t sub_29D5F8464()
{
  result = qword_2A17AC548;
  if (!qword_2A17AC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC548);
  }

  return result;
}

uint64_t PDFHStackWithEqualWidth.render(context:document:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_29D65E344();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v10 = a5;
  if (v9)
  {
    v10 = sub_29D5F8758(a5);
  }

  PDFHStackWithEqualWidth.maximumColumnWidth(in:)(a1, a2, a4, a5);
  PDFHStackWithEqualWidth.boundingRectForContent(in:)(a4, a5, a1, a2);
  result = sub_29D65E3D4();
  v12 = 0;
  v13 = *(v10 + 16);
  v14 = 0.0;
  while (1)
  {
    v15 = 0uLL;
    v16 = v13;
    v17 = 0uLL;
    v18 = 0uLL;
    if (v12 == v13)
    {
      goto LABEL_7;
    }

    if (v12 >= *(v10 + 16))
    {
      break;
    }

    v16 = v12 + 1;
    *&v20 = v12;
    sub_29D5E8E70(v10 + 32 + 40 * v12, &v20 + 8);
    v15 = v20;
    v17 = v21;
    v18 = v22;
LABEL_7:
    v23[0] = v15;
    v23[1] = v17;
    v23[2] = v18;
    if (!v18)
    {

      return sub_29D65E3C4();
    }

    sub_29D5DBB48((v23 + 8), &v20);
    sub_29D65E3E4();
    sub_29D65E354();
    CGRectGetMinX(v24);
    sub_29D65E354();
    CGRectGetMinY(v25);
    sub_29D65E354();
    CGRectGetHeight(v26);
    sub_29D65E364();
    sub_29D5E32A8(&v20, *(&v21 + 1));
    sub_29D65E5B4();
    sub_29D5E32A8(&v20, *(&v21 + 1));
    sub_29D65E5A4();
    Height = CGRectGetHeight(v27);

    if (v14 < Height)
    {
      v14 = Height;
    }

    result = sub_29D5DF1C4(&v20);
    v12 = v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D5F8758(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_29D5E8E70(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_29D5E8E70(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_29D5F9760(v1);
    }

    sub_29D5DF1C4(&v1[i]);
    result = sub_29D5DBB48(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    sub_29D5DF1C4((v1 + v6));
    result = sub_29D5DBB48(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

double PDFHStackWithEqualWidth.maximumColumnWidth(in:)(double a1, double a2, uint64_t a3, uint64_t a4)
{
  sub_29D65E354();
  Width = CGRectGetWidth(v26);
  v8 = *(a4 + 16);
  v9 = (Width - (v8 + -1.0) * a1) / v8;
  if (v8)
  {
    v25 = MEMORY[0x29EDCA190];
    sub_29D5F8ED8(0, v8, 0);
    v10 = v25;
    v11 = a4 + 32;
    do
    {
      sub_29D5E8E70(v11, v24);
      sub_29D5E32A8(v24, v24[3]);
      sub_29D65E5A4();
      v13 = v12;
      sub_29D5DF1C4(v24);
      v25 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_29D5F8ED8((v14 > 1), v15 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v16;
      *(v10 + 8 * v15 + 32) = v13;
      v11 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
    v16 = *(MEMORY[0x29EDCA190] + 16);
    if (!v16)
    {

      return v9;
    }
  }

  v17 = *(v10 + 32);
  v18 = v16 - 1;
  if (v16 != 1)
  {
    v19 = (v10 + 40);
    do
    {
      v20 = *v19++;
      v21 = v20;
      if (v17 < v20)
      {
        v17 = v21;
      }

      --v18;
    }

    while (v18);
  }

  if (v17 > a2)
  {
    v22 = v17;
  }

  else
  {
    v22 = a2;
  }

  if (v22 < v9)
  {
    return v22;
  }

  return v9;
}

void PDFHStackWithEqualWidth.boundingRectForContent(in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_29D65E344();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v9 = a2;
  if (v8)
  {
    v9 = sub_29D5F8758(a2);
  }

  v10 = PDFHStackWithEqualWidth.maximumColumnWidth(in:)(a3, a4, a1, a2);
  v11 = 0;
  v12 = *(v9 + 16);
  v13 = 0.0;
  while (1)
  {
    v14 = 0uLL;
    v15 = v12;
    v16 = 0uLL;
    v17 = 0uLL;
    if (v11 == v12)
    {
      goto LABEL_7;
    }

    if (v11 >= *(v9 + 16))
    {
      break;
    }

    v15 = v11 + 1;
    *&v20 = v11;
    sub_29D5E8E70(v9 + 32 + 40 * v11, &v20 + 8);
    v14 = v20;
    v16 = v21;
    v17 = v22;
LABEL_7:
    v23[0] = v14;
    v23[1] = v16;
    v23[2] = v17;
    if (!v17)
    {

      v19 = v10 * *(a2 + 16) + (*(a2 + 16) + -1.0) * a3;
      sub_29D65E354();
      return;
    }

    sub_29D5DBB48((v23 + 8), &v20);
    sub_29D65E3E4();
    sub_29D65E354();
    CGRectGetMinX(v24);
    sub_29D65E354();
    CGRectGetMinY(v25);
    sub_29D65E354();
    CGRectGetHeight(v26);
    sub_29D65E364();
    sub_29D5E32A8(&v20, *(&v21 + 1));
    sub_29D65E594();
    Height = CGRectGetHeight(v27);

    if (v13 < Height)
    {
      v13 = Height;
    }

    sub_29D5DF1C4(&v20);
    v11 = v15;
  }

  __break(1u);
}

uint64_t PDFHStackWithEqualWidth.documentForColumn(_:columnWidth:in:)()
{
  v0 = sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetMinX(v2);
  sub_29D65E354();
  CGRectGetMinY(v3);
  sub_29D65E354();
  CGRectGetHeight(v4);
  sub_29D65E364();
  return v0;
}

uint64_t sub_29D5F8CCC(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D5F95B8();
  *v4 = v1;
  v4[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29D5F8D78(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

size_t sub_29D5F8E78(size_t a1, int64_t a2, char a3)
{
  result = sub_29D5F932C(a1, a2, a3, *v3, &qword_2A17AC558, type metadata accessor for AudiogramLongitudinalPDFChartData, type metadata accessor for AudiogramLongitudinalPDFChartData);
  *v3 = result;
  return result;
}

char *sub_29D5F8EB8(char *a1, int64_t a2, char a3)
{
  result = sub_29D5F9110(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29D5F8ED8(char *a1, int64_t a2, char a3)
{
  result = sub_29D5F9224(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_29D5F8EFC()
{
  result = qword_2A17AC550;
  if (!qword_2A17AC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC550);
  }

  return result;
}

__n128 sub_29D5F8F50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29D5F8F64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29D5F8FAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for PDFHStackWithEqualWidth.Config(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PDFHStackWithEqualWidth.Config(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PDFHStackWithEqualWidth.Config(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

size_t sub_29D5F9060(size_t a1, int64_t a2, char a3)
{
  result = sub_29D5F932C(a1, a2, a3, *v3, &qword_2A17AC560, type metadata accessor for AudiogramPDFAudiogramChart.Model, type metadata accessor for AudiogramPDFAudiogramChart.Model);
  *v3 = result;
  return result;
}

void *sub_29D5F90A0(void *a1, int64_t a2, char a3)
{
  result = sub_29D5F960C(a1, a2, a3, *v3, &qword_2A17AC330, &qword_2A17AC338);
  *v3 = result;
  return result;
}

void *sub_29D5F90D8(void *a1, int64_t a2, char a3)
{
  result = sub_29D5F960C(a1, a2, a3, *v3, &qword_2A17AC570, &qword_2A17AC578);
  *v3 = result;
  return result;
}

char *sub_29D5F9110(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D5F068C(0, &qword_2A1A1E678);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29D5F9224(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D5F068C(0, &qword_2A17AC580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_29D5F932C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D5F9564(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_29D5F950C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D5DF210(255, a3);
    v4 = sub_29D660684();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D5F9564(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660684();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D5F95B8()
{
  result = qword_2A17AC568;
  if (!qword_2A17AC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC568);
  }

  return result;
}

void *sub_29D5F960C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_29D5F950C(0, a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x29EDCA190];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D5DF210(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for AudiogramLongitudinalPDFChartData()
{
  result = qword_2A17AC588;
  if (!qword_2A17AC588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D5F97EC()
{
  sub_29D5F9870();
  if (v0 <= 0x3F)
  {
    sub_29D65DBC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D5F9870()
{
  if (!qword_2A17AC598)
  {
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC598);
    }
  }
}

uint64_t sub_29D5F98C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2 + *(a1 + 24);
  result = sub_29D65DB04();
  *a2 = v6;
  return result;
}

uint64_t type metadata accessor for HearingTestPromptFeedItemProvider()
{
  result = qword_2A1A1E4F8;
  if (!qword_2A1A1E4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D5F9964()
{
  sub_29D5F99F8();
  if (v0 <= 0x3F)
  {
    sub_29D65DD54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D5F99F8()
{
  if (!qword_2A1A1DDD8)
  {
    sub_29D5F0640();
    sub_29D5F9DC4(&qword_2A1A1E708, sub_29D5F0640);
    v0 = sub_29D660124();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1DDD8);
    }
  }
}

uint64_t sub_29D5F9A8C()
{
  v1 = *v0;
  v2 = v0[1];
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

uint64_t sub_29D5F9AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_29D65DD54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_29D5F9B38(uint64_t a1, uint64_t a2)
{
  sub_29D5F9D2C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5F2A28(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v22 - v17;
  v19 = sub_29D65DEF4();
  sub_29D5EE344(a2, v18);

  sub_29D5F2D70(v18, v15);
  sub_29D65F864();
  sub_29D5F9DC4(&qword_2A1A1DDE8, sub_29D5F9D2C);
  v20 = sub_29D65F934();
  (*(v5 + 8))(v9, v4);
  sub_29D5F9E0C(v18);
  return v20;
}

uint64_t sub_29D5F9CFC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

void sub_29D5F9D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D5F9DC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D5F9E0C(uint64_t a1)
{
  sub_29D5F2A28(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5F9E74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_29D5F9ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_29D5F9F4C()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F074();
  sub_29D660254();
}

uint64_t sub_29D5FA000()
{
  v0 = sub_29D65E9A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65E984();
  v6 = sub_29D65E994();
  (*(v1 + 8))(v5, v0);

  return v6;
}

uint64_t sub_29D5FA170()
{
  sub_29D5FA834(0);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65DC14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65EC64();
  v13 = sub_29D65E6A4();
  v15 = v14;
  if (v13 == sub_29D65E6A4() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_29D660694();

    if ((v17 & 1) == 0)
    {
      v32 = sub_29D65E5F4();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      sub_29D65E5E4();
      sub_29D65E674();

      sub_29D65E644();

      sub_29D5FA89C();
      sub_29D5FAB68(&qword_2A17AC5C8, sub_29D5FA89C);

      sub_29D65E664();
      goto LABEL_7;
    }
  }

  v18 = sub_29D65EC54();
  sub_29D65F074();
  v19 = sub_29D65E564();
  v39 = v6;
  v40 = v1;
  v21 = v20;
  v38 = v7;
  v22 = MEMORY[0x29EDC9E90];
  sub_29D5FAA4C(0, &qword_2A17AC5E0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v23 = *(sub_29D65E904() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  v37 = xmmword_29D661D90;
  *(v26 + 16) = xmmword_29D661D90;
  sub_29D5FAA4C(0, &qword_2A17AC570, sub_29D5FAAB0, v22);
  v27 = swift_allocObject();
  *(v27 + 16) = v37;
  *(v27 + 56) = &type metadata for AudiogramPDFItem;
  *(v27 + 64) = sub_29D5FAB14();
  v28 = swift_allocObject();
  *(v27 + 32) = v28;
  v28[2] = v19;
  v28[3] = v21;
  v41 = v21;
  v28[4] = 0xD000000000000010;
  v28[5] = 0x800000029D6667C0;
  v28[6] = v18;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v29 = v18;
  sub_29D65DC04();
  sub_29D65DBD4();
  (*(v8 + 8))(v12, v38);
  sub_29D65E8F4();
  v42 = v26;
  sub_29D5FA868(0);
  v30 = v39;
  sub_29D65F864();
  sub_29D5FAB68(&unk_2A17AC5F0, sub_29D5FA834);
  v31 = v40;
  sub_29D65F924();
  (*(v2 + 8))(v30, v31);
  sub_29D65ECB4();
  sub_29D65E6B4();

  sub_29D5FA930();
  sub_29D5FAB68(&qword_2A17AC5C0, sub_29D5FA930);
  sub_29D65E6C4();

  sub_29D5FA89C();
  sub_29D5FAB68(&qword_2A17AC5C8, sub_29D5FA89C);
  sub_29D65E674();

  sub_29D65E644();

  sub_29D65E5F4();

  sub_29D65E654();

LABEL_7:

  sub_29D5FA990();
  sub_29D5FAB68(&qword_2A17AC5D8, sub_29D5FA990);

  v35 = sub_29D65E644();

  return v35;
}

void sub_29D5FA89C()
{
  if (!qword_2A17AC5B0)
  {
    sub_29D5FA930();
    sub_29D5FAB68(&qword_2A17AC5C0, sub_29D5FA930);
    v0 = sub_29D65E7F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC5B0);
    }
  }
}

void sub_29D5FA930()
{
  if (!qword_2A17AC5B8)
  {
    sub_29D65ECB4();
    v0 = sub_29D65E5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC5B8);
    }
  }
}

void sub_29D5FA990()
{
  if (!qword_2A17AC5D0)
  {
    sub_29D5FA89C();
    sub_29D65E5F4();
    sub_29D5FAB68(&qword_2A17AC5C8, sub_29D5FA89C);
    v0 = sub_29D65E964();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC5D0);
    }
  }
}

void sub_29D5FAA4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D5FAAB0()
{
  result = qword_2A17AC578;
  if (!qword_2A17AC578)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC578);
  }

  return result;
}

unint64_t sub_29D5FAB14()
{
  result = qword_2A17AC5E8;
  if (!qword_2A17AC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC5E8);
  }

  return result;
}

uint64_t sub_29D5FAB68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AudiogramDataTypeDetailViewController()
{
  result = qword_2A17AC620;
  if (!qword_2A17AC620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5FAC60(uint64_t a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + qword_2A17AC618);
  *v2 = 0;
  v2[1] = 0;
  result = sub_29D660594();
  __break(1u);
  return result;
}

uint64_t sub_29D5FAD30(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3.receiver = a1;
  v3.super_class = type metadata accessor for AudiogramDataTypeDetailViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
}

void sub_29D5FADDC(char a1)
{
  if (sub_29D5FAF2C())
  {
    sub_29D65DD04();
    v3 = *&v1[qword_2A17AC600];
    sub_29D65DD34();
    v4 = sub_29D65DD14();
    type metadata accessor for HearingTestArticleProvider();
    swift_allocObject();
    v5 = sub_29D65DCF4();
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x29EDBFAF0]) initWithDelegate_];
    [v5 setAnalyticsClient_];
    [v5 setHealthStore:*&v1[qword_2A17AC600] unitPreferenceController:*&v1[qword_2A17AC608] initialDate:0];
  }

  [v1 presentViewController:v5 animated:a1 & 1 completion:0];
}

id sub_29D5FAF2C()
{
  swift_getObjectType();
  v1 = sub_29D65F314();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v4 = sub_29D65F254();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + qword_2A17AC610);
  sub_29D5DF448(0, &qword_2A17AC690, 0x29EDBABB0);
  sub_29D65F274();
  v11 = *MEMORY[0x29EDBA5A0];
  v12 = sub_29D65F264();
  (*(v5 + 8))(v9, v4);
  v13 = [v12 areAllRequirementsSatisfied];

  return v13;
}

uint64_t sub_29D5FB2C8()
{
  v1 = *(v0 + qword_2A17AC618);
  v2 = *(v0 + qword_2A17AC618 + 8);

  return sub_29D5FB9C0(v1);
}

id sub_29D5FB32C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramDataTypeDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D5FB364(uint64_t a1)
{
  v2 = *(a1 + qword_2A17AC618);
  v3 = *(a1 + qword_2A17AC618 + 8);

  return sub_29D5FB9C0(v2);
}

void sub_29D5FB3DC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + qword_2A17AC618);
  v6 = *(v3 + qword_2A17AC618);
  v7 = *(v3 + qword_2A17AC618 + 8);
  *v5 = a2;
  v5[1] = a3;

  sub_29D5FB9C0(v6);
  v8 = [objc_allocWithZone(MEMORY[0x29EDBFAF0]) initWithDelegate_];
  [v8 setAnalyticsClient_];
  [v8 setHealthStore:*(v3 + qword_2A17AC600) unitPreferenceController:*(v3 + qword_2A17AC608) initialDate:0];
  [a1 presentViewController:v8 animated:1 completion:0];
}

uint64_t sub_29D5FB4C0(void *a1, uint64_t a2, void *a3, const void *a4)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = a1;
  sub_29D5FB3DC(v9, sub_29D5FB9D0, v8);
}

void sub_29D5FB5D0(char *a1, uint64_t a2, void *a3)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = &a1[qword_2A17AC618];
  v5 = *&a1[qword_2A17AC618];
  if (v5)
  {
    v6 = v4[1];
    v7 = a1;
    v8 = a3;
    sub_29D5FB9B0(v5);
    v5(v8);

    sub_29D5FB9C0(v5);
    v9 = *v4;
  }

  else
  {
    v10 = a1;
    v9 = 0;
  }

  v11 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_29D5FB9C0(v9);
}

uint64_t sub_29D5FB6F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_29D65EC74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v26[-1] - v14;
  v16 = (v3 + qword_2A17AC618);
  *v16 = 0;
  v16[1] = 0;
  *(v3 + qword_2A17AC600) = sub_29D65EC54();
  *(v3 + qword_2A17AC608) = a3;
  v17 = *MEMORY[0x29EDBA6E0];
  v18 = a3;
  v19 = sub_29D65EC54();
  v20 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v17 healthStore:v19];

  *(v3 + qword_2A17AC610) = v20;
  v21 = *(v7 + 16);
  v21(v15, a2, v6);
  v21(v12, a2, v6);
  v22 = [objc_opt_self() audiogramSampleType];
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v26[3] = sub_29D65ECD4();
  v26[4] = MEMORY[0x29EDC2780];
  sub_29D5E3C20(v26);
  sub_29D65ECC4();
  v23 = sub_29D65ECF4();
  (*(v7 + 8))(a2, v6);
  return v23;
}

uint64_t sub_29D5FB9B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29D5FB9C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29D5FBA08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HearingAdvertisableFeatureSourceProvider();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_29D5FBA40()
{
  v1 = sub_29D65E2E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC16HearingAppPlugin36AdvertisableFeatureNoiseAvailability_activeDeviceSource, v1);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x29EDC1AB0])
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 devices];

    v10 = &selRef_paired;
  }

  else
  {
    if (v7 != *MEMORY[0x29EDC1AB8])
    {
      (*(v2 + 8))(v6, v1);
      return 0;
    }

    v9 = [objc_opt_self() sharedInstance];
    v10 = &selRef_devices;
  }

  v11 = [v9 *v10];

  v12 = [v11 active];
  v13 = [v12 final];

  if (v13)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_29D5FBC4C()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin36AdvertisableFeatureNoiseAvailability_activeDeviceSource;
  v2 = sub_29D65E2E4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_29D5FBCB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertisableFeatureNoiseAvailability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AdvertisableFeatureNoiseAvailability()
{
  result = qword_2A17AC698;
  if (!qword_2A17AC698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5FBDAC()
{
  result = sub_29D65E2E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D5FBE3C()
{
  v0 = sub_29D65E2E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FBFD0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D661D90;
  sub_29D65E2D4();
  v7 = objc_allocWithZone(type metadata accessor for AdvertisableFeatureNoiseAvailability());
  (*(v1 + 16))(&v7[OBJC_IVAR____TtC16HearingAppPlugin36AdvertisableFeatureNoiseAvailability_activeDeviceSource], v5, v0);
  v8 = sub_29D5E98A4(1);
  (*(v1 + 8))(v5, v0);
  v9 = sub_29D65E2F4();
  type metadata accessor for HearingEnvironmentNotificationAdvertisableFeatureSource();
  v10 = swift_allocObject();
  v10[8] = 0;
  v10[5] = 0;
  v10[6] = 0;
  swift_unknownObjectWeakInit();
  v10[2] = v8;
  v10[3] = &off_2A2432218;
  v10[4] = v9;
  v11 = sub_29D5FC03C();
  *(v6 + 32) = v10;
  *(v6 + 40) = v11;
  return v6;
}

void sub_29D5FBFD0()
{
  if (!qword_2A17AC6A8)
  {
    sub_29D5FC094(255, &qword_2A17AC6B0);
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC6A8);
    }
  }
}

unint64_t sub_29D5FC03C()
{
  result = qword_2A17AC6B8;
  if (!qword_2A17AC6B8)
  {
    type metadata accessor for HearingEnvironmentNotificationAdvertisableFeatureSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6B8);
  }

  return result;
}

uint64_t sub_29D5FC094(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D5FC0FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = sub_29D65DEB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E6A8, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v9 = sub_29D65DD54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D661D20;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x29EDC36F0], v9);
  v15(v14 + v11, *MEMORY[0x29EDC3790], v9);
  sub_29D63CBA4(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_29D5FEB6C(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA450]);
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  sub_29D63CB80(inited);
  v18 = v17;
  swift_setDeallocating();
  v19 = *(inited + 16);
  swift_arrayDestroy();
  sub_29D5F08A0(v18);

  (*(v4 + 104))(v8, *MEMORY[0x29EDC3898], v3);
  v20 = a1;
  return sub_29D65DEC4();
}

uint64_t sub_29D5FC420@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_29D65DEB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E6A8, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v11 = sub_29D65DD54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D661D90;
  (*(v12 + 104))(v15 + v14, *a2, v11);
  sub_29D63CBA4(v15);
  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);
  swift_deallocClassInstance();
  sub_29D5FEB6C(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA450]);
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  sub_29D63CB80(inited);
  v18 = v17;
  swift_setDeallocating();
  v19 = *(inited + 16);
  swift_arrayDestroy();
  sub_29D5F08A0(v18);

  (*(v6 + 104))(v10, *MEMORY[0x29EDC3898], v5);
  v20 = a1;
  return sub_29D65DEC4();
}

uint64_t sub_29D5FC728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29D5FE828(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E680, sub_29D5FE718, MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D661D20;
  *(v13 + 32) = sub_29D5FC968(a1, a2);
  *(v13 + 40) = sub_29D5FCDAC(a1);
  v16[1] = v13;
  sub_29D5FE718(0);
  sub_29D5FE8E4(0);
  sub_29D5FE7E0(&qword_2A1A1E7F0, sub_29D5FE718);
  sub_29D5FE7E0(&qword_2A1A1E718, sub_29D5FE8E4);
  sub_29D65F7F4();
  sub_29D5FE7E0(&qword_2A1A1E800, sub_29D5FE828);
  v14 = sub_29D65F934();
  result = (*(v8 + 8))(v12, v7);
  *a3 = v14;
  return result;
}

uint64_t sub_29D5FC968(uint64_t a1, uint64_t a2)
{
  v33 = sub_29D65DF04();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v33, v6);
  v7 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBBC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBF0(0);
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  swift_beginAccess();
  sub_29D5FE918(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  sub_29D65F8C4();
  swift_endAccess();
  sub_29D5FE7E0(&qword_2A1A1E778, sub_29D5FEBBC);
  v21 = sub_29D65F904();
  (*(v10 + 8))(v14, v9);
  v37 = v21;
  v22 = a1;
  v23 = v33;
  (*(v4 + 16))(v7, v22, v33);
  v24 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v25 = (v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 16) = v34;
  (*(v4 + 32))(v26 + v24, v7, v23);
  *(v26 + v25) = v32;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_29D5FED54;
  *(v28 + 24) = v26;
  sub_29D5FECD0(0);
  sub_29D5F310C();
  sub_29D5FE7E0(&qword_2A1A1E7E0, sub_29D5FECD0);

  sub_29D65F944();

  sub_29D5FE7E0(qword_2A1A1E820, sub_29D5FEBF0);
  v29 = v35;
  v30 = sub_29D65F934();
  (*(v36 + 8))(v20, v29);
  return v30;
}

uint64_t sub_29D5FCDAC(uint64_t a1)
{
  v28 = sub_29D65DF04();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v28, v4);
  sub_29D5FEB6C(0, &qword_2A1A1E758, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AF0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v27 - v10;
  sub_29D5FE97C(0);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D5FEB6C(0, &qword_2A1A1E740, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  sub_29D65F8C4();
  swift_endAccess();
  sub_29D5FEA18();
  v18 = sub_29D65F904();
  (*(v7 + 8))(v11, v6);
  v32 = v18;
  v19 = a1;
  v20 = v28;
  (*(v2 + 16))(&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v28);
  v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = swift_allocObject();
  (*(v2 + 32))(v22 + v21, &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  *(v22 + ((v3 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_29D5FEA94;
  *(v23 + 24) = v22;
  sub_29D5FE9B8();
  sub_29D5F310C();
  sub_29D5FE7E0(&qword_2A1A1E7C0, sub_29D5FE9B8);
  sub_29D65F944();

  sub_29D5FE7E0(&qword_2A1A1E810, sub_29D5FE97C);
  v24 = v30;
  v25 = sub_29D65F934();
  (*(v31 + 8))(v17, v24);
  return v25;
}

uint64_t sub_29D5FD1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v45 = a5;
  v48 = a6;
  sub_29D5EA87C(0);
  v46 = v10;
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v43 - v17;
  v47 = sub_29D65F314();
  v19 = *(v47 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v47, v21);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65F2E4();
  sub_29D5EA900(a1, v18);
  v24 = sub_29D65F2F4();
  v25 = sub_29D660214();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = a4;
    v27 = v26;
    v43[0] = swift_slowAlloc();
    v43[1] = a2;
    v49 = v43[0];
    *v27 = 136315395;
    v28 = sub_29D6607A4();
    v30 = sub_29D64A1D0(v28, v29, &v49);
    v45 = a3;
    v31 = v30;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2081;
    sub_29D5EA900(v18, v15);
    v32 = sub_29D65FF84();
    v34 = v33;
    sub_29D5EA964(v18);
    v35 = sub_29D64A1D0(v32, v34, &v49);
    a3 = v45;

    *(v27 + 14) = v35;
    _os_log_impl(&dword_29D5D7000, v24, v25, "%s Received featureStatus %{private}s", v27, 0x16u);
    v36 = v43[0];
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v36, -1, -1);
    v37 = v27;
    a4 = v44;
    MEMORY[0x29ED63350](v37, -1, -1);
  }

  else
  {

    sub_29D5EA964(v18);
  }

  (*(v19 + 8))(v23, v47);
  v38 = sub_29D65DF24();
  v39 = MEMORY[0x29EDC38C8];
  v40 = v48;
  v48[3] = v38;
  v40[4] = v39;
  v41 = sub_29D5E3C20(v40);
  return sub_29D5FD4AC(a3, a1, a4, v41);
}

uint64_t sub_29D5FD4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v47 = a2;
  v55 = a4;
  sub_29D5EA87C(0);
  v52 = *(v5 - 8);
  v51 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65DED4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v12;
  v13 = sub_29D65DF04();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v40 - v19;
  v50 = &v40 - v19;
  v21 = sub_29D5E5EC8();
  v40 = v22;
  v41 = v21;
  v23 = *(v14 + 16);
  v23(v20, a1, v13);
  v24 = sub_29D65DEF4();
  sub_29D5FC420(v24, MEMORY[0x29EDC36F0], v12);

  v25 = sub_29D65DF34();
  v45 = v26;
  v46 = v25;
  v44 = v27;
  v43 = v28;
  v29 = v49;
  sub_29D5EA900(v47, v49);
  v30 = v42;
  v23(v42, a1, v13);
  v31 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v32 = (v51 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v14 + 80) + v32 + 16) & ~*(v14 + 80);
  v34 = (v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_29D5FEE38(v29, v35 + v31);
  v36 = (v35 + v32);
  v37 = v40;
  *v36 = v41;
  v36[1] = v37;
  (*(v14 + 32))(v35 + v33, v30, v13);
  v38 = v54;
  *(v35 + v34) = v53;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;

  return sub_29D65DF14();
}

uint64_t sub_29D5FD7F4(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t), char *a6)
{
  v72 = a3;
  v73 = a6;
  v70 = a4;
  v71 = a5;
  v69 = a2;
  v7 = sub_29D65F314();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v69 - v14;
  v16 = sub_29D65DE74();
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = *(v74 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5EA87C(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21 - 8, v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D65E0E4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x2A1C7C4A8](v30, v33);
  v36 = &v69 - v35;
  MEMORY[0x2A1C7C4A8](v34, v37);
  v39 = &v69 - v38;
  sub_29D5EA900(a1, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_29D5EA964(v25);
    sub_29D65F2E4();
    v40 = v72;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v41 = sub_29D65F2F4();
    v42 = sub_29D660214();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v78 = v44;
      *v43 = 136315394;
      v45 = sub_29D6607A4();
      v47 = sub_29D64A1D0(v45, v46, &v78);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_29D64A1D0(v69, v40, &v78);
      _os_log_impl(&dword_29D5D7000, v41, v42, "%s Creating no feed items with identifier %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v44, -1, -1);
      MEMORY[0x29ED63350](v43, -1, -1);
    }

    (*(v76 + 8))(v12, v77);
    return MEMORY[0x29EDCA190];
  }

  else
  {
    (*(v27 + 32))(v39, v25, v26);
    sub_29D5E3E9C(v70, v39, v20);
    sub_29D65F2E4();
    v71 = *(v27 + 16);
    v71(v36, v39, v26);
    v49 = sub_29D65F2F4();
    LODWORD(v72) = sub_29D660214();
    v50 = v20;
    if (os_log_type_enabled(v49, v72))
    {
      v51 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v78 = v70;
      *v51 = 136315395;
      v52 = sub_29D6607A4();
      v73 = v50;
      v54 = sub_29D64A1D0(v52, v53, &v78);
      v69 = v49;
      v55 = v54;

      *(v51 + 4) = v55;
      *(v51 + 12) = 2081;
      v71(v32, v36, v26);
      v56 = sub_29D65FF84();
      v58 = v57;
      v59 = v36;
      v60 = *(v27 + 8);
      v60(v59, v26);
      v61 = sub_29D64A1D0(v56, v58, &v78);
      v50 = v73;

      *(v51 + 14) = v61;
      v62 = v69;
      _os_log_impl(&dword_29D5D7000, v69, v72, "%s Creating feed item generator for featureStatus %{private}s", v51, 0x16u);
      v63 = v70;
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v63, -1, -1);
      MEMORY[0x29ED63350](v51, -1, -1);
    }

    else
    {

      v64 = v36;
      v60 = *(v27 + 8);
      v60(v64, v26);
    }

    (*(v76 + 8))(v15, v77);
    sub_29D5FE918(0, &qword_2A1A1E6A0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v65 = v74;
    v66 = *(v74 + 72);
    v67 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_29D661D90;
    (*(v65 + 32))(v68 + v67, v50, v75);
    v60(v39, v26);
    return v68;
  }
}

uint64_t sub_29D5FDE64@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v42 = a3;
  v7 = sub_29D65DF04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D65F314();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65F2E4();
  v19 = sub_29D65F2F4();
  v41 = sub_29D660214();
  v43 = v19;
  if (os_log_type_enabled(v19, v41))
  {
    v20 = swift_slowAlloc();
    v40 = v14;
    v21 = v20;
    v39 = swift_slowAlloc();
    v44 = v39;
    *v21 = 136315394;
    v22 = sub_29D6607A4();
    v24 = sub_29D64A1D0(v22, v23, &v44);
    v42 = v13;
    v25 = v8;
    v26 = v7;
    v27 = v12;
    v28 = a2;
    v29 = a1;
    v30 = a4;
    v31 = v24;

    *(v21 + 4) = v31;
    a4 = v30;
    a1 = v29;
    a2 = v28;
    v12 = v27;
    v7 = v26;
    v8 = v25;
    *(v21 + 12) = 1024;
    *(v21 + 14) = a1 & 1;
    v32 = v43;
    _os_log_impl(&dword_29D5D7000, v43, v41, "%s Creating feed item generator for promotion isPromotionVisible: %{BOOL}d", v21, 0x12u);
    v33 = v39;
    sub_29D5DF1C4(v39);
    MEMORY[0x29ED63350](v33, -1, -1);
    MEMORY[0x29ED63350](v21, -1, -1);

    (*(v40 + 8))(v18, v42);
  }

  else
  {

    (*(v14 + 8))(v18, v13);
  }

  (*(v8 + 16))(v12, a2, v7);
  v34 = type metadata accessor for HeadphoneNotificationsPromotionGenerator();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_29D5F0DA4(v12, a1 & 1);
  a4[3] = v34;
  result = sub_29D5FE7E0(qword_2A1A1E910, type metadata accessor for HeadphoneNotificationsPromotionGenerator);
  a4[4] = result;
  *a4 = v37;
  return result;
}

uint64_t sub_29D5FE1C4()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin39HeadphoneNotificationsGeneratorPipeline_domain;
  v2 = sub_29D65DED4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin39HeadphoneNotificationsGeneratorPipeline_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadphoneNotificationsGeneratorPipeline()
{
  result = qword_2A1A1E9C0;
  if (!qword_2A1A1E9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5FE2D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin39HeadphoneNotificationsGeneratorPipeline_domain;
  v5 = sub_29D65DED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_29D5FE354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = *v2;
  v33 = a2;
  v31 = sub_29D65DF04();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v31, v7);
  sub_29D5FE6F8(0);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D65DED4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v20 = sub_29D65DEF4();
  sub_29D5FC0FC(v20, v19);

  (*(v15 + 32))(v3 + OBJC_IVAR____TtC16HearingAppPlugin39HeadphoneNotificationsGeneratorPipeline_domain, v19, v14);
  v21 = a1;
  v22 = v31;
  (*(v5 + 16))(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v31);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v5 + 32))(v25 + v23, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v26 = v32;
  *(v25 + v24) = v33;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  sub_29D5FE718(0);
  sub_29D5FE7E0(&qword_2A1A1E7F0, sub_29D5FE718);

  sub_29D65F894();
  sub_29D5FE7E0(&qword_2A1A1E798, sub_29D5FE6F8);
  v27 = v34;
  v28 = sub_29D65F934();
  (*(v5 + 8))(v30, v22);
  (*(v35 + 8))(v13, v27);
  *(v3 + OBJC_IVAR____TtC16HearingAppPlugin39HeadphoneNotificationsGeneratorPipeline_publisher) = v28;
  return v3;
}

uint64_t sub_29D5FE738@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D65DF04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5FC728(v1 + v4, v6, a1);
}

uint64_t sub_29D5FE7E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D5FE848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D5FE718(255);
    v7 = v6;
    v8 = sub_29D5FE7E0(&qword_2A1A1E7F0, sub_29D5FE718);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D5FE918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5FE9B8()
{
  if (!qword_2A1A1E7B8)
  {
    v0 = sub_29D65F814();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E7B8);
    }
  }
}

unint64_t sub_29D5FEA18()
{
  result = qword_2A1A1E760;
  if (!qword_2A1A1E760)
  {
    sub_29D5FEB6C(255, &qword_2A1A1E758, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E760);
  }

  return result;
}

uint64_t sub_29D5FEA94@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v5 = *(sub_29D65DF04() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5FDE64(a1, v2 + v6, v7, a2);
}

uint64_t sub_29D5FEB40(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_29D5FEB6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D5FEC2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D5F310C();
    sub_29D5FE7E0(a4, a5);
    v8 = sub_29D65F754();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D5FECF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D65F814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D5FED54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D65DF04() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5FD1B0(a1, v8, v2 + v6, v9, v10, a2);
}

uint64_t sub_29D5FEE10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_29D5FEE38(uint64_t a1, uint64_t a2)
{
  sub_29D5EA87C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5FEE9C()
{
  sub_29D5EA87C(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_29D65DF04() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = *(v0 + v6);
  v10 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5FD7F4(v0 + v2, v7, v8, v0 + v5, v9, v10);
}

uint64_t sub_29D5FEFB4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_29D5FF010();
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  }

  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

uint64_t sub_29D5FF010()
{
  sub_29D6001FC(0, &qword_2A1A1EA60, sub_29D5F3EFC, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D661ED0;
  *(v0 + 56) = &type metadata for HearingHealthArticleDataProvider;
  *(v0 + 64) = sub_29D5F41D0();
  *(v0 + 72) = sub_29D5F4224();
  *(v0 + 104) = &type metadata for AudiogramArticleDataProvider;
  *(v0 + 112) = sub_29D5F4128();
  *(v0 + 120) = sub_29D5F417C();
  *(v0 + 152) = &type metadata for HeadphoneListeningArticleDataProvider;
  *(v0 + 160) = sub_29D5F4080();
  *(v0 + 168) = sub_29D5F40D4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D90;
  *(inited + 56) = &type metadata for HearingAidsArticleDataProvider;
  *(inited + 64) = sub_29D5F3E54();
  *(inited + 72) = sub_29D5F3EA8();
  sub_29D65A54C(inited);
  return v0;
}

void *sub_29D5FF134(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29D65DF04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v43 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v40 - v11;
  v41 = *(v5 + 16);
  v42 = v5 + 16;
  v41(v40 - v11, a1, v4);
  v13 = sub_29D65F2F4();
  v14 = sub_29D660214();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40[1] = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v40[0] = a1;
    v18 = v17;
    v44 = v17;
    *v16 = 136446466;
    v19 = sub_29D6607A4();
    v21 = sub_29D64A1D0(v19, v20, &v44);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v22 = sub_29D65DEF4();
    v23 = sub_29D65DD84();
    v25 = v24;

    (*(v5 + 8))(v12, v4);
    v26 = sub_29D64A1D0(v23, v25, &v44);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_29D5D7000, v13, v14, "[%{public}s] Creating generator pipelines for %{public}s profile", v16, 0x16u);
    swift_arrayDestroy();
    v27 = v18;
    a1 = v40[0];
    MEMORY[0x29ED63350](v27, -1, -1);
    MEMORY[0x29ED63350](v16, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v12, v4);
  }

  v28 = sub_29D65DEF4();
  if (v28)
  {
    v29 = v28;
    v30 = sub_29D65DDA4();
    v31 = sub_29D65DD94();

    if (v31)
    {
      return sub_29D5FF514(a1);
    }

    else
    {
      return MEMORY[0x29EDCA190];
    }
  }

  else
  {
    sub_29D6001FC(0, &qword_2A1A1E690, sub_29D600260, MEMORY[0x29EDC9E90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_29D661D90;
    v41(v43, a1, v4);
    sub_29D5FEFB4();
    sub_29D6003D8();
    v35 = v34;
    v36 = *(v34 + 48);
    v37 = *(v34 + 52);
    swift_allocObject();
    v38 = sub_29D65F284();
    *(v33 + 56) = v35;
    v39 = sub_29D600488(&qword_2A1A1DE18, sub_29D6003D8);
    result = v33;
    *(v33 + 64) = v39;
    *(v33 + 32) = v38;
  }

  return result;
}

void *sub_29D5FF514(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  v2 = sub_29D65DF04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65DEF4();
  v9 = sub_29D65DDA4();
  v10 = sub_29D65DD94();

  if (v10)
  {
    sub_29D6001FC(0, &qword_2A1A1DDA0, sub_29D6001C8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D661D20;
    v12 = *(v3 + 16);
    v12(v7, a1, v2);
    v13 = objc_allocWithZone(type metadata accessor for NoiseAvailability());
    v14 = sub_29D5E98A4(0);
    v15 = type metadata accessor for NoiseNotificationsGeneratorPipeline();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_29D64D75C(v7, v14);

    *(inited + 56) = v15;
    *(inited + 64) = sub_29D600488(&qword_2A1A1E180, type metadata accessor for NoiseNotificationsGeneratorPipeline);
    *(inited + 32) = v18;
    v12(v7, a1, v2);
    v19 = type metadata accessor for HeadphoneNotificationsAvailability();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_29D6232A0();
    v23 = type metadata accessor for HeadphoneNotificationsGeneratorPipeline();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_29D5FE354(v7, v22);

    *(inited + 96) = v23;
    *(inited + 104) = sub_29D600488(&qword_2A1A1E9D0, type metadata accessor for HeadphoneNotificationsGeneratorPipeline);
    *(inited + 72) = v26;
    v12(v7, a1, v2);
    v27 = qword_2A1A1E518;
    v28 = *MEMORY[0x29EDBA6E0];
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = qword_2A1A20B80;
    v52 = &type metadata for HearingTestPromotionFeedItemProvider;
    v30 = sub_29D6002C4();
    *&v50 = v29;
    *(&v50 + 1) = 0xD00000000000001ELL;
    v53 = v30;
    v51 = 0x800000029D665CE0;
    *(&v55 + 1) = sub_29D65DFA4();
    v56 = MEMORY[0x29EDC3C28];
    sub_29D5E3C20(&v54);
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D65DF94();
    v31 = sub_29D65B940(1, 3, 1, inited);
    v31[2] = 3;
    v32 = v55;
    *(v31 + 7) = v54;
    *(v31 + 8) = v32;
    v31[18] = v56;
    sub_29D5FFA90(a1, &v54);
    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_29D65B940((v33 > 1), v34 + 1, 1, v31);
    }

    v31[2] = v34 + 1;
    v35 = &v31[5 * v34];
    *(v35 + 2) = v54;
    *(v35 + 3) = v55;
    v35[8] = v56;
    sub_29D5FFCDC(a1, &v54);
    v37 = v31[2];
    v36 = v31[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v31 = sub_29D65B940((v36 > 1), v37 + 1, 1, v31);
    }

    v31[2] = v38;
    v39 = (v31 + 4);
    v40 = &v31[5 * v37 + 4];
    v41 = v54;
    v42 = v55;
    *(v40 + 32) = v56;
    *v40 = v41;
    *(v40 + 16) = v42;
    v43 = MEMORY[0x29EDCA190];
    do
    {
      sub_29D600318(v39, &v54);
      v48[1] = v55;
      v48[0] = v54;
      v49 = v56;
      if (*(&v55 + 1))
      {
        sub_29D5DBB48(v48, &v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_29D65B7BC(0, v43[2] + 1, 1, v43);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = sub_29D65B7BC((v44 > 1), v45 + 1, 1, v43);
        }

        v43[2] = v45 + 1;
        sub_29D5DBB48(&v50, &v43[5 * v45 + 4]);
      }

      else
      {
        sub_29D60037C(v48);
      }

      v39 += 40;
      --v38;
    }

    while (v38);
  }

  else
  {
    v43 = MEMORY[0x29EDCA190];
  }

  v46 = *MEMORY[0x29EDCA608];
  return v43;
}

uint64_t sub_29D5FFA90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D65DF04();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  (*(v8 + 16))(&v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = *MEMORY[0x29EDBA6E0];
  v10 = type metadata accessor for HearingTestPromptFeedItemProvider();
  v22[3] = v10;
  v22[4] = sub_29D600488(&qword_2A1A1E508, type metadata accessor for HearingTestPromptFeedItemProvider);
  v11 = sub_29D5E3C20(v22);
  *v11 = 0xD00000000000001BLL;
  v11[1] = 0x800000029D666380;
  v12 = qword_2A1A1E518;
  v13 = v9;
  if (v12 != -1)
  {
    swift_once();
  }

  v11[2] = qword_2A1A20B80;
  v11[3] = 0xD00000000000001BLL;
  v11[4] = 0x800000029D666380;
  v14 = *(v10 + 28);
  v15 = qword_2A1A1E510;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_29D65DD54();
  v17 = sub_29D5DE6EC(v16, qword_2A1A20B68);
  (*(*(v16 - 8) + 16))(v11 + v14, v17, v16);
  v18 = sub_29D65DFA4();
  v19 = MEMORY[0x29EDC3C28];
  a2[3] = v18;
  a2[4] = v19;
  sub_29D5E3C20(a2);
  return sub_29D65DF94();
}

uint64_t sub_29D5FFCDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D65DF04();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  (*(v8 + 16))(&v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = *MEMORY[0x29EDBA6E0];
  v10 = type metadata accessor for HearingTestRescindedFeedItemProvider();
  v22[3] = v10;
  v22[4] = sub_29D600488(&qword_2A1A1E440, type metadata accessor for HearingTestRescindedFeedItemProvider);
  v11 = sub_29D5E3C20(v22);
  *v11 = 0xD00000000000001ELL;
  v11[1] = 0x800000029D666C30;
  v12 = qword_2A1A1E460;
  v13 = v9;
  if (v12 != -1)
  {
    swift_once();
  }

  v11[2] = qword_2A1A20B48;
  v11[3] = 0xD000000000000014;
  v11[4] = 0x800000029D666C50;
  v14 = *(v10 + 28);
  v15 = qword_2A1A1E468;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_29D65DD54();
  v17 = sub_29D5DE6EC(v16, qword_2A1A20B50);
  (*(*(v16 - 8) + 16))(v11 + v14, v17, v16);
  v18 = sub_29D65DFA4();
  v19 = MEMORY[0x29EDC3C28];
  a2[3] = v18;
  a2[4] = v19;
  sub_29D5E3C20(a2);
  return sub_29D65DF94();
}

uint64_t sub_29D5FFF40()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16HearingAppPlugin24HearingAppPluginDelegate_logger;
  v3 = sub_29D65F314();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HearingAppPluginDelegate()
{
  result = qword_2A1A1E560;
  if (!qword_2A1A1E560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D600038()
{
  result = sub_29D65F314();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D6000D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for HearingAppPluginDelegate();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = OBJC_IVAR____TtC16HearingAppPlugin24HearingAppPluginDelegate_logger;
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v7 = sub_29D65F314();
  v8 = sub_29D5DE6EC(v7, qword_2A1A20C00);
  result = (*(*(v7 - 8) + 16))(v5 + v6, v8, v7);
  *a1 = v5;
  return result;
}

void sub_29D6001FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D600260()
{
  result = qword_2A1A1EA48;
  if (!qword_2A1A1EA48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A1EA48);
  }

  return result;
}

unint64_t sub_29D6002C4()
{
  result = qword_2A1A1E450;
  if (!qword_2A1A1E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E450);
  }

  return result;
}

uint64_t sub_29D600318(uint64_t a1, uint64_t a2)
{
  sub_29D6001C8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D60037C(uint64_t a1)
{
  sub_29D6001C8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6003D8()
{
  if (!qword_2A1A1DE10)
  {
    sub_29D600434();
    v0 = sub_29D65F294();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1DE10);
    }
  }
}

unint64_t sub_29D600434()
{
  result = qword_2A1A1E368;
  if (!qword_2A1A1E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E368);
  }

  return result;
}

uint64_t sub_29D600488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D6004D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v2 = [qword_2A1A20BF8 noiseThresholdFooterLinkURL];
  sub_29D65DAD4();

  v3 = sub_29D65DAF4();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_29D600598()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  return sub_29D65DA74();
}

uint64_t sub_29D600670(uint64_t a1)
{
  v2 = sub_29D65E0E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x29EDC1760])
  {
    if (qword_2A1A1EA20 != -1)
    {
      swift_once();
    }

    v9 = qword_2A1A20BF8;
    v10 = [qword_2A1A20BF8 localizedNoiseThresholdValue_];
    v11 = sub_29D65FF64();
    v13 = v12;

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    sub_29D600DF8();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29D661D90;
    *(v14 + 56) = MEMORY[0x29EDC99B0];
    v15 = sub_29D5E3BCC();
    *(v14 + 64) = v15;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v16 = sub_29D65FF34();
    *&v45 = v17;

    v18 = [v9 noiseThresholdMinutesThreshold];
    sub_29D65DA74();
    v19 = swift_allocObject();
    v44 = xmmword_29D661D20;
    *(v19 + 16) = xmmword_29D661D20;
    *(v19 + 56) = MEMORY[0x29EDC99B0];
    *(v19 + 64) = v15;
    v20 = MEMORY[0x29EDC9BA8];
    *(v19 + 32) = v11;
    *(v19 + 40) = v13;
    v21 = MEMORY[0x29EDC9C10];
    *(v19 + 96) = v20;
    *(v19 + 104) = v21;
    *(v19 + 72) = v18;
    v22 = sub_29D65FF34();
    v24 = v23;

    sub_29D600DA8();
    result = swift_allocObject();
    *(result + 16) = v44;
    v26 = v45;
    *(result + 32) = v16;
    *(result + 40) = v26;
    *(result + 48) = v22;
    *(result + 56) = v24;
    return result;
  }

  if (v8 == *MEMORY[0x29EDC1768])
  {
    sub_29D600DA8();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_29D661D20;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    *(v27 + 32) = sub_29D65DA74();
    *(v27 + 40) = v28;
    v29 = sub_29D65DA74();
    result = v27;
    *(v27 + 48) = v29;
    *(v27 + 56) = v30;
    return result;
  }

  if (v8 != *MEMORY[0x29EDC1758])
  {
    if (v8 != *MEMORY[0x29EDC1750])
    {
      (*(v3 + 8))(v7, v2);
      return MEMORY[0x29EDCA190];
    }

    v39 = sub_29D65E1B4();
    sub_29D600DA8();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_29D661D90;
    if (v39)
    {
      v41 = v40;
      if (qword_2A1A1EAA0 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v41 = v40;
      if (qword_2A1A1EAA0 == -1)
      {
LABEL_21:
        v42 = sub_29D65DA74();
        result = v41;
        *(v41 + 32) = v42;
        *(v41 + 40) = v43;
        return result;
      }
    }

    swift_once();
    goto LABEL_21;
  }

  v31 = sub_29D65E1E4();
  v33 = v32;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D600DA8();
  v34 = swift_allocObject();
  v45 = xmmword_29D661D90;
  *(v34 + 16) = xmmword_29D661D90;
  sub_29D600DF8();
  v35 = swift_allocObject();
  *(v35 + 16) = v45;
  *(v35 + 56) = MEMORY[0x29EDC99B0];
  *(v35 + 64) = sub_29D5E3BCC();
  *(v35 + 32) = v31;
  *(v35 + 40) = v33;
  v36 = sub_29D65FF34();
  v38 = v37;

  result = v34;
  *(v34 + 32) = v36;
  *(v34 + 40) = v38;
  return result;
}

void sub_29D600DA8()
{
  if (!qword_2A1A1E678)
  {
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E678);
    }
  }
}

void sub_29D600DF8()
{
  if (!qword_2A1A1E668)
  {
    sub_29D5E618C();
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E668);
    }
  }
}

void sub_29D600E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v20 = sub_29D65F314();
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v20, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = a3 + 32;
    v11 = 0.0;
    v12 = *(a3 + 16);
    do
    {
      sub_29D5E8E70(v10, v22);
      sub_29D5E32A8(v22, v22[3]);
      sub_29D65E594();
      v11 = v11 + CGRectGetHeight(v23);
      sub_29D5DF1C4(v22);
      v10 += 40;
      --v12;
    }

    while (v12);
  }

  else
  {
    v11 = 0.0;
  }

  sub_29D65E3F4();
  if (CGRectGetHeight(v24) - v11 >= 0.0)
  {
    if (v9)
    {
      v16 = (a3 + 32);
      do
      {
        v17 = v16[4];
        sub_29D5E32A8(v16, v16[3]);
        sub_29D65E594();
        CGRectGetHeight(v25);
        v18 = v16[4];
        sub_29D5E32A8(v16, v16[3]);
        sub_29D65E5B4();
        sub_29D65E3C4();
        v16 += 5;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    sub_29D65F2E4();
    v13 = sub_29D65F2F4();
    v14 = sub_29D660204();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_29D5D7000, v13, v14, "PDF page is too small to render all elements. Elements will be clipped.", v15, 2u);
      MEMORY[0x29ED63350](v15, -1, -1);
    }

    (*(v4 + 8))(v8, v20);
  }
}

double sub_29D6010C0(uint64_t a1, uint64_t a2)
{
  sub_29D65E3F4();
  v4 = v3;
  sub_29D65E3F4();
  CGRectGetWidth(v10);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 32;
    v7 = 0.0;
    do
    {
      sub_29D5E8E70(v6, v9);
      sub_29D5E32A8(v9, v9[3]);
      sub_29D65E594();
      v7 = v7 + CGRectGetHeight(v11);
      sub_29D5DF1C4(v9);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return v4;
}

uint64_t sub_29D6011D4(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D6012D8();
  *v4 = v1;
  v4[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v5);
}

unint64_t sub_29D601284()
{
  result = qword_2A17AC6C0;
  if (!qword_2A17AC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6C0);
  }

  return result;
}

unint64_t sub_29D6012D8()
{
  result = qword_2A17AC6C8;
  if (!qword_2A17AC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6C8);
  }

  return result;
}

uint64_t sub_29D60132C(char a1)
{
  if (a1)
  {
    if (qword_2A1A1EAA0 == -1)
    {
      return sub_29D65DA74();
    }

    goto LABEL_6;
  }

  if (qword_2A1A1EAA0 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_29D65DA74();
}

uint64_t sub_29D601478@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_29D6014E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29D6020B4();

  return MEMORY[0x2A1C61440](a1, a2, a3, v8, a4);
}

uint64_t sub_29D60157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v7 = sub_29D6020B4();

  return a4(a1, a2, v7, a3);
}

uint64_t sub_29D6015E4(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D602108();
  *v4 = v1;
  v4[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29D601690(char a1, int a2, char a3)
{
  v6 = sub_29D65FD94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v10 = sub_29D65FDA4();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v36[-v17];
  v19 = objc_opt_self();
  v20 = 1;
  if (a3)
  {
    v20 = 2;
  }

  v39 = v20;
  v21 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  if ((a3 & 1) == 0)
  {
    v21 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v22 = [v19 *v21];
  sub_29D65FBD4();
  sub_29D5ED468();
  v23 = sub_29D660344();
  v24 = MEMORY[0x29EDCA190];
  v42 = MEMORY[0x29EDCA190];
  if (a1)
  {
    v37 = a2;
    v38 = v10;
    sub_29D601F78(0, &qword_2A17AC6D0, MEMORY[0x29EDC9E90]);
    v25 = *(v7 + 72);
    v26 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_29D661D20;
    v28 = v23;
    sub_29D65FD74();
    sub_29D65FD64();
    v41 = v27;
    sub_29D601F30(&qword_2A17AC6D8, MEMORY[0x29EDC4360]);
    sub_29D601F78(0, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
    sub_29D601FD8();
    sub_29D660484();
    sub_29D65FD54();
    sub_29D65FD24();
    MEMORY[0x29ED623B0]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D660064();
    }

    sub_29D660074();
    v10 = v38;
    (*(v40 + 8))(v18, v38);
    v24 = v42;
    LOBYTE(a2) = v37;
  }

  if (a2)
  {
    sub_29D601F78(0, &qword_2A17AC6D0, MEMORY[0x29EDC9E90]);
    v29 = *(v7 + 72);
    v30 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_29D661D90;
    v32 = v23;
    sub_29D65FD64();
    v41 = v31;
    sub_29D601F30(&qword_2A17AC6D8, MEMORY[0x29EDC4360]);
    sub_29D601F78(0, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
    sub_29D601FD8();
    sub_29D660484();
    sub_29D65FD54();
    sub_29D65FD24();
    MEMORY[0x29ED623B0]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D660064();
    }

    sub_29D660074();
    (*(v40 + 8))(v15, v10);
    v24 = v42;
  }

  v33 = MEMORY[0x29ED620D0](v24);

  return v33;
}

id sub_29D601BA0(uint64_t a1, __int16 a2, uint64_t a3, unsigned int a4, char a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x29EDBA038]) init];
  v9 = MEMORY[0x29ED608A0]();
  v10 = objc_opt_self();
  v11 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  if ((a5 & 1) == 0)
  {
    v11 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v12 = [v10 *v11];
  v13 = sub_29D65FBD4();
  sub_29D5ED3CC(v13, v9);

  v14 = &off_29F353000;
  v15 = a5 & 1;
  if ((a2 & 0xFF00) != 0x200)
  {
    v16 = sub_29D601690(BYTE1(a4) & 1, HIWORD(a4) & 1, v15);
    v17 = [objc_opt_self() textAttachmentWithImage_];
    v18 = sub_29D65E4E4();
    [v18 capHeight];
    [v16 size];
    [v16 size];
    [v16 size];
    [v17 setBounds_];
    v19 = [objc_opt_self() attributedStringWithAttachment_];
    [v8 appendAttributedString_];

    v20 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v21 = sub_29D65FF24();
    type metadata accessor for Key(0);
    sub_29D601F30(&qword_2A17AC188, type metadata accessor for Key);
    v22 = sub_29D65FEA4();
    v23 = [v20 initWithString:v21 attributes:v22];

    [v8 appendAttributedString_];
    v14 = &off_29F353000;
  }

  sub_29D60132C(v15);
  v24 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v25 = sub_29D65FF24();

  type metadata accessor for Key(0);
  sub_29D601F30(&qword_2A17AC188, type metadata accessor for Key);
  v26 = sub_29D65FEA4();

  v27 = [v24 v14[351]];

  [v8 appendAttributedString_];
  return v8;
}

uint64_t sub_29D601F30(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D601F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D65FD94();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D601FD8()
{
  result = qword_2A17AC6E8;
  if (!qword_2A17AC6E8)
  {
    sub_29D601F78(255, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6E8);
  }

  return result;
}

unint64_t sub_29D602060()
{
  result = qword_2A17AC6F0;
  if (!qword_2A17AC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6F0);
  }

  return result;
}

unint64_t sub_29D6020B4()
{
  result = qword_2A17AC6F8;
  if (!qword_2A17AC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6F8);
  }

  return result;
}

unint64_t sub_29D602108()
{
  result = qword_2A17AC700;
  if (!qword_2A17AC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC700);
  }

  return result;
}

uint64_t type metadata accessor for AudiogramPDFJapanDisclaimerPageNumberedPage()
{
  result = qword_2A17AC708;
  if (!qword_2A17AC708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6021E8()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  result = sub_29D65DA74();
  qword_2A17AD688 = result;
  unk_2A17AD690 = v1;
  return result;
}

uint64_t sub_29D602294()
{
  result = MEMORY[0x29ED60890]();
  qword_2A17AD698 = result;
  return result;
}

id sub_29D6022B4()
{
  if (qword_2A17AC030 != -1)
  {
    swift_once();
  }

  if (qword_2A17AC038 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v1 = sub_29D65FF24();
  type metadata accessor for Key(0);
  sub_29D602584(&qword_2A17AC188, type metadata accessor for Key);
  v2 = sub_29D65FEA4();
  v3 = [v0 initWithString:v1 attributes:v2];

  return v3;
}

id sub_29D6023F4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for AudiogramPDFJapanDisclaimerPageNumberedPage();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_29D602438(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for ImageInitializationOption(0);
  sub_29D602584(&qword_2A17AC178, type metadata accessor for ImageInitializationOption);
  sub_29D65FEB4();
  v5 = a3;
  v6 = sub_29D65FEA4();

  v9.receiver = a1;
  v9.super_class = type metadata accessor for AudiogramPDFJapanDisclaimerPageNumberedPage();
  v7 = objc_msgSendSuper2(&v9, sel_initWithImage_options_, v5, v6);

  if (v7)
  {
  }

  return v7;
}

id sub_29D602544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramPDFJapanDisclaimerPageNumberedPage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D602584(unint64_t *a1, void (*a2)(uint64_t))
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

void PDFVStackWithMinimumWidth.render(context:document:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v8 = 0uLL;
    v9 = v4;
    v10 = 0uLL;
    v11 = 0uLL;
    if (v6 == v4)
    {
      goto LABEL_8;
    }

    if (v6 >= v4)
    {
      break;
    }

    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_17;
    }

    *&v13 = v6;
    sub_29D5E8E70(v7 + 40 * v6, &v13 + 8);
    v8 = v13;
    v10 = v14;
    v11 = v15;
LABEL_8:
    v16[0] = v8;
    v16[1] = v10;
    v16[2] = v11;
    if (!v11)
    {
      return;
    }

    v12 = v8;
    sub_29D5DBB48((v16 + 8), &v13);
    if (a4)
    {
      sub_29D5E32A8(&v13, *(&v14 + 1));
      sub_29D65E5A4();
      if (sub_29D65E394() & 1) == 0 && (sub_29D65E384())
      {
        sub_29D65E3B4();
      }
    }

    sub_29D5E32A8(&v13, *(&v14 + 1));
    sub_29D65E5B4();
    if (v12 < (v4 - 1))
    {
      sub_29D65E3C4();
    }

    sub_29D5DF1C4(&v13);
    v6 = v9;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_29D6027BC(uint64_t a1, void *a2, char a3, double a4)
{
  if ((a3 & 1) == 0)
  {
    return PDFVStackWithMinimumWidth.minimumBoundingRectForAllContent(in:)(a4, a1, a2);
  }

  if (!a2[2])
  {
    return sub_29D65E354();
  }

  sub_29D65E3E4();
  v5 = a2[8];
  sub_29D5E32A8(a2 + 4, a2[7]);
  sub_29D65E5A4();
  sub_29D65E354();
}

uint64_t PDFVStackWithMinimumWidth.minimumBoundingRectForAllContent(in:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return sub_29D65E354();
  }

  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65E3E4();
  v6 = *(a3 + 16);
  if (v6 >= 2)
  {
    v8 = a3 + 32;
    v9 = v6 - 1;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      sub_29D5E8E70(v8, v28);
      sub_29D5E32A8(v28, v28[3]);
      sub_29D65E5A4();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      sub_29D5DF1C4(v28);
      v29.origin.x = v13;
      v29.origin.y = v15;
      v29.size.width = v17;
      v29.size.height = v19;
      v20 = v11 + CGRectGetHeight(v29);
      v30.origin.x = v13;
      v30.origin.y = v15;
      v30.size.width = v17;
      v30.size.height = v19;
      CGRectGetHeight(v30);
      sub_29D65E3C4();
      sub_29D65E3C4();
      v11 = v20 + a1;
      v31.origin.x = v13;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      Width = CGRectGetWidth(v31);
      if (v10 <= Width)
      {
        v10 = Width;
      }

      v8 += 40;
      --v9;
    }

    while (v9);
    sub_29D65EE94();
  }

  else
  {
    sub_29D65EE94();
  }

  v22 = a3 + 40 * v3;
  v23 = *(v22 + 24);
  sub_29D5E32A8((v22 - 8), *(v22 + 16));
  sub_29D65E5A4();
  x = v32.origin.x;
  y = v32.origin.y;
  v26 = v32.size.width;
  height = v32.size.height;
  CGRectGetHeight(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = v26;
  v33.size.height = height;
  CGRectGetWidth(v33);
  sub_29D65E354();
  CGRectGetWidth(v34);
  sub_29D65E354();
}

unint64_t sub_29D602AB8()
{
  result = qword_2A17AC718;
  if (!qword_2A17AC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC718);
  }

  return result;
}

double sub_29D602B0C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  PDFVStackWithMinimumWidth.render(context:document:)(a1, a2, *v2, *(v2 + 16));
  return result;
}

uint64_t sub_29D602B2C(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) != 1)
  {
    return PDFVStackWithMinimumWidth.minimumBoundingRectForAllContent(in:)(*(v1 + 8), a1, *v1);
  }

  if (!v2[2])
  {
    return sub_29D65E354();
  }

  sub_29D65E3E4();
  v3 = v2[8];
  sub_29D5E32A8(v2 + 4, v2[7]);
  sub_29D65E5A4();
  sub_29D65E354();
}

uint64_t sub_29D602C0C(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D602D64();
  *v4 = v1;
  v4[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v5);
}

__n128 sub_29D602CB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_29D602CCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_29D602D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D602D64()
{
  result = qword_2A17AC720;
  if (!qword_2A17AC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC720);
  }

  return result;
}

uint64_t sub_29D602DBC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v3 = sub_29D65FD94();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v6 = sub_29D65FDA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_29D660694();

    v12 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  }

  else
  {

    v12 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v13 = [objc_opt_self() *v12];
  sub_29D65FBD4();
  sub_29D5ED468();
  sub_29D660344();
  v14 = [objc_opt_self() whiteColor];
  v16[1] = MEMORY[0x29EDCA190];
  sub_29D60359C();
  sub_29D6035F4(0, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
  sub_29D601FD8();
  sub_29D660484();
  sub_29D65FD54();
  sub_29D65FD44();
  sub_29D65DA64();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_29D603048(char a1, char a2)
{
  v25 = sub_29D65FDA4();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v25, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D65FD94();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v24 - v17;
  if (a2)
  {
    sub_29D660694();

    v19 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  }

  else
  {

    v19 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  sub_29D603324(a1 & 1);
  v20 = [objc_opt_self() *v19];
  sub_29D65FBD4();
  sub_29D5ED468();
  sub_29D660344();
  v21 = [objc_opt_self() whiteColor];
  (*(v10 + 16))(v15, v18, v9);
  sub_29D65FD54();
  v22 = sub_29D65FD24();
  (*(v4 + 8))(v8, v25);
  (*(v10 + 8))(v18, v9);
  return v22;
}

uint64_t sub_29D603324(char a1)
{
  v2 = sub_29D65FD94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_29D6035F4(0, &qword_2A17AC6D0, MEMORY[0x29EDC9E90]);
    v8 = *(v3 + 72);
    v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D661D90;
    sub_29D65FD74();
    v16 = v10;
  }

  else
  {
    v16 = MEMORY[0x29EDCA190];
  }

  sub_29D60359C();
  sub_29D6035F4(0, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
  sub_29D601FD8();
  sub_29D660484();
  sub_29D6035F4(0, &qword_2A17AC6D0, MEMORY[0x29EDC9E90]);
  v11 = *(v3 + 72);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D661ED0;
  (*(v3 + 16))(v13 + v12, v7, v2);
  sub_29D65FD64();
  sub_29D65FD84();
  v16 = v13;
  sub_29D60359C();
  sub_29D6035F4(0, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
  sub_29D601FD8();
  sub_29D660484();
  return (*(v3 + 8))(v7, v2);
}

unint64_t sub_29D60359C()
{
  result = qword_2A17AC6D8;
  if (!qword_2A17AC6D8)
  {
    sub_29D65FD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6D8);
  }

  return result;
}

void sub_29D6035F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D65FD94();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t PDFVStackWithReducedWidth.render(context:document:)()
{
  v0 = sub_29D65F1F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetWidth(v17);
  sub_29D65E3A4();
  swift_bridgeObjectRetain_n();
  sub_29D65F1D4();
  sub_29D65F1C4();
  v6 = *(v1 + 8);
  v6(v5, v0);
  sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetWidth(v18);
  sub_29D65E3A4();
  sub_29D65F1D4();
  sub_29D65F1B4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v6(v5, v0);
  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  CGRectGetHeight(v19);
  sub_29D65E3C4();
}

double sub_29D6038E0(uint64_t a1, uint64_t a2, double (*a3)(uint64_t))
{
  v4 = sub_29D65F1F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetWidth(v14);
  sub_29D65E3A4();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65F1D4();
  v11 = a3(v10);

  (*(v5 + 8))(v9, v4);
  return v11;
}

unint64_t sub_29D603A58()
{
  result = qword_2A17AC728;
  if (!qword_2A17AC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC728);
  }

  return result;
}

uint64_t sub_29D603AAC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return PDFVStackWithReducedWidth.render(context:document:)();
}

double sub_29D603AE8(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t))
{
  v6 = sub_29D65F1F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = v4[1];
  v14 = v4[2];
  v15 = sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetWidth(v19);
  sub_29D65E3A4();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65F1D4();
  v16 = a4(v15);

  (*(v7 + 8))(v11, v6);
  return v16;
}

uint64_t sub_29D603C5C(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D5E8FC4();
  *v4 = v1;
  v4[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v5);
}

id sub_29D603D8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoiseNotificationsDataTypeDetailConfigurationProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D603E2C()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20BF8;
  [qword_2A1A20BF8 setNoiseEnabled_];
  [v0 setNotificationsEnabled_];
  [v0 setOnboardingCompleted_];
}

void sub_29D603F34(void *a1)
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v2 = sub_29D65FF24();
    v3 = sub_29D65FF24();
    v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

    v5 = sub_29D65FF24();
    v6 = objc_opt_self();
    v7 = [v6 actionWithTitle:v5 style:1 handler:0];

    [v4 addAction_];
    v8 = sub_29D65FF24();
    [v4 setMessage_];

    if (sub_29D65E194())
    {
      if (qword_2A1A1EA08 != -1)
      {
        swift_once();
      }

      sub_29D5EAD50(&unk_2A1A20BA8, v16);
      v9 = v17;
      if (v17)
      {
        v10 = v18;
        sub_29D5E32A8(v16, v17);
        v11 = (*(v10 + 1))(v9, v10);
        sub_29D5DF1C4(v16);
        if (v11)
        {
          v12 = sub_29D65FF24();
          [v4 setMessage_];

          v13 = sub_29D65FF24();
          v18 = sub_29D603E2C;
          v19 = 0;
          v16[0] = MEMORY[0x29EDCA5F8];
          v16[1] = 1107296256;
          v16[2] = sub_29D5DD0A4;
          v17 = &unk_2A24321C8;
          v14 = _Block_copy(v16);

          v15 = [v6 actionWithTitle:v13 style:2 handler:v14];
          _Block_release(v14);

          [v4 addAction_];
        }
      }

      else
      {
        sub_29D5EADE0(v16);
      }
    }

    [a1 presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_29D604258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D604270()
{
  result = qword_2A1A1E6F0;
  if (!qword_2A1A1E6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A1E6F0);
  }

  return result;
}

uint64_t sub_29D6042BC()
{
  sub_29D604480();
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v2 = qword_2A1A20C18;
    v1 = 0;
  }

  v3 = v1;
  v4 = sub_29D65DA74();
  v6 = v5;

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 40);
  }

  else
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v8 = qword_2A1A20C18;
    v7 = 0;
  }

  v9 = v7;
  v10 = sub_29D65DA74();
  v12 = v11;

  v13 = sub_29D605190();

  return MEMORY[0x2A1C60BA0](v4, v6, v10, v12, v13);
}

uint64_t sub_29D604480()
{
  sub_29D605988(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBBC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605A20();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v13, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605AB8();
  v21 = *(*(v20 - 8) + 64);
  result = MEMORY[0x2A1C7C4A8](v20, v22);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[6])
  {
    v40 = v15;
    v41 = result;
    v28 = v0[2];
    v27 = v0[3];
    v42 = v24;
    ObjectType = swift_getObjectType();
    v30 = *(v27 + 16);
    v39 = v0;
    v30(ObjectType, v27);
    sub_29D605C60(&qword_2A1A1E778, 255, sub_29D5FEBBC);
    sub_29D65F994();
    (*(v8 + 8))(v12, v7);
    v31 = v39;
    v43 = v39[4];
    v32 = v43;
    v33 = sub_29D6602A4();
    (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
    sub_29D605BAC();
    sub_29D605C60(&unk_2A17AC900, 255, sub_29D605A20);
    sub_29D605C60(&qword_2A17AC768, 255, sub_29D605BAC);
    v34 = v32;
    sub_29D65F984();
    sub_29D605BF8(v5, sub_29D605988);

    (*(v40 + 8))(v19, v14);
    swift_allocObject();
    swift_weakInit();
    sub_29D605C60(&qword_2A17AC770, 255, sub_29D605AB8);
    v35 = v41;
    v36 = sub_29D65F9B4();

    (*(v42 + 8))(v26, v35);
    v37 = v31[6];
    v31[6] = v36;
  }

  return result;
}

uint64_t sub_29D604908()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 64);
      swift_getObjectType();
      sub_29D605C60(&qword_2A17AC6B8, v3, type metadata accessor for HearingEnvironmentNotificationAdvertisableFeatureSource);
      sub_29D604A00();
      sub_29D65E2C4();
      sub_29D65EE94();
    }
  }

  return result;
}

uint64_t sub_29D604A00()
{
  v64 = *v0;
  v1 = sub_29D65F314();
  v65 = *(v1 - 8);
  v66 = v1;
  v2 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v69 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D65E0E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v61 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605924();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5EA87C(0);
  v63 = v16;
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v62 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v68 = &v61 - v23;
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v27 = &v61 - v26;
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v31 = &v61 - v30;
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = &v61 - v33;
  v35 = v0[3];
  v36 = v0[2];
  ObjectType = swift_getObjectType();
  (*(v35 + 8))(ObjectType, v35);
  v67 = (*(v35 + 24))(ObjectType, v35);
  (*(v6 + 104))(v31, *MEMORY[0x29EDC1768], v5);
  (*(v6 + 56))(v31, 0, 1, v5);
  v38 = *(v11 + 56);
  sub_29D5EA900(v34, v15);
  sub_29D5EA900(v31, &v15[v38]);
  v39 = *(v6 + 48);
  if (v39(v15, 1, v5) == 1)
  {
    sub_29D605BF8(v31, sub_29D5EA87C);
    if (v39(&v15[v38], 1, v5) == 1)
    {
      sub_29D605BF8(v15, sub_29D5EA87C);
      v41 = v68;
      v40 = v69;
      if (v67)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

LABEL_7:
    sub_29D605BF8(v15, sub_29D605924);
    v41 = v68;
    v40 = v69;
    goto LABEL_8;
  }

  sub_29D5EA900(v15, v27);
  if (v39(&v15[v38], 1, v5) == 1)
  {
    sub_29D605BF8(v31, sub_29D5EA87C);
    (*(v6 + 8))(v27, v5);
    goto LABEL_7;
  }

  v58 = v61;
  (*(v6 + 32))(v61, &v15[v38], v5);
  sub_29D605C60(&qword_2A17AC758, 255, MEMORY[0x29EDC1770]);
  v59 = sub_29D65FF14();
  v60 = *(v6 + 8);
  v60(v58, v5);
  sub_29D605BF8(v31, sub_29D5EA87C);
  v60(v27, v5);
  sub_29D605BF8(v15, sub_29D5EA87C);
  v41 = v68;
  v40 = v69;
  if (v59 & v67)
  {
LABEL_19:
    sub_29D605BF8(v34, sub_29D5EA87C);
    return 1;
  }

LABEL_8:
  sub_29D65F2C4();
  sub_29D5EA900(v34, v41);
  v42 = sub_29D65F2F4();
  v43 = sub_29D660214();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v70 = v45;
    *v44 = 136315906;
    v46 = sub_29D6607A4();
    v48 = sub_29D64A1D0(v46, v47, &v70);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_29D64A1D0(0xD000000000000011, 0x800000029D667120, &v70);
    *(v44 + 22) = 2080;
    sub_29D5EA900(v41, v62);
    v49 = sub_29D65FF84();
    v51 = v50;
    sub_29D605BF8(v41, sub_29D5EA87C);
    v52 = sub_29D64A1D0(v49, v51, &v70);

    *(v44 + 24) = v52;
    *(v44 + 32) = 2080;
    if (v67)
    {
      v53 = 1702195828;
    }

    else
    {
      v53 = 0x65736C6166;
    }

    if (v67)
    {
      v54 = 0xE400000000000000;
    }

    else
    {
      v54 = 0xE500000000000000;
    }

    v55 = sub_29D64A1D0(v53, v54, &v70);

    *(v44 + 34) = v55;
    _os_log_impl(&dword_29D5D7000, v42, v43, "[%s] %s -> false: featureStatus (%s), promotion visiblity (%s)", v44, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v45, -1, -1);
    MEMORY[0x29ED63350](v44, -1, -1);

    (*(v65 + 8))(v40, v66);
    v56 = v34;
  }

  else
  {

    sub_29D605BF8(v41, sub_29D5EA87C);
    (*(v65 + 8))(v40, v66);
    v56 = v34;
  }

  sub_29D605BF8(v56, sub_29D5EA87C);
  return 0;
}

id sub_29D605190()
{
  v1 = sub_29D65E154();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v8 = qword_2A1A20C18;
    v7 = 0;
  }

  v9 = v8;
  v10 = v7;
  sub_29D65E144();
  v11 = sub_29D65E114();
  if (!v11)
  {
    v11 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  v12 = v11;

  (*(v2 + 8))(v6, v1);
  return v12;
}

uint64_t sub_29D605300()
{
  v1 = *(v0 + 16);
  sub_29D65EE94();

  v2 = *(v0 + 48);

  sub_29D5DBB60(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_29D60537C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC17B0];
  v3 = sub_29D65E0F4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D6053F0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_29D60542C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D65EE94();
}

void (*sub_29D60548C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_29D605520;
}

void sub_29D605520(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    sub_29D65EE94();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_29D65EE94();
  }

  free(v3);
}

uint64_t sub_29D6055A8(void (*a1)(_BYTE *))
{
  sub_29D605870(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D604480();
  *v6 = sub_29D604A00() & 1;
  swift_storeEnumTagMultiPayload();
  a1(v6);
  return sub_29D605BF8(v6, sub_29D605870);
}

uint64_t sub_29D605678(void (*a1)(char *))
{
  sub_29D605858(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_29D605BF8(v5, sub_29D605858);
}

uint64_t sub_29D605728(uint64_t a1, void (*a2)(char *))
{
  sub_29D605858(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D604480();
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  (*(v11 + 88))(ObjectType, v11);
  (*(v11 + 48))(a1, ObjectType, v11);
  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_29D605BF8(v9, sub_29D605858);
}

void sub_29D605884(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29D65E244();
    sub_29D605C60(&qword_2A17AC740, 255, MEMORY[0x29EDC1918]);
    v3 = sub_29D660754();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29D605924()
{
  if (!qword_2A17AC750)
  {
    sub_29D5EA87C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AC750);
    }
  }
}

void sub_29D6059BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D605A20()
{
  if (!qword_2A17AC8E0)
  {
    sub_29D5FEBBC(255);
    sub_29D605C60(&qword_2A1A1E778, 255, sub_29D5FEBBC);
    v0 = sub_29D65F7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC8E0);
    }
  }
}

void sub_29D605AB8()
{
  if (!qword_2A17AC8F0)
  {
    sub_29D605A20();
    sub_29D605BAC();
    sub_29D605C60(&unk_2A17AC900, 255, sub_29D605A20);
    sub_29D605C60(&qword_2A17AC768, 255, sub_29D605BAC);
    v0 = sub_29D65F804();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC8F0);
    }
  }
}

unint64_t sub_29D605BAC()
{
  result = qword_2A17AC0E8;
  if (!qword_2A17AC0E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17AC0E8);
  }

  return result;
}

uint64_t sub_29D605BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D605C60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29D605CA8()
{
  swift_beginAccess();
  sub_29D605E70(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  sub_29D65F8C4();
  return swift_endAccess();
}

id sub_29D605D40(char a1)
{
  if (qword_2A1A1EA20 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = a1 & 1;
  v2 = qword_2A1A20BF8;

  return [v2 setNoiseEnabled_];
}

id sub_29D605DC0()
{
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20BF8;
  [qword_2A1A20BF8 setOnboardingCompleted_];
  [v0 setNoiseEnabled_];
  [v0 setNotificationsEnabled_];

  return [v0 setNotificationThreshold_];
}

void sub_29D605E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D605ED4()
{
  v0 = sub_29D65E154();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A20C18;
  sub_29D65E144();
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  sub_29D65DA74();

  v7 = [v5 bundleForClass_];
  sub_29D65DA74();

  v8 = [v5 bundleForClass_];
  sub_29D65DA74();

  return sub_29D65E294();
}

void sub_29D606194(uint64_t a1)
{
  v2 = sub_29D65E314();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v54 = (&ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_29D65E554();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &ObjectType - v14;
  v16 = sub_29D65EDC4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v48 = &ObjectType - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &ObjectType - v23;
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
    v47 = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_29D65EF44();
    sub_29D65EE94();
    sub_29D65ED94();
    v25 = *(v17 + 8);
    v50 = v17 + 8;
    v51 = v16;
    v49 = v25;
    v25(v24, v16);
    sub_29D5E32A8(v55, v55[3]);
    sub_29D65ED54();
    (*(v7 + 104))(v12, *MEMORY[0x29EDC1D60], v6);
    sub_29D606CB4();
    v26 = sub_29D65FF14();
    v27 = *(v7 + 8);
    v27(v12, v6);
    v28 = v15;
    v29 = v47;
    v27(v28, v6);
    sub_29D5DF1C4(v55);
    if ((v26 & 1) == 0)
    {
      v30 = sub_29D65EED4();
      if (v30)
      {
        v31 = v30;
        swift_unknownObjectRetain();
        v32 = v48;
        sub_29D65EF44();
        sub_29D65EE94();
        v33 = sub_29D65EDA4();
        v49(v32, v51);
        v34 = [v33 navigationController];

        if (v34)
        {
          [v34 pushViewController:v31 animated:1];
        }
      }
    }

    if (qword_2A1A1EA20 != -1)
    {
      swift_once();
    }

    v35 = qword_2A1A20BF8;
    [qword_2A1A20BF8 setOnboardingCompleted_];
    [v35 setNoiseEnabled_];
    [v35 setNotificationsEnabled_];
    [v35 setNotificationThreshold_];
    v36 = v54;
    (*(v52 + 104))(v54, *MEMORY[0x29EDC1C08], v53);
    v37 = objc_allocWithZone(type metadata accessor for NoiseNotificationsSettingsViewController(0));
    v38 = v35;
    v39 = sub_29D61A8C8(v38, v36, 1);

    sub_29D65ED74();
    v40 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    swift_unknownObjectRetain();
    sub_29D65EF44();
    sub_29D65EE94();
    v41 = sub_29D65EDA4();
    v49(v24, v51);
    [v41 presentViewController:v40 animated:1 completion:0];

    sub_29D65EE94();
  }

  else
  {
    sub_29D65EE94();
    v54 = sub_29D65F2F4();
    v42 = sub_29D6601F4();
    if (os_log_type_enabled(v54, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v55[0] = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_29D64A1D0(0xD000000000000032, 0x800000029D662FA0, v55);
      _os_log_impl(&dword_29D5D7000, v54, v42, "[%{public}s] Could not perform onboarding action; invalid sender", v43, 0xCu);
      sub_29D5DF1C4(v44);
      MEMORY[0x29ED63350](v44, -1, -1);
      MEMORY[0x29ED63350](v43, -1, -1);
    }

    else
    {
      v45 = v54;
    }
  }
}

uint64_t sub_29D606814(uint64_t a1)
{
  sub_29D5E6830(a1, v11, &qword_2A1A1E188, qword_2A1A1E190);
  v2 = v12;
  if (v12)
  {
    v3 = v13;
    sub_29D5E32A8(v11, v12);
    LODWORD(v2) = (*(v3 + 8))(v2, v3);
    sub_29D5DF1C4(v11);
  }

  else
  {
    sub_29D5E677C(v11, &qword_2A1A1E188, qword_2A1A1E190);
  }

  sub_29D5E6830(a1 + 40, v11, &qword_2A1A1E370, &qword_2A1A1E378);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    sub_29D5E32A8(v11, v12);
    LODWORD(v4) = (*(v5 + 8))(v4, v5);
    sub_29D5DF1C4(v11);
  }

  else
  {
    sub_29D5E677C(v11, &qword_2A1A1E370, &qword_2A1A1E378);
  }

  v6 = sub_29D65F2F4();
  v7 = sub_29D6601D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136446978;
    *(v8 + 4) = sub_29D64A1D0(0xD000000000000032, 0x800000029D662FA0, v11);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_29D64A1D0(0xD00000000000004BLL, 0x800000029D665920, v11);
    *(v8 + 22) = 1026;
    *(v8 + 24) = v2 & 1;
    *(v8 + 28) = 1026;
    *(v8 + 30) = v4 & 1;
    _os_log_impl(&dword_29D5D7000, v6, v7, "[%{public}s] %s: Feature supported: %{BOOL,public}d. Feature onboarded: %{BOOL,public}d.", v8, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v9, -1, -1);
    MEMORY[0x29ED63350](v8, -1, -1);
  }

  return v2 & ~v4 & 1;
}

uint64_t sub_29D606AB4()
{
  sub_29D5ED310();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(inited + 40) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA440]);
  sub_29D63CEB8(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t type metadata accessor for EnvironmentAudioNotificationOnboardingDataProvider()
{
  result = qword_2A1A1DF38;
  if (!qword_2A1A1DF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D606C48()
{
  result = sub_29D65F314();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D606CB4()
{
  result = qword_2A17AC3D8;
  if (!qword_2A17AC3D8)
  {
    sub_29D65E554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC3D8);
  }

  return result;
}

uint64_t sub_29D606D0C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_29D606D20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_29D606D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D606DD4()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D60700C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D661D90;
  v1 = sub_29D65EC54();
  sub_29D6161F0(v1, v7);
  *(v0 + 56) = &type metadata for HearingTestAboutItem;
  *(v0 + 64) = sub_29D607148();
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  v3 = v7[1];
  *(v2 + 16) = v7[0];
  *(v2 + 32) = v3;
  *(v2 + 48) = v7[2];
  *(v2 + 64) = v8;
  v4 = sub_29D65F074();
  v5 = MEMORY[0x29EDC2B10];
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;

  return v0;
}

uint64_t sub_29D606F00()
{
  v1 = sub_29D65EB64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);
  v9 = v7;
  sub_29D65EB44();
  v10 = sub_29D65EB54();
  (*(v2 + 8))(v6, v1);
  return v10;
}

void sub_29D60700C()
{
  if (!qword_2A17AC778)
  {
    sub_29D607064();
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC778);
    }
  }
}

void sub_29D607064()
{
  if (!qword_2A17AC780)
  {
    sub_29D5FC094(255, &qword_2A17AC788);
    sub_29D6070EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AC780);
    }
  }
}

unint64_t sub_29D6070EC()
{
  result = qword_2A17AC790;
  if (!qword_2A17AC790)
  {
    sub_29D5FC094(255, &qword_2A17AC798);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17AC790);
  }

  return result;
}

unint64_t sub_29D607148()
{
  result = qword_2A17AC7A0;
  if (!qword_2A17AC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC7A0);
  }

  return result;
}

id sub_29D607240(uint64_t a1)
{
  swift_getObjectType();
  sub_29D60C140(0, &unk_2A17AC838, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v21 - v6;
  v8 = (v1 + qword_2A17AC7B0);
  *v8 = 0xD000000000000014;
  v8[1] = 0x800000029D667510;
  v9 = (v1 + qword_2A17AC7B8);
  *v9 = 0xD000000000000015;
  v9[1] = 0x800000029D667530;
  v10 = (v1 + qword_2A17AC7C0);
  *v10 = 0xD000000000000013;
  v10[1] = 0x800000029D667550;
  v11 = (v1 + qword_2A17AC7C8);
  *v11 = 0xD000000000000014;
  v11[1] = 0x800000029D667570;
  v12 = (v1 + qword_2A17AC7D0);
  *v12 = 0xD000000000000016;
  v12[1] = 0x800000029D667590;
  *(v1 + qword_2A17AC7D8) = MEMORY[0x29EDCA190];
  *(v1 + qword_2A17AC7E0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_2A17AC7E8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = qword_2A17AC7F0;
  v14 = type metadata accessor for HeadphoneNotificationsAvailability();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v1 + v13) = sub_29D6232A0();
  *(v1 + qword_2A17AC7F8) = 0;
  sub_29D656FA8();
  v17 = sub_29D65E314();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = sub_29D65E304();
  sub_29D60A320();

  (*(v18 + 8))(a1, v17);
  return v19;
}

uint64_t sub_29D607504@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() isHeadphoneExposureNotificationsEnabled];
  v3 = MEMORY[0x29EDC1760];
  if ((v2 & 1) == 0 && (sub_29D60B614() & 1) == 0)
  {
    v3 = MEMORY[0x29EDC1768];
  }

  v4 = *v3;
  v5 = sub_29D65E0E4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_29D6075A8@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29D65E0E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D65E154();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D656FC4();
  v15 = sub_29D65E114();
  (*(v10 + 8))(v14, v9);
  if (v15)
  {
    v25 = a1;
    v16 = objc_opt_self();
    v17 = [v16 isHeadphoneExposureNotificationsEnabled];
    v18 = [v16 isHeadphoneExposureNotificationsSupportedOnActiveWatch];
    v19 = sub_29D60B614();
    if ([v16 isHeadphoneExposureNotificationsEnabled] & 1) != 0 || (sub_29D60B614())
    {
      v20 = MEMORY[0x29EDC1760];
    }

    else
    {
      v20 = MEMORY[0x29EDC1768];
    }

    a1 = v25;
    (*(v4 + 104))(v8, *v20, v3);
    sub_29D65662C(v8, v17, v18, v19 & 1, ObjectType, &off_2A2432388);
    (*(v4 + 8))(v8, v3);
    MEMORY[0x29ED60500](1, v17, v18, v19 & 1);
    sub_29D65EE34();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_29D65EE44();
  return (*(*(v22 - 8) + 56))(a1, v21, 1, v22);
}

uint64_t sub_29D607874()
{
  v1 = v0;
  v14 = MEMORY[0x29EDCA190];
  sub_29D6079B0();
  sub_29D65A648(v2);
  if ([objc_opt_self() isHeadphoneExposureNotificationsSupportedOnActiveWatch])
  {
    v3 = sub_29D608808();
    v4 = qword_2A17AC7D8;
    v5 = *(v1 + qword_2A17AC7D8);
    *(v1 + qword_2A17AC7D8) = v3;

    v6 = *(v1 + v4);
    v7 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D65A648(v7);
  }

  v8 = v14;
  if (v14 >> 62)
  {
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v13 = sub_29D6605B4();
    swift_bridgeObjectRelease_n();
    return v13;
  }

  else
  {
    v9 = v14 & 0xFFFFFFFFFFFFFF8;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D6606A4();
    if (swift_dynamicCastMetatype() || (v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_5:
    }

    else
    {
      v12 = (v9 + 32);
      while (*v12)
      {
        ++v12;
        if (!--v11)
        {
          goto LABEL_5;
        }
      }

      return v9 | 1;
    }

    return v8;
  }
}

void sub_29D6079B0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = MEMORY[0x29EDCA190];
  v8 = [objc_opt_self() currentDeviceDisplayName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_29D65FF64();

    v11 = objc_opt_self();
    v12 = [v11 areHeadphoneExposureNotificationsMandatory];
    LODWORD(v97) = [v11 isHeadphoneExposureNotificationsEnabled];
    v13 = [v11 isHeadphoneExposureMeasureLevelsEnabled];
    v98 = sub_29D657BD4(v12, v13 ^ 1);
    v14 = sub_29D657D28(v13 ^ 1);
    v99 = v15;
    v16 = &selRef_openDevicePrivacySettings;
    if (v13)
    {
      v16 = &selRef_openLearnMoreLink;
    }

    v17 = *v16;
    if (v12)
    {
      v18 = *(v1 + qword_2A17AC7B0);
      v19 = *(v1 + qword_2A17AC7B0 + 8);
      v20 = objc_opt_self();
      v21 = sub_29D65FF24();
      v95 = v20;
      v22 = [v20 groupSpecifierWithID_];

      if (v22)
      {
        v96 = v17;
        v23 = sub_29D65FF24();
        [v22 setName_];

        sub_29D5DF448(0, &unk_2A17AC910, 0x29EDC6268);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v25 = NSStringFromClass(ObjCClassFromMetadata);
        if (!v25)
        {
          sub_29D65FF64();
          v25 = sub_29D65FF24();
        }

        [v22 setProperty:v25 forKey:*MEMORY[0x29EDC62D0]];

        v26 = sub_29D65FF24();
        [v22 setProperty:v26 forKey:*MEMORY[0x29EDC62F0]];

        v27 = sub_29D65FF24();
        [v22 setName_];

        v28 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
        v29 = sub_29D65FF24();
        v30 = [v28 initWithString_];

        v31 = sub_29D65FF24();
        v32 = [v30 localizedStandardRangeOfString_];
        v34 = v33;

        sub_29D65DCE4();
        v102.location = v32;
        v102.length = v34;
        v35 = NSStringFromRange(v102);
        if (!v35)
        {
          sub_29D65FF64();
          v35 = sub_29D65FF24();
        }

        [v22 setProperty:v35 forKey:*MEMORY[0x29EDC62E0]];

        v36 = [objc_opt_self() valueWithNonretainedObject_];
        [v22 setProperty:v36 forKey:*MEMORY[0x29EDC62E8]];
        v37 = sub_29D65FF24();

        [v22 setProperty:v37 forKey:*MEMORY[0x29EDC62D8]];

        v38 = v22;
        MEMORY[0x29ED623B0]();
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v90 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_29D660064();
        }

        sub_29D660074();
      }

      else
      {
      }

      v58 = *(v1 + qword_2A17AC7B8);
      v59 = *(v1 + qword_2A17AC7B8 + 8);
      if (qword_2A1A1EAA0 != -1)
      {
        swift_once();
      }

      sub_29D65DA74();
      v60 = &selRef_headphoneNotificationsIsHeadphoneNotificationsMandatoryDisabledValueText;
      if (v97)
      {
        v60 = &selRef_headphoneNotificationsIsHeadphoneNotificationsMandatoryEnabledValueText;
      }

      v61 = *v60;
      v62 = sub_29D65FF24();

      v63 = [v95 preferenceSpecifierNamed:v62 target:v1 set:0 get:v61 detail:0 cell:4 edit:0];

      if (!v63)
      {
        return;
      }

LABEL_45:
      v85 = sub_29D65FF24();
      [v63 setIdentifier_];

      v86 = sub_29D660094();
      [v63 setProperty:v86 forKey:*MEMORY[0x29EDC62C8]];

      v87 = sub_29D660094();
      [v63 setProperty:v87 forKey:*MEMORY[0x29EDC62A0]];

      v88 = v63;
      MEMORY[0x29ED623B0]();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v89 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();

      return;
    }

    v94[2] = v10;
    v46 = objc_opt_self();
    v47 = sub_29D65FF24();
    v48 = [v46 modelSpecificLocalizedStringKeyForKey_];

    if (!v48)
    {
      __break(1u);
      return;
    }

    v94[1] = v14;
    v96 = v17;
    sub_29D65FF64();

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v95 = qword_2A1A20C18;
    sub_29D65DA74();

    v50 = *(v1 + qword_2A17AC7B0);
    v49 = *(v1 + qword_2A17AC7B0 + 8);
    v51 = objc_opt_self();
    v52 = sub_29D65FF24();
    v97 = v51;
    v53 = [v51 groupSpecifierWithID_];

    if (v53)
    {
      v54 = sub_29D65FF24();
      [v53 setName_];

      v55 = sub_29D65FF24();

      [v53 setProperty:v55 forKey:*MEMORY[0x29EDC62F8]];

      v56 = v53;
      MEMORY[0x29ED623B0]();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v91 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();

      v57 = &off_29F353000;
    }

    else
    {

      v57 = &off_29F353000;
    }

    v64 = sub_29D6092A8(*(v1 + qword_2A17AC7D0), *(v1 + qword_2A17AC7D0 + 8), sel_isHeadphoneMeasureAudioLevelEnabled, sel_setHeadphoneMeasureAudioLevelsEnabledWithValue_);
    if (v64)
    {
      v65 = v64;
      MEMORY[0x29ED623B0]();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v92 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();
    }

    v66 = sub_29D65FF24();
    v67 = [v97 groupSpecifierWithID_];

    if (v67)
    {
      v99 = "HAEN_FEATURE_TITLE";
      sub_29D5DF448(0, &unk_2A17AC910, 0x29EDC6268);
      v68 = swift_getObjCClassFromMetadata();
      v69 = NSStringFromClass(v68);
      if (!v69)
      {
        sub_29D65FF64();
        v69 = sub_29D65FF24();
      }

      [v67 setProperty:v69 forKey:*MEMORY[0x29EDC62D0]];

      v70 = sub_29D65FF24();
      [v67 setProperty:v70 forKey:*MEMORY[0x29EDC62F0]];

      [v67 v57[390]];
      v71 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
      v72 = sub_29D65FF24();
      v73 = [v71 initWithString_];

      v74 = sub_29D65FF24();
      v75 = [v73 localizedStandardRangeOfString_];
      v77 = v76;

      sub_29D65DCE4();
      v103.location = v75;
      v103.length = v77;
      v78 = NSStringFromRange(v103);
      if (!v78)
      {
        sub_29D65FF64();
        v78 = sub_29D65FF24();
      }

      [v67 setProperty:v78 forKey:*MEMORY[0x29EDC62E0]];

      v79 = [objc_opt_self() valueWithNonretainedObject_];
      [v67 setProperty:v79 forKey:*MEMORY[0x29EDC62E8]];
      v80 = sub_29D65FF24();

      [v67 setProperty:v80 forKey:*MEMORY[0x29EDC62D8]];

      v81 = v67;
      MEMORY[0x29ED623B0]();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v93 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();
    }

    else
    {
    }

    v82 = *(v1 + qword_2A17AC7B8);
    v83 = *(v1 + qword_2A17AC7B8 + 8);
    sub_29D65DA74();
    v84 = sub_29D65FF24();

    v63 = [v97 preferenceSpecifierNamed:v84 target:v1 set:sel_setHeadphoneNotificationsDeviceEnabledWithValue_ get:sel_headphoneNotificationsDeviceEnabled detail:0 cell:6 edit:0];

    if (v63)
    {
      goto LABEL_45;
    }
  }

  else
  {
    sub_29D65F2E4();
    v39 = sub_29D65F2F4();
    v40 = sub_29D6601F4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v100 = v42;
      *v41 = 136446210;
      v43 = sub_29D6607A4();
      v45 = sub_29D64A1D0(v43, v44, &v100);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_29D5D7000, v39, v40, "[%{public}s] Could not get device display name", v41, 0xCu);
      sub_29D5DF1C4(v42);
      MEMORY[0x29ED63350](v42, -1, -1);
      MEMORY[0x29ED63350](v41, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_29D608808()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x29EDCA190];
  sub_29D657DE4();
  if (v8)
  {
    v9 = sub_29D608FFC(&selRef_areHeadphoneExposureNotificationsMandatoryOnActiveWatchWithError_, "[%{public}s] Could not access areHeadphoneExposureNotificationsMandatoryOnActiveWatch. Error: %{public}s");
    v58 = sub_29D60B614();
    v10 = sub_29D608FFC(&selRef_isHeadphoneExposureMeasureLevelsEnabledOnActiveWatchWithError_, "[%{public}s] Could not access isHeadphoneExposureMeasureLevelsEnabledOnActiveWatch. Error: %{public}s");
    v63 = v9;
    v59 = sub_29D657F28(v9 & 1, (v10 & 1) == 0);
    v60 = sub_29D657D28((v10 & 1) == 0);
    v11 = &selRef_openWatchPrivacySettings;
    v61 = v10;
    if (v10)
    {
      v11 = &selRef_openLearnMoreLink;
    }

    v12 = *v11;
    v13 = *(v0 + qword_2A17AC7C0);
    v14 = *(v0 + qword_2A17AC7C0 + 8);
    v15 = objc_opt_self();
    v16 = sub_29D65FF24();
    v62 = v15;
    v17 = [v15 groupSpecifierWithID_];

    if (v17)
    {
      v57[1] = v12;
      v18 = sub_29D65FF24();
      [v17 setName_];

      sub_29D5DF448(0, &unk_2A17AC910, 0x29EDC6268);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = NSStringFromClass(ObjCClassFromMetadata);
      if (!v20)
      {
        sub_29D65FF64();
        v20 = sub_29D65FF24();
      }

      [v17 setProperty:v20 forKey:*MEMORY[0x29EDC62D0]];

      v21 = sub_29D65FF24();
      [v17 setProperty:v21 forKey:*MEMORY[0x29EDC62F0]];

      v22 = sub_29D65FF24();
      [v17 setName_];

      v23 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
      v24 = sub_29D65FF24();
      v25 = [v23 initWithString_];

      v26 = sub_29D65FF24();
      v27 = [v25 localizedStandardRangeOfString_];
      v29 = v28;

      sub_29D65DCE4();
      v66.location = v27;
      v66.length = v29;
      v30 = NSStringFromRange(v66);
      if (!v30)
      {
        sub_29D65FF64();
        v30 = sub_29D65FF24();
      }

      [v17 setProperty:v30 forKey:*MEMORY[0x29EDC62E0]];

      v31 = [objc_opt_self() valueWithNonretainedObject_];
      [v17 setProperty:v31 forKey:*MEMORY[0x29EDC62E8]];
      v32 = sub_29D65FF24();

      [v17 setProperty:v32 forKey:*MEMORY[0x29EDC62D8]];

      v33 = v17;
      MEMORY[0x29ED623B0]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();

      v34 = v65;
    }

    else
    {

      v34 = MEMORY[0x29EDCA190];
    }

    v42 = *(v1 + qword_2A17AC7C8);
    v43 = *(v1 + qword_2A17AC7C8 + 8);
    v44 = sel_headphoneNotificationsWatchEnabled;
    v45 = sel_setHeadphoneNotificationsWatchEnabledWithValue_;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    if (v63)
    {
      v45 = 0;
      v46 = &selRef_headphoneNotificationsIsHeadphoneNotificationsMandatoryDisabledValueText;
      if (v58)
      {
        v46 = &selRef_headphoneNotificationsIsHeadphoneNotificationsMandatoryEnabledValueText;
      }

      v44 = *v46;
      v47 = 4;
    }

    else
    {
      v47 = 6;
    }

    v48 = sub_29D65FF24();

    v49 = [v62 preferenceSpecifierNamed:v48 target:v1 set:v45 get:v44 detail:0 cell:v47 edit:0];

    if (v49)
    {
      v50 = sub_29D65FF24();
      [v49 setIdentifier_];

      v51 = sub_29D660094();
      [v49 setProperty:v51 forKey:*MEMORY[0x29EDC62C8]];

      v52 = sub_29D660094();
      [v49 setProperty:v52 forKey:*MEMORY[0x29EDC62A0]];

      v53 = v49;
      MEMORY[0x29ED623B0]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();

      return v65;
    }
  }

  else
  {
    sub_29D65F2E4();
    v35 = sub_29D65F2F4();
    v36 = sub_29D6601F4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64 = v38;
      *v37 = 136446210;
      v39 = sub_29D6607A4();
      v41 = sub_29D64A1D0(v39, v40, &v64);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_29D5D7000, v35, v36, "[%{public}s] Could not get watch display name", v37, 0xCu);
      sub_29D5DF1C4(v38);
      MEMORY[0x29ED63350](v38, -1, -1);
      MEMORY[0x29ED63350](v37, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return MEMORY[0x29EDCA190];
  }

  return v34;
}

id sub_29D608FFC(SEL *a1, const char *a2)
{
  v27[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v4 = sub_29D65F314();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if ((sub_29D65E194() & 1) == 0)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v10 = objc_opt_self();
  result = [v10 isHeadphoneExposureNotificationsSupportedOnActiveWatch];
  if (result)
  {
    v27[0] = 0;
    result = [v10 *a1];
    v12 = v27[0];
    if (v27[0])
    {
      swift_willThrow();
      v13 = v12;
      sub_29D65F2E4();
      v14 = v13;
      v15 = sub_29D65F2F4();
      v16 = sub_29D660204();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27[0] = v26;
        *v17 = 136446466;
        v18 = sub_29D6607A4();
        v20 = sub_29D64A1D0(v18, v19, v27);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2082;
        swift_getErrorValue();
        v21 = sub_29D6606D4();
        v23 = sub_29D64A1D0(v21, v22, v27);

        *(v17 + 14) = v23;
        _os_log_impl(&dword_29D5D7000, v15, v16, a2, v17, 0x16u);
        v24 = v26;
        swift_arrayDestroy();
        MEMORY[0x29ED63350](v24, -1, -1);
        MEMORY[0x29ED63350](v17, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v9, v4);
      goto LABEL_8;
    }
  }

LABEL_9:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

id sub_29D6092A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v7 = objc_opt_self();
  v8 = sub_29D65FF24();

  v9 = [v7 preferenceSpecifierNamed:v8 target:v4 set:a4 get:a3 detail:0 cell:6 edit:0];

  if (v9)
  {
    v10 = sub_29D65FF24();
    [v9 setIdentifier_];

    v11 = sub_29D660094();
    [v9 setProperty:v11 forKey:*MEMORY[0x29EDC62C8]];

    v12 = sub_29D660094();
    [v9 setProperty:v12 forKey:*MEMORY[0x29EDC62A0]];
  }

  return v9;
}

id sub_29D609474()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v0 = sub_29D65FF24();

  return v0;
}

id sub_29D609544()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v0 = sub_29D65FF24();

  return v0;
}

void sub_29D609614()
{
  sub_29D5ED310();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D661DA0;
  *(v1 + 32) = sub_29D60B728();
  *(v1 + 40) = sub_29D60B244();
  v2 = objc_allocWithZone(MEMORY[0x29EDC46F8]);
  sub_29D60BF74();
  v3 = sub_29D660024();

  v4 = [v2 initWithItems_];

  v5 = qword_2A1A1EAA0;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v7 = sub_29D65FF24();

  [v6 setTitle_];

  v8 = *&v0[qword_2A17AC818];
  *&v0[qword_2A17AC818] = v6;
  v9 = v6;

  v10 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  [v0 presentViewController:v10 animated:1 completion:0];
}

void sub_29D6097EC(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29D609614();
  }

  else
  {
  }
}

uint64_t sub_29D6098F0(void *a1)
{
  v27[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v8 = objc_opt_self();
  if (([v8 isHeadphoneExposureMeasureLevelsEnabled] & 1) == 0 && objc_msgSend(a1, sel_BOOLValue))
  {
    sub_29D609D18(a1);
  }

  v9 = [a1 BOOLValue];
  v27[0] = 0;
  if ([v8 _setHeadphoneExposureNotificationsEnabled_error_])
  {
    v10 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C710E0]();
  }

  else
  {
    v26 = v27[0];
    v11 = v27[0];
    v12 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v13 = v12;
    v14 = sub_29D65F2F4();
    v15 = sub_29D660204();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136446466;
      v18 = sub_29D6607A4();
      v20 = sub_29D64A1D0(v18, v19, v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      swift_getErrorValue();
      v21 = sub_29D6606D4();
      v23 = sub_29D64A1D0(v21, v22, v27);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_29D5D7000, v14, v15, "[%{public}s] Could not set device headphone notifications. %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v17, -1, -1);
      MEMORY[0x29ED63350](v16, -1, -1);
    }

    else
    {
    }

    result = (*(v3 + 8))(v7, v2);
    v24 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void sub_29D609C28(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D6098F0(v4);
}

id sub_29D609CB4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];

  return v3;
}

uint64_t sub_29D609D18(void *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  return sub_29D609EA4(a1, &selRef__setHeadphoneExposureMeasureLevelsEnabled_error_);
}

void sub_29D609D78(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D609D18(v4);
}

id sub_29D609DE0(void *a1)
{
  v1 = a1;
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];

  return v2;
}

uint64_t sub_29D609E44(void *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  return sub_29D609EA4(a1, &selRef__setHeadphoneExposureNotificationsEnabledOnActiveWatch_error_);
}

uint64_t sub_29D609EA4(void *a1, SEL *a2)
{
  v29[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v4 = sub_29D65F314();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v10 = objc_opt_self();
  v11 = [a1 BOOLValue];
  v29[0] = 0;
  if ([v10 *a2])
  {
    v12 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C710E0]();
  }

  else
  {
    v28 = v29[0];
    v13 = v29[0];
    v14 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v15 = v14;
    v16 = sub_29D65F2F4();
    v17 = sub_29D660204();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v18 = 136446466;
      v20 = sub_29D6607A4();
      v22 = sub_29D64A1D0(v20, v21, v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      swift_getErrorValue();
      v23 = sub_29D6606D4();
      v25 = sub_29D64A1D0(v23, v24, v29);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_29D5D7000, v16, v17, "[%{public}s] Could not set watch headphone notifications. %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v19, -1, -1);
      MEMORY[0x29ED63350](v18, -1, -1);
    }

    else
    {
    }

    result = (*(v5 + 8))(v9, v4);
    v26 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void sub_29D60A1B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D609E44(v4);
}

uint64_t sub_29D60A234(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _UNKNOWN **))
{
  ObjectType = swift_getObjectType();
  v5 = sub_29D65DAF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(ObjectType, &off_2A2432388);
  sub_29D65DAB4();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_29D60A320()
{
  sub_29D605988(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBBC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605A20();
  v35 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605AB8();
  v20 = *(v19 - 8);
  v36 = v19;
  v37 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + qword_2A17AC7F0);
  swift_beginAccess();
  sub_29D60C140(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);

  sub_29D65F8C4();
  swift_endAccess();

  sub_29D60C20C(&qword_2A1A1E778, sub_29D5FEBBC);
  sub_29D65F994();
  (*(v8 + 8))(v12, v7);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v26 = sub_29D6602B4();
  v38 = v26;
  v27 = sub_29D6602A4();
  (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
  sub_29D60C20C(&unk_2A17AC900, sub_29D605A20);
  sub_29D60C0D8();
  v28 = v35;
  sub_29D65F984();
  sub_29D60C1A4(v5, sub_29D605988);

  (*(v14 + 8))(v18, v28);
  swift_allocObject();
  v29 = v34[1];
  swift_unknownObjectWeakInit();
  sub_29D60C20C(&qword_2A17AC770, sub_29D605AB8);
  v30 = v36;
  v31 = sub_29D65F9B4();

  (*(v37 + 8))(v24, v30);
  v32 = *(v29 + qword_2A17AC7F8);
  *(v29 + qword_2A17AC7F8) = v31;
}

void sub_29D60A7C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + qword_2A17AC7E0;
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 8);

    if (v3)
    {
      swift_getObjectType();
      sub_29D65EE14();
      sub_29D65EE94();
    }
  }
}

uint64_t sub_29D60A89C()
{
  v1 = *(v0 + qword_2A17AC7B0 + 8);

  v2 = *(v0 + qword_2A17AC7B8 + 8);

  v3 = *(v0 + qword_2A17AC7C0 + 8);

  v4 = *(v0 + qword_2A17AC7C8 + 8);

  v5 = *(v0 + qword_2A17AC7D0 + 8);

  v6 = *(v0 + qword_2A17AC7D8);

  sub_29D5DBB60(v0 + qword_2A17AC7E0);
  sub_29D5DBB60(v0 + qword_2A17AC7E8);
  v7 = *(v0 + qword_2A17AC7F0);

  v8 = *(v0 + qword_2A17AC7F8);
}

uint64_t sub_29D60A988(uint64_t a1)
{
  v2 = *(a1 + qword_2A17AC7B0 + 8);

  v3 = *(a1 + qword_2A17AC7B8 + 8);

  v4 = *(a1 + qword_2A17AC7C0 + 8);

  v5 = *(a1 + qword_2A17AC7C8 + 8);

  v6 = *(a1 + qword_2A17AC7D0 + 8);

  v7 = *(a1 + qword_2A17AC7D8);

  sub_29D5DBB60(a1 + qword_2A17AC7E0);
  sub_29D5DBB60(a1 + qword_2A17AC7E8);
  v8 = *(a1 + qword_2A17AC7F0);

  v9 = *(a1 + qword_2A17AC7F8);
}

uint64_t sub_29D60AAE8()
{
  v1 = v0 + qword_2A17AC7E0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D60AB38(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_2A17AC7E0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D65EE94();
}

void (*sub_29D60ABA4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17AC7E0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D60AC44;
}

void sub_29D60AC44(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    sub_29D65EE94();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_29D65EE94();
  }

  free(v3);
}

void (*sub_29D60ACD4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29D65EE74();
  return sub_29D60AD5C;
}

void sub_29D60AD5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_29D60ADA8()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_29D607874();

  return v0;
}

char *sub_29D60AE44(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29D65E314();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_2A17AC818) = 0;
  (*(v5 + 16))(v9, a1, v4);
  v10 = objc_allocWithZone(type metadata accessor for HeadphoneNotificationsSpecifierDataSource(0));
  v11 = sub_29D607240(v9);
  *(v2 + qword_2A17AC810) = v11;
  sub_29D60C20C(&qword_2A17AC830, type metadata accessor for HeadphoneNotificationsSpecifierDataSource);
  v12 = v11;
  v13 = sub_29D65ED84();
  *(*&v13[qword_2A17AC810] + qword_2A17AC7E8 + 8) = &off_2A2432370;
  swift_unknownObjectWeakAssign();
  v14 = v13;
  sub_29D656F08();
  v15 = sub_29D65FF24();

  [v14 setTitle_];

  (*(v5 + 8))(a1, v4);
  return v14;
}

uint64_t sub_29D60B05C(uint64_t a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + qword_2A17AC818) = 0;
  result = sub_29D660594();
  __break(1u);
  return result;
}

void sub_29D60B158()
{
  v1 = *(v0 + qword_2A17AC818);
}

id sub_29D60B1B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D60B1F0(uint64_t a1)
{
  v2 = *(a1 + qword_2A17AC818);
}

id sub_29D60B244()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v0 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v1 = sub_29D65FF24();

  v2 = [v0 initWithString_];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(MEMORY[0x29EDC46E8]);
  aBlock[4] = sub_29D60BFD8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D60B5D0;
  aBlock[3] = &unk_2A24323B8;
  v5 = _Block_copy(aBlock);

  v6 = [v4 initWithDescription:v2 didTapLinkedText:v5];

  _Block_release(v5);

  return v6;
}

void sub_29D60B428()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29D60B47C();
  }
}

uint64_t sub_29D60B47C()
{
  v1 = v0;
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_29D65DA74();

  sub_29D5F3928(2u);
  v4 = objc_allocWithZone(sub_29D65E004());
  v5 = sub_29D65DFF4();
  v6 = *(v1 + qword_2A17AC818);
  if (v6)
  {
    v10 = v5;
    v7 = [v6 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 pushViewController:v10 animated:1];
    }
  }

  return MEMORY[0x2A1C71048]();
}

uint64_t sub_29D60B5D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_29D60B614()
{
  v7[1] = *MEMORY[0x29EDCA608];
  if ((sub_29D65E194() & 1) == 0)
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  v0 = objc_opt_self();
  result = [v0 isHeadphoneExposureNotificationsSupportedOnActiveWatch];
  if (result)
  {
    v7[0] = 0;
    result = [v0 isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError_];
    v2 = v7[0];
    if (v7[0])
    {
      swift_willThrow();
      type metadata accessor for HeadphoneNotificationsAvailability();
      v3 = qword_2A17AC050;
      v4 = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = sub_29D65F314();
      sub_29D5DE6EC(v5, qword_2A17AD6F0);
      sub_29D622DF0(v4);

      goto LABEL_7;
    }
  }

LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

id sub_29D60B728()
{
  sub_29D60BFF8(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v5 = sub_29D65DA74();
  v7 = v6;
  v8 = sub_29D65DA74();
  v10 = v9;
  sub_29D65DA74();
  sub_29D60C140(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D661D20;
  v12 = MEMORY[0x29EDC99B0];
  *(v11 + 56) = MEMORY[0x29EDC99B0];
  v13 = sub_29D5E3BCC();
  *(v11 + 32) = v5;
  *(v11 + 40) = v7;
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 64) = v13;
  *(v11 + 72) = v8;
  v76 = v8;
  *(v11 + 80) = v10;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v77 = v10;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65FF34();

  v14 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v15 = sub_29D65FF24();

  v16 = [v14 initWithString_];

  v17 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v18 = v16;
  v19 = [v17 initWithAttributedString_];
  v20 = [v19 string];
  v21 = sub_29D65FF64();
  v23 = v22;

  v80 = v21;
  v81 = v23;
  v78 = v5;
  v79 = v7;
  v24 = sub_29D65DC24();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v74 = v25 + 56;
  v75 = v26;
  v26(v4, 1, 1, v24);
  sub_29D60C02C();
  v27 = sub_29D660454();
  v29 = v28;
  LOBYTE(v5) = v30;
  sub_29D60C1A4(v4, sub_29D60BFF8);

  v31 = v19;
  if ((v5 & 1) == 0)
  {
    v32 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v33 = [v32 fontDescriptorWithSymbolicTraits_];

    v31 = v19;
    if (v33)
    {
      v80 = v27;
      v81 = v29;
      v34 = [v19 string];

      v35 = sub_29D65FF64();
      v37 = v36;

      v78 = v35;
      v79 = v37;
      sub_29D60C080();
      sub_29D60C20C(&unk_2A17AC8D0, sub_29D60C080);
      v38 = sub_29D660424();
      v40 = v39;
      v41 = *MEMORY[0x29EDC7638];
      v31 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
      [v19 addAttribute:v41 value:v31 range:{v38, v40}];
    }
  }

  v42 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v43 = v19;
  v44 = [v42 initWithAttributedString_];
  v45 = [v44 string];
  v46 = sub_29D65FF64();
  v48 = v47;

  v80 = v46;
  v81 = v48;
  v78 = v76;
  v79 = v77;
  v75(v4, 1, 1, v24);
  v49 = sub_29D660454();
  v51 = v50;
  v53 = v52;
  sub_29D60C1A4(v4, sub_29D60BFF8);

  if ((v53 & 1) == 0)
  {
    v54 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v55 = [v54 fontDescriptorWithSymbolicTraits_];

    if (v55)
    {
      v80 = v49;
      v81 = v51;
      v56 = [v44 &off_29F353178];
      v57 = sub_29D65FF64();
      v59 = v58;

      v78 = v57;
      v79 = v59;
      sub_29D60C080();
      sub_29D60C20C(&unk_2A17AC8D0, sub_29D60C080);
      v60 = sub_29D660424();
      v62 = v61;
      v63 = *MEMORY[0x29EDC7638];
      v64 = [objc_opt_self() fontWithDescriptor:v55 size:0.0];
      [v44 addAttribute:v63 value:v64 range:{v60, v62}];
    }
  }

  v65 = objc_allocWithZone(MEMORY[0x29EDC7688]);
  v66 = v44;
  v67 = [v65 init];
  LODWORD(v68) = 1008981770;
  [v67 setHyphenationFactor_];
  v69 = [v66 length];
  v70 = *MEMORY[0x29EDC7650];
  v71 = v67;
  [v66 addAttribute:v70 value:v71 range:{0, v69}];

  v72 = [objc_allocWithZone(MEMORY[0x29EDC46F0]) initWithDescription_];
  return v72;
}

unint64_t sub_29D60BF74()
{
  result = qword_2A17AC848;
  if (!qword_2A17AC848)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC848);
  }

  return result;
}

uint64_t sub_29D60BFE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D60C02C()
{
  result = qword_2A17AC8C0;
  if (!qword_2A17AC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC8C0);
  }

  return result;
}

void sub_29D60C080()
{
  if (!qword_2A17AC8C8)
  {
    v0 = sub_29D660144();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC8C8);
    }
  }
}

unint64_t sub_29D60C0D8()
{
  result = qword_2A17AC768;
  if (!qword_2A17AC768)
  {
    sub_29D5DF448(255, &qword_2A17AC0E8, 0x29EDCA548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC768);
  }

  return result;
}

void sub_29D60C140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D60C1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D60C20C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D60C254@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_29D60E234(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v37 - v7;
  if (a1)
  {
    type metadata accessor for HearingAppPluginDelegate();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();
    v11 = [v10 bundleForClass_];
    v12 = sub_29D65DA74();
    v14 = v13;

    *a2 = v12;
    a2[1] = v14;
    v15 = [v10 bundleForClass_];
    v16 = sub_29D65DA74();
    v18 = v17;

    a2[2] = v16;
    a2[3] = v18;
    a2[4] = 0;
    a2[5] = 0;
    sub_29D65DAE4();
    v19 = sub_29D65DAF4();
    v20 = *(v19 - 8);
    result = (*(v20 + 48))(v8, 1, v19);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_29D60E298(0, v22);
      v24 = *(v23 + 80);
      (*(v20 + 32))(a2 + v24, v8, v19);
      v25 = *MEMORY[0x29EDC15C0];
      v26 = sub_29D65DFD4();
      (*(*(v26 - 8) + 104))(a2 + v24, v25, v26);
      v27 = *MEMORY[0x29EDC15E8];
      v28 = sub_29D65DFE4();
      return (*(*(v28 - 8) + 104))(a2, v27, v28);
    }
  }

  else
  {
    type metadata accessor for HearingAppPluginDelegate();
    v29 = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    v31 = sub_29D65DA74();
    v33 = v32;

    *a2 = v31;
    a2[1] = v33;
    *(a2 + 16) = 0;
    v34 = *MEMORY[0x29EDC1630];
    v35 = sub_29D65DFE4();
    v36 = *(*(v35 - 8) + 104);

    return v36(a2, v34, v35);
  }

  return result;
}

uint64_t sub_29D60C744()
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D60C800()
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D60C8CC()
{
  sub_29D60E3EC(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  *(inited + 32) = [objc_opt_self() audiogramSampleType];
  sub_29D63CEB8(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D60C99C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = a1[5];
  v4 = sub_29D5E32A8(a1, v1);

  return sub_29D60C9EC(v4, v1, v2);
}

uint64_t sub_29D60C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v179 = a2;
  v180 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v9 = *(v8 + 16);
  v178 = v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v170 = (*(a3 + 8))(a2, a3);
  v192 = MEMORY[0x29EDCA190];
  sub_29D60E234(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v176 = v10;
  v11 = sub_29D65DFE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 72);
  v15 = (v13 + 32) & ~v13;
  v174 = v15;
  v175 = v13;
  v16 = swift_allocObject();
  v173 = v16;
  *(v16 + 16) = xmmword_29D663250;
  v17 = v16 + v15;
  *v17 = sub_29D60DBAC();
  *(v17 + 8) = 0;
  v169 = *MEMORY[0x29EDC1608];
  v191 = *(v12 + 104);
  v18 = v17;
  v189 = v11;
  v191(v17);
  v19 = (v17 + v14);
  v20 = v14;
  v188 = v14;
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v187 = objc_opt_self();
  v182 = ObjCClassFromMetadata;
  v22 = [v187 bundleForClass_];
  v186 = "SECTION2_CHART5_VALUE";
  v23 = sub_29D65DA74();
  v25 = v24;

  *v19 = v23;
  v19[1] = v25;
  v26 = v11;
  v27 = v191;
  (v191)(v19, *MEMORY[0x29EDC1610], v26);
  v190 = v12 + 104;
  v28 = v18 + 2 * v20;
  v172 = 2 * v20;
  v29 = [v187 bundleForClass_];
  v183 = 0xD000000000000013;
  v30 = sub_29D65DA74();
  v32 = v31;

  *v28 = v30;
  *(v28 + 8) = v32;
  *(v28 + 16) = 0;
  v181 = *MEMORY[0x29EDC1630];
  v27(v28);
  v33 = v188;
  v177 = 2 * v20 + v188;
  v34 = (v18 + v177);
  v185 = v18;
  v35 = v187;
  v36 = v182;
  v37 = [v187 bundleForClass_];
  v168[1] = 0xD00000000000001ALL;
  v38 = sub_29D65DA74();
  v40 = v39;

  *v34 = v38;
  v34[1] = v40;
  v34[2] = 0;
  v184 = *MEMORY[0x29EDC15D0];
  v191(v34);
  v41 = v18 + 4 * v33;
  v171 = 4 * v33;
  v42 = [v35 bundleForClass_];
  v43 = sub_29D65DA74();
  v45 = v44;

  *v41 = v43;
  *(v41 + 8) = v45;
  *(v41 + 16) = 0;
  v46 = v181;
  v47 = v191;
  (v191)(v41, v181, v189);
  v48 = v185 + 4 * v33 + v188;
  v49 = [v35 bundleForClass_];
  v50 = sub_29D65DA74();
  v52 = v51;

  *v48 = v50;
  *(v48 + 8) = v52;
  *(v48 + 16) = 0;
  v53 = v189;
  v47(v48, v46, v189);
  v54 = v188;
  v55 = v185;
  sub_29D60C254(v170 & 1, (v185 + 6 * v188));
  v56 = 8 * v54;
  v57 = v55 + 7 * v54;
  *v57 = sub_29D60DC9C();
  *(v57 + 8) = 1;
  v47(v57, v169, v53);
  v58 = v47;
  v59 = (v55 + v56);
  v60 = v187;
  v61 = v182;
  v62 = [v187 bundleForClass_];
  v63 = sub_29D65DA74();
  v65 = v64;

  *v59 = v63;
  v59[1] = v65;
  v59[2] = 0;
  v58(v59, v184, v53);
  v66 = v185;
  v67 = v185 + v56 + v188;
  v68 = [v60 bundleForClass_];
  v69 = sub_29D65DA74();
  v71 = v70;

  *v67 = v69;
  *(v67 + 8) = v71;
  *(v67 + 16) = 0;
  v72 = v181;
  (v191)(v67, v181, v189);
  v73 = v66 + 10 * v188;
  v74 = [v60 bundleForClass_];
  v75 = sub_29D65DA74();
  v77 = v76;

  *v73 = v75;
  *(v73 + 8) = v77;
  *(v73 + 16) = 0;
  v78 = v72;
  v79 = v189;
  v80 = v191;
  (v191)(v73, v78, v189);
  v81 = v188;
  v82 = (v185 + 11 * v188);
  v83 = [v60 bundleForClass_];
  v84 = sub_29D65DA74();
  v86 = v85;

  *v82 = v84;
  v82[1] = v86;
  v82[2] = 0;
  (v80)(v82, v184, v79);
  v87 = v81;
  v88 = v185;
  v89 = v185 + 12 * v87;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_29D60C660;
  *(v90 + 24) = 0;
  *v89 = sub_29D60E3E4;
  *(v89 + 8) = v90;
  *(v89 + 16) = 1;
  v91 = *MEMORY[0x29EDC15A8];
  (v80)(v88 + 12 * v87, v91, v79);
  v92 = v88 + 13 * v87;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_29D60C670;
  *(v93 + 24) = 0;
  *v92 = sub_29D60E43C;
  *(v92 + 8) = v93;
  *(v92 + 16) = 1;
  (v80)(v92, v91, v79);
  v94 = v88 + 14 * v87;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_29D60C688;
  *(v95 + 24) = 0;
  *v94 = sub_29D60E43C;
  *(v94 + 8) = v95;
  *(v94 + 16) = 1;
  (v80)(v94, v91, v79);
  v96 = v88 + 15 * v87;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_29D60C6A8;
  *(v97 + 24) = 0;
  *v96 = sub_29D60E43C;
  *(v96 + 8) = v97;
  *(v96 + 16) = 1;
  (v80)(v96, v91, v79);
  v98 = v88 + 16 * v87;
  v99 = swift_allocObject();
  *(v99 + 16) = sub_29D60C6C8;
  *(v99 + 24) = 0;
  *v98 = sub_29D60E43C;
  *(v98 + 8) = v99;
  *(v98 + 16) = 1;
  (v80)(v98, v91, v79);
  v100 = (v88 + 17 * v87);
  v101 = v187;
  v102 = [v187 bundleForClass_];
  v103 = sub_29D65DA74();
  v105 = v104;

  *v100 = v103;
  v100[1] = v105;
  v106 = v189;
  (v80)(v100, *MEMORY[0x29EDC1620], v189);
  v107 = v80;
  sub_29D65A3F0(v173);
  v108 = sub_29D60DD8C();
  sub_29D65A3F0(v108);
  v109 = v174;
  v110 = swift_allocObject();
  v185 = v110;
  *(v110 + 16) = xmmword_29D663260;
  v111 = (v110 + v109);
  v112 = [v101 bundleForClass_];
  v113 = sub_29D65DA74();
  v115 = v114;

  *v111 = v113;
  v111[1] = v115;
  v111[2] = 0;
  v116 = v106;
  (v107)(v111, v184, v106);
  v117 = v111 + v188;
  v176 = v111;
  v118 = v101;
  v119 = v182;
  v120 = [v118 bundleForClass_];
  v121 = sub_29D65DA74();
  v123 = v122;

  *v117 = v121;
  *(v117 + 1) = v123;
  v117[16] = 0;
  v124 = v191;
  (v191)(v117, v181, v116);
  v125 = (v111 + v172);
  v126 = [v187 bundleForClass_];
  v127 = sub_29D65DA74();
  v129 = v128;

  *v125 = v127;
  v125[1] = v129;
  v125[2] = 0;
  (v124)(v125, v184, v116);
  sub_29D60E3EC(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_29D663270;
  v131 = v187;
  v132 = [v187 bundleForClass_];
  v133 = sub_29D65DA74();
  v135 = v134;

  *(v130 + 32) = v133;
  *(v130 + 40) = v135;
  v136 = [v131 bundleForClass_];
  v137 = sub_29D65DA74();
  v139 = v138;

  *(v130 + 48) = v137;
  *(v130 + 56) = v139;
  v140 = [v131 bundleForClass_];
  v141 = sub_29D65DA74();
  v143 = v142;

  *(v130 + 64) = v141;
  *(v130 + 72) = v143;
  v144 = [v131 bundleForClass_];
  v145 = sub_29D65DA74();
  v147 = v146;

  *(v130 + 80) = v145;
  *(v130 + 88) = v147;
  v148 = [v131 bundleForClass_];
  v149 = sub_29D65DA74();
  v151 = v150;

  *(v130 + 96) = v149;
  *(v130 + 104) = v151;
  v152 = [v131 bundleForClass_];
  v153 = sub_29D65DA74();
  v155 = v154;

  *(v130 + 112) = v153;
  *(v130 + 120) = v155;
  v156 = [v131 bundleForClass_];
  v157 = sub_29D65DA74();
  v159 = v158;

  *(v130 + 128) = v157;
  *(v130 + 136) = v159;
  v160 = [v131 bundleForClass_];
  v161 = sub_29D65DA74();
  v163 = v162;

  *(v130 + 144) = v161;
  *(v130 + 152) = v163;
  v165 = v176;
  v164 = v177;
  *(v176 + v177) = v130;
  (v191)(v165 + v164, *MEMORY[0x29EDC15D8], v189);
  sub_29D65A3F0(v185);
  v166 = v192;
  (*(v180 + 8))(v178, v179);
  return v166;
}

id sub_29D60DBAC()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

id sub_29D60DC9C()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D60DD8C()
{
  v0 = *MEMORY[0x29EDBA508];
  v1 = HKCurrentLocaleCountryCodeIfUnknown();
  v2 = *MEMORY[0x29EDBA500];
  v3 = sub_29D65FF64();
  v5 = v4;
  if (v3 == sub_29D65FF64() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_29D660694();

    if ((v8 & 1) == 0)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  sub_29D60E234(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v10 = sub_29D65DFE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D661D90;
  v14 = (v9 + v13);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  *v14 = sub_29D65DA74();
  v14[1] = v15;
  (*(v11 + 104))(v14, *MEMORY[0x29EDC1620], v10);
  return v9;
}

uint64_t sub_29D60DFCC(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_8;
    }
  }

  else if (a1 == 3 || a1 == 4 || a1 == 5)
  {
LABEL_8:
    type metadata accessor for HearingAppPluginDelegate();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v1 = sub_29D65DA74();
  }

  return v1;
}

char *sub_29D60E0FC(uint64_t a1, float a2, float a3)
{
  v6 = HKLocalizedStringForHearingLevelClassification();
  if (v6)
  {
    v7 = v6;
    v8 = sub_29D65FF64();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = sub_29D60DFCC(a1);
  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 hk_hearingHealthKeyColor];
  v16 = [v14 secondarySystemBackgroundColor];
  v17 = 0.0;
  if (a2 > 0.0)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0.0;
  }

  if (v18 > 1.0)
  {
    v18 = 1.0;
  }

  if (a3 > 0.0)
  {
    v17 = a3;
  }

  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  v21[0] = v8;
  v21[1] = v10;
  v21[2] = v11;
  v21[3] = v13;
  v21[4] = 0;
  v21[5] = 0;
  v22 = 1;
  if ((1.0 - v18) < v17)
  {
    v17 = 1.0 - v18;
  }

  v23 = v18;
  v24 = v17;
  v25 = v15;
  v26 = v16;
  v27 = 0x4010000000000000;
  v19 = objc_allocWithZone(type metadata accessor for SoundLevelView());
  return SoundLevelView.init(model:)(v21);
}

void sub_29D60E234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D60E298(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17AC928)
  {
    MEMORY[0x2A1C7C4A8](a1, a2);
    sub_29D60E3EC(255, &qword_2A17AC930, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29D65DFD4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17AC928);
    }
  }
}

void sub_29D60E3EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D60E440@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D65F414();
  v3 = MEMORY[0x29EDC7800];
  a1[3] = v2;
  a1[4] = v3;
  sub_29D5E3C20(a1);
  sub_29D65F3E4();
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D65F3F4();
  v4 = [objc_opt_self() hk_appTintColor];
  v5 = sub_29D65F3D4();
  sub_29D65F3C4();
  return v5(v7, 0);
}

uint64_t sub_29D60E590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

uint64_t sub_29D60E5C0(uint64_t a1)
{
  v2 = sub_29D60EB70();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D60E60C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_29D660694();
  }
}

uint64_t sub_29D60E63C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_29D660724();
  sub_29D65FFA4();
  return sub_29D660744();
}

uint64_t sub_29D60E688()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29D65FFA4();
}