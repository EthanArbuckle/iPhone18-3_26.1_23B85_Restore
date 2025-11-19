uint64_t sub_285E50@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v74 = type metadata accessor for EpisodeListWidgetMedium();
  __chkstk_darwin(v74);
  v51 = (&v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for EpisodeListWidgetXL();
  __chkstk_darwin(v60);
  v52 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDD18);
  __chkstk_darwin(v57);
  v59 = &v50 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDC68);
  __chkstk_darwin(v68);
  v61 = &v50 - v4;
  v58 = type metadata accessor for EpisodeListWidgetLarge(0);
  __chkstk_darwin(v58);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3ECF74();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v64 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v50 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDC50);
  __chkstk_darwin(v67);
  v62 = &v50 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDD20);
  __chkstk_darwin(v70);
  v71 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDD28);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDD30);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDC38);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDC28);
  __chkstk_darwin(v73);
  v22 = &v50 - v21;
  v23 = type metadata accessor for EmptyEpisodeList();
  __chkstk_darwin(v23);
  v25 = (&v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*(v69 + 40) + 16))
  {
    v54 = v12;
    v55 = v18;
    v56 = v14;
    v66 = v22;
    v26 = v69;
    if (sub_2840EC())
    {
      v27 = v62;
      sub_2874D0();
      sub_FBD0(v27, v17, &qword_4FDC50);
      swift_storeEnumTagMultiPayload();
      sub_288DFC(&qword_4FDC40, type metadata accessor for EmptyEpisodeList);
      sub_287AC0();
      sub_3EADE4();
      sub_FBD0(v20, v56, &qword_4FDC38);
      swift_storeEnumTagMultiPayload();
      sub_287A04();
      sub_287B74();
      v28 = v66;
      sub_3EADE4();
      sub_FCF8(v20, &qword_4FDC38);
      sub_FBD0(v28, v71, &qword_4FDC28);
      swift_storeEnumTagMultiPayload();
      sub_287978();
      sub_288DFC(&qword_4FDC80, type metadata accessor for EpisodeListWidgetMedium);
      sub_3EADE4();
      sub_FCF8(v28, &qword_4FDC28);
      return sub_FCF8(v27, &qword_4FDC50);
    }

    v67 = *(type metadata accessor for EpisodeListWidgetMain() + 24);
    v33 = v63;
    sub_282D54(&qword_4FD2A0, &type metadata accessor for WidgetFamily, v63);
    v34 = v64;
    v35 = v65;
    v36 = *(v65 + 104);
    v36(v64, enum case for WidgetFamily.systemLarge(_:), v6);
    sub_288DFC(&qword_4FDD38, &type metadata accessor for WidgetFamily);
    sub_3ED514();
    v37 = v34;
    sub_3ED514();
    v38 = *(v35 + 8);
    v38(v37, v6);
    v38(v33, v6);
    v39 = v66;
    if (v76 == v75)
    {
      v40 = v53;
      sub_288C8C(v26, &v53[*(v58 + 20)], type metadata accessor for EpisodeListEntry);
      *v40 = swift_getKeyPath();
      *(v40 + 8) = 0;
      sub_288C8C(v40, v59, type metadata accessor for EpisodeListWidgetLarge);
      swift_storeEnumTagMultiPayload();
      sub_288DFC(&qword_4FDC70, type metadata accessor for EpisodeListWidgetLarge);
      sub_288DFC(&qword_4FDC78, type metadata accessor for EpisodeListWidgetXL);
      v41 = v61;
      sub_3EADE4();
      sub_FBD0(v41, v56, &qword_4FDC68);
      swift_storeEnumTagMultiPayload();
      sub_287A04();
      sub_287B74();
      sub_3EADE4();
      sub_FCF8(v41, &qword_4FDC68);
      sub_FBD0(v39, v71, &qword_4FDC28);
      swift_storeEnumTagMultiPayload();
      sub_287978();
      sub_288DFC(&qword_4FDC80, type metadata accessor for EpisodeListWidgetMedium);
      sub_3EADE4();
      sub_FCF8(v39, &qword_4FDC28);
      v31 = type metadata accessor for EpisodeListWidgetLarge;
      v32 = v40;
      return sub_288D9C(v32, v31);
    }

    sub_282D54(&qword_4FD2A0, &type metadata accessor for WidgetFamily, v33);
    v36(v37, enum case for WidgetFamily.systemExtraLarge(_:), v6);
    sub_3ED514();
    sub_3ED514();
    v38(v37, v6);
    v38(v33, v6);
    v42 = v71;
    if (v76 == v75)
    {
      v43 = v60;
      v44 = v52;
      sub_288C8C(v26, &v52[*(v60 + 24)], type metadata accessor for EpisodeListEntry);
      KeyPath = swift_getKeyPath();
      v46 = swift_getKeyPath();
      *v44 = KeyPath;
      *(v44 + 8) = 0;
      *(v44 + 16) = v46;
      *(v44 + 24) = 0;
      v47 = v44 + *(v43 + 28);
      *v47 = swift_getKeyPath();
      *(v47 + 8) = 0;
      *(v47 + 16) = 0;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0;
      sub_288C8C(v44, v59, type metadata accessor for EpisodeListWidgetXL);
      swift_storeEnumTagMultiPayload();
      sub_288DFC(&qword_4FDC70, type metadata accessor for EpisodeListWidgetLarge);
      sub_288DFC(&qword_4FDC78, type metadata accessor for EpisodeListWidgetXL);
      v48 = v61;
      sub_3EADE4();
      sub_FBD0(v48, v56, &qword_4FDC68);
      swift_storeEnumTagMultiPayload();
      sub_287A04();
      sub_287B74();
      v49 = v66;
      sub_3EADE4();
      sub_FCF8(v48, &qword_4FDC68);
      sub_FBD0(v49, v42, &qword_4FDC28);
      swift_storeEnumTagMultiPayload();
      sub_287978();
      sub_288DFC(&qword_4FDC80, type metadata accessor for EpisodeListWidgetMedium);
      sub_3EADE4();
      sub_FCF8(v49, &qword_4FDC28);
      v31 = type metadata accessor for EpisodeListWidgetXL;
      v32 = v44;
      return sub_288D9C(v32, v31);
    }

    v25 = v51;
    sub_288C8C(v26, v51, type metadata accessor for EpisodeListEntry);
    sub_288C8C(v25, v42, type metadata accessor for EpisodeListWidgetMedium);
    swift_storeEnumTagMultiPayload();
    sub_287978();
    sub_288DFC(&qword_4FDC80, type metadata accessor for EpisodeListWidgetMedium);
    sub_3EADE4();
    v30 = type metadata accessor for EpisodeListWidgetMedium;
  }

  else
  {
    sub_288C8C(v69, v25 + *(v23 + 20), type metadata accessor for EpisodeListEntry);
    *v25 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
    swift_storeEnumTagMultiPayload();
    sub_288C8C(v25, v17, type metadata accessor for EmptyEpisodeList);
    swift_storeEnumTagMultiPayload();
    sub_288DFC(&qword_4FDC40, type metadata accessor for EmptyEpisodeList);
    sub_287AC0();
    sub_3EADE4();
    sub_FBD0(v20, v14, &qword_4FDC38);
    swift_storeEnumTagMultiPayload();
    sub_287A04();
    sub_287B74();
    sub_3EADE4();
    sub_FCF8(v20, &qword_4FDC38);
    sub_FBD0(v22, v71, &qword_4FDC28);
    swift_storeEnumTagMultiPayload();
    sub_287978();
    sub_288DFC(&qword_4FDC80, type metadata accessor for EpisodeListWidgetMedium);
    sub_3EADE4();
    sub_FCF8(v22, &qword_4FDC28);
    v30 = type metadata accessor for EmptyEpisodeList;
  }

  v31 = v30;
  v32 = v25;
  return sub_288D9C(v32, v31);
}

__n128 sub_286E64@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3EB844();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EpisodeListEntry();
  v9 = *(a1 + *(v8 + 36));
  if (v9)
  {
    v10 = v9;
    sub_3EB824();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v11 = sub_3EB894();

    (*(v5 + 8))(v7, v4);
    v15 = v11;
    LOBYTE(v16) = 0;

    sub_3EADE4();
    v15 = *v19;
    v16 = v19[8];
    v17 = 0uLL;
    v18 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDC98);
    sub_287CEC();
    sub_287D70();
    sub_3EADE4();
  }

  else if (*(a1 + *(v8 + 40)))
  {
    *v19 = *(a1 + *(v8 + 40));
    sub_2888DC();
    swift_retain_n();
    v15 = sub_3EB7E4();
    LOBYTE(v16) = 1;

    sub_3EADE4();
    v15 = *v19;
    v16 = v19[8];
    v17 = 0uLL;
    v18 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDC98);
    sub_287CEC();
    sub_287D70();
    sub_3EADE4();
  }

  else
  {
    sub_285030(v19);
    v15 = *v19;
    v16 = *&v19[8];
    v17 = *&v19[24];
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDC98);
    sub_287CEC();
    sub_287D70();
    sub_3EADE4();
  }

  result = *&v19[16];
  v13 = *&v19[32];
  v14 = v20;
  *a2 = *v19;
  *(a2 + 16) = result;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

uint64_t sub_2871D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDD08);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  if (sub_284B8C() > 2u)
  {
    v9 = sub_3EA304();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  else
  {
    v8 = enum case for ColorScheme.dark(_:);
    v9 = sub_3EA304();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v4, v8, v9);
    (*(v10 + 56))(v4, 0, 1, v9);
  }

  sub_28886C(v4, v7);
  sub_3EA304();
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v7, 1, v9) == 1)
  {
    return sub_FCF8(v7, &qword_4FDD08);
  }

  (*(v11 + 8))(a1, v9);
  return (*(v11 + 32))(a1, v7, v9);
}

uint64_t sub_287434@<X0>(_BYTE *a1@<X8>)
{
  sub_288818();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_2874D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5B8);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDD40);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for EpisodeListWidgetSingle();
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 40);
  if (*(v10 + 16))
  {
    v11 = *(_s7EpisodeVMa() - 8);
    sub_288C8C(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), &v9[v7[6]], _s7EpisodeVMa);
    v12 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for EpisodeListWidgetMain();
    sub_282D54(&qword_4FD2A0, &type metadata accessor for WidgetFamily, v3);
    v13 = sub_3ECF74();
    v12 = 1;
    (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
    sub_2AC7D0(v3, &v9[v7[6]]);
    sub_FCF8(v3, &qword_4FD5B8);
  }

  KeyPath = swift_getKeyPath();
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *(v9 + 2) = KeyPath;
  v9[24] = 0;
  v9[v7[7]] = v12;
  v15 = v7[8];
  *&v9[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  v16 = &v9[v7[9]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v7[10];
  *&v9[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  swift_storeEnumTagMultiPayload();
  v18 = &v9[v7[11]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &v9[v7[12]];
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v19[32] = 0;
  sub_288C8C(v9, v6, type metadata accessor for EpisodeListWidgetSingle);
  swift_storeEnumTagMultiPayload();
  sub_288DFC(&qword_4FDC58, type metadata accessor for EpisodeListWidgetSingle);
  sub_3EADE4();
  return sub_288D9C(v9, type metadata accessor for EpisodeListWidgetSingle);
}

unint64_t sub_2878BC()
{
  result = qword_4FDC18;
  if (!qword_4FDC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDBE0);
    sub_287978();
    sub_288DFC(&qword_4FDC80, type metadata accessor for EpisodeListWidgetMedium);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDC18);
  }

  return result;
}

unint64_t sub_287978()
{
  result = qword_4FDC20;
  if (!qword_4FDC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDC28);
    sub_287A04();
    sub_287B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDC20);
  }

  return result;
}

unint64_t sub_287A04()
{
  result = qword_4FDC30;
  if (!qword_4FDC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDC38);
    sub_288DFC(&qword_4FDC40, type metadata accessor for EmptyEpisodeList);
    sub_287AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDC30);
  }

  return result;
}

unint64_t sub_287AC0()
{
  result = qword_4FDC48;
  if (!qword_4FDC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDC50);
    sub_288DFC(&qword_4FDC58, type metadata accessor for EpisodeListWidgetSingle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDC48);
  }

  return result;
}

unint64_t sub_287B74()
{
  result = qword_4FDC60;
  if (!qword_4FDC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDC68);
    sub_288DFC(&qword_4FDC70, type metadata accessor for EpisodeListWidgetLarge);
    sub_288DFC(&qword_4FDC78, type metadata accessor for EpisodeListWidgetXL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDC60);
  }

  return result;
}

unint64_t sub_287C60()
{
  result = qword_4FDC88;
  if (!qword_4FDC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDC10);
    sub_287CEC();
    sub_287D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDC88);
  }

  return result;
}

unint64_t sub_287CEC()
{
  result = qword_4FDC90;
  if (!qword_4FDC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDC90);
  }

  return result;
}

unint64_t sub_287D70()
{
  result = qword_4FDCA0;
  if (!qword_4FDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDCA0);
  }

  return result;
}

uint64_t sub_287DCC()
{
  v1 = type metadata accessor for EpisodeListWidgetMain();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v30 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = type metadata accessor for EpisodeListEntry();
  v6 = v5[8];
  v7 = sub_3E5FC4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v5[11];
  v9 = sub_3E5F84();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v0 + v3 + v8, 1, v9);
  v12 = *(v10 + 8);
  if (!v11)
  {
    v12(v4 + v8, v9);
  }

  v12(v4 + v5[12], v9);
  v13 = v5[13];
  v14 = sub_3ECFF4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v4 + v13, 1, v14))
  {
    (*(v15 + 8))(v4 + v13, v14);
  }

  v16 = v5[14];
  v17 = sub_3E5DC4();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v4 + v16, 1, v17))
  {
    (*(v18 + 8))(v4 + v16, v17);
  }

  v19 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_3ECF74();
    (*(*(v20 - 8) + 8))(v4 + v19, v20);
  }

  else
  {
  }

  v21 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_3EA7C4();
    (*(*(v22 - 8) + 8))(v4 + v21, v22);
  }

  else
  {
  }

  v23 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_3EA6C4();
    (*(*(v24 - 8) + 8))(v4 + v23, v24);
  }

  else
  {
  }

  sub_23968C(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v25 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_3ECF44();
    (*(*(v26 - 8) + 8))(v4 + v25, v26);
  }

  else
  {
  }

  v27 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_3EA304();
    (*(*(v28 - 8) + 8))(v4 + v27, v28);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v30, v2 | 7);
}

uint64_t sub_2882DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeListWidgetMain();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_288340(uint64_t a1)
{
  type metadata accessor for EpisodeListWidgetMain();

  return sub_2871D8(a1);
}

unint64_t sub_2883B0()
{
  result = qword_4FDCC0;
  if (!qword_4FDCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDBE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDBE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDC10);
    sub_2878BC();
    sub_287C60();
    swift_getOpaqueTypeConformance2();
    sub_886BC(&qword_4FDCC8, &qword_4FDCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDCC0);
  }

  return result;
}

uint64_t sub_2884D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDBE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_288538@<X0>(_BYTE *a1@<X8>)
{
  sub_288818();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_2885D4@<X0>(_BYTE *a1@<X8>)
{
  sub_2887C4();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_288670@<X0>(_BYTE *a1@<X8>)
{
  sub_288770();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

unint64_t sub_288770()
{
  result = qword_4FDCF0;
  if (!qword_4FDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDCF0);
  }

  return result;
}

unint64_t sub_2887C4()
{
  result = qword_4FDCF8;
  if (!qword_4FDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDCF8);
  }

  return result;
}

unint64_t sub_288818()
{
  result = qword_4FDD00;
  if (!qword_4FDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDD00);
  }

  return result;
}

uint64_t sub_28886C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDD08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2888DC()
{
  result = qword_4FDD10;
  if (!qword_4FDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDD10);
  }

  return result;
}

uint64_t sub_288980@<X0>(void *a1@<X8>)
{
  result = sub_3EAA94();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_2889F8()
{
  sub_3EAA64();
  sub_288DFC(&qword_4FDD48, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_3EAB04();
  return v1;
}

uint64_t sub_288A74@<X0>(_BYTE *a1@<X8>)
{
  sub_3EAA64();
  sub_288DFC(&qword_4FDD48, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_288B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_288C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_288CF4()
{
  result = qword_4FDD50;
  if (!qword_4FDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDD50);
  }

  return result;
}

unint64_t sub_288D48()
{
  result = qword_4FDD58;
  if (!qword_4FDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDD58);
  }

  return result;
}

uint64_t sub_288D9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_288DFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_288E48()
{
  result = qword_4FDD70;
  if (!qword_4FDD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDCE0);
    sub_288F00();
    sub_886BC(&qword_4FDDC0, &qword_4FDCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDD70);
  }

  return result;
}

unint64_t sub_288F00()
{
  result = qword_4FDD78;
  if (!qword_4FDD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDC08);
    sub_288FB8();
    sub_886BC(&qword_4FDDB0, &qword_4FDDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDD78);
  }

  return result;
}

unint64_t sub_288FB8()
{
  result = qword_4FDD80;
  if (!qword_4FDD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDC00);
    sub_289070();
    sub_886BC(&qword_4FDDA0, &qword_4FDDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDD80);
  }

  return result;
}

unint64_t sub_289070()
{
  result = qword_4FDD88;
  if (!qword_4FDD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDBF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDBF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDBE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDBD8);
    sub_2883B0();
    sub_886BC(&qword_4FDCD8, &qword_4FDBD8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_886BC(&qword_4FDD90, &qword_4FDD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDD88);
  }

  return result;
}

