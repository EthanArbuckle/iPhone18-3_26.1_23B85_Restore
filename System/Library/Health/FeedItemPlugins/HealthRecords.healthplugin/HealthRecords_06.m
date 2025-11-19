void *sub_29D53C4FC@<X0>(unint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v76 = a4;
  v79 = a3;
  v80 = a5;
  v7 = sub_29D5B371C();
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v73 = &v73 - v13;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v74 = &v73 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v73 - v16;
  sub_29D53F524(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v19 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v73 - v22;
  v24 = sub_29D5B134C();
  v75 = *(v24 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v24);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v73 - v29;
  MEMORY[0x2A1C7C4A8](v28);
  v32 = &v73 - v31;
  v33 = *a1;
  if (!v33)
  {
    sub_29D5B36CC();
    v46 = sub_29D5B370C();
    v47 = sub_29D5B429C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v81 = v49;
      *v48 = 136315138;
      v50 = sub_29D5B4DFC();
      v52 = sub_29D501890(v50, v51, &v81);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_29D48C000, v46, v47, "[%s] accounts publisher returned nil", v48, 0xCu);
      sub_29D48F668(v49);
      MEMORY[0x29ED5FB80](v49, -1, -1);
      MEMORY[0x29ED5FB80](v48, -1, -1);
    }

    result = (*(v78 + 8))(v11, v77);
    goto LABEL_22;
  }

  v34 = [*&a2[*(type metadata accessor for HealthRecordsGeneratorContext() + 20)] supportsClinicalSharing];
  if (v33 >> 62)
  {
    v35 = sub_29D5B485C();
  }

  else
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (((v35 == 0) & v34) != 1)
  {
    MEMORY[0x2A1C7C4A8](v35);
    *(&v73 - 4) = v79;
    *(&v73 - 3) = a2;
    *(&v73 - 2) = v76;
    result = sub_29D58BA44(sub_29D53FC84, (&v73 - 6), v33);
    v53 = result;
    if (result[2])
    {
      if (!v34)
      {
        goto LABEL_23;
      }

      v54 = sub_29D5B143C();
      sub_29D53CE18(0, v54, v21);

      v55 = v75;
      if ((*(v75 + 48))(v21, 1, v24) != 1)
      {
        v70 = *(v55 + 32);
        v70(v30, v21, v24);
        (*(v55 + 16))(v27, v30, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_29D515230(0, v53[2] + 1, 1, v53);
        }

        v72 = v53[2];
        v71 = v53[3];
        if (v72 >= v71 >> 1)
        {
          v53 = sub_29D515230(v71 > 1, v72 + 1, 1, v53);
        }

        (*(v55 + 8))(v30, v24);
        v53[2] = v72 + 1;
        result = (v70)(v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v72, v27, v24);
        goto LABEL_23;
      }

      sub_29D53FCF8(v21, qword_2A1A19830, MEMORY[0x29EDC3840]);
      v56 = v73;
      sub_29D5B36CC();
      v57 = sub_29D5B370C();
      v58 = sub_29D5B429C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v81 = v60;
        *v59 = 136315138;
        v61 = sub_29D5B4DFC();
        v63 = sub_29D501890(v61, v62, &v81);

        *(v59 + 4) = v63;
        v64 = "[%s] Could not make onboarding tile feed item";
LABEL_20:
        _os_log_impl(&dword_29D48C000, v57, v58, v64, v59, 0xCu);
        sub_29D48F668(v60);
        MEMORY[0x29ED5FB80](v60, -1, -1);
        MEMORY[0x29ED5FB80](v59, -1, -1);
      }
    }

    else
    {

      v56 = v74;
      sub_29D5B36CC();
      v57 = sub_29D5B370C();
      v58 = sub_29D5B429C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v81 = v60;
        *v59 = 136315138;
        v67 = sub_29D5B4DFC();
        v69 = sub_29D501890(v67, v68, &v81);

        *(v59 + 4) = v69;
        v64 = "[%s] failed to make any sharing account feed items";
        goto LABEL_20;
      }
    }

    result = (*(v78 + 8))(v56, v77);
LABEL_22:
    v53 = MEMORY[0x29EDCA190];
    goto LABEL_23;
  }

  v36 = sub_29D5B143C();
  sub_29D53CE18(1, v36, v23);

  v37 = v75;
  if ((*(v75 + 48))(v23, 1, v24) == 1)
  {
    sub_29D53FCF8(v23, qword_2A1A19830, MEMORY[0x29EDC3840]);
    sub_29D5B36CC();
    v38 = sub_29D5B370C();
    v39 = sub_29D5B429C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v81 = v41;
      *v40 = 136315138;
      v42 = sub_29D5B4DFC();
      v44 = sub_29D501890(v42, v43, &v81);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_29D48C000, v38, v39, "[%s] Could not make onboarding tile feed item", v40, 0xCu);
      sub_29D48F668(v41);
      MEMORY[0x29ED5FB80](v41, -1, -1);
      MEMORY[0x29ED5FB80](v40, -1, -1);
    }

    result = (*(v78 + 8))(v17, v77);
    goto LABEL_22;
  }

  v65 = *(v37 + 32);
  v65(v32, v23, v24);
  sub_29D53F524(0, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
  v66 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v53 = swift_allocObject();
  *(v53 + 1) = xmmword_29D5B62A0;
  result = (v65)(v53 + v66, v32, v24);
LABEL_23:
  *v80 = v53;
  return result;
}

uint64_t sub_29D53CE18@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v63 = a2;
  LODWORD(v74) = a1;
  v6 = sub_29D5B11EC();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v67 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B104C();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B134C();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B371C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v61 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v60 = (&v59 - v18);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v59 - v19;
  sub_29D5B36CC();
  v21 = sub_29D5B370C();
  v22 = sub_29D5B429C();
  v23 = os_log_type_enabled(v21, v22);
  v73 = a3;
  v62 = v4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = v14;
    v26 = v13;
    v27 = swift_slowAlloc();
    v76 = v27;
    *v24 = 136315138;
    v28 = sub_29D5B4DFC();
    v30 = sub_29D501890(v28, v29, &v76);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_29D48C000, v21, v22, "%s Making account sharing onboarding tile feed item", v24, 0xCu);
    sub_29D48F668(v27);
    v31 = v27;
    v13 = v26;
    v14 = v25;
    MEMORY[0x29ED5FB80](v31, -1, -1);
    MEMORY[0x29ED5FB80](v24, -1, -1);

    v32 = v25;
  }

  else
  {

    v32 = v14;
  }

  v33 = *(v32 + 1);
  v33(v20, v13);
  sub_29D5B0C0C();
  swift_allocObject();
  v34 = sub_29D5B0BFC();
  if (v74)
  {
    v61 = v14;
    if (qword_2A1A174B0 != -1)
    {
      swift_once();
    }

    v76 = qword_2A1A1A580;
    v77 = *algn_2A1A1A588;
    sub_29D53FCA4();

    v35 = sub_29D5B0BEC();
    v37 = v36;
    v70 = v34;

    v38 = "AddAnotherAccount";
    v39 = 0xD000000000000013;
  }

  else
  {
    v60 = v33;
    if (qword_2A17A39D8 != -1)
    {
      swift_once();
    }

    v76 = qword_2A17ABF08;
    v77 = unk_2A17ABF10;
    sub_29D53FCA4();

    v35 = sub_29D5B0BEC();
    v37 = v40;
    v70 = v34;
    v39 = 0xD000000000000011;

    v38 = "rds24ClinicalSharingGenerator";
  }

  v41 = v38 | 0x8000000000000000;
  sub_29D5B291C();
  sub_29D5B293C();
  v42 = sub_29D5B10AC();
  v43 = sub_29D5B244C();
  v45 = v44;

  v76 = v43;
  v77 = v45;
  if (v74)
  {

    v46 = 0x695765726168735BLL;
    v47 = 0xEB000000005D6874;
  }

  else
  {

    v46 = 0x746F6E416464615BLL;
    v47 = 0xEC0000005D726568;
  }

  MEMORY[0x29ED5E510](v46, v47);

  type metadata accessor for ClinicalSharingOnboardingTileViewController();
  (*(v64 + 104))(v66, *MEMORY[0x29EDC3790], v65);
  sub_29D4F357C(v35, v37);
  sub_29D5B10DC();
  sub_29D5B110C();
  sub_29D4CFFEC(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29D5B62A0;
  *(v48 + 32) = v39;
  *(v48 + 40) = v41;
  v49 = sub_29D5B401C();

  v50 = HKUIJoinStringsForAutomationIdentifier();

  if (v50)
  {
    sub_29D5B3E5C();
  }

  sub_29D5B12EC();
  sub_29D5B132C();
  sub_29D5B122C();
  (*(v68 + 104))(v67, *MEMORY[0x29EDC3808], v69);
  sub_29D5B120C();
  sub_29D5B123C();
  v51 = sub_29D5B14BC();
  v53 = v52;
  v54 = sub_29D5B130C();
  sub_29D59AD10(&v75, v51, v53);

  v54(&v76, 0);
  sub_29D4A96D0(v35, v37);

  v56 = v71;
  v55 = v72;
  v57 = v73;
  (*(v71 + 32))(v73, v12, v72);
  return (*(v56 + 56))(v57, 0, 1, v55);
}

uint64_t sub_29D53D9B0@<X0>(void **a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v53 = a3;
  v49 = a2;
  v4 = sub_29D5B371C();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v50 = &v47 - v7;
  sub_29D53F524(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_29D5B134C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v47 - v16;
  v18 = *a1;
  v19 = sub_29D5B143C();
  sub_29D53DF34(v18, v19, v10);

  v20 = v11;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29D53FCF8(v10, qword_2A1A19830, MEMORY[0x29EDC3840]);
    v21 = v48;
    sub_29D5B36CC();
    v22 = sub_29D5B370C();
    v23 = sub_29D5B429C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54 = v25;
      *v24 = 136315138;
      v26 = sub_29D5B4DFC();
      v28 = sub_29D501890(v26, v27, &v54);
      v20 = v11;

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29D48C000, v22, v23, "%s Failed to make feed item", v24, 0xCu);
      sub_29D48F668(v25);
      MEMORY[0x29ED5FB80](v25, -1, -1);
      MEMORY[0x29ED5FB80](v24, -1, -1);
    }

    (*(v51 + 8))(v21, v52);
    v29 = 1;
    v30 = v53;
  }

  else
  {
    v31 = *(v12 + 32);
    v31(v17, v10, v11);
    sub_29D5B36CC();
    (*(v12 + 16))(v15, v17, v11);
    v32 = sub_29D5B370C();
    v33 = sub_29D5B429C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v48 = v31;
      v35 = v34;
      v47 = swift_slowAlloc();
      v54 = v47;
      *v35 = 136315394;
      v36 = sub_29D5B4DFC();
      LODWORD(v49) = v33;
      v38 = v20;
      v39 = sub_29D501890(v36, v37, &v54);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = sub_29D5B126C();
      v42 = v41;
      (*(v12 + 8))(v15, v38);
      v43 = sub_29D501890(v40, v42, &v54);
      v20 = v38;

      *(v35 + 14) = v43;
      _os_log_impl(&dword_29D48C000, v32, v49, "%s Successfully made feed item: %s", v35, 0x16u);
      v44 = v47;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v44, -1, -1);
      v45 = v35;
      v31 = v48;
      MEMORY[0x29ED5FB80](v45, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v15, v20);
    }

    (*(v51 + 8))(v50, v52);
    v30 = v53;
    v31(v53, v17, v20);
    v29 = 0;
  }

  return (*(v12 + 56))(v30, v29, 1, v20);
}

uint64_t sub_29D53DF34@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v84 = a2;
  v99 = a3;
  v85 = sub_29D5B11EC();
  v82 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85);
  v81 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_29D5B104C();
  v78 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B134C();
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v83 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F524(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v92 = &v76 - v11;
  v93 = type metadata accessor for ClinicalSharingFeedItemData();
  v91 = *(v93 - 8);
  MEMORY[0x2A1C7C4A8](v93);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B0EDC();
  v90 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B371C();
  v97 = *(v17 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v98 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v89 = &v76 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v76 - v22;
  sub_29D5B36CC();
  v24 = a1;
  v25 = sub_29D5B370C();
  v26 = sub_29D5B429C();

  v27 = os_log_type_enabled(v25, v26);
  v96 = v17;
  v87 = v4;
  v88 = v14;
  v86 = v16;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v77 = v13;
    v30 = v29;
    v101[0] = v29;
    *v28 = 136315394;
    v31 = sub_29D5B4DFC();
    v33 = sub_29D501890(v31, v32, v101);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = [v24 identifier];
    sub_29D5B0EBC();

    sub_29D53FD68(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
    v35 = sub_29D5B4C4C();
    v37 = v36;
    (*(v90 + 8))(v16, v14);
    v38 = sub_29D501890(v35, v37, v101);
    v17 = v96;

    *(v28 + 14) = v38;
    _os_log_impl(&dword_29D48C000, v25, v26, "%s Making feed item for account: %s", v28, 0x16u);
    swift_arrayDestroy();
    v39 = v30;
    v13 = v77;
    MEMORY[0x29ED5FB80](v39, -1, -1);
    MEMORY[0x29ED5FB80](v28, -1, -1);
  }

  v40 = *(v97 + 8);
  v40(v23, v17);
  v41 = v24;
  v42 = v92;
  sub_29D513A24(v41, v92);
  if ((*(v91 + 48))(v42, 1, v93) == 1)
  {
    sub_29D53FCF8(v42, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData);
    v43 = v89;
    sub_29D5B36CC();
    v44 = v41;
    v45 = sub_29D5B370C();
    v46 = sub_29D5B427C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v101[0] = v48;
      *v47 = 136315394;
      v49 = sub_29D5B4DFC();
      v51 = sub_29D501890(v49, v50, v101);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      v52 = [v44 identifier];
      v53 = v86;
      sub_29D5B0EBC();

      sub_29D53FD68(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
      v54 = v88;
      v55 = sub_29D5B4C4C();
      v57 = v56;
      (*(v90 + 8))(v53, v54);
      v58 = sub_29D501890(v55, v57, v101);

      *(v47 + 14) = v58;
      _os_log_impl(&dword_29D48C000, v45, v46, "%s Failed to create feed item data for account: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v48, -1, -1);
      MEMORY[0x29ED5FB80](v47, -1, -1);

      v59 = v89;
      v60 = v96;
    }

    else
    {

      v59 = v43;
      v60 = v17;
    }

    v40(v59, v60);
    v74 = 1;
    v72 = v94;
    v73 = v95;
  }

  else
  {
    sub_29D53FDB0(v42, v13, type metadata accessor for ClinicalSharingFeedItemData);
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D53FD68(&qword_2A17A4A28, type metadata accessor for ClinicalSharingFeedItemData);
    v61 = sub_29D5B0BEC();
    v63 = v62;
    v64 = v84;
    sub_29D5B292C();
    type metadata accessor for ClinicalSharingFeedItemViewController();
    (*(v78 + 104))(v80, *MEMORY[0x29EDC36E8], v79);
    sub_29D4F357C(v61, v63);
    v65 = v64;
    v66 = v83;
    sub_29D5B110C();
    (*(v82 + 104))(v81, *MEMORY[0x29EDC3808], v85);
    sub_29D5B120C();
    v67 = sub_29D5B14BC();
    v69 = v68;
    v70 = sub_29D5B130C();
    sub_29D59AD10(&v100, v67, v69);

    v70(v101, 0);

    sub_29D4A96D0(v61, v63);
    sub_29D53FE18(v13, type metadata accessor for ClinicalSharingFeedItemData);
    v72 = v94;
    v71 = v95;
    (*(v94 + 32))(v99, v66, v95);
    v73 = v71;
    v74 = 0;
  }

  return (*(v72 + 56))(v99, v74, 1, v73);
}

uint64_t sub_29D53EC68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v31 = sub_29D5B371C();
  v6 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_29D5B36CC();

  v10 = sub_29D5B370C();
  v11 = sub_29D5B426C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30[0] = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    v15 = sub_29D5B4DFC();
    v17 = sub_29D501890(v15, v16, &v33);
    v30[1] = v3;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v19 = sub_29D5B134C();
    v20 = MEMORY[0x29ED5E610](v9, v19);
    v22 = sub_29D501890(v20, v21, &v33);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_29D48C000, v10, v11, "[%s] computing changes for: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v14, -1, -1);
    v23 = v13;
    a3 = v30[0];
    MEMORY[0x29ED5FB80](v23, -1, -1);
  }

  (*(v6 + 8))(v8, v31);
  v24 = sub_29D5B291C();
  v26 = v25;
  v27 = sub_29D5B143C();
  sub_29D4CFFEC(0, &qword_2A1A16208, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29D5B62A0;
  *(v28 + 32) = v9;
  *(v28 + 40) = v24;
  *(v28 + 48) = v26;
  *(v28 + 56) = v27;
  *(v28 + 64) = -127;
  *a3 = v28;
}

uint64_t sub_29D53EF08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29D5B371C();
  v9 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_29D5B36DC();
  v13 = v12;
  v14 = sub_29D5B370C();
  v15 = sub_29D5B427C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v6;
    v19 = v18;
    v39 = v18;
    *v17 = 136315394;
    v20 = sub_29D5B4DFC();
    v22 = sub_29D501890(v20, v21, &v39);
    v36 = a2;
    v23 = v22;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v38 = v12;
    v24 = v12;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v25 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v26 = sub_29D5B3E7C();
    v28 = sub_29D501890(v26, v27, &v39);

    *(v17 + 14) = v28;
    a2 = v36;
    _os_log_impl(&dword_29D48C000, v14, v15, "%s: Unable to compute desired difference for commit: %s", v17, 0x16u);
    swift_arrayDestroy();
    v29 = v19;
    v6 = v34;
    MEMORY[0x29ED5FB80](v29, -1, -1);
    v30 = v17;
    v5 = v35;
    MEMORY[0x29ED5FB80](v30, -1, -1);
  }

  (*(v9 + 8))(v11, v37);
  v38 = MEMORY[0x29EDCA190];
  sub_29D4CFFEC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D53FD68(&qword_2A1A165D8, sub_29D4B37EC);
  v31 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v31;
  return result;
}

uint64_t sub_29D53F298()
{
  sub_29D53FE18(v0 + OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v1 = OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalSharingGenerator()
{
  result = qword_2A1A187D8;
  if (!qword_2A1A187D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D53F3BC()
{
  result = type metadata accessor for HealthRecordsGeneratorContext();
  if (v1 <= 0x3F)
  {
    result = sub_29D5B13EC();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D53F4A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D53F524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D53F588()
{
  if (!qword_2A1A16528)
  {
    v0 = MEMORY[0x29EDB8AD0];
    sub_29D53F7D4(255, &qword_2A1A165A8, MEMORY[0x29EDB8AD0]);
    sub_29D53F6A4(&qword_2A1A165B0, &qword_2A1A165A8, v0);
    v1 = sub_29D5B3AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16528);
    }
  }
}

void sub_29D53F63C()
{
  if (!qword_2A1A16420)
  {
    sub_29D48F51C(255, &qword_2A1A19640);
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16420);
    }
  }
}

uint64_t sub_29D53F6A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D53F7D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D53F6E8()
{
  if (!qword_2A1A16888)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29D53F7D4(255, &qword_2A1A16738, MEMORY[0x29EDB89F8]);
    sub_29D48F51C(255, &qword_2A1A1A420);
    sub_29D53F6A4(&qword_2A1A16740, &qword_2A1A16738, v0);
    sub_29D5127AC();
    v1 = sub_29D5B395C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16888);
    }
  }
}

void sub_29D53F7D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D53F524(255, &qword_2A1A16410, sub_29D53F63C, MEMORY[0x29EDC9C68]);
    v7 = v6;
    v8 = sub_29D4B3AF4();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D53F87C()
{
  if (!qword_2A1A16E10)
  {
    sub_29D53F6E8();
    sub_29D53F524(255, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    sub_29D53FD68(&qword_2A1A16890, sub_29D53F6E8);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16E10);
    }
  }
}

