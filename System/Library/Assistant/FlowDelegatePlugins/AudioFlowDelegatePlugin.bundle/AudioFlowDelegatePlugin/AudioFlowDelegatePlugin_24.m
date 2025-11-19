void sub_2AD430(uint64_t a1, void *a2, void *a3)
{
  v37 = a3;
  v5 = sub_2CE000();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C8EC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[6];
  sub_35E0(a2 + 2, a2[5]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v17 = sub_2CC620();
  v19 = v18;

  (*(v10 + 8))(v13, v9);
  swift_beginAccess();
  v20 = *(a1 + 24);
  *(a1 + 16) = v17;
  *(a1 + 24) = v19;

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = v36;
  v22 = sub_3ED0(v36, static Logger.default);
  swift_beginAccess();
  v23 = v35;
  (*(v35 + 16))(v8, v22, v21);

  v24 = sub_2CDFE0();
  v25 = sub_2CE690();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = 136315138;
    swift_beginAccess();
    v28 = *(a1 + 16);
    v29 = *(a1 + 24);

    v30 = sub_3F08(v28, v29, &v38);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v24, v25, "PlayMediaAlternativesViewProvider#makeAlternativesCardSectionAndCommands alternatives title from Strings file as: %s...", v26, 0xCu);
    sub_306C(v27);
  }

  (*(v23 + 8))(v8, v21);
  swift_beginAccess();
  v31 = *(a1 + 16);
  v32 = *(a1 + 24);

  v33 = sub_2C9C50();

  [v37 setTitle:v33];
}

uint64_t sub_2AD83C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, unint64_t a12)
{
  v68 = a7;
  v69 = a6;
  v70 = a5;
  v17 = sub_20410(&qword_3519E8, &qword_2D49F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = (&v64 - v19);
  v21 = sub_20410(&unk_356F60, qword_2D4A00);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v64 - v23;
  v25 = sub_2CE000();
  v26 = *(v25 - 1);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_20410(&unk_351900, &unk_2D0960);
    v30 = swift_allocObject();
    v66 = v20;
    v67 = v26;
    *(v30 + 16) = xmmword_2D0770;
    *(v30 + 32) = sub_2C9C50();
    sub_334A0(0, &qword_356F28, SFRichText_ptr);
    v12 = v25;
    v31 = v24;
    v32 = a2;
    v33 = a1;
    isa = sub_2CE400().super.isa;
    v20 = v66;
    v26 = v67;

    [a3 setDescriptions:isa];

    a1 = v33;
    a2 = v32;
    v24 = v31;
    v25 = v12;
  }

  if (a4 >> 62)
  {
    if (sub_2CEDA0())
    {
LABEL_5:
      v65 = a3;
      if ((a4 & 0xC000000000000001) != 0)
      {
        v29 = v70;
        v35 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_33;
        }

        v29 = v70;
        v35 = *(a4 + 32);
      }

      v25 = v35;
      v26 = a11;
      v36 = sub_2B1C24();
      v64 = a1;
      v70 = v25;
      if (v36)
      {
        v37 = [v25 privateMediaItemValueData];
        if (v37 && (v38 = v37, v39 = [v37 punchoutURI], v38, v39))
        {
          sub_2CE270();
          v25 = v40;

          v12 = sub_2B3528();
        }

        else
        {
          v12 = sub_2B33AC();
        }
      }

      else
      {
        v41 = sub_2B3768(v25, a10);
        if (v41)
        {
          v42 = v41;
          v12 = sub_2B3B4C(v41);
        }

        else
        {
          v12 = 0;
        }
      }

      swift_beginAccess();
      a1 = *(a11 + 16);
      a3 = *(a11 + 24);
      if (a12 >> 62)
      {
        if (sub_2CEDA0())
        {
LABEL_18:
          if ((a12 & 0xC000000000000001) == 0)
          {
            if (*(&dword_10 + (a12 & 0xFFFFFFFFFFFFFF8)))
            {
              v43 = *(a12 + 32);

              v44 = v43;
LABEL_21:
              v45 = v44;
LABEL_30:
              v57 = [v45 thumbnail];

              sub_2ADF1C(a1, a3, v64, a2, v57, v12, v24);

              v58 = sub_20410(&qword_3519F0, &qword_2D49F8);
              v59 = *(v58 + 64);
              v60 = v65;
              v61 = v68;
              *v20 = v65;
              v20[1] = v61;
              sub_2B4010(v24, v20 + v59);
              (*(*(v58 - 8) + 56))(v20, 0, 1, v58);
              v62 = v60;

              v29(v20);

              sub_30B8(v20, &qword_3519E8, &qword_2D49F0);
              v54 = &unk_356F60;
              v55 = qword_2D4A00;
              v56 = v24;
              return sub_30B8(v56, v54, v55);
            }

            __break(1u);
            goto LABEL_35;
          }

LABEL_33:

          v44 = sub_2CECD0();
          goto LABEL_21;
        }
      }

      else if (*(&dword_10 + (a12 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }

      v45 = 0;
      goto LABEL_30;
    }
  }

  else if (*(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_5;
  }

  if (qword_34BF58 != -1)
  {
LABEL_35:
    swift_once();
  }

  v46 = sub_3ED0(v25, static Logger.default);
  swift_beginAccess();
  (*(v26 + 16))(v29, v46, v25);
  v47 = sub_2CDFE0();
  v48 = sub_2CE690();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_0, v47, v48, "PlayMediaAlternativesViewProvider#makeAlternativesCardSectionAndCommands returning no alternative snippet model - no mediaItem", v49, 2u);
  }

  (*(v26 + 8))(v29, v25);
  v50 = sub_20410(&qword_3519F0, &qword_2D49F8);
  v51 = *(v50 + 64);
  *v20 = a3;
  v20[1] = v68;
  v52 = sub_2CD2B0();
  (*(*(v52 - 8) + 56))(v20 + v51, 1, 1, v52);
  (*(*(v50 - 8) + 56))(v20, 0, 1, v50);
  v53 = a3;

  v70(v20);
  v54 = &qword_3519E8;
  v55 = &qword_2D49F0;
  v56 = v20;
  return sub_30B8(v56, v54, v55);
}

uint64_t sub_2ADF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v66 = a6;
  v67 = a4;
  v62 = a5;
  v64 = a3;
  v10 = sub_20410(&unk_3519B0, &qword_2D1230);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v58 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v65 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v61 = &v58 - v21;
  v22 = __chkstk_darwin(v20);
  v60 = &v58 - v23;
  __chkstk_darwin(v22);
  v25 = &v58 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v68 = v16[2];
  v68(v25, v26, v15);
  v27 = sub_2CDFE0();
  v28 = sub_2CE690();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v58 = a1;
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "PlayMediaAlternativesViewProvider#alternativesSnippetModel...", v29, 2u);
  }

  v30 = v16[1];
  v30(v25, v15);
  if (!a2)
  {
    v39 = v65;
    v68(v65, v26, v15);
    v40 = sub_2CDFE0();
    v41 = sub_2CE690();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "PlayMediaAlternativesViewProvider#alternativesSnippetModel returning nil for alternatives - no title", v42, 2u);
    }

    v43 = v39;
    goto LABEL_22;
  }

  if (!v67)
  {
    v44 = v61;
    v68(v61, v26, v15);
    v45 = sub_2CDFE0();
    v46 = sub_2CE690();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "PlayMediaAlternativesViewProvider#alternativesSnippetModel returning nil for alternatives - no title", v47, 2u);
    }

    v43 = v44;
    goto LABEL_22;
  }

  v31 = v66;
  if (!v66)
  {
    v50 = v60;
    v68(v60, v26, v15);
    v51 = sub_2CDFE0();
    v52 = sub_2CE690();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "PlayMediaAlternativesViewProvider#alternativesSnippetModel returning nil for alternatives - no action", v53, 2u);
    }

    v43 = v50;
LABEL_22:
    v30(v43, v15);
    v54 = 1;
    goto LABEL_26;
  }

  if (v62 && (objc_opt_self(), (v32 = swift_dynamicCastObjCClass()) != 0))
  {
    v33 = v32;
    v34 = v31;

    v35 = [v33 urlValue];
    if (v35)
    {
      v36 = v59;
      v37 = v35;
      sub_2C8D60();

      v38 = 0;
    }

    else
    {
      v38 = 1;
      v36 = v59;
    }

    v55 = sub_2C8D90();
    (*(*(v55 - 8) + 56))(v36, v38, 1, v55);
    sub_7FD30(v36, v63);
  }

  else
  {
    v48 = sub_2C8D90();
    (*(*(v48 - 8) + 56))(v63, 1, 1, v48);
    v49 = v31;
  }

  sub_2CD2A0();
  v54 = 0;
LABEL_26:
  v56 = sub_2CD2B0();
  return (*(*(v56 - 8) + 56))(a7, v54, 1, v56);
}