uint64_t sub_28921C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeListEntry();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_28929C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeListEntry();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EpisodeListWidgetMedium()
{
  result = qword_4FDE30;
  if (!qword_4FDE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_289374@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for EpisodeListView();
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8C0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8C8);
  v34 = *(v37 - 8);
  v12 = v34;
  __chkstk_darwin(v37);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  *v11 = sub_3EAB54();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8D0);
  sub_289758(a1, &v11[*(v17 + 44)]);
  sub_886BC(&qword_4FD8D8, &qword_4FD8C0);
  v18 = v16;
  sub_3EB484();
  sub_FCF8(v11, &qword_4FD8C0);
  v35 = *(a1 + 40);
  v19 = v35;
  v20 = *(a1 + 32);
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v21 = v4[7];
  *&v8[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  v22 = &v8[v4[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v8[v4[9]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  *&v8[v4[10]] = v19;
  *&v8[v4[11]] = 2;
  v8[v4[12]] = v20;
  *&v8[v4[13]] = 0x4020000000000000;
  v24 = *(v12 + 16);
  v26 = v36;
  v25 = v37;
  v27 = v18;
  v24(v36, v18, v37);
  v28 = v38;
  sub_289C24(v8, v38, type metadata accessor for EpisodeListView);
  v29 = v39;
  v24(v39, v26, v25);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E0);
  v31 = v28;
  sub_289C24(v28, &v29[*(v30 + 48)], type metadata accessor for EpisodeListView);

  sub_289CFC(v8, type metadata accessor for EpisodeListView);
  v32 = *(v34 + 8);
  v32(v27, v25);
  sub_289CFC(v31, type metadata accessor for EpisodeListView);
  return (v32)(v26, v25);
}

uint64_t sub_289758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logo();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v44[-v9];
  v11 = *a1;
  v12 = a1[1];
  v60 = v11;
  v61 = v12;
  sub_68DC4();

  v13 = sub_3EB394();
  v15 = v14;
  v17 = v16;
  sub_3EB1C4();
  v47 = sub_3EB2A4();
  v46 = v18;
  v20 = v19;
  v48 = v21;

  sub_94D30(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v45 = sub_3EB094();
  sub_3EA264();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v12) = v20 & 1;
  LOBYTE(v60) = v20 & 1;
  LOBYTE(v53) = 0;
  v49 = 0;
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v31 = *(v5 + 28);
  *&v10[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  swift_storeEnumTagMultiPayload();
  v32 = *(v5 + 32);
  *&v10[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  sub_289C24(v10, v7, type metadata accessor for Logo);
  v33 = v47;
  *&v53 = v47;
  v34 = v46;
  *(&v53 + 1) = v46;
  LOBYTE(v54) = v20 & 1;
  *(&v54 + 1) = *v52;
  DWORD1(v54) = *&v52[3];
  v35 = v48;
  *(&v54 + 1) = v48;
  v36 = KeyPath;
  *&v55 = KeyPath;
  *(&v55 + 1) = 1;
  LOBYTE(v56) = 0;
  *(&v56 + 1) = *v51;
  DWORD1(v56) = *&v51[3];
  LOBYTE(KeyPath) = v45;
  BYTE8(v56) = v45;
  HIDWORD(v56) = *&v50[3];
  *(&v56 + 9) = *v50;
  *&v57 = v24;
  *(&v57 + 1) = v26;
  *&v58 = v28;
  *(&v58 + 1) = v30;
  v59 = 0;
  v37 = v57;
  v38 = v58;
  *(a2 + 96) = 0;
  *(a2 + 64) = v37;
  *(a2 + 80) = v38;
  v39 = v53;
  v40 = v54;
  v41 = v56;
  *(a2 + 32) = v55;
  *(a2 + 48) = v41;
  *a2 = v39;
  *(a2 + 16) = v40;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8F0);
  sub_289C24(v7, a2 + *(v42 + 64), type metadata accessor for Logo);
  sub_289C8C(&v53, &v60);
  sub_289CFC(v10, type metadata accessor for Logo);
  sub_289CFC(v7, type metadata accessor for Logo);
  v60 = v33;
  v61 = v34;
  v62 = v12;
  *v63 = *v52;
  *&v63[3] = *&v52[3];
  v64 = v35;
  v65 = v36;
  v66 = 1;
  v67 = 0;
  *v68 = *v51;
  *&v68[3] = *&v51[3];
  v69 = KeyPath;
  *&v70[3] = *&v50[3];
  *v70 = *v50;
  v71 = v24;
  v72 = v26;
  v73 = v28;
  v74 = v30;
  v75 = 0;
  return sub_FCF8(&v60, &qword_4FD8F8);
}

uint64_t sub_289BA0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_3EAC74();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8B8);
  return sub_289374(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_289C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_289C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_289CFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_289DB4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = _s7EpisodeVMa();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDB10);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_289F44(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = _s7EpisodeVMa();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDB10);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for EpisodeListWidgetSingle()
{
  result = qword_4FDEC0;
  if (!qword_4FDEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_28A110()
{
  sub_28A368(319, &unk_4FD338, &type metadata for WidgetListStyle, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_28A368(319, &qword_4FD330, &_s10ComponentsVN, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      _s7EpisodeVMa();
      if (v2 <= 0x3F)
      {
        sub_28A368(319, &unk_4FD4A8, &type metadata for WidgetEmptyMessage, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_28A314(319, &qword_4FD220, &type metadata accessor for WidgetFamily);
          if (v4 <= 0x3F)
          {
            sub_28A368(319, &qword_4FD498, &type metadata for Bool, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_28A314(319, &unk_4FDB90, &type metadata accessor for WidgetRenderingMode);
              if (v6 <= 0x3F)
              {
                sub_28A368(319, &unk_4FD7C8, &type metadata for EdgeInsets, &type metadata accessor for Environment);
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

void sub_28A314(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EA324();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_28A368(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_28A3D4()
{
  v1 = sub_3EAAF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {
    v6 = *(v0 + 16);

    sub_3ED9E4();
    v7 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return result;
}

uint64_t sub_28A514@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for EpisodeListWidgetSingle();
  sub_FBD0(v1 + *(v10 + 32), v9, &qword_4FD2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_3ECF74();
    (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_3ED9E4();
    v12 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for EpisodeViewStyle();
  return swift_storeEnumTagMultiPayload();
}

double sub_28A734()
{
  v0 = sub_3ECF74();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v9 - v5;
  type metadata accessor for EpisodeListWidgetSingle();
  sub_282F54(v6);
  (*(v1 + 104))(v3, enum case for WidgetFamily.systemLarge(_:), v0);
  sub_28D84C(&qword_4FDD38, &type metadata accessor for WidgetFamily);
  sub_3ED514();
  sub_3ED514();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  result = 100.0;
  if (v9[1] != v9[0])
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_28A8E4()
{
  v0 = sub_3ECF74();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v9 - v5;
  type metadata accessor for EpisodeListWidgetSingle();
  sub_282F54(v6);
  (*(v1 + 104))(v3, enum case for WidgetFamily.systemSmall(_:), v0);
  sub_28D84C(&qword_4FDD38, &type metadata accessor for WidgetFamily);
  sub_3ED514();
  sub_3ED514();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  if (v9[1] == v9[0] && sub_28AAB4())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

BOOL sub_28AAB4()
{
  v1 = sub_3EAAF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for EpisodeListWidgetSingle() + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_3ED9E4();
    v7 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return (v6 & 1) == 0;
}

id sub_28AC10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
  __chkstk_darwin(v1 - 8);
  v3 = v22 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_412510;
  v5 = (v0 + *(type metadata accessor for EpisodeListWidgetSingle() + 24));
  v6 = v5[10];
  *(v4 + 32) = v5[9];
  *(v4 + 40) = v6;
  v7 = v5[4];
  *(v4 + 48) = v5[3];
  *(v4 + 56) = v7;
  v8 = v5[12];
  *(v4 + 64) = v5[11];
  *(v4 + 72) = v8;
  v9 = v5 + *(_s7EpisodeVMa() + 96);
  v10 = type metadata accessor for WidgetPredictedPlayState(0);
  v11 = &v9[*(v10 + 32)];
  v12 = *(v11 + 1);
  *(v4 + 80) = *v11;
  *(v4 + 88) = v12;
  sub_FBD0(&v9[*(v10 + 24)], v3, &qword_4FDA38);
  v13 = sub_3E9224();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v3, 1, v13);

  if (v15 == 1)
  {
    sub_FCF8(v3, &qword_4FDA38);
  }

  else
  {
    sub_3E9214();
    (*(v14 + 8))(v3, v13);
  }

  result = AXDurationStringForDurationWithSeconds();
  if (result)
  {
    v17 = result;
    v18 = sub_3ED244();
    v20 = v19;

    *(v4 + 96) = v18;
    *(v4 + 104) = v20;
    v22[1] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_886BC(&qword_4EED78, &unk_5010E0);
    v21 = sub_3ED134();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_28AEBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF18);
  __chkstk_darwin(v34);
  v33 = &v31 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF20);
  __chkstk_darwin(v35);
  v32 = &v31 - v4;
  v5 = type metadata accessor for EpisodeListWidgetSingle();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF28);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF30);
  __chkstk_darwin(v37);
  v13 = &v31 - v12;
  v14 = v2 + *(v6 + 32);
  v15 = _s7EpisodeVMa();
  sub_FBD0(v14 + *(v15 + 64), v11, &unk_4E9EE0);
  sub_28D8A4(v2, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EpisodeListWidgetSingle);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_28D96C(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for EpisodeListWidgetSingle);
  *&v11[*(v9 + 36)] = 0;
  v18 = &v11[*(v9 + 40)];
  *v18 = sub_28D6C4;
  v18[1] = v17;
  sub_886BC(&qword_4FDF38, &qword_4FDF28);
  v19 = v37;
  sub_3EB3F4();
  sub_FCF8(v11, &qword_4FDF28);
  v20 = *v14;
  v21 = *(v14 + 8);
  v22 = &v13[*(v19 + 52)];
  *v22 = *v14;
  *(v22 + 1) = v21;
  v23 = *(v14 + 16);
  v22[16] = v23;
  sub_3DE90(v20, v21, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  sub_3E8324();
  v24 = v41;
  sub_FCF8(v40, &qword_4FDA08);
  if (!v24)
  {
    sub_FBD0(v13, v33, &qword_4FDF30);
    swift_storeEnumTagMultiPayload();
    sub_28D734();
    sub_886BC(&qword_4FDF48, &qword_4FDF30);
    sub_3EADE4();
    v25 = v13;
    return sub_FCF8(v25, &qword_4FDF30);
  }

  v25 = v13;
  result = sub_3E8324();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v27 = *(v15 + 96);
    v28 = (v14 + v27 + *(type metadata accessor for WidgetPredictedPlayState(0) + 32));
    v29 = v28[1];
    v38 = *v28;
    v39 = v29;
    sub_886BC(&qword_4FDF48, &qword_4FDF30);
    sub_68DC4();

    v30 = v32;
    sub_3EB3C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    sub_FBD0(v30, v33, &qword_4FDF20);
    swift_storeEnumTagMultiPayload();
    sub_28D734();
    sub_3EADE4();
    sub_FCF8(v30, &qword_4FDF20);
    return sub_FCF8(v25, &qword_4FDF30);
  }

  __break(1u);
  return result;
}

uint64_t sub_28B438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF50);
  __chkstk_darwin(v2);
  v4 = v8 - v3;
  *v4 = sub_3EAC84();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF58);
  sub_28B584(a1, &v4[*(v5 + 44)]);
  v8[0] = sub_28AC10();
  v8[1] = v6;
  sub_886BC(&qword_4FDF60, &qword_4FDF50);
  sub_68DC4();
  sub_3EB5B4();

  return sub_FCF8(v4, &qword_4FDF50);
}

uint64_t sub_28B584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF68);
  __chkstk_darwin(v4 - 8);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF70);
  __chkstk_darwin(v10 - 8);
  v12 = &v29[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF78);
  __chkstk_darwin(v13);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v29[-v17];
  __chkstk_darwin(v19);
  v21 = &v29[-v20];
  *v12 = sub_3EAB54();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF80);
  sub_28C80C(a1, &v12[*(v22 + 44)]);
  sub_28A734();
  sub_3EBA74();
  sub_3EA804();
  sub_FACC(v12, v18, &qword_4FDF70);
  v23 = &v18[*(v13 + 36)];
  v24 = v34;
  v23[4] = v33;
  v23[5] = v24;
  v23[6] = v35;
  v25 = v30;
  *v23 = *&v29[40];
  v23[1] = v25;
  v26 = v32;
  v23[2] = v31;
  v23[3] = v26;
  sub_FACC(v18, v21, &qword_4FDF78);
  sub_28B940(a1, v9);
  sub_FBD0(v21, v15, &qword_4FDF78);
  sub_FBD0(v9, v6, &qword_4FDF68);
  sub_FBD0(v15, a2, &qword_4FDF78);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF88);
  sub_FBD0(v6, a2 + *(v27 + 48), &qword_4FDF68);
  sub_FCF8(v9, &qword_4FDF68);
  sub_FCF8(v21, &qword_4FDF78);
  sub_FCF8(v6, &qword_4FDF68);
  return sub_FCF8(v15, &qword_4FDF78);
}

uint64_t sub_28B940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF90);
  __chkstk_darwin(v44);
  v43 = (&v36 - v3);
  v41 = type metadata accessor for WidgetEmptyText();
  __chkstk_darwin(v41);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v36 - v7;
  v8 = sub_3EAAF4();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDF98);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDFA0);
  __chkstk_darwin(v14);
  v16 = (&v36 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDFA8);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (&v36 - v21);
  v23 = type metadata accessor for EpisodeListWidgetSingle();
  v24 = *(a1 + *(v23 + 28));
  if (v24 == 5)
  {
    sub_28BF40(v22);
    sub_FBD0(v22, v19, &qword_4FDFA8);
    *v16 = 0x4010000000000000;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDFB0);
    sub_FBD0(v19, v16 + *(v25 + 48), &qword_4FDFA8);
    sub_FCF8(v19, &qword_4FDFA8);
    sub_FBD0(v16, v13, &qword_4FDFA0);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FDFB8, &qword_4FDF90);
    sub_886BC(&qword_4FDFC0, &qword_4FDFA0);
    sub_3EADE4();
    sub_FCF8(v16, &qword_4FDFA0);
    return sub_FCF8(v22, &qword_4FDFA8);
  }

  else
  {
    v38 = v14;
    v27 = a1 + *(v23 + 48);
    v28 = *(v27 + 16);
    if (*(v27 + 32) == 1)
    {
      v29 = *(v27 + 16);
    }

    else
    {
      v31 = *v27;
      v30 = *(v27 + 8);
      v36 = *(v27 + 24);
      v37 = v30;

      sub_3ED9E4();
      v32 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();
      sub_27FA74(v31, v37, v28, v36, 0);
      (*(v39 + 8))(v10, v40);
      v29 = v46;
    }

    v33 = v42;
    sub_28A514(&v42[*(v41 + 20)]);
    *v33 = v24;
    sub_28D8A4(v33, v5, type metadata accessor for WidgetEmptyText);
    v34 = v43;
    *v43 = v29;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDFC8);
    sub_28D8A4(v5, v34 + *(v35 + 48), type metadata accessor for WidgetEmptyText);
    sub_28D90C(v5, type metadata accessor for WidgetEmptyText);
    sub_FBD0(v34, v13, &qword_4FDF90);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FDFB8, &qword_4FDF90);
    sub_886BC(&qword_4FDFC0, &qword_4FDFA0);
    sub_3EADE4();
    sub_FCF8(v34, &qword_4FDF90);
    return sub_28D90C(v33, type metadata accessor for WidgetEmptyText);
  }
}

uint64_t sub_28BF40@<X0>(_OWORD *a1@<X8>)
{
  v78 = a1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDFD0);
  __chkstk_darwin(v77);
  v80 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v79 = &v71 - v4;
  v5 = sub_3EB174();
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAC8);
  __chkstk_darwin(v7);
  v85 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v92 = &v71 - v10;
  v11 = sub_28AAB4();
  v90 = 0;
  v91 = 0;
  v89 = 0uLL;
  KeyPath = 0;
  v87 = 0;
  v88 = 0;
  v13 = 0;
  v14 = 0;
  v86 = 0;
  v81 = v1;
  if (!v11)
  {
    v84 = v7;
    v15 = v1 + *(type metadata accessor for EpisodeListWidgetSingle() + 24);
    v16 = *(v15 + 80);
    v99 = *(v15 + 72);
    v100 = v16;
    sub_68DC4();

    v17 = sub_3EB394();
    v19 = v18;
    v21 = v20;
    sub_3EB1A4();
    sub_3EB114();

    v22 = sub_3EB2A4();
    v24 = v23;
    LODWORD(v91) = v25;
    v27 = v26;

    sub_94D30(v17, v19, v21 & 1);

    KeyPath = swift_getKeyPath();
    v13 = swift_getKeyPath();
    v116 = v91 & 1;
    v114 = 0;
    v112 = 1;
    v110[80] = 0;
    *&v93 = v22;
    *(&v93 + 1) = v24;
    LOBYTE(v94) = v91 & 1;
    *(&v94 + 1) = *v115;
    DWORD1(v94) = *&v115[3];
    *(&v94 + 1) = v27;
    *&v95 = KeyPath;
    BYTE8(v95) = 0;
    HIDWORD(v95) = *&v113[3];
    *(&v95 + 9) = *v113;
    v96 = v13;
    LOBYTE(v97) = 1;
    DWORD1(v97) = *&v111[3];
    *(&v97 + 1) = *v111;
    v14 = 0xBFF0000000000000;
    *(&v97 + 1) = 0xBFF0000000000000;
    v88 = *(&v95 + 1);
    *&v89 = v94;
    v86 = 0;
    v87 = v97;
    v90 = v24;
    v91 = v22;
    v99 = v22;
    v100 = v24;
    LOBYTE(v101) = v116;
    HIDWORD(v101) = *&v115[3];
    *(&v101 + 1) = *v115;
    *(&v89 + 1) = v27;
    v102 = v27;
    *&v103 = KeyPath;
    BYTE8(v103) = 0;
    HIDWORD(v103) = *&v113[3];
    *(&v103 + 9) = *v113;
    v104 = v13;
    v105 = 0;
    LOBYTE(v106) = 1;
    HIDWORD(v106) = *&v111[3];
    *(&v106 + 1) = *v111;
    v7 = v84;
    v107 = 0xBFF0000000000000;
    sub_FBD0(&v93, v110, &qword_4FDFD8);
    v1 = v81;
    sub_FCF8(&v99, &qword_4FDFD8);
  }

  v82 = KeyPath;
  v83 = v13;
  v84 = v14;
  v28 = v1 + *(type metadata accessor for EpisodeListWidgetSingle() + 24);
  v29 = type metadata accessor for EpisodeCaptionView();
  v30 = v29[7];
  v73 = _s7EpisodeVMa;
  v31 = v92;
  sub_28D8A4(v28, v92 + v30, _s7EpisodeVMa);
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  *(v31 + 16) = swift_getKeyPath();
  *(v31 + 24) = 0;
  v32 = v29[6];
  *(v31 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  swift_storeEnumTagMultiPayload();
  *(v31 + v29[8]) = 1;
  sub_3EB1A4();
  v33 = sub_3EB114();

  v34 = swift_getKeyPath();
  v35 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAD0) + 36));
  *v35 = v34;
  v35[1] = v33;
  v36 = swift_getKeyPath();
  v37 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAD8) + 36);
  *v37 = v36;
  *(v37 + 8) = 0;
  v38 = swift_getKeyPath();
  v39 = sub_28A3D4();
  v40 = (v31 + *(v7 + 36));
  *v40 = v38;
  v40[1] = v39 & 0xFFFFFFFFFFFFFFFBLL;
  v72 = v28;
  v41 = *(v28 + 96);
  v99 = *(v28 + 88);
  v100 = v41;
  sub_68DC4();

  v42 = sub_3EB394();
  v44 = v43;
  v46 = v45;
  sub_3EB1B4();
  v47 = v74;
  v48 = v75;
  v49 = v76;
  (*(v75 + 104))(v74, enum case for Font.Leading.tight(_:), v76);
  sub_3EB194();

  (*(v48 + 8))(v47, v49);
  v50 = sub_3EB2A4();
  v52 = v51;
  LODWORD(v75) = v53;
  v76 = v54;

  sub_94D30(v42, v44, v46 & 1);

  v81 = sub_28A8E4();
  LODWORD(v74) = v55;
  v71 = swift_getKeyPath();
  v56 = v79;
  sub_28D8A4(v72, v79, v73);
  v57 = sub_3EBA84();
  v59 = v58;
  v60 = (v56 + *(type metadata accessor for PlayButtonLarge(0) + 20));
  *v60 = v57;
  v60[1] = v59;
  *(v56 + *(v77 + 36)) = 0x3FF0000000000000;
  v61 = v85;
  sub_FBD0(v92, v85, &qword_4FDAC8);
  v62 = v80;
  sub_FBD0(v56, v80, &qword_4FDFD0);
  *&v93 = 0;
  *(&v93 + 1) = v86;
  *&v94 = v91;
  *(&v94 + 1) = v90;
  v95 = v89;
  *&v96 = v82;
  *(&v96 + 1) = v88;
  v97 = v83;
  *&v98 = v87;
  *(&v98 + 1) = v84;
  v63 = v96;
  v64 = v78;
  v78[2] = v89;
  v64[3] = v63;
  v65 = v98;
  v64[4] = v97;
  v64[5] = v65;
  v66 = v94;
  *v64 = v93;
  v64[1] = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDFE0);
  sub_FBD0(v61, v64 + v67[12], &qword_4FDAC8);
  v68 = v64 + v67[16];
  *v68 = v50;
  *(v68 + 1) = v52;
  LOBYTE(v28) = v75 & 1;
  v68[16] = v75 & 1;
  v69 = v71;
  *(v68 + 3) = v76;
  *(v68 + 4) = v69;
  *(v68 + 5) = v81;
  v68[48] = v74 & 1;
  *(v64 + v67[20]) = 0x4014000000000000;
  sub_FBD0(v62, v64 + v67[24], &qword_4FDFD0);
  sub_FBD0(&v93, &v99, &qword_4FDFE8);
  sub_243E88(v50, v52, v28);

  sub_FCF8(v56, &qword_4FDFD0);
  sub_FCF8(v92, &qword_4FDAC8);
  sub_FCF8(v62, &qword_4FDFD0);
  sub_94D30(v50, v52, v28);

  sub_FCF8(v85, &qword_4FDAC8);
  v99 = 0;
  v100 = v86;
  v101 = v91;
  v102 = v90;
  v103 = v89;
  v104 = v82;
  v105 = v88;
  v106 = v83;
  v107 = 0;
  v108 = v87;
  v109 = v84;
  return sub_FCF8(&v99, &qword_4FDFE8);
}

uint64_t sub_28C80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = type metadata accessor for Logo();
  __chkstk_darwin(v55);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDFF0);
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v51 = &v49 - v8;
  v50 = type metadata accessor for EpisodeViewStyle();
  __chkstk_darwin(v50);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = _s7EpisodeVMa();
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WidgetArtworkView();
  __chkstk_darwin(v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDFF8);
  __chkstk_darwin(v49);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  __chkstk_darwin(v25);
  v27 = &v49 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE000);
  __chkstk_darwin(v28 - 8);
  v52 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v58 = &v49 - v31;
  if (sub_28AAB4())
  {
    v32 = type metadata accessor for EpisodeListWidgetSingle();
    sub_28D8A4(a1 + *(v32 + 24), v16, _s7EpisodeVMa);
    sub_28A514(v13);
    sub_28D96C(v13, v10, type metadata accessor for EpisodeViewStyle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = 8.0;
    }

    else
    {
      v33 = 6.0;
    }

    sub_28D90C(v10, type metadata accessor for EpisodeViewStyle);
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    sub_28D96C(v16, &v19[*(v17 + 20)], _s7EpisodeVMa);
    *&v19[*(v17 + 24)] = v33;
    sub_28D96C(v19, v24, type metadata accessor for WidgetArtworkView);
    *&v24[*(v49 + 36)] = 0xBFF0000000000000;
    sub_FACC(v24, v27, &qword_4FDFF8);
    sub_FBD0(v27, v21, &qword_4FDFF8);
    v34 = v51;
    sub_FBD0(v21, v51, &qword_4FDFF8);
    v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE010) + 48);
    *v35 = 0;
    *(v35 + 8) = 1;
    sub_FCF8(v27, &qword_4FDFF8);
    sub_FCF8(v21, &qword_4FDFF8);
    v36 = v34;
    v37 = v58;
    sub_FACC(v36, v58, &qword_4FDFF0);
    (*(v53 + 56))(v37, 0, 1, v54);
  }

  else
  {
    (*(v53 + 56))(v58, 1, 1, v54);
  }

  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v38 = v55;
  v39 = *(v55 + 20);
  *&v6[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  swift_storeEnumTagMultiPayload();
  v40 = *(v38 + 24);
  *&v6[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v38) = sub_28AAB4();
  v41 = v6;
  v42 = v58;
  v43 = v52;
  sub_FBD0(v58, v52, &qword_4FE000);
  v44 = v57;
  sub_28D8A4(v41, v57, type metadata accessor for Logo);
  v45 = v56;
  sub_FBD0(v43, v56, &qword_4FE000);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE008);
  sub_28D8A4(v44, v45 + *(v46 + 48), type metadata accessor for Logo);
  v47 = v45 + *(v46 + 64);
  *v47 = 0;
  *(v47 + 8) = (v38 & 1) == 0;
  *(v47 + 9) = v38 & 1;
  sub_28D90C(v41, type metadata accessor for Logo);
  sub_FCF8(v42, &qword_4FE000);
  sub_28D90C(v44, type metadata accessor for Logo);
  return sub_FCF8(v43, &qword_4FE000);
}

uint64_t sub_28CEF8()
{
  v1 = type metadata accessor for EpisodeListWidgetSingle();
  v53 = *(*(v1 - 8) + 64);
  v54 = *(*(v1 - 8) + 80);
  v55 = v0;
  v52 = (v54 + 16) & ~v54;
  v2 = v0 + v52;
  sub_23968C(*(v0 + v52), *(v0 + v52 + 8));
  sub_23968C(*(v2 + 16), *(v2 + 24));
  v51 = v1;
  v3 = v0 + v52 + *(v1 + 24);
  sub_3DEF8(*v3, *(v3 + 8), *(v3 + 16));

  v4 = _s7EpisodeVMa();
  v5 = v4[11];
  v6 = sub_3E5F84();
  v7 = *(v6 - 8);
  v49 = *(v7 + 48);
  if (!v49(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v50 = v7;

  v8 = v3 + v4[13];
  v9 = sub_3E7784();
  v10 = *(*(v9 - 8) + 48);
  if (!v10(v8, 1, v9))
  {

    v11 = *(v8 + 32);
    if (v11 != 255)
    {
      sub_F2248(*(v8 + 16), *(v8 + 24), v11);
    }

    v12 = *(v8 + 64);
    if (v12 != 255)
    {
      sub_F2260(*(v8 + 56), v12);
    }

    v13 = *(v8 + 80);
    if (v13 != 255)
    {
      sub_F2260(*(v8 + 72), v13);
    }

    v14 = *(v8 + 96);
    if (v14 != 255)
    {
      sub_F2260(*(v8 + 88), v14);
    }

    v15 = *(v8 + 112);
    if (v15 != 255)
    {
      sub_F2260(*(v8 + 104), v15);
    }

    v16 = *(v8 + 128);
    if (v16 != 255)
    {
      sub_F2260(*(v8 + 120), v16);
    }

    v17 = *(v9 + 44);
    v18 = sub_3E7624();
    (*(*(v18 - 8) + 8))(v8 + v17, v18);
  }

  v19 = v3 + v4[14];
  if (!v10(v19, 1, v9))
  {

    v20 = *(v19 + 32);
    if (v20 != 255)
    {
      sub_F2248(*(v19 + 16), *(v19 + 24), v20);
    }

    v21 = *(v19 + 64);
    if (v21 != 255)
    {
      sub_F2260(*(v19 + 56), v21);
    }

    v22 = *(v19 + 80);
    if (v22 != 255)
    {
      sub_F2260(*(v19 + 72), v22);
    }

    v23 = *(v19 + 96);
    if (v23 != 255)
    {
      sub_F2260(*(v19 + 88), v23);
    }

    v24 = *(v19 + 112);
    if (v24 != 255)
    {
      sub_F2260(*(v19 + 104), v24);
    }

    v25 = *(v19 + 128);
    if (v25 != 255)
    {
      sub_F2260(*(v19 + 120), v25);
    }

    v26 = *(v9 + 44);
    v27 = sub_3E7624();
    (*(*(v27 - 8) + 8))(v19 + v26, v27);
  }

  v28 = v4[16];
  v29 = sub_3E5DC4();
  v30 = *(v29 - 8);
  if (!(*(v30 + 48))(v3 + v28, 1, v29))
  {
    (*(v30 + 8))(v3 + v28, v29);
  }

  v31 = v4[20];
  if (!v49(v3 + v31, 1, v6))
  {
    (*(v50 + 8))(v3 + v31, v6);
  }

  v32 = v4[22];
  if (!v49(v3 + v32, 1, v6))
  {
    (*(v50 + 8))(v3 + v32, v6);
  }

  v33 = v4[23];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  (*(*(v34 - 8) + 8))(v3 + v33, v34);
  v35 = v3 + v4[24];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = *(v50 + 8);
    v37(v35, v6);
    v37(v35 + *(v36 + 36), v6);
  }

  v38 = type metadata accessor for WidgetPredictedPlayState(0);
  v39 = *(v38 + 20);
  if (!v49(v35 + v39, 2, v6))
  {
    (*(v50 + 8))(v35 + v39, v6);
  }

  v40 = *(v38 + 24);
  v41 = sub_3E9224();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v35 + v40, 1, v41))
  {
    (*(v42 + 8))(v35 + v40, v41);
  }

  v43 = v51[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = sub_3ECF74();
    (*(*(v44 - 8) + 8))(v2 + v43, v44);
  }

  else
  {
  }

  sub_23968C(*(v2 + v51[9]), *(v2 + v51[9] + 8));
  v45 = v51[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_3ECF44();
    (*(*(v46 - 8) + 8))(v2 + v45, v46);
  }

  else
  {
  }

  sub_23968C(*(v2 + v51[11]), *(v2 + v51[11] + 8));
  v47 = v2 + v51[12];
  sub_27FA74(*v47, *(v47 + 8), *(v47 + 16), *(v47 + 24), *(v47 + 32));

  return _swift_deallocObject(v55, v52 + v53, v54 | 7);
}

uint64_t sub_28D6C4()
{
  v1 = *(type metadata accessor for EpisodeListWidgetSingle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_28B438(v2);
}

unint64_t sub_28D734()
{
  result = qword_4FDF40;
  if (!qword_4FDF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDF20);
    sub_886BC(&qword_4FDF48, &qword_4FDF30);
    sub_28D84C(&qword_4F19C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDF40);
  }

  return result;
}

uint64_t sub_28D84C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28D8A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_28D90C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_28D96C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_28D9D8()
{
  result = qword_4FE018;
  if (!qword_4FE018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE020);
    sub_28D734();
    sub_886BC(&qword_4FDF48, &qword_4FDF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE018);
  }

  return result;
}