void sub_29D53F958()
{
  if (!qword_2A1A16B38)
  {
    sub_29D53F6E8();
    sub_29D4CFFEC(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D53FD68(&qword_2A1A16890, sub_29D53F6E8);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16B38);
    }
  }
}

void sub_29D53FA28()
{
  if (!qword_2A1A16D20)
  {
    sub_29D53F958();
    sub_29D4B2D8C();
    sub_29D53FD68(&qword_2A1A16B40, sub_29D53F958);
    sub_29D53FD68(&qword_2A1A16780, sub_29D4B2D8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16D20);
    }
  }
}

void *sub_29D53FB1C@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D53C4FC(a1, (v2 + v6), v8, v9, a2);
}

unint64_t sub_29D53FCA4()
{
  result = qword_2A1A174A8;
  if (!qword_2A1A174A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A174A8);
  }

  return result;
}

uint64_t sub_29D53FCF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D53F524(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D53FD68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D53FDB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D53FE18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for UserDomainConceptFeedItemData()
{
  result = qword_2A1A17E18;
  if (!qword_2A1A17E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D53FEEC()
{
  sub_29D5B1D6C();
  if (v0 <= 0x3F)
  {
    sub_29D4A0664(319, &qword_2A1A164D8, &qword_2A1A162D0);
    if (v1 <= 0x3F)
    {
      sub_29D4B4C4C(319);
      if (v2 <= 0x3F)
      {
        sub_29D4A05F4();
        if (v3 <= 0x3F)
        {
          sub_29D48E5A4(319, &qword_2A1A164A0);
          if (v4 <= 0x3F)
          {
            sub_29D48E5A4(319, &qword_2A1A16268);
            if (v5 <= 0x3F)
            {
              sub_29D48E5A4(319, &qword_2A1A16380);
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

unint64_t sub_29D540038(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x747065636E6F63;
    v6 = 0x656C746974;
    if (a1 != 2)
    {
      v6 = 0x66676E696E61656DLL;
    }

    if (!a1)
    {
      v5 = 0xD000000000000013;
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
    v1 = 0x7073694474696E75;
    v2 = 0x657079547473696CLL;
    if (a1 != 7)
    {
      v2 = 0x6564724F7473696CLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x526E4965756C6176;
    if (a1 != 4)
    {
      v3 = 0x73694465756C6176;
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

uint64_t sub_29D54017C(void *a1)
{
  sub_29D541808(0, &qword_2A17A4A50, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29D499EC0(a1, a1[3]);
  sub_29D5416EC();
  sub_29D5B4DCC();
  v9[15] = 0;
  sub_29D5B1D6C();
  sub_29D542390(&qword_2A17A4120, MEMORY[0x29EDC4098]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for UserDomainConceptFeedItemData();
    v9[14] = 1;
    sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
    sub_29D54186C(&qword_2A17A4A58);
    sub_29D5B4C0C();
    v9[13] = 2;
    sub_29D5B4BCC();
    v9[12] = 3;
    sub_29D5B0E6C();
    sub_29D542390(&qword_2A1A193D8, MEMORY[0x29EDB9BC8]);
    sub_29D5B4BBC();
    v9[11] = 4;
    sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
    sub_29D4DF6D8(&qword_2A17A4340);
    sub_29D5B4BBC();
    v9[10] = 5;
    sub_29D5B4B8C();
    v9[9] = 6;
    sub_29D5B4B8C();
    v9[8] = 7;
    sub_29D5B4BAC();
    v9[7] = 8;
    sub_29D5B4B9C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29D540578()
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v23 = &v22 - v2;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B0E6C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1D6C();
  sub_29D542390(&qword_2A17A4128, MEMORY[0x29EDC4098]);
  sub_29D5B3D9C();
  v13 = type metadata accessor for UserDomainConceptFeedItemData();
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  sub_29D5418C8();
  sub_29D5B3D9C();
  sub_29D5B3EFC();
  sub_29D54198C(v0 + v13[7], v12, sub_29D4B4C4C);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_29D5B4D6C();
    sub_29D542390(&qword_2A17A4068, MEMORY[0x29EDB9BC8]);
    sub_29D5B3D9C();
    (*(v7 + 8))(v9, v6);
  }

  sub_29D54198C(v0 + v13[8], v5, sub_29D4A05F4);
  v15 = v24;
  v14 = v25;
  if ((*(v24 + 48))(v5, 1, v25) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    v16 = v23;
    (*(v15 + 32))(v23, v5, v14);
    sub_29D5B4D6C();
    sub_29D4DC504(&qword_2A17A41C0, &qword_2A17A41C8);
    sub_29D5B3D9C();
    (*(v15 + 8))(v16, v14);
  }

  if (*(v0 + v13[9] + 8))
  {
    sub_29D5B4D6C();
    sub_29D5B3EFC();
  }

  else
  {
    sub_29D5B4D6C();
  }

  if (*(v0 + v13[10] + 8))
  {
    sub_29D5B4D6C();
    sub_29D5B3EFC();
  }

  else
  {
    sub_29D5B4D6C();
  }

  v17 = (v0 + v13[11]);
  if (*(v17 + 8) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    v18 = *v17;
    sub_29D5B4D6C();
    MEMORY[0x29ED5F330](v18);
  }

  v19 = (v0 + v13[12]);
  if (*(v19 + 8) == 1)
  {
    return sub_29D5B4D6C();
  }

  v21 = *v19;
  sub_29D5B4D6C();
  return MEMORY[0x29ED5F330](v21);
}

uint64_t sub_29D540AD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v50 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v51 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  v56 = v7;
  v52 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v48 - v8;
  v10 = sub_29D5B1D6C();
  v53 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v55 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D541808(0, &qword_2A17A4A38, MEMORY[0x29EDC9E80]);
  v58 = v12;
  v54 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v48 - v13;
  v15 = type metadata accessor for UserDomainConceptFeedItemData();
  MEMORY[0x2A1C7C4A8](v15);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D5416EC();
  v57 = v14;
  v18 = v59;
  sub_29D5B4DBC();
  if (v18)
  {
    return sub_29D48F668(a1);
  }

  v19 = v54;
  v20 = v56;
  v59 = v17;
  v68 = 0;
  sub_29D542390(&qword_2A17A4110, MEMORY[0x29EDC4098]);
  v21 = v55;
  sub_29D5B4B6C();
  v22 = v21;
  v23 = v10;
  (*(v53 + 32))(v59, v22, v10);
  v67 = 1;
  sub_29D54186C(&qword_2A17A4A48);
  v24 = v9;
  v25 = v20;
  sub_29D5B4B6C();
  v48[1] = v23;
  v26 = v59;
  (*(v52 + 32))(&v59[v15[5]], v24, v25);
  v66 = 2;
  v55 = 0;
  v27 = sub_29D5B4B2C();
  v48[0] = a1;
  v28 = &v26[v15[6]];
  *v28 = v27;
  v28[1] = v29;
  sub_29D5B0E6C();
  v65 = 3;
  sub_29D542390(&qword_2A1A193D0, MEMORY[0x29EDB9BC8]);
  v30 = v51;
  sub_29D5B4B1C();
  v31 = v15;
  sub_29D5417A0(v30, &v26[v15[7]], sub_29D4B4C4C);
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v64 = 4;
  sub_29D4DF6D8(&qword_2A17A4330);
  v32 = v50;
  sub_29D5B4B1C();
  sub_29D5417A0(v32, &v26[v31[8]], sub_29D4A05F4);
  v63 = 5;
  v33 = sub_29D5B4AEC();
  v34 = v48[0];
  v35 = &v26[v31[9]];
  *v35 = v33;
  v35[1] = v36;
  v62 = 6;
  v37 = sub_29D5B4AEC();
  v38 = &v26[v31[10]];
  *v38 = v37;
  v38[1] = v39;
  v61 = 7;
  v40 = sub_29D5B4B0C();
  v41 = &v59[v31[11]];
  *v41 = v40;
  v41[8] = v42 & 1;
  v60 = 8;
  v43 = sub_29D5B4AFC();
  LOBYTE(v32) = v44;
  (*(v19 + 8))(v57, v58);
  v45 = v59;
  v46 = &v59[v31[12]];
  *v46 = v43;
  v46[8] = v32 & 1;
  sub_29D54198C(v45, v49, type metadata accessor for UserDomainConceptFeedItemData);
  sub_29D48F668(v34);
  return sub_29D541740(v45, type metadata accessor for UserDomainConceptFeedItemData);
}

uint64_t sub_29D541414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D542630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D541448(uint64_t a1)
{
  v2 = sub_29D5416EC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D541484(uint64_t a1)
{
  v2 = sub_29D5416EC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D5414F0()
{
  sub_29D5B4D4C();
  sub_29D540578();
  return sub_29D5B4D9C();
}

uint64_t sub_29D541534()
{
  sub_29D5B4D4C();
  sub_29D540578();
  return sub_29D5B4D9C();
}

uint64_t sub_29D5415A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D542390(&qword_2A17A4880, type metadata accessor for UserDomainConceptFeedItemData);

  return MEMORY[0x2A1C660E0](a1, v4, a2);
}

uint64_t sub_29D541624()
{
  sub_29D542390(&qword_2A17A4880, type metadata accessor for UserDomainConceptFeedItemData);

  return sub_29D5B287C();
}

unint64_t sub_29D5416EC()
{
  result = qword_2A17A4A40;
  if (!qword_2A17A4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A40);
  }

  return result;
}

uint64_t sub_29D541740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5417A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D541808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D5416EC();
    v7 = a3(a1, &type metadata for UserDomainConceptFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D54186C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A1A164D8, &qword_2A1A162D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D5418C8()
{
  result = qword_2A17A4A60;
  if (!qword_2A17A4A60)
  {
    sub_29D4A0664(255, &qword_2A1A164D8, &qword_2A1A162D0);
    sub_29D4DC4A0(&qword_2A17A4A68, &qword_2A1A162D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A60);
  }

  return result;
}

uint64_t sub_29D54198C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_29D5419F4(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v5 = v4;
  v80 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v76 = &v71 - v6;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5422D4(0, &qword_2A17A41E0, sub_29D4A05F4);
  v10 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v79 = &v71 - v11;
  v12 = sub_29D5B0E6C();
  v82 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v78 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v81 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5422D4(0, &qword_2A1A193C8, sub_29D4B4C4C);
  v17 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v71 - v18;
  sub_29D5B1D6C();
  sub_29D542390(&qword_2A17A4130, MEMORY[0x29EDC4098]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v84 != v83)
  {
    return 0;
  }

  v74 = v10;
  v75 = v5;
  v20 = type metadata accessor for UserDomainConceptFeedItemData();
  sub_29D48F51C(0, &qword_2A1A162D0);
  sub_29D4DC4A0(&qword_2A17A4A70, &qword_2A1A162D0);
  if ((sub_29D5B3CFC() & 1) == 0)
  {
    return 0;
  }

  v21 = *(v20 + 24);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  v73 = v20;
  v25 = *(v20 + 28);
  v26 = *(v17 + 48);
  sub_29D54198C(a1 + v25, v19, sub_29D4B4C4C);
  sub_29D54198C(a2 + v25, &v19[v26], sub_29D4B4C4C);
  v27 = v82;
  v28 = *(v82 + 48);
  if (v28(v19, 1, v12) == 1)
  {
    v29 = v28(&v19[v26], 1, v12);
    v30 = v74;
    v31 = v75;
    if (v29 == 1)
    {
      sub_29D541740(v19, sub_29D4B4C4C);
      goto LABEL_13;
    }

LABEL_11:
    v34 = &qword_2A1A193C8;
    v35 = sub_29D4B4C4C;
    v36 = v19;
LABEL_19:
    sub_29D542334(v36, v34, v35);
    return 0;
  }

  v72 = a1;
  v32 = v81;
  sub_29D54198C(v19, v81, sub_29D4B4C4C);
  v33 = v28(&v19[v26], 1, v12);
  v30 = v74;
  v31 = v75;
  if (v33 == 1)
  {
    (*(v27 + 8))(v32, v12);
    goto LABEL_11;
  }

  v37 = v78;
  (*(v27 + 32))(v78, &v19[v26], v12);
  sub_29D542390(&qword_2A17A4070, MEMORY[0x29EDB9BC8]);
  v38 = sub_29D5B3E0C();
  v39 = *(v27 + 8);
  v39(v37, v12);
  v39(v32, v12);
  sub_29D541740(v19, sub_29D4B4C4C);
  a1 = v72;
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v40 = v73[8];
  v41 = *(v30 + 48);
  v42 = v79;
  sub_29D54198C(a1 + v40, v79, sub_29D4A05F4);
  sub_29D54198C(a2 + v40, v42 + v41, sub_29D4A05F4);
  v43 = v80;
  v44 = *(v80 + 48);
  if (v44(v42, 1, v31) == 1)
  {
    if (v44(v42 + v41, 1, v31) == 1)
    {
      sub_29D541740(v42, sub_29D4A05F4);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v45 = v77;
  sub_29D54198C(v42, v77, sub_29D4A05F4);
  if (v44(v42 + v41, 1, v31) == 1)
  {
    (*(v43 + 8))(v45, v31);
LABEL_18:
    v34 = &qword_2A17A41E0;
    v35 = sub_29D4A05F4;
    v36 = v42;
    goto LABEL_19;
  }

  v47 = v76;
  (*(v43 + 32))(v76, v42 + v41, v31);
  sub_29D4DC504(&qword_2A17A41F8, &qword_2A17A4200);
  v48 = sub_29D5B3E0C();
  v49 = *(v43 + 8);
  v49(v47, v31);
  v49(v45, v31);
  sub_29D541740(v42, sub_29D4A05F4);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v50 = v73;
  v51 = v73[9];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  v56 = v50[10];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = v59[1];
  if (v58)
  {
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v60)
  {
    return 0;
  }

  v61 = v50[11];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 8);
  if (v63)
  {
    if (!v65)
    {
      return 0;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  v66 = v50[12];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 8);
  if ((v68 & 1) == 0)
  {
    if (*v67 != *v69)
    {
      v70 = 1;
    }

    return (v70 & 1) == 0;
  }

  return (v70 & 1) != 0;
}

void sub_29D5422D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D542334(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D5422D4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D542390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for UserDomainConceptFeedItemData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserDomainConceptFeedItemData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D54252C()
{
  result = qword_2A17A4A78;
  if (!qword_2A17A4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A78);
  }

  return result;
}

unint64_t sub_29D542584()
{
  result = qword_2A17A4A80;
  if (!qword_2A17A4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A80);
  }

  return result;
}

unint64_t sub_29D5425DC()
{
  result = qword_2A17A4A88;
  if (!qword_2A17A4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A88);
  }

  return result;
}

uint64_t sub_29D542630(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000029D5BCB10 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747065636E6F63 && a2 == 0xE700000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x66676E696E61656DLL && a2 == 0xEE00657461446C75 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x526E4965756C6176 && a2 == 0xEC00000065676E61 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73694465756C6176 && a2 == 0xEC00000079616C70 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7073694474696E75 && a2 == 0xEB0000000079616CLL || (sub_29D5B4C7C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657079547473696CLL && a2 == 0xE800000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6564724F7473696CLL && a2 == 0xE900000000000072)
  {

    return 8;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t type metadata accessor for RecordKindFeedItemViewData()
{
  result = qword_2A17A4A90;
  if (!qword_2A17A4A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5429A8()
{
  result = sub_29D5B2F9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D542A14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D5B2F9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_29D542A7C(unint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0C4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v39 - v9;
  v39 = a1;
  v40 = a2;
  sub_29D5B0C1C();
  sub_29D5B0C3C();
  v11 = *(v5 + 8);
  v11(v10, v4);
  sub_29D4B343C();
  v12 = sub_29D5B475C();
  v11(v8, v4);
  v39 = v12;
  sub_29D5365BC();
  sub_29D49823C();
  v13 = sub_29D5B3DBC();
  v15 = v14;

  v16 = objc_allocWithZone(MEMORY[0x29EDBA050]);
  v17 = sub_29D5B3E1C();
  v18 = [v16 initWithString_];

  v19 = *MEMORY[0x29EDB8FF8];
  v20 = v18;
  CFStringTransform(v20, 0, v19, 0);
  CFStringTransform(v20, 0, *MEMORY[0x29EDB8FF0], 0);

  v39 = v13;
  v40 = v15;
  sub_29D5B3FCC();
  v21 = sub_29D5B3E8C();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    v35 = 0xD000000000000012;

LABEL_8:

    return v35;
  }

  v25 = sub_29D542DC0(1);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = MEMORY[0x29ED5E490](v25, v27, v29, v31);
  v34 = v33;

  v39 = v32;
  v40 = v34;
  MEMORY[0x29ED5E510](0x2E656C637269632ELL, 0xEC0000006C6C6966);
  v35 = v39;
  v36 = sub_29D5B3E1C();
  v37 = [objc_opt_self() systemImageNamed_];

  if (!v37)
  {
    v35 = 0xD000000000000012;
    goto LABEL_8;
  }

  return v35;
}

uint64_t sub_29D542DC0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_29D5B3F1C();

    return sub_29D5B3FDC();
  }

  return result;
}

void *sub_29D542E5C(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_29D54320C();
  swift_allocObject();
  v2[4] = sub_29D5B39DC();
  v2[5] = 0;
  v2[2] = a2;
  v2[3] = a1;
  v6 = a2;
  v7 = sub_29D542EF0();

  v3[5] = v7;

  return v3;
}

uint64_t sub_29D542EF0()
{
  sub_29D5B35DC();
  v1 = *(v0 + 16);
  v2 = [v1 healthStore];
  v3 = sub_29D5B35CC();
  sub_29D5B364C();
  v4 = [v1 healthStore];
  sub_29D5B35EC();

  v5 = v1;
  v6 = [v5 healthStore];
  sub_29D5B243C();
  swift_allocObject();
  sub_29D5B241C();
  swift_allocObject();
  swift_weakInit();

  v7 = [v5 healthStore];
  v8 = [objc_opt_self() medicalRecordTypes];
  sub_29D48F51C(0, &qword_2A1A19660);
  sub_29D5B402C();

  v9 = sub_29D5B424C();

  return v9;
}

uint64_t sub_29D5430C0(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_29D543200(a1);
    sub_29D5B39BC();
  }

  return result;
}

uint64_t sub_29D543158()
{
  if (*(v0 + 40))
  {

    sub_29D5B1EDC();
  }

  return swift_deallocClassInstance();
}

void sub_29D54320C()
{
  if (!qword_2A1A16638)
  {
    sub_29D543274();
    v0 = sub_29D5B39CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16638);
    }
  }
}

void sub_29D543274()
{
  if (!qword_2A1A19598)
  {
    sub_29D5432CC();
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19598);
    }
  }
}

void sub_29D5432CC()
{
  if (!qword_2A1A195A0)
  {
    sub_29D54333C();
    sub_29D4B3AF4();
    v0 = sub_29D5B4DAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A195A0);
    }
  }
}

void sub_29D54333C()
{
  if (!qword_2A1A19648)
  {
    sub_29D48F51C(255, &qword_2A1A19650);
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19648);
    }
  }
}

id HealthRecordsTabGroup.__allocating_init(title:image:identifier:children:viewControllerProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = sub_29D5B3E1C();

  v14 = sub_29D5B3E1C();

  sub_29D48F51C(0, &qword_2A1A16290);
  v15 = sub_29D5B401C();

  if (a7)
  {
    v19[4] = a7;
    v19[5] = a8;
    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 1107296256;
    v19[2] = sub_29D490208;
    v19[3] = &unk_2A2429B70;
    v16 = _Block_copy(v19);
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_allocWithZone(v9) initWithTitle:v13 image:a3 identifier:v14 children:v15 viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

id HealthRecordsTabGroup.__allocating_init(title:image:identifier:viewControllerProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_29D5B3E1C();

  v13 = sub_29D5B3E1C();

  if (a6)
  {
    v17[4] = a6;
    v17[5] = a7;
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 1107296256;
    v17[2] = sub_29D490208;
    v17[3] = &unk_2A2429B98;
    v14 = _Block_copy(v17);
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(v8) initWithTitle:v12 image:a3 identifier:v13 viewControllerProvider:v14];
  _Block_release(v14);

  return v15;
}

id sub_29D543834(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_29D54386C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v100 = a2;
  v105 = a3;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D48F2B4(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v82 - v6;
  v8 = sub_29D5B2A7C();
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v94 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F2B4(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v4);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v99 = v82 - v11;
  v12 = sub_29D5B0EDC();
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v98 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = v82 - v16;
  v97 = v18;
  MEMORY[0x2A1C7C4A8](v15);
  v101 = v82 - v19;
  sub_29D48F2B4(0, &qword_2A1A17308, MEMORY[0x29EDC2A90], v4);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v22 = v82 - v21;
  v23 = sub_29D5B33CC();
  v104 = *(v23 - 8);
  v24 = *(v104 + 64);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v26 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = v82 - v27;
  v29 = *a1;
  result = [*a1 userData];
  if (!result)
  {
    v36 = 0;
    v37 = v105;
    goto LABEL_13;
  }

  v93 = v17;
  v92 = v7;
  v31 = result;
  v32 = sub_29D5B0D7C();
  v34 = v33;

  sub_29D4F357C(v32, v34);
  sub_29D545AE4();
  v35 = v108;
  sub_29D5B2F2C();
  if (!v35)
  {
    v90 = v32;
    v91 = v34;
    v108 = 0;
    v38 = v104;
    (*(v104 + 56))(v22, 0, 1, v23);
    v39 = *(v38 + 32);
    v89 = (v38 + 32);
    v88 = v39;
    (v39)(v28, v22, v23);
    v40 = v99;
    sub_29D5B33BC();
    v41 = v102;
    v42 = v103;
    if (v102[6](v40, 1, v103) == 1)
    {
      (*(v38 + 8))(v28, v23);
      sub_29D4A96D0(v90, v91);
      result = sub_29D48F4AC(v40, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
      v36 = 0;
      v37 = v105;
      goto LABEL_13;
    }

    v85 = v41[4];
    v86 = v41 + 4;
    v85(v101, v40, v42);
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = v42;
    (*(v38 + 16))(v26, v28, v23);
    v45 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    *(v46 + 24) = v29;
    v99 = v46;
    v87 = v23;
    (v88)(v46 + v45, v26, v23);
    v83 = v102[2];
    v47 = v28;
    v48 = v93;
    v83(v93, v101, v44);
    v49 = v29;
    v84 = v49;

    v82[1] = sub_29D5B33AC();
    v50 = v94;
    v88 = v47;
    sub_29D5B337C();
    v89 = sub_29D5B2A3C();
    (*(v95 + 8))(v50, v96);
    v96 = [v49 uniqueIdentifier];
    v51 = type metadata accessor for HealthRecordsAccountsTab(0);
    v52 = objc_allocWithZone(v51);
    v53 = OBJC_IVAR____TtC13HealthRecords24HealthRecordsAccountsTab_accountIconProvider;
    sub_29D48F51C(0, &qword_2A17A4AD8);
    sub_29D5B445C();
    sub_29D5B208C();
    swift_allocObject();
    *&v52[v53] = sub_29D5B206C();
    v54 = v48;
    v55 = v48;
    v56 = v103;
    v57 = v83;
    v83(&v52[OBJC_IVAR____TtC13HealthRecords24HealthRecordsAccountsTab_accountId], v54, v103);
    v58 = sub_29D5B3E1C();

    aBlock[4] = sub_29D545B3C;
    aBlock[5] = v99;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D490208;
    aBlock[3] = &unk_2A2429C10;
    v59 = _Block_copy(aBlock);

    v106.receiver = v52;
    v106.super_class = v51;
    v60 = v96;
    v61 = objc_msgSendSuper2(&v106, sel_initWithTitle_image_identifier_viewControllerProvider_, v58, v89, v96, v59);
    _Block_release(v59);

    v62 = sub_29D5B410C();
    v63 = v92;
    (*(*(v62 - 8) + 56))(v92, 1, 1, v62);
    v64 = v98;
    v57(v98, v55, v56);
    sub_29D5B40EC();
    v65 = v61;
    v66 = sub_29D5B40DC();
    v67 = v102;
    v68 = (*(v102 + 80) + 40) & ~*(v102 + 80);
    v69 = swift_allocObject();
    v70 = MEMORY[0x29EDCA390];
    v69[2] = v66;
    v69[3] = v70;
    v69[4] = v65;
    v85(v69 + v68, v64, v56);
    sub_29D544E04(0, 0, v63, &unk_29D5BA180, v69);

    v71 = v67[1];
    (v71)(v93, v56);
    v36 = v65;
    v72 = [v84 baseAutomationIdentifier];
    v73 = v91;
    if (v72)
    {
      v74 = v72;
      v102 = v71;
      v75 = v91;
      v77 = v104;
      v76 = v105;
      v78 = v88;
    }

    else
    {
      sub_29D48F410(0, &qword_2A1A1A398);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_29D5B5E20;
      *(v79 + 32) = 6447444;
      *(v79 + 40) = 0xE300000000000000;
      v78 = v88;
      *(v79 + 48) = sub_29D5B33AC();
      *(v79 + 56) = v80;
      v81 = sub_29D5B401C();

      v74 = HKUIJoinStringsForAutomationIdentifier();

      if (!v74)
      {
        v77 = v104;
        v37 = v105;
        goto LABEL_12;
      }

      v102 = v71;
      v75 = v73;
      v77 = v104;
      v76 = v105;
    }

    sub_29D5B3E5C();

    v74 = sub_29D5B3E1C();

    v37 = v76;
    v73 = v75;
    v71 = v102;
LABEL_12:
    [v36 setAccessibilityIdentifier_];

    [v36 setAllowsHiding_];

    sub_29D4A96D0(v90, v73);
    (v71)(v101, v103);
    result = (*(v77 + 8))(v78, v87);
    goto LABEL_13;
  }

  sub_29D4A96D0(v32, v34);
  (*(v104 + 56))(v22, 1, 1, v23);
  result = sub_29D48F4AC(v22, &qword_2A1A17308, MEMORY[0x29EDC2A90]);
  v36 = 0;
  v37 = v105;
LABEL_13:
  *v37 = v36;
  return result;
}

id sub_29D5443BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_29D5B33CC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B32CC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v49 = &v46 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v47 = v14;
    v48 = v13;
    v46 = a3;
    v21 = [a3 actionHandlerClassName];
    if (v21)
    {
      v22 = v21;
      v23 = NSClassFromString(v21);

      if (v23)
      {
        ObjCClassMetadata = swift_getObjCClassMetadata();
        if (swift_conformsToProtocol2())
        {
          if (ObjCClassMetadata)
          {
            v25 = [v20 tabBarController];
            if (v25)
            {
              v26 = v25;
              v51 = ObjCClassMetadata;
              v27 = v46;
              v28 = [v46 objectID];
              v53 = 0;
              memset(v52, 0, sizeof(v52));
              v29 = [v27 actionHandlerUserData];
              if (v29)
              {
                v30 = v29;
                sub_29D5B0D7C();
              }

              v40 = v20;
              sub_29D5B2CFC();

              v41 = v26;
              v42 = v49;
              sub_29D5B32BC();
              v44 = v47;
              v43 = v48;
              (*(v47 + 16))(v17, v42, v48);
              sub_29D5B30EC();
              v45 = sub_29D5B2D6C();

              (*(v44 + 8))(v42, v43);
              return v45;
            }
          }
        }
      }
    }
  }

  sub_29D5B36DC();
  (*(v7 + 16))(v9, a4, v6);
  v31 = sub_29D5B370C();
  v32 = sub_29D5B427C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v52[0] = v34;
    *v33 = 136315138;
    v35 = sub_29D5B33AC();
    v37 = v36;
    (*(v7 + 8))(v9, v6);
    v38 = sub_29D501890(v35, v37, v52);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_29D48C000, v31, v32, "No action handler for %s", v33, 0xCu);
    sub_29D48F668(v34);
    MEMORY[0x29ED5FB80](v34, -1, -1);
    MEMORY[0x29ED5FB80](v33, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  (*(v50 + 8))(v12, v51);
  return [objc_allocWithZone(MEMORY[0x29EDC7DA8]) init];
}

uint64_t sub_29D544950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = sub_29D5B40EC();
  v5[4] = sub_29D5B40DC();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_29D544A10;

  return sub_29D5450E8(a5);
}

uint64_t sub_29D544A10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  v5 = sub_29D5B40CC();
  if (v1)
  {
    v6 = sub_29D544C10;
  }

  else
  {
    v6 = sub_29D544B70;
  }

  return MEMORY[0x2A1C73D48](v6, v5, v4);
}

uint64_t sub_29D544B70()
{
  v1 = v0[6];

  if (v1)
  {
    v2 = v0[6];
    v3 = v0[2];
    v4 = sub_29D544C74();

    [v3 setImage_];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_29D544C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D544C74()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7AB8]) initWithSize_];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  __asm { FMOV            V0.2D, #25.0 }

  *(v2 + 24) = _Q0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_29D545D3C;
  *(v8 + 24) = v2;
  v13[4] = sub_29D545D58;
  v13[5] = v8;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D5459BC;
  v13[3] = &unk_2A2429CB0;
  v9 = _Block_copy(v13);
  v10 = v0;

  v11 = [v1 imageWithActions_];

  _Block_release(v9);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if ((v1 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D544E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29D48F2B4(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v22 - v9;
  sub_29D545CA8(a3, v22 - v9);
  v11 = sub_29D5B410C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_29D48F4AC(v10, &unk_2A1A19450, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29D5B40FC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_29D5B40CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_29D5B3EAC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_29D48F4AC(a3, &unk_2A1A19450, MEMORY[0x29EDCA398]);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29D48F4AC(a3, &unk_2A1A19450, MEMORY[0x29EDCA398]);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_29D5450E8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_29D5B1A1C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_29D5B1A2C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_29D48F2B4(0, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68]);
  v2[11] = swift_task_alloc();
  v5 = sub_29D5B1A6C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = sub_29D5B40EC();
  v2[16] = sub_29D5B40DC();
  v2[17] = sub_29D5B40DC();
  v6 = sub_29D5B40CC();
  v2[18] = v6;
  v2[19] = v7;

  return MEMORY[0x2A1C73D48](sub_29D545334, v6, v7);
}

uint64_t sub_29D545334()
{
  v1 = v0;
  (*(v0[9] + 104))(v0[10], *MEMORY[0x29EDC3EC8], v0[8]);
  v2 = swift_task_alloc();
  v1[20] = v2;
  *v2 = v1;
  v2[1] = sub_29D545438;
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[3];

  return MEMORY[0x2A1C65D58](v3, v5, v4);
}

uint64_t sub_29D545438()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 152);
  v6 = *(v1 + 144);

  return MEMORY[0x2A1C73D48](sub_29D5455E8, v6, v5);
}

uint64_t sub_29D5455E8()
{

  v1 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5456A0, v1, v0);
}

uint64_t sub_29D5456A0()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29D48F4AC(v0[11], &qword_2A17A4430, MEMORY[0x29EDC3EE0]);
    v4 = 0;
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    sub_29D5B1A3C();
    LODWORD(v7) = (*(v6 + 88))(v5, v7);
    LODWORD(v6) = *MEMORY[0x29EDC3EC0];
    v8 = sub_29D5B1A5C();
    v9 = v8;
    if (v7 == v6)
    {
      v0[2] = 0;
      v4 = [v8 hr:v0 + 2 imageWithWhiteBackground:?];

      v10 = v0[2];
      if (v4)
      {
        v11 = *(v0[13] + 8);
        v12 = v10;
        v11(v0[14], v0[12]);
      }

      else
      {
        v16 = v0[13];
        v17 = v10;
        v18 = sub_29D5B0D2C();

        swift_willThrow();
        v4 = sub_29D5B1A5C();
        (*(v16 + 8))(v0[14], v0[12]);
      }
    }

    else
    {
      v14 = v0[6];
      v13 = v0[7];
      v15 = v0[5];
      (*(v0[13] + 8))(v0[14], v0[12]);
      (*(v14 + 8))(v13, v15);
      v4 = v9;
    }
  }

  v19 = v0[1];

  return v19(v4);
}

void sub_29D5459BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_29D545A48()
{
  result = sub_29D5B0EDC();
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

unint64_t sub_29D545AE4()
{
  result = qword_2A17A4AD0;
  if (!qword_2A17A4AD0)
  {
    sub_29D5B33CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4AD0);
  }

  return result;
}

id sub_29D545B3C(uint64_t a1)
{
  v3 = *(sub_29D5B33CC() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_29D5443BC(a1, v4, v5, v6);
}

uint64_t sub_29D545BB0(uint64_t a1)
{
  v4 = *(sub_29D5B0EDC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D544950(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_29D545CA8(uint64_t a1, uint64_t a2)
{
  sub_29D48F2B4(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_29D545D98()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *sub_29D545DC0()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_29D545DF8()
{
  v1 = qword_2A17A4AE0;
  v2 = *(v0 + qword_2A17A4AE0);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A4AE0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAxis_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D545E94()
{
  v1 = qword_2A17A4AE8;
  v2 = *(v0 + qword_2A17A4AE8);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A4AE8);
  }

  else
  {
    v4 = sub_29D545EF4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D545EF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D48F51C(0, &unk_2A1A19440);
  v1 = sub_29D5B458C();
  [v0 setFont_];

  v2 = sub_29D5B3E1C();
  [v0 setText_];

  v3 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  return v0;
}

uint64_t sub_29D54600C(uint64_t a1)
{
  v3 = sub_29D5B1BDC();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_2A17ABF78;
  result = sub_29D4D9D64(a1, *(v1 + qword_2A17ABF78));
  if ((result & 1) == 0)
  {
    v55 = v3;
    v9 = sub_29D545DF8();
    v10 = [v9 arrangedSubviews];

    sub_29D48F51C(0, &qword_2A17A43C0);
    v11 = sub_29D5B402C();

    v53 = v7;
    v54 = v6;
    v56 = v4;
    if (v11 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
    {
      v58 = qword_2A17A4AE0;
      if (!i)
      {
        break;
      }

      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x29ED5EF30](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        [*(v1 + v58) removeArrangedSubview_];
        [v15 removeFromSuperview];

        ++v13;
        if (v16 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_13:

    v17 = v1;
    v18 = sub_29D545E94();
    v19 = v56 + 104;
    v20 = *(v56 + 104);
    v21 = v54;
    v20(v54, *MEMORY[0x29EDC3FF0], v55);
    v52 = sub_29D5B1C0C();
    swift_allocObject();
    sub_29D5B1BEC();
    v22 = v53;
    sub_29D5B1BFC();

    v23 = sub_29D5B3E1C();

    [v18 setText_];

    v24 = v17;
    v25 = *(v17 + v22);
    v26 = *(v25 + 16);
    if (v26 >= 0xA)
    {
      v27 = 10;
    }

    else
    {
      v27 = *(v25 + 16);
    }

    v28 = 0x29EDC7000uLL;
    v29 = 0x1FB2FA000uLL;
    v30 = &off_29F351000;
    if (v26)
    {
      v50 = v20;
      v51 = v25;
      v31 = *MEMORY[0x29EDC8118];
      v56 = v19;
      v57 = v31;
      v32 = v25 + 40;
      v49 = v27;
      v33 = v27;
      v34 = v58;
      do
      {
        v35 = v28;
        v36 = objc_allocWithZone(*(v28 + 2872));

        v37 = [v36 init];
        [v37 setTranslatesAutoresizingMaskIntoConstraints_];
        sub_29D48F51C(0, &unk_2A1A19440);
        v38 = sub_29D5B458C();
        [v37 setFont_];

        v39 = sub_29D5B3E1C();
        [v37 setText_];

        v40 = [objc_opt_self() secondaryLabelColor];
        [v37 setTextColor_];

        [*(v24 + v34) addArrangedSubview_];

        v28 = v35;
        v32 += 16;
        --v33;
      }

      while (v33);
      v21 = v54;
      v41 = *(*(v24 + v53) + 16);
      v42 = v55;
      v20 = v50;
      v30 = &off_29F351000;
      v29 = 0x1FB2FA000;
      v27 = v49;
    }

    else
    {
      v41 = 0;
      v42 = v55;
    }

    if (v41 - v27 >= 1)
    {
      v43 = [objc_allocWithZone(*(v28 + 2872)) (v29 + 2936)];
      v57 = v24;
      v44 = v43;
      [v43 setTranslatesAutoresizingMaskIntoConstraints_];
      sub_29D48F51C(0, &unk_2A1A19440);
      v45 = sub_29D5B458C();
      [v44 v30[329]];

      v20(v21, *MEMORY[0x29EDC3FE8], v42);
      swift_allocObject();
      sub_29D5B1BEC();
      sub_29D5B1BFC();

      v46 = sub_29D5B3E1C();

      [v44 setText_];

      v47 = [objc_opt_self() secondaryLabelColor];
      [v44 setTextColor_];

      v48 = *(v57 + v58);
      [v48 addArrangedSubview_];
    }
  }

  return result;
}

void sub_29D546600(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for SharedConceptComboTileViewController();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_29D546668();
  sub_29D54676C();
  sub_29D546D54();
}

void sub_29D546668()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  [v1 addSubview_];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_29D545E94();
  [v4 addSubview_];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_29D545DF8();
  [v7 addSubview_];
}

void sub_29D54676C()
{
  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D5B8F10;
  v2 = *&v0[qword_2A17ABF70];
  v3 = [v2 leadingAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = [v2 trailingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 trailingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v12;
  v13 = [v2 topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v1 + 48) = v17;
  v18 = sub_29D545E94();
  v19 = [v18 leadingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:14.0];
  *(v1 + 56) = v23;
  v24 = qword_2A17A4AE8;
  v25 = [*&v0[qword_2A17A4AE8] trailingAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = [v26 trailingAnchor];

  v29 = [v25 constraintEqualToAnchor:v28 constant:16.0];
  *(v1 + 64) = v29;
  v30 = [*&v0[v24] topAnchor];
  v31 = [v2 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:18.0];

  *(v1 + 72) = v32;
  v33 = sub_29D545DF8();
  v34 = [v33 leadingAnchor];

  v35 = [v0 view];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor:v37 constant:14.0];
  *(v1 + 80) = v38;
  v39 = qword_2A17A4AE0;
  v40 = [*&v0[qword_2A17A4AE0] trailingAnchor];
  v41 = [v0 view];
  if (!v41)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v40 constraintEqualToAnchor:v43 constant:16.0];
  *(v1 + 88) = v44;
  v45 = [*&v0[v39] topAnchor];
  v46 = [*&v0[v24] bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:4.0];

  *(v1 + 96) = v47;
  v48 = [*&v0[v39] bottomAnchor];
  v49 = [v0 view];
  if (!v49)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v50 = v49;
  v51 = objc_opt_self();
  v52 = [v50 bottomAnchor];

  v53 = [v48 constraintEqualToAnchor:v52 constant:-12.0];
  *(v1 + 104) = v53;
  sub_29D48F51C(0, &qword_2A17A3F80);
  v54 = sub_29D5B401C();

  [v51 activateConstraints_];
}

uint64_t sub_29D546D54()
{
  v1 = v0;
  v48 = sub_29D5B200C();
  v47 = *(v48 - 1);
  MEMORY[0x2A1C7C4A8](v48);
  v46 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D547B8C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v46 - v4;
  v51 = sub_29D5B1BCC();
  v50 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D547B8C(0, &qword_2A17A4B00, type metadata accessor for SharedConceptComboFeedItemData);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for SharedConceptComboFeedItemData(0);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDCA1E8];
  v15 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D547BE0(v1 + v15, v9, &qword_2A17A4B00, type metadata accessor for SharedConceptComboFeedItemData);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_29D547CB0(v9, &qword_2A17A4B00, type metadata accessor for SharedConceptComboFeedItemData);
  }

  sub_29D547C4C(v9, v13);
  sub_29D5B1CBC();
  v17 = sub_29D5B1C8C();
  v18 = *((*v14 & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D547BE0(v1 + v18, &v56, &qword_2A1A19460, sub_29D4A60E8);
  v19 = *(&v57 + 1);
  if (*(&v57 + 1))
  {
    v20 = sub_29D499EC0(&v56, *(&v57 + 1));
    v21 = *(v19 - 8);
    MEMORY[0x2A1C7C4A8](v20);
    v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v23);
    v24 = sub_29D5B314C();
    (*(v21 + 8))(v23, v19);
    v25 = sub_29D5B1C9C();

    sub_29D48F668(&v56);
    v26 = [v25 dateCache];

    v27 = *MEMORY[0x29EDC4068];
    v28 = sub_29D5B1D6C();
    v29 = v49;
    (*(*(v28 - 8) + 104))(v49, v27, v28);
    (*(v50 + 104))(v29, *MEMORY[0x29EDC3F80], v51);
    v30 = sub_29D5B0EFC();
    (*(*(v30 - 8) + 56))(v5, 1, 1, v30);
    v31 = v46;
    sub_29D5B1FFC();
    v32 = sub_29D5B2A0C();
    v34 = v33;
    (*(v47 + 8))(v31, v48);
    sub_29D547CB0(v5, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v35 = sub_29D5B0DEC();
    v48 = v26;
    v36 = HKMostRecentSampleEndDateText();

    if (v36)
    {
      v37 = sub_29D5B3E5C();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v40 = v49;
    v41 = sub_29D5B1AFC();
    v42 = sub_29D5B1B9C();
    *&v56 = v32;
    *(&v56 + 1) = v34;
    *&v57 = v37;
    *(&v57 + 1) = v39;
    *&v58 = v41;
    *(&v58 + 1) = v42;
    v59 = 0;
    v54 = &type metadata for TitleViewData;
    v55 = sub_29D547D0C();
    v43 = swift_allocObject();
    v53 = v43;
    v44 = v57;
    *(v43 + 16) = v56;
    *(v43 + 32) = v44;
    *(v43 + 48) = v58;
    *(v43 + 64) = v59;
    sub_29D547D60(&v56, v52);
    sub_29D5B237C();
    v45 = *(v1 + qword_2A17ABF78);
    *(v1 + qword_2A17ABF78) = *&v13[*(v10 + 20)];

    sub_29D54600C(v45);

    sub_29D547D98(&v56);

    (*(v50 + 8))(v40, v51);
    return sub_29D547DC8(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D5474C4(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D547BE0(v2 + v4, v22, &qword_2A1A19460, sub_29D4A60E8);
  v6 = v23;
  if (v23)
  {
    v7 = sub_29D499EC0(v22, v23);
    v8 = *(v6 - 8);
    MEMORY[0x2A1C7C4A8](v7);
    v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v10);
    v11 = sub_29D5B314C();
    (*(v8 + 8))(v10, v6);
    v12 = sub_29D5B423C();

    v13 = objc_allocWithZone(type metadata accessor for LabListViewController());
    v14 = sub_29D585CA0(v12);

    sub_29D48F668(v22);
    sub_29D5104F8(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = sub_29D499EC0(v22, v23);
      v17 = *(v15 - 8);
      MEMORY[0x2A1C7C4A8](v16);
      v19 = &v21[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v17 + 16))(v19);
      v20 = sub_29D5B4C6C();
      (*(v17 + 8))(v19, v15);
      sub_29D48F668(v22);
    }

    else
    {
      v20 = 0;
    }

    [v2 showViewController:v14 sender:v20];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D547788(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = qword_2A17ABF70;
  *&v3[v6] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  *&v3[qword_2A17A4AE0] = 0;
  *&v3[qword_2A17A4AE8] = 0;
  *&v3[qword_2A17ABF78] = MEMORY[0x29EDCA190];
  if (a2)
  {
    v7 = sub_29D5B3E1C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for SharedConceptComboTileViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_29D547880(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D547788(v5, v7, a4);
}

id sub_29D5478E0(void *a1)
{
  v3 = qword_2A17ABF70;
  *&v1[v3] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  *&v1[qword_2A17A4AE0] = 0;
  *&v1[qword_2A17A4AE8] = 0;
  *&v1[qword_2A17ABF78] = MEMORY[0x29EDCA190];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SharedConceptComboTileViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_29D5479D4()
{
}

id sub_29D547A34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedConceptComboTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D547A6C(uint64_t a1)
{
}

uint64_t type metadata accessor for SharedConceptComboTileViewController()
{
  result = qword_2A17A4AF0;
  if (!qword_2A17A4AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D547B8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D547BE0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D547B8C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D547C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedConceptComboFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D547CB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D547B8C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D547D0C()
{
  result = qword_2A17A4B08;
  if (!qword_2A17A4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4B08);
  }

  return result;
}

uint64_t sub_29D547DC8(uint64_t a1)
{
  v2 = type metadata accessor for SharedConceptComboFeedItemData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_29D547E24(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D547E40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_29D547E88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D547EE8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SharedConceptFeedItemData(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x29EDCA190];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_29D554DF4(a3 + v15 + v16 * v13, v12, type metadata accessor for SharedConceptFeedItemData);
      v17 = a1(v12);
      if (v3)
      {
        sub_29D554E5C(v12, type metadata accessor for SharedConceptFeedItemData);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_29D553E7C(v12, v24, type metadata accessor for SharedConceptFeedItemData);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D4C6BC0(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_29D4C6BC0(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_29D553E7C(v24, v14 + v15 + v20 * v16, type metadata accessor for SharedConceptFeedItemData);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_29D554E5C(v12, type metadata accessor for SharedConceptFeedItemData);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_29D548174(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x29EDCA190];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x29ED5EF30](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_29D5B498C();
        sub_29D5B49BC();
        v4 = v15;
        sub_29D5B49CC();
        sub_29D5B499C();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x29EDCA190];
LABEL_20:

  return v12;
}

char *sub_29D548378(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v37 = a2;
  sub_29D554D90(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_29D5B134C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v36 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v32 = &v29 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x29EDCA190];
  }

  v17 = *(a4(0) - 8);
  v30 = v12;
  v34 = (v12 + 32);
  v35 = (v12 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v33 = *(v17 + 72);
  v19 = MEMORY[0x29EDCA190];
  v31 = a1;
  while (1)
  {
    v20 = MEMORY[0x29ED5F4B0]();
    a1(v18);
    if (v4)
    {
      break;
    }

    objc_autoreleasePoolPop(v20);
    if ((*v35)(v10, 1, v11) == 1)
    {
      sub_29D5528C0(v10, qword_2A1A19830, MEMORY[0x29EDC3840]);
    }

    else
    {
      v21 = v11;
      v22 = *v34;
      v23 = v32;
      (*v34)(v32, v10, v21);
      v24 = v23;
      v25 = v21;
      v22(v36, v24, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_29D515230(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_29D515230(v26 > 1, v27 + 1, 1, v19);
      }

      *(v19 + 2) = v27 + 1;
      v22(&v19[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27], v36, v25);
      v11 = v25;
      a1 = v31;
    }

    v18 += v33;
    if (!--v16)
    {
      return v19;
    }
  }

  objc_autoreleasePoolPop(v20);

  return v19;
}

void *sub_29D5486F4(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a1;
  sub_29D554D90(0, &qword_2A1A17390, MEMORY[0x29EDC3948], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_29D5B16BC();
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v29 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v26 = &v25 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return MEMORY[0x29EDCA190];
  }

  v14 = (a3 + 32);
  v25 = v11;
  v27 = (v11 + 32);
  v28 = (v11 + 48);
  v32 = MEMORY[0x29EDCA190];
  while (1)
  {
    v15 = v8;
    v16 = *v14++;
    v17 = v16;
    v18 = MEMORY[0x29ED5F4B0]();
    v33 = v16;
    v31(&v33);
    if (v3)
    {
      break;
    }

    objc_autoreleasePoolPop(v18);

    v8 = v15;
    if ((*v28)(v7, 1, v15) == 1)
    {
      sub_29D5528C0(v7, &qword_2A1A17390, MEMORY[0x29EDC3948]);
    }

    else
    {
      v19 = v26;
      v20 = *v27;
      (*v27)(v26);
      (v20)(v29, v19, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_29D5158CC(0, v32[2] + 1, 1, v32);
      }

      v22 = v32[2];
      v21 = v32[3];
      if (v22 >= v21 >> 1)
      {
        v32 = sub_29D5158CC(v21 > 1, v22 + 1, 1, v32);
      }

      v23 = v32;
      v32[2] = v22 + 1;
      v8 = v15;
      (v20)(v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v29, v15);
    }

    if (!--v13)
    {
      return v32;
    }
  }

  objc_autoreleasePoolPop(v18);

  return v32;
}

uint64_t sub_29D548A2C(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext();
  v41 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v36[1] = v3;
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5537A8();
  v43 = v5;
  v45 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D553AD8();
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v56 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5542C4(0, &qword_2A1A16A68, sub_29D553AD8, sub_29D553CF8);
  v50 = v10;
  v52 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v46 = v36 - v11;
  sub_29D553D2C();
  v51 = v12;
  v53 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v47 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D554610(0, &qword_2A1A16E60, sub_29D553D2C, sub_29D553E48);
  v15 = *(v14 - 8);
  v48 = v14;
  v49 = v15;
  MEMORY[0x2A1C7C4A8](v14);
  v44 = v36 - v16;
  v38 = a1;
  v57 = sub_29D54FD3C();
  sub_29D5B396C();
  sub_29D5539A4();
  sub_29D553894();
  v40 = MEMORY[0x29EDB8A00];
  sub_29D551D18(&qword_2A1A166E0, sub_29D5539A4);
  sub_29D553970();
  sub_29D5B3BEC();

  v37 = type metadata accessor for HealthRecordsGeneratorContext;
  v17 = v4;
  sub_29D554DF4(a1, v4, type metadata accessor for HealthRecordsGeneratorContext);
  v18 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v19 = swift_allocObject();
  v20 = v42;
  *(v19 + 16) = v42;
  sub_29D553E7C(v17, v19 + v18, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D553BC4();
  sub_29D554AC8(0, &qword_2A1A16678, sub_29D553BC4, MEMORY[0x29EDB89F8]);
  sub_29D551D18(&qword_2A1A169F0, sub_29D5537A8);
  sub_29D553C70();
  v21 = v43;
  v22 = v39;
  sub_29D5B3BFC();

  (*(v45 + 8))(v22, v21);
  sub_29D554DF4(v38, v17, v37);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  sub_29D553E7C(v17, v23 + v18, type metadata accessor for HealthRecordsGeneratorContext);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_29D554040;
  *(v24 + 24) = v23;
  v25 = MEMORY[0x29EDB89F8];
  sub_29D55478C(0, &qword_2A1A166A8, MEMORY[0x29EDB89F8]);
  sub_29D553CF8();
  sub_29D551BE8(&qword_2A1A166B0, &qword_2A1A166A8, v25);
  v26 = v46;
  v27 = v54;
  v28 = v56;
  sub_29D5B3BFC();

  (*(v55 + 8))(v28, v27);
  sub_29D553DC0();
  v29 = v47;
  v30 = v50;
  sub_29D5B3BDC();
  (*(v52 + 8))(v26, v30);
  sub_29D553E48();
  v31 = v44;
  v32 = v51;
  sub_29D5B3B7C();
  (*(v53 + 8))(v29, v32);
  sub_29D5540FC();
  v33 = v48;
  v34 = sub_29D5B3B1C();
  (*(v49 + 8))(v31, v33);
  return v34;
}

unint64_t sub_29D5491C8@<X0>(unint64_t *a1@<X8>)
{
  sub_29D553740();
  result = sub_29D552D74();
  *a1 = result;
  return result;
}

uint64_t sub_29D549204(void *a1)
{
  sub_29D50CCA4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *a1;
  sub_29D551F60(0, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
  sub_29D554260(&qword_2A1A163D0, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68);
  sub_29D5B3FEC();
  sub_29D4A02FC(0, &qword_2A1A1A410);
  sub_29D5B391C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D549384@<X0>(id *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v22 = a4;
  v7 = sub_29D5B0E6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  sub_29D552BF8();
  v20 = *(v10 - 8);
  v21 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v23 = sub_29D5B261C();
  (*(v8 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v13;
  (*(v8 + 32))(v15 + v14, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_29D5250C8();
  sub_29D551F60(0, &qword_2A1A16298, &qword_2A1A162A0, 0x29EDC44D8, MEMORY[0x29EDC9C68]);
  sub_29D551D18(&qword_2A1A16710, sub_29D5250C8);
  v16 = v13;

  sub_29D5B3B7C();

  sub_29D551D18(&qword_2A17A4B38, sub_29D552BF8);
  v17 = v21;
  v18 = sub_29D5B3B1C();

  result = (*(v20 + 8))(v12, v17);
  *v22 = v18;
  return result;
}

void *sub_29D549690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v11 = sub_29D5B371C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  result = sub_29D5486F4(sub_29D552B84, v34, v15);
  if (!v5)
  {
    v17 = result;
    v33 = 0;
    sub_29D5B36AC();

    v18 = sub_29D5B370C();
    v19 = sub_29D5B429C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v20 = 136446466;
      v38 = a4;
      swift_getMetatypeMetadata();
      v21 = sub_29D5B3E7C();
      v23 = sub_29D501890(v21, v22, &v39);
      v31 = a5;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v38 = v17;
      sub_29D552448(0);

      sub_29D5B4CAC();
      v25 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v26 = sub_29D5B3E9C();
      v28 = sub_29D501890(v26, v27, &v39);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_29D48C000, v18, v19, "[%{public}s]: Sharable models generated: %{public}s", v20, 0x16u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v29, -1, -1);
      MEMORY[0x29ED5FB80](v20, -1, -1);

      result = (*(v12 + 8))(v14, v11);
      *v31 = v17;
    }

    else
    {

      result = (*(v12 + 8))(v14, v11);
      *a5 = v17;
    }
  }

  return result;
}

void sub_29D549974(id *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v4 = *a1;
    v5 = sub_29D5B143C();
    sub_29D549A2C(v4, a2);

    if (v2)
    {
      return;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_29D5B16BC();
  (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

void sub_29D549A2C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x29EDC9C68];
  sub_29D554D90(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v48 - v7;
  sub_29D554D90(0, &qword_2A1A19378, MEMORY[0x29EDB9D58], v5);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v48 - v10;
  v12 = sub_29D5B175C();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F51C(0, &qword_2A1A162E0);
  v15 = [swift_getObjCClassFromMetadata() diagnosticTestResultTypeForIdentifier_];
  if (!v15)
  {
    sub_29D552BA4();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    return;
  }

  v16 = v15;
  if (![a1 hasConceptIdentifier])
  {
    sub_29D552BA4();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();

    return;
  }

  v49 = v11;
  v50 = v14;
  v51 = v8;
  sub_29D554D90(0, &qword_2A1A161E8, MEMORY[0x29EDC4098], MEMORY[0x29EDC9E90]);
  v17 = sub_29D5B1D6C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v52 = xmmword_29D5B62A0;
  *(v20 + 16) = xmmword_29D5B62A0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x29EDC4068], v17);
  v21 = [a1 conceptIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = sub_29D5B3E5C();
    v25 = v24;

    v48[1] = v25;
    v48[2] = v20;
    v26 = sub_29D514404(v20, v23, v25);
    v28 = v27;
    v29 = [a1 hasPreferredName];
    v48[3] = a2;
    v48[4] = v2;
    v53 = v26;
    if (v29 && (v30 = [a1 preferredName]) != 0)
    {
      v31 = v30;
      v32 = sub_29D5B3E5C();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    sub_29D554D90(0, &qword_2A17A3E88, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
    v37 = *(sub_29D5B353C() - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v52;
    v40 = (v39 + v38);
    *v40 = v53;
    v40[1] = v28;
    v40[2] = v32;
    v40[3] = v34;
    v40[4] = 0;
    v40[5] = 0;
    (*(v37 + 104))();
    sub_29D51AC0C();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_29D5B6350;
    *(v41 + 32) = v16;

    *&v52 = v16;
    v42 = [a1 data];
    if (v42)
    {
      v43 = v42;

      sub_29D5B0D7C();

      sub_29D5B169C();
      v44 = v49;
      sub_29D5B0F9C();
      v45 = sub_29D5B0FAC();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      v46 = v51;
      sub_29D5B0EEC();
      v47 = sub_29D5B0EFC();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      sub_29D5B167C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29D54A044@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a2;
  sub_29D554D90(0, &qword_2A17A4B10, sub_29D552448, MEMORY[0x29EDB8AB0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v36 - v8;
  sub_29D554AC8(0, &qword_2A17A4B18, sub_29D552448, MEMORY[0x29EDB8B18]);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v36 - v11;
  v40 = sub_29D5B371C();
  v13 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_29D5B36AC();
  v17 = v16;
  v18 = sub_29D5B370C();
  v19 = sub_29D5B427C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v7;
    v21 = v20;
    v36 = swift_slowAlloc();
    v44 = v36;
    *v21 = 136446466;
    v43 = v39;
    swift_getMetatypeMetadata();
    v22 = sub_29D5B3E7C();
    v39 = a3;
    v24 = sub_29D501890(v22, v23, &v44);
    v38 = v6;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v43 = v16;
    v26 = v16;
    sub_29D4A02FC(0, &qword_2A1A1A410);
    sub_29D5B4CAC();
    v27 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v28 = sub_29D5B3E9C();
    v30 = sub_29D501890(v28, v29, &v44);

    *(v21 + 14) = v30;
    a3 = v39;
    _os_log_impl(&dword_29D48C000, v18, v19, "[%{public}s]: Error making sharable models for record: %{public}s", v21, 0x16u);
    v6 = v38;
    v31 = v36;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v31, -1, -1);
    v32 = v21;
    v7 = v37;
    MEMORY[0x29ED5FB80](v32, -1, -1);
  }

  (*(v13 + 8))(v15, v40);
  v43 = MEMORY[0x29EDCA190];
  sub_29D552448(0);
  sub_29D5B3A2C();
  sub_29D4A02FC(0, &qword_2A1A1A410);
  sub_29D5B39EC();
  (*(v7 + 8))(v9, v6);
  sub_29D552AFC();
  v33 = v42;
  v34 = sub_29D5B3B1C();
  result = (*(v41 + 8))(v12, v33);
  *a3 = v34;
  return result;
}

void sub_29D54A4C0(unint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = MEMORY[0x29ED5F4B0]();
  if ((sub_29D5B360C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = [a2 ontologyPreferredName];
  if (!v9)
  {
    goto LABEL_11;
  }

  MEMORY[0x2A1C7C4A8](v10);
  v18[2] = a3;

  v11 = sub_29D548174(sub_29D552D54, v18, v7);
  v12 = v11;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!sub_29D5B485C())
  {
LABEL_10:

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x29ED5EF30](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_8:
    v14 = v13;
    sub_29D48F51C(0, &qword_2A1A162A0);
    v15 = a2;
    v16 = sub_29D5B362C();
    v17 = sub_29D5531C0(v15, v16 & 1, v14, v12);

LABEL_12:
    objc_autoreleasePoolPop(v8);
    *a4 = v17;
    return;
  }

  __break(1u);
}

BOOL sub_29D54A660(id *a1)
{
  v2 = sub_29D5B0E6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 sortDate];
  v7 = [v6 date];

  sub_29D5B0E4C();
  sub_29D551D18(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8]);
  v8 = sub_29D5B3DCC();
  (*(v3 + 8))(v5, v2);
  return (v8 & 1) == 0;
}

void sub_29D54A7D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = sub_29D4FF3F4;
  v7[3] = v6;
  v7[4] = a3;
  v10[4] = sub_29D554D1C;
  v10[5] = v7;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D54ACDC;
  v10[3] = &unk_2A242A0D8;
  v8 = _Block_copy(v10);

  v9 = a3;

  [v9 fetchSharingEntriesWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_29D54A8F0(char a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v37 = sub_29D5B0EDC();
  v34 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (a1 & 1) == 0)
  {
    v12 = a2;
    a3(a2, 1);
  }

  v13 = [a5 sharingEntries];
  sub_29D48F51C(0, &qword_2A1A16318);
  v14 = sub_29D5B402C();

  v38 = MEMORY[0x29EDCA190];
  if (v14 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
  {
    v16 = MEMORY[0x29EDCA190];
    v35 = a4;
    v36 = a3;
    if (!i)
    {
      break;
    }

    v17 = 0;
    a3 = (v14 & 0xC000000000000001);
    a4 = v14 & 0xFFFFFFFFFFFFFF8;
    v18 = &off_29F351000;
    v19 = &selRef_userData;
    while (1)
    {
      if (a3)
      {
        v20 = MEMORY[0x29ED5EF30](v17, v14);
      }

      else
      {
        if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v20 = *(v14 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([v20 v18[427]] || objc_msgSend(v21, v19[73]) || objc_msgSend(v21, sel_status) != 1 && objc_msgSend(v21, sel_status))
      {
      }

      else
      {
        sub_29D5B498C();
        sub_29D5B49BC();
        v19 = &selRef_userData;
        sub_29D5B49CC();
        sub_29D5B499C();
        v18 = &off_29F351000;
      }

      ++v17;
      if (v22 == i)
      {
        v23 = v38;
        a3 = v36;
        v16 = MEMORY[0x29EDCA190];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v23 = MEMORY[0x29EDCA190];
LABEL_22:

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 2);
    if (v24)
    {
      goto LABEL_25;
    }

LABEL_36:

    a3(MEMORY[0x29EDCA190], 0);
  }

  v24 = sub_29D5B485C();
  if (!v24)
  {
    goto LABEL_36;
  }

LABEL_25:
  v38 = v16;
  result = sub_29D5B49AC();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = (v34 + 8);
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x29ED5EF30](v26, v23);
      }

      else
      {
        v28 = *(v23 + v26 + 4);
      }

      v29 = v28;
      ++v26;
      v30 = [v28 UUID];
      sub_29D5B0EBC();

      v31 = objc_allocWithZone(MEMORY[0x29EDBADC8]);
      v32 = sub_29D5B0E9C();
      [v31 initForInvitationUUID_];

      (*v27)(v11, v37);
      sub_29D5B498C();
      sub_29D5B49BC();
      sub_29D5B49CC();
      sub_29D5B499C();
    }

    while (v24 != v26);

    v36(v38, 0);
  }

  __break(1u);
  return result;
}

void sub_29D54ACDC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_29D54AD54(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = sub_29D554BDC;
  v9[3] = v8;
  v9[4] = a4;
  v12[4] = sub_29D554C1C;
  v12[5] = v9;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D54B08C;
  v12[3] = &unk_2A242A038;
  v10 = _Block_copy(v12);

  v11 = a4;

  [a3 fetchSharingAuthorizationsWithCompletion_];
  _Block_release(v10);
}

void sub_29D54AE78(unint64_t a1, id a2, void (*a3)(id, uint64_t, uint64_t), uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2, 0, 1);
    v8 = a2;
  }

  else
  {
    if (a1)
    {
      v21 = MEMORY[0x29EDCA190];
      if (a1 >> 62)
      {
        goto LABEL_21;
      }

      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        do
        {
          v19 = a5;
          v11 = 0;
          while (1)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x29ED5EF30](v11, a1);
            }

            else
            {
              if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v12 = *(a1 + 8 * v11 + 32);
            }

            v13 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            MEMORY[0x29ED5E5E0](v12);
            if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_29D5B408C();
            }

            sub_29D5B40AC();
            ++v11;
            if (v13 == v10)
            {
              a5 = v19;
              v14 = v21;
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v16 = a5;
          v17 = sub_29D5B485C();
          a5 = v16;
          v10 = v17;
        }

        while (v17);
      }

      v14 = MEMORY[0x29EDCA190];
LABEL_23:
      v18 = a5;
      v20 = a5;
      a3(v18, v14, 0);
    }

    else
    {
      v15 = a5;
      v20 = a5;
      a3(v15, MEMORY[0x29EDCA190], 0);
    }

    v8 = v20;
  }
}

uint64_t sub_29D54B08C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_29D48F51C(0, &qword_2A1A16300);
    v4 = sub_29D5B402C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_29D54B130(uint64_t a1, void *a2, void *a3)
{
  sub_29D554184();
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5542C4(0, &qword_2A17A4B68, sub_29D5543B0, sub_29D5544C0);
  v35 = v9;
  v37 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v30 - v10;
  sub_29D5544F4();
  v36 = v12;
  v38 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D554610(0, &qword_2A17A4B98, sub_29D5544F4, sub_29D554688);
  v16 = *(v15 - 8);
  v33 = v15;
  v34 = v16;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v30 - v17;
  v41 = a1;
  sub_29D551F60(0, &qword_2A1A163E0, &qword_2A1A16300, 0x29EDBADB8, MEMORY[0x29EDC9A40]);
  sub_29D554260(&qword_2A17A4B60, &qword_2A1A163E0, &qword_2A1A16300, 0x29EDBADB8);
  sub_29D5B3FEC();
  v19 = swift_allocObject();
  v19[2] = v32;
  v19[3] = a2;
  v19[4] = a3;
  v20 = MEMORY[0x29EDB89F8];
  sub_29D55478C(0, &qword_2A1A166A8, MEMORY[0x29EDB89F8]);
  sub_29D55448C();
  sub_29D551BE8(&qword_2A1A166B0, &qword_2A1A166A8, v20);
  v21 = a2;
  v22 = a3;
  v23 = v39;
  v24 = v31;
  sub_29D5B3C5C();

  (*(v40 + 8))(v24, v23);
  sub_29D554588();
  v25 = v35;
  sub_29D5B3BDC();
  (*(v37 + 8))(v11, v25);
  sub_29D554688();
  v26 = v36;
  sub_29D5B3B7C();
  (*(v38 + 8))(v14, v26);
  sub_29D5546F4();
  v27 = v33;
  v28 = sub_29D5B3B1C();
  (*(v34 + 8))(v18, v27);
  return v28;
}

uint64_t sub_29D54B5E8(void *a1, void *a2, void *a3)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = v3;
  v7[5] = a2;
  v7[6] = v3;
  v8 = MEMORY[0x29EDB8AD0];
  sub_29D55478C(0, &qword_2A17A4BB0, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v9 = a3;
  v10 = a1;
  v11 = a2;
  sub_29D5B3A6C();
  sub_29D551BE8(&qword_2A17A4BB8, &qword_2A17A4BB0, v8);
  v12 = sub_29D5B3B1C();

  return v12;
}

id sub_29D54B70C(uint64_t a1, void *a2)
{
  v3 = v2;
  v46[1] = *MEMORY[0x29EDCA608];
  v6 = sub_29D5B371C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10 < 3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v10 < 5)
  {
    goto LABEL_14;
  }

  v11 = objc_opt_self();

  v12 = sub_29D5B3E1C();

  v45[0] = 0;
  v13 = [v11 codingCollectionFromAdHocCode:v12 error:v45];

  v14 = v45[0];
  if (v13)
  {
    if (a2[2] == 1)
    {
      sub_29D5B1D6C();
      v15 = v14;
      v16 = sub_29D5B1D0C();
      v17 = objc_allocWithZone(MEMORY[0x29EDBAAE0]);
      v18 = sub_29D5B3E1C();

      v19 = [v17 initWithCodingCollection:v13 countryCode:v18 recordCategoryType:v16];

      return v19;
    }

    v24 = v45[0];
    v23 = v13;
  }

  else
  {
    v21 = v45[0];
    v22 = sub_29D5B0D2C();

    swift_willThrow();
    v23 = 0;
  }

  sub_29D5B36AC();
  v25 = v13;

  v26 = sub_29D5B370C();
  v27 = sub_29D5B427C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46[0] = v43;
    *v28 = 136446722;
    v45[0] = v3;
    swift_getMetatypeMetadata();
    v29 = sub_29D5B3E7C();
    v31 = sub_29D501890(v29, v30, v46);
    v44 = v6;
    v32 = v31;

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v45[0] = v23;
    sub_29D551F60(0, &qword_2A17A4BD0, &qword_2A17A4BD8, 0x29EDBAC40, MEMORY[0x29EDC9C68]);
    v42 = v25;
    sub_29D5B4CAC();
    v33 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v34 = sub_29D5B3E9C();
    v36 = sub_29D501890(v34, v35, v46);

    *(v28 + 14) = v36;
    *(v28 + 22) = 2082;
    v45[0] = a2;
    sub_29D554D90(0, &qword_2A17A4BE0, MEMORY[0x29EDC4098], MEMORY[0x29EDC9A40]);

    sub_29D5B4CAC();
    v37 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v38 = sub_29D5B3E9C();
    v40 = sub_29D501890(v38, v39, v46);

    *(v28 + 24) = v40;
    _os_log_impl(&dword_29D48C000, v26, v27, "[%{public}s]: Coding collection (%{public}s) was nil, or had multiple category kinds when trying to synthesize concept resolution definition %{public}s.", v28, 0x20u);
    v41 = v43;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v41, -1, -1);
    MEMORY[0x29ED5FB80](v28, -1, -1);

    (*(v7 + 8))(v9, v44);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

void sub_29D54BC28(void (*a1)(uint64_t *), uint64_t a2, void *a3, char *a4, uint64_t a5, void *a6, NSObject *a7)
{
  v132 = a7;
  v124 = a6;
  v126 = a5;
  v136 = a4;
  v10 = sub_29D5B371C();
  v133 = *(v10 - 8);
  v134 = v10;
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v131 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v123 = &v120 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v130 = (&v120 - v15);
  sub_29D554D90(0, &qword_2A17A4BC0, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v120 - v17;
  v19 = sub_29D5B353C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v127 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v128 = &v120 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v129 = &v120 - v26;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v29 = (&v120 - v28);
  MEMORY[0x2A1C7C4A8](v27);
  v31 = &v120 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v33 = objc_allocWithZone(MEMORY[0x29EDBAE38]);

  v125 = a3;
  v135 = [v33 initWithHealthStore_];
  v34 = v136;
  sub_29D5B354C();
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v121 = v34;
    v122 = a2;
    v130 = a1;
    (*(v20 + 32))(v31, v18, v19);
    v50 = *(v20 + 16);
    v136 = v31;
    v50(v29);
    if ((*(v20 + 88))(v29, v19) == *MEMORY[0x29EDC2E28])
    {
      v51 = *(v20 + 96);
      v120 = v19;
      v51(v29, v19);
      v52 = *v29;
      v53 = v29[1];

      v54 = sub_29D5166E4(v52, v53);
      v57 = v129;
      if (v54)
      {
        v58 = v54;
        v59 = v55;
        v60 = v56;
        v61 = v20;
        aBlock = v55;
        v138 = v56;
        v143[0] = sub_29D5B3E5C();
        v143[1] = v62;
        sub_29D4B343C();

        v63 = sub_29D5B476C();

        if (v63[2] < 4uLL)
        {
          __break(1u);
          return;
        }

        v64 = v63[10];
        v65 = v63[11];
        v66 = sub_29D5B3E5C();
        v68 = v136;
        if (v64 == v66 && v65 == v67)
        {
        }

        else
        {
          v90 = sub_29D5B4C7C();

          if ((v90 & 1) == 0)
          {

            sub_29D4B37AC(v58);

            aBlock = 1;
            LOBYTE(v138) = 0;
            v130(&aBlock);

            (*(v61 + 8))(v68, v120);
            return;
          }
        }

        sub_29D4B37AC(v91);
        v92 = sub_29D54B70C(v63, v58);

        if (v92)
        {
          v93 = [objc_opt_self() predicateForMedicalUserDomainConceptsByResolvingConceptResolutionDefinition_];
          v94 = swift_allocObject();
          v94[2] = v59;
          v94[3] = v60;
          v94[4] = sub_29D4FF74C;
          v94[5] = v32;
          v95 = v124;
          v94[6] = v58;
          v94[7] = v95;
          v96 = v68;
          v97 = v135;
          v98 = v121;
          v94[8] = v135;
          v94[9] = v98;
          v94[10] = v132;
          v99 = objc_allocWithZone(MEMORY[0x29EDBAE78]);
          v141 = sub_29D554860;
          v142 = v94;
          aBlock = MEMORY[0x29EDCA5F8];
          v138 = 1107296256;
          v139 = sub_29D54F470;
          v140 = &unk_2A2429F48;
          v100 = _Block_copy(&aBlock);
          v101 = v98;
          v102 = v95;
          v103 = v97;
          v104 = [v99 initWithPredicate:v93 anchor:0 limit:1 sortDescriptors:0 resultsHandler:v100];
          _Block_release(v100);

          [v125 executeQuery_];

          (*(v61 + 8))(v96, v120);
          return;
        }

        v105 = v123;
        sub_29D5B36AC();

        v106 = sub_29D5B370C();
        v107 = sub_29D5B427C();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v143[0] = v109;
          *v108 = 136446466;
          aBlock = v132;
          swift_getMetatypeMetadata();
          v110 = sub_29D5B3E7C();
          v112 = v59;
          v113 = sub_29D501890(v110, v111, v143);

          *(v108 + 4) = v113;
          *(v108 + 12) = 2082;
          aBlock = v112;
          v138 = v60;
          sub_29D5B4CAC();
          v114 = HKSensitiveLogItem();
          swift_unknownObjectRelease();
          sub_29D5B47BC();
          swift_unknownObjectRelease();
          v115 = sub_29D5B3E9C();
          v117 = sub_29D501890(v115, v116, v143);

          *(v108 + 14) = v117;
          _os_log_impl(&dword_29D48C000, v106, v107, "[%{public}s]: Could not parse concept resolution definition from semantic identifier: %{public}s.", v108, 0x16u);
          v68 = v136;
          swift_arrayDestroy();
          MEMORY[0x29ED5FB80](v109, -1, -1);
          MEMORY[0x29ED5FB80](v108, -1, -1);
        }

        else
        {
        }

        (*(v133 + 8))(v105, v134);
        v118 = v130;
        sub_29D55480C();
        v88 = swift_allocError();
        *v119 = 2;
        aBlock = v88;
        LOBYTE(v138) = 1;
        v118(&aBlock);

        (*(v61 + 8))(v68, v120);
LABEL_18:

        return;
      }

      v19 = v120;
    }

    else
    {

      (*(v20 + 8))(v29, v19);
      v57 = v129;
    }

    v69 = v131;
    sub_29D5B36AC();
    (v50)(v57, v136, v19);
    v70 = v19;
    v71 = sub_29D5B370C();
    v72 = sub_29D5B427C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v143[0] = v129;
      *v73 = 136446466;
      aBlock = v132;
      swift_getMetatypeMetadata();
      v74 = sub_29D5B3E7C();
      v76 = sub_29D501890(v74, v75, v143);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2082;
      v132 = v71;
      v77 = v128;
      (v50)(v128, v57, v70);
      (v50)(v127, v77, v70);
      sub_29D5B4CAC();
      v78 = HKSensitiveLogItem();
      v79 = v72;
      v80 = v57;
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v81 = sub_29D5B3E9C();
      v83 = v82;
      v84 = *(v20 + 8);
      v84(v77, v70);
      v84(v80, v70);
      v85 = sub_29D501890(v81, v83, v143);

      *(v73 + 14) = v85;
      v86 = v132;
      _os_log_impl(&dword_29D48C000, v132, v79, "[%{public}s]: Could not unwrap shared concept identifier from authorizationIdentifier %{public}s.", v73, 0x16u);
      v87 = v129;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v87, -1, -1);
      MEMORY[0x29ED5FB80](v73, -1, -1);

      (*(v133 + 8))(v131, v134);
    }

    else
    {

      v84 = *(v20 + 8);
      v84(v57, v70);
      (*(v133 + 8))(v69, v134);
    }

    sub_29D55480C();
    v88 = swift_allocError();
    *v89 = 0;
    aBlock = v88;
    LOBYTE(v138) = 1;
    v130(&aBlock);

    v84(v136, v70);
    goto LABEL_18;
  }

  sub_29D5528C0(v18, &qword_2A17A4BC0, MEMORY[0x29EDC2E38]);
  sub_29D55480C();
  v35 = swift_allocError();
  *v36 = 0;
  aBlock = v35;
  LOBYTE(v138) = 1;
  a1(&aBlock);

  v37 = v130;
  sub_29D5B36AC();
  v38 = v34;
  v39 = sub_29D5B370C();
  v40 = sub_29D5B427C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v143[0] = v42;
    *v41 = 136446466;
    aBlock = v132;
    swift_getMetatypeMetadata();
    v43 = sub_29D5B3E7C();
    v45 = sub_29D501890(v43, v44, v143);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2082;
    v46 = HKSensitiveLogItem();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v47 = sub_29D5B3E9C();
    v49 = sub_29D501890(v47, v48, v143);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_29D48C000, v39, v40, "[%{public}s]: Could not unwrap authorizationIdentifier from sharing authorization %{public}s.", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v42, -1, -1);
    MEMORY[0x29ED5FB80](v41, -1, -1);
  }

  else
  {
  }

  (*(v133 + 8))(v37, v134);
}

void sub_29D54CA34(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, void (*a8)(void *, uint64_t), void (*a9)(void *, uint64_t), uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14)
{
  v134 = a2;
  v135 = a6;
  LODWORD(v133) = a4;
  v136 = a14;
  v139 = a8;
  v140 = a9;
  v16 = sub_29D5B0EDC();
  v132 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B353C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v19);
  MEMORY[0x2A1C7C4A8](v22);
  v24 = (&v127 - v23);
  v25 = sub_29D5B371C();
  v137 = *(v25 - 1);
  v138 = v25;
  v26 = MEMORY[0x2A1C7C4A8](v25);
  v27 = MEMORY[0x2A1C7C4A8](v26);
  MEMORY[0x2A1C7C4A8](v27);
  v31 = &v127 - v30;
  if (a5)
  {
    v32 = a5;
    sub_29D5B36AC();
    v33 = a5;

    v34 = sub_29D5B370C();
    v35 = sub_29D5B427C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = a7;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v147[0] = v38;
      *v37 = 136446722;
      aBlock = v136;
      swift_getMetatypeMetadata();
      v39 = sub_29D5B3E7C();
      v41 = sub_29D501890(v39, v40, v147);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      aBlock = a5;
      v42 = a5;
      sub_29D4A02FC(0, &qword_2A1A1A410);
      sub_29D5B4CAC();
      v43 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v44 = sub_29D5B3E9C();
      v46 = sub_29D501890(v44, v45, v147);

      *(v37 + 14) = v46;
      *(v37 + 22) = 2082;
      aBlock = v135;
      v142 = v36;

      sub_29D5B4CAC();
      v47 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v48 = sub_29D5B3E9C();
      v50 = sub_29D501890(v48, v49, v147);

      *(v37 + 24) = v50;
      _os_log_impl(&dword_29D48C000, v34, v35, "[%{public}s]: Found an error (%{public}s) while querying for UDC with resolvable adhoc code embedded in semantic identifier: %{public}s.", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v38, -1, -1);
      MEMORY[0x29ED5FB80](v37, -1, -1);
    }

    v137[1](v31, v138);
    v51 = a5;
    v139(a5, 1);

    v52 = a5;
LABEL_15:

    return;
  }

  v53 = v133;
  v128 = v21;
  v129 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v16;
  v131 = v18;
  v54 = v134;
  if (!v134 || (v55 = v29, v56 = v28, objc_opt_self(), v57 = swift_dynamicCastObjCClass(), v28 = v56, !v57) || (v53 & 1) == 0)
  {
    v77 = v28;
    sub_29D5B36AC();
    v78 = a7;

    v79 = sub_29D5B370C();
    v80 = sub_29D5B427C();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v147[0] = v82;
      *v81 = 136446466;
      aBlock = v136;
      swift_getMetatypeMetadata();
      v83 = sub_29D5B3E7C();
      v85 = sub_29D501890(v83, v84, v147);

      *(v81 + 4) = v85;
      *(v81 + 12) = 2082;
      aBlock = v135;
      v142 = v78;

      sub_29D5B4CAC();
      v86 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v87 = sub_29D5B3E9C();
      v89 = sub_29D501890(v87, v88, v147);

      *(v81 + 14) = v89;
      _os_log_impl(&dword_29D48C000, v79, v80, "[%{public}s]: Somehow, we have a semantic identifier %{public}s with no resolvable user domain concept. Most likely, we have an ontology node, but no UDC for the resolved coding.", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v82, -1, -1);
      MEMORY[0x29ED5FB80](v81, -1, -1);
    }

    v137[1](v77, v138);
    sub_29D55480C();
    v90 = swift_allocError();
    *v91 = 1;
    v139(v90, 1);
    v52 = v90;
    goto LABEL_15;
  }

  v58 = v57;
  v59 = v54;
  if ([v58 isAdHocUserDomainConcept])
  {
    v60 = v55;
    sub_29D5B36AC();
    v61 = a13;
    v62 = sub_29D5B370C();
    v63 = sub_29D5B429C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v147[0] = v65;
      *v64 = 136446466;
      aBlock = v136;
      swift_getMetatypeMetadata();
      v66 = sub_29D5B3E7C();
      v68 = sub_29D501890(v66, v67, v147);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2082;
      v69 = [v61 authorizationIdentifier];
      v70 = sub_29D5B3E5C();
      v72 = v71;

      aBlock = v70;
      v142 = v72;
      sub_29D5B4CAC();
      v73 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v74 = sub_29D5B3E9C();
      v76 = sub_29D501890(v74, v75, v147);

      *(v64 + 14) = v76;
      _os_log_impl(&dword_29D48C000, v62, v63, "[%{public}s]: Skipping migration of auth identifier %{public}s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v65, -1, -1);
      MEMORY[0x29ED5FB80](v64, -1, -1);
    }

    v137[1](v60, v138);
    v139(1, 0);
  }

  else
  {
    v137 = a13;
    v138 = v59;

    v92 = [v58 semanticIdentifier];
    v93 = [v92 stringValue];

    v94 = sub_29D5B3E5C();
    v96 = v95;

    v97 = sub_29D514404(a10, v94, v96);
    v99 = v98;

    v100 = sub_29D5B453C();
    v101 = v24;
    *v24 = v97;
    v24[1] = v99;
    v24[2] = v100;
    v24[3] = v102;
    v24[4] = 0;
    v24[5] = 0;
    (*(v20 + 104))(v24, *MEMORY[0x29EDC2E28], v19);
    v103 = [a11 invitationUUID];
    if (v103)
    {
      v135 = a12;
      v104 = v103;
      sub_29D5B0EBC();

      v105 = v19;
      v134 = sub_29D5B0E9C();
      sub_29D51AC0C();
      v106 = v20;
      v107 = swift_allocObject();
      v127 = xmmword_29D5B6350;
      *(v107 + 16) = xmmword_29D5B6350;
      *(v107 + 32) = sub_29D5B351C();
      sub_29D48F51C(0, &qword_2A1A16300);
      v133 = sub_29D5B401C();

      v108 = swift_allocObject();
      *(v108 + 16) = v127;
      v109 = v137;
      *(v108 + 32) = v137;
      v110 = v109;
      v111 = sub_29D5B401C();

      v112 = *(v20 + 16);
      v113 = v129;
      v112(v129, v24, v105);
      v114 = (*(v106 + 80) + 24) & ~*(v106 + 80);
      v115 = (v128 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
      v116 = swift_allocObject();
      *(v116 + 16) = v110;
      v117 = v113;
      v118 = v105;
      (*(v106 + 32))(v116 + v114, v117, v105);
      v119 = (v116 + v115);
      v120 = v140;
      *v119 = v139;
      v119[1] = v120;
      *(v116 + ((v115 + 23) & 0xFFFFFFFFFFFFFFF8)) = v136;
      v145 = sub_29D5548A4;
      v146 = v116;
      aBlock = MEMORY[0x29EDCA5F8];
      v142 = 1107296256;
      v143 = sub_29D54ACDC;
      v144 = &unk_2A2429F98;
      v121 = _Block_copy(&aBlock);
      v122 = v110;

      v123 = v134;
      v124 = v133;
      [v135 updateSharingAuthorizationsForInvitationUUID:v134 sharingAuthorizationsToAdd:v133 sharingAuthorizationsToDelete:v111 deleteOnCommit:1 completion:v121];
      _Block_release(v121);

      (*(v132 + 8))(v131, v130);
      (*(v106 + 8))(v101, v118);
    }

    else
    {
      sub_29D55480C();
      v125 = swift_allocError();
      *v126 = 3;
      v139(v125, 1);

      (*(v20 + 8))(v24, v19);
    }
  }
}

void sub_29D54D698(int a1, void *a2, void *a3, uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v55 = a2;
  v56 = a6;
  v52 = a1;
  v11 = sub_29D5B353C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B371C();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  (*(v12 + 16))(v14, a4, v11);
  v18 = a3;
  v19 = sub_29D5B370C();
  v20 = sub_29D5B429C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v51 = a5;
    v22 = v21;
    v50 = swift_slowAlloc();
    v59 = v50;
    *v22 = 136446722;
    v57 = a7;
    swift_getMetatypeMetadata();
    v23 = sub_29D5B3E7C();
    v25 = sub_29D501890(v23, v24, &v59);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    v26 = [v18 authorizationIdentifier];
    v27 = sub_29D5B3E5C();
    v29 = v28;

    v57 = v27;
    v58 = v29;
    sub_29D5B4CAC();
    v30 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v31 = sub_29D5B3E9C();
    v33 = sub_29D501890(v31, v32, &v59);

    *(v22 + 14) = v33;
    *(v22 + 22) = 2082;
    v34 = sub_29D5B351C();
    v35 = [v34 authorizationIdentifier];

    v36 = sub_29D5B3E5C();
    v38 = v37;

    v57 = v36;
    v58 = v38;
    sub_29D5B4CAC();
    v39 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v40 = sub_29D5B3E9C();
    v42 = v41;
    (*(v12 + 8))(v14, v11);
    v43 = sub_29D501890(v40, v42, &v59);

    *(v22 + 24) = v43;
    _os_log_impl(&dword_29D48C000, v19, v20, "[%{public}s]: Successfully migrated auth identifier %{public}s to %{public}s", v22, 0x20u);
    v44 = v50;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v44, -1, -1);
    v45 = v22;
    a5 = v51;
    MEMORY[0x29ED5FB80](v45, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  (*(v53 + 8))(v17, v54);
  v46 = v55;
  if (v55)
  {
    v47 = v55;
    v48 = v46;
  }

  else
  {
    if (v52)
    {
      a5(1, 0);
      return;
    }

    sub_29D55480C();
    v48 = swift_allocError();
    v46 = v48;
    *v49 = 3;
  }

  a5(v48, 1);
}

uint64_t sub_29D54DB34()
{
  sub_29D551F60(0, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8, MEMORY[0x29EDC9A40]);
  sub_29D554260(&qword_2A1A163B8, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8);
  return sub_29D5B3FEC();
}

uint64_t sub_29D54DBE4(void *a1, uint64_t a2)
{
  sub_29D5B140C();
  sub_29D499EC0(v7, v7[3]);
  v4 = sub_29D5B136C();
  v5 = sub_29D54B130(a2, a1, v4);

  sub_29D48F668(v7);
  return v5;
}

uint64_t sub_29D54DC7C()
{

  v1 = OBJC_IVAR____TtC13HealthRecords29ConceptSharableModelGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D554E5C(v0 + OBJC_IVAR____TtC13HealthRecords29ConceptSharableModelGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConceptSharableModelGenerator()
{
  result = qword_2A1A17FE8;
  if (!qword_2A1A17FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D54DD98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords29ConceptSharableModelGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_29D54DE14()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x29EDC44D0]) init];
  if (v5)
  {
    v40 = v4;
    v42 = v1;
    v6 = [v0 diagnosticTestCodingCollection];
    v7 = [v6 codings];

    sub_29D48F51C(0, &qword_2A17A41A8);
    v8 = sub_29D5B402C();

    v43 = v0;
    v41 = v2;
    if (v8 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
    {
      v10 = 0;
      v44 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v44)
        {
          v15 = MEMORY[0x29ED5EF30](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v15 = *(v8 + 8 * v10 + 32);
        }

        v16 = v15;
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v18 = [objc_allocWithZone(MEMORY[0x29EDC44C8]) init];
        if (v18)
        {
          v19 = v18;
          v20 = v5;
          v21 = [v16 codingSystem];
          if (v21)
          {
            v22 = v21;
            v11 = [v21 identifier];

            if (!v11)
            {
              sub_29D5B3E5C();
              v11 = sub_29D5B3E1C();
            }
          }

          else
          {
            v11 = 0;
          }

          [v19 setSystem_];

          v12 = [v16 codingVersion];
          [v19 setVersion_];

          v13 = [v16 code];
          [v19 setCode_];

          v14 = v19;
          v5 = v20;
          [v20 addCode_];
        }

        ++v10;
        if (v17 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:

    sub_29D5B44DC();
    if (v23)
    {
      v24 = sub_29D5B3E1C();
    }

    else
    {
      v24 = 0;
    }

    [v5 setUcumUnitString_];

    v25 = sub_29D54E2C8();
    v26 = v25;
    if (v25 >> 62)
    {
      goto LABEL_35;
    }

    for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_29D5B485C())
    {
      v28 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x29ED5EF30](v28, v26);
        }

        else
        {
          if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v29 = *(v26 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        [v5 addValueWithRange_];

        ++v28;
        if (v31 == j)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    v32 = v43;
    v33 = sub_29D54EEC4();
    if ((v34 & 1) == 0)
    {
      [v5 setDateData_];
    }

    v35 = [v32 UUID];
    v36 = v40;
    sub_29D5B0EBC();

    sub_29D5B0E8C();
    (*(v41 + 8))(v36, v42);
    v37 = sub_29D5B3E1C();

    [v5 setRecordUUID_];
  }

  return v5;
}

uint64_t sub_29D54E2C8()
{
  v1 = v0;
  v2 = [v0 value];
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = v2;
  v4 = [v2 inspectableValue];

  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  v5 = [v1 referenceRanges];
  if (v5)
  {
    v6 = v5;
    sub_29D48F51C(0, &qword_2A17A4B48);
    v7 = sub_29D5B402C();
  }

  else
  {
    v7 = 0;
  }

  v9 = [v1 diagnosticTestCodingCollection];
  v10 = [v9 codings];

  sub_29D48F51C(0, &qword_2A17A41A8);
  v11 = sub_29D5B402C();

  v12 = sub_29D54E41C(v7, v11);

  return v12;
}

uint64_t sub_29D54E41C(unint64_t a1, unint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x29EDC4520]) init];
  v6 = MEMORY[0x29EDCA190];
  v75 = v5;
  if (!v5)
  {
    return v6;
  }

  v7 = [v2 value];
  objc_opt_self();
  v74 = a2;
  if (swift_dynamicCastObjCClass())
  {
    v8 = sub_29D54F0F0();
    [v75 setQuantityValue_];

    if (a1)
    {
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 >> 62)
      {
        if (sub_29D5B485C())
        {
          goto LABEL_6;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x29ED5EF30](0, a1);
          goto LABEL_9;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v10 = *(a1 + 32);
LABEL_9:
          v11 = v10;
          v12 = [v10 valueRange];
          v13 = [v12 min];

          v14 = [v13 codedQuantityValue];
          v15 = [v11 valueRange];
          v16 = [v15 max];

          v17 = [v16 codedQuantityValue];
          if (v14)
          {
            v18 = v14;
            v19 = sub_29D54F0F0();
          }

          else
          {
            v19 = 0;
          }

          [v75 setReferenceRangeMin_];

          if (v17)
          {
            v49 = v17;
            v50 = sub_29D54F0F0();
          }

          else
          {
            v50 = 0;
          }

          [v75 setReferenceRangeMax_];

          goto LABEL_61;
        }

        __break(1u);
        goto LABEL_110;
      }
    }

LABEL_61:
    v78 = v6;
    if (a2 >> 62)
    {
      goto LABEL_101;
    }

    v77 = a2 & 0xFFFFFFFFFFFFFF8;
    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
    {
      v52 = 0;
      v53 = a2 & 0xC000000000000001;
      v54 = MEMORY[0x29EDCA190];
      if (i)
      {
        while (1)
        {
          if (v53)
          {
            v63 = MEMORY[0x29ED5EF30](v52, a2);
          }

          else
          {
            if (v52 >= *(v77 + 16))
            {
              goto LABEL_92;
            }

            v63 = *(a2 + 8 * v52 + 32);
          }

          v64 = v63;
          v65 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          v66 = MEMORY[0x29ED5F4B0]();
          v67 = [objc_allocWithZone(MEMORY[0x29EDC44C8]) init];
          if (v67)
          {
            v68 = [v64 code];
            [v67 setCode_];

            v69 = [v64 codingSystem];
            if (v69)
            {
              v70 = v69;
              v60 = [v69 identifier];

              if (!v60)
              {
                sub_29D5B3E5C();
                v60 = sub_29D5B3E1C();
              }
            }

            else
            {
              v60 = 0;
            }

            [v67 setSystem_];

            v61 = [v64 codingVersion];
            [v67 setVersion_];

            v62 = [v64 displayString];
            [v67 setDisplayName_];

            a2 = v74;
          }

          objc_autoreleasePoolPop(v66);

          ++v52;
          if (v67)
          {
            MEMORY[0x29ED5E5E0]();
            if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_29D5B408C();
            }

            sub_29D5B40AC();
            v54 = v78;
            v52 = v65;
            if (i == v65)
            {
              goto LABEL_64;
            }
          }

          else if (i == v52)
          {
            goto LABEL_64;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
      }

      else
      {
LABEL_64:
        if (v54 >> 62)
        {
          v55 = sub_29D5B485C();
          if (!v55)
          {
LABEL_103:

            sub_29D51AC0C();
            v6 = swift_allocObject();
            *(v6 + 16) = xmmword_29D5B6350;
            *(v6 + 32) = v75;
            goto LABEL_104;
          }
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v55)
          {
            goto LABEL_103;
          }
        }

        v56 = 0;
        while (1)
        {
          if ((v54 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x29ED5EF30](v56, v54);
          }

          else
          {
            if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_94;
            }

            v57 = *(v54 + 8 * v56 + 32);
          }

          v58 = v57;
          v59 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            break;
          }

          [v75 addCode_];

          ++v56;
          if (v59 == v55)
          {
            goto LABEL_103;
          }
        }
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      v77 = a2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  swift_unknownObjectRelease();
  [v2 value];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v78 = v6;
    v73 = v2;
    v76 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v29 = sub_29D5B485C();
    }

    else
    {
      v29 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = 0;
    v31 = a2 & 0xC000000000000001;
    v32 = MEMORY[0x29EDCA190];
    if (v29)
    {
      do
      {
        while (1)
        {
          if (v31)
          {
            v41 = MEMORY[0x29ED5EF30](v30, a2);
          }

          else
          {
            if (v30 >= *(v76 + 16))
            {
              goto LABEL_98;
            }

            v41 = *(a2 + 8 * v30 + 32);
          }

          v42 = v41;
          v43 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_97;
          }

          v44 = MEMORY[0x29ED5F4B0]();
          v45 = [objc_allocWithZone(MEMORY[0x29EDC44C8]) init];
          if (v45)
          {
            v46 = [v42 code];
            [v45 setCode_];

            v47 = [v42 codingSystem];
            if (v47)
            {
              v48 = v47;
              v38 = [v47 identifier];

              if (!v38)
              {
                sub_29D5B3E5C();
                v38 = sub_29D5B3E1C();
              }
            }

            else
            {
              v38 = 0;
            }

            [v45 setSystem_];

            v39 = [v42 codingVersion];
            [v45 setVersion_];

            v40 = [v42 displayString];
            [v45 setDisplayName_];

            a2 = v74;
          }

          objc_autoreleasePoolPop(v44);

          ++v30;
          if (v45)
          {
            break;
          }

          if (v29 == v30)
          {
            goto LABEL_29;
          }
        }

        MEMORY[0x29ED5E5E0]();
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        v32 = v78;
        v30 = v43;
      }

      while (v29 != v43);
    }

LABEL_29:
    if (v32 >> 62)
    {
      v33 = sub_29D5B485C();
      if (v33)
      {
LABEL_31:
        v34 = 0;
        do
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x29ED5EF30](v34, v32);
          }

          else
          {
            if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_100;
            }

            v35 = *(v32 + 8 * v34 + 32);
          }

          v36 = v35;
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_99;
          }

          [v75 addCode_];

          ++v34;
        }

        while (v37 != v33);
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_31;
      }
    }

    v72 = [v73 displayString];
    if (!v72)
    {
      sub_29D5B3E5C();
      v72 = sub_29D5B3E1C();
    }

    [v75 setTextualValue_];

    sub_29D51AC0C();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D5B6350;
    *(v6 + 32) = v75;
    return v6;
  }

  v21 = [v20 codedValues];
  sub_29D48F51C(0, &qword_2A17A4B50);
  v7 = sub_29D5B402C();

  v78 = v6;
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_110:
    v22 = sub_29D5B485C();
    goto LABEL_14;
  }

  v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v23 = 0;
  a2 = v7 & 0xC000000000000001;
  while (v22 != v23)
  {
    if (a2)
    {
      v24 = MEMORY[0x29ED5EF30](v23, v7);
    }

    else
    {
      if (v23 >= *(v9 + 16))
      {
        goto LABEL_96;
      }

      v24 = *(v7 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_95;
    }

    v27 = MEMORY[0x29ED5F4B0]();
    v28 = sub_29D54F1B4();
    objc_autoreleasePoolPop(v27);

    ++v23;
    if (v28)
    {
      MEMORY[0x29ED5E5E0]();
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D5B408C();
      }

      sub_29D5B40AC();
      v6 = v78;
      v23 = v26;
    }
  }

LABEL_104:
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_29D54EEC4()
{
  v1 = v0;
  sub_29D554D90(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v3 = MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v15 - v6;
  v8 = [v1 meaningfulDate];
  if (v8)
  {
    v9 = v8;
    sub_29D5B0E4C();

    v10 = sub_29D5B0E6C();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  else
  {
    v10 = sub_29D5B0E6C();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  sub_29D4D1F64(v5, v7);
  sub_29D5B0E6C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_29D5528C0(v7, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    return 0;
  }

  else
  {
    sub_29D5B0E2C();
    v14 = v13;
    (*(v11 + 8))(v7, v10);
    return v14;
  }
}

id sub_29D54F0F0()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC4510]) init];
  if (v1)
  {
    [v0 doubleValue];
    [v1 setValue_];
    v2 = [v0 unitCoding];
    if (!v2 || (v3 = v2, v4 = [v2 displayString], v3, !v4))
    {
      v4 = 0;
    }

    [v1 setUnitString_];
  }

  return v1;
}

uint64_t sub_29D54F1B4()
{
  v1 = v0;
  v2 = [v0 value];
  v3 = [v2 value];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (!v4)
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDC4520]) init];
    if (!v9)
    {
      return v9;
    }

    sub_29D5B422C();
    if (v10)
    {
      v11 = sub_29D5B3E1C();
    }

    else
    {
      v11 = 0;
    }

    [v9 setTextualValue_];

    v17 = [v1 ontologyConcept];
    v18 = [v17 localizedPreferredName];
LABEL_16:
    v19 = v18;

    [v9 setValueTitle_];
    return v9;
  }

  v5 = [v1 value];
  v6 = [v1 referenceRanges];
  if (v6)
  {
    v7 = v6;
    sub_29D48F51C(0, &qword_2A17A4B48);
    v8 = sub_29D5B402C();
  }

  else
  {
    v8 = 0;
  }

  v12 = [v1 codings];
  sub_29D48F51C(0, &qword_2A17A41A8);
  v13 = sub_29D5B402C();

  v14 = sub_29D54E41C(v8, v13);

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_18:

    return 0;
  }

  result = sub_29D5B485C();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x29ED5EF30](0, v14);
    goto LABEL_13;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
LABEL_13:
    v9 = v16;

    v17 = [v1 ontologyConcept];
    v18 = [v17 localizedPreferredName];
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_29D54F470(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v15 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v11(v15, a3, a4, a5, a6);
}

void sub_29D54F554(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_29D515088(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_29D551F60(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, MEMORY[0x29EDBA1D0]);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_29D54F6D8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_29D5150F0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29D54F7FC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_29D51541C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29D54F90C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_29D5B485C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_29D5B485C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_29D54FC9C(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_29D54FA04(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_29D51573C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29D554D28();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29D54FB58(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29D54FC9C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_29D5B485C();
LABEL_9:
  result = sub_29D5B496C();
  *v1 = result;
  return result;
}

uint64_t sub_29D54FD3C()
{
  sub_29D5B140C();
  sub_29D499EC0(v5, v5[3]);
  v0 = sub_29D5B136C();
  v1 = [objc_allocWithZone(MEMORY[0x29EDBAE38]) initWithHealthStore_];

  sub_29D48F668(v5);
  *(swift_allocObject() + 16) = v1;
  sub_29D554C30();
  swift_allocObject();
  v2 = v1;
  v5[0] = sub_29D5B3A6C();
  sub_29D551D18(&qword_2A1A16580, sub_29D554C30);
  v3 = sub_29D5B3B1C();

  return v3;
}

uint64_t sub_29D54FE8C(uint64_t a1)
{
  v2 = sub_29D5B13CC();
  v173 = *(v2 - 8);
  v174 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v172 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B13EC();
  v175 = *(v4 - 8);
  v176 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v171 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_29D5B148C();
  v186 = *(v182 - 8);
  v183 = *(v186 + 64);
  MEMORY[0x2A1C7C4A8](v182);
  v181 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = MEMORY[0x29EDCA498];
  sub_29D554D90(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v145 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v142 = &v118 - v10;
  v139 = sub_29D5B106C();
  v138 = *(v139 - 8);
  MEMORY[0x2A1C7C4A8](v139);
  v136 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D551B34();
  v128 = v12;
  v129 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v123 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D551C2C();
  v130 = v14;
  v131 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v125 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D551D60();
  v135 = v16;
  v134 = *(v16 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v16);
  v132 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v126 = &v118 - v19;
  sub_29D551DF4();
  v140 = v20;
  v141 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v133 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D551E88();
  v144 = v22;
  v146 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v137 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D551FC8();
  v151 = v24;
  v153 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v180 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D552170();
  v152 = v26;
  v154 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v148 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D552308();
  v156 = v28;
  v158 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v150 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55239C();
  v159 = v30;
  v161 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v155 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55247C();
  v164 = v32;
  v165 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v157 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5525F0();
  v167 = v34;
  v168 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v160 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D552798();
  v169 = v36;
  v170 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v166 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29D5B0E6C();
  v177 = v38;
  v122 = *(v38 - 8);
  v39 = v122;
  v127 = *(v122 + 64);
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v42 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40);
  v44 = &v118 - v43;
  sub_29D5B1CBC();
  v45 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v188, v189);
  v46 = sub_29D5B136C();
  v47 = [v46 profileIdentifier];

  v178 = sub_29D5B1C6C();
  sub_29D48F668(&v188);
  sub_29D5B0C0C();
  swift_allocObject();
  v179 = sub_29D5B0BFC();
  sub_29D5B13FC();
  type metadata accessor for SharableModelContextChangeGenerator();
  v143 = swift_allocObject();
  sub_29D497868(&v188, v143 + 16);
  v48 = v42;
  v121 = v42;
  sub_29D5B0E5C();
  v49 = v44;
  v124 = v44;
  sub_29D5B0DDC();
  v50 = *(v39 + 8);
  v162 = v39 + 8;
  v163 = v50;
  v50(v48, v38);
  v51 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v188, v189);
  v52 = sub_29D5B136C();
  v53 = [v52 profileIdentifier];

  v184 = sub_29D5B1C3C();
  sub_29D48F668(&v188);
  v119 = a1;
  *&v188 = sub_29D548A2C(a1);
  LOBYTE(v187) = 0;
  v54 = MEMORY[0x29EDB89F8];
  sub_29D55478C(0, &qword_2A1A166A8, MEMORY[0x29EDB89F8]);
  v120 = MEMORY[0x29EDB8A00];
  sub_29D551BE8(&qword_2A1A166B0, &qword_2A1A166A8, v54);
  v55 = v123;
  sub_29D5B3B4C();

  *&v188 = sub_29D5B363C();
  sub_29D4F7770();
  v147 = MEMORY[0x29EDB88C8];
  sub_29D551D18(&qword_2A1A170A8, sub_29D551B34);
  sub_29D551D18(&qword_2A1A16800, sub_29D4F7770);
  v56 = v125;
  v57 = v128;
  sub_29D5B3B6C();

  (*(v129 + 8))(v55, v57);
  sub_29D551D18(&qword_2A1A17280, sub_29D551C2C);
  v58 = v126;
  v59 = v130;
  sub_29D5B3B9C();
  (*(v131 + 8))(v56, v59);
  v60 = v138;
  v61 = v136;
  v62 = v139;
  (*(v138 + 104))(v136, *MEMORY[0x29EDC37B8], v139);
  sub_29D5B105C();
  (*(v60 + 8))(v61, v62);
  v63 = sub_29D5B369C();
  v64 = v142;
  (*(*(v63 - 8) + 56))(v142, 1, 1, v63);
  v65 = v134;
  v66 = v135;
  (*(v134 + 16))(v132, v58, v135);
  sub_29D55282C(v64, v145);
  sub_29D551D18(&qword_2A1A16CA8, sub_29D551D60);
  v67 = v133;
  sub_29D5B381C();
  sub_29D5528C0(v64, &qword_2A1A172F0, v149);
  (*(v65 + 8))(v58, v66);
  sub_29D551F60(0, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
  sub_29D551D18(&qword_2A1A16FC8, sub_29D551DF4);
  v68 = v137;
  v69 = v140;
  sub_29D5B3B7C();
  (*(v141 + 8))(v67, v69);
  sub_29D5B396C();
  sub_29D50B1A4();
  sub_29D5520B4();
  sub_29D551D18(&qword_2A1A168C8, sub_29D50B1A4);
  v70 = v144;
  sub_29D5B3C5C();
  v146[1](v68, v70);
  v71 = v186;
  v72 = *(v186 + 16);
  v145 = v186 + 16;
  v146 = v72;
  v74 = v181;
  v73 = v182;
  (v72)(v181, a1, v182);
  v75 = v122;
  v76 = v121;
  v77 = v49;
  v78 = v177;
  (*(v122 + 16))(v121, v77, v177);
  v142 = *(v71 + 80);
  v79 = v71;
  v80 = (v142 + 40) & ~v142;
  v144 = v142 | 7;
  v81 = (v183 + *(v75 + 80) + v80) & ~*(v75 + 80);
  v82 = swift_allocObject();
  v83 = v184;
  v84 = v178;
  *(v82 + 2) = v185;
  *(v82 + 3) = v84;
  *(v82 + 4) = v83;
  v85 = v79 + 32;
  v86 = *(v79 + 32);
  v186 = v85;
  v86(&v82[v80], v74, v73);
  (*(v75 + 32))(&v82[v81], v76, v78);
  sub_29D551F60(0, &qword_2A1A16298, &qword_2A1A162A0, 0x29EDC44D8, MEMORY[0x29EDC9C68]);
  sub_29D55225C();
  v149 = MEMORY[0x29EDB89A8];
  sub_29D551D18(&qword_2A1A16990, sub_29D551FC8);
  sub_29D551D18(&qword_2A1A16670, sub_29D55225C);

  v87 = v148;
  v88 = v151;
  v89 = v180;
  sub_29D5B3BFC();

  (*(v153 + 8))(v89, v88);
  sub_29D551D18(&qword_2A1A16A50, sub_29D552170);
  v90 = v150;
  v91 = v152;
  sub_29D5B3BDC();
  (*(v154 + 8))(v87, v91);
  v93 = v181;
  v92 = v182;
  (v146)(v181, v119, v182);
  v94 = (v142 + 24) & ~v142;
  v95 = (v183 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  *(v96 + 16) = v179;
  v86((v96 + v94), v93, v92);
  v97 = v185;
  *(v96 + v95) = v185;
  sub_29D552448(0);
  sub_29D551D18(&qword_2A1A16AF0, sub_29D552308);

  v98 = v155;
  v99 = v156;
  sub_29D5B3BCC();

  (*(v158 + 8))(v90, v99);
  *(swift_allocObject() + 16) = v97;
  v100 = MEMORY[0x29EDB89F8];
  sub_29D554AC8(0, &qword_2A1A167A8, sub_29D552448, MEMORY[0x29EDB89F8]);
  sub_29D551D18(&qword_2A1A16B78, sub_29D55239C);
  sub_29D552568();
  v101 = v157;
  v102 = v159;
  sub_29D5B3B8C();

  (*(v161 + 8))(v98, v102);

  sub_29D5B396C();
  sub_29D5526DC(0);
  sub_29D554AC8(0, &qword_2A1A16768, sub_29D5526DC, v100);
  sub_29D551D18(&qword_2A1A16D58, sub_29D55247C);
  sub_29D552710();
  v103 = v160;
  v104 = v164;
  sub_29D5B3BFC();

  (*(v165 + 8))(v101, v104);
  sub_29D5B147C();
  sub_29D5B143C();
  sub_29D554D90(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v105 = sub_29D5B104C();
  v106 = *(v105 - 8);
  v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_29D5B62A0;
  (*(v106 + 104))(v108 + v107, *MEMORY[0x29EDC3730], v105);
  (*(v173 + 104))(v172, *MEMORY[0x29EDC38A0], v174);
  v109 = MEMORY[0x29EDCA190];
  v110 = v171;
  sub_29D5B13DC();
  sub_29D551D18(&qword_2A1A16AB0, sub_29D5525F0);
  v111 = v110;
  v112 = v167;
  v113 = sub_29D5B3B0C();
  (*(v175 + 8))(v111, v176);
  sub_29D48F668(&v188);
  (*(v168 + 8))(v103, v112);
  v187 = v109;
  *&v188 = v113;
  v114 = v166;
  sub_29D5B3B4C();

  sub_29D551D18(&qword_2A1A170C8, sub_29D552798);
  v115 = v169;
  v116 = sub_29D5B3B1C();

  (*(v170 + 8))(v114, v115);
  v163(v124, v177);
  return v116;
}

void *sub_29D551834(uint64_t a1)
{
  v2 = v1;
  v20 = *v1;
  v19 = sub_29D5B13CC();
  v4 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D5B13EC();
  v7 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HealthRecordsGeneratorContext;
  sub_29D554DF4(a1, v1 + OBJC_IVAR____TtC13HealthRecords29ConceptSharableModelGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v16[1] = sub_29D5B143C();
  sub_29D554D90(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D5B104C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D5B62A0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x29EDC3730], v10);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC38A0], v19);
  sub_29D5B13DC();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords29ConceptSharableModelGenerator_domain, v9, v18);
  v14 = sub_29D54FE8C(a1);
  sub_29D554E5C(a1, v17);
  v2[2] = v14;
  return v2;
}

void sub_29D551B34()
{
  if (!qword_2A1A170A0)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29D55478C(255, &qword_2A1A166A8, MEMORY[0x29EDB89F8]);
    sub_29D551BE8(&qword_2A1A166B0, &qword_2A1A166A8, v0);
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A170A0);
    }
  }
}

uint64_t sub_29D551BE8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D55478C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D551C2C()
{
  if (!qword_2A1A17278)
  {
    sub_29D551B34();
    sub_29D4F7770();
    sub_29D551D18(&qword_2A1A170A8, sub_29D551B34);
    sub_29D551D18(&qword_2A1A16800, sub_29D4F7770);
    v0 = sub_29D5B379C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17278);
    }
  }
}

uint64_t sub_29D551D18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D551D60()
{
  if (!qword_2A1A16CA0)
  {
    sub_29D551C2C();
    sub_29D551D18(&qword_2A1A17280, sub_29D551C2C);
    v0 = sub_29D5B388C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16CA0);
    }
  }
}

void sub_29D551DF4()
{
  if (!qword_2A1A16FC0)
  {
    sub_29D551D60();
    sub_29D551D18(&qword_2A1A16CA8, sub_29D551D60);
    v0 = sub_29D5B380C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16FC0);
    }
  }
}

