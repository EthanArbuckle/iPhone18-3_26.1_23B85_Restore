uint64_t sub_55948(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_55A48()
{
  result = qword_1C3160;
  if (!qword_1C3160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C3160);
  }

  return result;
}

uint64_t sub_55A94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_144B6C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_FD104(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_55B2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_55B9C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_55BEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_55C0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_55C90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_55CD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_55D54(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_144B6C();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_FD254(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_55DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1440BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_55EA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1440BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_55F6C()
{
  sub_56010();
  if (v0 <= 0x3F)
  {
    sub_560A4();
    if (v1 <= 0x3F)
    {
      sub_1440BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_56010()
{
  if (!qword_1C31E8)
  {
    sub_14157C();
    sub_56138(&qword_1C0E90, &type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    v0 = sub_142BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C31E8);
    }
  }
}

void sub_560A4()
{
  if (!qword_1C31F0)
  {
    sub_14427C();
    sub_56138(&qword_1C0E88, &type metadata accessor for QueueViewModel);
    v0 = sub_142BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C31F0);
    }
  }
}

uint64_t sub_56138(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_5619C()
{
  v0 = [objc_allocWithZone(AVTimeFormatter) init];
  result = [v0 setStyle:2];
  qword_1C3170 = v0;
  return result;
}

id sub_561EC()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:1];
  result = [v0 setAllowedUnits:96];
  qword_1C3178 = v0;
  return result;
}

uint64_t sub_56250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v82 = a2;
  v83 = type metadata accessor for ChapterText(0);
  __chkstk_darwin(v83);
  v78 = v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3230);
  __chkstk_darwin(v80);
  v81 = v62 - v3;
  v4 = type metadata accessor for ChapterCell(0);
  v64 = *(v4 - 8);
  __chkstk_darwin(v4);
  v65 = v5;
  v66 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_14351C();
  v69 = *(v71 - 8);
  v6 = __chkstk_darwin(v71);
  v67 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = v62 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3238);
  v72 = *(v79 - 8);
  __chkstk_darwin(v79);
  v70 = v62 - v9;
  v10 = sub_1440BC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v63 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3240);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v62 - v15;
  v17 = sub_14416C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3248);
  v22 = __chkstk_darwin(v21 - 8);
  v73 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = v62 - v25;
  __chkstk_darwin(v24);
  v28 = v62 - v27;
  v77 = v4;
  v29 = *(v4 + 24);
  v30 = *(v11 + 16);
  v31 = v84;
  v75 = v29;
  v76 = v11 + 16;
  v74 = v30;
  v30(v62 - v27, v84 + v29, v10);
  (*(v11 + 56))(v28, 0, 1, v10);
  v62[1] = *(v31 + 24);
  sub_14423C();
  sub_14405C();
  (*(v18 + 8))(v20, v17);
  v32 = *(v14 + 56);
  sub_1D19C(v28, v16, &qword_1C3248);
  sub_1D19C(v26, &v16[v32], &qword_1C3248);
  v33 = *(v11 + 48);
  if (v33(v16, 1, v10) != 1)
  {
    v35 = v73;
    sub_1D19C(v16, v73, &qword_1C3248);
    if (v33(&v16[v32], 1, v10) != 1)
    {
      v48 = &v16[v32];
      v49 = v63;
      (*(v11 + 32))(v63, v48, v10);
      sub_56138(&qword_1C3280, &type metadata accessor for QueueModel.Chapter);
      v50 = sub_14486C();
      v51 = *(v11 + 8);
      v51(v49, v10);
      sub_15340(v26, &qword_1C3248);
      sub_15340(v28, &qword_1C3248);
      v51(v35, v10);
      sub_15340(v16, &qword_1C3248);
      v34 = v84;
      if (v50)
      {
        goto LABEL_9;
      }

LABEL_7:
      v36 = v78;
      v37 = *(v34 + *(v77 + 28));
      v38 = v83;
      v74(&v78[*(v83 + 20)], v34 + v75, v10);
      v39 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      [v39 pointSize];
      v41 = v40;

      *v36 = v37;
      *(v36 + v38[6]) = 0;
      v42 = v36 + v38[7];
      *v42 = 0;
      v42[8] = 1;
      v43 = v38[8];
      *(v36 + v43) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250);
      swift_storeEnumTagMultiPayload();
      v44 = v38[9];
      *(v36 + v44) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70);
      swift_storeEnumTagMultiPayload();
      v45 = (v36 + v38[10]);
      v85 = v41 * 3.5;
      sub_143CAC();
      v46 = v87;
      *v45 = v86;
      v45[1] = v46;
      sub_58524(v36, v81, type metadata accessor for ChapterText);
      swift_storeEnumTagMultiPayload();
      sub_583EC();
      sub_56138(&qword_1C3270, type metadata accessor for ChapterText);
      sub_14329C();
      return sub_59994(v36, type metadata accessor for ChapterText);
    }

    sub_15340(v26, &qword_1C3248);
    sub_15340(v28, &qword_1C3248);
    (*(v11 + 8))(v35, v10);
LABEL_6:
    sub_15340(v16, &qword_1C3240);
    v34 = v84;
    goto LABEL_7;
  }

  sub_15340(v26, &qword_1C3248);
  sub_15340(v28, &qword_1C3248);
  if (v33(&v16[v32], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_15340(v16, &qword_1C3248);
  v34 = v84;
LABEL_9:
  if ((sub_14154C() & 1) == 0)
  {
    sub_14422C();
  }

  v52 = v68;
  sub_14350C();
  v53 = v66;
  sub_58524(v34, v66, type metadata accessor for ChapterCell);
  v54 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v55 = swift_allocObject();
  sub_59690(v53, v55 + v54, type metadata accessor for ChapterCell);
  v56 = v69;
  v57 = v71;
  (*(v69 + 16))(v67, v52, v71);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_5867C;
  *(v58 + 24) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3268);
  sub_56138(&qword_1C3278, &type metadata accessor for AnimationTimelineSchedule);
  sub_58470();
  v59 = v70;
  sub_142A5C();
  (*(v56 + 8))(v52, v57);
  v60 = v72;
  v61 = v79;
  (*(v72 + 16))(v81, v59, v79);
  swift_storeEnumTagMultiPayload();
  sub_583EC();
  sub_56138(&qword_1C3270, type metadata accessor for ChapterText);
  sub_14329C();
  return (*(v60 + 8))(v59, v61);
}

uint64_t sub_56E14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3298);
  __chkstk_darwin(v3);
  v5 = &v41 - v4;
  v6 = type metadata accessor for ChapterText(0);
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_140ABC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3288);
  sub_142A4C();
  sub_14152C();
  v14 = v13;
  (*(v10 + 8))(v12, v9);
  v15 = type metadata accessor for ChapterCell(0);
  v16 = *(v15 + 24);
  sub_1440AC();
  if (v17 > v14 || (sub_14409C(), v14 >= v18))
  {
    v31 = *(a1 + *(v15 + 28));
    v32 = v6[5];
    v33 = sub_1440BC();
    (*(*(v33 - 8) + 16))(&v8[v32], a1 + v16, v33);
    v34 = [objc_opt_self() preferredFontForTextStyle:{UIFontTextStyleBody, v41}];
    [v34 pointSize];
    v36 = v35;

    *v8 = v31;
    v8[v6[6]] = 0;
    v37 = &v8[v6[7]];
    *v37 = 0;
    v37[8] = 1;
    v38 = v6[8];
    *&v8[v38] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250);
    swift_storeEnumTagMultiPayload();
    v39 = v6[9];
    *&v8[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70);
    swift_storeEnumTagMultiPayload();
    v30 = v6[10];
    v42 = v36 * 3.5;
    sub_143CAC();
    goto LABEL_8;
  }

  v19 = *(a1 + *(v15 + 28));
  v20 = v6[5];
  v21 = sub_1440BC();
  result = (*(*(v21 - 8) + 16))(&v8[v20], a1 + v16, v21);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v14 < 9.22337204e18)
  {
    v23 = v14;
    v24 = [objc_opt_self() preferredFontForTextStyle:{UIFontTextStyleBody, v41}];
    [v24 pointSize];
    v26 = v25;

    *v8 = v19;
    v8[v6[6]] = 1;
    v27 = &v8[v6[7]];
    *v27 = v23;
    v27[8] = 0;
    v28 = v6[8];
    *&v8[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250);
    swift_storeEnumTagMultiPayload();
    v29 = v6[9];
    *&v8[v29] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70);
    swift_storeEnumTagMultiPayload();
    v30 = v6[10];
    v42 = v26 * 3.5;
    sub_143CAC();
LABEL_8:
    v40 = v44;
    *&v8[v30] = v43;
    *&v8[v30 + 8] = v40;
    sub_58524(v8, v5, type metadata accessor for ChapterText);
    swift_storeEnumTagMultiPayload();
    sub_56138(&qword_1C3270, type metadata accessor for ChapterText);
    sub_14329C();
    return sub_59994(v8, type metadata accessor for ChapterText);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_5737C@<X0>(uint64_t a1@<X8>)
{
  sub_56250(v1, a1);
  v3 = sub_14366C();
  sub_14290C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3228);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_57420@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_143F3C();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = __chkstk_darwin(v3);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3390);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_14317C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = type metadata accessor for ChapterText(0);
  sub_FA518(v19);
  v21 = *(v1 + *(v20 + 24));
  (*(v11 + 32))(v9, v19, v10);
  v22 = (*(v11 + 88))(v9, v10);
  v23 = enum case for ColorSchemeContrast.standard(_:);
  if (v21 == 1)
  {
    if (v22 == enum case for ColorSchemeContrast.standard(_:))
    {
      v24 = sub_143BFC();
    }

    else
    {
      v24 = sub_143B9C();
      (*(v11 + 8))(v9, v10);
    }

    goto LABEL_12;
  }

  if (v22 == enum case for ColorSchemeContrast.standard(_:))
  {
    v38 = sub_143BAC();
  }

  else
  {
    v38 = sub_143BFC();
    (*(v11 + 8))(v9, v10);
  }

  sub_FA518(v17);
  (*(v11 + 104))(v14, v23, v10);
  v25 = sub_14316C();
  v26 = *(v11 + 8);
  v26(v14, v10);
  v26(v17, v10);
  if ((v25 & 1) == 0)
  {
    v24 = v38;
LABEL_12:
    v27 = &enum case for BlendMode.normal(_:);
    goto LABEL_13;
  }

  v27 = &enum case for BlendMode.plusLighter(_:);
  v24 = v38;
LABEL_13:
  v29 = v42;
  v28 = v43;
  v30 = v39;
  (*(v42 + 104))(v39, *v27, v43);
  v31 = *(v29 + 32);
  v32 = v40;
  v31(v40, v30, v28);
  v33 = sub_14305C();
  v34 = v41;
  *v41 = v33;
  v34[1] = 0;
  *(v34 + 16) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3398);
  sub_57850(v2, v34 + *(v35 + 44));
  *(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33A0) + 36)) = v24;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33A8);
  return (v31)(v34 + *(v36 + 36), v32, v28);
}

uint64_t sub_57850@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChapterText(0);
  v69 = *(v4 - 8);
  __chkstk_darwin(v4);
  v70 = v5;
  v71 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_142BEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v72 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33B0);
  __chkstk_darwin(v9 - 8);
  v11 = v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33B8);
  __chkstk_darwin(v12);
  v14 = v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33C0);
  v68 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v21 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
    v59 = v18;
    v60 = v17;
    v58[1] = sub_144C4C();
    v57 = sub_1435DC();
    sub_1423BC();
  }

  else
  {
    v65 = a2;
    v66 = v7;
    v75 = v58 - v19;
    v76 = v20;
    v67 = v6;
    v7 = &v89;
    v89 = v21;
    v22 = sub_14538C();
    v73 = v23;
    v74 = v22;
    sub_143EBC();
    sub_142A9C();
    v89 = sub_14408C();
    v90 = v24;
    sub_9CCC();
    v25 = sub_1437EC();
    v62 = v26;
    v63 = v25;
    v61 = v27;
    v64 = v28;
    sub_57F90(a1);
    v29 = (a1 + *(v4 + 40));
    v30 = *v29;
    v31 = v29[1];
    v89 = v30;
    v90 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8);
    sub_143CBC();
    sub_143ECC();
  }

  sub_142D4C();
  sub_59444(v11, v14);
  v32 = &v14[*(v12 + 36)];
  v33 = *(v7 + 5);
  *(v32 + 4) = *(v7 + 4);
  *(v32 + 5) = v33;
  *(v32 + 6) = *(v7 + 6);
  v34 = *(v7 + 1);
  *v32 = *v7;
  *(v32 + 1) = v34;
  v35 = *(v7 + 3);
  *(v32 + 2) = *(v7 + 2);
  *(v32 + 3) = v35;
  v36 = v72;
  sub_FA98C(v72);
  v37 = v71;
  sub_58524(a1, v71, type metadata accessor for ChapterText);
  v38 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v39 = swift_allocObject();
  sub_59690(v37, v39 + v38, type metadata accessor for ChapterText);
  sub_59758();
  sub_56138(&qword_1C33F8, &type metadata accessor for DynamicTypeSize);
  v40 = v75;
  v41 = v67;
  sub_143B6C();

  (v66[1])(v36, v41);
  sub_15340(v14, &qword_1C33B8);
  v42 = v68;
  v43 = *(v68 + 16);
  v43(v76, v40, v15);
  v44 = v15;
  *&v77 = v74;
  *(&v77 + 1) = v73;
  LOBYTE(v78) = 0;
  *(&v78 + 1) = v94[0];
  DWORD1(v78) = *(v94 + 3);
  *(&v78 + 1) = _swiftEmptyArrayStorage;
  v45 = v92;
  v80 = v92;
  v79 = v91;
  v46 = v93;
  v81 = v93;
  v48 = v64;
  v47 = v65;
  *(v65 + 32) = v91;
  *(v47 + 48) = v45;
  *(v47 + 64) = v46;
  v49 = v78;
  *v47 = v77;
  *(v47 + 16) = v49;
  v50 = v62;
  v51 = v63;
  *(v47 + 80) = v63;
  *(v47 + 88) = v50;
  v52 = v61 & 1;
  *(v47 + 96) = v61 & 1;
  *(v47 + 104) = v48;
  *(v47 + 112) = 0;
  *(v47 + 120) = 1;
  v53 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3400) + 80);
  v54 = v76;
  v43(v53, v76, v44);
  sub_1D19C(&v77, v82, &qword_1C3408);
  sub_63AC(v51, v50, v52);
  v55 = *(v42 + 8);

  v55(v75, v44);
  v55(v54, v44);
  sub_1B4AC(v51, v50, v52);

  v82[0] = v74;
  v82[1] = v73;
  v83 = 0;
  *v84 = v94[0];
  *&v84[3] = *(v94 + 3);
  v85 = _swiftEmptyArrayStorage;
  v86 = v91;
  v87 = v92;
  v88 = v93;
  return sub_15340(v82, &qword_1C3408);
}

uint64_t sub_57F90(uint64_t a1)
{
  v2 = type metadata accessor for InactiveChapterTimeRemainingText(0);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3410);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  active = type metadata accessor for ActiveChapterTimeRemainingText(0);
  __chkstk_darwin(active);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChapterText(0);
  if (*(a1 + v11[6]) == 1 && (v12 = (a1 + v11[7]), (v12[1] & 1) == 0))
  {
    v17 = *v12;
    v18 = v11[5];
    v19 = *(active + 20);
    v20 = sub_1440BC();
    (*(*(v20 - 8) + 16))(&v10[v19], a1 + v18, v20);
    *v10 = v17;
    sub_58524(v10, v7, type metadata accessor for ActiveChapterTimeRemainingText);
    swift_storeEnumTagMultiPayload();
    sub_56138(&qword_1C33E8, type metadata accessor for ActiveChapterTimeRemainingText);
    sub_56138(&qword_1C33F0, type metadata accessor for InactiveChapterTimeRemainingText);
    sub_14329C();
    v15 = type metadata accessor for ActiveChapterTimeRemainingText;
    v16 = v10;
  }

  else
  {
    v13 = v11[5];
    v14 = sub_1440BC();
    (*(*(v14 - 8) + 16))(v4, a1 + v13, v14);
    sub_58524(v4, v7, type metadata accessor for InactiveChapterTimeRemainingText);
    swift_storeEnumTagMultiPayload();
    sub_56138(&qword_1C33E8, type metadata accessor for ActiveChapterTimeRemainingText);
    sub_56138(&qword_1C33F0, type metadata accessor for InactiveChapterTimeRemainingText);
    sub_14329C();
    v15 = type metadata accessor for InactiveChapterTimeRemainingText;
    v16 = v4;
  }

  return sub_59994(v16, v15);
}

uint64_t sub_58320()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 pointSize];

  type metadata accessor for ChapterText(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8);
  return sub_143CCC();
}

unint64_t sub_583EC()
{
  result = qword_1C3258;
  if (!qword_1C3258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3238);
    sub_58470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3258);
  }

  return result;
}

unint64_t sub_58470()
{
  result = qword_1C3260;
  if (!qword_1C3260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3268);
    sub_56138(&qword_1C3270, type metadata accessor for ChapterText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3260);
  }

  return result;
}

uint64_t sub_58524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5858C()
{
  v1 = (type metadata accessor for ChapterCell(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_1440BC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5867C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChapterCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_56E14(v4, a1);
}

uint64_t sub_58700@<X0>(uint64_t a1@<X8>)
{
  if (qword_1BFF30 != -1)
  {
    swift_once();
  }

  v3 = qword_1C3170;
  sub_14409C();
  v5 = [v3 stringFromSeconds:v4 - *v1];
  sub_1448DC();

  sub_9CCC();
  v6 = sub_1437EC();
  v8 = v7;
  LOBYTE(v3) = v9;
  v10 = sub_14379C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1B4AC(v6, v8, v3 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

id sub_58840@<X0>(uint64_t a1@<X8>)
{
  sub_14409C();
  v3 = v2;
  sub_1440AC();
  v5 = v3 - v4;
  if (v5 >= 60.0)
  {
    if (qword_1BFF38 != -1)
    {
      swift_once();
    }

    result = [qword_1C3178 stringFromTimeInterval:v5];
    if (result)
    {
      v36 = a1;
      v20 = result;
      sub_1448DC();

      sub_9CCC();
      v21 = sub_1437EC();
      v23 = v22;
      v25 = v24;
      v26 = AXDurationStringForDurationWithSeconds();
      if (v26)
      {
        v27 = v26;
        v28 = sub_1448DC();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0xE000000000000000;
      }

      *&v38 = v28;
      *(&v38 + 1) = v30;
      v31 = sub_1437EC();
      v33 = v32;
      v35 = v34;
      sub_1437AC();
      sub_1B4AC(v31, v33, v35 & 1);

      sub_1B4AC(v21, v23, v25 & 1);

      result = sub_14329C();
      v17 = v38;
      v18 = v39;
      v19 = v40;
      a1 = v36;
    }

    else
    {
      v17 = 0uLL;
      v19 = -1;
      v18 = 0uLL;
    }
  }

  else
  {
    sub_1430EC();
    v6 = sub_1437DC();
    v8 = v7;
    v10 = v9;
    sub_1430EC();
    v11 = sub_1437DC();
    v13 = v12;
    v15 = v14;
    sub_1437AC();
    sub_1B4AC(v11, v13, v15 & 1);

    sub_1B4AC(v6, v8, v10 & 1);

    result = sub_14329C();
    v17 = v37;
    v18 = v39;
    v19 = v40;
  }

  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  return result;
}

uint64_t sub_58BC0(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3288);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3290);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_58D08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_58D5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1440BC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F78);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[10] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_58EE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1440BC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[8];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F78);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10] + 8) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[9];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_59050()
{
  sub_1440BC();
  if (v0 <= 0x3F)
  {
    sub_59208(319, &qword_1C3310, &type metadata for Int, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_591B4(319, &qword_1C3318, &type metadata accessor for DynamicTypeSize);
      if (v2 <= 0x3F)
      {
        sub_591B4(319, &unk_1C0FF0, &type metadata accessor for ColorSchemeContrast);
        if (v3 <= 0x3F)
        {
          sub_59208(319, &unk_1C3320, &type metadata for CGFloat, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_591B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_142A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_59208(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_5925C()
{
  result = qword_1C3368;
  if (!qword_1C3368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3228);
    sub_592E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3368);
  }

  return result;
}

unint64_t sub_592E8()
{
  result = qword_1C3370;
  if (!qword_1C3370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3378);
    sub_5936C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3370);
  }

  return result;
}

unint64_t sub_5936C()
{
  result = qword_1C3380;
  if (!qword_1C3380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3388);
    sub_583EC();
    sub_56138(&qword_1C3270, type metadata accessor for ChapterText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3380);
  }

  return result;
}

uint64_t sub_59444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_594B4()
{
  v1 = type metadata accessor for ChapterText(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = v1[5];
  v7 = sub_1440BC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_142BEC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_14317C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_59690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_596F8()
{
  type metadata accessor for ChapterText(0);

  return sub_58320();
}

unint64_t sub_59758()
{
  result = qword_1C33C8;
  if (!qword_1C33C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C33B8);
    sub_597E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C33C8);
  }

  return result;
}

unint64_t sub_597E4()
{
  result = qword_1C33D0;
  if (!qword_1C33D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C33B0);
    sub_59868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C33D0);
  }

  return result;
}