uint64_t sub_2AE578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = sub_2CDFD0();
  v41 = *(v45 - 8);
  v6 = *(v41 + 64);
  v7 = __chkstk_darwin(v45);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v38 - v8;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_2CDFE0();
  v16 = sub_2CE690();

  v17 = os_log_type_enabled(v15, v16);
  v43 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v38 = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v39 = a3;
    v21 = v20;
    v46 = v20;
    *v19 = 136315138;
    v22 = sub_2CE420();
    v24 = v6;
    v25 = sub_3F08(v22, v23, &v46);

    *(v19 + 4) = v25;
    v6 = v24;
    _os_log_impl(&dword_0, v15, v16, "PlayMediaAlternativesViewProvider#makeArtistsLabel making artists label with %s", v19, 0xCu);
    sub_306C(v21);
    a3 = v39;

    (*(v10 + 8))(v13, v38);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  v27 = qword_34BF98;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_35F760;
  v29 = v42;
  sub_2CDFB0();
  v30 = v40;
  v31 = v41;
  v32 = v45;
  (*(v41 + 16))(v40, v29, v45);
  v33 = (*(v31 + 80) + 33) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = "alternativesViewProviderMakeArtistsLabel";
  *(v34 + 24) = 40;
  *(v34 + 32) = 2;
  (*(v31 + 32))(v34 + v33, v30, v32);
  v35 = (v34 + ((v6 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_BB214;
  v35[1] = v26;

  sub_2CE9E0();
  sub_2CDF90();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_BB21C;
  *(v36 + 24) = v34;

  sub_2AEA6C(sub_BB2C4, v36, v43, v44);

  return (*(v31 + 8))(v29, v32);
}

unint64_t sub_2AEA6C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_2C8EC0();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v14);
  v19 = &v51 - v18;
  __chkstk_darwin(v17);
  v21 = &v51 - v20;

  v54 = _swiftEmptyArrayStorage;
  swift_retain_n();
  sub_2AB948(a3, &v54);
  v22 = v54;
  v23 = v54[2];
  if (v23 == 1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v28 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v19, v28, v11);
    v16 = sub_2CDFE0();
    a4 = sub_2CE690();
    if (os_log_type_enabled(v16, a4))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v16, a4, "PlayMediaAlternativesViewProvider#makeArtistsLabel only 1 artist, returning it", v10, 2u);
    }

    v29 = *(v12 + 8);
    v12 += 8;
    v29(v19, v11);
    if (v22[2])
    {
      v30 = v22[4];
      v31 = v22[5];

      v32 = v30;
      v33 = v31;
      v34 = a1;
LABEL_23:
      sub_2B3CAC(v32, v33, v34);

LABEL_24:
    }

    __break(1u);
    goto LABEL_26;
  }

  if (!v23)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v24 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v21, v24, v11);
    v25 = sub_2CDFE0();
    v26 = sub_2CE690();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "PlayMediaAlternativesViewProvider#makeArtistsLabel empty artists, nil return", v27, 2u);
    }

    (*(v12 + 8))(v21, v11);

    sub_2B3CAC(0, 0, a1);
    goto LABEL_24;
  }

  v51 = a1;
  if (qword_34BF58 != -1)
  {
LABEL_26:
    swift_once();
  }

  v35 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v16, v35, v11);
  v36 = sub_2CDFE0();
  v37 = sub_2CE690();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "PlayMediaAlternativesViewProvider#makeArtistsLabel > 1 artists, evaluating", v38, 2u);
  }

  (*(v12 + 8))(v16, v11);
  v22[2];
  v39 = a4[6];
  sub_35E0(a4 + 2, a4[5]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  sub_2CC620();

  (*(v52 + 8))(v10, v53);
  v42 = v22[2];
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2D0E40;
  *(v43 + 56) = &type metadata for String;
  result = sub_1087C();
  *(v43 + 64) = result;
  if (v42 > 3)
  {
    v47 = v22[5];
    *(v43 + 32) = v22[4];
    *(v43 + 40) = v47;
    *(v43 + 96) = &type metadata for Int;
    *(v43 + 104) = &protocol witness table for Int;
    *(v43 + 72) = v42 - 2;
    goto LABEL_22;
  }

  if (v42)
  {
    v45 = v22[5];
    *(v43 + 32) = v22[4];
    *(v43 + 40) = v45;
    *(v43 + 96) = &type metadata for String;
    *(v43 + 104) = result;
    if (v42 != 1)
    {
      v46 = v22[7];
      *(v43 + 72) = v22[6];
      *(v43 + 80) = v46;

LABEL_22:

      v48 = sub_2CE280();
      v50 = v49;

      v32 = v48;
      v33 = v50;
      v34 = v51;
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2AF15C(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *a2;
  v6 = (*a2 + 40);
  v7 = *(*a2 + 16) + 1;
  while (--v7)
  {
    if (v3 != *(v6 - 1) || v4 != *v6)
    {
      v6 += 2;
      result = sub_2CEEA0();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_B90C4(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *a2 = result;
  }

  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_B90C4((v9 > 1), v10 + 1, 1, v5);
    v5 = result;
    *a2 = result;
  }

  *(v5 + 16) = v10 + 1;
  v11 = v5 + 16 * v10;
  *(v11 + 32) = v3;
  *(v11 + 40) = v4;
  return result;
}

void *sub_2AF260(void (*a1)(char *, uint64_t), void *a2, void *a3)
{
  v86 = a1;
  v82 = a3;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v83 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v81 = &v78 - v10;
  __chkstk_darwin(v9);
  v12 = &v78 - v11;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v84 = v5[2];
  v85 = v13;
  v84(v12, v13, v4);
  v14 = a2;
  v15 = sub_2CDFE0();
  v16 = sub_2CE660();

  if (os_log_type_enabled(v15, v16))
  {
    v79 = v5;
    v80 = v4;
    v17 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v89 = v78;
    *v17 = 136315650;
    v18 = [v14 identifier];
    if (v18)
    {
      v19 = v18;
      v20 = sub_2CE270();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v87 = v20;
    v88 = v22;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v23 = sub_2CE2A0();
    v25 = sub_3F08(v23, v24, &v89);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v14 title];
    if (v26)
    {
      v27 = v26;
      v28 = sub_2CE270();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v87 = v28;
    v88 = v30;
    v31 = sub_2CE2A0();
    v33 = sub_3F08(v31, v32, &v89);

    *(v17 + 14) = v33;
    *(v17 + 22) = 2080;
    v34 = [v14 artist];
    if (v34)
    {
      v35 = v34;
      v36 = sub_2CE270();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v87 = v36;
    v88 = v38;
    v39 = sub_2CE2A0();
    v41 = sub_3F08(v39, v40, &v89);

    *(v17 + 24) = v41;
    _os_log_impl(&dword_0, v15, v16, "PlayMediaAlternativesViewProvider making DetailedRow for mediaItem identifier: %s, title: %s, artist: %s", v17, 0x20u);
    swift_arrayDestroy();

    v5 = v79;
    v4 = v80;
  }

  else
  {
  }

  v42 = v5[1];
  v42(v12, v4);
  v43 = sub_2AF98C(v86, v14);
  if (!v43)
  {
    v51 = v83;
    v84(v83, v85, v4);
    v52 = sub_2CDFE0();
    v53 = sub_2CE680();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_0, v52, v53, "PlayMediaAlternativesViewProvider invalid alternative item", v54, 2u);
    }

    v55 = v51;
    goto LABEL_37;
  }

  v45 = v43;
  v46 = v44;
  if (sub_2B1C24())
  {
    v47 = [v14 privateMediaItemValueData];
    if (v47 && (v48 = v47, v49 = [v47 punchoutURI], v48, v49))
    {
      sub_2CE270();

      v50 = sub_2B3528();
    }

    else
    {
      v50 = sub_2B33AC();
    }

    goto LABEL_26;
  }

  v56 = sub_2B3768(v14, v82);
  if (!v56)
  {

    v74 = v81;
    v84(v81, v85, v4);
    v75 = sub_2CDFE0();
    v76 = sub_2CE680();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "PlayMediaAlternativesViewProvider failed to generate ACE command", v77, 2u);
    }

    else
    {
    }

    v55 = v74;
LABEL_37:
    v42(v55, v4);
    return 0;
  }

  v57 = v56;
  v50 = sub_2B3B4C(v56);

LABEL_26:
  sub_20410(&unk_351900, &unk_2D0960);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_2D0770;
  v59 = v45;
  v60 = v50;
  v61 = sub_2C9C60();

  *(v58 + 32) = v61;
  sub_334A0(0, &qword_3519E0, SFAbstractCommand_ptr);
  isa = sub_2CE400().super.isa;

  [v59 setCommands:isa];

  v63 = [v14 artist];
  if (v63)
  {
    v64 = v63;
    v65 = sub_2CE270();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = [v14 identifier];
  if (v68)
  {
    v69 = v68;
    v70 = sub_2CE270();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0;
  }

  type metadata accessor for PlayMediaAlternativesViewProvider.AlternativeItem();
  result = swift_allocObject();
  result[2] = v59;
  result[3] = v60;
  result[4] = v65;
  result[5] = v67;
  result[6] = v70;
  result[7] = v72;
  result[8] = v46;
  return result;
}

id sub_2AF98C(void (*a1)(char *, uint64_t), void *a2)
{
  v3 = v2;
  v143 = a1;
  v5 = sub_2CE000();
  v144 = *(v5 - 8);
  v6 = v144[8];
  v7 = __chkstk_darwin(v5);
  v9 = v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v134 = v125 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = v125 - v13;
  v15 = __chkstk_darwin(v12);
  v129 = v125 - v16;
  __chkstk_darwin(v15);
  v128 = v125 - v17;
  v133 = sub_2CB900();
  v135 = *(v133 - 8);
  v18 = *(v135 + 64);
  __chkstk_darwin(v133);
  v132 = v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_2CB8B0();
  v139 = *(v131 - 8);
  v20 = *(v139 + 64);
  __chkstk_darwin(v131);
  v130 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2C8E80();
  v141 = *(v22 - 8);
  v142 = v22;
  v23 = v141[8];
  __chkstk_darwin(v22);
  v25 = v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2C8EC0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [a2 title];
  if (!v31)
  {
    v45 = v144;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v46 = sub_3ED0(v5, static Logger.default);
    swift_beginAccess();
    (v45[2])(v9, v46, v5);
    v47 = sub_2CDFE0();
    v48 = sub_2CE680();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "PlayMediaAlternativesViewProvider empty title.", v49, 2u);
    }

    (v45[1])(v9, v5);
    return 0;
  }

  v126 = v14;
  v127 = v5;
  v32 = v31;
  v138 = sub_2CE270();
  v140 = v33;

  v35 = v3[5];
  v34 = v3[6];
  v125[1] = v3;
  v137 = sub_35E0(v3 + 2, v35);
  sub_1E93D4([a2 type]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v136 = a2;
  v37 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v137 = sub_2CC620();

  (*(v27 + 8))(v30, v26);
  v38 = [objc_allocWithZone(SFDetailedRowCardSection) init];
  sub_2C8E70();
  sub_2C8E50();
  (v141[1])(v25, v142);
  v39 = sub_2CE260();

  [v38 setCardSectionId:v39];

  v40 = sub_2C9C50();
  [v38 setTitle:v40];

  sub_20410(&unk_351900, &unk_2D0960);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2D0770;
  v42 = v136;
  v43 = [v136 artist];
  if (v43)
  {
    v44 = v43;
    sub_2CE270();
  }

  v50 = sub_2C9C50();

  *(v41 + 32) = v50;
  sub_334A0(0, &qword_356F28, SFRichText_ptr);
  isa = sub_2CE400().super.isa;

  [v38 setDescriptions:isa];

  v52 = sub_2C9C50();

  [v38 setFootnote:v52];

  if (sub_2B1C24())
  {
    v53 = [v42 identifier];
    if (v53)
    {
      v54 = v53;
      v55 = sub_2CE270();
      v57 = v56;

      v58 = sub_2CB910();
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      swift_allocObject();

      v61 = sub_2CB920();
      if (v61)
      {
        v62 = v61;
        if (qword_34C078 != -1)
        {
          swift_once();
        }

        v63 = qword_35F968;
        v64 = v130;
        sub_2CB8C0();
        v65 = v132;
        sub_2CB8A0();
        v66 = *(v139 + 8);
        v139 += 8;
        v143 = v66;
        v66(v64, v131);
        v67 = sub_195984(v65, v63);
        v68 = v135 + 8;
        v69 = *(v135 + 8);
        v69(v65, v133);
        if (!v67)
        {
          v135 = v68;

          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v95 = v127;
          v96 = sub_3ED0(v127, static Logger.default);
          swift_beginAccess();
          v97 = v144;
          v98 = v126;
          (v144[2])(v126, v96, v95);

          v99 = sub_2CDFE0();
          v100 = sub_2CE680();

          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v142 = v62;
            v102 = v101;
            v141 = swift_slowAlloc();
            v145 = v141;
            *v102 = 136315138;
            v103 = v130;
            sub_2CB8C0();
            v104 = v132;
            sub_2CB8A0();
            v143(v103, v131);
            v105 = sub_2CB8F0();
            v107 = v106;
            v69(v104, v133);
            v108 = sub_3F08(v105, v107, &v145);

            *(v102 + 4) = v108;
            _os_log_impl(&dword_0, v99, v100, "PlayMediaAlternativesViewProvider scheme %s is not supported.", v102, 0xCu);
            sub_306C(v141);

            (v97[1])(v126, v127);
          }

          else
          {

            (v97[1])(v98, v95);
          }

          return 0;
        }

        v70 = sub_2B0B2C(v42, v62);
        if (v70)
        {
          v71 = v70;
          v72 = sub_2B28AC(v62);
          if (v72)
          {
            v73 = v72;
            v142 = v62;
            v144 = v71;
            [v38 setThumbnail:v71];
            v143 = v73;
            [v38 setAction:v73];
            sub_20410(&unk_356F30, &qword_2D69C0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_2D5F90;
            strcpy((inited + 32), "cardSectionId");
            *(inited + 46) = -4864;
            v75 = [v38 cardSectionId];

            if (v75)
            {
              v76 = sub_2CE270();
              v78 = v77;
            }

            else
            {
              v76 = 0;
              v78 = 0xE000000000000000;
            }

            *(inited + 48) = v76;
            *(inited + 56) = v78;
            *(inited + 64) = 0x6449616964656DLL;
            *(inited + 72) = 0xE700000000000000;
            *(inited + 80) = v55;
            *(inited + 88) = v57;
            *(inited + 96) = 0x656C746974;
            *(inited + 104) = 0xE500000000000000;
            v115 = v140;
            *(inited + 112) = v138;
            *(inited + 120) = v115;
            *(inited + 128) = 0x747369747261;
            *(inited + 136) = 0xE600000000000000;
            v116 = [v42 artist];
            if (v116)
            {
              v117 = v116;
              v118 = sub_2CE270();
              v120 = v119;
            }

            else
            {
              v118 = 0;
              v120 = 0xE000000000000000;
            }

            *(inited + 144) = v118;
            *(inited + 152) = v120;
            *(inited + 160) = 1701869940;
            *(inited + 168) = 0xE400000000000000;
            sub_1E93D4([v42 type]);
            v121 = sub_2CE2B0();
            v123 = v122;

            *(inited + 176) = v121;
            *(inited + 184) = v123;
            v124 = sub_90A9C(inited);
            swift_setDeallocating();
            sub_20410(&qword_354748, &qword_2D69C8);
            swift_arrayDestroy();
            sub_2349AC(v124);

            return v38;
          }

          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v87 = v127;
          v112 = sub_3ED0(v127, static Logger.default);
          swift_beginAccess();
          v89 = v144;
          v90 = v128;
          (v144[2])(v128, v112, v87);
          v91 = sub_2CDFE0();
          v113 = sub_2CE680();
          if (os_log_type_enabled(v91, v113))
          {
            v114 = swift_slowAlloc();
            *v114 = 0;
            _os_log_impl(&dword_0, v91, v113, "PlayMediaAlternativesViewProvider empty action item.", v114, 2u);

            goto LABEL_28;
          }

LABEL_30:

          goto LABEL_31;
        }

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v87 = v127;
        v109 = sub_3ED0(v127, static Logger.default);
        swift_beginAccess();
        v89 = v144;
        v90 = v129;
        (v144[2])(v129, v109, v87);
        v91 = sub_2CDFE0();
        v110 = sub_2CE680();
        if (!os_log_type_enabled(v91, v110))
        {

          goto LABEL_30;
        }

        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_0, v91, v110, "PlayMediaAlternativesViewProvider empty thumbnail.", v111, 2u);

        goto LABEL_28;
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v87 = v127;
    v88 = sub_3ED0(v127, static Logger.default);
    swift_beginAccess();
    v89 = v144;
    v90 = v134;
    (v144[2])(v134, v88, v87);
    v91 = sub_2CDFE0();
    v92 = sub_2CE680();
    if (!os_log_type_enabled(v91, v92))
    {

      goto LABEL_30;
    }

    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_0, v91, v92, "PlayMediaAlternativesViewProvider invalid identifier.", v93, 2u);

LABEL_28:
LABEL_31:
    (v89[1])(v90, v87);
    return 0;
  }

  v79 = sub_2B21DC(v42);
  [v38 setThumbnail:v79];

  v80 = [objc_allocWithZone(SFActionItem) init];
  [v80 setInteractionContentType:INInteractionMediaPlaybackContentType];
  [v38 setAction:v80];

  sub_20410(&unk_356F30, &qword_2D69C0);
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_2D0090;
  strcpy((v81 + 32), "cardSectionId");
  *(v81 + 46) = -4864;
  v82 = [v38 cardSectionId];

  if (v82)
  {
    v83 = sub_2CE270();
    v85 = v84;
  }

  else
  {
    v83 = 0;
    v85 = 0xE000000000000000;
  }

  *(v81 + 48) = v83;
  *(v81 + 56) = v85;
  v86 = sub_90A9C(v81);
  swift_setDeallocating();
  sub_30B8(v81 + 32, &qword_354748, &qword_2D69C8);
  sub_2349AC(v86);

  return v38;
}

id sub_2B0B2C(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v95 = a1;
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v101 = v3;
  v102 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v100 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v98 = (&v93 - v9);
  v10 = __chkstk_darwin(v8);
  v97 = &v93 - v11;
  __chkstk_darwin(v10);
  v13 = &v93 - v12;
  v14 = sub_2CB8E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v96 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v20 = &v93 - v19;
  v21 = sub_2CB8B0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v93 - v27;
  sub_2CB8C0();
  sub_2CB880();
  v29 = *(v22 + 8);
  v30 = v28;
  v31 = v21;
  v29(v30, v21);
  v32 = v15;
  v33 = (*(v15 + 88))(v20, v14);
  if (v33 == enum case for PlaybackItem.ContentOrigin.device(_:))
  {
    v34 = [objc_allocWithZone(SFMediaArtworkImage) init];
    sub_2CB8C0();
    sub_2CB870();
    v29(v26, v31);
    v35 = sub_2CE260();

    [v34 setPersistentID:v35];

LABEL_3:
    [v34 setMediaEntityType:sub_2B23BC()];
    return v34;
  }

  v99 = a2;
  v94 = v31;
  if (v33 == enum case for PlaybackItem.ContentOrigin.sirisync(_:))
  {
    sub_2CB8C0();
    v37 = sub_2CB860();
    v39 = v38;
    v95 = v29;
    v29(v26, v31);
    v40 = v102;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v41 = v101;
    v42 = sub_3ED0(v101, static Logger.default);
    swift_beginAccess();
    v43 = *(v40 + 16);
    v100 = v42;
    v96 = v43;
    v43(v13, v42, v41);

    v44 = sub_2CDFE0();
    v45 = sub_2CE690();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v104 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_3F08(v37, v39, &v104);
      _os_log_impl(&dword_0, v44, v45, "PlayMediaAlternativesViewProvider#makeActionItemForInternal trying to build SFMediaArtworkImage for siriSyncID: %s", v46, 0xCu);
      sub_306C(v47);
      v41 = v101;

      v48 = v102;
    }

    else
    {

      v48 = v40;
    }

    v62 = *(v48 + 8);
    v62(v13, v41);
    v63 = [objc_opt_self() defaultMediaLibrary];
    v105._countAndFlagsBits = v37;
    v105._object = v39;
    v64 = sub_2CE6A0(v105);
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      v79 = v97;
      v96(v97, v100, v41);

      v80 = sub_2CDFE0();
      v81 = sub_2CE680();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v100 = v62;
        v83 = v82;
        v84 = swift_slowAlloc();
        v103 = v64;
        v104 = v84;
        *v83 = 136315394;
        v85 = sub_2CEE70();
        v87 = sub_3F08(v85, v86, &v104);

        *(v83 + 4) = v87;
        *(v83 + 12) = 2080;
        LODWORD(v103) = sub_2B23BC();
        type metadata accessor for SFMediaEntityType(0);
        v88 = sub_2CE2A0();
        v90 = sub_3F08(v88, v89, &v104);

        *(v83 + 14) = v90;
        _os_log_impl(&dword_0, v80, v81, "PlayMediaAlternativesViewProvider persistentID: %s self.mediaEntityType(from: playbackItem)%s", v83, 0x16u);
        swift_arrayDestroy();

        (v100)(v79, v41);
      }

      else
      {

        v62(v79, v41);
      }

      v34 = [objc_allocWithZone(SFMediaArtworkImage) init];
      v104 = v64;
      sub_2CEE70();
      v92 = sub_2CE260();

      [v34 setPersistentID:v92];

      goto LABEL_3;
    }

    v67 = v62;
    v68 = v98;
    v96(v98, v100, v41);

    v69 = sub_2CDFE0();
    v70 = sub_2CE680();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v104 = v72;
      *v71 = 136315138;
      sub_2CB8C0();
      v73 = sub_2CB870();
      v75 = v74;
      v95(v26, v94);
      v76 = sub_3F08(v73, v75, &v104);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_0, v69, v70, "PlayMediaAlternativesViewProvider received nil persistentID when converting siriSyncID: %s", v71, 0xCu);
      sub_306C(v72);

      v77 = v101;
      v78 = v98;
    }

    else
    {

      v78 = v68;
      v77 = v41;
    }

    v67(v78, v77);
    return 0;
  }

  else
  {
    v49 = v102;
    v50 = v100;
    if (v33 != enum case for PlaybackItem.ContentOrigin.multiverse(_:))
    {
      if (v33 == enum case for PlaybackItem.ContentOrigin.store(_:))
      {
        return sub_2B21DC(v95);
      }

      if (v33 == enum case for PlaybackItem.ContentOrigin.ulid(_:))
      {
        v34 = [objc_allocWithZone(SFMediaArtworkImage) init];
        sub_2CB8C0();
        sub_2CB870();
        v29(v26, v94);
        v91 = sub_2CE260();

        [v34 setUniversalLibraryID:v91];

        return v34;
      }

      if (v33 != enum case for PlaybackItem.ContentOrigin.spotlight(_:) && v33 != enum case for PlaybackItem.ContentOrigin.wholelibrary(_:) && v33 != enum case for PlaybackItem.ContentOrigin.unknown(_:))
      {
        (*(v15 + 8))(v20, v14);
      }
    }

    v95 = v29;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v51 = v101;
    v52 = sub_3ED0(v101, static Logger.default);
    swift_beginAccess();
    (*(v49 + 16))(v50, v52, v51);

    v53 = sub_2CDFE0();
    v54 = sub_2CE680();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v104 = v98;
      *v55 = 136315138;
      LODWORD(v97) = v54;
      sub_2CB8C0();
      v56 = v96;
      sub_2CB880();
      v95(v26, v94);
      v57 = sub_2CB8D0();
      v58 = v49;
      v60 = v59;
      (*(v32 + 8))(v56, v14);
      v61 = sub_3F08(v57, v60, &v104);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_0, v53, v97, "PlayMediaAlternativesViewProvider hasn't yet supported %s.", v55, 0xCu);
      sub_306C(v98);

      (*(v58 + 8))(v100, v101);
    }

    else
    {

      (*(v49 + 8))(v50, v51);
    }

    return 0;
  }
}

void sub_2B1764(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2CE000();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v15 = inited;
  *(inited + 16) = xmmword_2D1010;
  *(inited + 32) = 0x7463655364726163;
  if (a2)
  {
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  *(inited + 40) = 0xED000064496E6F69;
  *(inited + 48) = v16;
  v17 = 0xE000000000000000;
  if (a2)
  {
    v17 = a2;
  }

  *(inited + 56) = v17;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "isInternalApp");
  *(inited + 94) = -4864;

  *(v15 + 96) = sub_2B1C24() & 1;
  *(v15 + 120) = &type metadata for Bool;
  *(v15 + 128) = 0xD000000000000011;
  *(v15 + 136) = 0x80000000002E1200;
  *(v15 + 144) = a5;
  *(v15 + 168) = &type metadata for Int;
  strcpy((v15 + 176), "alternatives");
  *(v15 + 189) = 0;
  *(v15 + 190) = -5120;
  *(v15 + 216) = sub_20410(&qword_356F70, qword_2D9180);
  *(v15 + 192) = a6;

  v18 = sub_112C0(v15);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v20 = v35;
  (*(v35 + 16))(v13, v19, v10);

  v21 = sub_2CDFE0();
  v22 = sub_2CE670();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = v10;
    v24 = v20;
    v25 = v23;
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315138;
    v27 = sub_2CE210();
    v29 = sub_3F08(v27, v28, &v36);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_0, v21, v22, "PlayMediaAlternativesViewProvider sending event to AFAnalytics: %s", v25, 0xCu);
    sub_306C(v26);

    (*(v24 + 8))(v13, v34);
  }

  else
  {

    (*(v20 + 8))(v13, v10);
  }

  v30 = [objc_opt_self() sharedAnalytics];
  if (v30)
  {
    v31 = v30;
    sub_E014(v18);

    isa = sub_2CE1F0().super.isa;

    [v31 logEventWithType:2908 context:isa];
  }

  else
  {
  }
}

uint64_t sub_2B1C24()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CCF90();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    if (v5 == sub_2CBE10() && v8 == v9)
    {
      goto LABEL_13;
    }

    v15 = sub_2CEEA0();

    if (v15)
    {
LABEL_14:

      return 1;
    }

    if (v7 == sub_2CBE30() && v8 == v16)
    {
LABEL_13:

      goto LABEL_14;
    }

    v17 = sub_2CEEA0();

    return v17 & 1;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v10 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v4, v10, v0);
    v11 = sub_2CDFE0();
    v12 = sub_2CE680();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "PlayMediaAlternativesViewProvider encounters null app identifier.", v13, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }
}

id sub_2B1E98(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C8D90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 _imageData];
  if (v12)
  {
    v13 = v12;
    v14 = sub_2C8DC0();
    v16 = v15;

    sub_525D4(v14, v16);
    isa = sub_2C8DB0().super.isa;
    sub_52628(v14, v16);
    v18 = [objc_opt_self() imageWithData:isa];

    sub_52628(v14, v16);
  }

  else
  {
    v19 = [a1 _uri];
    if (v19)
    {
      v20 = v19;
      sub_2C8D60();

      v21 = objc_allocWithZone(SFURLImage);
      sub_2C8D50(v22);
      v24 = v23;
      v18 = [v21 initWithURL:v23];

      (*(v8 + 8))(v11, v7);
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v25 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      (*(v3 + 16))(v6, v25, v2);
      v26 = sub_2CDFE0();
      v27 = sub_2CE680();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "PlayMediaAlternativesViewProvider unsupported INImage.", v28, 2u);
      }

      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }

  return v18;
}

id sub_2B21DC(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 artwork];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2B1E98(v7);

    return v9;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v11 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v6, v11, v2);
    v12 = sub_2CDFE0();
    v13 = sub_2CE680();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "PlayMediaAlternativesViewProvider empty artwork field.", v14, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_2B23BC()
{
  v0 = sub_2CE000();
  v41 = *(v0 - 8);
  v42 = v0;
  v1 = *(v41 + 64);
  __chkstk_darwin(v0);
  v40 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2CB900();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_2CB8B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  sub_2CB8C0();
  sub_2CB8A0();
  v18 = *(v11 + 8);
  v18(v17, v10);
  v19 = v4;
  v20 = (*(v4 + 88))(v9, v3);
  if (v20 == enum case for PlaybackItem.Scheme.playlist(_:))
  {
    return 1;
  }

  if (v20 == enum case for PlaybackItem.Scheme.album(_:))
  {
    return 4;
  }

  if (v20 == enum case for PlaybackItem.Scheme.song(_:) || v20 == enum case for PlaybackItem.Scheme.podcastEpisode(_:))
  {
    return 0;
  }

  if (v20 == enum case for PlaybackItem.Scheme.artist(_:))
  {
    return 2;
  }

  if (v20 != enum case for PlaybackItem.Scheme.genre(_:))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = v42;
    v38 = sub_3ED0(v42, static Logger.default);
    swift_beginAccess();
    (*(v41 + 16))(v40, v38, v23);

    v24 = sub_2CDFE0();
    v25 = sub_2CE660();

    LODWORD(v38) = v25;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v35 = v26;
      v37 = swift_slowAlloc();
      v43 = v37;
      *v26 = 136446210;
      v36 = v24;
      sub_2CB8C0();
      v27 = v39;
      sub_2CB8A0();
      v18(v15, v10);
      v28 = sub_2CB8F0();
      v30 = v29;
      v31 = *(v19 + 8);
      v31(v27, v3);
      v32 = sub_3F08(v28, v30, &v43);

      v33 = v35;
      v34 = v36;
      *(v35 + 1) = v32;
      _os_log_impl(&dword_0, v34, v38, "PlayMediaAlternativesViewProvider#mediaEntityType Unknown scheme for SFMediaEntityType scheme: %{public}s. Returning .item", v33, 0xCu);
      sub_306C(v37);

      (*(v41 + 8))(v40, v42);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
      v31 = *(v19 + 8);
    }

    v31(v9, v3);
    return 0;
  }

  return 3;
}