void sub_29D551E88()
{
  if (!qword_2A1A16E80)
  {
    sub_29D551DF4();
    sub_29D551F60(255, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
    sub_29D551D18(&qword_2A1A16FC8, sub_29D551DF4);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16E80);
    }
  }
}

void sub_29D551F60(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D48F51C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D551FC8()
{
  if (!qword_2A1A16988)
  {
    sub_29D50B1A4();
    sub_29D5543E4(255, &qword_2A1A16F70, sub_29D551E88, sub_29D5520B4);
    sub_29D551D18(&qword_2A1A168C8, sub_29D50B1A4);
    sub_29D5520E8();
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16988);
    }
  }
}

unint64_t sub_29D5520E8()
{
  result = qword_2A1A16F78;
  if (!qword_2A1A16F78)
  {
    sub_29D5543E4(255, &qword_2A1A16F70, sub_29D551E88, sub_29D5520B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16F78);
  }

  return result;
}

void sub_29D552170()
{
  if (!qword_2A1A16A48)
  {
    sub_29D55225C();
    sub_29D551FC8();
    sub_29D551D18(&qword_2A1A16670, sub_29D55225C);
    sub_29D551D18(&qword_2A1A16990, sub_29D551FC8);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16A48);
    }
  }
}

void sub_29D55225C()
{
  if (!qword_2A1A16668)
  {
    sub_29D551F60(255, &qword_2A1A16298, &qword_2A1A162A0, 0x29EDC44D8, MEMORY[0x29EDC9C68]);
    sub_29D4A02FC(255, &qword_2A1A1A410);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16668);
    }
  }
}