unint64_t sub_59868()
{
  result = qword_1C33D8;
  if (!qword_1C33D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C33E0);
    sub_56138(&qword_1C33E8, type metadata accessor for ActiveChapterTimeRemainingText);
    sub_56138(&qword_1C33F0, type metadata accessor for InactiveChapterTimeRemainingText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C33D8);
  }

  return result;
}

uint64_t sub_59994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_59A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1440BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_59A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1440BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_59AF8()
{
  result = sub_1440BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_59B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1440BC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_59C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1440BC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_59C80()
{
  result = sub_1440BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_59D00()
{
  result = qword_1C3538;
  if (!qword_1C3538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C33A8);
    sub_59D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3538);
  }

  return result;
}

unint64_t sub_59D8C()
{
  result = qword_1C3540;
  if (!qword_1C3540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C33A0);
    sub_1D4A4(&qword_1C3548, &qword_1C3550);
    sub_1D4A4(&qword_1C3558, &qword_1C3560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3540);
  }

  return result;
}

unint64_t sub_59EB8()
{
  result = qword_1C3568;
  if (!qword_1C3568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3570);
    sub_59F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3568);
  }

  return result;
}

unint64_t sub_59F3C()
{
  result = qword_1C3578;
  if (!qword_1C3578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3578);
  }

  return result;
}

id sub_59FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C15F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_140C4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D19C(a1, v4, &unk_1C15F8);
  v9 = *(v6 + 48);
  if (v9(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    return sub_5A468(v8);
  }

  result = [objc_opt_self() defaultPodcastArtwork];
  if (result)
  {
    *v8 = result;
    (*(v6 + 104))(v8, enum case for NowPlayingArtwork.Data.image(_:), v5);
    if (v9(v4, 1, v5) != 1)
    {
      sub_15340(v4, &unk_1C15F8);
    }

    return sub_5A468(v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_5A1AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_5BF0C(&qword_1C36A8, type metadata accessor for NowPlayingArtworkViewModel);
  sub_141A4C();

  v3 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  swift_beginAccess();
  v4 = sub_140C4C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_5A2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5BF0C(&qword_1C36A8, type metadata accessor for NowPlayingArtworkViewModel);
  sub_141A4C();

  v4 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  swift_beginAccess();
  v5 = sub_140C4C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_5A39C(uint64_t a1)
{
  v2 = sub_140C4C();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_5A468(v4);
}

uint64_t sub_5A468(uint64_t a1)
{
  v2 = v1;
  v4 = sub_140C4C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_5BF0C(&qword_1C2380, &type metadata accessor for NowPlayingArtwork.Data);
  v9 = sub_14486C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_5BF0C(&qword_1C36A8, type metadata accessor for NowPlayingArtworkViewModel);
    sub_141A3C();
  }

  return (v10)(a1, v4);
}

uint64_t sub_5A6E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  swift_beginAccess();
  v5 = sub_140C4C();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_5A784()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  v2 = sub_140C4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel_trace, &qword_1C1770);
  v3 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel_placement;
  v4 = sub_140C7C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel___observationRegistrar;
  v6 = sub_141A8C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingArtworkViewModel()
{
  result = qword_1C35C8;
  if (!qword_1C35C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5A914()
{
  result = sub_140C4C();
  if (v1 <= 0x3F)
  {
    result = sub_140C7C();
    if (v2 <= 0x3F)
    {
      result = sub_141A8C();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_5AA58(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1240);
  __chkstk_darwin(v3 - 8);
  v68 = &v60 - v4;
  v63 = sub_142FFC();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1248);
  __chkstk_darwin(v6 - 8);
  v71 = &v60 - v7;
  v75 = sub_14460C();
  v67 = *(v75 - 8);
  __chkstk_darwin(v75);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3688);
  v70 = *(v81 - 8);
  __chkstk_darwin(v81);
  v69 = &v60 - v9;
  v65 = sub_141DEC();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3690);
  __chkstk_darwin(v78);
  v77 = (&v60 - v11);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3698);
  __chkstk_darwin(v73);
  v74 = (&v60 - v12);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36A0);
  __chkstk_darwin(v79);
  v76 = &v60 - v13;
  v14 = sub_143C3C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_140C4C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1;
  v23 = *a1;
  swift_getKeyPath();
  *&v82 = v23;
  sub_5BF0C(&qword_1C36A8, type metadata accessor for NowPlayingArtworkViewModel);
  sub_141A4C();

  v24 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  swift_beginAccess();
  (*(v19 + 16))(v21, v23 + v24, v18);
  v25 = (*(v19 + 88))(v21, v18);
  if (v25 == enum case for NowPlayingArtwork.Data.image(_:))
  {
    (*(v19 + 96))(v21, v18);
    v26 = *v21;
    sub_143C1C();
    (*(v15 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v14);
    v27 = sub_143C5C();

    (*(v15 + 8))(v17, v14);
    *v74 = v27;
    swift_storeEnumTagMultiPayload();
    v28 = sub_5BF0C(&qword_1C11D0, &type metadata accessor for Artwork);

    *&v82 = v75;
    *(&v82 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    v29 = v76;
    sub_14329C();
    sub_5BDC0(v29, v77);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36B8);
    sub_5BBE4();
    sub_5BCD0();
    sub_14329C();

    sub_15340(v29, &qword_1C36A0);
    return;
  }

  v30 = v81;
  if (v25 == enum case for NowPlayingArtwork.Data.model(_:))
  {
    (*(v19 + 96))(v21, v18);
    v31 = v72;
    sub_2C168(v21, v72);
    v32 = v31;
    v33 = v71;
    sub_5BD5C(v32, v71);
    (*(v64 + 56))(v33, 0, 1, v65);
    sub_140C5C();
    sub_140C5C();
    v85 = *(v22 + 1);
    LOWORD(v86) = *(v22 + 16);
    if (BYTE1(v86) == 1)
    {
      v34 = v86;
      v35 = *&v85;
    }

    else
    {

      sub_144C4C();
      v46 = sub_1435DC();
      sub_1423BC();

      v47 = v61;
      sub_142FEC();
      swift_getAtKeyPath();
      sub_15340(&v85, &qword_1C36D0);
      (*(v62 + 8))(v47, v63);
      v35 = *&v82;
      v34 = v83;
    }

    v48 = v77;
    if ((v34 & 1) != 0 || v35 <= 0.0)
    {
      sub_140C5C();
    }

    v49 = v75;
    v50 = sub_14214C();
    (*(*(v50 - 8) + 56))(v68, 1, 1, v50);
    sub_1D19C(v23 + OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel_trace, &v82, &qword_1C1770);
    sub_143E9C();
    v51 = v66;
    sub_1445FC();
    v52 = sub_5BF0C(&qword_1C11D0, &type metadata accessor for Artwork);
    v53 = v69;
    sub_14383C();
    (*(v67 + 8))(v51, v49);
    v54 = v70;
    (*(v70 + 16))(v74, v53, v30);
    swift_storeEnumTagMultiPayload();
    *&v82 = v49;
    *(&v82 + 1) = v52;
    swift_getOpaqueTypeConformance2();
    v55 = v76;
    sub_14329C();
    sub_5BDC0(v55, v48);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36B8);
    sub_5BBE4();
    sub_5BCD0();
    sub_14329C();
    sub_15340(v55, &qword_1C36A0);
    (*(v54 + 8))(v53, v30);
    sub_2C1CC(v72);
  }

  else
  {
    if (v25 == enum case for NowPlayingArtwork.Data.catalog(_:))
    {
      (*(v19 + 96))(v21, v18);
      v36 = *v21;
      v37 = [objc_opt_self() defaultPodcastArtwork];
      if (v37)
      {
        v38 = v37;
        *&v85 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C15E8);
        sub_143CAC();
        v39 = v82;
        *&v85 = v38;
        *(&v85 + 1) = v36;
        v86 = v82;
        v87 = 0;
        sub_5BB90();
        v40 = v38;
        v41 = v36;
        v42 = v39;

        sub_14329C();
        v43 = v84;
        v44 = v83;
        v45 = v77;
        *v77 = v82;
        v45[1] = v44;
        *(v45 + 32) = v43;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36B8);
        sub_5BBE4();
        sub_5BCD0();
        sub_14329C();

        return;
      }

      __break(1u);
    }

    else if ([objc_opt_self() defaultPodcastArtwork])
    {
      sub_143C1C();
      (*(v15 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v14);
      v56 = sub_143C5C();

      (*(v15 + 8))(v17, v14);
      v85 = v56;
      v86 = 0uLL;
      v87 = 1;
      sub_5BB90();

      sub_14329C();
      v57 = v84;
      v58 = v83;
      v59 = v77;
      *v77 = v82;
      v59[1] = v58;
      *(v59 + 32) = v57;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36B8);
      sub_5BBE4();
      sub_5BCD0();
      sub_14329C();

      (*(v19 + 8))(v21, v18);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_5B91C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3668);
  __chkstk_darwin(v1);
  v3 = (v12 - v2);
  v4 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v4;
  v13 = *(v0 + 32);
  v5 = sub_143BCC();
  v6 = sub_143EAC();
  v8 = v7;
  v9 = v3 + *(v1 + 36);
  sub_5AA58(v12, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3670) + 36));
  *v10 = v6;
  v10[1] = v8;
  *v3 = v5;
  sub_1430EC();
  sub_5BA98();
  sub_1439DC();

  return sub_15340(v3, &qword_1C3668);
}

unint64_t sub_5BA98()
{
  result = qword_1C3678;
  if (!qword_1C3678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3668);
    sub_5BB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3678);
  }

  return result;
}

unint64_t sub_5BB24()
{
  result = qword_1C3680;
  if (!qword_1C3680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3680);
  }

  return result;
}

unint64_t sub_5BB90()
{
  result = qword_1C36B0;
  if (!qword_1C36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C36B0);
  }

  return result;
}

unint64_t sub_5BBE4()
{
  result = qword_1C36C0;
  if (!qword_1C36C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C36A0);
    sub_14460C();
    sub_5BF0C(&qword_1C11D0, &type metadata accessor for Artwork);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C36C0);
  }

  return result;
}

unint64_t sub_5BCD0()
{
  result = qword_1C36C8;
  if (!qword_1C36C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C36B8);
    sub_5BB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C36C8);
  }

  return result;
}

uint64_t sub_5BD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_141DEC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5BDC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5BE50()
{
  result = qword_1C36D8;
  if (!qword_1C36D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1C36E0);
    sub_5BA98();
    sub_5BF0C(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C36D8);
  }

  return result;
}