uint64_t sub_28DAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for EpisodeListEntry();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_28DB5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for EpisodeListEntry();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EpisodeListWidgetXL()
{
  result = qword_4FE080;
  if (!qword_4FE080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_28DC48()
{
  sub_27800C(319, &unk_4FD338);
  if (v0 <= 0x3F)
  {
    sub_27800C(319, &qword_4FD330);
    if (v1 <= 0x3F)
    {
      type metadata accessor for EpisodeListEntry();
      if (v2 <= 0x3F)
      {
        sub_27800C(319, &unk_4FD7C8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_28DD48@<X0>(void *a1@<X8>)
{
  sub_288D48();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_28DDE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE0C0);
  __chkstk_darwin(v3);
  v5 = (&v41 - v4);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE0C8);
  __chkstk_darwin(v44);
  v7 = &v41 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE0D0);
  __chkstk_darwin(v45);
  v9 = &v41 - v8;
  v10 = sub_3EAAF4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_3ED9E4();
    v16 = sub_3EB034();
    v43 = v2;
    v17 = v3;
    v18 = v16;
    sub_3E9754();

    v3 = v17;
    v2 = v43;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v14, 0);
    (*(v11 + 8))(v13, v10);
    v15 = v47;
    if (v47)
    {
      goto LABEL_3;
    }

LABEL_6:
    v43 = v11;
    goto LABEL_8;
  }

  LOBYTE(v47) = *v2;
  v15 = v14;
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v15 == 1)
  {

LABEL_9:
    *v9 = sub_3EAC74();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE108);
    sub_28E3BC(v2, &v9[*(v20 + 44)]);
    v21 = &qword_4FE0D0;
    sub_FBD0(v9, v7, &qword_4FE0D0);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FE0E0, &qword_4FE0D0);
    sub_2924AC();
    sub_3EADE4();
    v22 = v9;
    return sub_FCF8(v22, v21);
  }

  v43 = v11;
LABEL_8:
  v19 = sub_3EE804();

  if (v19)
  {
    goto LABEL_9;
  }

  v42 = v3;
  v23 = v2 + *(type metadata accessor for EpisodeListWidgetXL() + 28);
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 24);
  if (*(v23 + 32) != 1)
  {
    v41 = *(v23 + 16);

    sub_3ED9E4();
    v27 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_27FA74(v24, v25, v41, v26, 0);
    (*(v43 + 8))(v13, v10);
  }

  sub_3EB0E4();
  sub_3EA254();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_28F9E4();
  *v5 = 0;
  v5[1] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE0D8);
  sub_28FB44(v5 + *(v37 + 44), v29, v31, v33, v35);
  v38 = sub_3EB084();
  v39 = v5 + *(v42 + 36);
  *v39 = v38;
  *(v39 + 1) = 0.0 - v29;
  *(v39 + 2) = 0.0 - v31;
  *(v39 + 3) = 0.0 - v33;
  *(v39 + 4) = 0.0 - v35;
  v39[40] = 0;
  v21 = &qword_4FE0C0;
  sub_FBD0(v5, v7, &qword_4FE0C0);
  swift_storeEnumTagMultiPayload();
  sub_886BC(&qword_4FE0E0, &qword_4FE0D0);
  sub_2924AC();
  sub_3EADE4();
  v22 = v5;
  return sub_FCF8(v22, v21);
}

uint64_t sub_28E3BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE110);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = (a1 + *(type metadata accessor for EpisodeListWidgetXL() + 24));
  v12 = *v10;
  v11 = v10[1];

  *v9 = sub_3EAB64();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE118);
  sub_28E544(a1, &v9[*(v13 + 44)]);
  sub_FBD0(v9, v6, &qword_4FE110);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE120);
  sub_FBD0(v6, a2 + *(v14 + 48), &qword_4FE110);

  sub_FCF8(v9, &qword_4FE110);
  sub_FCF8(v6, &qword_4FE110);
}

uint64_t sub_28E544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v71 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE128);
  __chkstk_darwin(v2 - 8);
  v4 = &v64 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE130);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v64 - v9;
  __chkstk_darwin(v11);
  v69 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE138);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE140);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v72 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  __chkstk_darwin(v22);
  v24 = &v64 - v23;
  sub_28EBE8(v15);
  sub_3EBA74();
  sub_3EA804();
  sub_FACC(v15, v21, &qword_4FE138);
  v25 = &v21[*(v17 + 44)];
  v26 = v115;
  *(v25 + 4) = v114;
  *(v25 + 5) = v26;
  *(v25 + 6) = v116;
  v27 = v111;
  *v25 = v110;
  *(v25 + 1) = v27;
  v28 = v113;
  *(v25 + 2) = v112;
  *(v25 + 3) = v28;
  sub_FACC(v21, v24, &qword_4FE140);
  sub_3EBA74();
  sub_3EA804();
  sub_3EB784();
  v68 = sub_3EB794();

  v66 = sub_3EB0B4();
  sub_3EA264();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v108 = 0;
  v65 = sub_3EB0D4();
  sub_3EA264();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v109 = 0;
  sub_28F220();
  sub_3EBA74();
  sub_3EA804();
  sub_FACC(v4, v10, &qword_4FE128);
  v45 = &v10[*(v6 + 44)];
  v46 = v122;
  *(v45 + 4) = v121;
  *(v45 + 5) = v46;
  *(v45 + 6) = v123;
  v47 = v118;
  *v45 = v117;
  *(v45 + 1) = v47;
  v48 = v120;
  *(v45 + 2) = v119;
  *(v45 + 3) = v48;
  v49 = v69;
  sub_FACC(v10, v69, &qword_4FE130);
  v50 = v72;
  sub_FBD0(v24, v72, &qword_4FE140);
  v51 = v70;
  sub_FBD0(v49, v70, &qword_4FE130);
  v52 = v50;
  v53 = v71;
  sub_FBD0(v52, v71, &qword_4FE140);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE148);
  v55 = v53 + *(v54 + 48);
  v84 = v77;
  v85 = v78;
  v86 = v79;
  v80 = v73;
  v81 = v74;
  v82 = v75;
  v83 = v76;
  v56 = v68;
  *&v87 = v68;
  LOBYTE(v10) = v65;
  LOBYTE(v15) = v66;
  BYTE8(v87) = v66;
  *&v88 = v30;
  *(&v88 + 1) = v32;
  *&v89 = v34;
  *(&v89 + 1) = v36;
  LOBYTE(v90) = 0;
  BYTE8(v90) = v65;
  *&v91 = v38;
  *(&v91 + 1) = v40;
  *&v92 = v42;
  *(&v92 + 1) = v44;
  v93 = 0;
  *(v55 + 208) = 0;
  v57 = v87;
  *(v55 + 96) = v86;
  *(v55 + 112) = v57;
  v58 = v85;
  *(v55 + 64) = v84;
  *(v55 + 80) = v58;
  v59 = v83;
  *(v55 + 32) = v82;
  *(v55 + 48) = v59;
  v60 = v81;
  *v55 = v80;
  *(v55 + 16) = v60;
  v61 = v89;
  *(v55 + 128) = v88;
  *(v55 + 144) = v61;
  v62 = v92;
  *(v55 + 176) = v91;
  *(v55 + 192) = v62;
  *(v55 + 160) = v90;
  sub_FBD0(v51, v53 + *(v54 + 64), &qword_4FE130);
  sub_FBD0(&v80, v94, &qword_4FE150);
  sub_FCF8(v49, &qword_4FE130);
  sub_FCF8(v24, &qword_4FE140);
  sub_FCF8(v51, &qword_4FE130);
  v94[4] = v77;
  v94[5] = v78;
  v94[6] = v79;
  v94[0] = v73;
  v94[1] = v74;
  v94[2] = v75;
  v94[3] = v76;
  v95 = v56;
  v96 = v15;
  v97 = v30;
  v98 = v32;
  v99 = v34;
  v100 = v36;
  v101 = 0;
  v102 = v10;
  v103 = v38;
  v104 = v40;
  v105 = v42;
  v106 = v44;
  v107 = 0;
  sub_FCF8(v94, &qword_4FE150);
  return sub_FCF8(v72, &qword_4FE140);
}

void sub_28EBE8(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = _s7EpisodeVMa();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE208);
  __chkstk_darwin(v49);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE210);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v51 = type metadata accessor for EpisodeListWidgetXL();
  v45 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = v11;
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE1A8);
  __chkstk_darwin(v12 - 8);
  v44 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE218);
  __chkstk_darwin(v14);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v48 = &v39 - v17;
  v18 = sub_3EAAF4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v2;
  if (*(v2 + 8) == 1)
  {
    v52 = *v2;
    if (v23 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(*(v2 + *(v51 + 24) + 40) + 16) >= 4uLL)
    {
      v30 = 4;
    }

    else
    {
      v30 = *(*(v2 + *(v51 + 24) + 40) + 16);
    }

    v31 = v44;
    sub_28FD9C(0, v30, v44);
    KeyPath = swift_getKeyPath();
    v33 = v47;
    sub_293AD0(v2, v47, type metadata accessor for EpisodeListWidgetXL);
    v34 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v35 = swift_allocObject();
    sub_293BE0(v33, v35 + v34, type metadata accessor for EpisodeListWidgetXL);
    v36 = v43;
    sub_FACC(v31, v43, &qword_4FE1A8);
    v37 = (v36 + *(v14 + 36));
    *v37 = KeyPath;
    v37[1] = sub_292F50;
    v37[2] = v35;
    v26 = &qword_4FE218;
    v38 = v48;
    sub_FACC(v36, v48, &qword_4FE218);
    sub_FBD0(v38, v10, &qword_4FE218);
    swift_storeEnumTagMultiPayload();
    sub_2929CC();
    sub_292AB0();
    sub_3EADE4();
    v27 = v38;
    goto LABEL_10;
  }

  v39 = v20;

  sub_3ED9E4();
  v40 = v4;
  v28 = sub_3EB034();
  v41 = v2;
  v29 = v28;
  v4 = v40;
  sub_3E9754();

  v2 = v41;
  sub_3EAAE4();
  swift_getAtKeyPath();
  sub_23968C(v23, 0);
  (*(v19 + 8))(v22, v39);
  if (v52 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v24 = *(v2 + *(v51 + 24) + 40);
  if (*(v24 + 16))
  {
    v25 = v42;
    sub_293AD0(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v42, _s7EpisodeVMa);
    sub_28FED8(v25, v7);
    sub_293B38(v25, _s7EpisodeVMa);
    v26 = &qword_4FE208;
    sub_FBD0(v7, v10, &qword_4FE208);
    swift_storeEnumTagMultiPayload();
    sub_2929CC();
    sub_292AB0();
    sub_3EADE4();
    v27 = v7;
LABEL_10:
    sub_FCF8(v27, v26);
    return;
  }

  __break(1u);
}

uint64_t sub_28F220()
{
  v1 = v0;
  v2 = sub_3EB744();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  *&v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE158);
  __chkstk_darwin(v51);
  v6 = &v41 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE160);
  __chkstk_darwin(v49);
  v50 = &v41 - v7;
  *&v45 = type metadata accessor for EpisodeListWidgetXL();
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  *&v43 = v8;
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE168);
  __chkstk_darwin(v48);
  *&v44 = &v41 - v10;
  v11 = sub_3EAAF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  LODWORD(v13) = *(v1 + 8);
  v47 = v14;
  if (v13 != 1)
  {

    sub_3ED9E4();
    v41 = v9;
    v25 = sub_3EB034();
    v9 = v41;
    sub_3E9754();

    v26 = v47;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v15, 0);
    (*(v12 + 8))(v26, v11);
    if (v55 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = v44;
    sub_29049C(v1);
    KeyPath = swift_getKeyPath();
    sub_293AD0(v1, v9, type metadata accessor for EpisodeListWidgetXL);
    v29 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v30 = swift_allocObject();
    sub_293BE0(v9, v30 + v29, type metadata accessor for EpisodeListWidgetXL);
    v31 = (v27 + *(v48 + 36));
    *v31 = KeyPath;
    v31[1] = sub_292928;
    v31[2] = v30;
    sub_FBD0(v27, v50, &qword_4FE168);
    swift_storeEnumTagMultiPayload();
    sub_292624();
    sub_292810();
    sub_3EADE4();
    v32 = v27;
    v33 = &qword_4FE168;
    return sub_FCF8(v32, v33);
  }

  LOBYTE(v55) = v15;
  if (v15 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v42 = v12;
  *v6 = sub_3EAC74();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE170);
  sub_2906B0(v1, &v6[*(v16 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC160);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_3F5310;
  v18 = enum case for Color.RGBColorSpace.sRGB(_:);
  v19 = *(v3 + 104);
  v20 = v46;
  v19(v46, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  *(v17 + 32) = sub_3EB7C4();
  v19(v20, v18, v2);
  *(v17 + 40) = sub_3EB7C4();
  sub_3EBA14();
  sub_3EBB64();
  sub_3EBB74();
  sub_3EA5A4();
  v21 = v55;
  v43 = v57;
  v44 = v56;
  v22 = v1 + *(v45 + 28);
  v24 = *v22;
  v23 = *(v22 + 16);
  LODWORD(v22) = *(v22 + 32);
  v45 = v24;
  v46 = v23;
  if (v22 == 1)
  {
    v53 = v24;
    v54 = v23;
  }

  else
  {
    v34 = v24;

    sub_3ED9E4();
    v35 = sub_3EB034();
    sub_3E9754();

    v36 = v47;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_27FA74(v34, *(&v45 + 1), v46, *(&v46 + 1), 0);
    (*(v42 + 8))(v36, v11);
    v45 = v53;
    v46 = v54;
  }

  v37 = swift_getKeyPath();
  v52 = 0;
  v38 = &v6[*(v51 + 36)];
  *v38 = v21;
  *(v38 + 24) = v43;
  *(v38 + 8) = v44;
  v39 = v46;
  *(v38 + 40) = v45;
  *(v38 + 56) = v39;
  *(v38 + 9) = v37;
  v38[80] = 0;
  sub_FBD0(v6, v50, &qword_4FE158);
  swift_storeEnumTagMultiPayload();
  sub_292624();
  sub_292810();
  sub_3EADE4();
  v32 = v6;
  v33 = &qword_4FE158;
  return sub_FCF8(v32, v33);
}

double sub_28F9E4()
{
  v1 = sub_3EAAF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = *v0;
  }

  else
  {

    sub_3ED9E4();
    v7 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  result = 0.4;
  if (v6 == 1)
  {
    return 0.5;
  }

  return result;
}

uint64_t sub_28FB44@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE2C8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE2D0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v30 - v22;
  sub_28EBE8(&v30 - v22);
  v24 = sub_3EB084();
  v25 = &v23[*(v18 + 44)];
  *v25 = v24;
  *(v25 + 1) = a2;
  *(v25 + 2) = a3;
  *(v25 + 3) = a4;
  *(v25 + 4) = a5;
  v25[40] = 0;
  sub_28F220();
  v26 = sub_3EB084();
  v27 = &v16[*(v11 + 44)];
  *v27 = v26;
  *(v27 + 1) = a2;
  *(v27 + 2) = a3;
  *(v27 + 3) = a4;
  *(v27 + 4) = a5;
  v27[40] = 0;
  sub_FBD0(v23, v20, &qword_4FE2D0);
  sub_FBD0(v16, v13, &qword_4FE2C8);
  sub_FBD0(v20, a1, &qword_4FE2D0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE2D8);
  sub_FBD0(v13, a1 + *(v28 + 48), &qword_4FE2C8);
  sub_FCF8(v16, &qword_4FE2C8);
  sub_FCF8(v23, &qword_4FE2D0);
  sub_FCF8(v13, &qword_4FE2C8);
  return sub_FCF8(v20, &qword_4FE2D0);
}

uint64_t sub_28FD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for EpisodeListWidgetXL() + 24) + 40);
  v8 = *(v7 + 16);
  if (v8 >= a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = *(v7 + 16);
  }

  if (a1 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 & ~(a2 >> 63);
  if (v8 < a2)
  {
    v11 = *(v7 + 16);
  }

  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v8 < v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 == v11 - v10)
  {

    goto LABEL_13;
  }

LABEL_18:
  v14 = (2 * v11) | 1;
  v15 = *(_s7EpisodeVMa() - 8);
  sub_268D68(v7, v7 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v10, v14);
  v7 = v16;
LABEL_13:
  *a3 = sub_3EAC84();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE1E8);
  sub_291D24(v3, v7, a3 + *(v12 + 44));
}

uint64_t sub_28FED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE250);
  __chkstk_darwin(v34);
  v36 = &v32 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE238);
  __chkstk_darwin(v35);
  v33 = &v32 - v4;
  v5 = type metadata accessor for EpisodeListWidgetXL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = _s7EpisodeVMa();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE248);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_FBD0(a1 + *(v8 + 64), &v32 - v13, &unk_4E9EE0);
  sub_293AD0(a1, v11, _s7EpisodeVMa);
  sub_293AD0(v38, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EpisodeListWidgetXL);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_293BE0(v11, v17 + v15, _s7EpisodeVMa);
  sub_293BE0(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for EpisodeListWidgetXL);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE258);
  *&v14[*(v18 + 36)] = 0;
  v19 = &v14[*(v18 + 40)];
  *v19 = sub_2938A0;
  v19[1] = v17;
  KeyPath = swift_getKeyPath();
  v21 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE260) + 36)];
  *v21 = KeyPath;
  v21[8] = 1;
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = &v14[*(v12 + 52)];
  *v24 = *a1;
  *(v24 + 1) = v23;
  v25 = *(a1 + 16);
  v24[16] = v25;
  sub_3DE90(v22, v23, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  sub_3E8324();
  v26 = v42;
  sub_FCF8(v41, &qword_4FDA08);
  if (!v26)
  {
    sub_FBD0(v14, v36, &qword_4FE248);
    swift_storeEnumTagMultiPayload();
    sub_292B68();
    sub_886BC(&qword_4FE240, &qword_4FE248);
    sub_3EADE4();
    return sub_FCF8(v14, &qword_4FE248);
  }

  result = sub_3E8324();
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v28 = a1 + *(v8 + 96);
    v29 = (v28 + *(type metadata accessor for WidgetPredictedPlayState(0) + 32));
    v30 = v29[1];
    v39 = *v29;
    v40 = v30;
    sub_886BC(&qword_4FE240, &qword_4FE248);
    sub_68DC4();

    v31 = v33;
    sub_3EB3C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    sub_FBD0(v31, v36, &qword_4FE238);
    swift_storeEnumTagMultiPayload();
    sub_292B68();
    sub_3EADE4();
    sub_FCF8(v31, &qword_4FE238);
    return sub_FCF8(v14, &qword_4FE248);
  }

  __break(1u);
  return result;
}

uint64_t sub_29049C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE1E0);
  __chkstk_darwin(v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE1A8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for EpisodeListWidgetXL();
  v12 = *(*(a1 + *(v11 + 24) + 40) + 16);
  if (v12 < 5)
  {
    *v7 = sub_3EAC84();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE1E8);
    sub_291D24(a1, _swiftEmptyArrayStorage, &v7[*(v14 + 44)]);
    v10 = v7;
  }

  else
  {
    if (v12 >= 8)
    {
      v13 = 8;
    }

    else
    {
      v13 = *(*(a1 + *(v11 + 24) + 40) + 16);
    }

    sub_28FD9C(4, v13, v10);
  }

  sub_FBD0(v10, v4, &qword_4FE1A8);
  swift_storeEnumTagMultiPayload();
  sub_886BC(&qword_4FE1A0, &qword_4FE1A8);
  sub_3EADE4();
  return sub_FCF8(v10, &qword_4FE1A8);
}