void sub_29D552308()
{
  if (!qword_2A1A16AE8)
  {
    sub_29D552170();
    sub_29D551D18(&qword_2A1A16A50, sub_29D552170);
    v0 = sub_29D5B38EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16AE8);
    }
  }
}

void sub_29D55239C()
{
  if (!qword_2A1A16B70)
  {
    sub_29D552308();
    sub_29D552448(255);
    sub_29D551D18(&qword_2A1A16AF0, sub_29D552308);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16B70);
    }
  }
}

void sub_29D55247C()
{
  if (!qword_2A1A16D50)
  {
    sub_29D55239C();
    sub_29D554AC8(255, &qword_2A1A167A8, sub_29D552448, MEMORY[0x29EDB89F8]);
    sub_29D551D18(&qword_2A1A16B78, sub_29D55239C);
    sub_29D552568();
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16D50);
    }
  }
}

unint64_t sub_29D552568()
{
  result = qword_2A1A167B0;
  if (!qword_2A1A167B0)
  {
    sub_29D554AC8(255, &qword_2A1A167A8, sub_29D552448, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A167B0);
  }

  return result;
}

void sub_29D5525F0()
{
  if (!qword_2A1A16AA8)
  {
    sub_29D554AC8(255, &qword_2A1A16768, sub_29D5526DC, MEMORY[0x29EDB89F8]);
    sub_29D55247C();
    sub_29D552710();
    sub_29D551D18(&qword_2A1A16D58, sub_29D55247C);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16AA8);
    }
  }
}