uint64_t sub_5BF0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_5BF5C()
{
  sub_5C91C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NowPlayingPlaybackControlsViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_140D5C();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1421BC();
          if (v4 <= 0x3F)
          {
            sub_5C96C();
            if (v5 <= 0x3F)
            {
              sub_62BCC(319, &qword_1C3778, &type metadata accessor for ScenePhase);
              if (v6 <= 0x3F)
              {
                sub_62BCC(319, &unk_1C0FF0, &type metadata accessor for ColorSchemeContrast);
                if (v7 <= 0x3F)
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

uint64_t sub_5C0B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_140D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v32 = *(a3 + 16);
  v33 = v5;
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v34 = *(sub_14292C() - 8);
  v12 = *(v34 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v35 = v12;
  v13 = *(sub_14317C() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  v17 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_34;
  }

  v18 = *(v34 + 80) & 0xF8 | 7;
  v19 = *(v13 + 80) & 0xF8 | 7;
  v20 = v14 + ((v35 + v19 + ((v18 + ((((((((*(v8 + 64) + ((v16 + ((v15 + 24) & ~v15) + v17) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v18) + 1) & ~v19) + 1;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v11 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v24 < 2)
    {
LABEL_34:
      v26 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v28 = (v26 + v15 + 8) & ~v15;
        if (v7 == v11)
        {
          v29 = *(v6 + 48);
          v30 = v7;
          v31 = v33;
        }

        else
        {
          v29 = *(v8 + 48);
          v28 = (v28 + v16 + v17) & ~v17;
          v30 = v9;
          v31 = v32;
        }

        return v29(v28, v30, v31);
      }

      else
      {
        v27 = *v26;
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_23:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 > 3)
    {
      LODWORD(v20) = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        LODWORD(v20) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v20) = *a1;
      }
    }

    else if (v20 == 1)
    {
      LODWORD(v20) = *a1;
    }

    else
    {
      LODWORD(v20) = *a1;
    }
  }

  return v11 + (v20 | v25) + 1;
}

void sub_5C498(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(sub_140D5C() - 8);
  v33 = v6;
  v7 = *(*(a4 + 16) - 8);
  v32 = *(v6 + 84);
  if (v32 <= *(v7 + 84))
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_14292C() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_14317C() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v7 + 80);
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = v13 + ((v11 + v18 + ((v17 + ((((((((*(v7 + 64) + ((v15 + ((v14 + 24) & ~v14) + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + 1) & ~v18) + 1;
  if (a3 <= v9)
  {
    v22 = 0;
    v20 = a1;
    v21 = a2;
  }

  else
  {
    v20 = a1;
    v21 = a2;
    if (v19 <= 3)
    {
      v25 = ((a3 - v9 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  if (v9 < v21)
  {
    v23 = ~v9 + v21;
    if (v19 < 4)
    {
      v24 = (v23 >> (8 * v19)) + 1;
      if (v19)
      {
        v27 = v23 & ~(-1 << (8 * v19));
        bzero(v20, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *v20 = v27;
            if (v22 > 1)
            {
LABEL_60:
              if (v22 == 2)
              {
                *&v20[v19] = v24;
              }

              else
              {
                *&v20[v19] = v24;
              }

              return;
            }
          }

          else
          {
            *v20 = v23;
            if (v22 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v20 = v27;
        v20[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(v20, v19);
      *v20 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v22)
    {
      v20[v19] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&v20[v19] = 0;
      if (!v21)
      {
        return;
      }

      goto LABEL_40;
    }

    *&v20[v19] = 0;
  }

  else if (v22)
  {
    v20[v19] = 0;
    if (!v21)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v21)
  {
    return;
  }

LABEL_40:
  v28 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v30 = (v28 + v14 + 8) & ~v14;
    if (v32 == v9)
    {
      v31 = *(v33 + 56);
    }

    else
    {
      v31 = *(v7 + 56);
      v30 = (v30 + v15 + v16) & ~v16;
    }

    v31(v30);
  }

  else
  {
    if ((v21 & 0x80000000) != 0)
    {
      v29 = v21 & 0x7FFFFFFF;
    }

    else
    {
      v29 = v21 - 1;
    }

    *v28 = v29;
  }
}

void sub_5C91C()
{
  if (!qword_1C0FE8)
  {
    v0 = sub_143CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C0FE8);
    }
  }
}

void sub_5C96C()
{
  if (!qword_1C3768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3770);
    v0 = sub_143CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C3768);
    }
  }
}

uint64_t sub_5CA38(uint64_t a1)
{
  v2 = sub_142BEC();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_142E9C();
}

uint64_t sub_5CB00(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v31[-v7];
  v9 = sub_14243C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1423EC();
  v13 = *(v3 + 16);
  v13(v8, v1, a1);
  v13(v5, v1, a1);
  v14 = sub_14242C();
  v15 = sub_144C5C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v9;
    v17 = v16;
    v34 = swift_slowAlloc();
    v36 = v34;
    *v17 = 136315650;
    v18 = sub_1454BC();
    v33 = v14;
    v20 = sub_ED2A4(v18, v19, &v36);
    v32 = v15;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 1026;
    v22 = *(v8 + 1);
    v38 = *v8;
    v39 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
    sub_143CBC();
    LODWORD(v21) = v37;
    v23 = *(v3 + 8);
    v23(v8, a1);
    *(v17 + 14) = v21;
    *(v17 + 18) = 2082;
    v24 = sub_140D4C();
    v26 = v25;
    v23(v5, a1);
    v27 = sub_ED2A4(v24, v26, &v36);

    *(v17 + 20) = v27;
    v28 = v33;
    _os_log_impl(&dword_0, v33, v32, "[%s] Setting isPopoverPresented to %{BOOL,public}d for placement %{public}s", v17, 0x1Cu);
    swift_arrayDestroy();

    return (*(v10 + 8))(v12, v35);
  }

  else
  {
    v30 = *(v3 + 8);
    v30(v8, a1);

    v30(v5, a1);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_5CE90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  sub_143CBC();
  return v1;
}

uint64_t sub_5CEE8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  sub_143CCC();
  return sub_5CB00(a2);
}

uint64_t sub_5CF60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  sub_143CDC();
  return v1;
}

uint64_t sub_5CFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_14340C();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a1 - 8);
  v67 = *(v66 + 64);
  __chkstk_darwin(v5);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(a1 + 16);
  v64 = a1;
  sub_14358C();
  v7 = sub_142C6C();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3780);
  v9 = *(a1 + 24);
  v62 = v9;
  v70 = sub_630F4(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
  v84 = v9;
  v85 = v70;
  v69 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_60ACC();
  v80 = v7;
  v81 = v8;
  v82 = WitnessTable;
  v83 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C37B0);
  v80 = v7;
  v81 = v8;
  v82 = WitnessTable;
  v83 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1D4A4(&qword_1C37B8, &qword_1C37B0);
  v80 = OpaqueTypeMetadata2;
  v81 = v13;
  v82 = OpaqueTypeConformance2;
  v83 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v80 = OpaqueTypeMetadata2;
  v81 = v13;
  v82 = OpaqueTypeConformance2;
  v83 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v80 = v16;
  v81 = &type metadata for Bool;
  v82 = v17;
  v83 = &protocol witness table for Bool;
  v18 = swift_getOpaqueTypeMetadata2();
  v80 = v16;
  v81 = &type metadata for Bool;
  v82 = v17;
  v83 = &protocol witness table for Bool;
  v19 = swift_getOpaqueTypeConformance2();
  v80 = v18;
  v81 = &type metadata for Bool;
  v82 = v19;
  v83 = &protocol witness table for Bool;
  v20 = swift_getOpaqueTypeMetadata2();
  v80 = v18;
  v81 = &type metadata for Bool;
  v82 = v19;
  v83 = &protocol witness table for Bool;
  v21 = swift_getOpaqueTypeConformance2();
  v80 = v20;
  v81 = &type metadata for Bool;
  v82 = v21;
  v83 = &protocol witness table for Bool;
  v22 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  v24 = v23;
  v80 = v20;
  v81 = &type metadata for Bool;
  v82 = v21;
  v83 = &protocol witness table for Bool;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_630F4(&qword_1C37C0, type metadata accessor for CGRect);
  v80 = v22;
  v81 = v24;
  v82 = v25;
  v83 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v80 = v22;
  v81 = v24;
  v82 = v25;
  v83 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v80 = v27;
  v81 = &type metadata for Bool;
  v82 = v28;
  v83 = &protocol witness table for Bool;
  v29 = swift_getOpaqueTypeMetadata2();
  v80 = v27;
  v81 = &type metadata for Bool;
  v82 = v28;
  v83 = &protocol witness table for Bool;
  v30 = swift_getOpaqueTypeConformance2();
  v80 = v29;
  v81 = &type metadata for Bool;
  v82 = v30;
  v83 = &protocol witness table for Bool;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = sub_14292C();
  v80 = v29;
  v81 = &type metadata for Bool;
  v82 = v30;
  v83 = &protocol witness table for Bool;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_630F4(&qword_1C37C8, &type metadata accessor for ScenePhase);
  v80 = v31;
  v81 = v32;
  v82 = v33;
  v83 = v34;
  swift_getOpaqueTypeMetadata2();
  v80 = v31;
  v81 = v32;
  v82 = v33;
  v83 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = sub_143D2C();
  v60 = *(v35 - 8);
  __chkstk_darwin(v35);
  v37 = &v57 - v36;
  v38 = sub_142C6C();
  v61 = *(v38 - 8);
  __chkstk_darwin(v38);
  v58 = &v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v59 = &v57 - v41;
  v42 = v63;
  v43 = v62;
  v75 = v63;
  v76 = v62;
  v44 = v68;
  v77 = v68;
  sub_143CFC();
  v45 = v66;
  v46 = v65;
  v47 = v64;
  (*(v66 + 16))(v65, v44, v64);
  v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v42;
  *(v49 + 24) = v43;
  (*(v45 + 32))(v49 + v48, v46, v47);
  v50 = swift_getWitnessTable();
  v51 = v71;
  sub_1433FC();
  v52 = v58;
  sub_143A2C();

  (*(v72 + 8))(v51, v73);
  (*(v60 + 8))(v37, v35);
  v78 = v50;
  v79 = v70;
  v53 = swift_getWitnessTable();
  v54 = v59;
  sub_F6344(v52, v38, v53);
  v55 = *(v61 + 8);
  v55(v52, v38);
  sub_F6344(v54, v38, v53);
  return (v55)(v54, v38);
}

uint64_t sub_5D868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v231 = a1;
  v212 = a4;
  v220 = sub_14292C();
  v211 = *(v220 - 8);
  __chkstk_darwin(v220);
  v210 = &v158[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v209 = sub_142CDC();
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v207 = &v158[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37B0);
  __chkstk_darwin(v8);
  v206 = &v158[-v9];
  v228 = a3;
  v229 = a2;
  v10 = a3;
  v175 = type metadata accessor for NowPlayingAdvancedControlsMenu();
  v230 = *(v175 - 8);
  v226 = *(v230 + 64);
  __chkstk_darwin(v175);
  v222 = &v158[-v11];
  v186 = sub_14348C();
  v219 = *(v186 - 8);
  __chkstk_darwin(v186);
  v173 = &v158[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v227 = sub_14315C();
  v225 = *(v227 - 8);
  __chkstk_darwin(v227);
  v14 = &v158[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_14358C();
  v15 = sub_142C6C();
  v191 = *(v15 - 8);
  __chkstk_darwin(v15);
  v215 = &v158[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3780);
  v18 = sub_630F4(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
  v237 = v10;
  v238 = v18;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_60ACC();
  v233 = v15;
  v234 = v17;
  v166 = v15;
  v163 = v17;
  v235 = WitnessTable;
  v236 = v20;
  v162 = WitnessTable;
  v21 = v20;
  v161 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v185 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v165 = &v158[-v23];
  v233 = v15;
  v234 = v17;
  v235 = WitnessTable;
  v236 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1D4A4(&qword_1C37B8, &qword_1C37B0);
  v233 = OpaqueTypeMetadata2;
  v234 = v8;
  v167 = OpaqueTypeMetadata2;
  v164 = v8;
  v235 = OpaqueTypeConformance2;
  v236 = v25;
  v26 = OpaqueTypeConformance2;
  v169 = OpaqueTypeConformance2;
  v27 = v25;
  v168 = v25;
  v28 = swift_getOpaqueTypeMetadata2();
  v192 = *(v28 - 8);
  __chkstk_darwin(v28);
  v218 = &v158[-v29];
  v233 = OpaqueTypeMetadata2;
  v234 = v8;
  v235 = v26;
  v236 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v233 = v28;
  v234 = &type metadata for Bool;
  v171 = v28;
  v235 = v30;
  v236 = &protocol witness table for Bool;
  v31 = v30;
  v172 = v30;
  v32 = swift_getOpaqueTypeMetadata2();
  v197 = *(v32 - 8);
  __chkstk_darwin(v32);
  v213 = &v158[-v33];
  v233 = v28;
  v234 = &type metadata for Bool;
  v235 = v31;
  v236 = &protocol witness table for Bool;
  v34 = swift_getOpaqueTypeConformance2();
  v233 = v32;
  v234 = &type metadata for Bool;
  v35 = v32;
  v176 = v32;
  v235 = v34;
  v236 = &protocol witness table for Bool;
  v36 = v34;
  v177 = v34;
  v37 = swift_getOpaqueTypeMetadata2();
  v199 = *(v37 - 8);
  __chkstk_darwin(v37);
  v214 = &v158[-v38];
  v233 = v35;
  v234 = &type metadata for Bool;
  v235 = v36;
  v236 = &protocol witness table for Bool;
  v39 = swift_getOpaqueTypeConformance2();
  v233 = v37;
  v234 = &type metadata for Bool;
  v40 = v37;
  v182 = v37;
  v235 = v39;
  v236 = &protocol witness table for Bool;
  v41 = v39;
  v184 = v39;
  v42 = swift_getOpaqueTypeMetadata2();
  v204 = *(v42 - 8);
  __chkstk_darwin(v42);
  v217 = &v158[-v43];
  type metadata accessor for CGRect(255);
  v45 = v44;
  v233 = v40;
  v234 = &type metadata for Bool;
  v235 = v41;
  v236 = &protocol witness table for Bool;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_630F4(&qword_1C37C0, type metadata accessor for CGRect);
  v233 = v42;
  v234 = v45;
  v181 = v42;
  v170 = v45;
  v235 = v46;
  v236 = v47;
  v48 = v46;
  v183 = v46;
  v49 = v47;
  v174 = v47;
  v50 = swift_getOpaqueTypeMetadata2();
  v198 = *(v50 - 8);
  __chkstk_darwin(v50);
  v178 = &v158[-v51];
  v233 = v42;
  v234 = v45;
  v235 = v48;
  v236 = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v233 = v50;
  v234 = &type metadata for Bool;
  v53 = v50;
  v179 = v50;
  v235 = v52;
  v236 = &protocol witness table for Bool;
  v54 = v52;
  v180 = v52;
  v55 = swift_getOpaqueTypeMetadata2();
  v203 = *(v55 - 8);
  __chkstk_darwin(v55);
  v216 = &v158[-v56];
  v233 = v53;
  v234 = &type metadata for Bool;
  v235 = v54;
  v236 = &protocol witness table for Bool;
  v57 = swift_getOpaqueTypeConformance2();
  v233 = v55;
  v234 = &type metadata for Bool;
  v58 = v55;
  v189 = v55;
  v235 = v57;
  v236 = &protocol witness table for Bool;
  v59 = v57;
  v190 = v57;
  v60 = swift_getOpaqueTypeMetadata2();
  v195 = v60;
  v205 = *(v60 - 8);
  __chkstk_darwin(v60);
  v188 = &v158[-v61];
  v233 = v58;
  v234 = &type metadata for Bool;
  v235 = v59;
  v236 = &protocol witness table for Bool;
  v200 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v62 = swift_getOpaqueTypeConformance2();
  v194 = v62;
  v193 = sub_630F4(&qword_1C37C8, &type metadata accessor for ScenePhase);
  v233 = v60;
  v234 = v220;
  v235 = v62;
  v236 = v193;
  v201 = swift_getOpaqueTypeMetadata2();
  v202 = *(v201 - 8);
  __chkstk_darwin(v201);
  v187 = &v158[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v64);
  v196 = &v158[-v65];
  v66 = v175;
  sub_14313C();
  v67 = v231;
  v69 = v228;
  v68 = v229;
  sub_143ACC();
  (*(v225 + 8))(v14, v227);
  v160 = sub_5CF60();
  v71 = v70;
  v159 = v72;
  sub_143F6C();
  v73 = v173;
  *v173 = v74;
  *(v73 + 8) = v75;
  v76 = v186;
  (*(v219 + 104))(v73, enum case for PopoverAttachmentAnchor.point(_:), v186);
  v77 = v230;
  v78 = *(v230 + 16);
  v223 = v230 + 16;
  v224 = v78;
  v79 = v222;
  v78(v222, v67, v66);
  v225 = *(v77 + 80);
  v80 = (v225 + 32) & ~v225;
  v227 = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = v68;
  *(v81 + 24) = v69;
  v82 = *(v77 + 32);
  v230 = v77 + 32;
  v221 = v82;
  v83 = v79;
  v82(v81 + v80, v79, v66);
  v84 = v165;
  v85 = v166;
  v86 = v215;
  sub_5644(v160, v71, v159 & 1, v73, 2);

  (*(v219 + 8))(v73, v76);
  (*(v191 + 8))(v86, v85);
  v87 = v206;
  v88 = v66;
  v89 = v231;
  sub_5FB44(v66, v206);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37D8);
  sub_5FFB4(v66);
  sub_601DC(v66);
  sub_142A1C();
  v90 = v167;
  sub_143A4C();
  sub_15340(v87, &qword_1C37B0);
  (*(v185 + 8))(v84, v90);
  v91 = v89;
  v92 = *(v89 + 16);
  swift_getKeyPath();
  v233 = v92;
  sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  LOBYTE(v233) = *(v92 + 125);
  v93 = v83;
  v94 = v224;
  v224(v83, v91, v88);
  v95 = v227;
  v96 = swift_allocObject();
  v98 = v228;
  v97 = v229;
  *(v96 + 16) = v229;
  *(v96 + 24) = v98;
  v99 = v96 + v95;
  v100 = v88;
  v221(v99, v93, v88);
  v101 = v171;
  v102 = v218;
  sub_143B5C();

  (*(v192 + 8))(v102, v101);
  v103 = (v91 + *(v100 + 56));
  v104 = *v103;
  v105 = *(v103 + 1);
  LOBYTE(v233) = v104;
  v234 = v105;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  sub_143CBC();
  LOBYTE(v233) = v232;
  v106 = v222;
  v94(v222, v91, v100);
  v107 = v227;
  v108 = swift_allocObject();
  *(v108 + 16) = v97;
  *(v108 + 24) = v98;
  v109 = v100;
  v110 = v221;
  v221(v108 + v107, v106, v100);
  v111 = v176;
  v112 = v213;
  sub_143B6C();

  (*(v197 + 8))(v112, v111);
  v113 = v231;
  LOBYTE(v233) = sub_5CE90() & 1;
  v114 = v224;
  v224(v106, v113, v100);
  v115 = v227;
  v116 = swift_allocObject();
  v117 = v228;
  v118 = v229;
  *(v116 + 16) = v229;
  *(v116 + 24) = v117;
  v110(v116 + v115, v106, v109);
  v119 = v182;
  v120 = v214;
  sub_143B5C();

  (*(v199 + 8))(v120, v119);
  swift_checkMetadataState();
  v121 = v106;
  v114(v106, v231, v109);
  v122 = v227;
  v123 = swift_allocObject();
  *(v123 + 16) = v118;
  *(v123 + 24) = v117;
  v124 = v109;
  v110(v123 + v122, v121, v109);
  v125 = v178;
  v126 = v181;
  v127 = v217;
  sub_1439BC();

  (*(v204 + 8))(v127, v126);
  v128 = v207;
  sub_142CCC();
  v129 = *(v109 + 60);
  v130 = v231;
  v131 = v231 + v129;
  v132 = *(v131 + 8);
  LOBYTE(v233) = *v131;
  LOBYTE(v92) = v233;
  v234 = v132;
  sub_143CBC();
  LOBYTE(v233) = v232;
  v133 = v179;
  sub_1439AC();
  (*(v208 + 8))(v128, v209);
  (*(v198 + 8))(v125, v133);
  LOBYTE(v233) = v92;
  v234 = v132;
  sub_143CBC();
  LOBYTE(v233) = v232;
  v134 = v222;
  v224(v222, v130, v124);
  v135 = v227;
  v136 = swift_allocObject();
  v137 = v228;
  *(v136 + 16) = v229;
  *(v136 + 24) = v137;
  v138 = v221;
  v221(v136 + v135, v134, v124);
  v139 = v188;
  v140 = v189;
  v141 = v216;
  sub_143B5C();

  (*(v203 + 8))(v141, v140);
  v142 = v124;
  v143 = v231;
  v144 = v210;
  sub_FA9B4(v210);
  v224(v134, v143, v142);
  v145 = swift_allocObject();
  v146 = v228;
  *(v145 + 16) = v229;
  *(v145 + 24) = v146;
  v138(v145 + v135, v134, v142);
  v147 = v187;
  v148 = v144;
  v149 = v195;
  v150 = v220;
  v151 = v194;
  v152 = v193;
  sub_143B5C();

  (*(v211 + 8))(v148, v150);
  (*(v205 + 8))(v139, v149);
  v233 = v149;
  v234 = v150;
  v235 = v151;
  v236 = v152;
  v153 = swift_getOpaqueTypeConformance2();
  v154 = v196;
  v155 = v201;
  sub_F6344(v147, v201, v153);
  v156 = *(v202 + 8);
  v156(v147, v155);
  sub_F6344(v154, v155, v153);
  return (v156)(v154, v155);
}

uint64_t sub_5F034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v45 = sub_14317C();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = &v41 - v9;
  v10 = sub_140D5C();
  v49 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3818);
  __chkstk_darwin(v12 - 8);
  v54 = &v41 - v13;
  v46 = sub_14330C();
  v14 = *(v46 - 8);
  __chkstk_darwin(v46);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3790);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3820);
  v51 = *(v21 - 8);
  v52 = v21;
  __chkstk_darwin(v21);
  v56 = &v41 - v22;
  sub_14360C();
  v48 = a2;
  v57 = a2;
  v58 = a3;
  v50 = a3;
  v53 = a1;
  v59 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3828);
  sub_62620();
  sub_14293C();
  sub_1432FC();
  v23 = sub_14360C();
  sub_1435FC();
  sub_1435FC();
  if (sub_1435FC() != v23)
  {
    sub_1435FC();
  }

  sub_1D4A4(&qword_1C3798, &qword_1C3790);
  sub_143A9C();
  (*(v14 + 8))(v16, v46);
  (*(v18 + 8))(v20, v17);
  type metadata accessor for NowPlayingAdvancedControlsMenu();
  v24 = v49;
  v25 = v47;
  (*(v49 + 104))(v47, enum case for NowPlayingPlayerStyle.fullScreen(_:), v10);
  sub_630F4(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle);
  sub_1449AC();
  sub_1449AC();
  if (v62 == v60 && v63 == v61)
  {
    (*(v24 + 8))(v25, v10);

    v26 = v54;
  }

  else
  {
    v27 = sub_1453BC();
    (*(v24 + 8))(v25, v10);

    v26 = v54;
    if ((v27 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v28 = v42;
  sub_FA518(v42);
  v29 = v44;
  v30 = v43;
  v31 = v45;
  (*(v44 + 104))(v43, enum case for ColorSchemeContrast.increased(_:), v45);
  sub_630F4(&qword_1C3878, &type metadata accessor for ColorSchemeContrast);
  v32 = sub_14486C();
  v33 = *(v29 + 8);
  v33(v30, v31);
  v33(v28, v31);
  if ((v32 & 1) == 0)
  {
    v35 = enum case for ColorScheme.dark(_:);
    v36 = sub_1429CC();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v26, v35, v36);
    (*(v37 + 56))(v26, 0, 1, v36);
    goto LABEL_10;
  }

LABEL_8:
  v34 = sub_1429CC();
  (*(*(v34 - 8) + 56))(v26, 1, 1, v34);
LABEL_10:
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3780);
  v39 = v55;
  sub_62928(v26, v55 + *(v38 + 36));
  return (*(v51 + 32))(v39, v56, v52);
}

uint64_t sub_5F7C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1433CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3848);
  __chkstk_darwin(v6);
  v8 = (v16 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3838);
  __chkstk_darwin(v9);
  v11 = v16 - v10;

  sub_63360(v12, v8);
  v13 = *(v6 + 36);
  *(v8 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250);
  swift_storeEnumTagMultiPayload();
  v16[1] = sub_143BCC();
  sub_627F0();
  sub_143AEC();

  sub_15340(v8, &qword_1C3848);
  sub_1433BC();
  sub_626E8();
  sub_143B0C();
  (*(v3 + 8))(v5, v2);
  sub_629C0(v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3828);
  v15 = (a1 + *(result + 36));
  *v15 = sub_5FA44;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = 0;
  return result;
}

void sub_5FA44()
{
  v4 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

  v0 = sub_14489C();

  v1 = [v4 BOOLForKey:v0];

  if ((v1 & 1) == 0)
  {
    isa = sub_144A7C().super.super.isa;

    v3 = sub_14489C();

    [v4 setValue:isa forKey:v3];
  }
}

uint64_t sub_5FB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_1432BC();
  __chkstk_darwin(v6);
  v7 = sub_1429FC();
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  __chkstk_darwin(v7);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37F0);
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  __chkstk_darwin(v10);
  v32 = &v27 - v12;
  sub_14341C();
  sub_1429DC();
  v33 = *(v4 + 16);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33(v27, v2, a1);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v28 = v13;
  v35 = v13 + v5;
  v14 = (v13 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  v29 = *(a1 + 24);
  v17 = v29;
  v30 = v16;
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  v18 = *(v4 + 32);
  v18(v15 + v13, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *(v15 + v14) = 1067869798;
  *(v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL)) = 1060320051;
  sub_630F4(&qword_1C37F8, &type metadata accessor for DragGesture);
  sub_630F4(&qword_1C3800, &type metadata accessor for DragGesture.Value);
  v19 = v31;
  v20 = v32;
  v21 = v36;
  sub_143E1C();

  (*(v37 + 8))(v19, v21);
  v22 = v27;
  v33(v27, v34, a1);
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 16) = v30;
  *(v23 + 24) = v24;
  v18(v23 + v28, v22, a1);
  sub_1D4A4(&qword_1C3808, &qword_1C37F0);
  v25 = v38;
  sub_143E0C();

  return (*(v39 + 8))(v20, v25);
}

uint64_t sub_5FFB4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_142CFC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_142CEC();
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(a1 + 16);
  (*(v4 + 32))(v11 + v10, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_630F4(&qword_1C37E8, &type metadata accessor for LongPressGesture);
  sub_143E0C();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_601DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_1429AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14299C();
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(a1 + 16);
  (*(v4 + 32))(v11 + v10, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_143E0C();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_603D0()
{
  type metadata accessor for NowPlayingAdvancedControlsMenu();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  sub_143CBC();
  return sub_14219C();
}

uint64_t sub_60454(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v3 = *(a3 + 16);
    if (*(v3 + 124) == 1)
    {
      *(v3 + 124) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }

    swift_getKeyPath();
    sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();

    v5 = *(v3 + 128);
    swift_beginAccess();
    if (*(v5 + 17) == 1)
    {
      v6 = swift_getKeyPath();
      __chkstk_darwin(v6);
      sub_630F4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

      sub_141A3C();
    }

    else
    {
      *(v5 + 17) = 0;
    }
  }

  type metadata accessor for NowPlayingAdvancedControlsMenu();
  sub_5CE90();
  return sub_14219C();
}

uint64_t sub_6072C@<X0>(void *a1@<X8>)
{
  v2 = sub_14333C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14343C();
  sub_142B2C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

double *sub_60838(double *result, double *a2)
{
  if (vabdd_f64(*a2, *result) > 0.5 || ((v2 = vabdd_f64(a2[2], result[2]), vabdd_f64(a2[1], result[1]) <= 0.5) ? (v3 = v2 > 0.5) : (v3 = 1), (v4 = vabdd_f64(a2[3], result[3]), !v3) ? (v5 = v4 > 0.5) : (v5 = 1), v5))
  {
    result = sub_5CE90();
    if (result)
    {
      v6 = type metadata accessor for NowPlayingAdvancedControlsMenu();
      return sub_5CEE8(0, v6);
    }
  }

  return result;
}

void sub_608D0(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for NowPlayingAdvancedControlsMenu();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
    sub_143CCC();
  }
}

uint64_t sub_60958()
{
  v0 = sub_14292C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ScenePhase.background(_:), v0, v2);
  v5 = sub_14291C();
  result = (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v7 = type metadata accessor for NowPlayingAdvancedControlsMenu();
    return sub_5CEE8(0, v7);
  }

  return result;
}

uint64_t sub_60A88()
{
  v0 = type metadata accessor for NowPlayingAdvancedControlsMenu();
  v1 = sub_5CE90();
  return sub_5CEE8((v1 & 1) == 0, v0);
}

unint64_t sub_60ACC()
{
  result = qword_1C3788;
  if (!qword_1C3788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3790);
    sub_1D4A4(&qword_1C3798, &qword_1C3790);
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C37A0, &qword_1C37A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3788);
  }

  return result;
}

uint64_t sub_60C1C(float a1, float a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_140D5C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for NowPlayingAdvancedControlsMenu();
  (*(v8 + 104))(v10, enum case for NowPlayingPlayerStyle.fullScreen(_:), v7);
  sub_630F4(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle);
  sub_1449AC();
  sub_1449AC();
  if (v49 == v47 && v50 == v48)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v12 = sub_1453BC();
    (*(v8 + 8))(v10, v7);

    if ((v12 & 1) == 0)
    {
LABEL_6:
      v17 = *(a4 + 16);
      swift_getKeyPath();
      v49 = v17;
      sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
      sub_141A4C();

      v18 = *(v17 + 24);
      v19 = (a4 + *(v11 + 52));
      v20 = *v19;
      v21 = *(v19 + 4);
      v22 = *(v19 + 1);
      LODWORD(v49) = v20;
      BYTE4(v49) = v21;
      v50 = v22;
      LODWORD(v47) = v18;
      BYTE4(v47) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3810);
      sub_143CCC();
      v23 = (a4 + *(v11 + 56));
      v24 = *v23;
      v25 = *(v23 + 1);
      LOBYTE(v49) = v24;
      v50 = v25;
      LOBYTE(v47) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
      return sub_143CCC();
    }
  }

  v13 = (a4 + *(v11 + 52));
  v14 = *v13;
  v15 = *(v13 + 4);
  v16 = *(v13 + 1);
  LODWORD(v49) = v14;
  BYTE4(v49) = v15;
  v50 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3810);
  sub_143CBC();
  if ((v47 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

  v27 = *&v47;
  sub_1429EC();
  v29 = round(v28 * -0.0303030303);
  if (qword_1C00A8 != -1)
  {
    swift_once();
  }

  v30 = roundf((v27 + (*&dword_1D1968 * v29)) * 10.0) / 10.0;
  sub_141F5C();
  v31 = sub_141F1C();
  v32 = *(v31 + 16);
  v33 = 32;
  while (v32)
  {
    v34 = *(v31 + v33);
    v33 += 4;
    --v32;
    if (v34 == v30)
    {

      if (v27 < a1)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v35 = sub_141F1C();
  v49 = v35;
  v36 = *(v35 + 16);
  do
  {
    v37 = v36;
    if (!v36)
    {
      break;
    }

    --v36;
  }

  while (*(v35 + 4 * v37 + 28) >= v30);
  __chkstk_darwin(v35);
  *&v46[-16] = &v49;
  v40 = sub_62574(sub_625E0, &v46[-32], v38, v39);

  if ((v40 & 0x100000000) != 0)
  {
    sub_141F3C();
    v30 = v41;
    if (v27 < a1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v30 = *&v40;
    if (v27 < a1)
    {
      goto LABEL_23;
    }
  }

LABEL_22:
  result = sub_141EDC();
  if (v30 < v42)
  {
    return result;
  }

LABEL_23:
  if (v27 > a2 || (result = sub_141EDC(), v43 >= v30))
  {
    v44 = *(a4 + 16);
    swift_getKeyPath();
    v49 = v44;
    sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();

    if (v30 != *(v44 + 24))
    {
      sub_1140EC(LODWORD(v30) | 0x100000000);
      if (*(v44 + 24) == v30)
      {
        *(v44 + 24) = v30;
        return sub_114488();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *&v46[-16] = v44;
        *&v46[-8] = v30;
        v49 = v44;
        sub_141A3C();
      }
    }
  }

  return result;
}

uint64_t sub_61224(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NowPlayingAdvancedControlsMenu();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3810);
  sub_143CBC();
  v3 = *(a2 + 16);
  swift_getKeyPath();
  sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if ((v10 & 1) == 0 && v9 == *(v3 + 24))
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_141A4C();

  swift_getKeyPath();
  sub_141A6C();

  v5 = *(v3 + 120);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (!v6)
  {
    *(v3 + 120) = v7;
    swift_getKeyPath();
    sub_141A5C();

    if (*(v3 + 124) == 1)
    {
      *(v3 + 124) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_141A3C();
    }

LABEL_7:
    sub_143CCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
    return sub_143CCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_61508()
{
  type metadata accessor for NowPlayingAdvancedControlsMenu();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  return sub_143CCC();
}

uint64_t sub_61584()
{
  v0 = type metadata accessor for NowPlayingAdvancedControlsMenu();
  v1 = sub_5CE90();
  return sub_5CEE8((v1 & 1) == 0, v0);
}

uint64_t sub_615CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v22[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3910);
  __chkstk_darwin(v2);
  v4 = v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3918);
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = sub_142BEC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  sub_FA98C(v22 - v13);
  (*(v9 + 104))(v11, enum case for DynamicTypeSize.xxxLarge(_:), v8);
  sub_630F4(&qword_1C3920, &type metadata accessor for DynamicTypeSize);
  v15 = sub_14484C();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  if (v15)
  {
    sub_143EAC();
    sub_142A9C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3928);
    (*(*(v17 - 8) + 16))(v4, v22[0], v17);
    v18 = &v4[*(v2 + 36)];
    v19 = v24;
    *v18 = v23;
    *(v18 + 1) = v19;
    *(v18 + 2) = v25;
    sub_631F4(v4, v7);
    swift_storeEnumTagMultiPayload();
    sub_1D4A4(&qword_1C3930, &qword_1C3928);
    sub_6313C();
    sub_14329C();
    return sub_15340(v4, &qword_1C3910);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3928);
    (*(*(v21 - 8) + 16))(v7, v22[0], v21);
    swift_storeEnumTagMultiPayload();
    sub_1D4A4(&qword_1C3930, &qword_1C3928);
    sub_6313C();
    return sub_14329C();
  }
}

uint64_t sub_619F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for NowPlayingAdvancedControlsMenu() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_5F034(v6, v3, v4, a1);
}

uint64_t sub_61A88(uint64_t a1, _BYTE *a2)
{
  result = type metadata accessor for NowPlayingAdvancedControlsMenu();
  if (*a2 == 1)
  {
    return sub_5CEE8(0, result);
  }

  return result;
}

uint64_t sub_61B18(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for NowPlayingAdvancedControlsMenu() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

double *sub_61BC8(double *a1, double *a2)
{
  type metadata accessor for NowPlayingAdvancedControlsMenu();

  return sub_60838(a1, a2);
}

uint64_t sub_61C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for NowPlayingAdvancedControlsMenu() - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a3(a1, a2, v9, v6, v7);
}

uint64_t sub_61D2C()
{
  type metadata accessor for NowPlayingAdvancedControlsMenu();

  return sub_60958();
}

uint64_t sub_61E20()
{
  type metadata accessor for NowPlayingAdvancedControlsMenu();

  return sub_61584();
}

uint64_t sub_61EAC()
{
  type metadata accessor for NowPlayingAdvancedControlsMenu();

  return sub_61508();
}

uint64_t sub_61F38()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for NowPlayingAdvancedControlsMenu();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;

  v7 = v2[10];
  v8 = sub_140D5C();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  (*(*(v1 - 8) + 8))(v0 + v4 + v2[11], v1);

  v9 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_14292C();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  v11 = v2[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_14317C();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((((v5 + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4, v3 | 7);
}

uint64_t sub_621A0(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlayingAdvancedControlsMenu() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL));

  return sub_60C1C(v6, v7, a1, v1 + v4);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for NowPlayingAdvancedControlsMenu();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;

  v7 = v2[10];
  v8 = sub_140D5C();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  (*(*(v1 - 8) + 8))(v0 + v4 + v2[11], v1);

  v9 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_14292C();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  v11 = v2[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_14317C();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_624B8(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlayingAdvancedControlsMenu() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_61224(a1, v4);
}

void *sub_62574(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 0;
LABEL_5:
    v9 = a4 & 1;
    return (v6 | ((a4 & 1) << 32));
  }

  v8 = a3;
  result = a1(&v10, &v8);
  if (!v4)
  {
    v6 = v10;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t *sub_625E0@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = **(v2 + 16);
    if (v3 < *(v4 + 16))
    {
      *a2 = *(v4 + 4 * v3 + 32);
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_62620()
{
  result = qword_1C3830;
  if (!qword_1C3830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3838);
    sub_626E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3830);
  }

  return result;
}

unint64_t sub_626E8()
{
  result = qword_1C3840;
  if (!qword_1C3840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3848);
    sub_627F0();
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C3868, &qword_1C3870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3840);
  }

  return result;
}

unint64_t sub_627F0()
{
  result = qword_1C3850;
  if (!qword_1C3850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3848);
    sub_630F4(&qword_1C3858, type metadata accessor for NowPlayingAdvancedControlsView);
    sub_630F4(&qword_1C3860, type metadata accessor for MenuWidthModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3850);
  }

  return result;
}

uint64_t type metadata accessor for MenuWidthModifier()
{
  result = qword_1C38D8;
  if (!qword_1C38D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_62928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3818);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_629C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_62A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_62AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_62B44()
{
  sub_62BCC(319, &qword_1C3318, &type metadata accessor for DynamicTypeSize);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_62BCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_142A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_62C20()
{
  sub_14358C();
  sub_142C6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3780);
  sub_630F4(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  sub_60ACC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C37B0);
  swift_getOpaqueTypeConformance2();
  sub_1D4A4(&qword_1C37B8, &qword_1C37B0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  swift_getOpaqueTypeConformance2();
  sub_630F4(&qword_1C37C0, type metadata accessor for CGRect);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_14292C();
  swift_getOpaqueTypeConformance2();
  sub_630F4(&qword_1C37C8, &type metadata accessor for ScenePhase);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_143D2C();
  sub_142C6C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_630F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_6313C()
{
  result = qword_1C3938;
  if (!qword_1C3938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3910);
    sub_1D4A4(&qword_1C3930, &qword_1C3928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3938);
  }

  return result;
}

uint64_t sub_631F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_63268()
{
  result = qword_1C3940;
  if (!qword_1C3940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3948);
    sub_1D4A4(&qword_1C3930, &qword_1C3928);
    sub_6313C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3940);
  }

  return result;
}

uint64_t sub_63360@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for NowPlayingAdvancedControlsView();
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[7];
  sub_143CAC();
  *v6 = v10;
  *(v6 + 1) = v11;
  v7 = a2 + v3[8];
  sub_143CAC();
  *v7 = v10;
  *(v7 + 1) = v11;
  v8 = a2 + v3[9];
  result = sub_143CAC();
  *v8 = v10;
  *(v8 + 1) = v11;
  return result;
}

uint64_t type metadata accessor for NowPlayingAdvancedControlsView()
{
  result = qword_1C3A00;
  if (!qword_1C3A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_634E8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_getKeyPath();
  sub_69738(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

  sub_141A4C();

  swift_beginAccess();
  LODWORD(v1) = *(v2 + 17);

  type metadata accessor for NowPlayingAdvancedControlsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  sub_143CBC();
  return (v4 | v1) & 1;
}

uint64_t sub_63678()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentRoute];
  v2 = [v1 outputs];

  sub_68C80();
  v3 = sub_1449DC();

  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_14531C())
  {
    v21 = v0;
    v0 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_1451FC();
      }

      else
      {
        if (v0 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v0 + 32);
      }

      v7 = v6;
      v8 = (v0 + 1);
      if (__OFADD__(v0, 1))
      {
        break;
      }

      v9 = [v6 portType];
      v10 = sub_1448DC();
      v12 = v11;
      if (v10 == sub_1448DC() && v12 == v13)
      {
      }

      else
      {
        v15 = sub_1453BC();

        if ((v15 & 1) == 0)
        {

          goto LABEL_5;
        }
      }

      v16 = [v7 portName];
      v17 = sub_1448DC();
      v19 = v18;

      if (v17 == 0x79616C50726143 && v19 == 0xE700000000000000)
      {

        return 1;
      }

      v5 = sub_1453BC();

      if (v5)
      {

        return 1;
      }

LABEL_5:
      ++v0;
      if (v8 == i)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_27:

  return 0;
}

uint64_t sub_63944()
{
  v1 = sub_142BEC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  type metadata accessor for NowPlayingAdvancedControlsView();
  sub_FA98C(v7);
  (*(v2 + 104))(v4, enum case for DynamicTypeSize.xxxLarge(_:), v1);
  sub_69738(&qword_1C3920, &type metadata accessor for DynamicTypeSize);
  v8 = sub_14484C();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (sub_634E8() & 1) == 0 && (v8)
  {
    v10 = *v0;
    swift_getKeyPath();
    v12[2] = v10;
    sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();
  }

  sub_1430EC();
  return sub_1437DC();
}

uint64_t sub_63BDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v3 = type metadata accessor for NowPlayingAdvancedControlsView();
  v4 = v3 - 8;
  v99 = *(v3 - 8);
  v98 = *(v99 + 64);
  __chkstk_darwin(v3);
  v97 = &v74[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_142D1C();
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  __chkstk_darwin(v6);
  v94 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_142CDC();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v77 = &v74[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A50);
  __chkstk_darwin(v80);
  v11 = &v74[-v10];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A58);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v76 = &v74[-v12];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A60) - 8;
  __chkstk_darwin(v79);
  v78 = &v74[-v13];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A68);
  __chkstk_darwin(v82);
  v15 = &v74[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A70);
  v17 = *(v16 - 8);
  v92 = v16;
  v93 = v17;
  __chkstk_darwin(v16);
  v81 = &v74[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A78);
  v90 = *(v19 - 8);
  v91 = v19;
  __chkstk_darwin(v19);
  v86 = &v74[-v20];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A80) - 8;
  __chkstk_darwin(v88);
  v85 = &v74[-v21];
  v22 = sub_142BEC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v74[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v74[-v27];
  sub_FA98C(&v74[-v27]);
  (*(v23 + 104))(v25, enum case for DynamicTypeSize.xxxLarge(_:), v22);
  sub_69738(&qword_1C3920, &type metadata accessor for DynamicTypeSize);
  v29 = sub_14484C();
  v30 = *(v23 + 8);
  v30(v25, v22);
  v30(v28, v22);
  *v11 = sub_14318C();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A88) + 44);
  v75 = (v29 & 1) == 0;
  sub_64620(v2, v75, &v11[v31]);
  v32 = v77;
  sub_142CCC();
  v33 = v2 + *(v4 + 36);
  v34 = v2;
  v35 = *v33;
  v36 = *(v33 + 1);
  LOBYTE(v101) = v35;
  v102 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  sub_143CBC();
  LOBYTE(v101) = v105;
  sub_1D4A4(&qword_1C3A90, &qword_1C3A50);
  v37 = v76;
  sub_1439AC();
  (*(v87 + 8))(v32, v89);
  sub_15340(v11, &qword_1C3A50);
  LOBYTE(v11) = sub_14364C();
  sub_14290C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v78;
  (*(v83 + 32))(v78, v37, v84);
  v47 = v46 + *(v79 + 44);
  *v47 = v11;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  LOBYTE(v11) = sub_14363C();
  sub_141D7C();
  sub_14290C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_10358(v46, v15, &qword_1C3A60);
  v56 = v82;
  v57 = &v15[*(v82 + 36)];
  *v57 = v11;
  *(v57 + 1) = v49;
  *(v57 + 2) = v51;
  *(v57 + 3) = v53;
  *(v57 + 4) = v55;
  v57[40] = 0;
  v58 = v94;
  sub_142D0C();
  v59 = sub_689AC();
  v60 = sub_69738(&qword_1C3AA8, &type metadata accessor for PlainButtonStyle);
  v61 = v81;
  v62 = v56;
  v63 = v95;
  sub_1438AC();
  (*(v96 + 8))(v58, v63);
  sub_15340(v15, &qword_1C3A68);
  v101 = v62;
  v102 = v63;
  v103 = v59;
  v104 = v60;
  swift_getOpaqueTypeConformance2();
  sub_68B48();
  v64 = v86;
  v65 = v92;
  sub_14390C();
  (*(v93 + 8))(v61, v65);
  v66 = v85;
  (*(v90 + 32))(v85, v64, v91);
  v66[*(v88 + 44)] = v75;
  v67 = v66;
  v68 = v97;
  sub_68B9C(v34, v97);
  v69 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v70 = swift_allocObject();
  sub_68C04(v68, v70 + v69);
  v71 = v100;
  sub_10358(v67, v100, &qword_1C3A80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AB8);
  v73 = (v71 + *(result + 36));
  *v73 = sub_68C68;
  v73[1] = v70;
  v73[2] = 0;
  v73[3] = 0;
  return result;
}

uint64_t sub_64620@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v130 = a2;
  v135 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AC8);
  __chkstk_darwin(v4 - 8);
  v131 = (v119 - v5);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AD0);
  __chkstk_darwin(v129);
  v134 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v128 = v119 - v8;
  __chkstk_darwin(v9);
  v133 = v119 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AD8);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v120 = v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AE0);
  __chkstk_darwin(v12 - 8);
  v132 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v139 = v119 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AE8);
  __chkstk_darwin(v16 - 8);
  v18 = v119 - v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AF0);
  __chkstk_darwin(v121);
  v124 = v119 - v19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AF8);
  __chkstk_darwin(v123);
  v127 = v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v122 = v119 - v22;
  __chkstk_darwin(v23);
  v138 = v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B00);
  __chkstk_darwin(v25 - 8);
  v27 = v119 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B08);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = v119 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B10);
  __chkstk_darwin(v35 - 8);
  v137 = v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = v119 - v38;
  v136 = a1;
  v40 = *a1;
  swift_getKeyPath();
  v41 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
  v140 = v40;
  v42 = sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  v119[1] = v41;
  v119[0] = v42;
  sub_141A4C();

  if (*(v40 + 67) == 1)
  {
    *v27 = sub_14319C();
    *(v27 + 1) = 0;
    v27[16] = 0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B30);
    sub_65174(v136, &v27[*(v43 + 44)]);
    v44 = sub_14363C();
    sub_141D7C();
    sub_14290C();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_10358(v27, v31, &qword_1C3B00);
    v53 = &v31[*(v28 + 36)];
    *v53 = v44;
    *(v53 + 1) = v46;
    *(v53 + 2) = v48;
    *(v53 + 3) = v50;
    *(v53 + 4) = v52;
    v53[40] = 0;
    sub_10358(v31, v34, &qword_1C3B08);
    sub_10358(v34, v39, &qword_1C3B08);
    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = v39;
  (*(v29 + 56))(v39, v54, 1, v28);
  *v18 = sub_14319C();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B18);
  v57 = v130;
  v58 = v136;
  sub_65ACC(v136, v130 & 1, &v18[*(v56 + 44)]);
  v59 = sub_14364C();
  sub_141D7C();
  sub_14290C();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v124;
  sub_10358(v18, v124, &qword_1C3AE8);
  v69 = v68 + *(v121 + 36);
  *v69 = v59;
  *(v69 + 8) = v61;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65;
  *(v69 + 32) = v67;
  *(v69 + 40) = 0;
  v70 = sub_14363C();
  if (sub_141D7C())
  {
    swift_getKeyPath();
    v140 = v40;
    sub_141A4C();
  }

  sub_14290C();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v122;
  sub_10358(v68, v122, &qword_1C3AF0);
  v80 = v79 + *(v123 + 36);
  *v80 = v70;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  sub_10358(v79, v138, &qword_1C3AF8);
  v81 = sub_141D7C();
  v82 = v126;
  if (v81)
  {
    v83 = v120;
    sub_143DEC();
    v84 = sub_14361C();
    sub_14290C();
    v85 = v83 + *(v82 + 36);
    *v85 = v84;
    *(v85 + 8) = v86;
    *(v85 + 16) = v87;
    *(v85 + 24) = v88;
    *(v85 + 32) = v89;
    *(v85 + 40) = 0;
    v90 = v139;
    sub_10358(v83, v139, &qword_1C3AD8);
    v91 = 0;
  }

  else
  {
    v91 = 1;
    v90 = v139;
  }

  (*(v125 + 56))(v90, v91, 1, v82);
  v92 = sub_14318C();
  v93 = v131;
  *v131 = v92;
  v93[1] = 0;
  *(v93 + 16) = 0;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B20);
  sub_66D88(v58, v57 & 1, v93 + *(v94 + 44));
  v95 = v90;
  v96 = sub_14363C();
  sub_14290C();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = v93;
  v106 = v128;
  sub_10358(v105, v128, &qword_1C3AC8);
  v107 = v106 + *(v129 + 36);
  *v107 = v96;
  *(v107 + 8) = v98;
  *(v107 + 16) = v100;
  *(v107 + 24) = v102;
  *(v107 + 32) = v104;
  *(v107 + 40) = 0;
  v108 = v106;
  v109 = v133;
  sub_10358(v108, v133, &qword_1C3AD0);
  v110 = v137;
  sub_1D19C(v55, v137, &qword_1C3B10);
  v111 = v138;
  v112 = v127;
  sub_1D19C(v138, v127, &qword_1C3AF8);
  v113 = v132;
  sub_1D19C(v95, v132, &qword_1C3AE0);
  v114 = v134;
  sub_1D19C(v109, v134, &qword_1C3AD0);
  v115 = v110;
  v116 = v135;
  sub_1D19C(v115, v135, &qword_1C3B10);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B28);
  sub_1D19C(v112, v116 + v117[12], &qword_1C3AF8);
  sub_1D19C(v113, v116 + v117[16], &qword_1C3AE0);
  sub_1D19C(v114, v116 + v117[20], &qword_1C3AD0);
  sub_15340(v109, &qword_1C3AD0);
  sub_15340(v139, &qword_1C3AE0);
  sub_15340(v111, &qword_1C3AF8);
  sub_15340(v55, &qword_1C3B10);
  sub_15340(v114, &qword_1C3AD0);
  sub_15340(v113, &qword_1C3AE0);
  sub_15340(v112, &qword_1C3AF8);
  return sub_15340(v137, &qword_1C3B10);
}