id sub_2B28AC(uint64_t a1)
{
  v2 = sub_2CE000();
  v97 = *(v2 - 8);
  v98 = v2;
  v3 = *(v97 + 64);
  v4 = __chkstk_darwin(v2);
  v94 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v93 = &v87 - v7;
  __chkstk_darwin(v6);
  v95 = &v87 - v8;
  v9 = sub_2CB8E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v91 = (&v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = &v87 - v14;
  v16 = sub_2CB8B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v87 - v22;
  v24 = [objc_allocWithZone(SFActionItem) init];
  sub_2CB8C0();
  sub_2CB880();
  v27 = *(v17 + 8);
  v26 = v17 + 8;
  v25 = v27;
  (v27)(v23, v16);
  v92 = v10;
  v28 = (*(v10 + 88))(v15, v9);
  if (v28 == enum case for PlaybackItem.ContentOrigin.device(_:))
  {
    sub_2CB8C0();
    sub_2CB870();
    (v25)(v21, v16);
    v29 = sub_2CE260();

    [v24 setPersistentID:v29];

LABEL_3:
    [v24 setMediaEntityType:sub_2B23BC()];
LABEL_4:
    [v24 setRequiresLocalMedia:1];
    return v24;
  }

  v89 = v24;
  v90 = v16;
  v96 = a1;
  if (v28 == enum case for PlaybackItem.ContentOrigin.sirisync(_:))
  {
    sub_2CB8C0();
    v31 = sub_2CB860();
    v33 = v32;
    v91 = v25;
    v88 = v26;
    (v25)(v21, v90);
    v34 = v97;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v35 = v98;
    v36 = sub_3ED0(v98, static Logger.default);
    swift_beginAccess();
    v37 = *(v34 + 16);
    v38 = v95;
    v94 = v36;
    v92 = v37;
    (v37)(v95, v36, v35);

    v39 = sub_2CDFE0();
    v40 = sub_2CE690();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v99 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_3F08(v31, v33, &v99);
      _os_log_impl(&dword_0, v39, v40, "PlayMediaAlternativesViewProvider#makeActionItemForInternal trying to build SFActionItem for siriSyncID: %s", v41, 0xCu);
      sub_306C(v42);
      v35 = v98;
    }

    v95 = *(v34 + 8);
    (v95)(v38, v35);
    v43 = v21;
    v44 = [objc_opt_self() defaultMediaLibrary];
    v100._countAndFlagsBits = v31;
    v100._object = v33;
    v45 = sub_2CE6A0(v100);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      v99 = v45;
      sub_2CEE70();
      v79 = sub_2CE260();

      v24 = v89;
      [v89 setPersistentID:v79];

      goto LABEL_3;
    }

    v48 = v93;
    (v92)(v93, v94, v35);

    v49 = sub_2CDFE0();
    v50 = sub_2CE680();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = v35;
      v52 = swift_slowAlloc();
      v53 = v48;
      v54 = swift_slowAlloc();
      v99 = v54;
      *v52 = 136315138;
      sub_2CB8C0();
      v55 = sub_2CB870();
      v57 = v56;
      v91(v43, v90);
      v58 = sub_3F08(v55, v57, &v99);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_0, v49, v50, "PlayMediaAlternativesViewProvider received nil persistentID when converting siriSyncID: %s", v52, 0xCu);
      sub_306C(v54);

      v59 = v53;
      v60 = v51;
    }

    else
    {

      v59 = v48;
      v60 = v35;
    }

    (v95)(v59, v60);
    return 0;
  }

  else
  {
    v61 = v90;
    v62 = v26;
    v63 = v21;
    if (v28 != enum case for PlaybackItem.ContentOrigin.multiverse(_:))
    {
      if (v28 == enum case for PlaybackItem.ContentOrigin.store(_:))
      {
        sub_20410(&unk_356F40, &unk_2D0740);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_2D0090;
        v81 = v25;
        sub_2CB8C0();
        v82 = sub_2CB870();
        v84 = v83;
        v81(v21, v61);
        *(v80 + 32) = v82;
        *(v80 + 40) = v84;
        isa = sub_2CE400().super.isa;

        v24 = v89;
        [v89 setStoreIdentifiers:isa];

        return v24;
      }

      if (v28 == enum case for PlaybackItem.ContentOrigin.ulid(_:))
      {
        sub_2CB8C0();
        sub_2CB870();
        (v25)(v21, v61);
        v86 = sub_2CE260();

        v24 = v89;
        [v89 setUniversalLibraryID:v86];

        goto LABEL_4;
      }

      if (v28 != enum case for PlaybackItem.ContentOrigin.spotlight(_:) && v28 != enum case for PlaybackItem.ContentOrigin.wholelibrary(_:) && v28 != enum case for PlaybackItem.ContentOrigin.unknown(_:))
      {
        v92[1](v15, v9);
      }
    }

    v88 = v62;
    v64 = v25;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v65 = v98;
    sub_3ED0(v98, static Logger.default);
    swift_beginAccess();
    v66 = v97;
    v67 = v94;
    (*(v97 + 16))();

    v68 = sub_2CDFE0();
    v69 = sub_2CE680();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      LODWORD(v95) = v69;
      v71 = v61;
      v72 = v70;
      v73 = swift_slowAlloc();
      v99 = v73;
      *v72 = 136315138;
      sub_2CB8C0();
      v74 = v91;
      sub_2CB880();
      v64(v63, v71);
      v75 = sub_2CB8D0();
      v77 = v76;
      v92[1](v74, v9);
      v78 = sub_3F08(v75, v77, &v99);

      *(v72 + 4) = v78;
      _os_log_impl(&dword_0, v68, v95, "PlayMediaAlternativesViewProvider hasn't yet supported %s.", v72, 0xCu);
      sub_306C(v73);

      (*(v66 + 8))(v94, v98);
    }

    else
    {

      (*(v66 + 8))(v67, v65);
    }

    return 0;
  }
}

id sub_2B33AC()
{
  v0 = sub_2C8E80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SAAppsLaunchApp) init];
  sub_2C8E70();
  sub_2C8E50();
  (*(v1 + 8))(v4, v0);
  v6 = sub_2CE260();

  [v5 setAceId:v6];

  sub_2CCF90();
  if (v7)
  {
    v8 = sub_2CE260();
  }

  else
  {
    v8 = 0;
  }

  [v5 setLaunchId:v8];

  return v5;
}

id sub_2B3528()
{
  v0 = sub_20410(&unk_3519B0, &qword_2D1230);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_2C8E80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_2C8E70();
  sub_2C8E50();
  (*(v5 + 8))(v8, v4);
  v10 = sub_2CE260();

  [v9 setAceId:v10];

  sub_2C8D80();
  v11 = sub_2C8D90();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v3, 1, v11) != 1)
  {
    sub_2C8D50(v13);
    v14 = v15;
    (*(v12 + 8))(v3, v11);
  }

  [v9 setPunchOutUri:v14];

  return v9;
}

void *sub_2B3768(void *a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 copy];
  sub_2CEC00();
  swift_unknownObjectRelease();
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (swift_dynamicCast())
  {
    v9 = v19[1];
    sub_20410(&unk_351900, &unk_2D0960);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2D0770;
    *(v10 + 32) = a1;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v11 = a1;
    isa = sub_2CE400().super.isa;

    v13 = sub_2CE260();
    [v9 setValue:isa forKey:v13];
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v8, v14, v4);
    v15 = sub_2CDFE0();
    v16 = sub_2CE680();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "PlayMediaAlternativesViewProvider failed to clone PlayMediaIntent.", v17, 2u);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  return v9;
}

id sub_2B3A30(void *a1)
{
  v2 = [objc_allocWithZone(SAIntentGroupProtobufMessage) init];
  v3 = [a1 typeName];
  if (!v3)
  {
    sub_2CE270();
    v3 = sub_2CE260();
  }

  [v2 setTypeName:v3];

  v4 = [a1 backingStore];
  isa = [v4 data];

  if (isa)
  {
    v6 = sub_2C8DC0();
    v8 = v7;

    isa = sub_2C8DB0().super.isa;
    sub_52628(v6, v8);
  }

  [v2 setData:isa];

  return v2;
}

id sub_2B3B4C(void *a1)
{
  v2 = sub_2C8E80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(SAIntentGroupHandleIntent) init];
  sub_2C8E70();
  sub_2C8E50();
  (*(v3 + 8))(v6, v2);
  v8 = sub_2CE260();

  [v7 setAceId:v8];

  v9 = sub_2B3A30(a1);
  [v7 setIntent:v9];

  return v7;
}

uint64_t sub_2B3CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_2CDFE0();
  v13 = sub_2CE670();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v7;
    v15 = v14;
    v23 = swift_slowAlloc();
    v25 = v23;
    v26 = a1;
    *v15 = 136315138;
    v27 = a2;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v16 = sub_2CE2A0();
    v18 = sub_3F08(v16, v17, &v25);
    v22 = v6;
    v19 = v18;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v12, v13, "PlayMediaAlternativesViewProvider#makeArtistsLabel completed as %s", v15, 0xCu);
    sub_306C(v23);

    (*(v24 + 8))(v10, v22);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v26 = a1;
  v27 = a2;
  return a3(&v26);
}

uint64_t sub_2B3F5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2B3F74()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_2B4010(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_356F60, qword_2D4A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AddMediaViewProvider()
{
  result = qword_356FA0;
  if (!qword_356FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B40E8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v52 = sub_2CD5B0();
  v1 = *(v52 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v52);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v47 - v5;
  v55 = sub_2CE000();
  v53 = *(v55 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v55);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C9120();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CD540();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v58 = &v47 - v19;
  v20 = sub_2C8F90();
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v50 = v6;
  v51 = v1;
  if (!v22)
  {
  }

  v23 = sub_2C9060();
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
  }

  sub_2C9050();
  sub_107D78(v58);
  (*(v10 + 8))(v13, v9);
  v26 = sub_2C9070();
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
  }

  v30 = v54;
  v29 = v55;
  v31 = v49;
  (*(v56 + 16))(v18, v58, v57);
  sub_2CD580();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v29, static Logger.default);
  swift_beginAccess();
  v33 = v53;
  (*(v53 + 16))(v30, v32, v29);
  v35 = v50;
  v34 = v51;
  v36 = *(v51 + 16);
  v37 = v31;
  v38 = v52;
  v36(v50, v37, v52);
  v39 = sub_2CDFE0();
  LODWORD(v49) = sub_2CE670();
  if (os_log_type_enabled(v39, v49))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v59 = v41;
    *v40 = 136315138;
    v36(v48, v35, v38);
    v42 = sub_2CE2A0();
    v44 = v43;
    (*(v34 + 8))(v35, v38);
    v45 = sub_3F08(v42, v44, &v59);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_0, v39, v49, "AudioItem#toAudioMediaItem converted to %s", v40, 0xCu);
    sub_306C(v41);

    (*(v33 + 8))(v54, v55);
  }

  else
  {

    (*(v34 + 8))(v35, v38);
    (*(v33 + 8))(v30, v29);
  }

  return (*(v56 + 8))(v58, v57);
}

uint64_t sub_2B4684@<X0>(void *a1@<X0>, Class *a2@<X8>)
{
  v84 = a1;
  v70 = a2;
  v75 = sub_2CE000();
  v74 = *(v75 - 8);
  v2 = *(v74 + 64);
  __chkstk_darwin(v75);
  v72 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CB020();
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = *(v86 + 64);
  __chkstk_darwin(v4);
  v85 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_20410(&qword_357060, qword_2D9260);
  v77 = *(v73 - 8);
  v7 = *(v77 + 64);
  v8 = __chkstk_darwin(v73);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v76 = &v69 - v11;
  __chkstk_darwin(v10);
  v91 = &v69 - v12;
  v13 = sub_2CB030();
  v82 = *(v13 - 8);
  v83 = v13;
  v14 = *(v82 + 64);
  __chkstk_darwin(v13);
  v81 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CB040();
  v79 = *(v16 - 8);
  v80 = v16;
  v17 = *(v79 + 64);
  __chkstk_darwin(v16);
  v78 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CB060();
  v89 = *(v19 - 8);
  v90 = v19;
  v20 = *(v89 + 64);
  __chkstk_darwin(v19);
  v92 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2C8E30();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_2C8F20();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v26 = sub_2CB070();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2C8F40();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v33 = sub_2C8EC0();
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v36 = __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  v84 = *v84;
  sub_2CB570();
  sub_2CB570();
  sub_2CB570();
  sub_2C8F30();
  (*(v27 + 104))(v30, enum case for DateTimeResolutionContext.Hemisphere.north(_:), v26);
  sub_2C8EF0();
  sub_2C8E20();
  v37 = sub_2CB090();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = v85;
  v42 = v91;
  v41 = v92;
  sub_2CB080();
  (*(v79 + 104))(v78, enum case for DateTimeResolutionSpec.ExpandToType.range(_:), v80);
  (*(v82 + 104))(v81, enum case for DateTimeResolutionSpec.DateTimeConvergenceStrategy.past(_:), v83);
  sub_90BB0(_swiftEmptyArrayStorage);
  sub_2CB050();
  sub_2CB010();
  v43 = v88;
  sub_2CB000();
  if (v43)
  {

    (*(v86 + 8))(v40, v87);
    return (*(v89 + 8))(v41, v90);
  }

  else
  {
    v45 = v75;
    (*(v86 + 8))(v40, v87);
    v47 = v76;
    v46 = v77;
    v48 = *(v77 + 16);
    v49 = v73;
    v48(v76, v42, v73);
    if ((*(v46 + 88))(v47, v49) == enum case for Recommendation.confident<A>(_:))
    {
      v50 = v77;
      (*(v77 + 96))(v47, v49);
      v51 = *v47;
      isa = sub_2CB0B0().super.isa;

      (*(v50 + 8))(v42, v49);
      result = (*(v89 + 8))(v92, v90);
      *v70 = isa;
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v53 = sub_3ED0(v45, static Logger.default);
      swift_beginAccess();
      v54 = v72;
      (*(v74 + 16))(v72, v53, v45);
      v55 = v71;
      v48(v71, v42, v49);
      v56 = v54;
      v57 = sub_2CDFE0();
      v58 = sub_2CE680();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v87 = v59;
        v88 = swift_slowAlloc();
        v93 = v88;
        *v59 = 136315138;
        sub_2B515C();
        v60 = sub_2CEE70();
        v61 = v49;
        v63 = v62;
        v64 = *(v77 + 8);
        v64(v55, v61);
        v65 = sub_3F08(v60, v63, &v93);
        v49 = v61;

        v66 = v87;
        *(v87 + 1) = v65;
        _os_log_impl(&dword_0, v57, v58, "Transformer#transformer DateTimeResolver returned unexpected recommendation: %s", v66, 0xCu);
        sub_306C(v88);

        (*(v74 + 8))(v72, v75);
      }

      else
      {

        v64 = *(v77 + 8);
        v64(v55, v49);
        (*(v74 + 8))(v56, v45);
      }

      v68 = v89;
      v67 = v90;
      sub_2B50FC();
      sub_2B51FC(&qword_357070);
      swift_allocError();
      swift_willThrow();

      v64(v91, v49);
      (*(v68 + 8))(v92, v67);
      return (v64)(v76, v49);
    }
  }

  return result;
}

void sub_2B50FC()
{
  if (!qword_357068)
  {
    v0 = _s5ErrorOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_357068);
    }
  }
}

unint64_t sub_2B515C()
{
  result = qword_357078;
  if (!qword_357078)
  {
    sub_2DB30(&qword_357060, qword_2D9260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_357078);
  }

  return result;
}