uint64_t sub_2906B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE1A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  result = type metadata accessor for EpisodeListWidgetXL();
  v11 = (a1 + *(result + 24));
  v12 = *(v11[5] + 16);
  if (v12)
  {
    if (v12 >= 5)
    {
      v13 = 5;
    }

    else
    {
      v13 = *(v11[5] + 16);
    }

    v15 = *v11;
    v14 = v11[1];

    sub_28FD9C(1, v13, v9);
    sub_FBD0(v9, v6, &qword_4FE1A8);
    *a2 = v15;
    a2[1] = v14;
    a2[2] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE200);
    sub_FBD0(v6, a2 + *(v16 + 48), &qword_4FE1A8);

    sub_FCF8(v9, &qword_4FE1A8);
    sub_FCF8(v6, &qword_4FE1A8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_290834@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X8>)
{
  v30[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
  __chkstk_darwin(v5 - 8);
  v7 = v30 - v6;
  v30[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE268);
  __chkstk_darwin(v30[0]);
  v9 = v30 - v8;
  *v9 = sub_3EAC74();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE270);
  sub_290BD8(a1, a2, &v9[*(v10 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_412510;
  v12 = *(a1 + 80);
  *(v11 + 32) = *(a1 + 72);
  *(v11 + 40) = v12;
  v13 = *(a1 + 32);
  *(v11 + 48) = *(a1 + 24);
  *(v11 + 56) = v13;
  v14 = *(a1 + 96);
  *(v11 + 64) = *(a1 + 88);
  *(v11 + 72) = v14;
  v15 = a1 + *(_s7EpisodeVMa() + 96);
  v16 = type metadata accessor for WidgetPredictedPlayState(0);
  v17 = (v15 + *(v16 + 32));
  v18 = v17[1];
  *(v11 + 80) = *v17;
  *(v11 + 88) = v18;
  sub_FBD0(v15 + *(v16 + 24), v7, &qword_4FDA38);
  v19 = sub_3E9224();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v7, 1, v19);

  if (v21 == 1)
  {
    sub_FCF8(v7, &qword_4FDA38);
  }

  else
  {
    sub_3E9214();
    (*(v20 + 8))(v7, v19);
  }

  result = AXDurationStringForDurationWithSeconds();
  if (result)
  {
    v23 = result;
    v24 = sub_3ED244();
    v26 = v25;

    *(v11 + 96) = v24;
    *(v11 + 104) = v26;
    v31 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_886BC(&qword_4EED78, &unk_5010E0);
    v27 = sub_3ED134();
    v29 = v28;

    v31 = v27;
    v32 = v29;
    sub_886BC(&qword_4FE278, &qword_4FE268);
    sub_68DC4();
    sub_3EB5B4();

    return sub_FCF8(v9, &qword_4FE268);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_290BD8@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X8>)
{
  v171 = a2;
  v181 = a3;
  v156 = type metadata accessor for WidgetEmptyText();
  __chkstk_darwin(v156);
  v159 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5D0);
  __chkstk_darwin(v179);
  v158 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v162 = &v151 - v7;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE280);
  __chkstk_darwin(v175);
  v177 = &v151 - v8;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE288);
  __chkstk_darwin(v176);
  v166 = &v151 - v9;
  v163 = type metadata accessor for PlayButtonLarge(0);
  __chkstk_darwin(v163);
  v165 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v173 = &v151 - v12;
  v13 = sub_3EB174();
  v160 = *(v13 - 8);
  v161 = v13;
  __chkstk_darwin(v13);
  v157 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAC8);
  __chkstk_darwin(v155);
  v164 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v182 = &v151 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE290);
  __chkstk_darwin(v18 - 8);
  v180 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v178 = &v151 - v21;
  v22 = type metadata accessor for EpisodeViewStyle();
  __chkstk_darwin(v22);
  v24 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v151 - v26;
  v28 = _s7EpisodeVMa();
  __chkstk_darwin(v28 - 8);
  v30 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for WidgetArtworkView();
  v32 = v31 - 8;
  __chkstk_darwin(v31);
  v34 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE298);
  v36 = v35 - 8;
  __chkstk_darwin(v35);
  v38 = &v151 - v37;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE2A0);
  __chkstk_darwin(v167);
  v170 = &v151 - v39;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE2A8);
  __chkstk_darwin(v169);
  v174 = &v151 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v168 = &v151 - v42;
  __chkstk_darwin(v43);
  v183 = &v151 - v44;
  v172 = a1;
  sub_293AD0(a1, v30, _s7EpisodeVMa);
  v45 = enum case for WidgetFamily.systemExtraLarge(_:);
  v46 = sub_3ECF74();
  v47 = *(v46 - 8);
  v48 = *(v47 + 104);
  v153 = v45;
  v49 = v45;
  v50 = v46;
  v151 = v47 + 104;
  v152 = v48;
  v48(v27, v49, v46);
  swift_storeEnumTagMultiPayload();
  sub_293BE0(v27, v24, type metadata accessor for EpisodeViewStyle);
  v154 = v22;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = 8.0;
  }

  else
  {
    v51 = 6.0;
  }

  sub_293B38(v24, type metadata accessor for EpisodeViewStyle);
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  sub_293BE0(v30, &v34[*(v32 + 28)], _s7EpisodeVMa);
  *&v34[*(v32 + 32)] = v51;
  sub_3EBA74();
  sub_3EA804();
  sub_293BE0(v34, v38, type metadata accessor for WidgetArtworkView);
  v52 = &v38[*(v36 + 44)];
  v53 = v196;
  *(v52 + 4) = v195;
  *(v52 + 5) = v53;
  *(v52 + 6) = v197;
  v54 = v192;
  *v52 = v191;
  *(v52 + 1) = v54;
  v55 = v194;
  *(v52 + 2) = v193;
  *(v52 + 3) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC398);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5300;
  v57 = sub_3EB0B4();
  *(inited + 32) = v57;
  v58 = sub_3EB0D4();
  *(inited + 33) = v58;
  v59 = sub_3EB094();
  *(inited + 34) = v59;
  v60 = sub_3EB0C4();
  sub_3EB0C4();
  if (sub_3EB0C4() != v57)
  {
    v60 = sub_3EB0C4();
  }

  sub_3EB0C4();
  if (sub_3EB0C4() != v58)
  {
    v60 = sub_3EB0C4();
  }

  v61 = v170;

  sub_3EB0C4();
  if (sub_3EB0C4() != v59)
  {
    v60 = sub_3EB0C4();
  }

  sub_3EA264();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  sub_FACC(v38, v61, &qword_4FE298);
  v70 = v61 + *(v167 + 36);
  *v70 = v60;
  *(v70 + 8) = v63;
  *(v70 + 16) = v65;
  *(v70 + 24) = v67;
  *(v70 + 32) = v69;
  *(v70 + 40) = 0;
  v71 = sub_3EB0A4();
  v72 = sub_3EB0C4();
  sub_3EB0C4();
  if (sub_3EB0C4() != v71)
  {
    v72 = sub_3EB0C4();
  }

  sub_3EA264();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v61;
  v82 = v168;
  sub_FACC(v81, v168, &qword_4FE2A0);
  v83 = v82 + *(v169 + 36);
  *v83 = v72;
  *(v83 + 8) = v74;
  *(v83 + 16) = v76;
  *(v83 + 24) = v78;
  *(v83 + 32) = v80;
  *(v83 + 40) = 0;
  sub_FACC(v82, v183, &qword_4FE2A8);
  v84 = *(v171 + *(type metadata accessor for EpisodeListWidgetXL() + 24) + 32);
  if (v84 == 5)
  {
    v85 = type metadata accessor for EpisodeCaptionView();
    v86 = v85[7];
    v171 = _s7EpisodeVMa;
    v87 = v182;
    v88 = v172;
    sub_293AD0(v172, v182 + v86, _s7EpisodeVMa);
    *v87 = swift_getKeyPath();
    *(v87 + 8) = 0;
    *(v87 + 16) = swift_getKeyPath();
    *(v87 + 24) = 0;
    v89 = v87;
    v90 = v85[6];
    *(v89 + v90) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
    swift_storeEnumTagMultiPayload();
    *(v89 + v85[8]) = 1;
    v91 = v89;
    sub_3EB1A4();
    v92 = sub_3EB114();

    KeyPath = swift_getKeyPath();
    v94 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAD0) + 36));
    *v94 = KeyPath;
    v94[1] = v92;
    v95 = swift_getKeyPath();
    v96 = v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAD8) + 36);
    *v96 = v95;
    *(v96 + 8) = 0;
    v97 = swift_getKeyPath();
    v98 = (v91 + *(v155 + 36));
    *v98 = v97;
    v98[1] = 4;
    v99 = *(v88 + 12);
    *&v184 = *(v88 + 11);
    *(&v184 + 1) = v99;
    sub_68DC4();

    v100 = sub_3EB394();
    v102 = v101;
    v104 = v103;
    sub_3EB0F4();
    v106 = v160;
    v105 = v161;
    v107 = v157;
    (*(v160 + 104))(v157, enum case for Font.Leading.tight(_:), v161);
    sub_3EB194();

    (*(v106 + 8))(v107, v105);
    v108 = sub_3EB2A4();
    v110 = v109;
    LOBYTE(v105) = v111;
    v170 = v112;

    sub_94D30(v100, v102, v104 & 1);

    v113 = v173;
    sub_293AD0(v172, v173, v171);
    v114 = sub_3EBA74();
    v115 = v164;
    v116 = (v113 + *(v163 + 20));
    *v116 = v114;
    v116[1] = v117;
    sub_FBD0(v182, v115, &qword_4FDAC8);
    v118 = v113;
    v119 = v165;
    sub_293AD0(v118, v165, type metadata accessor for PlayButtonLarge);
    v120 = v166;
    sub_FBD0(v115, v166, &qword_4FDAC8);
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE2B0);
    *(v120 + v121[12]) = 0x4010000000000000;
    v122 = v120 + v121[16];
    *v122 = v108;
    *(v122 + 8) = v110;
    LOBYTE(v105) = v105 & 1;
    *(v122 + 16) = v105;
    *(v122 + 24) = v170;
    *(v122 + 32) = 0x3FF0000000000000;
    *(v120 + v121[20]) = 0x4010000000000000;
    sub_293AD0(v119, v120 + v121[24], type metadata accessor for PlayButtonLarge);
    sub_243E88(v108, v110, v105);

    sub_243E88(v108, v110, v105);

    v172 = type metadata accessor for PlayButtonLarge;
    sub_293B38(v119, type metadata accessor for PlayButtonLarge);
    sub_94D30(v108, v110, v105);

    sub_FCF8(v115, &qword_4FDAC8);
    sub_FBD0(v120, v177, &qword_4FE288);
    swift_storeEnumTagMultiPayload();
    sub_27CAD4();
    sub_886BC(&qword_4FE2B8, &qword_4FE288);
    v123 = v178;
    sub_3EADE4();
    sub_94D30(v108, v110, v105);

    sub_FCF8(v120, &qword_4FE288);
    sub_293B38(v173, v172);
    v124 = v182;
    v125 = &qword_4FDAC8;
  }

  else
  {
    v126 = v159;
    v152(&v159[*(v156 + 20)], v153, v50);
    swift_storeEnumTagMultiPayload();
    *v126 = v84;
    v127 = sub_3EB094();
    v128 = sub_3EB0C4();
    sub_3EB0C4();
    if (sub_3EB0C4() != v127)
    {
      v128 = sub_3EB0C4();
    }

    sub_3EA264();
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v136 = v135;
    v137 = v126;
    v138 = v158;
    sub_293BE0(v137, v158, type metadata accessor for WidgetEmptyText);
    v139 = v138 + *(v179 + 36);
    *v139 = v128;
    *(v139 + 8) = v130;
    *(v139 + 16) = v132;
    *(v139 + 24) = v134;
    *(v139 + 32) = v136;
    *(v139 + 40) = 0;
    v140 = v162;
    sub_FACC(v138, v162, &qword_4FD5D0);
    sub_FBD0(v140, v177, &qword_4FD5D0);
    swift_storeEnumTagMultiPayload();
    sub_27CAD4();
    sub_886BC(&qword_4FE2B8, &qword_4FE288);
    v123 = v178;
    sub_3EADE4();
    v124 = v140;
    v125 = &qword_4FD5D0;
  }

  sub_FCF8(v124, v125);
  sub_3EBA74();
  sub_3EA804();
  v141 = v183;
  v142 = v174;
  sub_FBD0(v183, v174, &qword_4FE2A8);
  v143 = v180;
  sub_FBD0(v123, v180, &qword_4FE290);
  v144 = v181;
  sub_FBD0(v142, v181, &qword_4FE2A8);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE2C0);
  sub_FBD0(v143, v144 + *(v145 + 48), &qword_4FE290);
  v146 = v144 + *(v145 + 64);
  v147 = v186;
  *(v146 + 56) = v187;
  v148 = v189;
  *(v146 + 72) = v188;
  *(v146 + 88) = v148;
  *(v146 + 104) = v190;
  v149 = v185;
  *(v146 + 8) = v184;
  *(v146 + 24) = v149;
  *v146 = 0x4028000000000000;
  *(v146 + 40) = v147;
  sub_FCF8(v123, &qword_4FE290);
  sub_FCF8(v141, &qword_4FE2A8);
  sub_FCF8(v143, &qword_4FE290);
  return sub_FCF8(v142, &qword_4FE2A8);
}

uint64_t sub_291D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v49 = a3;
  v4 = type metadata accessor for EpisodeListView();
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE1F0);
  __chkstk_darwin(v47);
  v48 = &v41 - v7;
  v41 = type metadata accessor for WidgetEmptyText();
  __chkstk_darwin(v41);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD868);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD870);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v44 = &v41 - v17;
  v18 = sub_3EAAF4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (*(a1 + 8) == 1)
  {
    LOBYTE(v50) = *a1;
    v23 = v22;
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_6:
    v25 = sub_3EE804();

    v26 = v45;
    if ((v25 & 1) == 0 || *(v45 + 16))
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_3ED9E4();
  v24 = sub_3EB034();
  sub_3E9754();

  sub_3EAAE4();
  swift_getAtKeyPath();
  sub_23968C(v22, 0);
  (*(v19 + 8))(v21, v18);
  v23 = v50;
  if (!v50)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v23 == 1)
  {
    goto LABEL_6;
  }

  v26 = v45;
  if (*(v45 + 16))
  {
LABEL_8:
    *v6 = swift_getKeyPath();
    v6[8] = 0;
    v27 = v4[5];
    *&v6[v27] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
    swift_storeEnumTagMultiPayload();
    v28 = &v6[v4[6]];
    *v28 = swift_getKeyPath();
    v28[8] = 0;
    v29 = &v6[v4[7]];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    *&v6[v4[8]] = v26;
    *&v6[v4[9]] = 4;
    v6[v4[10]] = 5;
    *&v6[v4[11]] = 0x4028000000000000;
    sub_293AD0(v6, v48, type metadata accessor for EpisodeListView);
    swift_storeEnumTagMultiPayload();
    sub_27FBCC();
    sub_293B98(&qword_4FE1F8, type metadata accessor for EpisodeListView);

    sub_3EADE4();
    return sub_293B38(v6, type metadata accessor for EpisodeListView);
  }

LABEL_10:
  *v14 = sub_3EAC74();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v31 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8A8) + 44)];
  type metadata accessor for EpisodeViewStyle();
  swift_storeEnumTagMultiPayload();
  *v11 = 1;
  v32 = v42;
  sub_293AD0(v11, v42, type metadata accessor for WidgetEmptyText);
  *v31 = 0;
  v31[8] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8B0);
  sub_293AD0(v32, &v31[*(v33 + 48)], type metadata accessor for WidgetEmptyText);
  v34 = &v31[*(v33 + 64)];
  *v34 = 0;
  v34[8] = 1;
  sub_293B38(v11, type metadata accessor for WidgetEmptyText);
  sub_293B38(v32, type metadata accessor for WidgetEmptyText);
  sub_3EBA74();
  sub_3EA804();
  v35 = v43;
  sub_FACC(v14, v43, &qword_4FD868);
  v36 = (v35 + *(v46 + 36));
  v37 = v55;
  v36[4] = v54;
  v36[5] = v37;
  v36[6] = v56;
  v38 = v51;
  *v36 = v50;
  v36[1] = v38;
  v39 = v53;
  v36[2] = v52;
  v36[3] = v39;
  v40 = v44;
  sub_FACC(v35, v44, &qword_4FD870);
  sub_FBD0(v40, v48, &qword_4FD870);
  swift_storeEnumTagMultiPayload();
  sub_27FBCC();
  sub_293B98(&qword_4FE1F8, type metadata accessor for EpisodeListView);
  sub_3EADE4();
  return sub_FCF8(v40, &qword_4FD870);
}

unint64_t sub_2924AC()
{
  result = qword_4FE0E8;
  if (!qword_4FE0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE0C0);
    sub_292538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE0E8);
  }

  return result;
}

unint64_t sub_292538()
{
  result = qword_4FE0F0;
  if (!qword_4FE0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE0D8);
    sub_886BC(&qword_4FD910, &qword_4FD918);
    sub_886BC(&qword_4FE0F8, &qword_4FE100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE0F0);
  }

  return result;
}

unint64_t sub_292624()
{
  result = qword_4FE178;
  if (!qword_4FE178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE168);
    sub_2926DC();
    sub_886BC(&qword_4FE1B0, &qword_4FE1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE178);
  }

  return result;
}

unint64_t sub_2926DC()
{
  result = qword_4FE180;
  if (!qword_4FE180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE188);
    sub_292760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE180);
  }

  return result;
}

unint64_t sub_292760()
{
  result = qword_4FE190;
  if (!qword_4FE190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE198);
    sub_886BC(&qword_4FE1A0, &qword_4FE1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE190);
  }

  return result;
}

unint64_t sub_292810()
{
  result = qword_4FE1C0;
  if (!qword_4FE1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE158);
    sub_886BC(&qword_4FE1C8, &qword_4FE1D0);
    sub_2928C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE1C0);
  }

  return result;
}

unint64_t sub_2928C8()
{
  result = qword_4FE1D8;
  if (!qword_4FE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE1D8);
  }

  return result;
}

uint64_t sub_292928(BOOL *a1)
{
  result = type metadata accessor for EpisodeListWidgetXL();
  v4 = *a1;
  v5 = v4 != 2 && (v4 & 1) != 0 && *(*(v1 + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80)) + *(result + 24) + 40) + 16) > 3uLL;
  *a1 = v5;
  return result;
}

unint64_t sub_2929CC()
{
  result = qword_4FE220;
  if (!qword_4FE220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE218);
    sub_886BC(&qword_4FE1A0, &qword_4FE1A8);
    sub_886BC(&qword_4FE1B0, &qword_4FE1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE220);
  }

  return result;
}

unint64_t sub_292AB0()
{
  result = qword_4FE228;
  if (!qword_4FE228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE208);
    sub_292B68();
    sub_886BC(&qword_4FE240, &qword_4FE248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE228);
  }

  return result;
}

unint64_t sub_292B68()
{
  result = qword_4FE230;
  if (!qword_4FE230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE238);
    sub_886BC(&qword_4FE240, &qword_4FE248);
    sub_293B98(&qword_4F19C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE230);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for EpisodeListWidgetXL();
  v2 = *(*(v1 - 8) + 80);
  v22 = *(*(v1 - 8) + 64);
  v23 = v0;
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_23968C(*(v0 + v3), *(v0 + v3 + 8));
  sub_23968C(*(v4 + 16), *(v4 + 24));
  v5 = v0 + v3 + *(v1 + 24);

  v6 = type metadata accessor for EpisodeListEntry();
  v7 = v6[8];
  v8 = sub_3E5FC4();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v6[11];
  v10 = sub_3E5F84();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v5 + v9, 1, v10);
  v13 = *(v11 + 8);
  if (!v12)
  {
    v13(v5 + v9, v10);
  }

  v13(v5 + v6[12], v10);
  v14 = v6[13];
  v15 = sub_3ECFF4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  v17 = v6[14];
  v18 = sub_3E5DC4();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v20 = v4 + *(v1 + 28);
  sub_27FA74(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32));

  return _swift_deallocObject(v23, v3 + v22, v2 | 7);
}

uint64_t sub_292F50(BOOL *a1)
{
  result = type metadata accessor for EpisodeListWidgetXL();
  v4 = *a1;
  v5 = v4 != 2 && (v4 & 1) != 0 && *(*(v1 + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80)) + *(result + 24) + 40) + 16) < 4uLL;
  *a1 = v5;
  return result;
}

uint64_t sub_292FE0()
{
  v1 = _s7EpisodeVMa();
  v63 = *(*(v1 - 1) + 80);
  v59 = *(*(v1 - 1) + 64);
  v64 = type metadata accessor for EpisodeListWidgetXL();
  v2 = *(*(v64 - 8) + 80);
  v60 = (v63 + 16) & ~v63;
  v62 = *(*(v64 - 8) + 64);
  v65 = v0;
  v3 = v0 + v60;
  sub_3DEF8(*v3, *(v3 + 8), *(v3 + 16));

  v4 = v1[11];
  v5 = sub_3E5F84();
  v66 = *(v5 - 8);
  v67 = *(v66 + 48);
  if (!v67(v0 + v60 + v4, 1, v5))
  {
    (*(v66 + 8))(v3 + v4, v5);
  }

  v6 = v3 + v1[13];
  v7 = sub_3E7784();
  v8 = *(*(v7 - 8) + 48);
  if (!v8(v6, 1, v7))
  {

    v9 = *(v6 + 32);
    if (v9 != 255)
    {
      sub_F2248(*(v6 + 16), *(v6 + 24), v9);
    }

    v10 = *(v6 + 64);
    if (v10 != 255)
    {
      sub_F2260(*(v6 + 56), v10);
    }

    v11 = *(v6 + 80);
    if (v11 != 255)
    {
      sub_F2260(*(v6 + 72), v11);
    }

    v12 = *(v6 + 96);
    if (v12 != 255)
    {
      sub_F2260(*(v6 + 88), v12);
    }

    v13 = *(v6 + 112);
    if (v13 != 255)
    {
      sub_F2260(*(v6 + 104), v13);
    }

    v14 = *(v6 + 128);
    if (v14 != 255)
    {
      sub_F2260(*(v6 + 120), v14);
    }

    v15 = *(v7 + 44);
    v16 = sub_3E7624();
    (*(*(v16 - 8) + 8))(v6 + v15, v16);
  }

  v17 = v3 + v1[14];
  if (!v8(v17, 1, v7))
  {

    v18 = *(v17 + 32);
    if (v18 != 255)
    {
      sub_F2248(*(v17 + 16), *(v17 + 24), v18);
    }

    v19 = *(v17 + 64);
    if (v19 != 255)
    {
      sub_F2260(*(v17 + 56), v19);
    }

    v20 = *(v17 + 80);
    if (v20 != 255)
    {
      sub_F2260(*(v17 + 72), v20);
    }

    v21 = *(v17 + 96);
    if (v21 != 255)
    {
      sub_F2260(*(v17 + 88), v21);
    }

    v22 = *(v17 + 112);
    if (v22 != 255)
    {
      sub_F2260(*(v17 + 104), v22);
    }

    v23 = *(v17 + 128);
    if (v23 != 255)
    {
      sub_F2260(*(v17 + 120), v23);
    }

    v24 = *(v7 + 44);
    v25 = sub_3E7624();
    (*(*(v25 - 8) + 8))(v17 + v24, v25);
  }

  v26 = v1[16];
  v27 = sub_3E5DC4();
  v28 = *(v27 - 8);
  v58 = *(v28 + 48);
  if (!v58(v3 + v26, 1, v27))
  {
    (*(v28 + 8))(v3 + v26, v27);
  }

  v57 = v28;
  v29 = v1[20];
  if (!v67(v3 + v29, 1, v5))
  {
    (*(v66 + 8))(v3 + v29, v5);
  }

  v30 = v1[22];
  if (!v67(v3 + v30, 1, v5))
  {
    (*(v66 + 8))(v3 + v30, v5);
  }

  v31 = v1[23];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  (*(*(v32 - 8) + 8))(v3 + v31, v32);
  v33 = v3 + v1[24];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
  if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
  {
    v35 = *(v66 + 8);
    v35(v33, v5);
    v35(v33 + *(v34 + 36), v5);
  }

  v36 = v60 + v59 + v2;
  v37 = type metadata accessor for WidgetPredictedPlayState(0);
  v38 = *(v37 + 20);
  if (!v67(v33 + v38, 2, v5))
  {
    (*(v66 + 8))(v33 + v38, v5);
  }

  v61 = v2;
  v39 = v36 & ~v2;
  v40 = *(v37 + 24);
  v41 = sub_3E9224();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v33 + v40, 1, v41))
  {
    (*(v42 + 8))(v33 + v40, v41);
  }

  v43 = v65 + v39;
  sub_23968C(*(v65 + v39), *(v65 + v39 + 8));
  sub_23968C(*(v43 + 16), *(v43 + 24));
  v44 = v65 + v39 + *(v64 + 24);

  v45 = type metadata accessor for EpisodeListEntry();
  v46 = v45[8];
  v47 = sub_3E5FC4();
  (*(*(v47 - 8) + 8))(v44 + v46, v47);

  v48 = v45[11];
  v49 = v67(v44 + v48, 1, v5);
  v50 = *(v66 + 8);
  if (!v49)
  {
    v50(v44 + v48, v5);
  }

  v50(v44 + v45[12], v5);
  v51 = v45[13];
  v52 = sub_3ECFF4();
  v53 = *(v52 - 8);
  if (!(*(v53 + 48))(v44 + v51, 1, v52))
  {
    (*(v53 + 8))(v44 + v51, v52);
  }

  v54 = v45[14];
  if (!v58(v44 + v54, 1, v27))
  {
    (*(v57 + 8))(v44 + v54, v27);
  }

  v55 = v43 + *(v64 + 28);
  sub_27FA74(*v55, *(v55 + 8), *(v55 + 16), *(v55 + 24), *(v55 + 32));

  return _swift_deallocObject(v65, v39 + v62, v63 | v61 | 7);
}

id sub_2938A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s7EpisodeVMa() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for EpisodeListWidgetXL() - 8);
  v7 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_290834(v1 + v4, v7, a1);
}

uint64_t sub_293974@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3EA9F4();
  *a1 = result;
  return result;
}

uint64_t sub_2939A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3EA9F4();
  *a1 = result;
  return result;
}

uint64_t sub_293A34@<X0>(void *a1@<X8>)
{
  sub_288D48();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_293AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_293B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_293B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_293BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_293C4C()
{
  result = qword_4FE2E0;
  if (!qword_4FE2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE2E8);
    sub_886BC(&qword_4FE0E0, &qword_4FE0D0);
    sub_2924AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE2E0);
  }

  return result;
}