unint64_t sub_29D552710()
{
  result = qword_2A1A16770;
  if (!qword_2A1A16770)
  {
    sub_29D554AC8(255, &qword_2A1A16768, sub_29D5526DC, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16770);
  }

  return result;
}

void sub_29D552798()
{
  if (!qword_2A1A170C0)
  {
    sub_29D554AC8(255, &qword_2A1A16768, sub_29D5526DC, MEMORY[0x29EDB89F8]);
    sub_29D552710();
    v0 = sub_29D5B37FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A170C0);
    }
  }
}

uint64_t sub_29D55282C(uint64_t a1, uint64_t a2)
{
  sub_29D554D90(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5528C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D554D90(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D552930@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_29D5B0E6C() - 8);
  v9 = *(v2 + 32);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_29D549384(a1, v9, v10, a2);
}

void *sub_29D552A1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_29D549690(a1, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_29D552AD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D569938(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_29D552AFC()
{
  result = qword_2A17A4B20;
  if (!qword_2A17A4B20)
  {
    sub_29D554AC8(255, &qword_2A17A4B18, sub_29D552448, MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4B20);
  }

  return result;
}

unint64_t sub_29D552BA4()
{
  result = qword_2A17A4B28;
  if (!qword_2A17A4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4B28);
  }

  return result;
}

void sub_29D552BF8()
{
  if (!qword_2A17A4B30)
  {
    sub_29D5250C8();
    sub_29D551F60(255, &qword_2A1A16298, &qword_2A1A162A0, 0x29EDC44D8, MEMORY[0x29EDC9C68]);
    sub_29D551D18(&qword_2A1A16710, sub_29D5250C8);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4B30);
    }
  }
}