uint64_t sub_2B51FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2B50FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ShazamKitMatch.toRREntity()@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_20410(&qword_34E938, &qword_2D28E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v43 - v3;
  v49 = sub_2C8E80();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v49);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  __chkstk_darwin(v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_350260, qword_2D3810);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v43 - v15;
  v17 = sub_2CBE10();
  v19 = v18;
  sub_2B57DC(v17, v18);
  v20 = sub_2CAD20();
  if (v20)
  {
    v47 = v20;
    v48 = v17;
    v21 = sub_2CAC40();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
    v22 = sub_2CAC00();
    sub_DF928(v16);
    v46 = v22;
    v44 = sub_2CAB50();
    v24 = v23;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = v9;
    v26 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    v27 = v50;
    v28 = *(v50 + 16);
    v45 = v25;
    v28(v12, v26, v25);

    v29 = sub_2CDFE0();
    v30 = sub_2CE670();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v43[0] = v12;
      v32 = v31;
      v33 = swift_slowAlloc();
      v43[1] = v19;
      v34 = v33;
      v52 = v33;
      *v32 = 136315138;
      v35 = v5;
      v36 = v4;
      v37 = sub_3F08(v44, v24, &v52);

      *(v32 + 4) = v37;
      v4 = v36;
      v5 = v35;
      _os_log_impl(&dword_0, v29, v30, "ShazamKitMatch#toRREntity UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v32, 0xCu);
      sub_306C(v34);

      (*(v50 + 8))(v43[0], v45);
    }

    else
    {

      (*(v27 + 8))(v12, v45);
    }

    sub_2C8E70();
    sub_2C8E50();
    (*(v5 + 8))(v8, v49);
    v40 = sub_2CE030();
    (*(*(v40 - 8) + 56))(v4, 1, 1, v40);
    v41 = v51;
    sub_2CE040();

    v42 = sub_2CE050();
    return (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  }

  else
  {
    v38 = sub_2CE050();
    (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
  }
}

uint64_t sub_2B57DC(uint64_t a1, uint64_t a2)
{
  v29[0] = a1;
  v29[1] = a2;
  v3 = sub_2CAB40();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  __chkstk_darwin(v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CAE60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CAF20();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_2CAF10();
  if (v2[5])
  {
    v16 = v2[4];
    sub_2CAF00();
    v17 = sub_2CAF80();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_2CAF70();
    (*(v8 + 104))(v11, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Song(_:), v7);
    sub_2CAF60();
    (*(v8 + 8))(v11, v7);

    sub_2CAEF0();
  }

  if (v2[9])
  {
    v20 = v2[8];
    v21 = *(v12 + 48);
    v22 = *(v12 + 52);
    swift_allocObject();
    sub_2CAF10();
    sub_2CAF00();
    v23 = sub_2CAF80();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_2CAF70();
    (*(v8 + 104))(v11, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Artist(_:), v7);
    sub_2CAF60();
    (*(v8 + 8))(v11, v7);

    sub_2CAEF0();

    sub_2CAEE0();
  }

  if (v2[11])
  {
    v26 = v2[10];
    v27 = v2[11];

    sub_2CAB10();
    sub_2CAAD0();
    (*(v30 + 8))(v6, v31);
  }

  return v15;
}

uint64_t type metadata accessor for AudioNLv3Intent()
{
  result = qword_357218;
  if (!qword_357218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2B5BB8()
{
  sub_2CAFE0();
  if (v0 <= 0x3F)
  {
    sub_2B610C(319, &qword_357228, &type metadata accessor for Parse.ServerConversion, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_2B6028(319, &qword_357230, &type metadata for String, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_2B5FC4();
        if (v3 <= 0x3F)
        {
          sub_2B6028(319, &qword_34EE78, &type metadata for String, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_2B610C(319, &qword_357248, &type metadata accessor for UsoEntity_common_App, &type metadata accessor for Array);
            if (v5 <= 0x3F)
            {
              sub_2B610C(319, &qword_357250, &type metadata accessor for UsoEntity_common_DateTime, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_2B610C(319, &qword_34F670, &type metadata accessor for CommonAudio.Decade, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_2B610C(319, &qword_357258, &type metadata accessor for UsoEntity_common_MediaItem, &type metadata accessor for Array);
                  if (v8 <= 0x3F)
                  {
                    sub_2B6028(319, &qword_357260, &type metadata for Double, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      sub_2B6078();
                      if (v10 <= 0x3F)
                      {
                        sub_2B610C(319, &qword_34F680, &type metadata accessor for CommonAudio.RadioType, &type metadata accessor for Optional);
                        if (v11 <= 0x3F)
                        {
                          sub_2B610C(319, &unk_357270, &type metadata accessor for UsoEntity_common_MediaItem, &type metadata accessor for Optional);
                          if (v12 <= 0x3F)
                          {
                            sub_2B610C(319, &qword_34F688, &type metadata accessor for CommonAudio.Sort, &type metadata accessor for Optional);
                            if (v13 <= 0x3F)
                            {
                              sub_2B610C(319, &qword_34F660, &type metadata accessor for CommonAudio.MediaType, &type metadata accessor for Optional);
                              if (v14 <= 0x3F)
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
      }
    }
  }
}

void sub_2B5FC4()
{
  if (!qword_357238)
  {
    sub_2DB30(&qword_357240, &qword_2D9388);
    v0 = sub_2CE470();
    if (!v1)
    {
      atomic_store(v0, &qword_357238);
    }
  }
}

void sub_2B6028(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2B6078()
{
  if (!qword_357268)
  {
    sub_2CD4E0();
    sub_2BE04C(&qword_353140, &type metadata accessor for CommonAudio.Modifier);
    v0 = sub_2CE550();
    if (!v1)
    {
      atomic_store(v0, &qword_357268);
    }
  }
}

void sub_2B610C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2B6170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = sub_2CE000();
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = *(v120 + 64);
  v5 = __chkstk_darwin(v3);
  v110 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v113 = (&v102 - v8);
  __chkstk_darwin(v7);
  v114 = &v102 - v9;
  v10 = sub_2CAFE0();
  isa = v10[-1].isa;
  v11 = isa[8];
  v12 = __chkstk_darwin(v10);
  v109 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v112 = (&v102 - v15);
  v16 = __chkstk_darwin(v14);
  v111 = (&v102 - v17);
  __chkstk_darwin(v16);
  v119 = (&v102 - v18);
  v19 = sub_2CA870();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v103 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v106 = (&v102 - v25);
  __chkstk_darwin(v24);
  v27 = &v102 - v26;
  v28 = type metadata accessor for AudioNLv3Intent();
  v116 = *(v28 - 1);
  v29 = *(v116 + 64);
  v30 = __chkstk_darwin(v28);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v30[5];
  *(v32 + v108) = 0;
  *(v32 + v30[6]) = _swiftEmptyArrayStorage;
  *(v32 + v30[7]) = _swiftEmptyArrayStorage;
  *(v32 + v30[8]) = _swiftEmptyArrayStorage;
  *(v32 + v30[9]) = _swiftEmptyArrayStorage;
  *(v32 + v30[10]) = _swiftEmptyArrayStorage;
  v33 = (v32 + v30[11]);
  *v33 = 0;
  *(v33 + 1) = 0;
  *(v32 + v30[12]) = _swiftEmptyArrayStorage;
  *(v32 + v30[13]) = _swiftEmptyArrayStorage;
  *(v32 + v30[14]) = _swiftEmptyArrayStorage;
  *(v32 + v30[15]) = _swiftEmptyArrayStorage;
  *(v32 + v30[16]) = _swiftEmptyArrayStorage;
  *(v32 + v30[17]) = 0;
  v34 = v30[18];
  v35 = sub_2CD4D0();
  v36 = *(*(v35 - 8) + 56);
  v107 = v34;
  v36(&v34[v32], 1, 1, v35);
  *(v32 + v28[19]) = _swiftEmptyArrayStorage;
  *(v32 + v28[20]) = _swiftEmptyArrayStorage;
  v37 = (v32 + v28[21]);
  *v37 = 0;
  v37[8] = 1;
  *(v32 + v28[22]) = _swiftEmptyArrayStorage;
  *(v32 + v28[23]) = &_swiftEmptySetSingleton;
  *(v32 + v28[24]) = _swiftEmptyArrayStorage;
  *(v32 + v28[25]) = _swiftEmptyArrayStorage;
  *(v32 + v28[26]) = _swiftEmptyArrayStorage;
  *(v32 + v28[27]) = _swiftEmptyArrayStorage;
  v38 = v28[28];
  v39 = sub_2CD560();
  (*(*(v39 - 8) + 56))(&v38[v32], 1, 1, v39);
  *(v32 + v28[29]) = 0;
  *(v32 + v28[30]) = _swiftEmptyArrayStorage;
  v40 = a1;
  v41 = v28[31];
  v42 = sub_2CD4B0();
  v43 = *(*(v42 - 8) + 56);
  v105 = v41;
  v43(v32 + v41, 1, 1, v42);
  v44 = v28[32];
  v45 = sub_2CD540();
  v46 = *(*(v45 - 8) + 56);
  v104 = v44;
  v46(v32 + v44, 1, 1, v45);
  v47 = *(v20 + 16);
  v47(v27, v40, v19);
  v48 = (*(v20 + 88))(v27, v19);
  v115 = v40;
  v118 = v20;
  if (v48 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v20 + 96))(v27, v19);
    v112 = isa[4];
    v113 = isa + 4;
    v112(v119, v27, v10);
    v49 = v19;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v50 = v121;
    v51 = sub_3ED0(v121, static Logger.default);
    swift_beginAccess();
    v52 = v120;
    (*(v120 + 16))(v114, v51, v50);
    v53 = v111;
    (isa[2])(v111, v119, v10);
    v54 = sub_2CDFE0();
    v55 = sub_2CE670();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v110 = v49;
      v57 = v56;
      v58 = swift_slowAlloc();
      v123 = v58;
      *v57 = 136315138;
      sub_2BE04C(&qword_34D678, &type metadata accessor for NLIntent);
      v59 = sub_2CEE70();
      v61 = v60;
      (isa[1])(v53, v10);
      v62 = sub_3F08(v59, v61, &v123);
      v63 = v10;
      v64 = v62;

      *(v57 + 4) = v64;
      _os_log_impl(&dword_0, v54, v55, "AudioNLv3Intent#init unpacking AudioNLv3Intent from NLv3IntentOnly: %s", v57, 0xCu);
      sub_306C(v58);

      (*(v118 + 8))(v115, v110);
      (*(v120 + 8))(v114, v121);
      v65 = v63;
    }

    else
    {

      (*(v118 + 8))(v115, v49);
      (isa[1])(v53, v10);
      (*(v52 + 8))(v114, v50);
      v65 = v10;
    }

    v112(v32, v119, v65);
LABEL_19:
    v100 = v117;
    sub_11C8D4(v32, v117);
    (*(v116 + 56))(v100, 0, 1, v28);
    return sub_FED50(v32);
  }

  v114 = v38;
  v66 = isa;
  v119 = v10;
  if (v48 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v67 = *(v118 + 96);
    v110 = v19;
    v67(v27, v19);
    v114 = *&v27[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];
    v68 = v66;
    v69 = v66 + 4;
    v70 = v66[4];
    v71 = v112;
    v72 = v27;
    v73 = v119;
    v111 = v69;
    v107 = v70;
    v70(v112, v72, v119);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v74 = v121;
    v75 = sub_3ED0(v121, static Logger.default);
    swift_beginAccess();
    v76 = v120;
    (*(v120 + 16))(v113, v75, v74);
    v77 = v109;
    (v68[2])(v109, v71, v73);
    v78 = sub_2CDFE0();
    v79 = sub_2CE670();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v123 = v106;
      *v80 = 136315138;
      sub_2BE04C(&qword_34D678, &type metadata accessor for NLIntent);
      v81 = sub_2CEE70();
      v82 = v76;
      v84 = v83;
      (v68[1])(v77, v119);
      v85 = sub_3F08(v81, v84, &v123);

      *(v80 + 4) = v85;
      _os_log_impl(&dword_0, v78, v79, "AudioNLv3Intent#init unpacking AudioNLv3Intent from NLv3IntentPlusServerConversion: %s", v80, 0xCu);
      sub_306C(v106);

      v73 = v119;

      (*(v118 + 8))(v115, v110);
      (*(v82 + 8))(v113, v121);
    }

    else
    {

      (*(v118 + 8))(v115, v110);
      (v68[1])(v77, v73);
      (*(v76 + 8))(v113, v74);
    }

    v107(v32, v112, v73);
    *(v32 + v108) = v114;
    goto LABEL_19;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v86 = v121;
  v87 = sub_3ED0(v121, static Logger.default);
  swift_beginAccess();
  v88 = v110;
  (*(v120 + 16))(v110, v87, v86);
  v89 = v106;
  v47(v106, v40, v19);
  v90 = sub_2CDFE0();
  v91 = sub_2CE680();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v119 = v90;
    v93 = v92;
    isa = swift_slowAlloc();
    v123 = isa;
    *v93 = 136315138;
    LODWORD(v113) = v91;
    v47(v103, v89, v19);
    v112 = sub_2CE2A0();
    v95 = v94;
    v96 = *(v118 + 8);
    v96(v89, v19);
    v97 = sub_3F08(v112, v95, &v123);

    v98 = v93;
    *(v93 + 4) = v97;
    v99 = v119;
    _os_log_impl(&dword_0, v119, v113, "AudioNLv3Intent#init Unsupported parse while creating AudioNLv3Intent: %s", v98, 0xCu);
    sub_306C(isa);

    v96(v115, v19);
    (*(v120 + 8))(v110, v121);
  }

  else
  {

    v96 = *(v118 + 8);
    v96(v115, v19);
    v96(v89, v19);
    (*(v120 + 8))(v88, v121);
  }

  v96(v27, v19);
  sub_30B8(v107 + v32, &qword_34D718, &unk_2D15F0);
  sub_30B8(&v114[v32], &qword_34D6A0, &unk_2D3490);
  sub_30B8(v32 + v105, &qword_34D6C8, &unk_2D15C0);
  sub_30B8(v32 + v104, &qword_34D6D0, qword_2D34A0);
  return (*(v116 + 56))(v117, 1, 1, v28);
}

BOOL sub_2B7010()
{
  v63 = sub_2CD540();
  v61 = *(v63 - 8);
  v1 = *(v61 + 64);
  __chkstk_darwin(v63);
  v57[0] = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v3 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v5 = v57 - v4;
  v6 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v58 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v66 = v57 - v11;
  __chkstk_darwin(v10);
  v67 = v57 - v12;
  v13 = sub_2CD4C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v59 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v57 - v19;
  v21 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v64 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = v57 - v26;
  __chkstk_darwin(v25);
  v29 = v57 - v28;
  if (qword_34C080 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for AudioNLv3Intent();
  v57[1] = sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  v57[2] = v30;
  v65 = v0;
  sub_2CACA0();
  v31 = (v14 + 56);
  v62 = v5;
  if (v70 == 11)
  {
    v32 = *v31;
    (*v31)(v29, 1, 1, v13);
  }

  else
  {
    sub_DEB38(v70, v29);
    v32 = *v31;
    (*v31)(v29, 0, 1, v13);
  }

  (*(v14 + 104))(v27, enum case for CommonAudio.Verb.shuffle(_:), v13);
  v32(v27, 0, 1, v13);
  v33 = *(v17 + 48);
  sub_F3F4(v29, v20, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v27, &v20[v33], &qword_34D6B8, &qword_2D15B0);
  v34 = *(v14 + 48);
  if (v34(v20, 1, v13) == 1)
  {
    sub_30B8(v27, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v29, &qword_34D6B8, &qword_2D15B0);
    if (v34(&v20[v33], 1, v13) == 1)
    {
      sub_30B8(v20, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_13;
    }

LABEL_11:
    v36 = &qword_34D6B0;
    v37 = &unk_2D4FC0;
    v38 = v20;
LABEL_19:
    sub_30B8(v38, v36, v37);
    return 0;
  }

  v35 = v64;
  sub_F3F4(v20, v64, &qword_34D6B8, &qword_2D15B0);
  if (v34(&v20[v33], 1, v13) == 1)
  {
    sub_30B8(v27, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v29, &qword_34D6B8, &qword_2D15B0);
    (*(v14 + 8))(v35, v13);
    goto LABEL_11;
  }

  v39 = v59;
  (*(v14 + 32))(v59, &v20[v33], v13);
  sub_2BE04C(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v40 = v35;
  v41 = sub_2CE250();
  v42 = *(v14 + 8);
  v42(v39, v13);
  sub_30B8(v27, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v29, &qword_34D6B8, &qword_2D15B0);
  v42(v40, v13);
  sub_30B8(v20, &qword_34D6B8, &qword_2D15B0);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v43 = v67;
  sub_2B84C8(v67);
  v44 = v61;
  v45 = v66;
  v46 = v63;
  (*(v61 + 104))(v66, enum case for CommonAudio.MediaType.music(_:), v63);
  (*(v44 + 56))(v45, 0, 1, v46);
  v47 = *(v60 + 48);
  v48 = v62;
  sub_F3F4(v43, v62, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v45, v48 + v47, &qword_34D6D0, qword_2D34A0);
  v49 = *(v44 + 48);
  if (v49(v48, 1, v46) == 1)
  {
    sub_30B8(v45, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v43, &qword_34D6D0, qword_2D34A0);
    if (v49(v48 + v47, 1, v46) == 1)
    {
      sub_30B8(v48, &qword_34D6D0, qword_2D34A0);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v50 = v58;
  sub_F3F4(v48, v58, &qword_34D6D0, qword_2D34A0);
  if (v49(v48 + v47, 1, v46) == 1)
  {
    sub_30B8(v66, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v67, &qword_34D6D0, qword_2D34A0);
    (*(v44 + 8))(v50, v46);
LABEL_18:
    v36 = &qword_34D6A8;
    v37 = &unk_2D15A0;
    v38 = v48;
    goto LABEL_19;
  }

  v52 = v48 + v47;
  v53 = v57[0];
  (*(v44 + 32))(v57[0], v52, v46);
  sub_2BE04C(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v54 = sub_2CE250();
  v55 = *(v44 + 8);
  v55(v53, v46);
  sub_30B8(v66, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v67, &qword_34D6D0, qword_2D34A0);
  v55(v50, v46);
  sub_30B8(v48, &qword_34D6D0, qword_2D34A0);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (qword_34C088 != -1)
  {
    swift_once();
  }

  sub_2CACA0();
  if (v69 != 1)
  {
    return 0;
  }

  v56 = *(sub_2B9984() + 2);

  if (v56)
  {
    return 0;
  }

  if (qword_34C0D0 != -1)
  {
    swift_once();
  }

  sub_2CACA0();
  return v68 == 4;
}

uint64_t sub_2B7A00@<X0>(uint64_t a1@<X8>)
{
  if (qword_34C080 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent();
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if (v5 == 11)
  {
    v2 = sub_2CD4C0();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_DEB38(v5, a1);
    v4 = sub_2CD4C0();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_2B7B44()
{
  v1 = sub_2CE000();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  if (!*(v0 + *(type metadata accessor for AudioNLv3Intent() + 20)))
  {
    goto LABEL_19;
  }

  v9 = sub_2CA830();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10 || (v11 = [v10 privatePlayMediaIntentData]) == 0 || (v12 = v11, v13 = objc_msgSend(v11, "audioSearchResults"), v12, !v13))
  {

LABEL_19:
    if (qword_34BF58 != -1)
    {
LABEL_29:
      swift_once();
    }

    v21 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    (*(v2 + 16))(v6, v21, v1);
    v22 = sub_2CDFE0();
    v23 = sub_2CE680();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "AudioNLv3Intent called for non INPlayMediaIntent. Returning newsPodcastTopicId=nil", v24, 2u);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }

  sub_736BC();
  v14 = sub_2CE410();

  v36 = v8;
  v37 = v9;
  if (!(v14 >> 62))
  {
    v6 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_31:

    v29 = v37;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    v31 = v36;
    (*(v2 + 16))(v36, v30, v1);
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "AudioNLv3Intent had no relevant topicId. Returning newsPodcastTopicId=nil", v34, 2u);
    }

    (*(v2 + 8))(v31, v1);
    return 0;
  }

  v6 = sub_2CEDA0();
  if (!v6)
  {
    goto LABEL_31;
  }

LABEL_7:
  v15 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = sub_2CECD0();
    }

    else
    {
      if (v15 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v16 = *(v14 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v19 = [v16 type];
    v20 = vdupq_n_s64(v19);
    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_330968, v20), vceqq_s64(unk_330978, v20)), vuzp1q_s32(vceqq_s64(xmmword_330988, v20), vceqq_s64(unk_330998, v20))))) & 1) != 0 || v19 == (&dword_4 + 1) || v19 == &dword_10)
    {
      break;
    }

    ++v15;
    if (v18 == v6)
    {
      goto LABEL_31;
    }
  }

  v26 = [v17 identifier];
  if (v26)
  {
    v27 = v26;
    v28 = sub_2CE270();

    return v28;
  }

  return 0;
}

uint64_t sub_2B8018()
{
  v1 = sub_2CE000();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  if (!*(v0 + *(type metadata accessor for AudioNLv3Intent() + 20)))
  {
    goto LABEL_18;
  }

  v9 = sub_2CA830();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10 || (v11 = [v10 privatePlayMediaIntentData]) == 0 || (v12 = v11, v13 = objc_msgSend(v11, "audioSearchResults"), v12, !v13))
  {

LABEL_18:
    if (qword_34BF58 != -1)
    {
LABEL_28:
      swift_once();
    }

    v21 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    (*(v2 + 16))(v6, v21, v1);
    v22 = sub_2CDFE0();
    v23 = sub_2CE680();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "AudioNLv3Intent called for non INPlayMediaIntent. Returning newsPodcastIdentifier=nil", v24, 2u);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }

  sub_736BC();
  v14 = sub_2CE410();

  v36 = v8;
  v37 = v9;
  if (!(v14 >> 62))
  {
    v6 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_30:

    v29 = v37;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    v31 = v36;
    (*(v2 + 16))(v36, v30, v1);
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "AudioNLv3Intent had no relevant podcastId. Returning newsPodcastIdentifier=nil", v34, 2u);
    }

    (*(v2 + 8))(v31, v1);
    return 0;
  }

  v6 = sub_2CEDA0();
  if (!v6)
  {
    goto LABEL_30;
  }

LABEL_7:
  v15 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = sub_2CECD0();
    }

    else
    {
      if (v15 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_27;
      }

      v16 = *(v14 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v19 = [v16 type];
    v20 = vdupq_n_s64(v19);
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_3309D8, v20), vceqq_s64(unk_3309E8, v20)))) & 1) != 0 || v19 == &dword_14)
    {
      break;
    }

    ++v15;
    if (v18 == v6)
    {
      goto LABEL_30;
    }
  }

  v26 = [v17 identifier];
  if (v26)
  {
    v27 = v26;
    v28 = sub_2CE270();

    return v28;
  }

  return 0;
}

uint64_t sub_2B84C8@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_2CD540();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  if (qword_34C090 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent();
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if (v17 != 25)
  {
    sub_22B830(v17, v7);
    v11 = *(v3 + 32);
    v11(v9, v7, v2);
    v11(a1, v9, v2);
LABEL_14:
    v10 = 0;
    return (*(v3 + 56))(a1, v10, 1, v2);
  }

  if (qword_34C0B8 != -1)
  {
    swift_once();
  }

  sub_2CACA0();
  if (v16 == 14)
  {
    goto LABEL_7;
  }

  if (sub_720B4(v16) == 0x747369747261 && v12 == 0xE600000000000000)
  {

LABEL_13:
    (*(v3 + 104))(a1, enum case for CommonAudio.MediaType.artist(_:), v2);
    goto LABEL_14;
  }

  v13 = sub_2CEEA0();

  if (v13)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = 1;
  return (*(v3 + 56))(a1, v10, 1, v2);
}

uint64_t sub_2B8780()
{
  v0 = sub_20410(&qword_357328, &qword_2D9630);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357108 = result;
  return result;
}

uint64_t sub_2B87F0()
{
  v0 = sub_20410(&qword_357338, &qword_2D9638);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357110 = result;
  return result;
}

uint64_t sub_2B8860()
{
  v0 = sub_20410(&qword_357348, &qword_2D9640);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357118 = result;
  return result;
}

uint64_t sub_2B88C8()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357120 = result;
  return result;
}

uint64_t sub_2B892C()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357128 = result;
  return result;
}

uint64_t sub_2B8998()
{
  v0 = sub_20410(&qword_357368, &qword_2D9650);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357130 = result;
  return result;
}

uint64_t sub_2B8A00()
{
  v0 = sub_20410(&qword_357378, &qword_2D9658);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357138 = result;
  return result;
}

uint64_t sub_2B8A68()
{
  v0 = sub_20410(&qword_357388, &qword_2D9660);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357140 = result;
  return result;
}

uint64_t sub_2B8AD0()
{
  v0 = sub_20410(&qword_357398, &qword_2D9668);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357148 = result;
  return result;
}

uint64_t sub_2B8B38()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357150 = result;
  return result;
}

uint64_t sub_2B8BA8()
{
  v0 = sub_20410(&qword_3573A8, &qword_2D9670);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357158 = result;
  return result;
}

uint64_t sub_2B8C10()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357160 = result;
  return result;
}

uint64_t sub_2B8C78()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357168 = result;
  return result;
}

uint64_t sub_2B8CE0()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357170 = result;
  return result;
}

uint64_t sub_2B8D48()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357178 = result;
  return result;
}

uint64_t sub_2B8DB0()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357180 = result;
  return result;
}

uint64_t sub_2B8E18()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357188 = result;
  return result;
}

uint64_t sub_2B8E80()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357190 = result;
  return result;
}

uint64_t sub_2B8EE8()
{
  v0 = sub_20410(&qword_3573B8, &qword_2D9678);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_357198 = result;
  return result;
}

uint64_t sub_2B8F50()
{
  v0 = sub_20410(&qword_357358, &qword_2D9648);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_3571A0 = result;
  return result;
}

uint64_t sub_2B8FB8()
{
  v0 = sub_20410(&qword_3573C8, &qword_2D9680);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_3571A8 = result;
  return result;
}

uint64_t sub_2B9020()
{
  v0 = sub_20410(&qword_3573D8, &unk_2D9688);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CAAC0();
  qword_3571B0 = result;
  return result;
}