uint64_t sub_293D1C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = _s7EpisodeVMa();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for EpisodeViewStyle();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_293EA0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = _s7EpisodeVMa();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for EpisodeViewStyle();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for EpisodeRowView()
{
  result = qword_4FE348;
  if (!qword_4FE348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_294060()
{
  sub_2800E4(319, &unk_4FD338, &type metadata for WidgetListStyle, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_276980();
    if (v1 <= 0x3F)
    {
      _s7EpisodeVMa();
      if (v2 <= 0x3F)
      {
        sub_2800E4(319, &unk_4FD4A8, &type metadata for WidgetEmptyMessage, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          type metadata accessor for EpisodeViewStyle();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_294198@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE390);
  __chkstk_darwin(v38);
  v37 = &v36 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE398);
  __chkstk_darwin(v39);
  v36 = &v36 - v3;
  v4 = type metadata accessor for EpisodeRowView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE3A0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE3A8);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = v1 + *(v5 + 32);
  v15 = _s7EpisodeVMa();
  sub_FBD0(v14 + *(v15 + 64), v10, &unk_4E9EE0);
  v16 = *(v1 + *(v5 + 44));
  sub_2966EC(v1, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EpisodeRowView);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_296558(&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for EpisodeRowView);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE3B0);
  *&v10[*(v19 + 36)] = v16;
  v20 = &v10[*(v19 + 40)];
  *v20 = sub_296388;
  v20[1] = v18;
  v21 = *v14;
  v22 = *(v14 + 8);
  v23 = &v10[*(v8 + 52)];
  *v23 = *v14;
  *(v23 + 1) = v22;
  v24 = *(v14 + 16);
  v23[16] = v24;
  sub_3DE90(v21, v22, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  sub_3E8324();
  v25 = *(&v44 + 1);
  sub_FCF8(&v43, &qword_4FDA08);
  if (!v25)
  {
    sub_FBD0(v10, v37, &qword_4FE3A0);
    swift_storeEnumTagMultiPayload();
    sub_2963F8();
    sub_886BC(&qword_4FE3C0, &qword_4FE3A0);
    sub_3EADE4();
    goto LABEL_5;
  }

  result = sub_3E8324();
  if (*(&v44 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    v27 = *(v15 + 96);
    v28 = (v14 + v27 + *(type metadata accessor for WidgetPredictedPlayState(0) + 32));
    v29 = v28[1];
    v41 = *v28;
    v42 = v29;
    sub_886BC(&qword_4FE3C0, &qword_4FE3A0);
    sub_68DC4();

    v30 = v36;
    sub_3EB3C4();

    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    sub_FBD0(v30, v37, &qword_4FE398);
    swift_storeEnumTagMultiPayload();
    sub_2963F8();
    sub_3EADE4();
    sub_FCF8(v30, &qword_4FE398);
LABEL_5:
    sub_FCF8(v10, &qword_4FE3A0);
    sub_3EBA84();
    sub_3EA804();
    v31 = v40;
    sub_2964E0(v13, v40);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE3C8);
    v32 = (v31 + *(result + 36));
    v33 = v48;
    v32[4] = v47;
    v32[5] = v33;
    v32[6] = v49;
    v34 = v44;
    *v32 = v43;
    v32[1] = v34;
    v35 = v46;
    v32[2] = v45;
    v32[3] = v35;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_294784(uint64_t a1)
{
  v2 = sub_3EAF84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE3D0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  *v8 = sub_3EAB64();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE3D8);
  sub_294940(a1, &v8[*(v9 + 44)]);
  sub_3EAF74();
  sub_886BC(&qword_4FE3E0, &qword_4FE3D0);
  sub_3EB604();
  (*(v3 + 8))(v5, v2);
  return sub_FCF8(v8, &qword_4FE3D0);
}

uint64_t sub_294940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v119 = type metadata accessor for PlayButtonSmall();
  __chkstk_darwin(v119);
  v118 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE3E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v120 = &v97 - v8;
  v115 = type metadata accessor for WidgetEmptyText();
  __chkstk_darwin(v115);
  v99 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE3F0);
  __chkstk_darwin(v112);
  v11 = &v97 - v10;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE3F8);
  __chkstk_darwin(v113);
  v98 = (&v97 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE400);
  __chkstk_darwin(v13 - 8);
  v116 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v123 = &v97 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE408);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v97 - v17;
  v104 = type metadata accessor for EpisodeViewStyle();
  __chkstk_darwin(v104);
  v103 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s7EpisodeVMa();
  __chkstk_darwin(v19 - 8);
  v105 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for WidgetArtworkView();
  __chkstk_darwin(v102);
  v107 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v101 = (&v97 - v23);
  __chkstk_darwin(v24);
  v106 = &v97 - v25;
  v26 = sub_3ECF74();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v100 = (&v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v31 = &v97 - v30;
  v32 = sub_3EAAF4();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE410);
  __chkstk_darwin(v36 - 8);
  v111 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v121 = v6;
  v122 = &v97 - v39;
  v40 = *a1;
  v124 = a1;
  v41 = *(a1 + 8) == 1;
  v114 = v11;
  if (v41)
  {
    LOBYTE(v128) = v40;
    v42 = v40;
    if (!v40)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_3ED9E4();
    v43 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_27CD50(v40, 0);
    (*(v33 + 8))(v35, v32);
    v42 = v128;
    if (!v128)
    {
LABEL_7:
      v44 = sub_3EE804();

      if ((v44 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  if (v42 == 1)
  {
    goto LABEL_7;
  }

LABEL_10:
  v45 = type metadata accessor for EpisodeRowView();
  sub_282F54(v31);
  v46 = v100;
  (*(v27 + 104))(v100, enum case for WidgetFamily.systemMedium(_:), v26);
  sub_2967B4(&qword_4FDD38, &type metadata accessor for WidgetFamily);
  sub_3ED514();
  sub_3ED514();
  v47 = *(v27 + 8);
  v47(v46, v26);
  v47(v31, v26);
  if (v128 != v125)
  {
    (*(v109 + 56))(v122, 1, 1, v110);
    goto LABEL_16;
  }

LABEL_11:
  v48 = type metadata accessor for EpisodeRowView();
  v49 = *(v48 + 24);
  v50 = v48;
  v100 = v48;
  v51 = v124;
  v52 = v105;
  sub_2966EC(v124 + v49, v105, _s7EpisodeVMa);
  v53 = v51 + *(v50 + 32);
  v54 = v103;
  sub_2966EC(v53, v103, type metadata accessor for EpisodeViewStyle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = 8.0;
  }

  else
  {
    v55 = 6.0;
  }

  sub_296754(v54, type metadata accessor for EpisodeViewStyle);
  KeyPath = swift_getKeyPath();
  v57 = v101;
  *v101 = KeyPath;
  *(v57 + 8) = 0;
  v58 = v102;
  sub_296558(v52, v57 + *(v102 + 20), _s7EpisodeVMa);
  *(v57 + *(v58 + 24)) = v55;
  v59 = v106;
  sub_296558(v57, v106, type metadata accessor for WidgetArtworkView);
  sub_3EBA74();
  sub_3EA434();
  v105 = v128;
  v60 = v130;
  v61 = v132;
  v62 = v133;
  LOBYTE(v125) = 1;
  v127 = v129;
  v126 = v131;
  v63 = v107;
  sub_2966EC(v59, v107, type metadata accessor for WidgetArtworkView);
  v64 = v125;
  v65 = v127;
  v66 = v126;
  v67 = v108;
  sub_2966EC(v63, v108, type metadata accessor for WidgetArtworkView);
  v68 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE418) + 48);
  *v68 = 0;
  *(v68 + 8) = v64;
  *(v68 + 16) = v105;
  *(v68 + 24) = v65;
  *(v68 + 32) = v60;
  *(v68 + 40) = v66;
  *(v68 + 48) = v61;
  *(v68 + 56) = v62;
  sub_296754(v59, type metadata accessor for WidgetArtworkView);
  v69 = v63;
  v45 = v100;
  sub_296754(v69, type metadata accessor for WidgetArtworkView);
  v70 = v122;
  sub_2965C0(v67, v122);
  (*(v109 + 56))(v70, 0, 1, v110);
LABEL_16:
  v72 = v118;
  v71 = v119;
  v73 = v123;
  v74 = v115;
  v75 = v114;
  type metadata accessor for EpisodeRowView();
  v76 = *(v124 + v45[7]);
  if (v76 == 5)
  {
    v77 = sub_3EAC84();
    v78 = v98;
    *v98 = v77;
    *(v78 + 8) = 0x4000000000000000;
    *(v78 + 16) = 0;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE420);
    sub_295828(v124, (v78 + *(v79 + 44)));
    v80 = sub_3EB0E4();
    sub_3EA264();
    v81 = v78 + *(v113 + 36);
    *v81 = v80;
    *(v81 + 8) = v82;
    *(v81 + 16) = v83;
    *(v81 + 24) = v84;
    *(v81 + 32) = v85;
    *(v81 + 40) = 0;
    sub_FBD0(v78, v75, &qword_4FE3F8);
    swift_storeEnumTagMultiPayload();
    sub_2967B4(&qword_4FD600, type metadata accessor for WidgetEmptyText);
    sub_296630();
    sub_3EADE4();
    sub_FCF8(v78, &qword_4FE3F8);
  }

  else
  {
    v86 = v99;
    sub_2966EC(v124 + v45[8], &v99[*(v74 + 20)], type metadata accessor for EpisodeViewStyle);
    *v86 = v76;
    sub_2966EC(v86, v75, type metadata accessor for WidgetEmptyText);
    swift_storeEnumTagMultiPayload();
    sub_2967B4(&qword_4FD600, type metadata accessor for WidgetEmptyText);
    sub_296630();
    sub_3EADE4();
    sub_296754(v86, type metadata accessor for WidgetEmptyText);
  }

  sub_2966EC(v124 + v45[6], v72, _s7EpisodeVMa);
  v87 = v72 + *(v71 + 20);
  *v87 = swift_getKeyPath();
  *(v87 + 8) = 0;
  sub_2967B4(&qword_4FE440, type metadata accessor for PlayButtonSmall);
  v88 = v120;
  sub_3EB5E4();
  sub_296754(v72, type metadata accessor for PlayButtonSmall);
  v89 = v122;
  v90 = v111;
  sub_FBD0(v122, v111, &qword_4FE410);
  v91 = v116;
  sub_FBD0(v73, v116, &qword_4FE400);
  v92 = v121;
  sub_FBD0(v88, v121, &qword_4FE3E8);
  v93 = v117;
  sub_FBD0(v90, v117, &qword_4FE410);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE448);
  sub_FBD0(v91, v93 + v94[12], &qword_4FE400);
  v95 = v93 + v94[16];
  *v95 = 0x4028000000000000;
  *(v95 + 8) = 0;
  sub_FBD0(v92, v93 + v94[20], &qword_4FE3E8);
  sub_FCF8(v88, &qword_4FE3E8);
  sub_FCF8(v123, &qword_4FE400);
  sub_FCF8(v89, &qword_4FE410);
  sub_FCF8(v92, &qword_4FE3E8);
  sub_FCF8(v91, &qword_4FE400);
  return sub_FCF8(v90, &qword_4FE410);
}

uint64_t sub_295828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE450) - 8;
  __chkstk_darwin(v38);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = sub_3EB174();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1 + *(type metadata accessor for EpisodeRowView() + 24);
  v11 = *(v35 + 96);
  v40 = *(v35 + 88);
  v41 = v11;
  sub_68DC4();

  v12 = sub_3EB394();
  v14 = v13;
  v16 = v15;
  sub_3EB1B4();
  (*(v8 + 104))(v10, enum case for Font.Leading.tight(_:), v7);
  sub_3EB194();

  (*(v8 + 8))(v10, v7);
  v17 = sub_3EB2A4();
  v19 = v18;
  v36 = v20;
  v22 = v21;

  sub_94D30(v12, v14, v16 & 1);

  v23 = type metadata accessor for EpisodeCaptionView();
  sub_2966EC(v35, &v6[v23[7]], _s7EpisodeVMa);
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(v6 + 2) = swift_getKeyPath();
  v6[24] = 0;
  v24 = v23[6];
  *&v6[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  swift_storeEnumTagMultiPayload();
  v6[v23[8]] = 1;
  v25 = sub_3EB1A4();
  KeyPath = swift_getKeyPath();
  v27 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAD0) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = swift_getKeyPath();
  v29 = v37;
  v30 = &v6[*(v38 + 44)];
  *v30 = v28;
  v30[8] = 0;
  sub_FBD0(v6, v29, &qword_4FE450);
  v31 = v39;
  *v39 = v17;
  v31[1] = v19;
  LOBYTE(v25) = v36 & 1;
  *(v31 + 16) = v36 & 1;
  v31[3] = v22;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE458);
  sub_FBD0(v29, v32 + *(v33 + 48), &qword_4FE450);
  sub_243E88(v17, v19, v25);

  sub_FCF8(v6, &qword_4FE450);
  sub_FCF8(v29, &qword_4FE450);
  sub_94D30(v17, v19, v25);
}

uint64_t sub_295C10()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodeRowView();
  v54 = *(*(v2 - 8) + 64);
  v55 = *(*(v2 - 8) + 80);
  v53 = (v55 + 16) & ~v55;
  v3 = v1 + v53;
  sub_27CD50(*(v1 + v53), *(v1 + v53 + 8));
  v4 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_3ECF74();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v52 = v2;
  v6 = v3 + *(v2 + 24);
  sub_3DEF8(*v6, *(v6 + 8), *(v6 + 16));

  v7 = _s7EpisodeVMa();
  v8 = v7[11];
  v9 = sub_3E5F84();
  v10 = *(v9 - 8);
  v56 = *(v10 + 48);
  if (!v56(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v51 = v10;

  v11 = v6 + v7[13];
  v12 = sub_3E7784();
  v13 = *(*(v12 - 8) + 48);
  if (!v13(v11, 1, v12))
  {

    v14 = *(v11 + 32);
    if (v14 != 255)
    {
      sub_F2248(*(v11 + 16), *(v11 + 24), v14);
    }

    v15 = *(v11 + 64);
    if (v15 != 255)
    {
      sub_F2260(*(v11 + 56), v15);
    }

    v16 = *(v11 + 80);
    if (v16 != 255)
    {
      sub_F2260(*(v11 + 72), v16);
    }

    v17 = *(v11 + 96);
    if (v17 != 255)
    {
      sub_F2260(*(v11 + 88), v17);
    }

    v18 = *(v11 + 112);
    if (v18 != 255)
    {
      sub_F2260(*(v11 + 104), v18);
    }

    v50 = v1;
    v19 = *(v11 + 128);
    if (v19 != 255)
    {
      sub_F2260(*(v11 + 120), v19);
    }

    v20 = *(v12 + 44);
    v21 = sub_3E7624();
    (*(*(v21 - 8) + 8))(v11 + v20, v21);

    v1 = v50;
  }

  v22 = v6 + v7[14];
  if (!v13(v22, 1, v12))
  {

    v23 = *(v22 + 32);
    if (v23 != 255)
    {
      sub_F2248(*(v22 + 16), *(v22 + 24), v23);
    }

    v24 = *(v22 + 64);
    if (v24 != 255)
    {
      sub_F2260(*(v22 + 56), v24);
    }

    v25 = *(v22 + 80);
    if (v25 != 255)
    {
      sub_F2260(*(v22 + 72), v25);
    }

    v26 = *(v22 + 96);
    if (v26 != 255)
    {
      sub_F2260(*(v22 + 88), v26);
    }

    v27 = *(v22 + 112);
    if (v27 != 255)
    {
      sub_F2260(*(v22 + 104), v27);
    }

    v28 = *(v22 + 128);
    if (v28 != 255)
    {
      sub_F2260(*(v22 + 120), v28);
    }

    v29 = *(v12 + 44);
    v30 = sub_3E7624();
    (*(*(v30 - 8) + 8))(v22 + v29, v30);
  }

  v31 = v7[16];
  v32 = sub_3E5DC4();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v6 + v31, 1, v32))
  {
    (*(v33 + 8))(v6 + v31, v32);
  }

  v34 = v7[20];
  v35 = v56;
  if (!v56(v6 + v34, 1, v9))
  {
    (*(v51 + 8))(v6 + v34, v9);
  }

  v36 = v7[22];
  if (!v56(v6 + v36, 1, v9))
  {
    (*(v51 + 8))(v6 + v36, v9);
  }

  v37 = v7[23];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  (*(*(v38 - 8) + 8))(v6 + v37, v38);
  v39 = v6 + v7[24];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    v41 = *(v51 + 8);
    v41(v39, v9);
    v41(v39 + *(v40 + 36), v9);
    v35 = v56;
  }

  v42 = type metadata accessor for WidgetPredictedPlayState(0);
  v43 = *(v42 + 20);
  if (!v35(v39 + v43, 2, v9))
  {
    (*(v51 + 8))(v39 + v43, v9);
  }

  v44 = *(v42 + 24);
  v45 = sub_3E9224();
  v46 = *(v45 - 8);
  if (!(*(v46 + 48))(v39 + v44, 1, v45))
  {
    (*(v46 + 8))(v39 + v44, v45);
  }

  v47 = *(v52 + 32);
  type metadata accessor for EpisodeViewStyle();
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v48 = sub_3ECF74();
    (*(*(v48 - 8) + 8))(v3 + v47, v48);
  }

  return _swift_deallocObject(v1, v53 + v54, v55 | 7);
}

uint64_t sub_296388()
{
  v1 = *(type metadata accessor for EpisodeRowView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_294784(v2);
}

unint64_t sub_2963F8()
{
  result = qword_4FE3B8;
  if (!qword_4FE3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE398);
    sub_886BC(&qword_4FE3C0, &qword_4FE3A0);
    sub_2967B4(&qword_4F19C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE3B8);
  }

  return result;
}

uint64_t sub_2964E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE3A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_296558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2965C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE408);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_296630()
{
  result = qword_4FE428;
  if (!qword_4FE428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE3F8);
    sub_886BC(&qword_4FE430, &qword_4FE438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE428);
  }

  return result;
}

uint64_t sub_2966EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_296754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2967B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_296820()
{
  result = qword_4FE460;
  if (!qword_4FE460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE3C8);
    sub_2968AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE460);
  }

  return result;
}

unint64_t sub_2968AC()
{
  result = qword_4FE468;
  if (!qword_4FE468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE3A8);
    sub_2963F8();
    sub_886BC(&qword_4FE3C0, &qword_4FE3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE468);
  }

  return result;
}

uint64_t sub_296964(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v28 = a1;
  v2 = sub_3EB2E4();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_3EB304();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EA874();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EB334();
  __chkstk_darwin(v11 - 8);
  v12 = sub_3E5F84();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E91E4();
  v16 = sub_3E91D4();
  (*(v13 + 16))(v15, v28, v12);
  if (v16)
  {
    sub_3EB314();
  }

  else
  {
    sub_3E91E4();
    sub_3E91C4();
    (*(v25 + 16))(v4, v27, v26);
    sub_3EB2F4();
    sub_3EB324();
    (*(v5 + 8))(v7, v24);
  }

  v17 = sub_3EB364();
  v19 = v18;
  v21 = v20;
  sub_3EA864();
  v22 = sub_3EB254();
  sub_94D30(v17, v19, v21 & 1);

  (*(v29 + 8))(v10, v30);
  return v22;
}

uint64_t sub_296CEC()
{
  v0 = sub_3EEA74();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_3EE7C4();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3EEAA4();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3EEAC4();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3EEAD4();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EEA44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EEA54();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E91E4();
  if (sub_3E91D4())
  {
    sub_3E9214();
    sub_3EEB04();
    sub_3EEA24();
    sub_3E5824();
    (*(v11 + 8))(v13, v10);
    sub_297558(&qword_4FE478, &type metadata accessor for Duration.TimeFormatStyle);
    sub_3EEAE4();
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    sub_3E9214();
    sub_3EEB04();
    sub_3E91E4();
    sub_3E91B4();
    sub_3EEAB4();
    v18 = v27;
    v19 = v29;
    (*(v27 + 104))(v3, enum case for FloatingPointRoundingRule.down(_:), v29);
    v20 = v25;
    sub_3EEA84();
    (*(v18 + 8))(v3, v19);
    v21 = v33;
    sub_3EEA64();
    sub_3E5834();

    (*(v34 + 8))(v21, v35);
    (*(v31 + 8))(v20, v32);
    (*(v24 + 8))(v7, v26);
    sub_297558(&qword_4FE470, &type metadata accessor for Duration.UnitsFormatStyle);
    v22 = v30;
    sub_3EEAE4();
    (*(v28 + 8))(v9, v22);
  }

  return v36;
}

uint64_t sub_2972A8()
{
  v0 = sub_3E6044();
  __chkstk_darwin(v0 - 8);
  v1 = sub_3ED1F4();
  __chkstk_darwin(v1 - 8);
  sub_3ED184();
  sub_3E6034();
  return sub_3ED294();
}

uint64_t sub_297558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for EpisodeViewStyle()
{
  result = qword_4FE4F0;
  if (!qword_4FE4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2975EC()
{
  result = sub_3ECF74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29764C()
{
  v1 = v0;
  v2 = sub_3EB174();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EpisodeViewStyle();
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_29789C(v1, &v17 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_29789C(v11, v8);
    v12 = sub_3ECF74();
    v13 = *(v12 - 8);
    if ((*(v13 + 88))(v8, v12) == enum case for WidgetFamily.systemLarge(_:))
    {
      v14 = sub_3EB184();
    }

    else
    {
      (*(v13 + 8))(v8, v12);
      v14 = sub_3EB104();
    }

    v15 = v14;
  }

  else
  {
    sub_3EB0F4();
    (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
    v15 = sub_3EB194();

    (*(v3 + 8))(v5, v2);
  }

  sub_297900(v11);
  return v15;
}

uint64_t sub_29789C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeViewStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_297900(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeViewStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29795C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3ECF74();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for EpisodeViewStyle();
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE528);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v20 = *(v19 + 56);
  sub_29789C(a1, &v28 - v17);
  sub_29789C(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_29789C(v18, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      v26 = v29;
      (*(v29 + 32))(v9, &v18[v20], v4);
      sub_297D50();
      sub_3ED514();
      sub_3ED514();
      v27 = *(v26 + 8);
      v27(v9, v4);
      v24 = v31 == v30;
      v27(v15, v4);
      goto LABEL_12;
    }

    v12 = v15;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_297900(v18);
      return 1;
    }

    goto LABEL_10;
  }

  sub_29789C(v18, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_7:
    (*(v29 + 8))(v12, v4);
LABEL_10:
    sub_297CE8(v18);
    return 0;
  }

  v22 = v29;
  (*(v29 + 32))(v6, &v18[v20], v4);
  sub_297D50();
  sub_3ED514();
  sub_3ED514();
  v23 = *(v22 + 8);
  v23(v6, v4);
  v24 = v31 == v30;
  v23(v12, v4);
LABEL_12:
  sub_297900(v18);
  return v24;
}

uint64_t sub_297CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_297D50()
{
  result = qword_4FDD38;
  if (!qword_4FDD38)
  {
    sub_3ECF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDD38);
  }

  return result;
}

uint64_t sub_297DA8()
{
  sub_2887C4();
  sub_3EAB04();
  return v1;
}

uint64_t sub_297E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDB10);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_297F5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDB10);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for Logo()
{
  result = qword_4FE588;
  if (!qword_4FE588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2980E0()
{
  sub_283DD8();
  if (v0 <= 0x3F)
  {
    sub_2981B4(319, &unk_4FDB90, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_2981B4(319, &qword_4FD220, &type metadata accessor for WidgetFamily);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2981B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EA324();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_298224()
{
  v1 = sub_3EAAF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_3ED9E4();
    v6 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  result = 0.0;
  if (v5)
  {
    return -4.0;
  }

  return result;
}

uint64_t sub_298378@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3ECF74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE5C8);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  type metadata accessor for Logo();
  sub_282F54(v5);
  sub_2B243C(v5, v8);
  (*(v3 + 8))(v5, v2);
  v9 = sub_3E5DC4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE5D0);
  *&v8[*(v10 + 36)] = 0;
  v11 = &v8[*(v10 + 40)];
  *v11 = sub_298628;
  v11[1] = 0;
  v12 = sub_3EB084();
  sub_3EA264();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE5D8) + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = sub_298224();
  v23 = sub_298224();
  v24 = sub_3EB084();
  v25 = &v8[*(v6 + 36)];
  *v25 = v24;
  *(v25 + 1) = v22;
  *(v25 + 1) = xmmword_413840;
  *(v25 + 4) = v23;
  v25[40] = 0;
  sub_2988EC();
  sub_3EB5E4();
  sub_298A30(v8);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE5F8);
  v28 = a1 + *(result + 36);
  *v28 = KeyPath;
  *(v28 + 8) = 0;
  return result;
}

uint64_t sub_298628@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_3EA6C4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE600);
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_3EB854();
  v10 = sub_3EB164();
  KeyPath = swift_getKeyPath();
  v29 = v9;
  v30 = KeyPath;
  v31 = v10;
  (*(v2 + 104))(v4, enum case for DynamicTypeSize.large(_:), v1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC0D0);
  v13 = sub_24F83C();
  sub_3EB554();
  (*(v2 + 8))(v4, v1);

  v29 = v12;
  v30 = v13;
  swift_getOpaqueTypeConformance2();
  v14 = v28;
  v15 = v26;
  sub_3EB484();
  (*(v27 + 8))(v8, v15);
  LOBYTE(v15) = sub_3EB084();
  sub_3EA264();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE608);
  v25 = v14 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

unint64_t sub_2988EC()
{
  result = qword_4FE5E0;
  if (!qword_4FE5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE5C8);
    sub_298978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE5E0);
  }

  return result;
}

unint64_t sub_298978()
{
  result = qword_4FE5E8;
  if (!qword_4FE5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE5D8);
    sub_886BC(&qword_4FE5F0, &qword_4FE5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE5E8);
  }

  return result;
}

uint64_t sub_298A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE5C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_298AAC()
{
  result = qword_4FE610;
  if (!qword_4FE610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE5F8);
    sub_298B38();
    sub_298BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE610);
  }

  return result;
}

unint64_t sub_298B38()
{
  result = qword_4FE618;
  if (!qword_4FE618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE620);
    sub_2988EC();
    sub_282910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE618);
  }

  return result;
}

unint64_t sub_298BC4()
{
  result = qword_4FE628;
  if (!qword_4FE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE628);
  }

  return result;
}

uint64_t sub_298C68()
{
  result = _s7EpisodeVMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_298CF8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlayButtonLargeToggleStyle(0);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetPredictedPlayState.State(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE6C0);
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE6C8);
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = _s7EpisodeVMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  v16 = v1;
  sub_3E8324();
  if (v43)
  {
    sub_1D4F0(&v42, v44);
    v17 = v45;
    v36 = v46;
    v18 = __swift_project_boxed_opaque_existential_1(v44, v45);
    v19 = v16 + *(v15 + 96);
    v20 = type metadata accessor for WidgetPredictedPlayState(0);
    v37 = a1;
    v21 = *(v20 + 20);
    v22 = sub_3E5F84();
    (*(*(v22 - 8) + 56))(v8, 2, 2, v22);
    sub_2B007C(v19 + v21, v8);
    v23 = sub_29A8F0(v8, type metadata accessor for WidgetPredictedPlayState.State);
    v24 = __chkstk_darwin(v23);
    (*(v26 + 16))(&v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v17, v24);
    sub_3EB994();
    sub_29A88C(v16, v5);
    *&v5[v3[5]] = 0x403C000000000000;
    *&v5[v3[6]] = 0x4000000000000000;
    *&v5[v3[7]] = 0x4000000000000000;
    *&v5[v3[8]] = 0x4022000000000000;
    *&v5[v3[9]] = 0x4026000000000000;
    *&v5[v3[10]] = 0x4018000000000000;
    sub_886BC(&qword_4FE6D0, &qword_4FE6C0);
    sub_29B470(&qword_4FE6D8, type metadata accessor for PlayButtonLargeToggleStyle);
    v27 = v39;
    sub_3EB4D4();
    sub_29A8F0(v5, type metadata accessor for PlayButtonLargeToggleStyle);
    (*(v38 + 8))(v11, v27);
    LOBYTE(v17) = sub_3EB084();
    sub_3EA264();
    v28 = v41;
    v29 = &v14[*(v41 + 36)];
    *v29 = v17;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    v34 = v37;
    sub_29A950(v14, v37);
    (*(v40 + 56))(v34, 0, 1, v28);
    return __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  else
  {
    sub_FCF8(&v42, &qword_4FDA08);
    return (*(v40 + 56))(a1, 1, 1, v41);
  }
}