void sub_29D552CD0(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_29D5B0E6C() - 8);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_29D54A4C0(a1, v6, v7, a2);
}

unint64_t sub_29D552D74()
{
  v24 = sub_29D5B367C();
  v0 = sub_29D5B365C();
  v1 = v0;
  v25 = MEMORY[0x29EDCA190];
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
  {
    v4 = MEMORY[0x29EDCA190];
    if (i)
    {
      v5 = 0;
      v6 = MEMORY[0x29EDCA190];
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x29ED5EF30](v7, v1);
          }

          else
          {
            if (v7 >= *(v2 + 16))
            {
              goto LABEL_54;
            }

            v8 = *(v1 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v7;
          if (v5 == i)
          {
            goto LABEL_19;
          }
        }

        MEMORY[0x29ED5E5E0]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        v6 = v25;
      }

      while (v5 != i);
    }

    else
    {
      v6 = MEMORY[0x29EDCA190];
    }

LABEL_19:

    v25 = v4;
    if (v6 >> 62)
    {
      v1 = sub_29D5B485C();
    }

    else
    {
      v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x29EDCA190];
    if (v1)
    {
      v11 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x29ED5EF30](v11, v6);
        }

        else
        {
          if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v12 = *(v6 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ([v12 isLowUtility])
        {
        }

        else
        {
          sub_29D5B498C();
          v2 = *(v4 + 16);
          sub_29D5B49BC();
          sub_29D5B49CC();
          sub_29D5B499C();
        }

        ++v11;
        if (v14 == v1)
        {
          v15 = v4;
          v10 = MEMORY[0x29EDCA190];
          goto LABEL_34;
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v15 = MEMORY[0x29EDCA190];
LABEL_34:

    if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
    {
      sub_29D48F51C(0, &qword_2A1A16320);

      v16 = sub_29D5B4A4C();
    }

    else
    {

      sub_29D5B4C8C();
      sub_29D48F51C(0, &qword_2A1A16320);
      v16 = v15;
    }

    sub_29D54F90C(v24, sub_29D4C7AC8);
    v17 = v16;
    v25 = v10;
    if (!(v16 >> 62))
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        break;
      }

      goto LABEL_39;
    }

    v18 = sub_29D5B485C();
    if (!v18)
    {
      break;
    }

LABEL_39:
    v19 = 0;
    v2 = v17 & 0xC000000000000001;
    v20 = MEMORY[0x29EDCA190];
LABEL_40:
    v1 = v19;
    while (1)
    {
      if (v2)
      {
        v21 = MEMORY[0x29ED5EF30](v1, v17);
      }

      else
      {
        if (v1 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v21 = *(v17 + 8 * v1 + 32);
      }

      v22 = v21;
      v19 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x29ED5E5E0]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        v20 = v25;
        if (v19 != v18)
        {
          goto LABEL_40;
        }

        goto LABEL_63;
      }

      ++v1;
      if (v19 == v18)
      {
        goto LABEL_63;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v20 = MEMORY[0x29EDCA190];
LABEL_63:

  return v20;
}

id sub_29D5531C0(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v39[1] = a3;
  sub_29D554D90(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v40 = v39 - v10;
  v11 = sub_29D5B1D6C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v5;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v16 = result;
    v17 = [a1 semanticIdentifier];
    v18 = [v17 stringValue];

    if (!v18)
    {
      sub_29D5B3E5C();
      v18 = sub_29D5B3E1C();
    }

    [v16 setConceptIdentifier_];

    sub_29D5B453C();
    v19 = sub_29D5B3E1C();

    [v16 setPreferredName_];

    v20 = [a1 educationContent];
    v42 = v16;
    if (v20)
    {
      v43 = v20;
      v21 = v20;
      sub_29D48F51C(0, &qword_2A17A4B40);
      v22 = sub_29D5B270C();

      v16 = v42;
      if (v22)
      {
        [v42 setLocalizedEducationContent_];
      }
    }

    [v16 setIsPinned_];
    (*(v12 + 104))(v14, *MEMORY[0x29EDC4068], v11);
    v23 = sub_29D5B1D0C();
    (*(v12 + 8))(v14, v11);
    [v16 setCategory_];
    v43 = MEMORY[0x29EDCA190];
    if (a4 >> 62)
    {
LABEL_23:
      v24 = sub_29D5B485C();
    }

    else
    {
      v24 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = 0;
    v26 = MEMORY[0x29EDCA190];
    while (v24 != v25)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x29ED5EF30](v25, a4);
      }

      else
      {
        if (v25 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v27 = *(a4 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v30 = MEMORY[0x29ED5F4B0]();
      v31 = sub_29D54DE14();
      objc_autoreleasePoolPop(v30);

      ++v25;
      if (v31)
      {
        MEMORY[0x29ED5E5E0]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        v26 = v43;
        v25 = v29;
      }
    }

    v32 = sub_29D54DE14();
    v33 = v42;
    [v42 setLatestRecord_];

    sub_29D4C514C(v26);

    v34 = objc_allocWithZone(MEMORY[0x29EDB8DE8]);
    v35 = sub_29D5B401C();

    v36 = [v34 initWithArray_];

    [v33 setAllRecords_];
    v37 = v40;
    sub_29D5B174C();
    v38 = sub_29D5B175C();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    sub_29D5536D8();
    sub_29D5B302C();
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_29D5536D8()
{
  result = qword_2A17A4278;
  if (!qword_2A17A4278)
  {
    sub_29D48F51C(255, &qword_2A1A162A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4278);
  }

  return result;
}

void sub_29D553740()
{
  if (!qword_2A1A163A0)
  {
    sub_29D5B368C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A163A0);
    }
  }
}

void sub_29D5537A8()
{
  if (!qword_2A1A169E8)
  {
    sub_29D5543E4(255, &qword_2A1A16F50, sub_29D553894, sub_29D553970);
    sub_29D5539A4();
    sub_29D553A50();
    sub_29D551D18(&qword_2A1A166E0, sub_29D5539A4);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A169E8);
    }
  }
}