uint64_t sub_2B9088()
{
  sub_20410(&qword_357320, &qword_2D9628);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2D9350;
  if (qword_34C080 != -1)
  {
    swift_once();
  }

  v1 = qword_357108;
  *(v0 + 56) = sub_20410(&qword_357328, &qword_2D9630);
  *(v0 + 64) = sub_2BC6CC(&qword_357330, &qword_357328, &qword_2D9630);
  *(v0 + 32) = v1;
  v2 = qword_34C088;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_357110;
  *(v0 + 96) = sub_20410(&qword_357338, &qword_2D9638);
  *(v0 + 104) = sub_2BC6CC(&qword_357340, &qword_357338, &qword_2D9638);
  *(v0 + 72) = v3;
  v4 = qword_34C090;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_357118;
  *(v0 + 136) = sub_20410(&qword_357348, &qword_2D9640);
  *(v0 + 144) = sub_2BC6CC(&qword_357350, &qword_357348, &qword_2D9640);
  *(v0 + 112) = v5;
  v6 = qword_34C0A0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_357128;
  v8 = sub_20410(&qword_357358, &qword_2D9648);
  *(v0 + 176) = v8;
  v9 = sub_2BC6CC(&qword_357360, &qword_357358, &qword_2D9648);
  *(v0 + 184) = v9;
  *(v0 + 152) = v7;
  v10 = qword_34C0A8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_357130;
  *(v0 + 216) = sub_20410(&qword_357368, &qword_2D9650);
  *(v0 + 224) = sub_2BC6CC(&qword_357370, &qword_357368, &qword_2D9650);
  *(v0 + 192) = v11;
  v12 = qword_34C0B0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_357138;
  *(v0 + 256) = sub_20410(&qword_357378, &qword_2D9658);
  *(v0 + 264) = sub_2BC6CC(&qword_357380, &qword_357378, &qword_2D9658);
  *(v0 + 232) = v13;
  v14 = qword_34C0B8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_357140;
  *(v0 + 296) = sub_20410(&qword_357388, &qword_2D9660);
  *(v0 + 304) = sub_2BC6CC(&qword_357390, &qword_357388, &qword_2D9660);
  *(v0 + 272) = v15;
  v16 = qword_34C0C0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_357148;
  *(v0 + 336) = sub_20410(&qword_357398, &qword_2D9668);
  *(v0 + 344) = sub_2BC6CC(&qword_3573A0, &qword_357398, &qword_2D9668);
  *(v0 + 312) = v17;
  v18 = qword_34C0C8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_357150;
  *(v0 + 376) = v8;
  *(v0 + 384) = v9;
  *(v0 + 352) = v19;
  v20 = qword_34C0D0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_357158;
  *(v0 + 416) = sub_20410(&qword_3573A8, &qword_2D9670);
  *(v0 + 424) = sub_2BC6CC(&qword_3573B0, &qword_3573A8, &qword_2D9670);
  *(v0 + 392) = v21;
  v22 = qword_34C118;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_3571A0;
  *(v0 + 456) = v8;
  *(v0 + 464) = v9;
  *(v0 + 432) = v23;
  v24 = qword_34C0D8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_357160;
  *(v0 + 496) = v8;
  *(v0 + 504) = v9;
  *(v0 + 472) = v25;
  v26 = qword_34C0E0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_357168;
  *(v0 + 536) = v8;
  *(v0 + 544) = v9;
  *(v0 + 512) = v27;
  v28 = qword_34C0E8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_357170;
  *(v0 + 576) = v8;
  *(v0 + 584) = v9;
  *(v0 + 552) = v29;
  v30 = qword_34C0F0;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_357178;
  *(v0 + 616) = v8;
  *(v0 + 624) = v9;
  *(v0 + 592) = v31;
  v32 = qword_34C0F8;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_357180;
  *(v0 + 656) = v8;
  *(v0 + 664) = v9;
  *(v0 + 632) = v33;
  v34 = qword_34C100;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_357188;
  *(v0 + 696) = v8;
  *(v0 + 704) = v9;
  *(v0 + 672) = v35;
  v36 = qword_34C108;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_357190;
  *(v0 + 736) = v8;
  *(v0 + 744) = v9;
  *(v0 + 712) = v37;
  v38 = qword_34C110;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_357198;
  *(v0 + 776) = sub_20410(&qword_3573B8, &qword_2D9678);
  *(v0 + 784) = sub_2BC6CC(&qword_3573C0, &qword_3573B8, &qword_2D9678);
  *(v0 + 752) = v39;
  v40 = qword_34C120;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_3571A8;
  *(v0 + 816) = sub_20410(&qword_3573C8, &qword_2D9680);
  *(v0 + 824) = sub_2BC6CC(&qword_3573D0, &qword_3573C8, &qword_2D9680);
  *(v0 + 792) = v41;
  v42 = qword_34C128;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_3571B0;
  *(v0 + 856) = sub_20410(&qword_3573D8, &unk_2D9688);
  *(v0 + 864) = sub_2BC6CC(&qword_3573E0, &qword_3573D8, &unk_2D9688);
  *(v0 + 832) = v43;
  v44 = sub_2CAAB0();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();

  result = sub_2CAAA0();
  qword_3571B8 = result;
  return result;
}

void *sub_2B9984()
{
  if (qword_34C0A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent();
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if (v7 == 8)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_20410(&qword_34D6D8, &qword_2D15D0);
  v1 = sub_2CD500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2D0090;
  (*(v2 + 104))(v5 + v4, **(&off_33E1B0 + v7), v1);
  v6 = sub_2BDE18(v5);
  swift_setDeallocating();
  (*(v2 + 8))(v5 + v4, v1);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_2B9B5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_34C0C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent();
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if (v8 <= 1u)
  {
    if (v8)
    {
      v2 = &enum case for CommonAudio.Confirmation.no(_:);
    }

    else
    {
      v2 = &enum case for CommonAudio.Confirmation.yes(_:);
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v2 = &enum case for CommonAudio.Confirmation.cancel(_:);
    goto LABEL_11;
  }

  if (v8 == 3)
  {
    v2 = &enum case for CommonAudio.Confirmation.moreInfo(_:);
LABEL_11:
    v3 = *v2;
    v4 = sub_2CD490();
    v5 = *(v4 - 8);
    (*(v5 + 104))(a1, v3, v4);
    return (*(v5 + 56))(a1, 0, 1, v4);
  }

  v7 = sub_2CD490();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

void *sub_2B9D38()
{
  v1 = sub_20410(&qword_34DA20, &qword_2D1900);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v46 - v3;
  v5 = sub_2CDD00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = &v46 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v47 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v19 = type metadata accessor for AudioNLv3Intent();
  if (*(v0 + *(v19 + 20)))
  {
    v20 = *(v0 + *(v19 + 20));
    v21 = sub_2CA830();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v46 = v21;
      v22 = sub_2CE800();
      v21 = v46;
      if (v22)
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v23 = sub_3ED0(v12, static Logger.default);
        swift_beginAccess();
        (*(v13 + 16))(v18, v23, v12);
        v24 = sub_2CDFE0();
        v25 = sub_2CE690();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_0, v24, v25, "Found AirPlayRequest internal setting", v26, 2u);
        }

        (*(v13 + 8))(v18, v12);
        sub_20410(&qword_3573F0, &qword_2D9698);
        v27 = sub_2CD9B0();
        v28 = *(v27 - 8);
        v29 = *(v28 + 72);
        v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_2D0090;
        (*(v28 + 104))(v31 + v30, enum case for UsoMediaSettingName.airplay(_:), v27);

        return v31;
      }
    }
  }

  if (qword_34C120 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_30B8(v4, &qword_34DA20, &qword_2D1900);
    return _swiftEmptyArrayStorage;
  }

  v33 = v48;
  (*(v6 + 32))(v48, v4, v5);
  (*(v6 + 104))(v10, enum case for DeviceType.airplaySpeaker(_:), v5);
  sub_2BE04C(&qword_3573E8, &type metadata accessor for DeviceType);
  sub_2CE3E0();
  sub_2CE3E0();
  if (v49 == v51 && v50 == v52)
  {
    v34 = 1;
  }

  else
  {
    v34 = sub_2CEEA0();
  }

  v35 = *(v6 + 8);
  v35(v10, v5);

  if ((v34 & 1) == 0)
  {
    v35(v33, v5);
    return _swiftEmptyArrayStorage;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v36 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v37 = v47;
  (*(v13 + 16))(v47, v36, v12);
  v38 = sub_2CDFE0();
  v39 = sub_2CE660();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "Got .airplaySpeaker as device type. Using as audioSettingName instead", v40, 2u);
  }

  (*(v13 + 8))(v37, v12);
  sub_20410(&qword_3573F0, &qword_2D9698);
  v41 = sub_2CD9B0();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_2D0090;
  (*(v42 + 104))(v45 + v44, enum case for UsoMediaSettingName.airplay(_:), v41);
  v35(v33, v5);
  return v45;
}

uint64_t sub_2BA4F8()
{
  v1 = sub_2CE000();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for AudioNLv3Intent() + 20)))
  {
    v6 = sub_2CA830();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = sub_2CE730();

      return v7 & 1;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v1, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v5, v9, v1);
  v10 = sub_2CDFE0();
  v11 = sub_2CE680();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "AudioNLv3Intent called for non INPlayMediaIntent. Returning appInferred=true", v12, 2u);
  }

  (*(v2 + 8))(v5, v1);
  return 1;
}

char *sub_2BA6F8()
{
  v0 = sub_20410(&qword_3573F8, &qword_2D96A8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v69 = v60 - v2;
  v3 = sub_20410(&qword_357400, &unk_2D96B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v74 = v60 - v5;
  v6 = sub_2CDD20();
  v79 = *(v6 - 8);
  v7 = *(v79 + 64);
  v8 = __chkstk_darwin(v6);
  v67 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v60 - v10;
  v12 = sub_20410(&qword_34D668, &qword_2D1540);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v76 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v60 - v16;
  v18 = sub_20410(&qword_357408, &qword_2D96C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v85 = v60 - v20;
  v86 = sub_2CDD50();
  v75 = *(v86 - 8);
  v21 = *(v75 + 64);
  __chkstk_darwin(v86);
  v83 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2CABF0();
  v84 = *(v87 - 8);
  v23 = *(v84 + 64);
  __chkstk_darwin(v87);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20410(&qword_357410, &qword_2D96C8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = v60 - v28;
  v30 = sub_2CAC70();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v68 = v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34C108 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent();
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CAC90();
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_30B8(v29, &qword_357410, &qword_2D96C8);
    return _swiftEmptyArrayStorage;
  }

  v72 = v6;
  (*(v31 + 32))(v68, v29, v30);
  v35 = sub_2CAC60();
  v36 = *(v35 + 16);
  if (v36)
  {
    v61 = v31;
    v62 = v30;
    v82 = *(v84 + 16);
    v37 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v60[1] = v35;
    v38 = v35 + v37;
    v81 = (v84 + 8);
    v70 = (v79 + 48);
    v66 = (v79 + 32);
    v84 += 16;
    v80 = *(v84 + 56);
    v63 = (v79 + 16);
    v65 = (v79 + 8);
    v73 = enum case for TerminalElement.Value.string(_:);
    v39 = v76;
    v78 = (v75 + 48);
    v79 = v75 + 56;
    v77 = (v75 + 32);
    v34 = _swiftEmptyArrayStorage;
    v40 = v87;
    v71 = v17;
    v82(v25, v35 + v37, v87);
    while (1)
    {
      sub_2CABE0();
      v41 = sub_2CABD0();
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v17, 1, v41) == 1)
      {
        (*v81)(v25, v40);
        v43 = 1;
        goto LABEL_21;
      }

      sub_F3F4(v17, v39, &qword_34D668, &qword_2D1540);
      v44 = (*(v42 + 88))(v39, v41);
      if (v44 != v73)
      {
        (*v81)(v25, v87);
        (*(v42 + 8))(v39, v41);
        v43 = 1;
        goto LABEL_21;
      }

      (*(v42 + 96))(v39, v41);
      v45 = *v39;
      v46 = v39[1];
      v47 = v74;
      sub_2CDD10();
      v48 = v72;
      if ((*v70)(v47, 1, v72) == 1)
      {
        (*v81)(v25, v87);
        sub_30B8(v74, &qword_357400, &unk_2D96B0);
      }

      else
      {
        (*v66)(v11, v74, v48);
        v49 = v69;
        sub_2CABC0();
        v50 = sub_2CABA0();
        v51 = *(v50 - 8);
        if ((*(v51 + 48))(v49, 1, v50) != 1)
        {
          sub_2CAB90();
          v64 = v52;
          (*(v51 + 8))(v49, v50);
          (*v63)(v67, v11, v48);
          sub_2CDD30();
          (*v65)(v11, v48);
          (*v81)(v25, v87);
          v43 = 0;
          goto LABEL_20;
        }

        sub_30B8(v49, &qword_3573F8, &qword_2D96A8);
        (*v65)(v11, v48);
        (*v81)(v25, v87);
      }

      v43 = 1;
LABEL_20:
      v39 = v76;
      v17 = v71;
LABEL_21:
      v53 = v85;
      v54 = v86;
      (*v79)(v85, v43, 1, v86);
      sub_30B8(v17, &qword_34D668, &qword_2D1540);
      if ((*v78)(v53, 1, v54) == 1)
      {
        sub_30B8(v53, &qword_357408, &qword_2D96C0);
      }

      else
      {
        v55 = v54;
        v56 = *v77;
        (*v77)(v83, v53, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_B9220(0, *(v34 + 2) + 1, 1, v34);
        }

        v58 = *(v34 + 2);
        v57 = *(v34 + 3);
        if (v58 >= v57 >> 1)
        {
          v34 = sub_B9220(v57 > 1, v58 + 1, 1, v34);
        }

        *(v34 + 2) = v58 + 1;
        v56(&v34[((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v58], v83, v86);
        v39 = v76;
      }

      v38 += v80;
      --v36;
      v40 = v87;
      if (!v36)
      {

        v30 = v62;
        v31 = v61;
        goto LABEL_29;
      }

      v82(v25, v38, v87);
    }
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_29:
  (*(v31 + 8))(v68, v30);
  return v34;
}

uint64_t sub_2BB1A4@<X0>(char *a1@<X8>)
{
  v2 = sub_2CE000();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_34DA20, &qword_2D1900);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v9 = sub_2CDD00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  if (qword_34C120 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent();
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_30B8(v8, &qword_34DA20, &qword_2D1900);
  }

  else
  {
    v30 = v2;
    v31 = a1;
    v17 = *(v10 + 32);
    v17(v16, v8, v9);
    (*(v10 + 104))(v14, enum case for DeviceType.airplaySpeaker(_:), v9);
    sub_2BE04C(&qword_3573E8, &type metadata accessor for DeviceType);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v34 == v36 && v35 == v37)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_2CEEA0();
    }

    v29 = *(v10 + 8);
    v29(v14, v9);

    if ((v18 & 1) == 0)
    {
      v27 = v31;
      v17(v31, v16, v9);
      a1 = v27;
      v26 = 0;
      return (*(v10 + 56))(a1, v26, 1, v9);
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v19 = v30;
    v20 = sub_3ED0(v30, static Logger.default);
    swift_beginAccess();
    v21 = v32;
    (*(v32 + 16))(v33, v20, v19);
    v22 = sub_2CDFE0();
    v23 = sub_2CE660();
    v24 = os_log_type_enabled(v22, v23);
    a1 = v31;
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v22, v23, "Got .airplaySpeaker as device type. Ignoring since it needs to be treated as a setting name instead", v25, 2u);
    }

    (*(v21 + 8))(v33, v19);
    v29(v16, v9);
  }

  v26 = 1;
  return (*(v10 + 56))(a1, v26, 1, v9);
}