uint64_t sub_299258@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7A0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v58 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7A8);
  __chkstk_darwin(v58);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7B0);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7B8);
  __chkstk_darwin(v59);
  v13 = &v58 - v12;
  v14 = sub_3EAB64();
  v15 = *(v2 + *(type metadata accessor for PlayButtonLargeToggleStyle(0) + 40));
  *v6 = v14;
  *(v6 + 1) = v15;
  v6[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7C0);
  sub_2997B8(v2, &v6[*(v16 + 44)]);
  v17 = sub_3EB0B4();
  sub_3EA264();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7C8) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_3EB0D4();
  sub_3EA264();
  v28 = &v6[*(v4 + 44)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_3EBA74();
  sub_3EA804();
  sub_FACC(v6, v8, &qword_4FE7A0);
  v33 = &v8[*(v58 + 36)];
  v34 = v66;
  *(v33 + 4) = v65;
  *(v33 + 5) = v34;
  *(v33 + 6) = v67;
  v35 = v62;
  *v33 = v61;
  *(v33 + 1) = v35;
  v36 = v64;
  *(v33 + 2) = v63;
  *(v33 + 3) = v36;
  v37 = &v11[*(v9 + 36)];
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = sub_3EABE4();
  (*(*(v39 - 8) + 104))(v37, v38, v39);
  *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7D0) + 56)] = 256;
  v40 = sub_3EBA74();
  v42 = v41;
  v43 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7D8) + 36)];
  *v43 = v40;
  v43[1] = v42;
  sub_FACC(v8, v11, &qword_4FE7A8);
  v44 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7E0) + 36)];
  *v44 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  swift_storeEnumTagMultiPayload();
  v45 = type metadata accessor for PlayButtonStyling();
  v46 = v44 + *(v45 + 20);
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  v47 = v44 + *(v45 + 24);
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  sub_FACC(v11, v13, &qword_4FE7B0);
  LOBYTE(v47) = sub_3EB084();
  sub_3EA264();
  v48 = &v13[*(v59 + 36)];
  *v48 = v47;
  *(v48 + 1) = v49;
  *(v48 + 2) = v50;
  *(v48 + 3) = v51;
  *(v48 + 4) = v52;
  v48[40] = 0;
  KeyPath = swift_getKeyPath();
  v54 = v13;
  v55 = v60;
  sub_FACC(v54, v60, &qword_4FE7B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7E8);
  v57 = v55 + *(result + 36);
  *v57 = KeyPath;
  *(v57 + 8) = 0;
  return result;
}

uint64_t sub_2997B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC098);
  __chkstk_darwin(v3 - 8);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7F0);
  __chkstk_darwin(v6);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v50 - v9);
  __chkstk_darwin(v11);
  v56 = &v50 - v12;
  v13 = *(_s7EpisodeVMa() + 96);
  v54 = a1;
  if (!*(a1 + v13 + *(type metadata accessor for WidgetPredictedPlayState(0) + 28) + 8))
  {
    sub_3EAF64();
  }

  v14 = sub_3EB834();
  v15 = sub_3EBA74();
  v17 = v16;
  v18 = sub_3EB834();
  v19 = sub_3EB124();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = sub_3EB154();
  sub_FCF8(v5, &qword_4FC098);
  KeyPath = swift_getKeyPath();
  v22 = (v10 + *(v6 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD380);
  sub_3EA864();
  *v22 = swift_getKeyPath();
  *v10 = v14;
  v10[1] = v15;
  v10[2] = v17;
  v10[3] = v18;
  v10[4] = KeyPath;
  v10[5] = v20;
  v23 = v56;
  sub_FACC(v10, v56, &qword_4FE7F0);
  sub_299DD4(&v72);
  v64 = v78;
  v65 = v79;
  LOWORD(v66) = v80;
  v60 = v74;
  v61 = v75;
  v62 = v76;
  v63 = v77;
  v58 = v72;
  v59 = v73;
  sub_3EB1B4();
  v53 = sub_3EB114();

  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  LOBYTE(v71[0]) = 0;
  v52 = sub_3EB094();
  type metadata accessor for PlayButtonLargeToggleStyle(0);
  sub_3EA264();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  LOBYTE(v72) = 0;
  v51 = sub_3EB0A4();
  sub_3EA264();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v57;
  sub_FBD0(v23, v57, &qword_4FE7F0);
  v44 = v43;
  v45 = v55;
  sub_FBD0(v44, v55, &qword_4FE7F0);
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE7F8) + 48);
  v71[5] = v63;
  v71[6] = v64;
  v71[7] = v65;
  v71[3] = v61;
  v71[4] = v62;
  v71[1] = v59;
  v71[2] = v60;
  v71[0] = v58;
  *&v71[8] = v66;
  *(&v71[8] + 1) = v24;
  v47 = v24;
  v48 = v53;
  *&v71[9] = v53;
  *(&v71[9] + 1) = v25;
  *&v71[10] = 0x3FE0000000000000;
  *(&v71[10] + 1) = v26;
  *&v71[11] = 1;
  BYTE8(v71[11]) = 0;
  *(&v71[11] + 9) = *v68;
  HIDWORD(v71[11]) = *&v68[3];
  LOBYTE(v23) = v51;
  LOBYTE(v20) = v52;
  LOBYTE(v71[12]) = v52;
  *(&v71[12] + 1) = *v67;
  DWORD1(v71[12]) = *&v67[3];
  *(&v71[12] + 1) = v28;
  *&v71[13] = v30;
  *(&v71[13] + 1) = v32;
  *&v71[14] = v34;
  BYTE8(v71[14]) = 0;
  HIDWORD(v71[14]) = *&v70[3];
  *(&v71[14] + 9) = *v70;
  LOBYTE(v71[15]) = v51;
  DWORD1(v71[15]) = *&v69[3];
  *(&v71[15] + 1) = *v69;
  *(&v71[15] + 1) = v36;
  *&v71[16] = v38;
  *(&v71[16] + 1) = v40;
  *&v71[17] = v42;
  BYTE8(v71[17]) = 0;
  memcpy((v45 + v46), v71, 0x119uLL);
  sub_FBD0(v71, &v72, &qword_4FE800);
  sub_FCF8(v56, &qword_4FE7F0);
  v78 = v64;
  v79 = v65;
  v74 = v60;
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v72 = v58;
  v73 = v59;
  v80 = v66;
  v81 = v47;
  v82 = v48;
  v83 = v25;
  v84 = 0x3FE0000000000000;
  v85 = v26;
  v86 = 1;
  v87 = 0;
  *v88 = *v68;
  *&v88[3] = *&v68[3];
  v89 = v20;
  *v90 = *v67;
  *&v90[3] = *&v67[3];
  v91 = v28;
  v92 = v30;
  v93 = v32;
  v94 = v34;
  v95 = 0;
  *&v96[3] = *&v70[3];
  *v96 = *v70;
  v97 = v23;
  *&v98[3] = *&v69[3];
  *v98 = *v69;
  v99 = v36;
  v100 = v38;
  v101 = v40;
  v102 = v42;
  v103 = 0;
  sub_FCF8(&v72, &qword_4FE800);
  return sub_FCF8(v57, &qword_4FE7F0);
}

__n128 sub_299DD4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v3 = sub_3EB2E4();
  v91 = *(v3 - 8);
  v92 = v3;
  __chkstk_darwin(v3);
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE808);
  __chkstk_darwin(v5 - 8);
  v95 = &v89 - v6;
  v7 = sub_3E5F84();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v89 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
  __chkstk_darwin(v12 - 8);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v89 - v16;
  v100 = sub_3E9224();
  v18 = *(v100 - 8);
  __chkstk_darwin(v100);
  v94 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = &v89 - v21;
  v22 = type metadata accessor for WidgetPredictedPlayState.State(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2 + *(_s7EpisodeVMa() + 96);
  v26 = type metadata accessor for WidgetPredictedPlayState(0);
  v27 = *(v26 + 20);
  v93 = v8;
  v28 = *(v8 + 56);
  v97 = v7;
  v28(v24, 2, 2, v7);
  LOBYTE(v27) = sub_2B007C(v25 + v27, v24);
  sub_29A8F0(v24, type metadata accessor for WidgetPredictedPlayState.State);
  v29 = *(v26 + 24);
  v30 = v18;
  v31 = (v18 + 48);
  if (v27)
  {
    sub_FBD0(v25 + v29, v17, &qword_4FDA38);
    v32 = v100;
    if ((*v31)(v17, 1, v100) == 1)
    {
      sub_FCF8(v17, &qword_4FDA38);
    }

    else
    {
      v39 = v98;
      (*(v18 + 32))(v98, v17, v32);
      v40 = v95;
      sub_FBD0(v25, v95, &qword_4FE808);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) != 1)
      {
        v52 = v93;
        v53 = v40 + *(v41 + 36);
        v54 = v89;
        v55 = v97;
        (*(v93 + 16))(v89, v53, v97);
        sub_FCF8(v40, &qword_4FD9F8);
        v56 = v96;
        (*(v52 + 32))(v96, v54, v55);
        v58 = v90;
        v57 = v91;
        v59 = v92;
        (*(v91 + 104))(v90, enum case for Text.DateStyle.UnitsConfiguration.Style.short(_:), v92);
        v60 = sub_296964(v56, v58);
        v94 = v61;
        v95 = v60;
        LOBYTE(v54) = v62;
        v89 = v63;
        (*(v57 + 8))(v58, v59);
        LODWORD(v92) = sub_3EB0D4();
        sub_3EA264();
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;
        LOBYTE(v58) = v54 & 1;
        LOBYTE(v119) = v54 & 1;
        LOBYTE(v110) = 0;
        v72 = sub_3EBA84();
        v74 = v73;
        sub_3E91A4();
        *&v128 = sub_2972A8();
        *(&v128 + 1) = v75;
        sub_68DC4();
        v76 = sub_3EB394();
        v78 = v77;
        v80 = v79;
        LOBYTE(v57) = v81 & 1;
        LOBYTE(v128) = v81 & 1;
        sub_243E88(v76, v77, v81 & 1);

        sub_94D30(v76, v78, v57);

        v82 = v128;
        *&v128 = v95;
        *(&v128 + 1) = v94;
        v129.n128_u8[0] = v58;
        v129.n128_u64[1] = v89;
        LOBYTE(v130) = v92;
        *(&v130 + 1) = v65;
        *&v131 = v67;
        *(&v131 + 1) = v69;
        *&v132 = v71;
        BYTE8(v132) = 0;
        *&v133 = v72;
        *(&v133 + 1) = v74;
        *&v134 = v76;
        *(&v134 + 1) = v78;
        LOBYTE(v135) = v82;
        *(&v135 + 1) = v80;
        sub_29AFDC(&v128);
        v116 = v134;
        v117 = v135;
        LOBYTE(v118) = v136;
        v112 = v130;
        v113 = v131;
        v114 = v132;
        v115 = v133;
        v110 = v128;
        v111 = v129;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE830);
        sub_29AE10();
        sub_3EADE4();
        (*(v52 + 8))(v96, v97);
        v107 = v125;
        v108 = v126;
        v109 = v127;
        v103 = v121;
        v104 = v122;
        v105 = v123;
        v106 = v124;
        v101 = v119;
        v102 = v120;
        (*(v30 + 8))(v98, v100);
        goto LABEL_12;
      }

      sub_FCF8(v40, &qword_4FE808);
      (*(v18 + 8))(v39, v32);
    }

    v42 = [objc_opt_self() mainBundle];
    v88._countAndFlagsBits = 0xE000000000000000;
    v138._countAndFlagsBits = 0xD000000000000011;
    v138._object = 0x800000000042C150;
    v140.value._countAndFlagsBits = 0;
    v140.value._object = 0;
    v43.super.isa = v42;
    v142._countAndFlagsBits = 0;
    v142._object = 0xE000000000000000;
    v44 = sub_3E5A74(v138, v140, v43, v142, v88);
    v46 = v45;

    *&v128 = v44;
    *(&v128 + 1) = v46;
    v129.n128_u8[0] = 0;
    v129.n128_u64[1] = _swiftEmptyArrayStorage;
    sub_29AFC8(&v128);
    v125 = v134;
    v126 = v135;
    LOBYTE(v127) = v136;
    v121 = v130;
    v122 = v131;
    v123 = v132;
    v124 = v133;
    v119 = v128;
    v120 = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE830);
    sub_29AE10();
    sub_3EADE4();
LABEL_12:
    v125 = v107;
    v126 = v108;
    LOBYTE(v127) = v109;
    v121 = v103;
    v122 = v104;
    v123 = v105;
    v124 = v106;
    v119 = v101;
    v120 = v102;
    sub_29AFD4(&v119);
    goto LABEL_13;
  }

  sub_FBD0(v25 + v29, v14, &qword_4FDA38);
  v33 = v100;
  if ((*v31)(v14, 1, v100) == 1)
  {
    sub_FCF8(v14, &qword_4FDA38);
    v34 = [objc_opt_self() mainBundle];
    v88._countAndFlagsBits = 0xE000000000000000;
    v137._object = 0x800000000042C130;
    v137._countAndFlagsBits = 0xD000000000000010;
    v139.value._countAndFlagsBits = 0;
    v139.value._object = 0;
    v35.super.isa = v34;
    v141._countAndFlagsBits = 0;
    v141._object = 0xE000000000000000;
    v36 = sub_3E5A74(v137, v139, v35, v141, v88);
    v38 = v37;

    *&v119 = v36;
    *(&v119 + 1) = v38;
    v120.n128_u64[0] = 0;
    v120.n128_u64[1] = _swiftEmptyArrayStorage;
    LOBYTE(v121) = 1;
    sub_3EADE4();
  }

  else
  {
    v47 = v94;
    (*(v18 + 32))(v94, v14, v33);
    *&v128 = sub_296CEC();
    *(&v128 + 1) = v48;
    sub_68DC4();
    *&v119 = sub_3EB394();
    *(&v119 + 1) = v49;
    v120.n128_u64[0] = v50 & 1;
    v120.n128_u64[1] = v51;
    LOBYTE(v121) = 0;
    sub_3EADE4();
    (*(v18 + 8))(v47, v33);
  }

  v119 = v128;
  v120 = v129;
  LOBYTE(v121) = v130;
  sub_29AD78(&v119);
LABEL_13:
  v116 = v125;
  v117 = v126;
  v118 = v127;
  v112 = v121;
  v113 = v122;
  v114 = v123;
  v115 = v124;
  v110 = v119;
  v111 = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE818);
  sub_29AD84();
  sub_29AF4C();
  sub_3EADE4();
  v83 = v135;
  v84 = v99;
  *(v99 + 96) = v134;
  *(v84 + 112) = v83;
  *(v84 + 128) = v136;
  v85 = v131;
  *(v84 + 32) = v130;
  *(v84 + 48) = v85;
  v86 = v133;
  *(v84 + 64) = v132;
  *(v84 + 80) = v86;
  result = v129;
  *v84 = v128;
  *(v84 + 16) = result;
  return result;
}

uint64_t sub_29A88C(uint64_t a1, uint64_t a2)
{
  v4 = _s7EpisodeVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29A8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29A950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE6C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = _s7EpisodeVMa();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = _s7EpisodeVMa();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29AAC4()
{
  result = _s7EpisodeVMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29AB50()
{
  result = qword_4FE788;
  if (!qword_4FE788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE790);
    sub_29ABD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE788);
  }

  return result;
}

unint64_t sub_29ABD4()
{
  result = qword_4FE798;
  if (!qword_4FE798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE6C0);
    type metadata accessor for PlayButtonLargeToggleStyle(255);
    sub_886BC(&qword_4FE6D0, &qword_4FE6C0);
    sub_29B470(&qword_4FE6D8, type metadata accessor for PlayButtonLargeToggleStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE798);
  }

  return result;
}

unint64_t sub_29AD84()
{
  result = qword_4FE820;
  if (!qword_4FE820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE810);
    sub_29AE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE820);
  }

  return result;
}

unint64_t sub_29AE10()
{
  result = qword_4FE828;
  if (!qword_4FE828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE830);
    sub_29AEC8();
    sub_886BC(&qword_4FE848, &qword_4FE850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE828);
  }

  return result;
}

unint64_t sub_29AEC8()
{
  result = qword_4FE838;
  if (!qword_4FE838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE838);
  }

  return result;
}

unint64_t sub_29AF4C()
{
  result = qword_4FE858;
  if (!qword_4FE858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE858);
  }

  return result;
}

unint64_t sub_29AFE8()
{
  result = qword_4FE860;
  if (!qword_4FE860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE7E8);
    sub_29B0A0();
    sub_886BC(&qword_4FE8B8, &qword_4FE8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE860);
  }

  return result;
}

unint64_t sub_29B0A0()
{
  result = qword_4FE868;
  if (!qword_4FE868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE7B8);
    sub_29B12C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE868);
  }

  return result;
}

unint64_t sub_29B12C()
{
  result = qword_4FE870;
  if (!qword_4FE870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE7E0);
    sub_29B1E8();
    sub_29B470(&qword_4FE8B0, type metadata accessor for PlayButtonStyling);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE870);
  }

  return result;
}

unint64_t sub_29B1E8()
{
  result = qword_4FE878;
  if (!qword_4FE878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE7B0);
    sub_29B2A0();
    sub_886BC(&qword_4FE8A8, &qword_4FE7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE878);
  }

  return result;
}

unint64_t sub_29B2A0()
{
  result = qword_4FE880;
  if (!qword_4FE880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE7A8);
    sub_29B32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE880);
  }

  return result;
}

unint64_t sub_29B32C()
{
  result = qword_4FE888;
  if (!qword_4FE888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE7A0);
    sub_29B3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE888);
  }

  return result;
}

unint64_t sub_29B3B8()
{
  result = qword_4FE890;
  if (!qword_4FE890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE7C8);
    sub_886BC(&qword_4FE898, &qword_4FE8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE890);
  }

  return result;
}

uint64_t sub_29B470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29B4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7EpisodeVMa();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29B5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s7EpisodeVMa();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for PlayButtonSmall()
{
  result = qword_4FE920;
  if (!qword_4FE920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29B6AC()
{
  _s7EpisodeVMa();
  if (v0 <= 0x3F)
  {
    sub_283DD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_29B74C()
{
  v1 = sub_3EAAF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for PlayButtonSmall() + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_3ED9E4();
    v7 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  result = 0.0;
  if (v6)
  {
    return -6.0;
  }

  return result;
}

uint64_t sub_29B8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = type metadata accessor for WidgetPredictedPlayState.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_3EA604();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v59 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE808);
  __chkstk_darwin(v10 - 8);
  v12 = v50 - v11;
  v60 = sub_3EA614();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE958);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v55 = v50 - v19;
  v20 = _s7EpisodeVMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  sub_3E8324();
  if (v63)
  {
    v51 = v15;
    v52 = v14;
    sub_1D4F0(&v62, v64);
    v21 = v65;
    v50[1] = v66;
    v50[0] = __swift_project_boxed_opaque_existential_1(v64, v65);
    v22 = *(v20 + 96);
    v53 = v2;
    v23 = v2 + v22;
    sub_29BF28(v2 + v22, v12);
    v24 = type metadata accessor for WidgetPredictedPlayState(0);
    sub_29BF98(v23 + *(v24 + 20), v5);
    v25 = sub_3E5F84();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v5, 2, v25);
    if (v27)
    {
      v28 = &enum case for PlaybackButton.State.unplayed(_:);
      if (v27 != 1)
      {
        v28 = &enum case for PlaybackButton.State.playing(_:);
      }
    }

    else
    {
      (*(v26 + 32))(v7, v5, v25);
      v28 = &enum case for PlaybackButton.State.paused(_:);
    }

    v30 = v54;
    v31 = v56;
    (*(v54 + 104))(v7, *v28, v56);
    v32 = (*(v30 + 32))(v59, v7, v31);
    v33 = __chkstk_darwin(v32);
    (*(v35 + 16))(v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v50[0], v21, v33);

    sub_3EBA74();
    v36 = v57;
    sub_3EA5F4();
    LOBYTE(v30) = sub_3EB0D4();
    sub_29B74C();
    sub_3EA264();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    (*(v58 + 32))(v17, v36, v60);
    v45 = v52;
    v46 = &v17[*(v52 + 36)];
    *v46 = v30;
    *(v46 + 1) = v38;
    *(v46 + 2) = v40;
    *(v46 + 3) = v42;
    *(v46 + 4) = v44;
    v46[40] = 0;
    v47 = v55;
    sub_29BFFC(v17, v55);
    v48 = v47;
    v49 = v61;
    sub_29BFFC(v48, v61);
    (*(v51 + 56))(v49, 0, 1, v45);
    return __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  else
  {
    sub_29BEC0(&v62);
    return (*(v15 + 56))(v61, 1, 1, v14);
  }
}

uint64_t sub_29BEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29BF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29BF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPredictedPlayState.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29BFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FE958);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29C070()
{
  result = qword_4FE960;
  if (!qword_4FE960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE968);
    sub_29C0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE960);
  }

  return result;
}

unint64_t sub_29C0F4()
{
  result = qword_4FE970;
  if (!qword_4FE970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FE958);
    sub_29C180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE970);
  }

  return result;
}

unint64_t sub_29C180()
{
  result = qword_4FE978;
  if (!qword_4FE978)
  {
    sub_3EA614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FE978);
  }

  return result;
}

uint64_t sub_29C1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC488);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29C2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC488);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for PlayButtonStyling()
{
  result = qword_4FE9D8;
  if (!qword_4FE9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29C3DC()
{
  sub_23CE7C();
  if (v0 <= 0x3F)
  {
    sub_283DD8();
    if (v1 <= 0x3F)
    {
      sub_29C478();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29C478()
{
  if (!qword_4FE9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4FE9F0);
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4FE9E8);
    }
  }
}

uint64_t sub_29C4F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEA40);
  __chkstk_darwin(v1);
  v3 = (&v21 - v2);
  v4 = sub_3EAAF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlayButtonStyling();
  v9 = v0 + *(v8 + 20);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_3ED9E4();
    v11 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v10, 0);
    (*(v5 + 8))(v7, v4);
    if (v23)
    {
      goto LABEL_9;
    }
  }

  v12 = v0 + *(v8 + 24);
  v13 = *v12;
  if (*(v12 + 8) != 1)
  {

    sub_3ED9E4();
    v15 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v13, 0);
    (*(v5 + 8))(v7, v4);
    if (v22 != 3)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_3EB784();
    v16 = sub_3EB794();

    v17 = *(v1 + 36);
    v18 = enum case for BlendMode.plusLighter(_:);
    v19 = sub_3EBAF4();
    (*(*(v19 - 8) + 104))(v3 + v17, v18, v19);
    *v3 = v16;
    sub_886BC(&qword_4FEA48, &qword_4FEA40);
    return sub_3EA444();
  }

  if (*v12 == 3)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = [objc_opt_self() systemGray6Color];
  v21 = sub_3EB7D4();
  return sub_3EA444();
}

uint64_t sub_29C868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_3EAEC4();
  v4 = sub_3EA444();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEA28);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEA30) + 36)) = v4;
  v6 = sub_29C4F8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEA38);
  *(a2 + *(result + 36)) = v6;
  return result;
}

unint64_t sub_29C94C()
{
  result = qword_4FEA50;
  if (!qword_4FEA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEA38);
    sub_29CA04();
    sub_886BC(&qword_4FEA68, &qword_4FEA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEA50);
  }

  return result;
}

unint64_t sub_29CA04()
{
  result = qword_4FEA58;
  if (!qword_4FEA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEA30);
    sub_886BC(&qword_4FEA60, &qword_4FEA28);
    sub_886BC(&qword_4FB158, &qword_4FB160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEA58);
  }

  return result;
}

uint64_t sub_29CAE8()
{
  sub_288818();
  sub_3EAB04();
  return v1;
}

unint64_t sub_29CB38()
{
  result = qword_4FEA78;
  if (!qword_4FEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEA78);
  }

  return result;
}

uint64_t sub_29CB8C()
{
  v0 = sub_3EB744();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = sub_3EB7B4();
  qword_539868 = result;
  return result;
}