uint64_t sub_65174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v38 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AD8) - 8;
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_1432AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B38);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B40);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  *v12 = sub_14307C();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B48);
  sub_65594(v35, &v12[*(v20 + 44)]);
  sub_142D9C();
  sub_1D4A4(&qword_1C3B50, &qword_1C3B38);
  sub_69738(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect);
  sub_1438CC();
  (*(v7 + 8))(v9, v6);
  sub_15340(v12, &qword_1C3B38);
  LOBYTE(v12) = sub_14364C();
  sub_14290C();
  v21 = &v19[*(v14 + 44)];
  *v21 = v12;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_143DEC();
  LOBYTE(v12) = sub_14361C();
  sub_14290C();
  v26 = &v5[*(v36 + 44)];
  *v26 = v12;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_1D19C(v19, v16, &qword_1C3B40);
  v31 = v37;
  sub_1D19C(v5, v37, &qword_1C3AD8);
  v32 = v38;
  sub_1D19C(v16, v38, &qword_1C3B40);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B58);
  sub_1D19C(v31, v32 + *(v33 + 48), &qword_1C3AD8);
  sub_15340(v5, &qword_1C3AD8);
  sub_15340(v19, &qword_1C3B40);
  sub_15340(v31, &qword_1C3AD8);
  return sub_15340(v16, &qword_1C3B40);
}