uint64_t sub_2BB698@<X0>(uint64_t a1@<X8>)
{
  if (qword_34C0B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AudioNLv3Intent();
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if (v9 == 2)
  {
    v2 = sub_2CDF80();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  if (v9)
  {
  }

  else
  {
    v4 = sub_2CEEA0();

    if ((v4 & 1) == 0)
    {

      v5 = &enum case for Reference.the(_:);
      goto LABEL_10;
    }
  }

  v5 = &enum case for Reference.one(_:);
LABEL_10:
  v6 = *v5;
  v7 = sub_2CDF80();
  v8 = *(v7 - 8);
  (*(v8 + 104))(a1, v6, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

uint64_t sub_2BB890@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2CAFE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2BB8F8()
{
  if (qword_34C130 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2BB990(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2BBA78(uint64_t a1)
{
  v2 = (v1 + *(a1 + 84));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_2BBB18@<X0>(uint64_t a1@<X8>)
{
  if (qword_34C088 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if (v7)
  {
    v2 = sub_2CD4A0();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = enum case for CommonAudio.Noun.library(_:);
    v5 = sub_2CD4A0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    return (*(v6 + 56))(a1, 0, 1, v5);
  }
}

void *sub_2BBCD4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v9 = a4;
    swift_once();
    a4 = v9;
  }

  v4 = *a4;
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_20410(&unk_356F40, &unk_2D0740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = v10;
  v6 = inited + 32;
  *(inited + 40) = v11;
  v7 = sub_2AC4C(inited);
  swift_setDeallocating();
  sub_F1954(v6);
  return v7;
}

uint64_t sub_2BBE34@<X0>(uint64_t a1@<X8>)
{
  if (qword_34C0B0 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if (v7 == 2)
  {
    v2 = sub_2CD570();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = enum case for CommonAudio.Reference.definite(_:);
    v5 = sub_2CD570();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    return (*(v6 + 56))(a1, 0, 1, v5);
  }
}

uint64_t sub_2BC01C@<X0>(uint64_t a1@<X8>)
{
  if (qword_34C080 != -1)
  {
    swift_once();
  }

  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  if (v5 == 11)
  {
    v2 = sub_2CD4C0();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_DEB38(v5, a1);
    v4 = sub_2CD4C0();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_2BC1A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v6 = a4;
    swift_once();
    a4 = v6;
  }

  v4 = *a4;
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);
  sub_2CACA0();
  return v7;
}

uint64_t sub_2BC270(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v7 = a4;
    swift_once();
    a4 = v7;
  }

  v5 = *a4;
  v6 = sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);

  return IntentNodeTraversable.values<A>(forNode:)(v5, a1, v6);
}

uint64_t sub_2BC3F0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v6 = a4;
    swift_once();
    a4 = v6;
  }

  v4 = *a4;
  sub_2BE04C(&unk_351730, type metadata accessor for AudioNLv3Intent);

  return sub_2CACA0();
}

uint64_t sub_2BC49C(uint64_t a1)
{
  v2 = sub_2BE04C(&qword_357318, type metadata accessor for AudioNLv3Intent);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_2BC518(uint64_t a1)
{
  v2 = sub_2BE04C(&qword_357318, type metadata accessor for AudioNLv3Intent);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_2BC584(uint64_t a1)
{
  v2 = sub_2BE04C(&qword_357318, type metadata accessor for AudioNLv3Intent);

  return NLIntentWrapper.description.getter(a1, v2);
}

uint64_t sub_2BC6CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2DB30(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2BC720(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2CD500();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2BE04C(&qword_353150, &type metadata accessor for CommonAudio.Attribute);
  v36 = a2;
  v13 = sub_2CE220();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2BE04C(&qword_353158, &type metadata accessor for CommonAudio.Attribute);
      v23 = sub_2CE250();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2BD10C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2BCA00(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2CEF50();
  sub_2CE310();
  v9 = sub_2CEF80();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2CEEA0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2BD3B0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2BCB50(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2CD500();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_20410(&qword_353160, &qword_2D96A0);
  result = sub_2CEC80();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2BE04C(&qword_353150, &type metadata accessor for CommonAudio.Attribute);
      result = sub_2CE220();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2BCEAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_20410(&qword_357418, &qword_2D96D0);
  result = sub_2CEC80();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2CEF50();
      sub_2CE310();
      result = sub_2CEF80();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2BD10C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2CD500();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2BCB50(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2BD530();
      goto LABEL_12;
    }

    sub_2BD8C4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2BE04C(&qword_353150, &type metadata accessor for CommonAudio.Attribute);
  v15 = sub_2CE220();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2BE04C(&qword_353158, &type metadata accessor for CommonAudio.Attribute);
      v23 = sub_2CE250();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2CEED0();
  __break(1u);
  return result;
}

Swift::Int sub_2BD3B0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2BCEAC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2BD768();
      goto LABEL_16;
    }

    sub_2BDBE0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2CEF50();
  sub_2CE310();
  result = sub_2CEF80();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2CEEA0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2CEED0();
  __break(1u);
  return result;
}

void *sub_2BD530()
{
  v1 = v0;
  v2 = sub_2CD500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_353160, &qword_2D96A0);
  v7 = *v0;
  v8 = sub_2CEC70();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_2BD768()
{
  v1 = v0;
  sub_20410(&qword_357418, &qword_2D96D0);
  v2 = *v0;
  v3 = sub_2CEC70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2BD8C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2CD500();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_20410(&qword_353160, &qword_2D96A0);
  v10 = sub_2CEC80();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2BE04C(&qword_353150, &type metadata accessor for CommonAudio.Attribute);
      result = sub_2CE220();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2BDBE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_20410(&qword_357418, &qword_2D96D0);
  result = sub_2CEC80();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2CEF50();

      sub_2CE310();
      result = sub_2CEF80();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2BDE18(uint64_t a1)
{
  v2 = sub_2CD500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_2BE04C(&qword_353150, &type metadata accessor for CommonAudio.Attribute);
  result = sub_2CE540();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_2BC720(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_2BDFB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2CE540();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2BCA00(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2BE04C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2BE0BC()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v10 = sub_2CBA00();
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_357420 = v10;
  return result;
}

uint64_t sub_2BE254(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v12 = a1[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = *(a2 + 136);

  sub_1B4918(a3, a4, a5, v15, sub_2C5C40, v14, a7);
}

uint64_t sub_2BE324(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v63 = sub_2CE000();
  v65 = *(v63 - 8);
  v4 = *(v65 + 64);
  __chkstk_darwin(v63);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&unk_3519A0, &qword_2D0980);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v58 - v9;
  v64 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = *(*(v64 - 8) + 64);
  v12 = __chkstk_darwin(v64);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v58 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v58 - v18;
  __chkstk_darwin(v17);
  v21 = &v58 - v20;
  v61 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext();
  v22 = swift_projectBox();
  sub_F3F4(a1, v10, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_30B8(v10, &unk_3519A0, &qword_2D0980);
    return v67(v23);
  }

  v60 = v22;
  sub_14A58(v10, v21, &qword_34C6E8, &unk_2D0FF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v24 = v63;
  v25 = sub_3ED0(v63, static Logger.default);
  swift_beginAccess();
  v26 = v65;
  (*(v65 + 16))(v6, v25, v24);
  sub_F3F4(v21, v19, &qword_34C6E8, &unk_2D0FF0);
  v27 = sub_2CDFE0();
  v28 = sub_2CE670();
  v29 = &off_349000;
  if (!os_log_type_enabled(v27, v28))
  {

    sub_30B8(v19, &qword_34C6E8, &unk_2D0FF0);
    (*(v26 + 8))(v6, v24);
    goto LABEL_16;
  }

  v25 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v68 = v59;
  *v25 = 138412546;
  sub_F3F4(v19, v16, &qword_34C6E8, &unk_2D0FF0);
  v30 = *(v16 + *(v64 + 48));
  v31 = [v30 dialog];

  sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
  v32 = sub_2CE410();

  if (v32 >> 62)
  {
    result = sub_2CEDA0();
    v29 = &off_349000;
    if (result)
    {
      goto LABEL_8;
    }

LABEL_14:

    v43 = sub_2CA130();
    (*(*(v43 - 8) + 8))(v16, v43);
    sub_30B8(v19, &qword_34C6E8, &unk_2D0FF0);
    v42 = 0;
    goto LABEL_15;
  }

  result = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
  v29 = &off_349000;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v32 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (!*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    return result;
  }

  for (i = *(v32 + 32); ; i = sub_2CECD0())
  {
    v35 = i;

    v36 = [v35 fullPrint];

    v37 = sub_2CE270();
    v39 = v38;

    sub_10C40();
    swift_allocError();
    *v40 = v37;
    v40[1] = v39;
    v41 = sub_2CA130();
    (*(*(v41 - 8) + 8))(v16, v41);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    sub_30B8(v19, &qword_34C6E8, &unk_2D0FF0);
    v24 = v63;
    v29 = &off_349000;
LABEL_15:
    *(v25 + 4) = v42;
    v19 = v58;
    *v58 = v42;
    *(v25 + 12) = 2082;
    v44 = sub_2CCCA0();
    v46 = sub_3F08(v44, v45, &v68);

    *(v25 + 14) = v46;
    _os_log_impl(&dword_0, v27, v28, "PlayMediaIOSSnippetModelProvider#createMediaPlayerSnippetModel conversationSpace dialog: %@ %{public}s", v25, 0x16u);
    sub_30B8(v19, &unk_34FC00, &unk_2D0150);

    sub_306C(v59);

    (*(v65 + 8))(v6, v24);
LABEL_16:
    v47 = v62;
    sub_F3F4(v21, v62, &qword_34C6E8, &unk_2D0FF0);
    v48 = *(v47 + *(v64 + 48));
    v6 = [v48 v29[473]];

    sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
    v16 = sub_2CE410();

    v27 = v60;
    if (v16 >> 62)
    {
      break;
    }

    if (!*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_23;
    }

LABEL_18:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v49 = sub_2CECD0();
      goto LABEL_21;
    }

    if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      v49 = *(v16 + 32);
LABEL_21:
      v50 = v49;

      v51 = [v50 fullPrint];

      v52 = sub_2CE270();
      v54 = v53;

      sub_30B8(v21, &qword_34C6E8, &unk_2D0FF0);
      goto LABEL_24;
    }

    __break(1u);
LABEL_28:
    ;
  }

  if (sub_2CEDA0())
  {
    goto LABEL_18;
  }

LABEL_23:
  sub_30B8(v21, &qword_34C6E8, &unk_2D0FF0);

  v52 = 0;
  v54 = 0;
LABEL_24:
  v55 = sub_2CA130();
  (*(*(v55 - 8) + 8))(v47, v55);
  swift_beginAccess();
  v56 = (v27 + *(v61 + 20));
  v57 = v56[1];
  *v56 = v52;
  v56[1] = v54;

  return v67(v23);
}

uint64_t sub_2BEB3C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = sub_35E0((a2 + 184), *(a2 + 208));
  v11 = swift_allocObject();
  v11[2] = sub_2C5228;
  v11[3] = v9;
  v11[4] = a4;
  v12 = *v10;

  sub_204218(a3, sub_2C5250, v11);
}

uint64_t sub_2BEC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext();
  v35 = swift_projectBox();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v14, v8);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  if (os_log_type_enabled(v15, v16))
  {
    v31 = v13;
    v33 = a4;
    v34 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v17 = 138412546;
    v32 = a1;
    if (a2)
    {
      sub_10C40();
      swift_allocError();
      *v19 = a1;
      v19[1] = a2;

      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v17 + 4) = v20;
    *v18 = v21;
    *(v17 + 12) = 2082;
    v22 = sub_2CCCA0();
    v24 = sub_3F08(v22, v23, &v36);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_0, v15, v16, "PlayMediaIOSSnippetModelProvider#createMediaPlayerSnippetModel acquired UI sessionID: %@, %{public}s", v17, 0x16u);
    sub_30B8(v18, &unk_34FC00, &unk_2D0150);

    sub_306C(v30);

    (*(v9 + 8))(v12, v8);
    a3 = v34;
    v13 = v31;
    a1 = v32;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = v35;
  swift_beginAccess();
  v26 = (v25 + *(v13 + 28));
  v27 = v26[1];
  *v26 = a1;
  v26[1] = a2;

  return a3(v28);
}

uint64_t sub_2BEF74(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void *a4, void (*a5)(uint64_t), void *a6)
{
  v10 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&qword_352960, &qword_2D5110);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = swift_projectBox();
  swift_beginAccess();
  v20 = (v19 + *(v11 + 36));
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20 & 0xFFFFFFFFFFFFLL;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v21) & 0xF;
    }

    else
    {
      v23 = v22;
    }

    v24 = v23 != 0;
  }

  else
  {
    v24 = 0;
  }

  sub_2C1DB0(a3, a4, v24, v18);
  swift_beginAccess();
  sub_2C51B8(v18, v19);
  swift_beginAccess();
  sub_2C59C0(v19, v14, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
  sub_2BF140(v14, a3, a4, a5, a6);
  return sub_2C5A28(v14, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
}

uint64_t sub_2BF140(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), void *a5)
{
  v109 = a2;
  v112 = a4;
  v108 = a3;
  v99 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  v7 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v100 = &v88 - v8;
  v9 = type metadata accessor for SnippetModelResponse();
  v98 = *(v9 - 1);
  v10 = *(v98 + 64);
  v11 = __chkstk_darwin(v9);
  v91 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v97 = &v88 - v14;
  __chkstk_darwin(v13);
  v16 = &v88 - v15;
  v17 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v103 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v102 = &v88 - v21;
  v96 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext();
  v105 = *(v96 - 8);
  v22 = *(v105 + 64);
  v23 = __chkstk_darwin(v96);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v24;
  __chkstk_darwin(v23);
  v107 = &v88 - v26;
  v27 = sub_2CE000();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = __chkstk_darwin(v27);
  v101 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v88 - v32;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v27, static Logger.default);
  swift_beginAccess();
  v35 = v28[2];
  v94 = v34;
  v93 = v28 + 2;
  v92 = v35;
  v35(v33, v34, v27);
  v36 = sub_2CDFE0();
  v37 = sub_2CE670();
  v38 = os_log_type_enabled(v36, v37);
  v104 = v28;
  v111 = v27;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v89 = a1;
    v40 = v39;
    v41 = swift_slowAlloc();
    v90 = v25;
    v42 = v41;
    v113 = v41;
    *v40 = 136446210;
    v43 = sub_2CCCA0();
    v45 = v16;
    v46 = v9;
    v47 = a5;
    v48 = sub_3F08(v43, v44, &v113);

    *(v40 + 4) = v48;
    a5 = v47;
    v9 = v46;
    v16 = v45;
    _os_log_impl(&dword_0, v36, v37, "PlayMediaIOSSnippetModelProvider#buildMediaPlayerSnippetModel... %{public}s", v40, 0xCu);
    sub_306C(v42);
    v25 = v90;

    a1 = v89;

    v95 = v104[1];
    v95(v33, v111);
  }

  else
  {

    v95 = v28[1];
    v95(v33, v27);
  }

  v49 = v107;
  sub_2C59C0(a1, v107, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
  sub_2C59C0(v49, v25, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
  v50 = (*(v105 + 80) + 40) & ~*(v105 + 80);
  v51 = (v106 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v109;
  v54 = v110;
  v52[2] = v110;
  v52[3] = v53;
  v55 = v108;
  v52[4] = v108;
  sub_2C58A4(v49, v52 + v50);
  v56 = (v52 + v51);
  *v56 = v112;
  v56[1] = a5;

  v57 = v55;

  v58 = [v57 hashedRouteUIDs];
  if (v58)
  {
    v59 = v58;
    sub_2CE410();

    sub_2C5A28(v25, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
    v60 = *(v54 + 32);
    sub_35E0(v54 + 28, *(v54 + 31));
    v61 = swift_allocObject();
    *(v61 + 16) = sub_2C5908;
    *(v61 + 24) = v52;

    sub_2CDE00();
  }

  else
  {
    v108 = a5;
    v63 = sub_2C01D4();
    v64 = v102;
    sub_2C15E8(v25, 0, 0xE000000000000000, v63, v65, v102);

    sub_2C0700(v25, v103);
    v66 = sub_2CD230();
    (*(*(v66 - 8) + 56))(v16, 1, 1, v66);
    sub_F3F4(v64, &v16[v9[5]], &unk_3530C0, &unk_2D0A40);
    v67 = &v25[*(v96 + 28)];
    v68 = *v67;
    v69 = *(v67 + 1);
    v70 = &v16[v9[6]];
    *v70 = v68;
    *(v70 + 1) = v69;
    *&v16[v9[7]] = 0;
    v71 = v101;
    v72 = v111;
    v92(v101, v94, v111);
    v73 = v97;
    sub_2C59C0(v16, v97, type metadata accessor for SnippetModelResponse);

    v74 = sub_2CDFE0();
    v75 = sub_2CE660();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = v73;
      v77 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v110 = v16;
      v113 = v109;
      *v77 = 136315394;
      LODWORD(v107) = v75;
      sub_2C59C0(v76, v91, type metadata accessor for SnippetModelResponse);
      v78 = sub_2CE2A0();
      v80 = v79;
      sub_2C5A28(v76, type metadata accessor for SnippetModelResponse);
      v81 = sub_3F08(v78, v80, &v113);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2082;
      v82 = sub_2CCCA0();
      v84 = sub_3F08(v82, v83, &v113);

      *(v77 + 14) = v84;
      _os_log_impl(&dword_0, v74, v107, "PlayMediaIOSSnippetModelProvider#buildMediaPlayerSnippetModel returning response: %s, %{public}s", v77, 0x16u);
      swift_arrayDestroy();
      v16 = v110;

      v85 = v101;
      v86 = v111;
    }

    else
    {

      sub_2C5A28(v73, type metadata accessor for SnippetModelResponse);
      v85 = v71;
      v86 = v72;
    }

    v95(v85, v86);
    v87 = v100;
    sub_2C59C0(v16, v100, type metadata accessor for SnippetModelResponse);
    (*(v98 + 56))(v87, 0, 1, v9);
    swift_storeEnumTagMultiPayload();
    v112(v87);
    sub_30B8(v87, &qword_34EE00, &qword_2D8ED0);
    sub_2C5A28(v16, type metadata accessor for SnippetModelResponse);
    sub_30B8(v103, &unk_3530C0, &unk_2D0A40);
    sub_30B8(v102, &unk_3530C0, &unk_2D0A40);

    return sub_2C5A28(v25, type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext);
  }
}

uint64_t sub_2BFBA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void (*a7)(char *), uint64_t a8)
{
  v65 = a8;
  v66 = a7;
  v60 = a5;
  v62 = a1;
  v63 = a2;
  v67 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  v9 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v11 = &v57 - v10;
  v12 = sub_2CE000();
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  __chkstk_darwin(v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SnippetModelResponse();
  v64 = *(v16 - 1);
  v17 = *(v64 + 64);
  v18 = __chkstk_darwin(v16);
  v59 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v61 = &v57 - v21;
  __chkstk_darwin(v20);
  v23 = &v57 - v22;
  v24 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v57 - v29;
  v31 = sub_2C01D4();
  sub_2C15E8(a6, v62, v63, v31, v32, v30);

  v63 = v28;
  sub_2C0700(a6, v28);
  v33 = sub_2CD230();
  (*(*(v33 - 8) + 56))(v23, 1, 1, v33);
  v34 = &v23[v16[5]];
  v62 = v30;
  sub_F3F4(v30, v34, &unk_3530C0, &unk_2D0A40);
  v35 = (a6 + *(type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext() + 28));
  v37 = *v35;
  v36 = v35[1];
  v38 = &v23[v16[6]];
  *v38 = v37;
  *(v38 + 1) = v36;
  *&v23[v16[7]] = 0;
  v39 = qword_34BF58;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v41 = v68;
  (*(v68 + 16))(v15, v40, v12);
  v42 = v61;
  sub_2C59C0(v23, v61, type metadata accessor for SnippetModelResponse);
  v43 = sub_2CDFE0();
  v44 = sub_2CE660();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v57 = v15;
    v58 = v12;
    v46 = v45;
    v69 = swift_slowAlloc();
    *v46 = 136315394;
    sub_2C59C0(v42, v59, type metadata accessor for SnippetModelResponse);
    v47 = sub_2CE2A0();
    v48 = v42;
    v49 = v47;
    v60 = v11;
    v51 = v50;
    sub_2C5A28(v48, type metadata accessor for SnippetModelResponse);
    v52 = sub_3F08(v49, v51, &v69);

    *(v46 + 4) = v52;
    *(v46 + 12) = 2082;
    v53 = sub_2CCCA0();
    v55 = sub_3F08(v53, v54, &v69);

    *(v46 + 14) = v55;
    v11 = v60;
    _os_log_impl(&dword_0, v43, v44, "PlayMediaIOSSnippetModelProvider#buildMediaPlayerSnippetModel returning response: %s, %{public}s", v46, 0x16u);
    swift_arrayDestroy();

    (*(v68 + 8))(v57, v58);
  }

  else
  {

    sub_2C5A28(v42, type metadata accessor for SnippetModelResponse);
    (*(v41 + 8))(v15, v12);
  }

  sub_2C59C0(v23, v11, type metadata accessor for SnippetModelResponse);
  (*(v64 + 56))(v11, 0, 1, v16);
  swift_storeEnumTagMultiPayload();
  v66(v11);
  sub_30B8(v11, &qword_34EE00, &qword_2D8ED0);
  sub_2C5A28(v23, type metadata accessor for SnippetModelResponse);
  sub_30B8(v63, &unk_3530C0, &unk_2D0A40);
  return sub_30B8(v62, &unk_3530C0, &unk_2D0A40);
}

uint64_t sub_2C01D4()
{
  v1 = sub_2CE000();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v43 - v7;
  v9 = sub_2CCF90();
  v11 = v10;
  v12 = sub_2CBE40();
  if (!v11)
  {

    goto LABEL_9;
  }

  if (v9 == v12 && v11 == v13)
  {

    goto LABEL_7;
  }

  v14 = sub_2CEEA0();

  if ((v14 & 1) == 0)
  {
LABEL_9:
    v18 = sub_2C32E4();
    v20 = v19;
    if (v18 == sub_2CBE10() && v20 == v21)
    {

      goto LABEL_13;
    }

    v22 = v18;
    v23 = sub_2CEEA0();

    if (v23)
    {
LABEL_13:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v24 = sub_3ED0(v1, static Logger.default);
      swift_beginAccess();
      (*(v2 + 16))(v8, v24, v1);
      v25 = sub_2CDFE0();
      v26 = sub_2CE670();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43 = v28;
        *v27 = 136446210;
        v29 = sub_2CCCA0();
        v31 = sub_3F08(v29, v30, &v43);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_0, v25, v26, "PlayMediaIOSSnippetModelProvider#getBundleIdForSnippet returning MediaRemote system media application identifier for apple music. %{public}s", v27, 0xCu);
        sub_306C(v28);
      }

      result = (*(v2 + 8))(v8, v1);
      v32 = kMRMediaRemoteSystemMediaApplicationDisplayIdentifier;
      if (!kMRMediaRemoteSystemMediaApplicationDisplayIdentifier)
      {
        __break(1u);
        return result;
      }

      goto LABEL_18;
    }

    if (v18 == sub_2CBE30() && v20 == v34)
    {
    }

    else
    {
      v35 = sub_2CEEA0();

      if ((v35 & 1) == 0)
      {
        return v22;
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v36 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    (*(v2 + 16))(v6, v36, v1);
    v37 = sub_2CDFE0();
    v38 = sub_2CE670();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = v22;
      *v39 = 136446210;
      v40 = sub_2CCCA0();
      v42 = sub_3F08(v40, v41, &v43);

      *(v39 + 4) = v42;
      _os_log_impl(&dword_0, v37, v38, "PlayMediaIOSSnippetModelProvider#getBundleIdForSnippet returning MediaRemote system podcast application identifier for apple podcast. %{public}s", v39, 0xCu);
      sub_306C(v22);
    }

    (*(v2 + 8))(v6, v1);
    v32 = kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier;
    if (kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier)
    {
LABEL_18:
      v33 = v32;

      return sub_2CE290(v33);
    }

    __break(1u);
    return v22;
  }

LABEL_7:
  v15 = v0[22];
  sub_35E0(v0 + 18, v0[21]);
  result = sub_2CC520();
  if (!v17)
  {
    return sub_2CBDE0();
  }

  return result;
}

uint64_t sub_2C0700@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v72 = a1;
  v75 = a2;
  v2 = sub_20410(&qword_357568, &unk_2D9788);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v74 = &v64 - v4;
  v5 = sub_2CD240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v68 = &v64 - v17;
  __chkstk_darwin(v16);
  v19 = &v64 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v21 = v11[2];
  v70 = v11 + 2;
  v71 = v20;
  v69 = v21;
  v21(v19, v20, v10);
  v22 = sub_2CDFE0();
  v23 = sub_2CE670();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v66 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v67 = v10;
    v27 = v26;
    v76 = v26;
    *v25 = 136446210;
    v28 = sub_2CCCA0();
    v65 = v15;
    v30 = sub_3F08(v28, v29, &v76);
    v15 = v65;

    *(v25 + 4) = v30;
    _os_log_impl(&dword_0, v22, v23, "PlayMediaIOSSnippetModelProvider#conversationSpace... %{public}s", v25, 0xCu);
    sub_306C(v27);
    v10 = v67;

    v11 = v66;
  }

  v31 = v11[1];
  v31(v19, v10);
  v32 = v74;
  sub_2C0DFC(v72, v74);
  if ((*(v6 + 48))(v32, 1, v5) == 1)
  {
    sub_30B8(v32, &qword_357568, &unk_2D9788);
    v69(v15, v71, v10);
    v33 = sub_2CDFE0();
    v34 = sub_2CE670();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v15;
      v37 = v10;
      v38 = swift_slowAlloc();
      v76 = v38;
      *v35 = 136446210;
      v39 = sub_2CCCA0();
      v41 = sub_3F08(v39, v40, &v76);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_0, v33, v34, "PlayMediaIOSSnippetModelProvider#conversationSpace returning no snippet. %{public}s", v35, 0xCu);
      sub_306C(v38);

      v31(v36, v37);
    }

    else
    {

      v31(v15, v10);
    }

    v58 = sub_2CD230();
    return (*(*(v58 - 8) + 56))(v75, 1, 1, v58);
  }

  else
  {
    v73 = v31;
    v44 = *(v6 + 32);
    v43 = v6 + 32;
    v42 = v44;
    v44(v9, v32, v5);
    v45 = v68;
    v69(v68, v71, v10);
    v46 = sub_2CDFE0();
    v47 = sub_2CE670();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v67 = v10;
      v50 = v49;
      v76 = v49;
      *v48 = 136446210;
      v51 = sub_2CCCA0();
      v74 = v43;
      v53 = v9;
      v54 = v5;
      v55 = sub_3F08(v51, v52, &v76);

      *(v48 + 4) = v55;
      v5 = v54;
      v9 = v53;
      _os_log_impl(&dword_0, v46, v47, "PlayMediaIOSSnippetModelProvider#conversationSpace returning a simple message snippet. %{public}s", v48, 0xCu);
      sub_306C(v50);

      v57 = v67;
      v56 = v68;
    }

    else
    {

      v56 = v45;
      v57 = v10;
    }

    v73(v56, v57);
    v60 = v75;
    v42(v75, v9, v5);
    v61 = enum case for SiriAudioSnippets.simpleText(_:);
    v62 = sub_2CD230();
    v63 = *(v62 - 8);
    (*(v63 + 104))(v60, v61, v62);
    return (*(v63 + 56))(v60, 0, 1, v62);
  }
}