uint64_t sub_29CC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29CCD8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_29CCD8()
{
  result = qword_4FEA80;
  if (!qword_4FEA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4FE9F0);
    sub_29CB38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEA80);
  }

  return result;
}

uint64_t sub_29CD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = _s7EpisodeVMa();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29CE28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = _s7EpisodeVMa();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for WidgetArtworkView()
{
  result = qword_4FEAE0;
  if (!qword_4FEAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29CF14()
{
  sub_29C478();
  if (v0 <= 0x3F)
  {
    _s7EpisodeVMa();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29CFBC@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemGray4Color];
  v3 = sub_3EB734();
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBC8) + 36);
  v5 = enum case for BlendMode.plusLighter(_:);
  v6 = sub_3EBAF4();
  (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBD0) + 36)) = 0x3FB47AE147AE147BLL;
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBD8) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBE0) + 28);
  v10 = enum case for ColorScheme.light(_:);
  v11 = sub_3EA304();
  result = (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = KeyPath;
  return result;
}

uint64_t sub_29D134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_3EAC24();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EABB4();
  __chkstk_darwin(v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_3EB844();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBB8);
  v37 = *(v13 - 8);
  v38 = v13;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEB88);
  __chkstk_darwin(v44);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v39 = &v35 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBC0);
  __chkstk_darwin(v43);
  v20 = (&v35 - v19);
  v21 = type metadata accessor for WidgetArtworkView();
  v22 = a1 + *(v21 + 20);
  v23 = *(v22 + *(_s7EpisodeVMa() + 60));
  if (v23)
  {
    v35 = v23;
    sub_3EB824();
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    sub_3EB894();

    (*(v10 + 8))(v12, v9);
    sub_3ECF54();
    v24 = sub_3ECF64();
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
    sub_3EB884();

    sub_29E2A8(v8);
    sub_3EABA4();
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    sub_3EAB94(v46);
    sub_3EAB84(*(v22 + 72));
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    sub_3EAB94(v47);
    sub_3EABD4();
    v25 = sub_3EB374();
    v27 = v26;
    v29 = v28;
    swift_getOpaqueTypeConformance2();
    v30 = v36;
    v31 = v38;
    sub_3EB514();
    sub_94D30(v25, v27, v29 & 1);

    (*(v37 + 8))(v15, v31);
    v32 = v40;
    sub_3EAC04();
    v33 = v39;
    sub_3EA714();
    (*(v41 + 8))(v32, v42);
    sub_FCF8(v30, &qword_4FEB88);
    sub_FBD0(v33, v20, &qword_4FEB88);
    swift_storeEnumTagMultiPayload();
    sub_29E124();
    sub_29E1C8();
    sub_3EADE4();

    return sub_FCF8(v33, &qword_4FEB88);
  }

  else
  {
    *v20 = *(a1 + *(v21 + 24));
    swift_storeEnumTagMultiPayload();
    sub_29E124();
    sub_29E1C8();
    return sub_3EADE4();
  }
}

uint64_t sub_29D764(uint64_t a1)
{
  v2 = sub_3EB744();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBA0);
  __chkstk_darwin(v4);
  v44 = &v37 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBA8);
  __chkstk_darwin(v45);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEB48);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_3EAAF4();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WidgetArtworkView();
  v15 = a1 + *(v14 + 20);
  if (*(v15 + *(_s7EpisodeVMa() + 60)) && ((v39 = v8, v16 = *a1, *(a1 + 8) != 1) ? (, sub_3ED9E4(), v38 = v7, v18 = sub_3EB034(), v7 = v38, sub_3E9754(), v18, sub_3EAAE4(), swift_getAtKeyPath(), sub_27CD50(v16, 0), (*(v40 + 8))(v13, v11), v17 = v46) : (v17 = *a1), v8 = v39, v17 != 3))
  {
    v27 = v44;
    sub_29D134(a1, v44);
    v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEB58) + 36);
    *v28 = 0;
    *(v28 + 8) = 1;
    v29 = *(a1 + *(v14 + 24));
    v30 = (v27 + *(v8 + 36));
    v31 = *(sub_3EA7F4() + 20);
    v32 = enum case for RoundedCornerStyle.continuous(_:);
    v33 = sub_3EABE4();
    (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
    *v30 = v29;
    *(v30 + 1) = v29;
    *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCD8) + 36)] = 256;
    (*(v42 + 104))(v41, enum case for Color.RGBColorSpace.sRGB(_:), v43);
    v34 = sub_3EB7C4();
    v35 = (v27 + *(v4 + 36));
    *v35 = v34;
    v35[1] = 0x4024000000000000;
    v35[2] = 0;
    v35[3] = 0;
    v25 = &qword_4FEBA0;
    sub_FBD0(v27, v7, &qword_4FEBA0);
    swift_storeEnumTagMultiPayload();
    sub_29DEAC();
    sub_29E21C();
    sub_3EADE4();
    v26 = v27;
  }

  else
  {
    sub_29D134(a1, v10);
    v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEB58) + 36)];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = *(a1 + *(v14 + 24));
    v21 = &v10[*(v8 + 36)];
    v22 = *(sub_3EA7F4() + 20);
    v23 = enum case for RoundedCornerStyle.continuous(_:);
    v24 = sub_3EABE4();
    (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
    *v21 = v20;
    *(v21 + 1) = v20;
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCD8) + 36)] = 256;
    v25 = &qword_4FEB48;
    sub_FBD0(v10, v7, &qword_4FEB48);
    swift_storeEnumTagMultiPayload();
    sub_29DEAC();
    sub_29E21C();
    sub_3EADE4();
    v26 = v10;
  }

  return sub_FCF8(v26, v25);
}

uint64_t sub_29DD38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEB20);
  __chkstk_darwin(v1);
  v3 = &v5 - v2;
  sub_29D764(v0);
  sub_29E01C(&qword_4FEB28, &qword_4FEB20, &unk_413F10, sub_29DE20);
  sub_3EB484();
  return sub_FCF8(v3, &qword_4FEB20);
}

unint64_t sub_29DE20()
{
  result = qword_4FEB30;
  if (!qword_4FEB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEB38);
    sub_29DEAC();
    sub_29E21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEB30);
  }

  return result;
}

unint64_t sub_29DEAC()
{
  result = qword_4FEB40;
  if (!qword_4FEB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEB48);
    sub_29DF64();
    sub_886BC(&qword_4FBD20, &qword_4FBCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEB40);
  }

  return result;
}

unint64_t sub_29DF64()
{
  result = qword_4FEB50;
  if (!qword_4FEB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEB58);
    sub_29E01C(&qword_4FEB60, &qword_4FEB68, &unk_413F30, sub_29E098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEB50);
  }

  return result;
}

uint64_t sub_29E01C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E098()
{
  result = qword_4FEB70;
  if (!qword_4FEB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEB78);
    sub_29E124();
    sub_29E1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEB70);
  }

  return result;
}

unint64_t sub_29E124()
{
  result = qword_4FEB80;
  if (!qword_4FEB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEB88);
    swift_getOpaqueTypeConformance2();
    sub_282910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEB80);
  }

  return result;
}

unint64_t sub_29E1C8()
{
  result = qword_4FEB90;
  if (!qword_4FEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEB90);
  }

  return result;
}

unint64_t sub_29E21C()
{
  result = qword_4FEB98;
  if (!qword_4FEB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEBA0);
    sub_29DEAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEB98);
  }

  return result;
}

uint64_t sub_29E2A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E320()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEB20);
  sub_29E01C(&qword_4FEB28, &qword_4FEB20, &unk_413F10, sub_29DE20);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_29E3E0()
{
  result = qword_4FEBE8;
  if (!qword_4FEBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEBD8);
    sub_29E498();
    sub_886BC(&qword_4FEC00, &qword_4FEBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEBE8);
  }

  return result;
}

unint64_t sub_29E498()
{
  result = qword_4FEBF0;
  if (!qword_4FEBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEBD0);
    sub_29E524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEBF0);
  }

  return result;
}

unint64_t sub_29E524()
{
  result = qword_4FEBF8;
  if (!qword_4FEBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEBC8);
    sub_886BC(&qword_4FD590, &qword_4FD598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEBF8);
  }

  return result;
}

unint64_t sub_29E5F0()
{
  result = qword_4FEC08;
  if (!qword_4FEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEC08);
  }

  return result;
}

uint64_t sub_29E658(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for EpisodeViewStyle();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_29E710(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = type metadata accessor for EpisodeViewStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for WidgetEmptyText()
{
  result = qword_4FEC68;
  if (!qword_4FEC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E7FC()
{
  result = type metadata accessor for EpisodeViewStyle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E894@<X0>(uint64_t a1@<X8>)
{
  sub_3EABC4();
  result = sub_3EB374();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29E9A4@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FECA0);
  __chkstk_darwin(v1);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FECA8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  sub_29E894(&v22);
  v8 = v22;
  v9 = v23;
  v10 = v24;
  v19[2] = v22;
  v19[3] = v23;
  v20 = v24;
  v21 = v25;
  sub_3EB594();
  sub_94D30(v8, v9, v10);

  type metadata accessor for WidgetEmptyText();
  v11 = sub_29764C();
  KeyPath = swift_getKeyPath();
  v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FECB0) + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = swift_getKeyPath();
  v15 = &v7[*(v5 + 44)];
  *v15 = v14;
  v15[1] = 0x3FE0000000000000;
  v16 = swift_getKeyPath();
  sub_29EC5C(v7, v3);
  v17 = &v3[*(v1 + 36)];
  *v17 = v16;
  v17[8] = 0;
  sub_29ECCC();
  sub_3EB484();
  return sub_29EF24(v3);
}

uint64_t sub_29EBAC@<X0>(void *a1@<X8>)
{
  result = sub_3EA9C4();
  *a1 = v3;
  return result;
}

uint64_t sub_29EBD8@<X0>(void *a1@<X8>)
{
  result = sub_3EA9C4();
  *a1 = v3;
  return result;
}

uint64_t sub_29EC5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FECA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29ECCC()
{
  result = qword_4FECB8;
  if (!qword_4FECB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FECA0);
    sub_29ED58();
    sub_29EED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FECB8);
  }

  return result;
}

unint64_t sub_29ED58()
{
  result = qword_4FECC0;
  if (!qword_4FECC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FECA8);
    sub_29EDFC();
    sub_EAFDC(&qword_4FECD0, &qword_4FECD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FECC0);
  }

  return result;
}

unint64_t sub_29EDFC()
{
  result = qword_4FECC8;
  if (!qword_4FECC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FECB0);
    swift_getOpaqueTypeConformance2();
    sub_EAFDC(&qword_4FC0D8, &qword_4FC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FECC8);
  }

  return result;
}

unint64_t sub_29EED0()
{
  result = qword_4FECE0[0];
  if (!qword_4FECE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_4FECE0);
  }

  return result;
}

uint64_t sub_29EF24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FECA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EF8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FECA0);
  sub_29ECCC();
  return swift_getOpaqueTypeConformance2();
}

void sub_29EFF0()
{
  sub_1F630();
  if (v0 <= 0x3F)
  {
    sub_178DA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29F16C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29F28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v91 = a2;
  v5 = *(a1 + 16);
  v87 = *(v5 - 8);
  __chkstk_darwin(a1);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v69 - v9;
  v10 = sub_3EA7A4();
  v85 = *(v10 - 8);
  __chkstk_darwin(v10);
  v83 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EA744();
  v90 = a1;
  v92 = *(a1 + 24);
  v118 = v92;
  v119 = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  v79 = v12;
  v73 = WitnessTable;
  v14 = sub_3EB1E4();
  v77 = *(v14 - 8);
  __chkstk_darwin(v14);
  v74 = &v69 - v15;
  v16 = swift_getWitnessTable();
  v17 = sub_2A0138();
  v93 = v14;
  v114 = v14;
  v115 = v10;
  v98 = v10;
  v97 = v16;
  v116 = v16;
  v117 = v17;
  v96 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v75 = &v69 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FED70);
  v80 = OpaqueTypeMetadata2;
  v20 = sub_3EA744();
  v81 = *(v20 - 8);
  __chkstk_darwin(v20);
  v78 = &v69 - v21;
  v95 = v22;
  v23 = sub_3EA744();
  v84 = *(v23 - 8);
  __chkstk_darwin(v23);
  v72 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v82 = &v69 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v27 - 8);
  v29 = &v69 - v28;
  v30 = sub_3E5DC4();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v69 - v35;
  v89 = sub_3EADF4();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v94 = &v69 - v37;
  sub_189AC(v3, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v38 = sub_27EDC(v29);
    (*(v3 + *(v90 + 40)))(v38);
    v39 = v86;
    v40 = v92;
    sub_E63BC(v7);
    v41 = *(v87 + 8);
    v41(v7, v5);
    sub_E63BC(v39);
    v114 = v93;
    v115 = v98;
    v116 = v97;
    v117 = v96;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = sub_2A0190();
    v112 = OpaqueTypeConformance2;
    v113 = v43;
    v110 = swift_getWitnessTable();
    v111 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
    sub_E51C0(v7, v23, v5);
    v41(v7, v5);
    v41(v39, v5);
  }

  else
  {
    v71 = v31;
    v44 = *(v31 + 32);
    v70 = v36;
    v44(v36, v29, v30);
    v45 = (*(v31 + 16))(v33, v36, v30);
    __chkstk_darwin(v45);
    v46 = v92;
    *(&v69 - 4) = v5;
    *(&v69 - 3) = v46;
    *(&v69 - 2) = v3;
    v47 = v74;
    sub_3EB1D4();
    v48 = v83;
    sub_3EA794();
    v49 = v75;
    v50 = v93;
    v51 = v98;
    v87 = v30;
    v52 = v76;
    v53 = v97;
    v86 = v5;
    v54 = v96;
    sub_3EB4A4();
    (*(v85 + 8))(v48, v51);
    (*(v77 + 8))(v47, v50);
    v103 = sub_3EB774();
    sub_3EB084();
    v114 = v50;
    v115 = v51;
    v116 = v53;
    v117 = v54;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = v78;
    v57 = v80;
    sub_3EB434();

    (*(v52 + 8))(v49, v57);
    sub_3EB0E4();
    v58 = sub_2A0190();
    v101 = v55;
    v102 = v58;
    v59 = v95;
    v60 = swift_getWitnessTable();
    v61 = v72;
    sub_3EB6C4();
    (*(v81 + 8))(v56, v59);
    v99 = v60;
    v40 = v92;
    v100 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
    v62 = v82;
    sub_E63BC(v61);
    v63 = *(v84 + 8);
    v63(v61, v23);
    sub_E63BC(v62);
    sub_E50C8(v61, v23);
    v63(v61, v23);
    v63(v62, v23);
    (*(v71 + 8))(v70, v87);
  }

  v114 = v93;
  v115 = v98;
  v116 = v97;
  v117 = v96;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_2A0190();
  v108 = v64;
  v109 = v65;
  v106 = swift_getWitnessTable();
  v107 = &protocol witness table for _PaddingLayout;
  v104 = swift_getWitnessTable();
  v105 = v40;
  v66 = v89;
  swift_getWitnessTable();
  v67 = v94;
  sub_E63BC(v94);
  return (*(v88 + 8))(v67, v66);
}

uint64_t sub_29FEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v19[0] = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EA744();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  v16 = type metadata accessor for WidgetLink();
  (*(a1 + *(v16 + 40)))();
  sub_3EB0E4();
  sub_3EB6C4();
  (*(v19[0] + 8))(v8, a2);
  v19[2] = a3;
  v19[3] = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  sub_E63BC(v12);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_E63BC(v15);
  return (v17)(v15, v9);
}

unint64_t sub_2A0138()
{
  result = qword_4FED68;
  if (!qword_4FED68)
  {
    sub_3EA7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FED68);
  }

  return result;
}

unint64_t sub_2A0190()
{
  result = qword_4FED78;
  if (!qword_4FED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FED70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FED78);
  }

  return result;
}

uint64_t sub_2A0200()
{
  sub_3EA744();
  swift_getWitnessTable();
  sub_3EB1E4();
  sub_3EA7A4();
  swift_getWitnessTable();
  sub_2A0138();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FED70);
  sub_3EA744();
  sub_3EA744();
  sub_3EADF4();
  swift_getOpaqueTypeConformance2();
  sub_2A0190();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2A0410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v40 = a1;
  v6 = sub_3EB744();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE18);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE20);
  __chkstk_darwin(v41);
  v13 = &v36 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE28);
  __chkstk_darwin(v42);
  v37 = &v36 - v14;
  v15 = sub_3EAAF4();
  v16 = *(v15 - 8);
  v17.n128_f64[0] = __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v20 = a2;
  }

  else
  {

    sub_3ED9E4();
    v21 = sub_3EB034();
    v36 = v7;
    v22 = v13;
    v23 = v11;
    v24 = v6;
    v25 = v9;
    v26 = v21;
    sub_3E9754();

    v9 = v25;
    v6 = v24;
    v11 = v23;
    v13 = v22;
    v7 = v36;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_27CD50(a2, 0);
    (*(v16 + 8))(v19, v15);
    v20 = v43;
  }

  if ((v20 - 3) > 1)
  {
    (*(v7 + 104))(v38, enum case for Color.RGBColorSpace.sRGB(_:), v6, v17);
    v30 = sub_3EB7B4();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE30);
    (*(*(v31 - 8) + 16))(v11, v40, v31);
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE38) + 36)] = v30;
    v32 = *(v9 + 36);
    v33 = enum case for BlendMode.plusLighter(_:);
    v34 = sub_3EBAF4();
    (*(*(v34 - 8) + 104))(&v11[v32], v33, v34);
    v29 = &qword_4FEE18;
    sub_FBD0(v11, v13, &qword_4FEE18);
  }

  else
  {
    v27 = sub_3EAEE4();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE30);
    v11 = v37;
    (*(*(v28 - 8) + 16))(v37, v40, v28);
    *&v11[*(v42 + 36)] = v27;
    v29 = &qword_4FEE28;
    sub_FBD0(v11, v13, &qword_4FEE28);
  }

  swift_storeEnumTagMultiPayload();
  sub_2A2290();
  sub_2A2374();
  sub_3EADE4();
  return sub_FCF8(v11, v29);
}

uint64_t sub_2A0948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v44 = a1;
  v47 = a4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE70);
  __chkstk_darwin(v48);
  v7 = &v37 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE78);
  __chkstk_darwin(v42);
  v39 = &v37 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE80);
  __chkstk_darwin(v45);
  v10 = &v37 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE88);
  __chkstk_darwin(v40);
  v12 = &v37 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE90);
  __chkstk_darwin(v46);
  v43 = &v37 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEE98);
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v15 = &v37 - v14;
  v16 = sub_3EAAF4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_3ED9E4();
    v20 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_27CD50(a2, 0);
    (*(v17 + 8))(v19, v16);
    LOBYTE(a2) = v49;
  }

  if (a2 == 2)
  {
    if (qword_4E8AB0 != -1)
    {
      swift_once();
    }

    v27 = qword_539868;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEEA0);
    v29 = v39;
    (*(*(v28 - 8) + 16))(v39, v44, v28);
    *(v29 + *(v42 + 36)) = v27;
    sub_FBD0(v29, v12, &qword_4FEE78);
    swift_storeEnumTagMultiPayload();
    v30 = sub_886BC(&qword_4FEEB0, &qword_4FEEA0);

    v49 = v28;
    v50 = v30;
    swift_getOpaqueTypeConformance2();
    sub_2A25E8();
    v31 = v43;
    sub_3EADE4();
    sub_FBD0(v31, v10, &qword_4FEE90);
    swift_storeEnumTagMultiPayload();
    sub_2A24EC();
    sub_2A26CC();
    sub_3EADE4();
    sub_FCF8(v31, &qword_4FEE90);
    v32 = v29;
    v33 = &qword_4FEE78;
  }

  else
  {
    if (a2 == 3)
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEEA0);
      v22 = sub_886BC(&qword_4FEEB0, &qword_4FEEA0);
      sub_3EB3E4();
      v23 = v38;
      v24 = v41;
      (*(v38 + 16))(v12, v15, v41);
      swift_storeEnumTagMultiPayload();
      v49 = v21;
      v50 = v22;
      swift_getOpaqueTypeConformance2();
      sub_2A25E8();
      v25 = v43;
      sub_3EADE4();
      sub_FBD0(v25, v10, &qword_4FEE90);
      swift_storeEnumTagMultiPayload();
      sub_2A24EC();
      sub_2A26CC();
      sub_3EADE4();
      sub_FCF8(v25, &qword_4FEE90);
      return (*(v23 + 8))(v15, v24);
    }

    KeyPath = swift_getKeyPath();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEEA0);
    (*(*(v35 - 8) + 16))(v7, v44, v35);
    v36 = &v7[*(v48 + 36)];
    *v36 = KeyPath;
    v36[8] = 0;
    sub_FBD0(v7, v10, &qword_4FEE70);
    swift_storeEnumTagMultiPayload();
    sub_2A24EC();
    sub_2A26CC();
    sub_3EADE4();
    v32 = v7;
    v33 = &qword_4FEE70;
  }

  return sub_FCF8(v32, v33);
}

uint64_t sub_2A10F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FED80);
  __chkstk_darwin(v7);
  v37 = &v34 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FED88);
  __chkstk_darwin(v43);
  v10 = &v34 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FED90);
  __chkstk_darwin(v39);
  v40 = &v34 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FED98);
  __chkstk_darwin(v44);
  v42 = &v34 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEDA0);
  v36 = *(v41 - 8);
  __chkstk_darwin(v41);
  v35 = &v34 - v13;
  v14 = sub_3EAAF4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_3ED9E4();
    v18 = a4;
    v19 = sub_3EB034();
    sub_3E9754();

    a4 = v18;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_27CD50(a2, 0);
    (*(v15 + 8))(v17, v14);
    LOBYTE(a2) = v46;
  }

  if (a2 == 2)
  {
    v38 = a4;
    if (qword_4E8AB0 != -1)
    {
      swift_once();
    }

    v28 = qword_539868;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEDA8);
    v30 = v37;
    (*(*(v29 - 8) + 16))(v37, v45, v29);
    *(v30 + *(v7 + 36)) = v28;
    sub_FBD0(v30, v40, &qword_4FED80);
    swift_storeEnumTagMultiPayload();
    v31 = sub_886BC(&qword_4FEDB8, &qword_4FEDA8);

    v46 = v29;
    v47 = v31;
    swift_getOpaqueTypeConformance2();
    sub_2A1920();
    v32 = v42;
    sub_3EADE4();
    sub_FBD0(v32, v10, &qword_4FED98);
    swift_storeEnumTagMultiPayload();
    sub_2A1824();
    sub_3EADE4();
    sub_FCF8(v32, &qword_4FED98);
    return sub_FCF8(v30, &qword_4FED80);
  }

  else if (a2 == 3)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEDA8);
    v21 = sub_886BC(&qword_4FEDB8, &qword_4FEDA8);
    v22 = v35;
    sub_3EB3E4();
    v23 = v36;
    v24 = *(v36 + 16);
    v38 = a4;
    v25 = v41;
    v24(v40, v22, v41);
    swift_storeEnumTagMultiPayload();
    v46 = v20;
    v47 = v21;
    swift_getOpaqueTypeConformance2();
    sub_2A1920();
    v26 = v42;
    sub_3EADE4();
    sub_FBD0(v26, v10, &qword_4FED98);
    swift_storeEnumTagMultiPayload();
    sub_2A1824();
    sub_3EADE4();
    sub_FCF8(v26, &qword_4FED98);
    return (*(v23 + 8))(v22, v25);
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEDA8);
    (*(*(v33 - 8) + 16))(v10, v45, v33);
    swift_storeEnumTagMultiPayload();
    sub_2A1824();
    sub_886BC(&qword_4FEDB8, &qword_4FEDA8);
    return sub_3EADE4();
  }
}

unint64_t sub_2A1824()
{
  result = qword_4FEDB0;
  if (!qword_4FEDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FED98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEDA8);
    sub_886BC(&qword_4FEDB8, &qword_4FEDA8);
    swift_getOpaqueTypeConformance2();
    sub_2A1920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEDB0);
  }

  return result;
}

unint64_t sub_2A1920()
{
  result = qword_4FEDC0;
  if (!qword_4FEDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FED80);
    sub_886BC(&qword_4FEDB8, &qword_4FEDA8);
    sub_886BC(&qword_4FC0E8, &qword_4FC0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEDC0);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2A1A40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_2A1A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2A1AF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2A1B38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_2A1B90()
{
  result = qword_4FEDC8;
  if (!qword_4FEDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEDD0);
    sub_2A1824();
    sub_886BC(&qword_4FEDB8, &qword_4FEDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEDC8);
  }

  return result;
}