uint64_t sub_65594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NowPlayingAdvancedControlsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B60);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  sub_68B9C(a1, &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_68C04(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C30);
  sub_1D4A4(&qword_1C1C38, &qword_1C1C30);
  sub_143CFC();
  LOBYTE(a1) = sub_14366C();
  sub_14290C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B68) + 36)];
  *v24 = a1;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  LOBYTE(a1) = sub_14361C();
  sub_14290C();
  v25 = &v13[*(v8 + 44)];
  *v25 = a1;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_1D19C(v13, v10, &qword_1C3B60);
  sub_1D19C(v10, a2, &qword_1C3B60);
  v30 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B70) + 48);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_15340(v13, &qword_1C3B60);
  return sub_15340(v10, &qword_1C3B60);
}

uint64_t sub_65880(uint64_t result)
{
  v1 = *result;
  if (*(*result + 120))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  if (*(v1 + 125) == 1)
  {
    *(v1 + 125) = 1;
  }

  else
  {
    v3 = swift_getKeyPath();
    __chkstk_darwin(v3);
    sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_65A58()
{
  v0 = sub_1430EC();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_65ACC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = type metadata accessor for NowPlayingAdvancedControlsView();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v35 = v6;
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1432AC();
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BA8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BB0);
  __chkstk_darwin(v33);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BB8);
  v36 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  if (sub_141D7C())
  {
    *v13 = sub_14318C();
    *(v13 + 1) = 0;
    v30 = a3;
    v13[16] = 1;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BC0) + 44);
    v29 = v7;
    v20 = a1;
    v21 = &v13[v19];
    *v21 = sub_14307C();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BC8);
    sub_65FAC(v20, v31 & 1, &v21[*(v22 + 44)]);
    sub_142D9C();
    sub_1D4A4(&qword_1C3BD0, &qword_1C3BA8);
    sub_69738(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect);
    sub_1438CC();
    (*(v32 + 8))(v10, v8);
    sub_15340(v13, &qword_1C3BA8);
    v15[*(v33 + 36)] = 0;
    v23 = v29;
    sub_68B9C(v20, v29);
    v24 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v25 = swift_allocObject();
    sub_68C04(v23, v25 + v24);
    sub_68FA0();
    sub_14392C();

    sub_15340(v15, &qword_1C3BB0);
    v26 = v30;
    (*(v36 + 32))(v30, v18, v16);
    return (*(v36 + 56))(v26, 0, 1, v16);
  }

  else
  {
    v28 = *(v36 + 56);

    return v28(a3, 1, 1, v16);
  }
}

uint64_t sub_65FAC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BF0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = *a1;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  swift_retain_n();
  sub_143DCC();
  v43 = a2;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BF8);
  sub_1D4A4(&qword_1C3C00, &qword_1C3BF8);
  sub_143D6C();
  v15 = sub_14366C();
  sub_14290C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C08) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_14361C();
  sub_14290C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C10) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  swift_getKeyPath();
  v45 = v12;
  sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  LOBYTE(a1) = *(v12 + 88);
  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = (a1 & 1) == 0;
  v37 = &v11[*(v6 + 44)];
  *v37 = KeyPath;
  v37[1] = sub_691B4;
  v37[2] = v36;
  sub_1D19C(v11, v8, &qword_1C3BF0);
  v38 = v42;
  sub_1D19C(v8, v42, &qword_1C3BF0);
  v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C18) + 48);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_15340(v11, &qword_1C3BF0);
  return sub_15340(v8, &qword_1C3BF0);
}

double sub_66374@<D0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_14306C();
  v26 = 1;
  sub_665B4(a1, a2, &v15);
  v35 = v23;
  v36[0] = v24[0];
  *(v36 + 9) = *(v24 + 9);
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v37[7] = v22;
  v37[8] = v23;
  v38[0] = v24[0];
  *(v38 + 9) = *(v24 + 9);
  v37[4] = v19;
  v37[5] = v20;
  v37[6] = v21;
  v37[0] = v15;
  v37[1] = v16;
  v37[2] = v17;
  v37[3] = v18;
  sub_1D19C(&v27, &v14, &qword_1C3C20);
  sub_15340(v37, &qword_1C3C20);
  *(&v25[7] + 7) = v34;
  *(&v25[8] + 7) = v35;
  *(&v25[9] + 7) = v36[0];
  v25[10] = *(v36 + 9);
  *(&v25[3] + 7) = v30;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(&v25[6] + 7) = v33;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  *(&v25[2] + 7) = v29;
  v7 = v25[6];
  *(a3 + 129) = v25[7];
  v8 = v25[9];
  *(a3 + 145) = v25[8];
  *(a3 + 161) = v8;
  *(a3 + 177) = v25[10];
  v9 = v25[2];
  *(a3 + 65) = v25[3];
  v10 = v25[5];
  *(a3 + 81) = v25[4];
  *(a3 + 97) = v10;
  *(a3 + 113) = v7;
  result = *v25;
  v12 = v25[1];
  *(a3 + 17) = v25[0];
  *(a3 + 33) = v12;
  v13 = v26;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v13;
  *(a3 + 49) = v9;
  return result;
}

uint64_t sub_665B4@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_143C2C();
  }

  v6 = sub_14319C();
  sub_66870(a2, &v26);
  v20 = *&v27[80];
  v21[0] = *&v27[96];
  *(v21 + 9) = *&v27[105];
  v16 = *&v27[16];
  v17 = *&v27[32];
  v18 = *&v27[48];
  v19 = *&v27[64];
  v14 = v26;
  v15 = *v27;
  v22[5] = *&v27[64];
  v22[6] = *&v27[80];
  v23[0] = *&v27[96];
  *(v23 + 9) = *&v27[105];
  v22[2] = *&v27[16];
  v22[3] = *&v27[32];
  v22[4] = *&v27[48];
  v22[0] = v26;
  v22[1] = *v27;
  sub_1D19C(&v14, &v24, &qword_1C3C28);
  sub_15340(v22, &qword_1C3C28);
  *&v13[103] = v20;
  *&v13[87] = v19;
  *&v13[39] = v16;
  *&v13[23] = v15;
  *&v13[119] = v21[0];
  *&v13[128] = *(v21 + 9);
  *&v13[55] = v17;
  *&v13[71] = v18;
  *&v13[7] = v14;
  *&v25[81] = *&v13[80];
  *&v25[97] = *&v13[96];
  *&v25[113] = *&v13[112];
  *&v25[129] = *(v21 + 9);
  *&v25[17] = *&v13[16];
  *&v25[33] = *&v13[32];
  *&v25[49] = *&v13[48];
  *&v25[65] = *&v13[64];
  v24 = v6;
  v25[0] = 0;
  *&v25[1] = *v13;

  sub_1D19C(&v24, &v26, &qword_1C3C30);

  v7 = *&v25[80];
  *(a3 + 120) = *&v25[96];
  v8 = *&v25[128];
  *(a3 + 136) = *&v25[112];
  *(a3 + 152) = v8;
  v9 = *&v25[16];
  *(a3 + 56) = *&v25[32];
  v10 = *&v25[64];
  *(a3 + 72) = *&v25[48];
  *(a3 + 88) = v10;
  *(a3 + 104) = v7;
  v11 = *v25;
  *(a3 + 8) = v24;
  *(a3 + 24) = v11;
  *(a3 + 40) = v9;
  *&v27[81] = *&v13[80];
  *&v27[97] = *&v13[96];
  *&v27[113] = *&v13[112];
  v28 = *&v13[128];
  *&v27[17] = *&v13[16];
  *&v27[33] = *&v13[32];
  *&v27[49] = *&v13[48];
  *&v27[65] = *&v13[64];
  *a3 = v5;
  *(a3 + 168) = v25[144];
  v26 = v6;
  v27[0] = 0;
  *&v27[1] = *v13;
  sub_15340(&v26, &qword_1C3C30);
}

uint64_t sub_66870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1430EC();
  v4 = sub_1437DC();
  v36 = v5;
  v37 = v6;
  v35 = v7;
  v8 = *a1;
  swift_getKeyPath();
  v46 = v8;
  sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if (*(v8 + 88))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    KeyPath = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = a1 + *(type metadata accessor for NowPlayingAdvancedControlsView() + 36);
    v22 = *v21;
    v23 = *(v21 + 1);
    LOBYTE(v46) = v22;
    v47 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
    sub_143CBC();
    sub_1430EC();
    v24 = sub_1437DC();
    v26 = v25;
    v28 = v27;
    v11 = v29;
    KeyPath = swift_getKeyPath();
    if (qword_1BFF40 != -1)
    {
      swift_once();
    }

    v14 = qword_1C3950;
    v13 = swift_getKeyPath();
    LOBYTE(v39) = v28 & 1;
    v16 = v28 & 1;

    v30 = sub_14363C();
    sub_14290C();
    LOBYTE(v46) = 0;
    v15 = v30;
    v9 = v24;
    v10 = v26;
  }

  *&v39 = v9;
  *(&v39 + 1) = v10;
  *&v40 = v16;
  *(&v40 + 1) = v11;
  v41 = KeyPath;
  v42 = 0;
  *&v43 = v13;
  *(&v43 + 1) = v14;
  *&v44 = v15;
  *(&v44 + 1) = v17;
  *v45 = v18;
  *&v45[8] = v19;
  *&v45[16] = v20;
  v45[24] = 0;
  v31 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v31;
  *(a2 + 121) = *&v45[9];
  v32 = *v45;
  v33 = v43;
  *(a2 + 96) = v44;
  *(a2 + 112) = v32;
  v38[112] = v35 & 1;
  *a2 = v4;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v37;
  *(a2 + 64) = KeyPath;
  *(a2 + 80) = v33;
  v46 = v9;
  v47 = v10;
  v48 = v16;
  v49 = v11;
  v50 = KeyPath;
  v51 = 0;
  v52 = v13;
  v53 = v14;
  v54 = v15;
  v55 = v17;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = 0;
  sub_63AC(v4, v36, v35 & 1);

  sub_1D19C(&v39, v38, &qword_1C3C38);
  sub_15340(&v46, &qword_1C3C38);
  sub_1B4AC(v4, v36, v35 & 1);
}

uint64_t sub_66BE0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if (*(v1 + 88) == 1)
  {
    v3 = swift_allocObject();
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = v1;
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v1;
    swift_retain_n();
    sub_143DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408);
    sub_143D9C();
    sub_143DAC();
  }

  return result;
}

uint64_t sub_66D88@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v120 = a3;
  v109 = sub_1429CC();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v106 = &v102 - v6;
  v117 = sub_143F3C();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B78);
  __chkstk_darwin(v110);
  v114 = &v102 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B80);
  __chkstk_darwin(v113);
  v119 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &v102 - v11;
  __chkstk_darwin(v12);
  v118 = &v102 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B88) - 8;
  __chkstk_darwin(v103);
  v15 = (&v102 - v14);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B90) - 8;
  __chkstk_darwin(v104);
  v116 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v102 - v18;
  __chkstk_darwin(v20);
  v122 = &v102 - v21;
  v22 = *a1;
  v23 = type metadata accessor for NowPlayingAdvancedControlsView();
  v24 = a1 + *(v23 + 28);
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v123) = v25;
  v124 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  sub_143CDC();
  v27 = v126;
  v28 = v127;
  v105 = v23;
  v29 = a1 + *(v23 + 32);
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v123) = v30;
  v124 = v31;
  sub_143CDC();
  v32 = v126;
  LOBYTE(a1) = v127;
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250);
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for NowPlayingAdvancedSpeedControls();
  *(v15 + v33[5]) = v22;
  v34 = v15 + v33[6];
  *v34 = v27;
  v34[16] = v28;
  v35 = v15 + v33[7];
  *v35 = v32;
  v35[16] = a1;
  v36 = v15 + v33[8];
  v123 = 0;
  v124 = 0;
  v125 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B98);
  sub_143CAC();
  v37 = v127;
  v38 = v128;
  *v36 = v126;
  v36[16] = v37;
  *(v36 + 3) = v38;
  v39 = sub_14366C();
  sub_14290C();
  v40 = v15 + *(v103 + 44);
  *v40 = v39;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  v45 = sub_14361C();
  sub_14290C();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_10358(v15, v19, &qword_1C3B88);
  v54 = &v19[*(v104 + 44)];
  *v54 = v45;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_10358(v19, v122, &qword_1C3B90);
  v55 = sub_63944();
  v57 = v56;
  v59 = v58;
  if (qword_1BFF48 != -1)
  {
    swift_once();
  }

  v60 = sub_1437CC();
  v62 = v61;
  v64 = v63;
  sub_1B4AC(v55, v57, v59 & 1);

  if (qword_1BFF50 != -1)
  {
    swift_once();
  }

  *&v126 = qword_1C3960;

  v65 = sub_14378C();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_1B4AC(v60, v62, v64 & 1);

  v72 = v106;
  sub_FA9DC(v106);
  v73 = v108;
  v74 = v107;
  v75 = v109;
  (*(v108 + 104))(v107, enum case for ColorScheme.dark(_:), v109);
  v76 = sub_1429BC();
  v77 = *(v73 + 8);
  v77(v74, v75);
  v77(v72, v75);
  if (v76)
  {
    if (qword_1BFF58 != -1)
    {
      swift_once();
    }

    v78 = qword_1C3968;
  }

  else
  {
    if (qword_1BFF60 != -1)
    {
      swift_once();
    }

    v78 = qword_1C3980;
  }

  v79 = v117;
  v80 = __swift_project_value_buffer(v117, v78);
  v81 = v115;
  v82 = v112;
  (*(v115 + 16))(v112, v80, v79);
  v83 = v114;
  (*(v81 + 32))(&v114[*(v110 + 36)], v82, v79);
  *v83 = v65;
  *(v83 + 8) = v67;
  *(v83 + 16) = v69 & 1;
  *(v83 + 24) = v71;
  v84 = sub_14361C();
  sub_14290C();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v111;
  sub_10358(v83, v111, &qword_1C3B78);
  v94 = v93 + *(v113 + 36);
  *v94 = v84;
  *(v94 + 8) = v86;
  *(v94 + 16) = v88;
  *(v94 + 24) = v90;
  *(v94 + 32) = v92;
  *(v94 + 40) = 0;
  v95 = v118;
  sub_10358(v93, v118, &qword_1C3B80);
  v96 = v122;
  v97 = v116;
  sub_1D19C(v122, v116, &qword_1C3B90);
  v98 = v119;
  sub_1D19C(v95, v119, &qword_1C3B80);
  v99 = v120;
  sub_1D19C(v97, v120, &qword_1C3B90);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BA0);
  sub_1D19C(v98, v99 + *(v100 + 48), &qword_1C3B80);
  sub_15340(v95, &qword_1C3B80);
  sub_15340(v96, &qword_1C3B90);
  sub_15340(v98, &qword_1C3B80);
  return sub_15340(v97, &qword_1C3B90);
}