uint64_t sub_2C0DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v75 = sub_20410(&qword_357568, &unk_2D9788);
  v3 = *(*(v75 - 8) + 64);
  v4 = __chkstk_darwin(v75);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v76 = &v72 - v7;
  __chkstk_darwin(v6);
  v78 = &v72 - v8;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v72 - v16;
  v18 = __chkstk_darwin(v15);
  v77 = &v72 - v19;
  __chkstk_darwin(v18);
  v21 = &v72 - v20;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v23 = v10[2];
  v80 = v10 + 2;
  v81 = v22;
  v79 = v23;
  v23(v21, v22, v9);
  v24 = sub_2CDFE0();
  v25 = sub_2CE670();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v73 = v9;
    v27 = v26;
    v28 = swift_slowAlloc();
    v84 = v28;
    *v27 = 136446210;
    v29 = sub_2CCCA0();
    v72 = a1;
    v31 = sub_3F08(v29, v30, &v84);
    a1 = v72;

    *(v27 + 4) = v31;
    _os_log_impl(&dword_0, v24, v25, "PlayMediaIOSSnippetModelProvider#simpleSnippetDialog... %{public}s", v27, 0xCu);
    sub_306C(v28);

    v9 = v73;
  }

  v32 = v10[1];
  v32(v21, v9);
  v33 = v82[22];
  sub_35E0(v82 + 18, v82[21]);
  if ((sub_2CC430() & 1) == 0)
  {
    v79(v14, v81, v9);
    v55 = sub_2CDFE0();
    v56 = sub_2CE670();
    if (!os_log_type_enabled(v55, v56))
    {

      v62 = v14;
LABEL_19:
      v32(v62, v9);
      v71 = sub_2CD240();
      return (*(*(v71 - 8) + 56))(v83, 1, 1, v71);
    }

    v17 = v14;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v84 = v58;
    *v57 = 136446210;
    v59 = sub_2CCCA0();
    v61 = sub_3F08(v59, v60, &v84);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_0, v55, v56, "PlayMediaIOSSnippetModelProvider#simpleSnippetDialog pym not enabled, returning nil for simple snippet dialog %{public}s", v57, 0xCu);
    sub_306C(v58);

LABEL_18:
    v62 = v17;
    goto LABEL_19;
  }

  v34 = (a1 + *(type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext() + 20));
  if (!v34[1])
  {
    v79(v17, v81, v9);
    v63 = sub_2CDFE0();
    v64 = sub_2CE670();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v84 = v66;
      *v65 = 136446210;
      v67 = sub_2CCCA0();
      v69 = sub_3F08(v67, v68, &v84);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_0, v63, v64, "PlayMediaIOSSnippetModelProvider#simpleSnippetDialog there are no text for conversation snippet. %{public}s", v65, 0xCu);
      sub_306C(v66);
    }

    goto LABEL_18;
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = v78;
  sub_2CD250();
  v38 = v77;
  v79(v77, v81, v9);
  v39 = v76;
  sub_F3F4(v37, v76, &qword_357568, &unk_2D9788);
  v40 = sub_2CDFE0();
  v41 = sub_2CE670();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v42 = 136315394;
    v82 = v10;
    sub_F3F4(v39, v74, &qword_357568, &unk_2D9788);
    v43 = sub_2CE2A0();
    v44 = v39;
    v45 = v43;
    v46 = v9;
    v48 = v47;
    sub_30B8(v44, &qword_357568, &unk_2D9788);
    v49 = sub_3F08(v45, v48, &v84);

    *(v42 + 4) = v49;
    *(v42 + 12) = 2082;
    v50 = sub_2CCCA0();
    v52 = sub_3F08(v50, v51, &v84);

    *(v42 + 14) = v52;
    _os_log_impl(&dword_0, v40, v41, "PlayMediaIOSSnippetModelProvider#simpleSnippetDialog returning model:  %s %{public}s", v42, 0x16u);
    swift_arrayDestroy();

    v53 = v77;
    v54 = v46;
  }

  else
  {

    sub_30B8(v39, &qword_357568, &unk_2D9788);
    v53 = v38;
    v54 = v9;
  }

  v32(v53, v54);
  return sub_14A58(v78, v83, &qword_357568, &unk_2D9788);
}

uint64_t sub_2C15E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a4;
  v71 = a5;
  v78 = a2;
  v79 = a3;
  v82 = a6;
  v7 = sub_20410(&qword_352960, &qword_2D5110);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v68 - v9;
  v81 = sub_2CD290();
  v11 = *(v81 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v81);
  v72 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v68 - v16;
  __chkstk_darwin(v15);
  v85 = &v68 - v18;
  v19 = sub_20410(&qword_352968, &qword_2D9780);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v77 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v84 = &v68 - v23;
  v86 = sub_2CE000();
  v24 = *(v86 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v86);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v68 - v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = v86;
  v32 = sub_3ED0(v86, static Logger.default);
  swift_beginAccess();
  v33 = v24[2];
  v74 = v24 + 2;
  v75 = v32;
  v73 = v33;
  v33(v30, v32, v31);
  v34 = sub_2CDFE0();
  v35 = sub_2CE670();
  v36 = os_log_type_enabled(v34, v35);
  v83 = v24;
  v80 = v28;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69 = v11;
    v39 = v38;
    v87 = v38;
    *v37 = 136446210;
    v40 = sub_2CCCA0();
    v68 = v10;
    v42 = sub_3F08(v40, v41, &v87);
    v43 = v86;
    v10 = v68;

    *(v37 + 4) = v42;
    _os_log_impl(&dword_0, v34, v35, "PlayMediaIOSSnippetModelProvider#snippetSpace building snippet model response... %{public}s", v37, 0xCu);
    sub_306C(v39);
    v11 = v69;

    v28 = v80;

    v76 = v83[1];
    v76(v30, v43);
  }

  else
  {

    v76 = v24[1];
    v76(v30, v86);
  }

  v44 = sub_2C566C(v78, v79);
  v45 = v84;
  if (v44)
  {

    sub_2CD340();
    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = sub_2CD350();
  (*(*(v47 - 8) + 56))(v45, v46, 1, v47);
  sub_F3F4(v45, v77, &qword_352968, &qword_2D9780);
  sub_F3F4(a1, v10, &qword_352960, &qword_2D5110);
  v48 = v85;
  sub_2CD280();
  v73(v28, v75, v86);
  v49 = *(v11 + 16);
  v50 = v81;
  v49(v17, v48, v81);
  v51 = v11;
  v52 = sub_2CDFE0();
  v53 = sub_2CE670();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v54 = 136315394;
    v49(v72, v17, v50);
    v55 = sub_2CE2A0();
    v57 = v56;
    (*(v51 + 8))(v17, v50);
    v58 = sub_3F08(v55, v57, &v87);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2082;
    v59 = sub_2CCCA0();
    v61 = sub_3F08(v59, v60, &v87);

    *(v54 + 14) = v61;
    _os_log_impl(&dword_0, v52, v53, "PlayMediaIOSSnippetModelProvider#snippetSpace building mediaPlayer snippet with model:  %s %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    v76(v80, v86);
    v62 = v84;
  }

  else
  {

    (*(v51 + 8))(v17, v50);
    v76(v28, v86);
    v62 = v45;
  }

  sub_30B8(v62, &qword_352968, &qword_2D9780);
  v63 = v82;
  (*(v51 + 32))(v82, v85, v50);
  v64 = enum case for SiriAudioSnippets.mediaPlayer(_:);
  v65 = sub_2CD230();
  v66 = *(v65 - 8);
  (*(v66 + 104))(v63, v64, v65);
  return (*(v66 + 56))(v63, 0, 1, v65);
}

uint64_t sub_2C1DB0@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a3;
  v70 = a1;
  v71 = a4;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v66 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v66 - v17;
  __chkstk_darwin(v16);
  v20 = &v66 - v19;
  v21 = sub_1D2364(&off_330F60);
  sub_F1954(&_s11descr32D959OMF.Kind);
  if ((v21 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a2, &off_330F90))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    v23 = v8;
    (*(v8 + 16))(v12, v22, v7);
    v24 = sub_2CDFE0();
    v25 = sub_2CE670();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v72 = v27;
      *v26 = 136446210;
      v28 = sub_2CCCA0();
      v30 = sub_3F08(v28, v29, &v72);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v24, v25, "PlayMediaIOSSnippetModelProvider#alternativeSnippetModel won't build alternatives for story telling. %{public}s", v26, 0xCu);
      sub_306C(v27);
    }

    (*(v23 + 8))(v12, v7);
LABEL_8:
    v31 = sub_2CD270();
    return (*(*(v31 - 8) + 56))(v71, 1, 1, v31);
  }

  v33 = [a2 hashedRouteUIDs];
  if (v33)
  {
    v34 = v33;
    v35 = sub_2CE410();

    v36 = *(v35 + 16);

    if (v36)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v37 = sub_3ED0(v7, static Logger.default);
      swift_beginAccess();
      (*(v8 + 16))(v15, v37, v7);
      v38 = sub_2CDFE0();
      v39 = sub_2CE670();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v72 = v41;
        *v40 = 136446210;
        v42 = sub_2CCCA0();
        v44 = sub_3F08(v42, v43, &v72);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_0, v38, v39, "PlayMediaIOSSnippetModelProvider#alternativeSnippetModel won't build alternatives for whole house audio requests. hashedRouteUIDs present.  %{public}s", v40, 0xCu);
        sub_306C(v41);
      }

      (*(v8 + 8))(v15, v7);
      goto LABEL_8;
    }
  }

  v45 = [a2 mediaItems];
  if (!v45)
  {
LABEL_26:
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v58 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v8 + 16))(v18, v58, v7);
    v59 = sub_2CDFE0();
    v60 = sub_2CE670();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v72 = v62;
      *v61 = 136446210;
      v63 = sub_2CCCA0();
      v65 = sub_3F08(v63, v64, &v72);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_0, v59, v60, "PlayMediaIOSSnippetModelProvider#alternativeSnippetModel won't return an AceView because nil or empty mediaItems.  %{public}s", v61, 0xCu);
      sub_306C(v62);
    }

    (*(v8 + 8))(v18, v7);
    goto LABEL_8;
  }

  v46 = v45;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v47 = sub_2CE410();

  if (v47 >> 62)
  {
    if (sub_2CEDA0())
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (!*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_19:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v48 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v49 = v8;
  (*(v8 + 16))(v20, v48, v7);
  v50 = sub_2CDFE0();
  v51 = sub_2CE670();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v67 = v52;
    v68 = swift_slowAlloc();
    v72 = v68;
    *v52 = 136446210;
    v53 = sub_2CCCA0();
    v55 = sub_3F08(v53, v54, &v72);

    v56 = v67;
    *(v67 + 1) = v55;
    _os_log_impl(&dword_0, v50, v51, "PlayMediaIOSSnippetModelProvider#alternativeSnippetModel building alternative section...  %{public}s", v56, 0xCu);
    sub_306C(v68);
  }

  (*(v49 + 8))(v20, v7);
  v57 = *sub_35E0((v5 + 16), *(v5 + 40));
  sub_220BC4(v47, v70, a2, v69 & 1, v71);
}

uint64_t sub_2C259C()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  v1 = v0[17];

  sub_306C(v0 + 18);
  sub_306C(v0 + 23);
  sub_306C(v0 + 28);

  return swift_deallocClassInstance();
}

uint64_t sub_2C2680(void *a1, void *a2)
{
  v104 = a2;
  v109 = a1;
  v2 = sub_2CB260();
  v3 = *(v2 - 8);
  v113 = v2;
  v114 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v105 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_357560, &qword_2D9778);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v97 - v8;
  v10 = sub_20410(&qword_34C6B0, &qword_2D0700);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v108 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v97 - v15;
  __chkstk_darwin(v14);
  v18 = &v97 - v17;
  v19 = sub_2CE000();
  v115 = *(v19 - 8);
  v116 = v19;
  v20 = v115[8];
  v21 = __chkstk_darwin(v19);
  v107 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v106 = &v97 - v24;
  v25 = __chkstk_darwin(v23);
  v103 = &v97 - v26;
  v27 = __chkstk_darwin(v25);
  v102 = &v97 - v28;
  v29 = __chkstk_darwin(v27);
  v101 = &v97 - v30;
  __chkstk_darwin(v29);
  v32 = &v97 - v31;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = v116;
  v34 = sub_3ED0(v116, static Logger.default);
  swift_beginAccess();
  v35 = v115[2];
  v111 = v115 + 2;
  v112 = v34;
  v110 = v35;
  v35(v32, v34, v33);
  v36 = sub_2CDFE0();
  v37 = sub_2CE670();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v118 = v39;
    *v38 = 136446210;
    v40 = sub_2CCCA0();
    v100 = v9;
    v98 = v6;
    v41 = v18;
    v99 = v16;
    v43 = sub_3F08(v40, v42, &v118);
    v44 = v115;
    v45 = v116;
    v9 = v100;

    *(v38 + 4) = v43;
    _os_log_impl(&dword_0, v36, v37, "PlayMediaSnippetModelProvider#shouldRenderSnippets... %{public}s", v38, 0xCu);
    sub_306C(v39);

    v46 = v44;
    v18 = v41;
    v6 = v98;
    v47 = v46[1];
    v48 = v45;
    v16 = v99;
    v47(v32, v48);
  }

  else
  {

    v47 = v115[1];
    v47(v32, v116);
  }

  if (sub_2CB460())
  {
    sub_2CB130();

    sub_2CD3C0();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = v113;
  v51 = v114;
  v52 = *(v114 + 56);
  v52(v18, v49, 1, v113);
  sub_2CB250();
  v52(v16, 0, 1, v50);
  v53 = *(v6 + 48);
  sub_F3F4(v18, v9, &qword_34C6B0, &qword_2D0700);
  sub_F3F4(v16, &v9[v53], &qword_34C6B0, &qword_2D0700);
  v54 = *(v51 + 48);
  if (v54(v9, 1, v50) == 1)
  {
    sub_30B8(v16, &qword_34C6B0, &qword_2D0700);
    sub_30B8(v18, &qword_34C6B0, &qword_2D0700);
    if (v54(&v9[v53], 1, v50) == 1)
    {
      sub_30B8(v9, &qword_34C6B0, &qword_2D0700);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  v100 = v18;
  v55 = v108;
  sub_F3F4(v9, v108, &qword_34C6B0, &qword_2D0700);
  if (v54(&v9[v53], 1, v50) == 1)
  {
    sub_30B8(v16, &qword_34C6B0, &qword_2D0700);
    sub_30B8(v100, &qword_34C6B0, &qword_2D0700);
    (*(v114 + 8))(v55, v50);
LABEL_14:
    sub_30B8(v9, &qword_357560, &qword_2D9778);
    goto LABEL_15;
  }

  v73 = v114;
  v74 = &v9[v53];
  v75 = v105;
  (*(v114 + 32))(v105, v74, v50);
  sub_2C525C();
  v76 = v55;
  v77 = sub_2CE250();
  v78 = *(v73 + 8);
  v78(v75, v50);
  sub_30B8(v16, &qword_34C6B0, &qword_2D0700);
  sub_30B8(v100, &qword_34C6B0, &qword_2D0700);
  v78(v76, v50);
  sub_30B8(v9, &qword_34C6B0, &qword_2D0700);
  if (v77)
  {
LABEL_28:
    v61 = v107;
    v110(v107, v112, v116);
    v62 = sub_2CDFE0();
    v63 = sub_2CE670();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v118 = v65;
      *v64 = 136446210;
      v79 = sub_2CCCA0();
      v81 = sub_3F08(v79, v80, &v118);

      *(v64 + 4) = v81;
      v69 = "PlayMediaIOSSnippetModelProvider#shouldRenderSnippets returning false for voice only response mode. %{public}s";
      goto LABEL_32;
    }

LABEL_33:

    v85 = v61;
LABEL_34:
    v47(v85, v116);
    return 0;
  }

LABEL_15:
  v56 = v109;
  if (!sub_2CE810())
  {
    v61 = v106;
    v110(v106, v112, v116);
    v62 = sub_2CDFE0();
    v63 = sub_2CE670();
    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_33;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v118 = v65;
    *v64 = 136446210;
    v70 = sub_2CCCA0();
    v72 = sub_3F08(v70, v71, &v118);

    *(v64 + 4) = v72;
    v69 = "PlayMediaIOSSnippetModelProvider#shouldRenderSnippets won't return snippets because no view actions on next/later destinations (or create radio). %{public}s";
    goto LABEL_32;
  }

  v57 = [v56 mediaItems];
  if (!v57 || ((v58 = v57, sub_334A0(0, &qword_356F50, INMediaItem_ptr), v59 = sub_2CE410(), v58, v59 >> 62) ? (v60 = sub_2CEDA0()) : (v60 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8))), , !v60))
  {
    v61 = v103;
    v110(v103, v112, v116);
    v62 = sub_2CDFE0();
    v63 = sub_2CE680();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v118 = v65;
      *v64 = 136446210;
      v82 = sub_2CCCA0();
      v84 = sub_3F08(v82, v83, &v118);

      *(v64 + 4) = v84;
      v69 = "PlayMediaIOSSnippetModelProvider#shouldRenderSnippets won't return snippets because nil or empty mediaItems. %{public}s";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if ([v104 code] != &dword_4 && objc_msgSend(v104, "code") != &dword_0 + 1)
  {
    v110(v102, v112, v116);
    v87 = v104;
    v88 = sub_2CDFE0();
    v89 = sub_2CE670();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v90 = 136446466;
      v117 = [v87 code];
      v91 = sub_2CEE70();
      v93 = sub_3F08(v91, v92, &v118);

      *(v90 + 4) = v93;
      *(v90 + 12) = 2082;
      v94 = sub_2CCCA0();
      v96 = sub_3F08(v94, v95, &v118);

      *(v90 + 14) = v96;
      _os_log_impl(&dword_0, v88, v89, "PlayMediaIOSSnippetModelProvider#shouldRenderSnippets won't return snippets because non-success code: %{public}s. %{public}s", v90, 0x16u);
      swift_arrayDestroy();
    }

    v85 = v102;
    goto LABEL_34;
  }

  if (sub_2CB640())
  {
    v61 = v101;
    v110(v101, v112, v116);
    v62 = sub_2CDFE0();
    v63 = sub_2CE670();
    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_33;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v118 = v65;
    *v64 = 136446210;
    v66 = sub_2CCCA0();
    v68 = sub_3F08(v66, v67, &v118);

    *(v64 + 4) = v68;
    v69 = "PlayMediaIOSSnippetModelProvider#shouldRenderSnippets won't create snippets for CarPlay. %{public}s";
LABEL_32:
    _os_log_impl(&dword_0, v62, v63, v69, v64, 0xCu);
    sub_306C(v65);

    goto LABEL_33;
  }

  return 1;
}