uint64_t sub_2A1C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEDD8);
  __chkstk_darwin(v31);
  v4 = &v28 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEDE0);
  __chkstk_darwin(v33);
  v6 = &v28 - v5;
  v7 = sub_3EAAF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v2 + 80);
  v11 = v2[9];
  v49 = v11;
  if (v50 == 1)
  {
    v12 = v11;
  }

  else
  {

    sub_3ED9E4();
    v13 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_FCF8(&v49, &qword_4FEDE8);
    (*(v8 + 8))(v10, v7);
    v12 = v40;
  }

  if ((v12 - 3) >= 3)
  {
    v16 = *v2;

    v17 = sub_3EB084();
    v34[104] = 0;
    v18 = sub_3EBA74();
    v20 = v19;
    *&v35[0] = v16;
    *(v35 + 8) = *(v2 + 1);
    *(&v35[1] + 8) = *(v2 + 3);
    BYTE8(v35[2]) = v17;
    v21 = vsubq_f64(0, *(v2 + 7));
    v28 = vsubq_f64(0, *(v2 + 5));
    v29 = v21;
    v37 = v21;
    v36 = v28;
    LOBYTE(v38) = 0;
    *(&v38 + 1) = v18;
    v39 = v19;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEDF0);
    (*(*(v22 - 8) + 16))(v6, v30, v22);
    v23 = &v6[*(v33 + 36)];
    v24 = v38;
    *(v23 + 4) = v37;
    *(v23 + 5) = v24;
    *(v23 + 12) = v39;
    v25 = v35[1];
    *v23 = v35[0];
    *(v23 + 1) = v25;
    v26 = v36;
    *(v23 + 2) = v35[2];
    *(v23 + 3) = v26;
    v40 = v16;
    v27 = *(v2 + 3);
    v41 = *(v2 + 1);
    v42 = v27;
    v43 = v17;
    v44 = v28;
    v45 = v29;
    v46 = 0;
    v47 = v18;
    v48 = v20;
    sub_FBD0(v35, v34, &qword_4FEE10);
    sub_FCF8(&v40, &qword_4FEE10);
    sub_FBD0(v6, v4, &qword_4FEDE0);
    swift_storeEnumTagMultiPayload();
    sub_2A21AC();
    sub_886BC(&qword_4FEE00, &qword_4FEDF0);
    sub_3EADE4();
    return sub_FCF8(v6, &qword_4FEDE0);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEDF0);
    (*(*(v14 - 8) + 16))(v4, v30, v14);
    swift_storeEnumTagMultiPayload();
    sub_2A21AC();
    sub_886BC(&qword_4FEE00, &qword_4FEDF0);
    return sub_3EADE4();
  }
}

unint64_t sub_2A21AC()
{
  result = qword_4FEDF8;
  if (!qword_4FEDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEDE0);
    sub_886BC(&qword_4FEE00, &qword_4FEDF0);
    sub_886BC(&qword_4FEE08, &qword_4FEE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEDF8);
  }

  return result;
}

unint64_t sub_2A2290()
{
  result = qword_4FEE40;
  if (!qword_4FEE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEE28);
    sub_886BC(&qword_4FEE48, &qword_4FEE30);
    sub_886BC(&qword_4FEE50, &qword_4FEE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEE40);
  }

  return result;
}

unint64_t sub_2A2374()
{
  result = qword_4FEE60;
  if (!qword_4FEE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEE18);
    sub_2A2400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEE60);
  }

  return result;
}

unint64_t sub_2A2400()
{
  result = qword_4FEE68;
  if (!qword_4FEE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEE38);
    sub_886BC(&qword_4FEE48, &qword_4FEE30);
    sub_886BC(&qword_4FC0E8, &qword_4FC0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEE68);
  }

  return result;
}

unint64_t sub_2A24EC()
{
  result = qword_4FEEA8;
  if (!qword_4FEEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEE90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEEA0);
    sub_886BC(&qword_4FEEB0, &qword_4FEEA0);
    swift_getOpaqueTypeConformance2();
    sub_2A25E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEEA8);
  }

  return result;
}

unint64_t sub_2A25E8()
{
  result = qword_4FEEB8;
  if (!qword_4FEEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEE78);
    sub_886BC(&qword_4FEEB0, &qword_4FEEA0);
    sub_886BC(&qword_4FC0E8, &qword_4FC0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEEB8);
  }

  return result;
}

unint64_t sub_2A26CC()
{
  result = qword_4FEEC0;
  if (!qword_4FEEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEE70);
    sub_886BC(&qword_4FEEB0, &qword_4FEEA0);
    sub_29EED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEEC0);
  }

  return result;
}

unint64_t sub_2A2788()
{
  result = qword_4FEEC8;
  if (!qword_4FEEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEED0);
    sub_2A21AC();
    sub_886BC(&qword_4FEE00, &qword_4FEDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEEC8);
  }

  return result;
}

unint64_t sub_2A2844()
{
  result = qword_4FEED8;
  if (!qword_4FEED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEEE0);
    sub_2A2290();
    sub_2A2374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEED8);
  }

  return result;
}

unint64_t sub_2A28D4()
{
  result = qword_4FEEE8;
  if (!qword_4FEEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FEEF0);
    sub_2A24EC();
    sub_2A26CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEEE8);
  }

  return result;
}

void *Calendar.generateOnTheHourDates(after:before:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v45 = a1;
  v2 = sub_3E60B4();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_3E60C4();
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E6094();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEEF8);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEF00);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_3E5A14();
  v37 = *(v15 - 8);
  v38 = v15;
  __chkstk_darwin(v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_3E6124();
  v35 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = _swiftEmptyArrayStorage;
  sub_3E6104();
  (*(v19 + 56))(v14, 1, 1, v18);
  v22 = sub_3E6154();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  sub_3E5A04();
  v23 = *(v6 + 104);
  v24 = v8;
  v23(v8, enum case for Calendar.MatchingPolicy.nextTime(_:), v5);
  v25 = v40;
  v46 = v41;
  v47 = &v48;
  v26 = v36;
  v27 = v39;
  (*(v36 + 104))(v39, enum case for Calendar.RepeatedTimePolicy.first(_:), v40);
  v29 = v42;
  v28 = v43;
  v30 = v44;
  (*(v43 + 104))(v42, enum case for Calendar.SearchDirection.forward(_:), v44);
  sub_3E60A4();
  (*(v28 + 8))(v29, v30);
  (*(v26 + 8))(v27, v25);
  (*(v34 + 8))(v24, v33);
  (*(v37 + 8))(v17, v38);
  (*(v19 + 8))(v21, v35);
  return v48;
}

uint64_t sub_2A2F00(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, size_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_3E5F84();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_2A31B8(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_2A3228(v10);
    *a3 = 1;
  }

  else
  {
    v19 = *(v12 + 32);
    v19(v17, v10, v11);
    sub_2A3290();
    if (sub_3ED154())
    {
      (*(v12 + 16))(v14, v17, v11);
      v20 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_E0DDC(0, v20[2] + 1, 1, v20);
        *a5 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        *a5 = sub_E0DDC(v22 > 1, v23 + 1, 1, v20);
      }

      (*(v12 + 8))(v17, v11);
      v24 = *a5;
      v24[2] = v23 + 1;
      return (v19)(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23, v14, v11);
    }

    else
    {
      result = (*(v12 + 8))(v17, v11);
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sub_2A31B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2A3228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2A3290()
{
  result = qword_4FEF08;
  if (!qword_4FEF08)
  {
    sub_3E5F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FEF08);
  }

  return result;
}

uint64_t ArtworkModel.widgetRequest(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_3ECF74();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E7784();
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E7CA4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  sub_3E7754();
  sub_3E76F4();
  sub_86F48(v7);
  sub_3E7C74();
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_3E79B4();
  sub_3E7C44();
  v19 = v23;
  v18(v14, v8);
  (*(v19 + 16))(v4, v24, v2);
  v20 = (*(v19 + 88))(v4, v2);
  if (v20 == enum case for WidgetFamily.systemSmall(_:) || v20 == enum case for WidgetFamily.systemMedium(_:))
  {
LABEL_11:
    sub_3E7C04();
    return (v18)(v17, v8);
  }

  if (v20 != enum case for WidgetFamily.systemLarge(_:) && v20 != enum case for WidgetFamily.systemExtraLarge(_:) && v20 != enum case for WidgetFamily.systemExtraLargePortrait(_:))
  {
    if (v20 != enum case for WidgetFamily.accessoryCorner(_:) && v20 != enum case for WidgetFamily.accessoryCircular(_:) && v20 != enum case for WidgetFamily.accessoryRectangular(_:) && v20 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v19 + 8))(v4, v2);
    }

    goto LABEL_11;
  }

  return (*(v9 + 32))(v25, v17, v8);
}

uint64_t sub_2A3690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_3E5F84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s7EpisodeVMa();
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v37 = v6;
  v33 = v7;
  if (v14)
  {
    v15 = *(v10 + 88);
    v16 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    v34 = (v7 + 48);
    v35 = (v7 + 32);
    v18 = _swiftEmptyArrayStorage;
    v32 = v17;
    do
    {
      sub_29A88C(v16, v13);
      sub_FBD0(&v13[v15], v5, &qword_4EF460);
      sub_2A6810(v13, _s7EpisodeVMa);
      v19 = v37;
      if ((*v34)(v5, 1, v37) == 1)
      {
        sub_FCF8(v5, &qword_4EF460);
      }

      else
      {
        v20 = v15;
        v21 = *v35;
        (*v35)(v36, v5, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_E0DDC(0, *(v18 + 2) + 1, 1, v18);
        }

        v23 = *(v18 + 2);
        v22 = *(v18 + 3);
        if (v23 >= v22 >> 1)
        {
          v18 = sub_E0DDC(v22 > 1, v23 + 1, 1, v18);
        }

        *(v18 + 2) = v23 + 1;
        v21(&v18[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23], v36, v37);
        v15 = v20;
        v17 = v32;
      }

      v16 += v17;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v38 = v18;

  sub_2A5224(&v38);

  v24 = *(v38 + 2);
  v25 = v31;
  v26 = v33;
  v27 = v37;
  if (v24)
  {
    (*(v33 + 16))(v31, &v38[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * (v24 - 1)], v37);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  return (*(v26 + 56))(v25, v28, 1, v27);
}

uint64_t sub_2A3A70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_3ECF74();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_3E7CA4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v3[14] = swift_task_alloc();
  v6 = sub_3E7784();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEF10);
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEF18);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_2A3D00, 0, 0);
}

uint64_t sub_2A3D00()
{
  v1 = *(v0 + 32);
  v2 = *v1;
  *(v0 + 192) = *v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_28:
    v4 = sub_2A5184(v2);
  }

  v5 = 0;
  *(v0 + 200) = v4;
  v6 = *(v0 + 32);
  *(v0 + 208) = v2[2];
  *v6 = v4;
  v7 = kMTPreferredArtworkSize;
  *(v0 + 280) = enum case for WidgetFamily.systemSmall(_:);
  *(v0 + 284) = enum case for WidgetFamily.systemMedium(_:);
  *(v0 + 288) = enum case for WidgetFamily.systemLarge(_:);
  *(v0 + 292) = enum case for WidgetFamily.systemExtraLarge(_:);
  *(v0 + 296) = enum case for WidgetFamily.systemExtraLargePortrait(_:);
  *(v0 + 300) = enum case for WidgetFamily.accessoryCorner(_:);
  v8 = &unk_4FEF18;
  *(v0 + 304) = enum case for WidgetFamily.accessoryCircular(_:);
  v9 = &unk_414678;
  *(v0 + 308) = enum case for WidgetFamily.accessoryRectangular(_:);
  v10 = &qword_4F1D50;
  v11 = &unk_3F7520;
  *(v0 + 312) = enum case for WidgetFamily.accessoryInline(_:);
  *(v0 + 216) = v7;
  while (1)
  {
    if (v5 == *(v0 + 208))
    {
      v12 = 1;
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v13 = *(v0 + 192);
      if (v5 >= *(v13 + 16))
      {
        goto LABEL_27;
      }

      v14 = *(v0 + 168);
      v56 = *(v0 + 176);
      v15 = v11;
      v16 = v10;
      v17 = v9;
      v18 = v8;
      v19 = *(v0 + 152);
      v20 = *(_s7EpisodeVMa() - 8);
      v21 = v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v5;
      v22 = *(v19 + 48);
      v8 = v18;
      v9 = v17;
      v10 = v16;
      v11 = v15;
      *v14 = v5;
      sub_29A88C(v21, v14 + v22);
      sub_FACC(v14, v56, &qword_4FEF10);
      v12 = 0;
      ++v5;
    }

    *(v0 + 224) = v5;
    v24 = *(v0 + 176);
    v23 = *(v0 + 184);
    v26 = *(v0 + 152);
    v25 = *(v0 + 160);
    (*(v25 + 56))(v24, v12, 1, v26);
    sub_FACC(v24, v23, v8);
    if ((*(v25 + 48))(v23, 1, v26) == 1)
    {
      break;
    }

    v27 = *(v0 + 184);
    v28 = *(v0 + 152);
    v30 = *(v0 + 120);
    v29 = *(v0 + 128);
    v31 = *(v0 + 112);
    *(v0 + 232) = *v27;
    v32 = v27 + *(v28 + 48);
    v33 = _s7EpisodeVMa();
    *(v0 + 240) = v33;
    sub_FBD0(v32 + *(v33 + 56), v31, v10);
    sub_2A6810(v32, _s7EpisodeVMa);
    v34 = *(v29 + 48);
    v2 = (v29 + 48);
    if (v34(v31, 1, v30) != 1)
    {
      v53 = *(v0 + 284);
      v57 = *(v0 + 280);
      v37 = *(v0 + 136);
      v38 = *(v0 + 88);
      v39 = *(v0 + 72);
      v40 = *(v0 + 80);
      v41 = *(v0 + 64);
      v55 = *(v0 + 56);
      v43 = *(v0 + 40);
      v42 = *(v0 + 48);
      v54 = *(v0 + 24);
      sub_83F9C(*(v0 + 112), *(v0 + 144));
      sub_3E7754();
      sub_3E76F4();
      sub_2A6810(v37, &type metadata accessor for ArtworkModel);
      sub_3E7C74();
      v44 = *(v39 + 8);
      *(v0 + 248) = v44;
      *(v0 + 256) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v44(v40, v41);
      sub_3E79B4();
      sub_3E7C44();
      v44(v38, v41);
      (*(v42 + 16))(v55, v54, v43);
      v45 = (*(v42 + 88))(v55, v43);
      if (v45 == v57 || v45 == v53)
      {
        goto LABEL_21;
      }

      if (v45 == *(v0 + 288) || v45 == *(v0 + 292) || v45 == *(v0 + 296))
      {
        (*(*(v0 + 72) + 32))(*(v0 + 104), *(v0 + 96), *(v0 + 64));
      }

      else
      {
        if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v45), *(v0 + 300)))) & 1) == 0)
        {
          (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
        }

LABEL_21:
        v46 = *(v0 + 96);
        v47 = *(v0 + 64);
        sub_3E7C04();
        v44(v46, v47);
      }

      v48 = *(v0 + 16);
      v50 = v48[3];
      v49 = v48[4];
      __swift_project_boxed_opaque_existential_1(v48, v50);
      v51 = swift_task_alloc();
      *(v0 + 264) = v51;
      *v51 = v0;
      v51[1] = sub_2A436C;
      v52 = *(v0 + 104);

      return ImageContentProvider.image(for:)(v52, v50, v49);
    }

    sub_FCF8(*(v0 + 112), v10);
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2A436C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_2A4ADC;
  }

  else
  {
    *(v4 + 272) = a1;
    v5 = sub_2A4498;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2A4498()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 144);
  (*(v0 + 248))(*(v0 + 104), *(v0 + 64));
  v4 = sub_2A6810(v3, &type metadata accessor for ArtworkModel);
  if (v2 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return ImageContentProvider.image(for:)(v4, v5, v6);
  }

  v7 = *(v0 + 232);
  v8 = *(v0 + 200);
  if (v7 >= *(v8 + 16))
  {
    goto LABEL_30;
  }

  v9 = *(v0 + 240);
  v10 = *(v0 + 32);
  v11 = v8 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v7;
  v12 = *(v9 + 60);
  v13 = *(v11 + v12);
  *(v11 + v12) = v1;

  v14 = &unk_4FEF18;
  *v10 = v8;
  v15 = &unk_414678;
  v16 = *(v0 + 224);
  v17 = &qword_4F1D50;
  v18 = &unk_3F7520;
  while (1)
  {
    if (v16 == *(v0 + 208))
    {
      v19 = 1;
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = *(v0 + 192);
      if (v16 >= *(v20 + 16))
      {
        goto LABEL_28;
      }

      v21 = *(v0 + 168);
      v61 = *(v0 + 176);
      v22 = v18;
      v23 = v17;
      v24 = v15;
      v25 = v14;
      v26 = *(v0 + 152);
      v27 = *(_s7EpisodeVMa() - 8);
      v28 = v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v16;
      v29 = *(v26 + 48);
      v14 = v25;
      v15 = v24;
      v17 = v23;
      v18 = v22;
      *v21 = v16;
      sub_29A88C(v28, v21 + v29);
      sub_FACC(v21, v61, &qword_4FEF10);
      v19 = 0;
      ++v16;
    }

    *(v0 + 224) = v16;
    v31 = *(v0 + 176);
    v30 = *(v0 + 184);
    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    (*(v32 + 56))(v31, v19, 1, v33);
    sub_FACC(v31, v30, v14);
    if ((*(v32 + 48))(v30, 1, v33) == 1)
    {
      break;
    }

    v34 = *(v0 + 184);
    v35 = *(v0 + 152);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = *(v0 + 112);
    *(v0 + 232) = *v34;
    v39 = v34 + *(v35 + 48);
    v40 = _s7EpisodeVMa();
    *(v0 + 240) = v40;
    sub_FBD0(v39 + *(v40 + 56), v38, v17);
    sub_2A6810(v39, _s7EpisodeVMa);
    if ((*(v36 + 48))(v38, 1, v37) != 1)
    {
      v58 = *(v0 + 284);
      v62 = *(v0 + 280);
      v43 = *(v0 + 136);
      v44 = *(v0 + 88);
      v45 = *(v0 + 72);
      v46 = *(v0 + 80);
      v47 = *(v0 + 64);
      v60 = *(v0 + 56);
      v49 = *(v0 + 40);
      v48 = *(v0 + 48);
      v59 = *(v0 + 24);
      sub_83F9C(*(v0 + 112), *(v0 + 144));
      sub_3E7754();
      sub_3E76F4();
      sub_2A6810(v43, &type metadata accessor for ArtworkModel);
      sub_3E7C74();
      v50 = *(v45 + 8);
      *(v0 + 248) = v50;
      *(v0 + 256) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v50(v46, v47);
      sub_3E79B4();
      sub_3E7C44();
      v50(v44, v47);
      (*(v48 + 16))(v60, v59, v49);
      v51 = (*(v48 + 88))(v60, v49);
      if (v51 == v62 || v51 == v58)
      {
        goto LABEL_22;
      }

      if (v51 == *(v0 + 288) || v51 == *(v0 + 292) || v51 == *(v0 + 296))
      {
        (*(*(v0 + 72) + 32))(*(v0 + 104), *(v0 + 96), *(v0 + 64));
      }

      else
      {
        if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v51), *(v0 + 300)))) & 1) == 0)
        {
          (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
        }

LABEL_22:
        v52 = *(v0 + 96);
        v53 = *(v0 + 64);
        sub_3E7C04();
        v50(v52, v53);
      }

      v54 = *(v0 + 16);
      v56 = v54[3];
      v55 = v54[4];
      __swift_project_boxed_opaque_existential_1(v54, v56);
      v57 = swift_task_alloc();
      *(v0 + 264) = v57;
      *v57 = v0;
      v57[1] = sub_2A436C;
      v4 = *(v0 + 104);
      v5 = v56;
      v6 = v55;

      return ImageContentProvider.image(for:)(v4, v5, v6);
    }

    v4 = sub_FCF8(*(v0 + 112), v17);
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2A4ADC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 144);
  (*(v0 + 248))(*(v0 + 104), *(v0 + 64));
  v3 = sub_2A6810(v2, &type metadata accessor for ArtworkModel);
  if (v1 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return ImageContentProvider.image(for:)(v3, v4, v5);
  }

  v6 = *(v0 + 232);
  v7 = *(v0 + 200);
  if (v6 >= *(v7 + 16))
  {
    goto LABEL_30;
  }

  v8 = *(v0 + 240);
  v9 = *(v0 + 32);
  v10 = v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v6;
  v11 = *(v8 + 60);
  v12 = *(v10 + v11);
  *(v10 + v11) = 0;

  v13 = &unk_4FEF18;
  *v9 = v7;
  v14 = &unk_414678;
  v15 = *(v0 + 224);
  v16 = &qword_4F1D50;
  v17 = &unk_3F7520;
  while (1)
  {
    if (v15 == *(v0 + 208))
    {
      v18 = 1;
    }

    else
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v19 = *(v0 + 192);
      if (v15 >= *(v19 + 16))
      {
        goto LABEL_28;
      }

      v20 = *(v0 + 168);
      v60 = *(v0 + 176);
      v21 = v17;
      v22 = v16;
      v23 = v14;
      v24 = v13;
      v25 = *(v0 + 152);
      v26 = *(_s7EpisodeVMa() - 8);
      v27 = v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v15;
      v28 = *(v25 + 48);
      v13 = v24;
      v14 = v23;
      v16 = v22;
      v17 = v21;
      *v20 = v15;
      sub_29A88C(v27, v20 + v28);
      sub_FACC(v20, v60, &qword_4FEF10);
      v18 = 0;
      ++v15;
    }

    *(v0 + 224) = v15;
    v30 = *(v0 + 176);
    v29 = *(v0 + 184);
    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    (*(v31 + 56))(v30, v18, 1, v32);
    sub_FACC(v30, v29, v13);
    if ((*(v31 + 48))(v29, 1, v32) == 1)
    {
      break;
    }

    v33 = *(v0 + 184);
    v34 = *(v0 + 152);
    v36 = *(v0 + 120);
    v35 = *(v0 + 128);
    v37 = *(v0 + 112);
    *(v0 + 232) = *v33;
    v38 = v33 + *(v34 + 48);
    v39 = _s7EpisodeVMa();
    *(v0 + 240) = v39;
    sub_FBD0(v38 + *(v39 + 56), v37, v16);
    sub_2A6810(v38, _s7EpisodeVMa);
    if ((*(v35 + 48))(v37, 1, v36) != 1)
    {
      v57 = *(v0 + 284);
      v61 = *(v0 + 280);
      v42 = *(v0 + 136);
      v43 = *(v0 + 88);
      v44 = *(v0 + 72);
      v45 = *(v0 + 80);
      v46 = *(v0 + 64);
      v59 = *(v0 + 56);
      v48 = *(v0 + 40);
      v47 = *(v0 + 48);
      v58 = *(v0 + 24);
      sub_83F9C(*(v0 + 112), *(v0 + 144));
      sub_3E7754();
      sub_3E76F4();
      sub_2A6810(v42, &type metadata accessor for ArtworkModel);
      sub_3E7C74();
      v49 = *(v44 + 8);
      *(v0 + 248) = v49;
      *(v0 + 256) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v49(v45, v46);
      sub_3E79B4();
      sub_3E7C44();
      v49(v43, v46);
      (*(v47 + 16))(v59, v58, v48);
      v50 = (*(v47 + 88))(v59, v48);
      if (v50 == v61 || v50 == v57)
      {
        goto LABEL_22;
      }

      if (v50 == *(v0 + 288) || v50 == *(v0 + 292) || v50 == *(v0 + 296))
      {
        (*(*(v0 + 72) + 32))(*(v0 + 104), *(v0 + 96), *(v0 + 64));
      }

      else
      {
        if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v50), *(v0 + 300)))) & 1) == 0)
        {
          (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
        }

LABEL_22:
        v51 = *(v0 + 96);
        v52 = *(v0 + 64);
        sub_3E7C04();
        v49(v51, v52);
      }

      v53 = *(v0 + 16);
      v55 = v53[3];
      v54 = v53[4];
      __swift_project_boxed_opaque_existential_1(v53, v55);
      v56 = swift_task_alloc();
      *(v0 + 264) = v56;
      *v56 = v0;
      v56[1] = sub_2A436C;
      v3 = *(v0 + 104);
      v4 = v55;
      v5 = v54;

      return ImageContentProvider.image(for:)(v3, v4, v5);
    }

    v3 = sub_FCF8(*(v0 + 112), v16);
  }

  v40 = *(v0 + 8);

  return v40();
}