uint64_t sub_67740()
{
  sub_63678();
  type metadata accessor for NowPlayingAdvancedControlsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  return sub_143CCC();
}

uint64_t sub_677E0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_67930(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_67A6C()
{
  type metadata accessor for NowPlayingPlaybackControlsViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_67B60(319, &qword_1C3A10, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_67B60(319, &qword_1C3318, &type metadata accessor for DynamicTypeSize);
      if (v2 <= 0x3F)
      {
        sub_5C91C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_67B60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_142A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_67BD4()
{
  result = sub_14371C();
  qword_1C3950 = result;
  return result;
}

uint64_t sub_67BF4()
{
  result = sub_14371C();
  qword_1C3958 = result;
  return result;
}

void sub_67C14()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  v1 = sub_144FAC();

  qword_1C3960 = v1;
}

uint64_t sub_67C90(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_143F3C();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

uint64_t sub_67D18@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v38 = a3;
  v36 = sub_1433EC();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C80);
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v31 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C88);
  __chkstk_darwin(v33);
  v32 = &v31 - v10;
  v11 = sub_1431BC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C90);
  v15 = *(v35 - 8);
  __chkstk_darwin(v35);
  v17 = &v31 - v16;
  if (a2)
  {
    sub_1431AC();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C98);
    v19 = sub_1D4A4(&qword_1C3CA0, &qword_1C3C98);
    v20 = sub_69738(&qword_1C3CB0, &type metadata accessor for TitleOnlyLabelStyle);
    sub_14389C();
    (*(v12 + 8))(v14, v11);
    v21 = v35;
    (*(v15 + 16))(v32, v17, v35);
    swift_storeEnumTagMultiPayload();
    v39 = v18;
    v40 = v11;
    v41 = v19;
    v42 = v20;
    swift_getOpaqueTypeConformance2();
    v22 = sub_69738(&qword_1C3CA8, &type metadata accessor for TitleAndIconLabelStyle);
    v39 = v18;
    v40 = v36;
    v41 = v19;
    v42 = v22;
    swift_getOpaqueTypeConformance2();
    sub_14329C();
    return (*(v15 + 8))(v17, v21);
  }

  else
  {
    sub_1433DC();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C98);
    v25 = sub_1D4A4(&qword_1C3CA0, &qword_1C3C98);
    v26 = v4;
    v27 = sub_69738(&qword_1C3CA8, &type metadata accessor for TitleAndIconLabelStyle);
    v28 = v36;
    sub_14389C();
    (*(v26 + 8))(v6, v28);
    v29 = v37;
    (*(v7 + 16))(v32, v9, v37);
    swift_storeEnumTagMultiPayload();
    v30 = sub_69738(&qword_1C3CB0, &type metadata accessor for TitleOnlyLabelStyle);
    v39 = v24;
    v40 = v11;
    v41 = v25;
    v42 = v30;
    swift_getOpaqueTypeConformance2();
    v39 = v24;
    v40 = v28;
    v41 = v25;
    v42 = v27;
    swift_getOpaqueTypeConformance2();
    sub_14329C();
    return (*(v7 + 8))(v9, v29);
  }
}

uint64_t sub_68320@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_14307C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C68);
  return sub_68378((a1 + *(v2 + 44)));
}

uint64_t sub_68378@<X0>(char *a1@<X8>)
{
  v2 = sub_1434CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_143C2C();
  if (qword_1BFF68 != -1)
  {
    swift_once();
  }

  v10 = qword_1C3998;
  KeyPath = swift_getKeyPath();

  sub_143EAC();
  sub_142A9C();
  if (sub_1434BC())
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  sub_1434DC();
  v13 = *(v3 + 16);
  v13(v5, v8, v2);
  *&v23 = v9;
  *(&v23 + 1) = KeyPath;
  *v24 = v10;
  *&v24[8] = v20;
  *&v24[24] = v21;
  *&v24[40] = v22;
  *&v24[56] = v12;
  v14 = *v24;
  *a1 = v23;
  *(a1 + 1) = v14;
  v15 = *&v24[32];
  *(a1 + 2) = *&v24[16];
  *(a1 + 3) = v15;
  *(a1 + 4) = *&v24[48];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C70);
  v13(&a1[*(v16 + 48)], v5, v2);
  sub_1D19C(&v23, v25, &qword_1C3C78);
  v17 = *(v3 + 8);
  v17(v8, v2);
  v17(v5, v2);
  v25[0] = v9;
  v25[1] = KeyPath;
  v25[2] = v10;
  v26 = v20;
  v27 = v21;
  v28 = v22;
  v29 = v12;
  return sub_15340(v25, &qword_1C3C78);
}

uint64_t sub_6864C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B60);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_14372C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.headline(_:), v3, v5);
  v8 = sub_1436BC();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_1436CC();
  v9 = sub_1436FC();
  sub_15340(v2, &unk_1C2B60);
  result = (*(v4 + 8))(v7, v3);
  qword_1C3998 = v9;
  return result;
}

uint64_t sub_68804(uint64_t a1)
{
  v2 = sub_1434EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2, v5);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C58);
  sub_1D4A4(&qword_1C3C60, &qword_1C3C58);
  return sub_143CFC();
}

unint64_t sub_689AC()
{
  result = qword_1C3A98;
  if (!qword_1C3A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A68);
    sub_68A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3A98);
  }

  return result;
}

unint64_t sub_68A38()
{
  result = qword_1C3AA0;
  if (!qword_1C3AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A50);
    sub_1D4A4(&qword_1C3A90, &qword_1C3A50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3AA0);
  }

  return result;
}

unint64_t sub_68B48()
{
  result = qword_1C3AB0;
  if (!qword_1C3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3AB0);
  }

  return result;
}

uint64_t sub_68B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingAdvancedControlsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_68C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingAdvancedControlsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_68C80()
{
  result = qword_1C3AC0;
  if (!qword_1C3AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C3AC0);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for NowPlayingAdvancedControlsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1429CC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_142BEC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_68F2C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NowPlayingAdvancedControlsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_68FA0()
{
  result = qword_1C3BD8;
  if (!qword_1C3BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3BA8);
    sub_1432AC();
    sub_1D4A4(&qword_1C3BD0, &qword_1C3BA8);
    sub_69738(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C3BE0, &qword_1C3BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3BD8);
  }

  return result;
}

uint64_t sub_69148@<X0>(_BYTE *a1@<X8>)
{
  result = sub_142F1C();
  *a1 = result;
  return result;
}

uint64_t sub_691BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_142F1C();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LabelAXStylingViewModifier(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NowPlayingTransportController.ActiveAccessoryIndicator(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_6938C()
{
  result = qword_1C3C40;
  if (!qword_1C3C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3AB8);
    sub_69418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3C40);
  }

  return result;
}

unint64_t sub_69418()
{
  result = qword_1C3C48;
  if (!qword_1C3C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A68);
    sub_142D1C();
    sub_689AC();
    sub_69738(&qword_1C3AA8, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_68B48();
    swift_getOpaqueTypeConformance2();
    sub_69588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3C48);
  }

  return result;
}

unint64_t sub_69588()
{
  result = qword_1C3C50;
  if (!qword_1C3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3C50);
  }

  return result;
}

uint64_t sub_69614()
{
  v1 = sub_1434EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_6969C()
{
  sub_1434EC();
  v0 = sub_1434AC();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_69738(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_697C8()
{
  result = qword_1C3CC8;
  if (!qword_1C3CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3C98);
    sub_1431BC();
    sub_1D4A4(&qword_1C3CA0, &qword_1C3C98);
    sub_69738(&qword_1C3CB0, &type metadata accessor for TitleOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_1433EC();
    sub_69738(&qword_1C3CA8, &type metadata accessor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3CC8);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_699B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_699FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_69A80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CD8);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  *v6 = sub_14307C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CE0);
  sub_69D0C(v1, &v6[*(v7 + 44)]);
  v8 = *v1;
  swift_getKeyPath();
  v19[0] = v8;
  sub_6B8FC(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v20 = *(v8 + 24);
  v9 = swift_allocObject();
  v10 = *(v1 + 80);
  *(v9 + 80) = *(v1 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(v1 + 96);
  v11 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v11;
  v12 = *(v1 + 48);
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = v12;
  sub_6AAC0(v1, v19);
  sub_1D4A4(&qword_1C3CE8, &qword_1C3CD8);
  sub_143B5C();

  sub_6AAF8(v6);
  v13 = swift_allocObject();
  v14 = *(v2 + 80);
  *(v13 + 80) = *(v2 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(v2 + 96);
  v15 = *(v2 + 16);
  *(v13 + 16) = *v2;
  *(v13 + 32) = v15;
  v16 = *(v2 + 48);
  *(v13 + 48) = *(v2 + 32);
  *(v13 + 64) = v16;
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF0) + 36));
  *v17 = sub_6AB60;
  v17[1] = v13;
  v17[2] = 0;
  v17[3] = 0;
  return sub_6AAC0(v2, v19);
}

uint64_t sub_69D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  v23[0] = v3;
  sub_6B8FC(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  sub_6B6A4(v4);

  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_6B878;
  *(v9 + 24) = v5;
  sub_6AAC0(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D18);
  sub_1D4A4(&qword_1C3D20, &qword_1C3D10);
  sub_1D4A4(&qword_1C3D28, &qword_1C3D18);
  sub_143DFC();
  swift_getKeyPath();
  v23[0] = v3;
  sub_141A4C();

  v10 = *(v3 + 128);
  swift_getKeyPath();
  v23[0] = v10;
  sub_6B8FC(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

  sub_141A4C();

  swift_beginAccess();
  v11 = *(v10 + 56);

  swift_getKeyPath();
  sub_141A4C();

  v12 = *(v3 + 128);
  swift_getKeyPath();

  sub_141A4C();

  swift_beginAccess();
  v13 = *(v12 + 56);

  sub_143F7C();
  v15 = v14;
  v17 = v16;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D30) + 36));
  *v18 = v11;
  v18[1] = v13;
  v18[2] = v15;
  v18[3] = v17;
  swift_getKeyPath();
  sub_141A4C();

  v19 = *(v3 + 128);
  swift_getKeyPath();

  sub_141A4C();

  swift_beginAccess();
  v20 = *(v19 + 64);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D38);
  *(a2 + *(result + 36)) = v20;
  return result;
}

uint64_t sub_6A198@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v49 = a3;
  v50 = a1;
  v6 = type metadata accessor for NowPlayingSpeedPresetView();
  __chkstk_darwin(v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v47 = &v44 - v12;
  v13 = *a2;
  v55 = *(a2 + 1);
  LOBYTE(v56) = *(a2 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408);
  sub_143DBC();
  v45 = *(&v51 + 1);
  v14 = v51;
  v15 = v52;
  v16 = *(a2 + 3);
  v55 = *(a2 + 2);
  v56 = v16;
  v57 = *(a2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D40);
  sub_143DBC();
  v44 = v51;
  v17 = v52;
  v18 = v53;
  v19 = v54;
  v55 = *(a2 + 9);
  *&v56 = a2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8);
  sub_143CBC();
  v20 = BYTE8(v51);
  v21 = v51 == v50;
  v46 = v13;
  *v10 = v13;
  *(v10 + 1) = v14;
  *(v10 + 2) = v45;
  v10[24] = v15;
  *(v10 + 2) = v44;
  *(v10 + 6) = v17;
  *(v10 + 7) = v18;
  v10[64] = v19;
  *(v10 + 17) = a4;
  v10[72] = v21 & ~v20;
  v22 = v6[9];
  *&v10[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128);
  swift_storeEnumTagMultiPayload();
  v23 = &v10[v6[10]];
  *&v51 = 0x3FF0000000000000;
  sub_143CAC();
  v24 = *(&v55 + 1);
  *v23 = v55;
  *(v23 + 1) = v24;
  v25 = &v10[v6[11]];
  *&v51 = 0;
  sub_143CAC();
  v26 = *(&v55 + 1);
  *v25 = v55;
  *(v25 + 1) = v26;
  v27 = &v10[v6[12]];
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  sub_143CAC();
  v28 = v56;
  *v27 = v55;
  *(v27 + 2) = v28;
  v29 = v6[13];
  if (qword_1BFF90 != -1)
  {
    swift_once();
  }

  v30 = &v10[v29];
  *&v51 = qword_1C3D90;

  sub_143CAC();
  v31 = *(&v55 + 1);
  *v30 = v55;
  *(v30 + 1) = v31;
  v32 = &v10[v6[14]];
  *&v51 = 0;
  sub_143CAC();
  v33 = *(&v55 + 1);
  *v32 = v55;
  *(v32 + 1) = v33;
  v34 = &v10[v6[15]];
  *&v51 = 0x3FF0000000000000;
  sub_143CAC();
  v35 = *(&v55 + 1);
  *v34 = v55;
  *(v34 + 1) = v35;
  v36 = v47;
  sub_6B954(v10, v47);
  swift_getKeyPath();
  v37 = v46;
  *&v55 = v46;
  sub_6B8FC(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v38 = *(*(v37 + 32) + 16) - 1;
  LOBYTE(v34) = v38 <= v50;
  v39 = v38 > v50;
  v40 = v48;
  sub_6B9B8(v36, v48);
  v41 = v49;
  sub_6B9B8(v40, v49);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D48) + 48);
  *v42 = 0;
  *(v42 + 8) = v39;
  *(v42 + 9) = v34;
  sub_6BA1C(v36);
  return sub_6BA1C(v40);
}

uint64_t sub_6A5FC(uint64_t a1, float *a2)
{
  sub_6A668(*a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8);
  return sub_143CCC();
}