uint64_t sub_2C32E4()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2CE860())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v5 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v4, v5, v0);
    v6 = sub_2CDFE0();
    v7 = sub_2CE670();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      v10 = sub_2CCCA0();
      v12 = sub_3F08(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v6, v7, "PlayMediaIOSSnippetModelProvider#bundleIdentifier fallbackImplicitRecommendation scenario, override bundleIdentifier with fallback: BundleIdentifiers.music. %{public}s", v8, 0xCu);
      sub_306C(v9);
    }

    (*(v1 + 8))(v4, v0);
    return sub_2CBE10();
  }

  else
  {
    result = sub_2CCF90();
    if (!v14)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2C3520()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CCF90();
  v7 = v6;
  v8 = sub_2CBE10();
  if (v7)
  {
    if (v5 == v8 && v7 == v9)
    {
      goto LABEL_10;
    }

    v10 = sub_2CEEA0();

    if (v10)
    {
      v11 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v12 = sub_2C32E4();
  v14 = v13;
  if (v12 != sub_2CBE30() || v14 != v15)
  {
    v11 = sub_2CEEA0();

    goto LABEL_12;
  }

LABEL_10:

  v11 = 1;
LABEL_12:

LABEL_13:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v4, v16, v0);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 67109378;
    *(v19 + 4) = v11 & 1;
    *(v19 + 8) = 2082;
    v21 = sub_2CCCA0();
    v23 = sub_3F08(v21, v22, &v25);

    *(v19 + 10) = v23;
    _os_log_impl(&dword_0, v17, v18, "PlayMediaIOSSnippetModelProvider#ShouldStartPlayOnSetQueueForMusicOrPodcast isMusicOrPodcastApp: %{BOOL}d. %{public}s", v19, 0x12u);
    sub_306C(v20);
  }

  (*(v1 + 8))(v4, v0);
  return v11 & 1;
}

uint64_t sub_2C3828(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v98 = a4;
  v89 = a2;
  v94 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  v10 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v95 = &v87 - v11;
  v12 = sub_20410(&qword_34C6B0, &qword_2D0700);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v90 = &v87 - v20;
  __chkstk_darwin(v19);
  v22 = &v87 - v21;
  v23 = swift_allocObject();
  v96 = a6;
  v97 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v24 = qword_34BF58;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v92 = *(v15 + 16);
  v93 = v25;
  v92(v22, v25, v14);
  v26 = a1;
  v27 = sub_2CDFE0();
  v28 = sub_2CE670();
  v99 = v14;
  v29 = v28;

  if (os_log_type_enabled(v27, v29))
  {
    v30 = swift_slowAlloc();
    v88 = a3;
    v31 = v30;
    v32 = swift_slowAlloc();
    v87 = v15;
    v101 = v32;
    *v31 = 136446722;
    sub_2CB580();
    v33 = sub_2CE2A0();
    v35 = sub_3F08(v33, v34, &v101);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    ObjectType = swift_getObjectType();
    sub_20410(&qword_3568B0, &unk_2D8DC0);
    v36 = sub_2CE2A0();
    v38 = sub_3F08(v36, v37, &v101);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2082;
    v39 = sub_2CCCA0();
    v41 = sub_3F08(v39, v40, &v101);

    *(v31 + 24) = v41;
    _os_log_impl(&dword_0, v27, v29, "PlayMediaIOSSnippetModelProvider#intentPreHandledSnippet response mode: %{public}s for Intent: %{public}s, %{public}s", v31, 0x20u);
    swift_arrayDestroy();

    a3 = v88;

    v42 = v87;
  }

  else
  {

    v42 = v15;
  }

  v43 = *(v42 + 8);
  v44 = v99;
  v43(v22, v99);
  if ((sub_2C2680(v26, a3) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (sub_2C3520())
  {
    v45 = v90;
    v92(v90, v93, v44);
    v46 = sub_2CDFE0();
    v47 = sub_2CE670();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v101 = v49;
      *v48 = 136446210;
      v50 = sub_2CCCA0();
      v52 = sub_3F08(v50, v51, &v101);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_0, v46, v47, "PlayMediaIOSSnippetModelProvider#intentPreHandledSnippet returning no snippet model for Intent Handled, %{public}s", v48, 0xCu);
      sub_306C(v49);

      v53 = v90;
    }

    else
    {

      v53 = v45;
    }

    v43(v53, v44);
LABEL_14:
    v64 = type metadata accessor for SnippetModelResponse();
    v65 = v95;
    (*(*(v64 - 8) + 56))(v95, 1, 1, v64);
    swift_storeEnumTagMultiPayload();
    v97(v65);
    sub_30B8(v65, &qword_34EE00, &qword_2D8ED0);
  }

  v97 = v26;
  v54 = v91;
  v92(v91, v93, v44);
  v55 = sub_2CDFE0();
  v56 = sub_2CE670();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v101 = v58;
    *v57 = 136446210;
    v59 = sub_2CCCA0();
    v61 = sub_3F08(v59, v60, &v101);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_0, v55, v56, "PlayMediaIOSSnippetModelProvider#createMediaPlayerSnippetModel intent is ready to create snippets, %{public}s", v57, 0xCu);
    sub_306C(v58);

    v62 = v91;
    v63 = v99;
  }

  else
  {

    v62 = v54;
    v63 = v44;
  }

  v43(v62, v63);
  v66 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext();
  v67 = swift_allocBox();
  v69 = v68;
  v70 = sub_2CD270();
  (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
  v71 = (v69 + v66[5]);
  *v71 = 0;
  v71[1] = 0;
  v72 = v66[6];
  v73 = sub_2CC380();
  (*(*(v73 - 8) + 56))(v69 + v72, 1, 1, v73);
  v74 = (v69 + v66[7]);
  *v74 = 0;
  v74[1] = 0;
  if (qword_34C138 != -1)
  {
    swift_once();
  }

  sub_20410(&qword_34F2A8, &qword_2D4990);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_2D0E40;
  v76 = swift_allocObject();
  v77 = v89;
  *(v76 + 16) = v89;
  *(v76 + 24) = 1;
  v78 = v97;
  v79 = v98;
  *(v76 + 32) = v98;
  *(v76 + 40) = v78;
  *(v76 + 48) = a3;
  *(v76 + 56) = v67;
  *(v75 + 32) = sub_2C5C48;
  *(v75 + 40) = v76;
  v80 = swift_allocObject();
  v80[2] = v77;
  v80[3] = v78;
  v80[4] = v67;
  *(v75 + 48) = sub_2C5C3C;
  *(v75 + 56) = v80;
  v81 = swift_allocObject();
  v81[2] = v67;
  v81[3] = v77;
  v81[4] = v79;
  v81[5] = v78;
  v81[6] = sub_2C5C4C;
  v81[7] = v23;
  v82 = v78;
  swift_retain_n();
  swift_retain_n();
  v83 = v82;
  swift_retain_n();
  v84 = v83;
  v85 = a3;

  sub_2CCC70();
}

uint64_t sub_2C4148(uint64_t a1, void *a2, void *a3, void (*a4)(char *), void (*a5)(char *))
{
  v30 = a3;
  v29 = a1;
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  v28 = a2;
  v32 = a2;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (sub_2CC140())
  {
    v19 = type metadata accessor for SnippetModelResponse();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    swift_storeEnumTagMultiPayload();
    a4(v18);
    return sub_30B8(v18, &qword_34EE00, &qword_2D8ED0);
  }

  else
  {
    v27 = a5;
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v21 = qword_35F760;
    sub_2CDFB0();
    (*(v9 + 16))(v12, v14, v8);
    v22 = (*(v9 + 80) + 33) & ~*(v9 + 80);
    v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = "playMediaSnippetModelProviderMakeIntentPreHandledSnippet";
    *(v24 + 24) = 56;
    *(v24 + 32) = 2;
    (*(v9 + 32))(v24 + v22, v12, v8);
    v25 = (v24 + v23);
    v26 = v27;
    *v25 = a4;
    v25[1] = v26;

    sub_2CE9E0();
    sub_2CDF90();

    sub_2C3828(v28, v31, v30, v29, sub_2C5C44, v24);

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_2C44C0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v98 = a4;
  v89 = a2;
  v94 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  v10 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v95 = &v87 - v11;
  v12 = sub_20410(&qword_34C6B0, &qword_2D0700);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v90 = &v87 - v20;
  __chkstk_darwin(v19);
  v22 = &v87 - v21;
  v23 = swift_allocObject();
  v96 = a6;
  v97 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v24 = qword_34BF58;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v92 = *(v15 + 16);
  v93 = v25;
  v92(v22, v25, v14);
  v26 = a1;
  v27 = sub_2CDFE0();
  v28 = sub_2CE670();
  v99 = v14;
  v29 = v28;

  if (os_log_type_enabled(v27, v29))
  {
    v30 = swift_slowAlloc();
    v88 = a3;
    v31 = v30;
    v32 = swift_slowAlloc();
    v87 = v15;
    v101 = v32;
    *v31 = 136446722;
    sub_2CB580();
    v33 = sub_2CE2A0();
    v35 = sub_3F08(v33, v34, &v101);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    ObjectType = swift_getObjectType();
    sub_20410(&qword_3568B0, &unk_2D8DC0);
    v36 = sub_2CE2A0();
    v38 = sub_3F08(v36, v37, &v101);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2082;
    v39 = sub_2CCCA0();
    v41 = sub_3F08(v39, v40, &v101);

    *(v31 + 24) = v41;
    _os_log_impl(&dword_0, v27, v29, "PlayMediaIOSSnippetModelProvider#intentHandledSnippet response mode: %{public}s for Intent: %{public}s, %{public}s", v31, 0x20u);
    swift_arrayDestroy();

    a3 = v88;

    v42 = v87;
  }

  else
  {

    v42 = v15;
  }

  v43 = *(v42 + 8);
  v44 = v99;
  v43(v22, v99);
  if ((sub_2C2680(v26, a3) & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((sub_2C3520() & 1) == 0)
  {
    v55 = v91;
    v92(v91, v93, v44);
    v56 = sub_2CDFE0();
    v57 = sub_2CE670();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v101 = v59;
      *v58 = 136446210;
      v60 = sub_2CCCA0();
      v62 = sub_3F08(v60, v61, &v101);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_0, v56, v57, "PlayMediaIOSSnippetModelProvider#intentHandledSnippet returning no snippet model for Intent Handled, %{public}s", v58, 0xCu);
      sub_306C(v59);

      v63 = v91;
    }

    else
    {

      v63 = v55;
    }

    v43(v63, v44);
LABEL_18:
    v84 = type metadata accessor for SnippetModelResponse();
    v85 = v95;
    (*(*(v84 - 8) + 56))(v95, 1, 1, v84);
    swift_storeEnumTagMultiPayload();
    v97(v85);
    sub_30B8(v85, &qword_34EE00, &qword_2D8ED0);
  }

  v97 = v26;
  v45 = v90;
  v92(v90, v93, v44);
  v46 = sub_2CDFE0();
  v47 = sub_2CE670();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v101 = v49;
    *v48 = 136446210;
    v50 = sub_2CCCA0();
    v52 = sub_3F08(v50, v51, &v101);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_0, v46, v47, "PlayMediaIOSSnippetModelProvider#createMediaPlayerSnippetModel intent is ready to create snippets, %{public}s", v48, 0xCu);
    sub_306C(v49);

    v53 = v90;
    v54 = v99;
  }

  else
  {

    v53 = v45;
    v54 = v44;
  }

  v43(v53, v54);
  v64 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext();
  v65 = swift_allocBox();
  v67 = v66;
  v68 = sub_2CD270();
  (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
  v69 = (v67 + v64[5]);
  *v69 = 0;
  v69[1] = 0;
  v70 = v64[6];
  v71 = sub_2CC380();
  (*(*(v71 - 8) + 56))(v67 + v70, 1, 1, v71);
  v72 = (v67 + v64[7]);
  *v72 = 0;
  v72[1] = 0;
  if (qword_34C138 != -1)
  {
    swift_once();
  }

  sub_20410(&qword_34F2A8, &qword_2D4990);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_2D0E40;
  v74 = swift_allocObject();
  v75 = v89;
  *(v74 + 16) = v89;
  *(v74 + 24) = 0;
  v76 = v97;
  v77 = v98;
  *(v74 + 32) = v98;
  *(v74 + 40) = v76;
  *(v74 + 48) = a3;
  *(v74 + 56) = v65;
  *(v73 + 32) = sub_2C51A4;
  *(v73 + 40) = v74;
  v78 = swift_allocObject();
  v78[2] = v75;
  v78[3] = v76;
  v78[4] = v65;
  *(v73 + 48) = sub_2C51A8;
  *(v73 + 56) = v78;
  v79 = swift_allocObject();
  v79[2] = v65;
  v79[3] = v75;
  v79[4] = v77;
  v79[5] = v76;
  v79[6] = sub_13D8C;
  v79[7] = v23;
  v80 = v76;
  swift_retain_n();
  swift_retain_n();
  v81 = v80;
  swift_retain_n();
  v82 = v81;
  v83 = a3;

  sub_2CCC70();
}

uint64_t sub_2C4DDC(uint64_t a1, void *a2, void *a3, void (*a4)(char *), void (*a5)(char *))
{
  v30 = a3;
  v29 = a1;
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  v28 = a2;
  v32 = a2;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (sub_2CC140())
  {
    v19 = type metadata accessor for SnippetModelResponse();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    swift_storeEnumTagMultiPayload();
    a4(v18);
    return sub_30B8(v18, &qword_34EE00, &qword_2D8ED0);
  }

  else
  {
    v27 = a5;
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v21 = qword_35F760;
    sub_2CDFB0();
    (*(v9 + 16))(v12, v14, v8);
    v22 = (*(v9 + 80) + 33) & ~*(v9 + 80);
    v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = "playMediaSnippetModelProviderMakeIntentHandledSnippet";
    *(v24 + 24) = 53;
    *(v24 + 32) = 2;
    (*(v9 + 32))(v24 + v22, v12, v8);
    v25 = (v24 + v23);
    v26 = v27;
    *v25 = a4;
    v25[1] = v26;

    sub_2CE9E0();
    sub_2CDF90();

    sub_2C44C0(v28, v31, v30, v29, sub_2C5154, v24);

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext()
{
  result = qword_3575D0;
  if (!qword_3575D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2C51B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_352960, &qword_2D5110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C5228()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2C525C()
{
  result = qword_352890;
  if (!qword_352890)
  {
    sub_2CB260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_352890);
  }

  return result;
}

uint64_t sub_2C52B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_2C5320()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_2C5368()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_2C53D0()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CB440();
  if (sub_2CB460())
  {
    sub_2CB130();

    v6 = sub_2CD3B0();
  }

  else
  {
    v6 = 0;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v4, v7, v0);
  v8 = sub_2CDFE0();
  v9 = sub_2CE670();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 67109634;
    *(v10 + 4) = v5 & 1;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v6 & 1;
    *(v10 + 14) = 2082;
    v12 = sub_2CCCA0();
    v17 = v0;
    v14 = sub_3F08(v12, v13, &v18);

    *(v10 + 16) = v14;
    _os_log_impl(&dword_0, v8, v9, "PlayMediaIOSSnippetModelProvider#isSystemApertureEnabledOrIsInAmbient isSystemApertureEnabled = %{BOOL}d, isInAmbient = %{BOOL}d %{public}s", v10, 0x18u);
    sub_306C(v11);

    (*(v1 + 8))(v4, v17);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return (v5 | v6) & 1;
}

uint64_t sub_2C566C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v10 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v8, v10, v4);
    v11 = sub_2CDFE0();
    v12 = sub_2CE670();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446210;
      v15 = sub_2CCCA0();
      v17 = sub_3F08(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "PlayMediaIOSSnippetModelProvider#showCreateMediaPlayer returning true, because there is a routeID. %{public}s", v13, 0xCu);
      sub_306C(v14);
    }

    (*(v5 + 8))(v8, v4);
    v18 = 1;
  }

  else
  {
    v18 = sub_2C53D0() ^ 1;
  }

  return v18 & 1;
}

uint64_t sub_2C58A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C5908(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  return sub_2BFBA8(a1, a2, v7, v8, v9, v2 + v6, v11, v12);
}

uint64_t sub_2C59C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2C5A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2C5A88(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = sub_7F0EC(a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v3(v4, v6);
}

void sub_2C5B0C()
{
  sub_2C5BE4(319, &qword_3575E0, &type metadata accessor for SiriAudioAlternativeSnippetModel);
  if (v0 <= 0x3F)
  {
    sub_BF320();
    if (v1 <= 0x3F)
    {
      sub_2C5BE4(319, &unk_3575E8, &type metadata accessor for SubscriptionDetails);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2C5BE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2C5C50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_32FC98;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

char *DetermineIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id DetermineIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetermineIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id NowPlayingIntentInfo.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id DetermineIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DetermineIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id DetermineIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2CE260();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DetermineIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2CE260();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DetermineIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id DetermineIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2CE260();

  v8 = sub_2CE260();

  if (a5)
  {
    v9.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id DetermineIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2CE260();

  v8 = sub_2CE260();

  if (a5)
  {
    v9.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for DetermineIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

unint64_t sub_2C6350@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2C6CD4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t DetermineIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DetermineIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id DetermineIntentResponse.init()()
{
  *&v0[OBJC_IVAR___DetermineIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetermineIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id DetermineIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DetermineIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DetermineIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id DetermineIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id DetermineIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___DetermineIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DetermineIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2C6758(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___DetermineIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DetermineIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id DetermineIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id DetermineIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DetermineIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DetermineIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_2C697C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2C6C9C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason:a1];

  return v1;
}

id DetermineNowPlayingIntentInfoResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_2CE1F0().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id DetermineNowPlayingIntentInfoResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2C6C64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_2C6C9C(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2C6CD4(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2C6D30()
{
  result = qword_357628;
  if (!qword_357628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_357628);
  }

  return result;
}

unint64_t sub_2C6D88()
{
  result = qword_357630;
  if (!qword_357630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_357630);
  }

  return result;
}

unint64_t sub_2C6E2C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2C712C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static QueueLocationResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue:a1];

  return v1;
}

id static QueueLocationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm:a1];

  return v1;
}

id RequestTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RequestTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id RequestTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestTypeResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2C712C(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2C7164()
{
  result = qword_3576B0;
  if (!qword_3576B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3576B0);
  }

  return result;
}

uint64_t QueueLocation.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2C71DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

id QueueLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for QueueLocationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id QueueLocationResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueueLocationResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2C7458()
{
  result = qword_3576E0;
  if (!qword_3576E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3576E0);
  }

  return result;
}

unint64_t WHAError.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2C74CC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id WHAErrorResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for WHAErrorResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id WHAErrorResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WHAErrorResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2C7744()
{
  result = qword_357710;
  if (!qword_357710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_357710);
  }

  return result;
}

id static NowPlayingIntentInfoResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___NowPlayingIntentInfoResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static NowPlayingIntentInfoResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2C7904();

    sub_2CED90();
  }

  else
  {

    sub_2CEEB0();
    sub_2C7904();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2C7904();
  isa = sub_2CE400().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___NowPlayingIntentInfoResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_2C7904()
{
  result = qword_357768;
  if (!qword_357768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_357768);
  }

  return result;
}

id static NowPlayingIntentInfoResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___NowPlayingIntentInfoResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id NowPlayingIntentInfo.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2CE260();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2CE260();

  if (a6)
  {
    v10 = sub_2CE260();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id NowPlayingIntentInfo.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2CE260();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2CE260();

  if (a6)
  {
    v10 = sub_2CE260();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for NowPlayingIntentInfo();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id NowPlayingIntentInfo.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NowPlayingIntentInfo();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id NowPlayingIntentInfoResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for NowPlayingIntentInfoResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2C81C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id WHADialogMetadata.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2CE260();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2CE260();

  if (a6)
  {
    v10 = sub_2CE260();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for WHADialogMetadata();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id WHADialogMetadata.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WHADialogMetadata();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static WHADialogMetadataResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WHADialogMetadataResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static WHADialogMetadataResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2C7904();

    sub_2CED90();
  }

  else
  {

    sub_2CEEB0();
    sub_2C7904();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2C7904();
  isa = sub_2CE400().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___WHADialogMetadataResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

id static WHADialogMetadataResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WHADialogMetadataResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id WHADialogMetadataResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_2CE1F0().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for WHADialogMetadataResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2C8AF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}