void sub_29D553894()
{
  if (!qword_2A1A168A8)
  {
    sub_29D551F60(255, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8, MEMORY[0x29EDC9A40]);
    sub_29D554260(&qword_2A1A163B8, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8);
    v0 = sub_29D5B392C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A168A8);
    }
  }
}

void sub_29D5539A4()
{
  if (!qword_2A1A166D8)
  {
    sub_29D551F60(255, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8, MEMORY[0x29EDC9A40]);
    sub_29D4A02FC(255, &qword_2A1A1A410);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A166D8);
    }
  }
}

unint64_t sub_29D553A50()
{
  result = qword_2A1A16F58;
  if (!qword_2A1A16F58)
  {
    sub_29D5543E4(255, &qword_2A1A16F50, sub_29D553894, sub_29D553970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16F58);
  }

  return result;
}

void sub_29D553AD8()
{
  if (!qword_2A1A16A58)
  {
    sub_29D554AC8(255, &qword_2A1A16678, sub_29D553BC4, MEMORY[0x29EDB89F8]);
    sub_29D5537A8();
    sub_29D553C70();
    sub_29D551D18(&qword_2A1A169F0, sub_29D5537A8);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16A58);
    }
  }
}

void sub_29D553BC4()
{
  if (!qword_2A1A162A8)
  {
    sub_29D48F51C(255, &qword_2A1A162B0);
    sub_29D551F60(255, &qword_2A1A163E0, &qword_2A1A16300, 0x29EDBADB8, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A162A8);
    }
  }
}