uint64_t sub_6A668(float a1)
{
  v3 = *v1;
  swift_getKeyPath();
  v25 = v3;
  sub_6B8FC(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v5 = sub_55D54(v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_6AB70(*(v5 + 16), 0);
    v8 = sub_6B590(&v25, v7 + 8, v6, v5);
    sub_7774();
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_5:
  v25 = v7;

  sub_6ABF4(&v25);

  v9 = v25;
  v10 = *(v25 + 2);
  if (!v10)
  {
    v11 = 0;
    v14 = 1;
LABEL_12:

    swift_getKeyPath();
    v25 = v3;
    sub_141A4C();

    v16 = sub_55D54(v15);

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = sub_6AB70(*(v16 + 16), 0);
      v19 = sub_6B590(&v25, v18 + 8, v17, v16);
      sub_7774();
      if (v19 == v17)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_16:
    v25 = v18;

    sub_6ABF4(&v25);

    v20 = *(v25 + 2);
    while (v20)
    {
      v21 = v20 - 1;
      v22 = *&v25[4 * v20-- + 28];
      if (v22 <= a1)
      {

        if (v14)
        {
          return v21 + 1;
        }

        goto LABEL_22;
      }
    }

    v21 = 0;

    if (v14)
    {
      return v21 + 1;
    }

LABEL_22:
    if (v21 == v11)
    {
      sub_141F5C();
      sub_141EDC();
      if (v23 == a1)
      {
        return v11;
      }

      return v21 + 1;
    }

    return v21;
  }

  v11 = 0;
  while (v11 < *(v9 + 2))
  {
    v12 = *&v9[4 * v11 + 32];
    sub_141F5C();
    sub_141EDC();
    v14 = v12 != v13;
    if (v12 == v13)
    {
      goto LABEL_12;
    }

    if (v10 == ++v11)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_6A978(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_6B8FC(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  sub_6A668(*(v1 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8);
  return sub_143CCC();
}

uint64_t sub_6AAF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_6AB70(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

Swift::Int sub_6ABF4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_6B690(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_14537C(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_144A1C();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_6AD28(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_6AD28(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_6B478(v8);
      v8 = result;
    }

    v76 = v8 + 2;
    v77 = v8[2];
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_6B284((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_6B48C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v30 = v8[3];
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_6B48C((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v31;
    v32 = v8 + 4;
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = v8[4];
          v35 = v8[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[2 * v5];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[2 * v5];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[2 * v5 - 2];
        v72 = *v71;
        v73 = &v32[2 * v5];
        v74 = v73[1];
        sub_6B284((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v8[2];
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove(&v32[2 * v5], v73 + 2, 16 * (v75 - 1 - v5));
        v8[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[2 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[2 * v5];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_6B284(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

char *sub_6B48C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_6B590(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_6B6A4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 4 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D50);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        v17 = 16 * v16;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[v17 / 8 + 4])
          {
            memmove(v11 + 4, v2 + 4, v17);
          }

          v2[2] = 0;
        }

        v5 = (v15 + v17);
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v19 = __OFSUB__(v3--, 1);
      if (v19)
      {
        break;
      }

      *v5 = v4;
      *(v5 + 2) = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v20 = v2[3];
  if (v20 < 2)
  {
    return v2;
  }

  v21 = v20 >> 1;
  v19 = __OFSUB__(v21, v3);
  v22 = v21 - v3;
  if (!v19)
  {
    v2[2] = v22;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_4()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_6B880()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6B8FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6B954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingSpeedPresetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6B9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingSpeedPresetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6BA1C(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingSpeedPresetView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_6BA7C()
{
  result = qword_1C3D58;
  if (!qword_1C3D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3CF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3CD8);
    sub_1D4A4(&qword_1C3CE8, &qword_1C3CD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3D58);
  }

  return result;
}

uint64_t sub_6BB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v78 = a3;
  v80 = sub_142C1C();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_14315C();
  v70 = *(v76 - 8);
  v71 = v76 - 8;
  v69 = v70;
  __chkstk_darwin(v76 - 8);
  v75 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NowPlayingSpeedPresetView();
  v7 = v6 - 8;
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v61[1] = v8;
  v63 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_142B3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3EB8);
  v61[2] = v12;
  __chkstk_darwin(v12);
  v14 = (v61 - v13);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3EC0);
  __chkstk_darwin(v67);
  v62 = v61 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3EC8);
  __chkstk_darwin(v68);
  v66 = v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3ED0);
  __chkstk_darwin(v17 - 8);
  v72 = v61 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3ED8);
  __chkstk_darwin(v73);
  v74 = v61 - v19;
  *v14 = sub_143EAC();
  v14[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3EE0);
  sub_6C644(a2, v14 + *(v21 + 44));
  v22 = (a2 + *(v7 + 48));
  v23 = *v22;
  v24 = v22[1];
  *&v86 = v23;
  *(&v86 + 1) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8);
  sub_143CBC();
  v25 = v83;
  sub_143F7C();
  v27 = v26;
  v29 = v28;
  v30 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3EE8) + 36));
  *v30 = v25;
  v30[1] = v25;
  v30[2] = v27;
  v30[3] = v29;
  sub_143EAC();
  sub_142A9C();
  v31 = (v14 + *(v12 + 36));
  v32 = v84;
  *v31 = v83;
  v31[1] = v32;
  v31[2] = v85;
  v33 = *(a2 + 40);
  v34 = *(a2 + 64);
  *&v86 = *(a2 + 32);
  *(&v86 + 1) = v33;
  v87 = *(a2 + 48);
  LOBYTE(v88) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D40);
  sub_143D9C();
  v86 = v81;
  LOBYTE(v87) = v82;
  v35 = v9;
  (*(v10 + 16))(v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v64, v9);
  v36 = v63;
  sub_6B9B8(a2, v63);
  v37 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v38 = *(v65 + 80);
  v65 = v38 | 7;
  v39 = swift_allocObject();
  (*(v10 + 32))(v39 + v37, v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
  sub_6B954(v36, v39 + ((v11 + v38 + v37) & ~v38));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B98);
  sub_6F2E0();
  sub_6F4B0();
  v40 = v62;
  sub_143B5C();

  sub_15340(v14, &qword_1C3EB8);
  sub_143EAC();
  sub_142A9C();
  v41 = (v40 + *(v67 + 36));
  v42 = v87;
  *v41 = v86;
  v41[1] = v42;
  v41[2] = v88;
  LOBYTE(v81) = *(a2 + 72);
  LODWORD(v11) = v81;
  sub_6B9B8(a2, v36);
  v43 = (v38 + 16) & ~v38;
  v44 = v66;
  v45 = swift_allocObject();
  sub_6B954(v36, v45 + v43);
  sub_6F568();
  sub_143B6C();

  sub_15340(v40, &qword_1C3EC0);
  sub_6B9B8(a2, v36);
  v46 = swift_allocObject();
  v47 = v46 + v43;
  v48 = v69;
  v49 = v36;
  v50 = v68;
  sub_6B954(v49, v47);
  v51 = (v44 + *(v50 + 36));
  *v51 = sub_701FC;
  v51[1] = v46;
  v51[2] = 0;
  v51[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F38);
  v52 = swift_allocObject();
  if (v11 == 1)
  {
    *(v52 + 16) = xmmword_14E520;
    sub_14311C();
  }

  else
  {
    *(v52 + 16) = xmmword_14A710;
  }

  sub_14313C();
  *&v81 = v52;
  sub_6FB74(&qword_1C3F40, &type metadata accessor for AccessibilityTraits);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F48);
  sub_1D4A4(&qword_1C3F50, &qword_1C3F48);
  v53 = v75;
  v54 = v76;
  sub_14515C();
  sub_6F874();
  v55 = v72;
  sub_143ACC();
  (*(v48 + 8))(v53, v54);
  sub_15340(v44, &qword_1C3EC8);
  v56 = v74;
  v57 = &v74[*(v73 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F60);
  sub_142D6C();
  *v57 = 0;
  sub_6F950(v55, v56);
  v58 = v77;
  sub_142D8C();
  sub_6F9C0();
  sub_6FB74(&qword_1C3F80, &type metadata accessor for LiftHoverEffect);
  v59 = v80;
  sub_1438CC();
  (*(v79 + 8))(v58, v59);
  return sub_15340(v56, &qword_1C3ED8);
}

uint64_t sub_6C644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F98);
  __chkstk_darwin(v3 - 8);
  v67 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = (&v51 - v6);
  v7 = sub_143F3C();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1429CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FA0);
  __chkstk_darwin(v54);
  v57 = (&v51 - v16);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FA8);
  __chkstk_darwin(v55);
  v59 = &v51 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FB0);
  __chkstk_darwin(v58);
  v64 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v56 = &v51 - v20;
  __chkstk_darwin(v21);
  v63 = &v51 - v22;
  v53 = type metadata accessor for NowPlayingSpeedPresetView();
  v65 = a1;
  sub_FA9DC(v15);
  v23 = enum case for ColorScheme.dark(_:);
  v24 = *(v10 + 104);
  v24(v12, enum case for ColorScheme.dark(_:), v9);
  LOBYTE(a1) = sub_1429BC();
  v25 = *(v10 + 8);
  v25(v12, v9);
  v25(v15, v9);
  if ((a1 & 1) == 0)
  {
    if (qword_1BFF80 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (qword_1BFF70 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_5:

  v52 = sub_142AAC();
  v26 = v65;
  sub_FA9DC(v15);
  v24(v12, v23, v9);
  v27 = sub_1429BC();
  v25(v12, v9);
  v25(v15, v9);
  if (v27)
  {
    v28 = v62;
    v29 = v60;
    if (qword_1BFF78 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v28, qword_1C3D68);
    v31 = v61;
    (*(v61 + 16))(v29, v30, v28);
  }

  else
  {
    v29 = v60;
    v31 = v61;
    v28 = v62;
    (*(v61 + 104))(v60, enum case for BlendMode.normal(_:), v62);
  }

  v32 = v57;
  (*(v31 + 32))(v57 + *(v54 + 36), v29, v28);
  *v32 = v52;
  v33 = (v26 + *(v53 + 44));
  v34 = *v33;
  v35 = v33[1];
  *&v70 = v34;
  *(&v70 + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8);
  sub_143CBC();
  v36 = v69;
  v37 = v59;
  sub_10358(v32, v59, &qword_1C3FA0);
  *(v37 + *(v55 + 36)) = v36;
  sub_143EAC();
  sub_142A9C();
  v38 = v56;
  sub_10358(v37, v56, &qword_1C3FA8);
  v39 = (v38 + *(v58 + 36));
  v40 = v71;
  *v39 = v70;
  v39[1] = v40;
  v39[2] = v72;
  v41 = v63;
  sub_10358(v38, v63, &qword_1C3FB0);
  v42 = sub_143EAC();
  v43 = v66;
  *v66 = v42;
  *(v43 + 8) = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FB8);
  sub_6CDE8(v26, v43 + *(v45 + 44));
  v46 = v64;
  sub_1D19C(v41, v64, &qword_1C3FB0);
  v47 = v67;
  sub_1D19C(v43, v67, &qword_1C3F98);
  v48 = v68;
  sub_1D19C(v46, v68, &qword_1C3FB0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FC0);
  sub_1D19C(v47, v48 + *(v49 + 48), &qword_1C3F98);
  sub_15340(v43, &qword_1C3F98);
  sub_15340(v41, &qword_1C3FB0);
  sub_15340(v47, &qword_1C3F98);
  return sub_15340(v46, &qword_1C3FB0);
}

uint64_t sub_6CDE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v93 = sub_1429CC();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = v76 - v5;
  v6 = sub_143F3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v94 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FC8);
  __chkstk_darwin(v95);
  v10 = v76 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FD0);
  __chkstk_darwin(v11 - 8);
  v98 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = v76 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FD8);
  __chkstk_darwin(v89);
  v96 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v76 - v17;
  v19 = type metadata accessor for NowPlayingSpeedPresetView();
  v20 = (a1 + v19[12]);
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v87 = v21;
  *&v105 = v21;
  *(&v105 + 1) = v22;
  v86 = v22;
  v85 = v23;
  *&v106 = v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F88);
  sub_143CBC();
  v105 = v101;
  v24 = sub_9CCC();
  v78 = sub_1437EC();
  v77 = v25;
  v27 = v26;
  v88 = v28;
  v29 = (a1 + v19[13]);
  v31 = *v29;
  v30 = v29[1];
  v83 = v31;
  *&v105 = v31;
  *(&v105 + 1) = v30;
  v82 = v30;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F90);
  sub_143CBC();
  v32 = v101;
  v33 = (a1 + v19[14]);
  v34 = *v33;
  v35 = v33[1];
  *&v105 = v34;
  *(&v105 + 1) = v35;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8);
  sub_143CBC();
  v36 = v101;
  sub_143EAC();
  sub_142A9C();
  v37 = v27 & 1;
  LOBYTE(v105) = v37;
  if (qword_1BFFB8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v6, qword_1C3DC8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FE0);
  v40 = *(v7 + 16);
  v41 = &v18[*(v39 + 36)];
  v80 = v6;
  v76[1] = v7 + 16;
  v76[0] = v40;
  v40(v41, v38, v6);
  v42 = v77;
  *v18 = v78;
  *(v18 + 1) = v42;
  v18[16] = v37;
  *(v18 + 17) = *v104;
  *(v18 + 5) = *&v104[3];
  *(v18 + 3) = v88;
  *(v18 + 4) = v32;
  *(v18 + 5) = v36;
  v43 = v102;
  *(v18 + 3) = v101;
  *(v18 + 4) = v43;
  *(v18 + 5) = v103;
  v44 = sub_141F5C();
  v45 = *a1;
  swift_getKeyPath();
  *&v105 = v45;
  sub_6FB74(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v88 = v44;
  v46 = sub_141EFC();
  v47 = &v18[*(v89 + 52)];
  *v47 = v46;
  v47[1] = v48;
  *&v105 = v87;
  *(&v105 + 1) = v86;
  *&v106 = v85;
  sub_143CBC();
  v105 = v100;
  v89 = v24;
  v86 = sub_1437EC();
  v85 = v49;
  v51 = v50;
  v87 = v52;
  v53 = *(a1 + 17);
  *&v105 = v83;
  *(&v105 + 1) = v82;
  sub_143CBC();
  v84 = v100;
  v54 = (a1 + v19[15]);
  v55 = *v54;
  v56 = v54[1];
  *&v105 = v55;
  *(&v105 + 1) = v56;
  sub_143CBC();
  v57 = v100;
  sub_143EAC();
  sub_142A9C();
  v58 = v51 & 1;
  LOBYTE(v100) = v58;
  v59 = v90;
  sub_FA9DC(v90);
  v60 = v92;
  v61 = v91;
  v62 = v93;
  (*(v92 + 104))(v91, enum case for ColorScheme.dark(_:), v93);
  LOBYTE(v38) = sub_1429BC();
  v63 = *(v60 + 8);
  v63(v61, v62);
  v63(v59, v62);
  if (v38)
  {
    v64 = v80;
    v65 = v94;
    if (qword_1BFF98 != -1)
    {
      swift_once();
    }

    v66 = __swift_project_value_buffer(v64, qword_1C3D98);
    (v76[0])(v65, v66, v64);
  }

  else
  {
    v65 = v94;
    v64 = v80;
    (*(v7 + 104))(v94, enum case for BlendMode.normal(_:), v80);
  }

  (*(v7 + 32))(&v10[*(v95 + 36)], v65, v64);
  *(v10 + 6) = v57;
  v67 = v106;
  *(v10 + 56) = v105;
  v68 = v85;
  *v10 = v86;
  *(v10 + 1) = v68;
  v10[16] = v58;
  *(v10 + 17) = *v108;
  *(v10 + 5) = *&v108[3];
  *(v10 + 3) = v87;
  *(v10 + 8) = v53;
  *(v10 + 5) = v84;
  *(v10 + 72) = v67;
  *(v10 + 88) = v107;
  *&v100 = sub_141EFC();
  *(&v100 + 1) = v69;
  sub_6FBC4();
  v70 = v97;
  sub_1439FC();

  sub_15340(v10, &qword_1C3FC8);
  v71 = v96;
  sub_1D19C(v18, v96, &qword_1C3FD8);
  v72 = v98;
  sub_1D19C(v70, v98, &qword_1C3FD0);
  v73 = v99;
  sub_1D19C(v71, v99, &qword_1C3FD8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4030);
  sub_1D19C(v72, v73 + *(v74 + 48), &qword_1C3FD0);
  sub_15340(v70, &qword_1C3FD0);
  sub_15340(v18, &qword_1C3FD8);
  sub_15340(v72, &qword_1C3FD0);
  return sub_15340(v71, &qword_1C3FD8);
}

uint64_t sub_6D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1432CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a2;
  v11 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  strcpy(v30, "speed_controls");
  HIBYTE(v30[1]) = -18;
  sub_14342C();
  sub_142B2C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = (*(v7 + 8))(v9, v6);
  if ((a2 & 1) == 0)
  {
    v33.origin.x = v13;
    v33.origin.y = v15;
    v33.size.width = v17;
    v33.size.height = v19;
    v32.x = v10;
    v32.y = v11;
    result = CGRectContainsPoint(v33, v32);
    if (result)
    {
      v21 = *a4;
      swift_getKeyPath();
      v30[0] = v21;
      sub_6FB74(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
      sub_141A4C();

      v22 = *(a4 + 17);
      if (*(v21 + 24) != v22)
      {
        v23 = a4[2];
        v24 = *(a4 + 24);
        v30[0] = a4[1];
        v30[1] = v23;
        v31 = v24;
        v29[23] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408);
        sub_143DAC();
        sub_1140EC(LODWORD(v22) | 0x100000000);
        if (*(v21 + 24) == v22)
        {
          *(v21 + 24) = v22;
          sub_114488();
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          *&v29[-16] = v21;
          *&v29[-8] = v22;
          v30[0] = v21;
          sub_141A3C();
        }

        sub_6DB50(*(a4 + 72));
        swift_getKeyPath();
        v30[0] = v21;
        sub_141A4C();

        v30[0] = v21;
        swift_getKeyPath();
        sub_141A6C();

        v26 = *(v21 + 120);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          __break(1u);
        }

        else
        {
          *(v21 + 120) = v28;
          v30[0] = v21;
          swift_getKeyPath();
          sub_141A5C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_6DB50(char a1)
{
  if (a1)
  {
    sub_143EDC();
    sub_143EFC();
  }

  else
  {
    v1 = sub_143EDC();
  }

  __chkstk_darwin(v1);
  sub_142B7C();
}

uint64_t sub_6DC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4048);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  if (qword_1BFF88 != -1)
  {
    swift_once();
  }

  v7 = qword_1C3D88;
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4050);
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  v10 = &v6[*(v4 + 36)];
  *v10 = KeyPath;
  v10[1] = v7;
  sub_6FEC4();

  sub_143B4C();
  sub_15340(v6, &qword_1C4048);
  v11 = swift_getKeyPath();
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4068) + 36);
  *v12 = v11;
  *(v12 + 8) = 1;
  *(v12 + 16) = 0;
  v13 = swift_getKeyPath();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4070) + 36));
  *v14 = v13;
  v14[1] = 0x3FE0000000000000;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4078);
  v16 = a2 + *(result + 36);
  *v16 = 0;
  *(v16 + 8) = 1;
  return result;
}

uint64_t sub_6DE88(uint64_t *a1)
{
  v2 = sub_1429CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for NowPlayingSpeedPresetView();
  v10 = (a1 + v9[10]);
  v11 = *v10;
  v12 = v10[1];
  *&v48 = v11;
  *(&v48 + 1) = v12;
  v46 = 0x3FF36DB6DB6DB6DBLL;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8);
  sub_143CCC();
  v44 = v9[9];
  sub_FA9DC(v8);
  v41 = enum case for ColorScheme.dark(_:);
  v14 = *(v3 + 104);
  v42 = v3 + 104;
  v43 = v14;
  v14(v5);
  v15 = sub_1429BC();
  v16 = *(v3 + 8);
  v40 = v16;
  v16(v5, v2);
  v16(v8, v2);
  v17 = 0.6;
  v18 = (a1 + v9[11]);
  v19 = *v18;
  v20 = v18[1];
  if ((v15 & 1) == 0)
  {
    v17 = 1.0;
  }

  *&v48 = v19;
  *(&v48 + 1) = v20;
  v46 = *&v17;
  v45 = v13;
  sub_143CCC();
  v39 = sub_141F5C();
  v21 = *a1;
  swift_getKeyPath();
  *&v48 = v21;
  sub_6FB74(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v22 = sub_141EFC();
  v23 = a1 + v9[12];
  v24 = *v23;
  v25 = *(v23 + 2);
  v48 = v24;
  v49 = v25;
  v46 = v22;
  v47 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F88);
  sub_143CCC();
  sub_FA9DC(v8);
  v43(v5, v41, v2);
  LOBYTE(v21) = sub_1429BC();
  v27 = v40;
  v40(v5, v2);
  v27(v8, v2);
  if (v21)
  {
    if (qword_1BFFA8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_1BFFB0 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:

  v29 = (a1 + v9[13]);
  v31 = *v29;
  v30 = v29[1];
  *&v48 = v31;
  *(&v48 + 1) = v30;
  v46 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F90);
  sub_143CCC();
  v32 = (a1 + v9[14]);
  v33 = *v32;
  v34 = v32[1];
  *&v48 = v33;
  *(&v48 + 1) = v34;
  v46 = 0x3FF0000000000000;
  sub_143CCC();
  v35 = (a1 + v9[15]);
  v36 = *v35;
  v37 = v35[1];
  *&v48 = v36;
  *(&v48 + 1) = v37;
  v46 = 0;
  return sub_143CCC();
}

uint64_t sub_6E2DC(uint64_t a1)
{
  v2 = sub_1429CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for NowPlayingSpeedPresetView();
  v10 = (a1 + v9[10]);
  v36 = a1;
  v11 = *v10;
  v12 = v10[1];
  *&v43 = v11;
  *(&v43 + 1) = v12;
  v41 = 0x3FF0000000000000;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8);
  sub_143CCC();
  v39 = v9[9];
  sub_FA9DC(v8);
  v38 = enum case for ColorScheme.dark(_:);
  v37 = *(v3 + 104);
  v37(v5);
  sub_1429BC();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  v15 = (v36 + v9[11]);
  v16 = *v15;
  v17 = v15[1];
  *&v43 = v16;
  *(&v43 + 1) = v17;
  v40 = v13;
  v41 = 0x3FB999999999999ALL;
  v18 = v36;
  sub_143CCC();
  sub_141F5C();
  v19 = sub_141EEC();
  v20 = (v18 + v9[12]);
  v21 = *v20;
  v22 = *(v20 + 2);
  v43 = v21;
  v44 = v22;
  v41 = v19;
  v42 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F88);
  sub_143CCC();
  sub_FA9DC(v8);
  (v37)(v5, v38, v2);
  v24 = sub_1429BC();
  v14(v5, v2);
  v14(v8, v2);
  if (v24)
  {
    if (qword_1BFF90 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1BFFA0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  v26 = (v18 + v9[13]);
  v28 = *v26;
  v27 = v26[1];
  *&v43 = v28;
  *(&v43 + 1) = v27;
  v41 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F90);
  sub_143CCC();
  v29 = (v18 + v9[14]);
  v30 = *v29;
  v31 = v29[1];
  *&v43 = v30;
  *(&v43 + 1) = v31;
  v41 = 0;
  sub_143CCC();
  v32 = (v18 + v9[15]);
  v33 = *v32;
  v34 = v32[1];
  *&v43 = v33;
  *(&v43 + 1) = v34;
  v41 = 0x3FF0000000000000;
  return sub_143CCC();
}