unint64_t sub_29D553C70()
{
  result = qword_2A1A16680;
  if (!qword_2A1A16680)
  {
    sub_29D554AC8(255, &qword_2A1A16678, sub_29D553BC4, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16680);
  }

  return result;
}

void sub_29D553D2C()
{
  if (!qword_2A1A16AF8)
  {
    sub_29D5542C4(255, &qword_2A1A16A68, sub_29D553AD8, sub_29D553CF8);
    sub_29D553DC0();
    v0 = sub_29D5B38EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16AF8);
    }
  }
}

unint64_t sub_29D553DC0()
{
  result = qword_2A1A16A70;
  if (!qword_2A1A16A70)
  {
    sub_29D5542C4(255, &qword_2A1A16A68, sub_29D553AD8, sub_29D553CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16A70);
  }

  return result;
}

uint64_t sub_29D553E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D553EE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HealthRecordsGeneratorContext();
  result = sub_29D554964(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29D553F58()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D554040(void *a1, uint64_t a2)
{
  type metadata accessor for HealthRecordsGeneratorContext();

  return sub_29D54DBE4(a1, a2);
}

uint64_t sub_29D5540C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_29D5540FC()
{
  result = qword_2A1A16E68;
  if (!qword_2A1A16E68)
  {
    sub_29D554610(255, &qword_2A1A16E60, sub_29D553D2C, sub_29D553E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16E68);
  }

  return result;
}

void sub_29D554184()
{
  if (!qword_2A17A4B58)
  {
    sub_29D551F60(255, &qword_2A1A163E0, &qword_2A1A16300, 0x29EDBADB8, MEMORY[0x29EDC9A40]);
    sub_29D554260(&qword_2A17A4B60, &qword_2A1A163E0, &qword_2A1A16300, 0x29EDBADB8);
    v0 = sub_29D5B392C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4B58);
    }
  }
}

uint64_t sub_29D554260(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D551F60(255, a2, a3, a4, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D5542C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    v7 = MEMORY[0x29EDB89F8];
    sub_29D55478C(255, &qword_2A1A166A8, MEMORY[0x29EDB89F8]);
    a3(255);
    sub_29D551BE8(&qword_2A1A166B0, &qword_2A1A166A8, v7);
    a4();
    v8 = sub_29D5B38FC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D5543E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_29D4A02FC(255, &qword_2A1A1A410);
    a4();
    v6 = sub_29D5B382C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D5544F4()
{
  if (!qword_2A17A4B88)
  {
    sub_29D5542C4(255, &qword_2A17A4B68, sub_29D5543B0, sub_29D5544C0);
    sub_29D554588();
    v0 = sub_29D5B38EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4B88);
    }
  }
}

unint64_t sub_29D554588()
{
  result = qword_2A17A4B90;
  if (!qword_2A17A4B90)
  {
    sub_29D5542C4(255, &qword_2A17A4B68, sub_29D5543B0, sub_29D5544C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4B90);
  }

  return result;
}

void sub_29D554610(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_29D5B384C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D5546BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D54B5E8(*a1, *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

unint64_t sub_29D5546F4()
{
  result = qword_2A17A4BA8;
  if (!qword_2A17A4BA8)
  {
    sub_29D554610(255, &qword_2A17A4B98, sub_29D5544F4, sub_29D554688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4BA8);
  }

  return result;
}

void sub_29D55478C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29D4A02FC(255, &qword_2A1A1A410);
    v7 = a3(a1, MEMORY[0x29EDC9A98], v6, MEMORY[0x29EDC9F20]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D55480C()
{
  result = qword_2A17A4BC8;
  if (!qword_2A17A4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4BC8);
  }

  return result;
}

void sub_29D5548A4(int a1, void *a2)
{
  v5 = *(sub_29D5B353C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = v2 + v7;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v2 + v8);

  sub_29D54D698(a1, a2, v9, v2 + v6, v11, v12, v13);
}

uint64_t sub_29D554964(void *a1)
{
  sub_29D5B140C();
  sub_29D499EC0(v9, v9[3]);
  v2 = sub_29D5B136C();
  v3 = [objc_allocWithZone(MEMORY[0x29EDBADC0]) initWithHealthStore:v2 recipientIdentifier:a1];

  sub_29D48F668(v9);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_29D554AC8(0, &qword_2A17A4BE8, sub_29D553BC4, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v5 = v3;
  v6 = a1;
  v9[0] = sub_29D5B3A6C();
  sub_29D554B54();
  v7 = sub_29D5B3B1C();

  return v7;
}

void sub_29D554AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4A02FC(255, &qword_2A1A1A410);
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D554B54()
{
  result = qword_2A17A4BF0;
  if (!qword_2A17A4BF0)
  {
    sub_29D554AC8(255, &qword_2A17A4BE8, sub_29D553BC4, MEMORY[0x29EDB8AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4BF0);
  }

  return result;
}

uint64_t sub_29D554BDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

void sub_29D554C30()
{
  if (!qword_2A1A16578)
  {
    sub_29D551F60(255, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8, MEMORY[0x29EDC9A40]);
    sub_29D4A02FC(255, &qword_2A1A1A410);
    v0 = sub_29D5B3A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16578);
    }
  }
}

uint64_t sub_29D554CDC()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

void sub_29D554D28()
{
  if (!qword_2A1A19820)
  {
    sub_29D4A02FC(255, &qword_2A1A19828);
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19820);
    }
  }
}

void sub_29D554D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D554DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D554E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D554EE0()
{
  result = qword_2A17A4BF8;
  if (!qword_2A17A4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4BF8);
  }

  return result;
}

unint64_t sub_29D554F38()
{
  result = qword_2A17A4C00;
  if (!qword_2A17A4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C00);
  }

  return result;
}

uint64_t type metadata accessor for ConceptDeltaHighlightFeedItemData()
{
  result = qword_2A17A4C08;
  if (!qword_2A17A4C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D555028()
{
  sub_29D5B1D6C();
  if (v0 <= 0x3F)
  {
    sub_29D4A0664(319, &qword_2A1A164D8, &qword_2A1A162D0);
    if (v1 <= 0x3F)
    {
      sub_29D4A0664(319, &qword_2A17A48C8, &qword_2A17A48B8);
      if (v2 <= 0x3F)
      {
        sub_29D4B4C4C(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29D555128(void *a1)
{
  sub_29D5565E4(0, &qword_2A17A4C38, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9 - v6;
  sub_29D499EC0(a1, a1[3]);
  sub_29D5564D4();
  sub_29D5B4DCC();
  v17 = 0;
  sub_29D5B1D6C();
  sub_29D556C8C(&qword_2A17A4120, MEMORY[0x29EDC4098]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for ConceptDeltaHighlightFeedItemData();
    v16 = 1;
    sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
    sub_29D54186C(&qword_2A17A4A58);
    sub_29D5B4C0C();
    v15 = 2;
    sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8);
    sub_29D556528(&qword_2A17A4C40);
    sub_29D5B4C0C();
    v14 = 3;
    sub_29D5B4C0C();
    v13 = 4;
    sub_29D5B4BFC();
    v12 = 5;
    sub_29D5B4BCC();
    v11 = 6;
    sub_29D5B0E6C();
    sub_29D556C8C(&qword_2A1A193D8, MEMORY[0x29EDB9BC8]);
    sub_29D5B4BBC();
    v10 = 7;
    sub_29D5B4BDC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29D5554F0()
{
  v1 = sub_29D5B0E6C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1D6C();
  sub_29D556C8C(&qword_2A17A4128, MEMORY[0x29EDC4098]);
  sub_29D5B3D9C();
  v8 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  sub_29D5418C8();
  sub_29D5B3D9C();
  sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8);
  sub_29D556648();
  sub_29D5B3D9C();
  sub_29D5B3D9C();
  MEMORY[0x29ED5F330](*(v0 + *(v8 + 32)));
  sub_29D5B3EFC();
  sub_29D55670C(v0 + *(v8 + 40), v7, sub_29D4B4C4C);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_29D5B4D6C();
    sub_29D556C8C(&qword_2A17A4068, MEMORY[0x29EDB9BC8]);
    sub_29D5B3D9C();
    (*(v2 + 8))(v4, v1);
  }

  return sub_29D5B4D6C();
}

uint64_t sub_29D555808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = MEMORY[0x2A1C7C4A8](v5);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v44 = &v39 - v8;
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  v48 = v9;
  v45 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v39 - v10;
  v12 = sub_29D5B1D6C();
  v49 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v50 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5565E4(0, &qword_2A17A4C20, MEMORY[0x29EDC9E80]);
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D5564D4();
  v53 = v16;
  v20 = v54;
  sub_29D5B4DBC();
  if (v20)
  {
    return sub_29D48F668(a1);
  }

  v21 = v19;
  v62 = 0;
  sub_29D556C8C(&qword_2A17A4110, MEMORY[0x29EDC4098]);
  v22 = v50;
  sub_29D5B4B6C();
  v23 = *(v49 + 32);
  v54 = v12;
  v23(v21, v22, v12);
  v61 = 1;
  sub_29D54186C(&qword_2A17A4A48);
  v24 = v48;
  sub_29D5B4B6C();
  v25 = v17;
  (*(v45 + 32))(v21 + *(v17 + 20), v11, v24);
  v60 = 2;
  sub_29D556528(&qword_2A17A4C30);
  v26 = v44;
  v27 = v47;
  v50 = 0;
  sub_29D5B4B6C();
  v40 = v25;
  v28 = *(v25 + 24);
  v44 = *(v46 + 32);
  (v44)(v21 + v28, v26, v27);
  v59 = 3;
  v29 = v43;
  sub_29D5B4B6C();
  (v44)(v21 + v40[7], v29, v27);
  v58 = 4;
  v30 = sub_29D5B4B5C();
  v31 = v40;
  *(v21 + v40[8]) = v30;
  v57 = 5;
  v32 = sub_29D5B4B2C();
  v33 = v51;
  v34 = (v21 + v31[9]);
  *v34 = v32;
  v34[1] = v35;
  sub_29D5B0E6C();
  v56 = 6;
  sub_29D556C8C(&qword_2A1A193D0, MEMORY[0x29EDB9BC8]);
  v36 = v42;
  sub_29D5B4B1C();
  sub_29D4D1F64(v36, v21 + v31[10]);
  v55 = 7;
  v38 = sub_29D5B4B3C();
  (*(v33 + 8))(v53, v52);
  *(v21 + v31[11]) = v38 & 1;
  sub_29D55670C(v21, v41, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  sub_29D48F668(a1);
  return sub_29D556584(v21, type metadata accessor for ConceptDeltaHighlightFeedItemData);
}

unint64_t sub_29D556154()
{
  v1 = *v0;
  v2 = 0x747065636E6F63;
  v3 = 0x66676E696E61656DLL;
  if (v1 != 6)
  {
    v3 = 0x69446E4965646968;
  }

  v4 = 0x656C746974;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6365527265646C6FLL;
  if (v1 != 2)
  {
    v5 = 0x636552726577656ELL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_29D556278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D556F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D5562AC(uint64_t a1)
{
  v2 = sub_29D5564D4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D5562E8(uint64_t a1)
{
  v2 = sub_29D5564D4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D556354()
{
  sub_29D5B4D4C();
  sub_29D5554F0();
  return sub_29D5B4D9C();
}

uint64_t sub_29D556398()
{
  sub_29D5B4D4C();
  sub_29D5554F0();
  return sub_29D5B4D9C();
}

uint64_t sub_29D55640C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D556C8C(&qword_2A17A4C58, type metadata accessor for ConceptDeltaHighlightFeedItemData);

  return MEMORY[0x2A1C660E0](a1, v4, a2);
}

unint64_t sub_29D5564D4()
{
  result = qword_2A17A4C28;
  if (!qword_2A17A4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C28);
  }

  return result;
}

uint64_t sub_29D556528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A17A48C8, &qword_2A17A48B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D556584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D5565E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D5564D4();
    v7 = a3(a1, &type metadata for ConceptDeltaHighlightFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D556648()
{
  result = qword_2A17A4C48;
  if (!qword_2A17A4C48)
  {
    sub_29D4A0664(255, &qword_2A17A48C8, &qword_2A17A48B8);
    sub_29D4DC4A0(&qword_2A17A4C50, &qword_2A17A48B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C48);
  }

  return result;
}

uint64_t sub_29D55670C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D556774(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0E6C();
  v32 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D2828();
  v11 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1D6C();
  sub_29D556C8C(&qword_2A17A4130, MEMORY[0x29EDC4098]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v34 != v33)
  {
    goto LABEL_15;
  }

  v30 = v6;
  v31 = v4;
  v14 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  sub_29D48F51C(0, &qword_2A1A162D0);
  sub_29D4DC4A0(&qword_2A17A4A70, &qword_2A1A162D0);
  if ((sub_29D5B3CFC() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_29D48F51C(0, &qword_2A17A48B8);
  sub_29D4DC4A0(&qword_2A17A4C60, &qword_2A17A48B8);
  if ((sub_29D5B3CFC() & 1) == 0 || (sub_29D5B3CFC() & 1) == 0 || *(a1 + v14[8]) != *(a2 + v14[8]))
  {
    goto LABEL_15;
  }

  v15 = v14[9];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if ((v16 != *v18 || v17 != v18[1]) && (sub_29D5B4C7C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v19 = v14[10];
  v20 = *(v11 + 48);
  sub_29D55670C(a1 + v19, v13, sub_29D4B4C4C);
  sub_29D55670C(a2 + v19, &v13[v20], sub_29D4B4C4C);
  v21 = v31;
  v22 = v32;
  v23 = *(v32 + 48);
  if (v23(v13, 1, v31) == 1)
  {
    if (v23(&v13[v20], 1, v21) == 1)
    {
      sub_29D556584(v13, sub_29D4B4C4C);
LABEL_18:
      v24 = *(a1 + v14[11]) ^ *(a2 + v14[11]) ^ 1;
      return v24 & 1;
    }

    goto LABEL_14;
  }

  sub_29D55670C(v13, v9, sub_29D4B4C4C);
  if (v23(&v13[v20], 1, v21) == 1)
  {
    (*(v22 + 8))(v9, v21);
LABEL_14:
    sub_29D556584(v13, sub_29D4D2828);
    goto LABEL_15;
  }

  v26 = v30;
  (*(v22 + 32))(v30, &v13[v20], v21);
  sub_29D556C8C(&qword_2A17A4070, MEMORY[0x29EDB9BC8]);
  v27 = sub_29D5B3E0C();
  v28 = *(v22 + 8);
  v28(v26, v21);
  v28(v9, v21);
  sub_29D556584(v13, sub_29D4B4C4C);
  if (v27)
  {
    goto LABEL_18;
  }

LABEL_15:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_29D556C8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ConceptDeltaHighlightFeedItemData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConceptDeltaHighlightFeedItemData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D556E28()
{
  result = qword_2A17A4C68;
  if (!qword_2A17A4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C68);
  }

  return result;
}

unint64_t sub_29D556E80()
{
  result = qword_2A17A4C70;
  if (!qword_2A17A4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C70);
  }

  return result;
}

unint64_t sub_29D556ED8()
{
  result = qword_2A17A4C78;
  if (!qword_2A17A4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C78);
  }

  return result;
}

uint64_t sub_29D556F2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000029D5BCB10 == a2;
  if (v3 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747065636E6F63 && a2 == 0xE700000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6365527265646C6FLL && a2 == 0xEB0000000064726FLL || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636552726577656ELL && a2 == 0xEB0000000064726FLL || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029D5BE0D0 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x66676E696E61656DLL && a2 == 0xEE00657461446C75 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69446E4965646968 && a2 == 0xEE007265766F6373)
  {

    return 7;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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