uint64_t sub_6E6A0()
{
  result = sub_143BDC();
  qword_1C3D60 = result;
  return result;
}

uint64_t sub_6E6D4()
{
  result = sub_143BBC();
  qword_1C3D80 = result;
  return result;
}

uint64_t sub_6E6F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B60);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_14372C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.caption(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = sub_1436BC();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  sub_1436EC();
  v11 = sub_1436FC();
  sub_15340(v2, &unk_1C2B60);
  result = (*(v4 + 8))(v7, v3);
  qword_1C3D88 = v11;
  return result;
}

uint64_t sub_6E8F4()
{
  result = sub_143BDC();
  qword_1C3D90 = result;
  return result;
}

uint64_t sub_6E928(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_6E9F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingSpeedPresetView()
{
  result = qword_1C3E38;
  if (!qword_1C3E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6EAF4()
{
  type metadata accessor for NowPlayingPlaybackControlsViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_6ED5C(319, &qword_1C3E48, &type metadata for Bool, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_6ECA0();
      if (v2 <= 0x3F)
      {
        sub_6ED04();
        if (v3 <= 0x3F)
        {
          sub_6ED5C(319, &unk_1C3320, &type metadata for CGFloat, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_6ED5C(319, &qword_1C3E58, &type metadata for String, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_6ED5C(319, &unk_1C3E60, &type metadata for Color, &type metadata accessor for State);
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

void sub_6ECA0()
{
  if (!qword_1C3E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3B98);
    v0 = sub_143DDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C3E50);
    }
  }
}

void sub_6ED04()
{
  if (!qword_1C3A10)
  {
    sub_1429CC();
    v0 = sub_142A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1C3A10);
    }
  }
}

void sub_6ED5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_6EDDC()
{
  result = sub_143BFC();
  qword_1C3DB0 = result;
  return result;
}

uint64_t sub_6EDFC()
{
  result = sub_143BBC();
  qword_1C3DB8 = result;
  return result;
}

uint64_t sub_6EE1C()
{
  result = sub_143BDC();
  qword_1C3DC0 = result;
  return result;
}

uint64_t sub_6EE50@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_6B9B8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_6B954(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_6EF40;
  a2[1] = v7;
  return result;
}

uint64_t sub_6EF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NowPlayingSpeedPresetView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6BB94(a1, v6, a2);
}

uint64_t sub_6EFC0()
{
  v1 = sub_142B3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for NowPlayingSpeedPresetView();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1429CC();
    (*(*(v11 - 8) + 8))(v0 + v8 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_6F1FC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_142B3C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for NowPlayingSpeedPresetView() - 8);
  v9 = (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));

  return sub_6D7B0(a1, a2, v2 + v6, v9);
}

unint64_t sub_6F2E0()
{
  result = qword_1C3EF0;
  if (!qword_1C3EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EB8);
    sub_6F36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3EF0);
  }

  return result;
}

unint64_t sub_6F36C()
{
  result = qword_1C3EF8;
  if (!qword_1C3EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EE8);
    sub_6F3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3EF8);
  }

  return result;
}

unint64_t sub_6F3F8()
{
  result = qword_1C3F00;
  if (!qword_1C3F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3F08);
    sub_1D4A4(&qword_1C3F10, &qword_1C3F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F00);
  }

  return result;
}

unint64_t sub_6F4B0()
{
  result = qword_1C3F20;
  if (!qword_1C3F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3B98);
    sub_6FB74(&qword_1C3F28, type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F20);
  }

  return result;
}

unint64_t sub_6F568()
{
  result = qword_1C3F30;
  if (!qword_1C3F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3B98);
    sub_6F2E0();
    sub_6F4B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F30);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for NowPlayingSpeedPresetView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1429CC();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_6F874()
{
  result = qword_1C3F58;
  if (!qword_1C3F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EC0);
    sub_6F568();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F58);
  }

  return result;
}

uint64_t sub_6F950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_6F9C0()
{
  result = qword_1C3F68;
  if (!qword_1C3F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3ED8);
    sub_6FA78();
    sub_1D4A4(&qword_1C3F78, &qword_1C3F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F68);
  }

  return result;
}

unint64_t sub_6FA78()
{
  result = qword_1C3F70;
  if (!qword_1C3F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3ED0);
    sub_6F874();
    sub_6FB74(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F70);
  }

  return result;
}

uint64_t sub_6FB74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_6FBC4()
{
  result = qword_1C3FE8;
  if (!qword_1C3FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3FC8);
    sub_6FC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3FE8);
  }

  return result;
}

unint64_t sub_6FC50()
{
  result = qword_1C3FF0;
  if (!qword_1C3FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3FF8);
    sub_6FCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3FF0);
  }

  return result;
}

unint64_t sub_6FCDC()
{
  result = qword_1C4000;
  if (!qword_1C4000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4008);
    sub_6FD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4000);
  }

  return result;
}

unint64_t sub_6FD68()
{
  result = qword_1C4010;
  if (!qword_1C4010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4018);
    sub_1D4A4(&qword_1C4020, &qword_1C4028);
    sub_1D4A4(&qword_1C3558, &qword_1C3560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4010);
  }

  return result;
}

unint64_t sub_6FEC4()
{
  result = qword_1C4058;
  if (!qword_1C4058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4048);
    sub_1D4A4(&qword_1C4060, &qword_1C4050);
    sub_1D4A4(&qword_1C12A8, &qword_1C2BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4058);
  }

  return result;
}

unint64_t sub_6FFBC()
{
  result = qword_1C4080;
  if (!qword_1C4080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4078);
    sub_70048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4080);
  }

  return result;
}

unint64_t sub_70048()
{
  result = qword_1C4088;
  if (!qword_1C4088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4070);
    sub_70100();
    sub_1D4A4(&qword_1C40A8, &qword_1C40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4088);
  }

  return result;
}

unint64_t sub_70100()
{
  result = qword_1C4090;
  if (!qword_1C4090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4048);
    sub_6FEC4();
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C4098, &qword_1C40A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4090);
  }

  return result;
}

uint64_t sub_70200(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_70248(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_702B4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = sub_143C3C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C40B8);
  v33 = *(v13 - 8);
  v34 = v13;
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C40C0);
  __chkstk_darwin(v32);
  v31 = &v29 - v16;
  v37 = a3;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C40C8);
  sub_143CBC();
  if (!v36)
  {
    v17 = a1;
  }

  sub_143C1C();
  (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
  v18 = sub_143C5C();

  (*(v10 + 8))(v12, v9);
  v36 = a2;
  v37 = v18;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  sub_70E90();
  sub_70EDC();
  v20 = a2;
  v21 = a1;
  v30 = a3;

  sub_143B5C();

  v22 = swift_allocObject();
  *(v22 + 2) = v21;
  *(v22 + 3) = v20;
  *(v22 + 4) = a3;
  *(v22 + 5) = a4;
  v23 = v31;
  (*(v33 + 32))(v31, v15, v34);
  v24 = (v23 + *(v32 + 36));
  *v24 = sub_70F34;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  sub_70F40(v23, v35);
  v25 = v20;
  v26 = v21;
  v27 = v30;
}

void sub_70640(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  sub_70E90();
  if ((sub_144FFC() & 1) == 0)
  {

    sub_706D8(a3, a4, a5, a6);
  }
}

void sub_706D8(void *a1, void *a2, void *a3, uint64_t a4)
{
  v30 = sub_14243C();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14240C();

  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = sub_14242C();
  v15 = sub_144C5C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v13;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v17 = 136315651;
    *(v17 + 4) = sub_ED2A4(0xD000000000000017, 0x8000000000162970, aBlock);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2113;
    *(v17 + 24) = v12;
    *v19 = v12;
    v21 = v12;
    _os_log_impl(&dword_0, v14, v15, "%s Loading artwork for catalog=%{private,mask.hash}@.", v17, 0x20u);
    sub_71024(v19);
    a3 = v29;

    __swift_destroy_boxed_opaque_existential_0(v20);

    v13 = v28;
  }

  (*(v8 + 8))(v10, v30);
  v22 = swift_allocObject();
  v22[2] = v11;
  v22[3] = v12;
  v22[4] = a3;
  v22[5] = a4;
  aBlock[4] = sub_71000;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_70DE8;
  aBlock[3] = &block_descriptor_4;
  v23 = _Block_copy(aBlock);
  v24 = v11;
  v25 = v12;
  v26 = v13;

  [v25 requestImageWithCompletion:v23];
  _Block_release(v23);
}

uint64_t sub_709DC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = sub_14243C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  if (a2)
  {
    sub_14240C();

    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = sub_14242C();
    v23 = sub_144C3C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44[0] = v26;
      *v24 = 136315651;
      *(v24 + 4) = sub_ED2A4(0xD000000000000017, 0x8000000000162970, v44);
      *(v24 + 12) = 2160;
      *(v24 + 14) = 1752392040;
      *(v24 + 22) = 2113;
      *(v24 + 24) = v20;
      *v25 = v20;
      v27 = v20;
      _os_log_impl(&dword_0, v22, v23, "%s Unable to load artwork for catalog=%{private,mask.hash}@.", v24, 0x20u);
      sub_71024(v25);

      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v42 = v12;
    sub_14240C();

    v29 = a3;
    v30 = a4;
    v31 = a5;
    v32 = sub_14242C();
    v33 = sub_144C5C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = a1;
      v36 = v35;
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v34 = 136315651;
      *(v34 + 4) = sub_ED2A4(0xD000000000000017, 0x8000000000162970, v44);
      *(v34 + 12) = 2160;
      *(v34 + 14) = 1752392040;
      *(v34 + 22) = 2113;
      *(v34 + 24) = v30;
      *v36 = v30;
      v38 = v30;
      _os_log_impl(&dword_0, v32, v33, "%s Successfully loaded artwork for catalog=%{private,mask.hash}@.", v34, 0x20u);
      sub_71024(v36);
      a1 = v41;

      __swift_destroy_boxed_opaque_existential_0(v37);
    }

    (*(v13 + 8))(v18, v42);
    v44[0] = a5;
    v44[1] = a6;
    v43 = a1;
    v39 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C40C8);
    return sub_143CCC();
  }
}

void sub_70DE8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_70E90()
{
  result = qword_1C40D0;
  if (!qword_1C40D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C40D0);
  }

  return result;
}

unint64_t sub_70EDC()
{
  result = qword_1C40D8;
  if (!qword_1C40D8)
  {
    sub_70E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C40D8);
  }

  return result;
}

uint64_t sub_70F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C40C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_71024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_71090()
{
  result = qword_1C40E0;
  if (!qword_1C40E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C40C0);
    sub_70E90();
    sub_70EDC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C40E0);
  }

  return result;
}

uint64_t sub_7118C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NowPlayingBannerView(0);
  __chkstk_darwin(v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 48);
  *v5 = sub_E882C();
  v5[1] = v1;
  v7 = *(v3 + 24);
  *(v5 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48);
  swift_storeEnumTagMultiPayload();
  v8 = *(v3 + 28);
  *(v5 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C0);
  swift_storeEnumTagMultiPayload();
  sub_747C0(&qword_1C1FD0, type metadata accessor for NowPlayingBannerView);

  sub_14383C();
  sub_7435C(v5, type metadata accessor for NowPlayingBannerView);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1FC8) + 36));
  *v9 = sub_7434C;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = 0;

  sub_142ACC();
  sub_142ADC();
  sub_142AEC();

  sub_142ACC();
  sub_142ADC();
  sub_142AEC();

  v10 = sub_142ABC();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1FB8);
  *(a1 + *(result + 36)) = v10;
  return result;
}

void sub_713E8(void *a1)
{
  v141 = *v1;
  v142 = v1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41D8);
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v110 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41E0);
  v136 = *(v4 - 8);
  v137 = v4;
  __chkstk_darwin(v4);
  v134 = &v110 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41E8);
  v139 = *(v6 - 8);
  v140 = v6;
  __chkstk_darwin(v6);
  v138 = &v110 - v7;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41F0);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v123 = &v110 - v8;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41F8);
  v126 = *(v128 - 8);
  __chkstk_darwin(v128);
  v124 = &v110 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v10 - 8);
  v119 = &v110 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v12 - 8);
  v117 = &v110 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4200);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v110 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4208);
  __chkstk_darwin(v15 - 8);
  v129 = &v110 - v16;
  v17 = sub_14216C();
  v18 = *(v17 - 8);
  v130 = v17;
  v131 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v116 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v122 = &v110 - v21;
  v22 = sub_14243C();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v110 - v28;
  __chkstk_darwin(v27);
  v31 = &v110 - v30;
  if (!a1)
  {
    goto LABEL_6;
  }

  v32 = [a1 podcast];
  if (!v32)
  {
    goto LABEL_6;
  }

  v33 = v32;
  v34 = sub_144C0C();
  v36 = v35;

  if (v36)
  {
    goto LABEL_6;
  }

  v115 = v34;
  if (v34 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v37 = sub_144C0C();
  if (v38)
  {
LABEL_6:
    sub_1423CC();
    v39 = sub_14242C();
    v40 = sub_144C5C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v143 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v143);
      _os_log_impl(&dword_0, v39, v40, "%s missing episode adam id, resetting banner state.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
    }

    (*(v23 + 8))(v26, v22);
    v43 = v142;
    v44 = v142[6];
    sub_E91C8();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_74FA4();
      swift_unknownObjectRelease();
    }

    v43[12] = 0;

    v45 = (v44 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner);
    v46 = *(v44 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner + 8);
    *v45 = 0;
    v45[1] = 0;
    if (v46)
    {

      *(v44 + 64) = 0;
    }

    return;
  }

  if (v37 < 0)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v112 = v37;
  *&v143 = v37;
  v47 = sub_14538C();
  v49 = v47;
  v50 = v142[6];
  v51 = (v50 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner);
  v52 = *(v50 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner + 8);
  if (v52)
  {
    if (v47 == *v51 && v52 == v48 || (v53 = v48, v54 = sub_1453BC(), v48 = v53, (v54 & 1) != 0))
    {
      if (v142[12])
      {

        return;
      }
    }
  }

  v111 = a1;
  v114 = v48;
  Strong = swift_unknownObjectWeakLoadStrong();
  v113 = v50;
  v56 = v114;
  if (Strong)
  {

    sub_74FA4();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_E91C8();
  v57 = *v51;
  v58 = v51[1];
  *v51 = v49;
  v51[1] = v56;
  v59 = v111;
  if (!v58)
  {
    goto LABEL_28;
  }

  if (v49 == v57 && v58 == v114)
  {

    goto LABEL_29;
  }

  v60 = sub_1453BC();

  if ((v60 & 1) == 0)
  {
LABEL_28:
    *(v113 + 64) = 0;
  }

LABEL_29:
  sub_1423AC();
  swift_allocObject();

  v61 = sub_14239C();
  v115 = sub_14238C();
  if (sub_141D8C())
  {
    sub_1423CC();
    v62 = sub_14242C();
    v63 = sub_144C5C();
    v64 = os_log_type_enabled(v62, v63);
    v114 = v61;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v143 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v143);
      _os_log_impl(&dword_0, v62, v63, "%s episode change detected. Observing for upsells and links.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
    }

    (*(v23 + 8))(v31, v22);
    sub_77A30(v142 + 7, v59);
    v67 = [v59 priceType];
    v68 = v131;
    if (v67)
    {
      v69 = v67;
      sub_1448DC();

      v70 = v129;
      sub_14215C();
      v71 = v130;
      if ((*(v68 + 48))(v70, 1, v130) != 1)
      {
        v72 = v68;
        v73 = *(v68 + 32);
        v74 = v122;
        v73(v122, v70, v71);
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4270);
        v75 = sub_144ADC();
        (*(*(v75 - 8) + 56))(v117, 1, 1, v75);
        v76 = v142[2];
        v77 = v116;
        (*(v68 + 16))(v116, v74, v71);
        sub_1DB40((v142 + 7), &v143);
        v78 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v79 = swift_allocObject();
        v80 = v112;
        *(v79 + 16) = v76;
        *(v79 + 24) = v80;
        v73((v79 + v78), v77, v71);
        sub_2B5CC(&v143, v79 + ((v19 + v78 + 7) & 0xFFFFFFFFFFFFFFF8));

        *&v143 = sub_14266C();
        sub_20FCC();
        v81 = sub_144D8C();
        v144 = v81;
        v82 = sub_144D3C();
        v83 = v119;
        (*(*(v82 - 8) + 56))(v119, 1, 1, v82);
        sub_1D4A4(&qword_1C4278, &qword_1C4270);
        sub_747C0(&qword_1C1740, sub_20FCC);
        v84 = v118;
        sub_14283C();
        sub_15340(v83, &qword_1C16E0);

        sub_1D4A4(&qword_1C4280, &qword_1C4200);
        v85 = v121;
        v86 = sub_14273C();
        (*(v120 + 8))(v84, v85);
        (*(v72 + 8))(v122, v71);
LABEL_40:
        *&v143 = v115;
        v144 = v86;

        v131 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4210);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4238);
        sub_1D4A4(&qword_1C4218, &qword_1C4210);
        sub_1D4A4(&qword_1C4240, &qword_1C4238);
        v96 = v132;
        sub_14278C();

        v97 = v142;
        v98 = v142[4];
        v99 = swift_allocObject();
        v100 = v141;
        *(v99 + 16) = v98;
        *(v99 + 24) = v100;
        v101 = swift_allocObject();
        *(v101 + 16) = sub_744A0;
        *(v101 + 24) = v99;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4248);
        sub_1D4A4(&qword_1C4250, &qword_1C41D8);
        v103 = v134;
        v102 = v135;
        sub_1427BC();

        (*(v133 + 8))(v96, v102);
        sub_1D4A4(&qword_1C4258, &qword_1C41E0);
        sub_1D4A4(&qword_1C4260, &qword_1C4248);
        v104 = v137;
        v105 = v138;
        sub_14272C();
        (*(v136 + 8))(v103, v104);
        *(swift_allocObject() + 16) = v100;
        v106 = swift_allocObject();
        v107 = v113;
        *(v106 + 16) = sub_74560;
        *(v106 + 24) = v107;
        sub_1D4A4(&qword_1C4268, &qword_1C41E8);

        v108 = v140;
        v109 = sub_1427DC();

        (*(v139 + 8))(v105, v108);
        v97[12] = v109;

        return;
      }
    }

    else
    {
      v70 = v129;
      (*(v131 + 56))(v129, 1, 1, v130);
    }

    sub_15340(v70, &qword_1C4208);
    *&v143 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4220);
    v92 = v123;
    sub_14264C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4228);
    v93 = v124;
    v94 = v127;
    sub_14262C();
    (*(v125 + 8))(v92, v94);
    sub_1D4A4(&qword_1C4230, &qword_1C41F8);
    v95 = v128;
    v86 = sub_14273C();
    (*(v126 + 8))(v93, v95);
    goto LABEL_40;
  }

  sub_1423CC();
  v87 = sub_14242C();
  v88 = sub_144C5C();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v143 = v90;
    *v89 = 136315138;
    *(v89 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v143);
    _os_log_impl(&dword_0, v87, v88, "%s episode change detected. Observing for upsells.", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v90);
  }

  (*(v23 + 8))(v29, v22);
  *&v143 = v115;
  *(swift_allocObject() + 16) = v141;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4210);
  sub_1D4A4(&qword_1C4218, &qword_1C4210);
  v91 = sub_1427DC();

  v142[12] = v91;
}