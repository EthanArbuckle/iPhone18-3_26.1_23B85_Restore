unint64_t sub_11A71C()
{
  result = qword_403BB8;
  if (!qword_403BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403BC0);
    sub_11A7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403BB8);
  }

  return result;
}

unint64_t sub_11A7A0()
{
  result = qword_403BC8;
  if (!qword_403BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403BD0);
    sub_EC8C(&qword_403BD8, &qword_4030E8);
    sub_EC8C(&qword_403398, &qword_403170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403BC8);
  }

  return result;
}

uint64_t sub_11A880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_11A8F0()
{
  result = qword_403C50;
  if (!qword_403C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403C48);
    sub_11A9A8();
    sub_EC8C(&qword_3FC820, &qword_3FC828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403C50);
  }

  return result;
}

unint64_t sub_11A9A8()
{
  result = qword_403C58;
  if (!qword_403C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4031B8);
    sub_4A194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403C58);
  }

  return result;
}

uint64_t sub_11AA3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_11AA8C()
{
  result = qword_403C80;
  if (!qword_403C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403C78);
    sub_11138C();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403C80);
  }

  return result;
}

unint64_t sub_11AB58()
{
  result = qword_403C90;
  if (!qword_403C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403B18);
    sub_EC8C(&qword_403C98, &qword_403B00);
    sub_89664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403C90);
  }

  return result;
}

unint64_t sub_11AC14()
{
  result = qword_403CA0;
  if (!qword_403CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403CA0);
  }

  return result;
}

uint64_t sub_11AC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_11AD68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for StandardSearchResultView()
{
  result = qword_403D48;
  if (!qword_403D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_11AE80()
{
  sub_11AF78(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_11AF78(319, &qword_401C50, &type metadata accessor for ArtworkModel, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_11AF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_11B004()
{
  v0 = sub_3020D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_403CC0);
  __swift_project_value_buffer(v0, qword_403CC0);
  sub_3020B8();
  sub_302058();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_11B0F8()
{
  v1 = sub_305A08();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);

  if ((v5 & 1) == 0)
  {
    sub_30C7A8();
    v6 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  sub_3026B8();
  sub_30B8E8();

  sub_302688();
  sub_306928();
  v7 = sub_3063D8();
  v9 = v8;
  v11 = v10;
  if (qword_3FAAE8 != -1)
  {
    swift_once();
  }

  v12 = sub_3020D8();
  __swift_project_value_buffer(v12, qword_403CC0);
  v13 = sub_306308();
  v15 = v14;
  v17 = v16;
  sub_EBC8(v7, v9, v11 & 1);

  v20[6] = sub_305E98();
  v18 = sub_306348();
  sub_EBC8(v13, v15, v17 & 1);

  return v18;
}

uint64_t sub_11B374()
{
  v1 = sub_305B18();
  __chkstk_darwin(v1 - 8);
  if (*(v0 + *(type metadata accessor for StandardSearchResultView() + 32)) == 1)
  {
    sub_305B08();
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_305AF8(v35);
    sub_E504();

    v2 = sub_3063C8();
    v4 = v3;
    v6 = v5;
    if (qword_3FAAE0 != -1)
    {
      swift_once();
    }

    v7 = sub_3020D8();
    __swift_project_value_buffer(v7, qword_403CA8);
    v8 = sub_306308();
    v10 = v9;
    v12 = v11;
    sub_EBC8(v2, v4, v6 & 1);

    sub_305E78();
    v13 = sub_306348();
    v15 = v14;
    v17 = v16;
    sub_EBC8(v8, v10, v12 & 1);

    sub_305AE8();
    sub_EBC8(v13, v15, v17 & 1);

    v36._countAndFlagsBits = 32;
    v36._object = 0xE100000000000000;
    sub_305AF8(v36);
    v18 = sub_11B0F8();
    v20 = v19;
    LOBYTE(v15) = v21;
    sub_305AE8();
    sub_EBC8(v18, v20, v15 & 1);

    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    sub_305AF8(v37);
    sub_305B38();
    return sub_3063A8();
  }

  else
  {
    sub_E504();

    v23 = sub_3063C8();
    v25 = v24;
    v27 = v26;
    if (qword_3FAAE0 != -1)
    {
      swift_once();
    }

    v28 = sub_3020D8();
    __swift_project_value_buffer(v28, qword_403CA8);
    v29 = sub_306308();
    v31 = v30;
    v33 = v32;
    sub_EBC8(v23, v25, v27 & 1);

    sub_305E78();
    v34 = sub_306348();
    sub_EBC8(v29, v31, v33 & 1);

    return v34;
  }
}

uint64_t sub_11B748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403D98);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for StandardSearchResultView();
  sub_EB00(a1 + *(v16 + 20), v15, &unk_402FF0);
  v17 = &v15[*(v10 + 48)];
  v18 = *(sub_3055F8() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = sub_305B68();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #5.0 }

  *v17 = _Q0;
  v26 = *(v10 + 44);
  *&v15[v26] = vdupq_n_s64(0x4051000000000000uLL);
  v27 = enum case for Artwork.Sizing.constantSize(_:);
  v28 = sub_30B168();
  (*(*(v28 - 8) + 104))(&v15[v26], v27, v28);
  *v8 = sub_305BE8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403DA0);
  sub_11BA58(a1, &v8[*(v29 + 44)]);
  sub_EB00(v15, v12, &qword_403170);
  sub_EB00(v8, v5, &qword_403D98);
  v30 = v34;
  sub_EB00(v12, v34, &qword_403170);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403DA8);
  sub_EB00(v5, v30 + *(v31 + 48), &qword_403D98);
  sub_EB68(v8, &qword_403D98);
  sub_EB68(v15, &qword_403170);
  sub_EB68(v5, &qword_403D98);
  return sub_EB68(v12, &qword_403170);
}

uint64_t sub_11BA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403DB0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_11B374();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v16 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403DB8) + 36)];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v18 = enum case for Image.Scale.small(_:);
  v19 = sub_306958();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v7 = v8;
  *(v7 + 1) = v10;
  v7[16] = v12 & 1;
  *(v7 + 3) = v14;
  *(v7 + 4) = KeyPath;
  *(v7 + 5) = 2;
  v7[48] = 0;
  *&v7[*(v3 + 44)] = 256;
  v20 = (v46 + *(type metadata accessor for StandardSearchResultView() + 28));
  v21 = v20[1];
  v49 = *v20;
  v50 = v21;
  sub_E504();

  v22 = sub_3063C8();
  v24 = v23;
  v26 = v25;
  if (qword_3FAAF0 != -1)
  {
    swift_once();
  }

  v27 = sub_3020D8();
  __swift_project_value_buffer(v27, qword_403CD8);
  v28 = sub_306308();
  v30 = v29;
  v32 = v31;
  sub_EBC8(v22, v24, v26 & 1);

  sub_3068A8();
  v33 = sub_306338();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_EBC8(v28, v30, v32 & 1);

  v40 = swift_getKeyPath();
  v41 = v48;
  sub_EB00(v7, v48, &qword_403DB0);
  v42 = v47;
  sub_EB00(v41, v47, &qword_403DB0);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403DC0) + 48);
  *v43 = v33;
  *(v43 + 8) = v35;
  v37 &= 1u;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v40;
  *(v43 + 40) = 1;
  *(v43 + 48) = 0;
  sub_EBD8(v33, v35, v37);

  sub_EB68(v7, &qword_403DB0);
  sub_EBC8(v33, v35, v37);

  return sub_EB68(v41, &qword_403DB0);
}

uint64_t sub_11BDF8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_305AA8();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403D90);
  return sub_11B748(v1, a1 + *(v3 + 44));
}

unint64_t sub_11BE60()
{
  result = qword_403DC8;
  if (!qword_403DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403DC8);
  }

  return result;
}

uint64_t sub_11BED8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_301A78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_11BF98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_301A78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TranscriptSearchResultView()
{
  result = qword_403E78;
  if (!qword_403E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_11C088()
{
  sub_30B9A8();
  if (v0 <= 0x3F)
  {
    sub_F306C();
    if (v1 <= 0x3F)
    {
      sub_309548();
      if (v2 <= 0x3F)
      {
        sub_301A78();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_11C13C()
{
  result = qword_3FEC58;
  if (!qword_3FEC58)
  {
    sub_30A478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEC58);
  }

  return result;
}

uint64_t sub_11C1B0()
{
  v0 = sub_3020D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_403DD8);
  __swift_project_value_buffer(v0, qword_403DD8);
  sub_3020B8();
  sub_302058();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_11C2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403EC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  sub_307DA8();
  v16 = &v15[*(v10 + 48)];
  v17 = *(sub_3055F8() + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = sub_305B68();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #5.0 }

  *v16 = _Q0;
  v25 = *(v10 + 44);
  *&v15[v25] = vdupq_n_s64(0x4051000000000000uLL);
  v26 = enum case for Artwork.Sizing.constantSize(_:);
  v27 = sub_30B168();
  (*(*(v27 - 8) + 104))(&v15[v25], v26, v27);
  *v8 = sub_305BE8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403EC8);
  sub_11C5A4(a1, &v8[*(v28 + 44)]);
  sub_EB00(v15, v12, &qword_403170);
  sub_EB00(v8, v5, &qword_403EC0);
  v29 = v33;
  sub_EB00(v12, v33, &qword_403170);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403ED0);
  sub_EB00(v5, v29 + *(v30 + 48), &qword_403EC0);
  sub_EB68(v8, &qword_403EC0);
  sub_EB68(v15, &qword_403170);
  sub_EB68(v5, &qword_403EC0);
  return sub_EB68(v12, &qword_403170);
}

uint64_t sub_11C5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v90 = sub_301A78();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v78[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403188);
  __chkstk_darwin(v4);
  v6 = &v78[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403190);
  __chkstk_darwin(v7);
  v93 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v78[-v10];
  *v6 = sub_305AA8();
  *(v6 + 1) = 0x4000000000000000;
  v6[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403198);
  sub_11CE1C(&v6[*(v12 + 44)]);
  if (qword_3FAAF8 != -1)
  {
    swift_once();
  }

  v13 = sub_3020D8();
  __swift_project_value_buffer(v13, qword_403DD8);
  sub_11D148(&qword_4031A0, &qword_403188);
  sub_3063F8();
  sub_EB68(v6, &qword_403188);
  v14 = sub_3068A8();
  KeyPath = swift_getKeyPath();
  v16 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4031A8) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = *(v7 + 36);
  v92 = v11;
  v18 = &v11[v17];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v20 = enum case for Image.Scale.small(_:);
  v21 = sub_306958();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  sub_306C58();
  sub_3051F8();
  v87 = v107;
  v86 = v109;
  v85 = v111;
  v84 = v112;
  v115 = 1;
  v114 = v108;
  v113 = v110;
  v22 = sub_307D88();
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v23)
  {
    v25 = v23;
  }

  v98 = v24;
  v99 = v25;
  sub_E504();
  v26 = sub_3063C8();
  v28 = v27;
  v30 = v29;
  v31 = a1;
  if (qword_3FAB00 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_403DF0);
  v32 = sub_306308();
  v34 = v33;
  v36 = v35;
  sub_EBC8(v26, v28, v30 & 1);

  sub_306898();
  v82 = sub_306338();
  v81 = v37;
  v79 = v38;
  v83 = v39;

  sub_EBC8(v32, v34, v36 & 1);

  v80 = swift_getKeyPath();
  v40 = type metadata accessor for TranscriptSearchResultView();
  (*(v88 + 16))(v89, v31 + *(v40 + 28), v90);
  v41 = sub_3063B8();
  v43 = v42;
  v45 = v44;
  if (qword_3FAB08 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_403E08);
  v46 = sub_306308();
  v48 = v47;
  v50 = v49;
  sub_EBC8(v41, v43, v45 & 1);

  sub_3068A8();
  v51 = sub_306338();
  v89 = v52;
  v54 = v53;
  v90 = v55;

  sub_EBC8(v46, v48, v50 & 1);

  v88 = swift_getKeyPath();
  v56 = v54 & 1;
  LOBYTE(v98) = v54 & 1;
  LOBYTE(v95) = 0;
  v57 = v93;
  sub_EB00(v92, v93, &qword_403190);
  v58 = v115;
  v59 = v114;
  v60 = v113;
  v61 = v91;
  sub_EB00(v57, v91, &qword_403190);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403ED8);
  v63 = v61 + v62[12];
  *v63 = 0;
  *(v63 + 8) = v58;
  *(v63 + 16) = v87;
  *(v63 + 24) = v59;
  *(v63 + 32) = v86;
  *(v63 + 40) = v60;
  v64 = v84;
  *(v63 + 48) = v85;
  *(v63 + 56) = v64;
  v65 = v61 + v62[16];
  v66 = v82;
  v67 = v81;
  *v65 = v82;
  *(v65 + 8) = v67;
  v68 = v79 & 1;
  *(v65 + 16) = v79 & 1;
  v69 = v80;
  *(v65 + 24) = v83;
  *(v65 + 32) = v69;
  *(v65 + 40) = 1;
  *(v65 + 48) = 0;
  v70 = v61 + v62[20];
  *&v95 = v51;
  v71 = v89;
  *(&v95 + 1) = v89;
  LOBYTE(v96) = v56;
  DWORD1(v96) = *(v94 + 3);
  *(&v96 + 1) = v94[0];
  v72 = v90;
  v73 = v88;
  *(&v96 + 1) = v90;
  *v97 = v88;
  *&v97[8] = 2;
  v97[16] = 0;
  *&v97[17] = 256;
  v74 = v95;
  v75 = v96;
  v76 = *v97;
  *(v70 + 47) = *&v97[15];
  *(v70 + 16) = v75;
  *(v70 + 32) = v76;
  *v70 = v74;
  sub_EBD8(v66, v67, v68);

  sub_EB00(&v95, &v98, &qword_4031B8);
  sub_EB68(v92, &qword_403190);
  v98 = v51;
  v99 = v71;
  v100 = v56;
  *v101 = v94[0];
  *&v101[3] = *(v94 + 3);
  v102 = v72;
  v103 = v73;
  v104 = 2;
  v105 = 0;
  v106 = 256;
  sub_EB68(&v98, &qword_4031B8);
  sub_EBC8(v66, v67, v68);

  return sub_EB68(v93, &qword_403190);
}

uint64_t sub_11CE1C@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v34 = sub_30A4A8();
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;

  v7 = v6;
  sub_30A498();
  sub_30A448();
  if (v8)
  {
    v9 = sub_30C248();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v38 = v9;
  v39 = v11;
  sub_E504();
  v12 = sub_3063C8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = *(v1 + 16);
  v33 = v7;
  v21 = v7;
  v22 = v34;
  v20(v3, v21, v34);
  LOBYTE(v38) = v16 & 1;
  v37 = 0;
  v36 = 1;
  v23 = v35;
  v20(v35, v3, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4031C0);
  v25 = &v23[*(v24 + 48)];
  v26 = v38;
  v27 = v37;
  *v25 = v12;
  *(v25 + 1) = v14;
  v25[16] = v26;
  *(v25 + 3) = v18;
  *(v25 + 4) = KeyPath;
  *(v25 + 5) = 1;
  v25[48] = v27;
  v28 = &v23[*(v24 + 64)];
  v29 = v36;
  *v28 = 0;
  v28[8] = v29;
  sub_EBD8(v12, v14, v26);
  v30 = *(v1 + 8);

  v30(v33, v22);
  sub_EBC8(v12, v14, v38);

  return (v30)(v3, v22);
}

uint64_t sub_11D0AC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_305A98();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403EB8);
  return sub_11C2B0(v1, a1 + *(v3 + 44));
}

uint64_t sub_11D148(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t View.cellSizeClassSidePadding.getter()
{
  swift_getKeyPath();
  sub_3067E8();
}

uint64_t sub_11D218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v34 = a1;
  v8 = sub_305A08();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  v13 = sub_3060F8();
  *(inited + 32) = v13;
  v14 = sub_306118();
  *(inited + 33) = v14;
  v15 = sub_306108();
  sub_306108();
  if (sub_306108() != v13)
  {
    v15 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v14)
  {
    v15 = sub_306108();
  }

  if (a4)
  {
    sub_302BF8();
  }

  else
  {

    sub_30C7A8();
    v16 = sub_306088();
    v32 = a5;
    v17 = v16;
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    v18 = v33;
    sub_7BD8C(a2, v33, 0);
    v19 = *(v9 + 8);
    v19(v11, v8);
    sub_302BF8();

    sub_30C7A8();
    v20 = sub_306088();
    a5 = v32;
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_7BD8C(a2, v18, 0);
    v19(v11, v8);
  }

  sub_302C08();
  sub_304FD8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403EF0);
  (*(*(v29 - 8) + 16))(a5, v34, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403EF8);
  v31 = a5 + *(result + 36);
  *v31 = v15;
  *(v31 + 8) = v22;
  *(v31 + 16) = v24;
  *(v31 + 24) = v26;
  *(v31 + 32) = v28;
  *(v31 + 40) = 0;
  return result;
}

double sub_11D578@<D0>(_OWORD *a1@<X8>)
{
  sub_788AC();
  sub_305A38();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_11D5C8@<D0>(_OWORD *a1@<X8>)
{
  sub_788AC();
  sub_305A38();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_11D6B0()
{
  sub_305528();
  sub_F34E8();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for ProgressType(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProgressType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_11D7D0()
{
  result = qword_403F00;
  if (!qword_403F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403EF8);
    sub_11D85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403F00);
  }

  return result;
}

unint64_t sub_11D85C()
{
  result = qword_403F08;
  if (!qword_403F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403F08);
  }

  return result;
}

void sub_11D8C0(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    [v3 willMoveToParentViewController:0];
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = v4;
    [v4 removeFromSuperview];

    [v3 removeFromParentViewController];
  }

  v6 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_messageViewController];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = sub_30CE68();
  if (v8)
  {
    v9 = v8;
    [v8 addChildViewController:v7];
  }

  v10 = [v2 contentView];
  v11 = [v7 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v12 = v11;
  sub_30CE98();

  v13 = v7;
  v14 = sub_30CE68();
  [v13 didMoveToParentViewController:v14];
}

void sub_11DA44(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_amsDialogRequest);
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_messageViewController);
    v25 = v13;
    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_messageViewController) = 0;
    sub_11D8C0(v13);
    goto LABEL_24;
  }

  v25 = v2;
  v4 = [v25 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_30C0D8();
    v8 = v7;

    if (a1)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = 0;
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v6 = 0;
  v8 = 0;
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = [a1 identifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_30C0D8();
    a1 = v12;

    if (!v8)
    {
LABEL_17:
      if (!a1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0;
    a1 = 0;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

LABEL_10:
  if (!a1)
  {
LABEL_18:

LABEL_19:
    v14 = [v25 style];
    if (v14 == &dword_4)
    {
      v15 = [objc_allocWithZone(AMSUIBubbleTipViewController) initWithRequest:v25];
      v20 = [objc_allocWithZone(AMSUIBubbleTipAppearance) init];
      [v15 setPreferredAppearance:v20];

      v17 = [v15 preferredAppearance];
      if (v17)
      {
LABEL_26:
        v21 = v17;
        v22 = [objc_opt_self() secondaryLabelColor];
        [v21 setImageTintColor:v22];
      }

LABEL_27:
      [v15 setDelegate:v1];
      v24 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_messageViewController);
      *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_messageViewController) = v15;
      v23 = v15;
      sub_11D8C0(v24);

      v19 = v24;
      goto LABEL_28;
    }

    if (v14 == (&dword_0 + 3))
    {
      v15 = [objc_allocWithZone(AMSUIBannerMessageViewController) initWithRequest:v25];
      v16 = [objc_allocWithZone(AMSUIBannerAppearance) init];
      [v15 setPreferredAppearance:v16];

      v17 = [v15 preferredAppearance];
      if (v17)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

LABEL_24:
    v19 = v25;
LABEL_28:

    return;
  }

  if (v6 != v11 || v8 != a1)
  {
    v18 = sub_30D728();

    if (v18)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }
}

id sub_11DE34(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_objectGraph] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_metricsController] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_messageViewController] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_amsDialogRequest] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_11DF88(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_amsDialogRequest);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_amsDialogRequest) = *a1;
  v3 = v2;
  sub_11DA44(v4);
}

uint64_t sub_11DFEC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_objectGraph) = a1;

  sub_308EE8();
  swift_allocObject();
  swift_retain_n();
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_metricsController) = sub_308ED8();
}

uint64_t sub_11E07C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_11F514(&qword_403FF0, v3, type metadata accessor for AMSBannerCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_11E168()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 0;
  (*(v8 + 104))(v7, enum case for ShelfCellListSeparatorMode.Placement.custom(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v0);
  return sub_3072D8();
}

unint64_t sub_11E35C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC100);
    v2 = sub_30D698();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_11F450(*(a1 + 48) + 40 * v12, v27);
        sub_1DA1C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_11F450(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1DA1C(v25 + 8, v20);
        sub_11F4AC(v24);
        v21 = v18;
        sub_1DA94(v20, v22);
        v13 = v21;
        sub_1DA94(v22, v23);
        sub_1DA94(v23, &v21);
        result = sub_19182C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1DA94(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1DA94(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_11F4AC(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_11E618(uint64_t a1)
{
  v3 = sub_30B7E8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_metricsController))
  {
    v20 = v5;
    v8 = *(a1 + 16);

    if (v8 && (v9 = sub_19182C(0x7954746567726174, 0xEA00000000006570), (v10 & 1) != 0) && (sub_1DA1C(*(a1 + 56) + 32 * v9, v23), (swift_dynamicCast() & 1) != 0))
    {
      v18 = v21;
      v19 = v22;
      if (!*(a1 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v18 = 0x72656E6E6162;
      v19 = 0xE600000000000000;
      if (!*(a1 + 16))
      {
        goto LABEL_11;
      }
    }

    v11 = sub_19182C(0x6449746567726174, 0xE800000000000000);
    if (v12)
    {
      sub_1DA1C(*(a1 + 56) + 32 * v11, v23);
      if (swift_dynamicCast())
      {
        v17 = v21;
LABEL_12:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_403FF8);
        v13 = sub_30BD98();
        v14 = *(v13 - 8);
        v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_315430;
        sub_30BD58();
        sub_176EF0(v16);
        swift_setDeallocating();
        (*(v14 + 8))(v16 + v15, v13);
        swift_deallocClassInstance();
        sub_308D58();
        swift_allocObject();

        sub_308D48();
        sub_307E18();
        sub_308EC8();

        (*(v4 + 8))(v7, v20);
        return;
      }
    }

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }
}

unint64_t sub_11EBDC()
{
  result = qword_403FE8;
  if (!qword_403FE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_403FE8);
  }

  return result;
}

void sub_11EC28(void *a1)
{
  v2 = sub_301CB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = [a1 originalRequest];
  v11 = [a1 selectedActionIdentifier];
  if (!v11)
  {
    sub_30C0D8();
    v11 = sub_30C098();
  }

  v21 = [v10 locateActionWithIdentifier:v11];

  if (v21)
  {
    v12 = [v21 deepLink];
    if (v12)
    {
      v13 = v12;
      sub_301C38();

      (*(v3 + 32))(v9, v5, v2);
      v14 = [objc_opt_self() sharedApplication];
      sub_301C08(v15);
      v17 = v16;
      sub_2D6B88(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_11F514(&unk_404010, 255, type metadata accessor for OpenExternalURLOptionsKey);
      isa = sub_30BF88().super.isa;

      [v14 openURL:v17 options:isa completionHandler:0];

      (*(v3 + 8))(v9, v2);
    }

    else
    {
      v19 = v21;
    }
  }
}

unint64_t sub_11EEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_30B7E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_11E35C(a1);
  if (result)
  {
    v13 = result;
    if (!a3)
    {
      a2 = sub_30B7D8();
    }

    v14 = *(v13 + 16);

    if (v14)
    {
      v15 = sub_19182C(0x707954746E657665, 0xE900000000000065);
      if (v16)
      {
        sub_1DA1C(*(v13 + 56) + 32 * v15, v33);
        if (swift_dynamicCast())
        {
          if (v31 == 0x6973736572706D69 && v32 == 0xEB00000000736E6FLL)
          {

            goto LABEL_11;
          }

          v17 = sub_30D728();

          if (v17)
          {
LABEL_11:
            v30 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_metricsController);
            if (v30)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_403FF8);
              v29 = sub_30BD98();
              v18 = swift_allocObject();
              *(v18 + 16) = xmmword_318FC0;

              sub_30BD68();
              sub_30BD58();
              sub_30BD78();
              sub_176EF0(v18);
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();

              sub_30B7A8();
              sub_308EC8();

              (*(v9 + 8))(v11, v8);
            }

LABEL_23:
          }
        }
      }
    }

    if (*(v13 + 16))
    {
      v19 = sub_19182C(0x707954746E657665, 0xE900000000000065);
      if (v20)
      {
        sub_1DA1C(*(v13 + 56) + 32 * v19, v33);
        if (swift_dynamicCast())
        {
          if (v31 == 0x6B63696C63 && v32 == 0xE500000000000000)
          {

LABEL_20:

            sub_11E618(v13);
          }

          v21 = sub_30D728();

          if (v21)
          {
            goto LABEL_20;
          }
        }
      }
    }

    if (*(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_metricsController))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_403FF8);
      v22 = sub_30BD98();
      v23 = *(v22 - 8);
      v30 = v8;
      v24 = v9;
      v25 = v23;
      v26 = *(v23 + 80);
      v29 = a2;
      v27 = (v26 + 32) & ~v26;
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_315430;

      sub_30BD58();
      sub_176EF0(v28);
      swift_setDeallocating();
      (*(v25 + 8))(v28 + v27, v22);
      swift_deallocClassInstance();

      sub_30B7A8();
      sub_308EC8();

      (*(v24 + 8))(v11, v30);
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_11F4AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11F514(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_11F55C()
{
  v1 = v0;
  v2 = sub_30A238();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_308B18();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v7);
  (*(v3 + 104))(v5, enum case for ReferenceLinkViewStyle.shelfItem(_:), v2);
  return sub_3099A8();
}

uint64_t sub_11F6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_307048();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = sub_308B18();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3, a2, v7);
}

uint64_t sub_11F780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_11FCBC(&qword_404040, type metadata accessor for AnyReferenceLinkCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t type metadata accessor for AnyReferenceLinkCell()
{
  result = qword_4040A0;
  if (!qword_4040A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_11F9D0(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  sub_3070B8();

  sub_30A228();
  v11 = UIEdgeInsetsInsetRect(a1, a2, a3, a4, v9, v10);
  v15 = [objc_opt_self() bezierPathWithRoundedRect:v11 cornerRadius:{v12, v13, v14, 16.0}];
  [v8 setVisiblePath:v15];

  v16 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor:v16];

  return v8;
}

uint64_t sub_11FB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_308B18();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_11FB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_308B18();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_11FC08()
{
  result = sub_308B18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_11FCBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_11FD08(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    [v3 willMoveToParentViewController:0];
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = v4;
    [v4 removeFromSuperview];

    [v3 removeFromParentViewController];
  }

  v6 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = sub_30CE68();
  if (v8)
  {
    v9 = v8;
    [v8 addChildViewController:v7];
  }

  v10 = [v2 contentView];
  v11 = [v7 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v12 = v11;
  sub_30CE98();

  v13 = v7;
  v14 = sub_30CE68();
  [v13 didMoveToParentViewController:v14];
}

void sub_11FE8C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_objectGraph] = 0;

  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController] = 0;
  sub_11FD08(v1);
}

void sub_1200CC()
{
  v1 = v0;
  v2 = sub_30B528();
  v3 = [v2 style];

  if (v3 == &dword_4)
  {
    v8 = sub_30B528();
    v5 = [objc_allocWithZone(AMSUIBubbleTipViewController) initWithRequest:v8];

    v9 = [objc_allocWithZone(AMSUIBubbleTipAppearance) init];
    [v5 setPreferredAppearance:v9];

    v7 = [v5 preferredAppearance];
    if (v7)
    {
LABEL_6:
      v10 = v7;
      v11 = [objc_opt_self() secondaryLabelColor];
      [v10 setImageTintColor:v11];
    }

LABEL_7:
    [v5 setDelegate:v1];
    v14 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController);
    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController) = v5;
    v12 = v5;
    sub_11FD08(v14);

    goto LABEL_9;
  }

  if (v3 == (&dword_0 + 3))
  {
    v4 = sub_30B528();
    v5 = [objc_allocWithZone(AMSUIBannerMessageViewController) initWithRequest:v4];

    v6 = [objc_allocWithZone(AMSUIBannerAppearance) init];
    [v5 setPreferredAppearance:v6];

    v7 = [v5 preferredAppearance];
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v13 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController) = 0;
  v14 = v13;
  sub_11FD08(v13);
LABEL_9:
}

uint64_t sub_12031C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_objectGraph) = a1;
}

uint64_t sub_120364(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_122040(&qword_404148, v3, type metadata accessor for BubbleTipCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_120444()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 0;
  (*(v8 + 104))(v7, enum case for ShelfCellListSeparatorMode.Placement.custom(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v0);
  return sub_3072D8();
}

void sub_1205C4(void *a1, void *a2)
{
  v5 = sub_3041E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  v13 = [a2 originalRequest];
  v14 = [a2 selectedActionIdentifier];
  if (!v14)
  {
    sub_30C0D8();
    v14 = sub_30C098();
  }

  v15 = [v13 locateActionWithIdentifier:v14];

  if (v15)
  {
    sub_30C448();
    v16 = sub_30C468();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
    sub_30C438();
    v17 = v2;
    v18 = v15;
    v19 = a1;
    v20 = sub_30C428();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v17;
    v21[5] = v18;
    v21[6] = v19;
    sub_45AA4(0, 0, v12, &unk_323E50, v21);
  }

  else
  {
    sub_304178();
    v22 = a2;
    v23 = sub_3041D8();
    v24 = sub_30C798();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136315138;
      v27 = [v22 selectedActionIdentifier];
      v28 = sub_30C0D8();
      v30 = v29;

      v31 = sub_191264(v28, v30, &v33);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_0, v23, v24, "Unable to perform AMS dialog action: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_120944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_3041E8();
  v6[2] = v9;
  v6[3] = *(v9 - 8);
  v6[4] = swift_task_alloc();
  v6[5] = sub_30C438();
  v6[6] = sub_30C428();
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_120A64;

  return sub_120DB8(a5, a6);
}

uint64_t sub_120A64()
{
  *(*v1 + 64) = v0;

  v3 = sub_30C3F8();
  if (v0)
  {
    v4 = sub_120C28;
  }

  else
  {
    v4 = sub_120BC0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_120BC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_120C28()
{

  sub_304178();
  swift_errorRetain();
  v1 = sub_3041D8();
  v2 = sub_30C798();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to perform action: %@", v3, 0xCu);
    sub_EB68(v4, &qword_3FC200);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_120DB8(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_3041E8();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = sub_302558();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = sub_30B8A8();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v3[26] = swift_task_alloc();
  v7 = sub_3023D8();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v3[29] = *(v8 + 64);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40);
  v3[32] = v9;
  v3[33] = *(v9 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = sub_30C438();
  v3[36] = sub_30C428();
  v11 = sub_30C3F8();
  v3[37] = v11;
  v3[38] = v10;

  return _swift_task_switch(sub_121088, v11, v10);
}

uint64_t sub_121088()
{
  v1 = *(*(v0 + 120) + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_objectGraph);
  *(v0 + 312) = v1;
  if (v1)
  {

    sub_30C808();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
    sub_30C818();

    if (*(v0 + 80))
    {
      sub_12658((v0 + 56), v0 + 16);
      v2 = swift_task_alloc();
      *(v0 + 320) = v2;
      *v2 = v0;
      v2[1] = sub_1213AC;
      v3 = *(v0 + 272);
      v4 = *(v0 + 256);

      return BaseObjectGraph.inject<A>(_:)(v3, v4, v4);
    }

    sub_EB68(v0 + 56, &unk_3FBB40);
    sub_304178();
    v12 = sub_3041D8();
    v13 = sub_30C798();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 152);
    v16 = *(v0 + 128);
    v17 = *(v0 + 136);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v12, v13, "Unable to locate action for tip button!", v18, 2u);
    }

    (*(v17 + 8))(v15, v16);
  }

  else
  {

    sub_304178();
    v5 = sub_3041D8();
    v6 = sub_30C798();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 128);
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v5, v6, "Unable to perform action without an object graph.", v11, 2u);
    }

    (*(v9 + 8))(v8, v10);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1213AC()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_121CA8;
  }

  else
  {
    v5 = sub_1214E8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1214E8()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[14];
  sub_122394();
  v0[12] = v4;
  v5 = v4;
  v6 = sub_30B908();

  sub_30C7F8();
  sub_30C818();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_EB68(v0[26], &unk_404150);
  }

  else
  {
    v7 = v0[30];
    v8 = v0[31];
    v9 = v0[28];
    v10 = v0[27];
    v11 = *(v9 + 32);
    v11(v8, v0[26], v10);
    (*(v9 + 16))(v7, v8, v10);
    v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v13 = swift_allocObject();
    v11(v13 + v12, v7, v10);
    v14 = sub_30B948();

    (*(v9 + 8))(v8, v10);
    v6 = v14;
  }

  v0[42] = v6;
  (*(v0[21] + 104))(v0[22], enum case for ActionMetricsBehavior.fromAction(_:), v0[20]);
  v0[43] = sub_30C428();
  v16 = sub_30C3F8();
  v0[44] = v16;
  v0[45] = v15;

  return _swift_task_switch(sub_121734, v16, v15);
}

uint64_t sub_121734()
{
  v0[46] = sub_30B9E8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10);
  v2 = sub_1223E0();
  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_12181C;
  v4 = v0[25];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_12181C()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = v2[44];
    v4 = v2[45];
    v5 = sub_121B04;
  }

  else
  {
    (*(v2[24] + 8))(v2[25], v2[23]);
    v3 = v2[44];
    v4 = v2[45];
    v5 = sub_12196C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_12196C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v5 = v0[38];

  return _swift_task_switch(sub_1219F8, v4, v5);
}

uint64_t sub_1219F8()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_121B04()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v5 = v0[38];

  return _swift_task_switch(sub_121B90, v4, v5);
}

uint64_t sub_121B90()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_121CA8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_122040(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1220B0(uint64_t a1)
{
  v2 = sub_3041E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_304178();
    swift_errorRetain();
    v6 = sub_3041D8();
    v7 = sub_30C798();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_0, v6, v7, "Error reported by AMS: %@", v8, 0xCu);
      sub_EB68(v9, &qword_3FC200);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_12227C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1222CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_F4FC;

  return sub_120944(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_122394()
{
  result = qword_3FBE30;
  if (!qword_3FBE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3FBE30);
  }

  return result;
}

unint64_t sub_1223E0()
{
  result = qword_404160;
  if (!qword_404160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FBF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404160);
  }

  return result;
}

uint64_t sub_122444()
{
  v1 = sub_3023D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_122530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v72 = a1;
  v78 = a3;
  v79 = sub_305BA8();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_306008();
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v73 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CategoryListCell();
  v8 = v7 - 8;
  v63 = *(v7 - 8);
  v62 = *(v63 + 64);
  __chkstk_darwin(v7);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4041C8) - 8;
  __chkstk_darwin(v64);
  v11 = &v59 - v10;
  v59 = (&v59 - v10);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4041B8) - 8;
  __chkstk_darwin(v66);
  v65 = &v59 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4041A0);
  __chkstk_darwin(v69);
  v67 = &v59 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4041F0);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v59 - v14;
  v15 = a2 + *(v8 + 28);
  v16 = sub_308B28();
  v17 = v16[5];
  v18 = type metadata accessor for BrickListContentView(0);
  v19 = &v11[*(v18 + 20)];
  sub_EB00(v15 + v17, v19, &unk_402FF0);
  v20 = v16[7];
  v21 = *(v15 + v16[6]);
  v22 = *(v15 + v20);
  v23 = *(v15 + v20 + 8);
  v24 = (v15 + v16[8]);
  v26 = *v24;
  v25 = v24[1];
  v27 = v16[10];
  v28 = type metadata accessor for BrickListContentView.Model(0);
  sub_EB00(v15 + v27, v19 + v28[11], &unk_3FBB40);
  v29 = (v19 + v28[5]);
  *v29 = 0;
  v29[1] = 0;
  *(v19 + v28[6]) = 0;
  v30 = v19 + v28[7];
  *v30 = v21;
  *(v30 + 4) = 0;
  v31 = (v19 + v28[8]);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v19 + v28[9]);
  *v32 = v22;
  v32[1] = v23;
  v33 = (v19 + v28[10]);
  *v33 = v26;
  v33[1] = v25;
  KeyPath = swift_getKeyPath();
  v35 = v59;
  *v59 = KeyPath;
  *(v35 + 8) = 0;
  *(v35 + *(v18 + 24)) = 1;
  v36 = v61;
  sub_1234F8(v60, v61);
  v37 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v38 = swift_allocObject();
  sub_123560(v36, v38 + v37, type metadata accessor for CategoryListCell);

  v39 = sub_306C58();
  v40 = (v35 + *(v64 + 44));
  *v40 = sub_123C80;
  v40[1] = v38;
  v40[2] = v39;
  v40[3] = v41;
  sub_3060B8();
  sub_3085F8();
  sub_304FD8();
  v87 = v42;
  v88 = v43;
  v89 = v44;
  v90 = v45;
  v91 = 0;
  v46 = v65;
  sub_305F58();
  sub_34804(v35, v46, &qword_4041C8);
  sub_306128();
  sub_304FD8();
  v82 = v47;
  v83 = v48;
  v84 = v49;
  v85 = v50;
  v86 = 0;
  v51 = v69;
  v52 = v67;
  sub_305F58();
  sub_34804(v46, v52, &qword_4041B8);
  v53 = v73;
  sub_305FE8();
  v54 = sub_1237A4(&qword_4041A8, &qword_4041A0, &unk_324058, sub_123774);
  v55 = v68;
  sub_306738();
  (*(v74 + 8))(v53, v75);
  sub_123D00(v52);
  v56 = v76;
  sub_305B88();
  v80 = v51;
  v81 = v54;
  swift_getOpaqueTypeConformance2();
  v57 = v70;
  sub_306758();
  (*(v77 + 8))(v56, v79);
  return (*(v71 + 8))(v55, v57);
}

__n128 sub_122C30@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_305A08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);

  if ((v8 & 1) == 0)
  {
    sub_30C7A8();
    v9 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for CategoryListCell();
  sub_303BA8();
  sub_30B8E8();
  sub_303B98();
  sub_303A98();
  sub_123D68(&unk_3FC918, &type metadata accessor for InterestStateMachine);
  v10 = sub_3053C8();
  v12 = v11;

  sub_305238();
  sub_306C58();
  sub_3051F8();
  v13 = v36;
  v14 = v37;
  v15 = v38;
  v16 = v39;
  v17 = v40;
  v18 = v41;
  sub_306C58();
  v28 = v14;
  v27 = v16;
  sub_305638();
  v19 = v28;
  v20 = v27;
  v21 = sub_305548();
  v22 = sub_3060C8();
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v19;
  *(a2 + 32) = v15;
  *(a2 + 40) = v20;
  *(a2 + 48) = v17;
  *(a2 + 56) = v18;
  v23 = v34;
  *(a2 + 128) = v33;
  *(a2 + 144) = v23;
  *(a2 + 160) = v35;
  v24 = v30;
  *(a2 + 64) = v29;
  *(a2 + 80) = v24;
  result = v32;
  *(a2 + 96) = v31;
  *(a2 + 112) = result;
  *(a2 + 176) = v21;
  *(a2 + 184) = v22;
  return result;
}

uint64_t sub_122F2C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1234F8(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_123560(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for CategoryListCell);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404190);
  sub_123648();
  return sub_3089C8();
}

uint64_t sub_12305C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_307048();
  (*(*(v8 - 8) + 8))(a1, v8);
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  return sub_123560(a2, a4 + *(a3 + 20), &type metadata accessor for CategoryListItem);
}

uint64_t sub_123100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_123D68(&qword_4041F8, type metadata accessor for CategoryListCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t sub_1231A4()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 0;
  (*(v8 + 104))(v7, enum case for ShelfCellListSeparatorMode.Placement.custom(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v0);
  return sub_3072D8();
}

uint64_t type metadata accessor for CategoryListCell()
{
  result = qword_404258;
  if (!qword_404258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1234F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryListCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_123560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1235C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CategoryListCell() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_122530(a1, v6, a2);
}

unint64_t sub_123648()
{
  result = qword_404198;
  if (!qword_404198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_404190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4041A0);
    sub_1237A4(&qword_4041A8, &qword_4041A0, &unk_324058, sub_123774);
    swift_getOpaqueTypeConformance2();
    sub_123D68(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404198);
  }

  return result;
}

uint64_t sub_1237A4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_123D68(&qword_4041E8, &type metadata accessor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_123858()
{
  result = qword_4041C0;
  if (!qword_4041C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4041C8);
    sub_123D68(&qword_4041D0, type metadata accessor for BrickListContentView);
    sub_EC8C(&qword_4041D8, &qword_4041E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4041C0);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for CategoryListCell() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = sub_308B28();
  v7 = v5 + v6[5];
  v8 = sub_3031C8();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = *(v7 + 32);
    if (v9 != 255)
    {
      sub_860C8(*(v7 + 16), *(v7 + 24), v9);
    }

    v10 = *(v7 + 64);
    if (v10 != 255)
    {
      sub_860E0(*(v7 + 56), v10);
    }

    v11 = *(v7 + 80);
    if (v11 != 255)
    {
      sub_860E0(*(v7 + 72), v11);
    }

    v12 = *(v7 + 96);
    if (v12 != 255)
    {
      sub_860E0(*(v7 + 88), v12);
    }

    v13 = *(v7 + 112);
    if (v13 != 255)
    {
      sub_860E0(*(v7 + 104), v13);
    }

    v14 = *(v7 + 128);
    if (v14 != 255)
    {
      sub_860E0(*(v7 + 120), v14);
    }

    v15 = *(v8 + 44);
    v16 = sub_3030F8();
    (*(*(v16 - 8) + 8))(v7 + v15, v16);
  }

  v17 = v6[9];
  v18 = sub_301CB8();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v20 = v5 + v6[10];
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v21 = v5 + v6[11];
  if (*(v21 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v22 = v6[12];
  v23 = sub_30BAA8();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v5 + v22, 1, v23))
  {
    (*(v24 + 8))(v5 + v22, v23);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_123C80@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CategoryListCell() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_122C30(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_123D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4041A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_123D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_123DC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_308B28();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_123E7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_308B28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_123F68()
{
  v0 = sub_30C098();
  v1 = [objc_opt_self() systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [objc_opt_self() systemFontOfSize:8.0 weight:UIFontWeightBold];
  v5 = [objc_opt_self() configurationWithFont:v4];

  [v3 setPreferredSymbolConfiguration:v5];
  v6 = [objc_opt_self() secondaryLabelColor];
  [v3 setTintColor:v6];

  return v3;
}

char *sub_1240D0()
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FAD20 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_429EB0;
  v9[3] = unk_429EC0;
  v10[0] = xmmword_429ED0;
  *(v10 + 10) = *(&xmmword_429ED0 + 10);
  v9[0] = xmmword_429E90;
  v9[1] = unk_429EA0;
  v7[2] = xmmword_429EB0;
  v7[3] = unk_429EC0;
  v8[0] = xmmword_429ED0;
  *(v8 + 10) = *(&xmmword_429ED0 + 10);
  v7[0] = xmmword_429E90;
  v7[1] = unk_429EA0;
  sub_8FC54(v9, &v6);
  v0 = sub_235C3C(v7, 1, 4, 0);
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 secondaryLabelColor];
  [v3 setTextColor:v4];

  [v3 setTextAlignment:0];
  return v3;
}

char *sub_124218()
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACB8 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_4299D0;
  v9[3] = unk_4299E0;
  v10[0] = xmmword_4299F0;
  *(v10 + 10) = *(&xmmword_4299F0 + 10);
  v9[0] = xmmword_4299B0;
  v9[1] = unk_4299C0;
  v7[2] = xmmword_4299D0;
  v7[3] = unk_4299E0;
  v8[0] = xmmword_4299F0;
  *(v8 + 10) = *(&xmmword_4299F0 + 10);
  v7[0] = xmmword_4299B0;
  v7[1] = unk_4299C0;
  sub_8FC54(v9, &v6);
  v0 = sub_235C3C(v7, 1, 4, 0);
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 labelColor];
  [v3 setTextColor:v4];

  [v3 setTextAlignment:0];
  return v3;
}

char *sub_124360()
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACF8 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_429CD0;
  v9[3] = unk_429CE0;
  v10[0] = xmmword_429CF0;
  *(v10 + 10) = *(&xmmword_429CF0 + 10);
  v9[0] = xmmword_429CB0;
  v9[1] = unk_429CC0;
  v7[2] = xmmword_429CD0;
  v7[3] = unk_429CE0;
  v8[0] = xmmword_429CF0;
  *(v8 + 10) = *(&xmmword_429CF0 + 10);
  v7[0] = xmmword_429CB0;
  v7[1] = unk_429CC0;
  sub_8FC54(v9, &v6);
  v0 = sub_235C3C(v7, 2, 4, 0);
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 secondaryLabelColor];
  [v3 setTextColor:v4];

  [v3 setTextAlignment:0];
  return v3;
}

id sub_1244A8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EB0);
  __chkstk_darwin(v10 - 8);
  v99 = v94 - v11;
  v100 = sub_3044F8();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v97 = sub_304458();
  v14 = *(v97 - 8);
  __chkstk_darwin(v97);
  v16 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_favoritedImageView;
  *&v5[v17] = sub_123F68();
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_hStackView;
  v19 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v19 setAxis:0];
  [v19 setAlignment:3];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setSpacing:10.0];
  *&v5[v18] = v19;
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_artworkView;
  type metadata accessor for ArtworkView();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  v23 = &v21[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v24 = *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v23 = v22;
  *(v23 + 8) = xmmword_3240C0;
  *(v23 + 3) = 0x4000000000000000;
  v25 = v22;

  sub_2D294();
  *&v5[v20] = v21;
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_ordinalLabel;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACC0 != -1)
  {
    swift_once();
  }

  v105[2] = xmmword_429A30;
  v105[3] = unk_429A40;
  v106[0] = xmmword_429A50;
  *(v106 + 10) = *(&xmmword_429A50 + 10);
  v105[0] = xmmword_429A10;
  v105[1] = unk_429A20;
  v103[2] = xmmword_429A30;
  v103[3] = unk_429A40;
  v104[0] = xmmword_429A50;
  *(v104 + 10) = *(&xmmword_429A50 + 10);
  v103[0] = xmmword_429A10;
  v103[1] = unk_429A20;
  sub_8FC54(v105, &v102);
  v27 = sub_235C3C(v103, 1, 4, 0);
  [v27 setTextAlignment:1];
  v28 = [objc_opt_self() labelColor];
  [v27 setTextColor:v28];

  *&v5[v26] = v27;
  v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_titlesVStackView;
  v30 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v30 setAxis:1];
  [v30 setAlignment:1];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 setBaselineRelativeArrangement:1];
  *&v5[v29] = v30;
  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_eyebrowLabel;
  *&v5[v31] = sub_1240D0();
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_titleLabel;
  *&v5[v32] = sub_124218();
  v33 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_subtitleLabel;
  *&v5[v33] = sub_124360();
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_artworkDimension] = 0x4056800000000000;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateController] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateMachine] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_currentState] = 1;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_objectGraph] = 0;
  v101.receiver = v5;
  v101.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v101, "initWithFrame:", a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FB0);
  sub_304548();
  *(swift_allocObject() + 16) = xmmword_315430;
  v35 = v97;
  (*(v14 + 104))(v16, enum case for UICellAccessory.DisplayedState.always(_:), v97);
  v36 = sub_304488();
  (*(*(v36 - 8) + 56))(v99, 1, 1, v36);
  v37 = v34;
  sub_3044E8();
  sub_3044B8();
  v98[1](v13, v100);
  (*(v14 + 8))(v16, v35);
  sub_30CB78();
  v38 = [v37 contentView];
  v39 = *(v37 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_hStackView);
  v40 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_hStackView;
  v99 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_hStackView;
  [v38 addSubview:v39];

  v41 = [v37 contentView];
  v42 = *(v37 + v40);
  sub_30CE98();

  v43 = [v37 contentView];
  v100 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_favoritedImageView;
  [v43 addSubview:*(v37 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_favoritedImageView)];

  v44 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_titlesVStackView;
  v45 = *(v37 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_titlesVStackView);
  v94[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v46 = swift_allocObject();
  v97 = xmmword_31D470;
  *(v46 + 16) = xmmword_31D470;
  v47 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_eyebrowLabel;
  v48 = *(v37 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_eyebrowLabel);
  *(v46 + 32) = v48;
  v98 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_titleLabel;
  v49 = *(v37 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_titleLabel);
  *(v46 + 40) = v49;
  v50 = *(v37 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_subtitleLabel);
  *(v46 + 48) = v50;
  v51 = v45;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  v55._rawValue = v46;
  sub_30C688(v55);

  v56 = *&v99[v37];
  v57 = swift_allocObject();
  *(v57 + 16) = v97;
  v95 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_artworkView;
  v58 = *(v37 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_artworkView);
  *(v57 + 32) = v58;
  v99 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_ordinalLabel;
  v59 = *(v37 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_ordinalLabel);
  *(v57 + 40) = v59;
  v60 = *(v37 + v44);
  *(v57 + 48) = v60;
  v61 = v56;
  v62 = v58;
  v63 = v59;
  v64 = v60;
  v65._rawValue = v57;
  sub_30C688(v65);

  [*(v37 + v44) setCustomSpacing:*(v37 + v47) afterView:20.0];
  [*(v37 + v44) setCustomSpacing:*(v98 + v37) afterView:20.0];
  v66 = [v37 contentView];
  v67 = [v66 leadingAnchor];
  v98 = v67;

  v68 = [v37 contentView];
  v69 = [v68 layoutMarginsGuide];

  v70 = [v69 leadingAnchor];
  *&v97 = v70;

  v71 = v100;
  v72 = [*(v37 + v100) centerXAnchor];
  v73 = [v67 anchorWithOffsetToAnchor:v72];
  ObjectType = v73;

  v74 = [*(v37 + v71) centerXAnchor];
  v75 = [v74 anchorWithOffsetToAnchor:v70];

  v76 = [(objc_class *)v73 constraintEqualToAnchor:v75];
  v94[0] = objc_opt_self();
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_31FDA0;
  v78 = v95;
  v79 = [*(v37 + v95) heightAnchor];
  v80 = [v79 constraintEqualToConstant:90.0];

  *(v77 + 32) = v80;
  v81 = [*(v37 + v78) widthAnchor];
  v82 = [*(v37 + v78) heightAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v77 + 40) = v83;
  v84 = [*&v99[v37] widthAnchor];
  v85 = [v84 constraintGreaterThanOrEqualToConstant:36.0];

  *(v77 + 48) = v85;
  *(v77 + 56) = v76;
  v86 = *(v37 + v100);
  v87 = v76;
  v88 = [v86 centerYAnchor];
  v89 = [v37 contentView];

  v90 = [v89 centerYAnchor];
  v91 = [v88 constraintEqualToAnchor:v90];

  *(v77 + 64) = v91;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v94[0] activateConstraints:isa];

  return v37;
}

uint64_t sub_1250B4()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateMachine;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateMachine))
  {

    sub_303A78();
  }

  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateController) = 0;
}

void sub_125138()
{
  v1 = v0;
  v2 = sub_3041E8();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v5 - 8);
  v38 = &v36 - v6;
  v7 = sub_303398();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_3031C8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  sub_307D78();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_125E18(v12);
  }

  else
  {
    sub_6D85C(v12, v19);
    if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_objectGraph))
    {
      v20 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_artworkView);

      sub_2EF18(v19, 90.0, 90.0);
      v21 = *(v20 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style);
      *(v20 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style) = 1;
      v41[0] = v21;
      sub_2DE78(v41);
      sub_6D8C0(v19, v16);
      v22 = sub_303DF8();
      (*(*(v22 - 8) + 56))(v38, 1, 1, v22);
      sub_304198();
      sub_30C778();
      sub_303A08();
      (*(v36 + 8))(v4, v37);
      v23 = [objc_opt_self() mainScreen];
      [v23 scale];

      sub_303358();
      type metadata accessor for ArtworkView();
      sub_125EC0(&qword_404350, 255, type metadata accessor for ArtworkView);
      sub_308E28();

      (*(v39 + 8))(v9, v40);
    }

    sub_6D924(v19);
  }

  sub_307DC8();
  if (v24)
  {
    v25 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_ordinalLabel);
    [v25 setHidden:0];
    v26 = sub_30C098();

    [v25 setText:v26];
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_ordinalLabel) setHidden:1];
  }

  sub_307DB8();
  if (v27)
  {
    v28 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_eyebrowLabel);
    [v28 setHidden:0];
    v29 = sub_30C098();

    [v28 setText:v29];
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_eyebrowLabel) setHidden:1];
  }

  sub_12575C();
  v30 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_titleLabel);
  sub_307D88();
  if (v31)
  {
    v32 = sub_30C098();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:{v32, v36, v37}];

  v33 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_subtitleLabel);
  sub_307DD8();
  if (v34)
  {
    v35 = sub_30C098();
  }

  else
  {
    v35 = 0;
  }

  [v33 setText:v35];
}

uint64_t sub_12575C()
{
  sub_309418();
  if (!swift_dynamicCastClass())
  {
    v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateMachine;
    if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateMachine))
    {

      sub_303A78();
    }

    *(v0 + v3) = 0;

    *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateController) = 0;
  }

  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateController;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateController);
  if (!v2)
  {
    if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_objectGraph))
    {
      sub_303BA8();

      sub_30B8E8();

      v2 = v9;
    }

    else
    {
      v2 = 0;
    }
  }

  *(v0 + v1) = v2;

  if (v2)
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateMachine;
    if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateMachine))
    {

      sub_303A78();
    }

    sub_307D98();
    *(v0 + v5) = sub_303B98();

    v6 = sub_303A88();
    v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_currentState;
    *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_currentState) = v6;
    v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_favoritedImageView);
    [v8 setHidden:v6 != 2];
    [v8 setHidden:*(v0 + v7) != 2];

    if (*(v0 + v5))
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_303A68();
    }
  }

  return sub_1250B4();
}

void sub_1259E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_303A88();
    v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_currentState] = v2;
    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_favoritedImageView] setHidden:v2 != 2];
  }
}

uint64_t sub_125B80(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_objectGraph) = a1;

  return sub_1250B4();
}

uint64_t sub_125BCC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_125EC0(&qword_404358, v3, type metadata accessor for CircleListCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_125E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_125E80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_125EC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_125F08()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_favoritedImageView;
  *(v1 + v2) = sub_123F68();
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_hStackView;
  v4 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setAxis:0];
  [v4 setAlignment:3];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setSpacing:10.0];
  *(v1 + v3) = v4;
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_artworkView;
  type metadata accessor for ArtworkView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  v8 = &v6[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v9 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v8 = v7;
  *(v8 + 8) = xmmword_3240C0;
  *(v8 + 3) = 0x4000000000000000;
  v10 = v7;

  sub_2D294();
  *(v1 + v5) = v6;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_ordinalLabel;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACC0 != -1)
  {
    swift_once();
  }

  v22[2] = xmmword_429A30;
  v22[3] = unk_429A40;
  v23[0] = xmmword_429A50;
  *(v23 + 10) = *(&xmmword_429A50 + 10);
  v22[0] = xmmword_429A10;
  v22[1] = unk_429A20;
  v20[2] = xmmword_429A30;
  v20[3] = unk_429A40;
  v21[0] = xmmword_429A50;
  *(v21 + 10) = *(&xmmword_429A50 + 10);
  v20[0] = xmmword_429A10;
  v20[1] = unk_429A20;
  sub_8FC54(v22, v19);
  v12 = sub_235C3C(v20, 1, 4, 0);
  [v12 setTextAlignment:1];
  v13 = [objc_opt_self() labelColor];
  [v12 setTextColor:v13];

  *(v1 + v11) = v12;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_titlesVStackView;
  v15 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v15 setAxis:1];
  [v15 setAlignment:1];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setBaselineRelativeArrangement:1];
  *(v1 + v14) = v15;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_eyebrowLabel;
  *(v1 + v16) = sub_1240D0();
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_titleLabel;
  *(v1 + v17) = sub_124218();
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_subtitleLabel;
  *(v1 + v18) = sub_124360();
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_artworkDimension) = 0x4056800000000000;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateController) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_interestStateMachine) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_currentState) = 1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CircleListCell_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

void sub_126320(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_objectGraph] = a1;

  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_episodeUpsellBannerView;
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_episodeUpsellBannerView];

  v5 = v4;
  sub_302608();

  v6 = [v1 contentView];
  v7 = *&v2[v3];
  sub_293E0();
  v8 = v7;
  v9 = sub_30CA38();

  if ((v9 & 1) == 0)
  {
    v10 = [v2 contentView];
    v11 = *&v2[v3];
    sub_30CE98();
  }

  v12 = *&v2[v3];
  v13 = sub_3025E8();

  LOBYTE(v12) = sub_30CA38();
  if ((v12 & 1) == 0)
  {
    v14 = *&v2[v3];
    v15 = sub_3025E8();

    sub_30CE98();
  }
}

id sub_1264FC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_3025F8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_cachingArtworkView;
  v16 = sub_26FC0C();
  v17 = v16[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v16[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
  v26 = v17;
  v18 = v16;
  sub_2DE78(&v26);

  *&v5[v15] = v18;
  v19 = isMac();
  v20 = &enum case for EpisodeUpsellBannerView.EpisodeUpsellBannerType.macOS(_:);
  if (!v19)
  {
    v20 = &enum case for EpisodeUpsellBannerView.EpisodeUpsellBannerType.iOSEpisodeDetail(_:);
  }

  (*(v12 + 104))(v14, *v20, v11);
  v21 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_episodeUpsellBannerView;
  v22 = objc_allocWithZone(sub_302638());
  *&v5[v21] = sub_302618();
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_objectGraph] = 0;
  v25.receiver = v5;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1266DC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_3025F8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_cachingArtworkView;
  v10 = sub_26FC0C();
  v11 = v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
  v21 = v11;
  v12 = v10;
  sub_2DE78(&v21);

  *&v2[v9] = v12;
  v13 = isMac();
  v14 = &enum case for EpisodeUpsellBannerView.EpisodeUpsellBannerType.macOS(_:);
  if (!v13)
  {
    v14 = &enum case for EpisodeUpsellBannerView.EpisodeUpsellBannerType.iOSEpisodeDetail(_:);
  }

  (*(v6 + 104))(v8, *v14, v5);
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_episodeUpsellBannerView;
  v16 = objc_allocWithZone(sub_302638());
  *&v2[v15] = sub_302618();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_objectGraph] = 0;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, "initWithCoder:", a1);

  if (v17)
  {
  }

  return v17;
}

uint64_t sub_126934()
{
  v1 = v0;
  v30 = sub_3041E8();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v4 - 8);
  v31 = &v28 - v5;
  v6 = sub_303398();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3031C8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_3030F8();
  __chkstk_darwin(v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v28 - v19;
  v21 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_episodeUpsellBannerView);
  sub_302628();

  sub_30A698();
  if (v22)
  {
    v35 = xmmword_31EB70;
    v36 = 0u;
    memset(v37, 0, sizeof(v37));
    sub_3030B8();
    sub_303258();
    sub_3031B8();
    (*(v9 + 56))(v20, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v20, 1, 1, v8);
  }

  sub_101CE4(v20, v17);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    sub_125E18(v20);
    v20 = v17;
  }

  else
  {
    sub_6D85C(v17, v13);
    if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_objectGraph))
    {
      sub_6D8C0(v13, v28);
      v23 = qword_3FAB18;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = sub_303DF8();
      (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
      sub_304198();
      sub_30C778();
      sub_303A08();
      (*(v29 + 8))(v3, v30);
      v25 = [objc_opt_self() mainScreen];
      [v25 scale];

      v26 = v32;
      sub_303358();
      type metadata accessor for ArtworkView();
      sub_127244(&qword_404350, 255, type metadata accessor for ArtworkView);
      sub_308E28();

      (*(v33 + 8))(v26, v34);
    }

    sub_6D924(v13);
  }

  return sub_125E18(v20);
}

uint64_t sub_126F84(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_127244(&qword_4043E0, v3, type metadata accessor for EpisodeUpsellBannerCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_127008()
{
  if (qword_3FAB10 != -1)
  {
    swift_once();
  }

  return sub_307198();
}

double sub_127088()
{
  if (qword_3FAB18 != -1)
  {
    swift_once();
  }

  return *&qword_404368;
}

uint64_t sub_127244(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_12728C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3055F8();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3055B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_305F68();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_305F78();
  sub_3055A8();
  sub_128F9C(&qword_3FF720, &type metadata accessor for ButtonStyleConfiguration.Label);
  sub_128F9C(&qword_404508, &type metadata accessor for PlainButtonStyle);
  sub_3064E8();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v14 = sub_306158();
  KeyPath = swift_getKeyPath();
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_404510) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = sub_3068A8();
  v18 = swift_getKeyPath();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_404518) + 36));
  *v19 = v18;
  v19[1] = v17;
  LOBYTE(v17) = sub_3060B8();
  sub_304FD8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_404520) + 36);
  *v28 = v17;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  LOBYTE(v17) = sub_306128();
  sub_304FD8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_404528) + 36);
  *v37 = v17;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  v38 = *(v3 + 28);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = sub_305B68();
  (*(*(v40 - 8) + 104))(&v5[v38], v39, v40);
  __asm { FMOV            V0.2D, #4.0 }

  *v5 = _Q0;
  sub_3050F8();
  v46 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_404530) + 36);
  sub_128FF4(v5, v46, &type metadata accessor for RoundedRectangle);
  v47 = *&v64 * 0.5;
  v48 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_404538) + 68);
  sub_128FF4(v5, v48, &type metadata accessor for RoundedRectangle);
  *(v48 + *(sub_3055E8() + 20)) = v47;
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEEF0) + 36);
  v50 = v65;
  *v49 = v64;
  *(v49 + 16) = v50;
  *(v49 + 32) = v66;
  *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_404540) + 56)) = 256;
  v51 = sub_306C58();
  v53 = v52;
  sub_70840(v5);
  v54 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_404548) + 36));
  *v54 = v51;
  v54[1] = v53;
  v55 = sub_3068A8();
  v56 = swift_getKeyPath();
  v57 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_404550) + 36));
  *v57 = v56;
  v57[1] = v55;
  v58 = sub_306C58();
  v60 = v59;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404558);
  v62 = (v46 + *(result + 36));
  *v62 = v58;
  v62[1] = v60;
  return result;
}

uint64_t sub_1277E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for ErrorCell();
  v53 = *(v3 - 8);
  v52 = *(v53 + 64);
  __chkstk_darwin(v3);
  v51 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808);
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  __chkstk_darwin(v5);
  v54 = &v44[-v7];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404420);
  v55 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v61 = &v44[-v10];

  sub_306168();
  v11 = sub_306388();
  v13 = v12;
  v15 = v14;

  sub_3068A8();
  v16 = sub_306338();
  v49 = v17;
  v50 = v16;
  v19 = v18;
  v48 = v20;

  sub_EBC8(v11, v13, v15 & 1);

  sub_306C58();
  sub_3051F8();
  v21 = v19 & 1;
  LOBYTE(v71[0]) = v19 & 1;
  v45 = v19 & 1;
  KeyPath = swift_getKeyPath();
  v46 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404428);
  sub_305168();
  v47 = v71[0];
  v23 = v51;
  sub_128FF4(a1, v51, type metadata accessor for ErrorCell);
  v24 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v25 = swift_allocObject();
  sub_128A1C(v23, v25 + v24, type metadata accessor for ErrorCell);
  v62 = a1;
  v26 = v54;
  sub_306A68();
  sub_EC8C(&qword_3FB838, &qword_3FB808);
  sub_128AEC();
  v27 = v61;
  v28 = v59;
  sub_3064F8();
  (*(v60 + 8))(v26, v28);
  v29 = v55;
  v30 = v56;
  v31 = *(v55 + 16);
  v32 = v58;
  v31(v56, v27, v58);
  v33 = v49;
  v34 = v50;
  *&v66 = v50;
  *(&v66 + 1) = v49;
  LOBYTE(v67) = v21;
  v35 = v48;
  *(&v67 + 1) = v48;
  v36 = v65;
  v70[0] = v65;
  v37 = v63;
  v68 = v63;
  v69 = v64;
  *&v70[1] = KeyPath;
  BYTE8(v70[1]) = 1;
  v38 = v57;
  *(v57 + 48) = v64;
  *(v38 + 64) = v36;
  v39 = v67;
  *v38 = v66;
  *(v38 + 16) = v39;
  *(v38 + 32) = v37;
  *(v38 + 73) = *(v70 + 9);
  *(v38 + 96) = v47;
  *(v38 + 104) = 0;
  v40 = v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404438);
  v31((v40 + *(v41 + 64)), v30, v32);
  sub_EB00(&v66, v71, &qword_404440);
  v42 = *(v29 + 8);
  v42(v61, v32);
  v42(v30, v32);
  v71[0] = v34;
  v71[1] = v33;
  v72 = v45;
  v73 = v35;
  v74 = v63;
  v75 = v64;
  v76 = v65;
  v77 = v46;
  v78 = 1;
  return sub_EB68(v71, &qword_404440);
}

uint64_t sub_127D90(uint64_t *a1)
{
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_305A08();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = a1 + *(type metadata accessor for ErrorCell() + 24);
  v13 = sub_307688();
  sub_EB00(v12 + *(v13 + 28), v11, &qword_3FE8C0);
  v14 = sub_307BE8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    return sub_EB68(v11, &qword_3FE8C0);
  }

  sub_307BD8();
  (*(v15 + 8))(v11, v14);
  sub_12658(&v23, v24);
  v17 = *a1;
  v18 = *(a1 + 8);

  if ((v18 & 1) == 0)
  {
    sub_30C7A8();
    v19 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v22 + 8))(v8, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);
  sub_30B8E8();

  (*(v3 + 104))(v5, enum case for ActionMetricsBehavior.notProcessed(_:), v2);
  if (v18)
  {
    *&v23 = v17;
  }

  else
  {

    sub_30C7A8();
    v20 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v22 + 8))(v8, v6);
  }

  swift_getObjectType();
  sub_307C38();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v5, v2);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1281D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = a1 + *(type metadata accessor for ErrorCell() + 24);
  v8 = sub_307688();
  sub_EB00(v7 + *(v8 + 28), v6, &qword_3FE8C0);
  v9 = sub_307BE8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    result = sub_EB68(v6, &qword_3FE8C0);
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    v12 = sub_307BC8();
    v13 = v14;
    result = (*(v10 + 8))(v6, v9);
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_128348@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_305BD8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404410);
  sub_1277E0(v1, a1 + *(v3 + 44));
  v4 = sub_3060C8();
  sub_304FD8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404418);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_1283F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  sub_1286F8();
  sub_305158();
  v8 = sub_307048();
  (*(*(v8 - 8) + 8))(a1, v8);
  return sub_128A1C(a2, a4 + *(a3 + 24), &type metadata accessor for ErrorModel);
}

uint64_t sub_1284D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_128F9C(&qword_404448, type metadata accessor for ErrorCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t type metadata accessor for ErrorCell()
{
  result = qword_4044A8;
  if (!qword_4044A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1286F8()
{
  result = qword_404408;
  if (!qword_404408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404408);
  }

  return result;
}

uint64_t sub_12874C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_305828();
  *a1 = result;
  return result;
}

uint64_t sub_128778@<X0>(_BYTE *a1@<X8>)
{
  result = sub_305828();
  *a1 = result;
  return result;
}

uint64_t sub_1287F4()
{
  v1 = (type metadata accessor for ErrorCell() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404428);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v0 + v3 + v1[8];

  v8 = sub_307688();
  v9 = *(v8 + 24);
  v10 = sub_30BAA8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = *(v8 + 28);
  v13 = sub_307BE8();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v7 + v12, 1, v13))
  {
    (*(v14 + 8))(v7 + v12, v13);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_128A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_128A84()
{
  v1 = *(type metadata accessor for ErrorCell() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_127D90(v2);
}

unint64_t sub_128AEC()
{
  result = qword_404430;
  if (!qword_404430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404430);
  }

  return result;
}

uint64_t sub_128B64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404428);
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
      v13 = sub_307688();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_128CA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404428);
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
      v13 = sub_307688();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_128DCC()
{
  sub_D7D8();
  if (v0 <= 0x3F)
  {
    sub_128E68();
    if (v1 <= 0x3F)
    {
      sub_307688();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_128E68()
{
  if (!qword_4044B8)
  {
    sub_1286F8();
    v0 = sub_305178();
    if (!v1)
    {
      atomic_store(v0, &qword_4044B8);
    }
  }
}

unint64_t sub_128EC8()
{
  result = qword_4044F0;
  if (!qword_4044F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_404418);
    sub_EC8C(&qword_4044F8, &qword_404500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4044F0);
  }

  return result;
}

uint64_t sub_128F9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_128FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_129060()
{
  result = qword_404560;
  if (!qword_404560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_404530);
    sub_129144(&qword_404568, &qword_404528, &unk_324778, sub_1291C8);
    sub_EC8C(&qword_404588, &qword_404558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404560);
  }

  return result;
}

uint64_t sub_129144(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1291F8()
{
  result = qword_404578;
  if (!qword_404578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_404518);
    sub_1292B0();
    sub_EC8C(&qword_3FC788, &qword_3FC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404578);
  }

  return result;
}

unint64_t sub_1292B0()
{
  result = qword_404580;
  if (!qword_404580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_404510);
    sub_305F68();
    sub_3055B8();
    sub_128F9C(&qword_3FF720, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_128F9C(&qword_404508, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404580);
  }

  return result;
}

void sub_12941C()
{
  sub_124C4(0, &qword_408100);
  v0 = sub_30CD68();
  v1 = sub_30CD88();
  v2 = sub_30CD28();

  qword_404590 = v2;
}

id sub_12948C()
{
  v0 = sub_30C098();
  v1 = [objc_opt_self() systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  v3 = qword_3FAB20;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = [objc_opt_self() configurationWithFont:qword_404590 scale:2];
  [v4 setPreferredSymbolConfiguration:v5];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v4;
}

id sub_1295B8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell____lazy_storage___iconForcedToTrailingEdgeConstraint;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell____lazy_storage___iconForcedToTrailingEdgeConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell____lazy_storage___iconForcedToTrailingEdgeConstraint];
  }

  else
  {
    v4 = [v0 contentView];
    v5 = [v4 layoutMarginsGuide];

    v6 = [v5 trailingAnchor];
    v7 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_iconView] trailingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:0.0];

    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

char *sub_1296C0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_304838();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_objectGraph] = 0;
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_listContent;
  sub_304808();
  sub_3047F8();
  v18 = sub_3047C8();
  *(v19 + 8) = 0;
  v18(v64, 0);
  v20 = sub_3047C8();
  *(v21 + 24) = 0;
  v20(v64, 0);
  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  v22 = qword_40DB80;
  v23 = sub_304758();
  sub_304728();
  v23(v64, 0);
  if (qword_3FAB20 != -1)
  {
    swift_once();
  }

  v24 = qword_404590;
  v25 = sub_304758();
  sub_304718();
  v25(v64, 0);
  sub_124C4(0, &qword_404620);
  (*(v11 + 16))(v13, v16, v10);
  v26 = sub_30C948();
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  (*(v11 + 8))(v16, v10);
  *&v5[v17] = v26;
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_iconView;
  *&v5[v27] = sub_12948C();
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell____lazy_storage___iconForcedToTrailingEdgeConstraint] = 0;
  v63.receiver = v5;
  v63.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  v29 = [v28 contentView];
  v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_listContent;
  [v29 addSubview:*&v28[OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_listContent]];

  v31 = [v28 contentView];
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_iconView;
  [v31 addSubview:*&v28[OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_iconView]];

  ObjectType = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_31D660;
  v34 = [v28 contentView];
  v35 = [v34 topAnchor];

  v36 = [*&v28[v30] topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v33 + 32) = v37;
  v38 = [v28 contentView];
  v39 = [v38 layoutMarginsGuide];

  v40 = [v39 leadingAnchor];
  v41 = [*&v28[v30] leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v33 + 40) = v42;
  v43 = [v28 contentView];
  v44 = [v43 bottomAnchor];

  v45 = [*&v28[v30] bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v33 + 48) = v46;
  v47 = [*&v28[v32] leadingAnchor];
  v48 = [*&v28[v30] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:10.0];

  *(v33 + 56) = v49;
  v50 = [v28 contentView];
  v51 = [v50 centerYAnchor];

  v52 = [*&v28[v32] centerYAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v33 + 64) = v53;
  v54 = [v28 contentView];

  v55 = [v54 layoutMarginsGuide];
  v56 = [v55 trailingAnchor];

  v57 = [*&v28[v32] trailingAnchor];
  v58 = [v56 constraintGreaterThanOrEqualToAnchor:v57 constant:0.0];

  *(v33 + 72) = v58;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [(objc_class *)ObjectType activateConstraints:isa];

  return v28;
}

uint64_t sub_129FD8()
{
  v1 = v0;
  v2 = sub_304838();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_listContent;
  v7 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_listContent);

  v8 = v7;
  sub_30C928();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404610);
  swift_dynamicCast();
  sub_304818();
  v9 = *(v1 + v6);
  v14[3] = v2;
  v14[4] = &protocol witness table for UIListContentConfiguration;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v14);
  (*(v3 + 16))(boxed_opaque_existential_0Tm, v5, v2);
  v11 = v9;
  sub_30C938();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_12A160()
{
  v0 = sub_3072C8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_307278();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ShelfCellListSeparatorMode.Layout.marginToMargin(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Placement.default(_:), v0);
  return sub_3072D8();
}

uint64_t sub_12A2E8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_objectGraph) = a1;
}

uint64_t sub_12A330(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_12A5C4(&qword_404618, v3, type metadata accessor for ExternalLinkCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_12A5C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_12A60C()
{
  v1 = v0;
  v2 = sub_304838();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v20[-v7];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_objectGraph) = 0;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_listContent;
  sub_304808();
  sub_3047F8();
  v10 = sub_3047C8();
  *(v11 + 8) = 0;
  v10(v20, 0);
  v12 = sub_3047C8();
  *(v13 + 24) = 0;
  v12(v20, 0);
  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  v14 = qword_40DB80;
  v15 = sub_304758();
  sub_304728();
  v15(v20, 0);
  if (qword_3FAB20 != -1)
  {
    swift_once();
  }

  v16 = qword_404590;
  v17 = sub_304758();
  sub_304718();
  v17(v20, 0);
  sub_124C4(0, &qword_404620);
  (*(v3 + 16))(v5, v8, v2);
  v18 = sub_30C948();
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  (*(v3 + 8))(v8, v2);
  *(v1 + v9) = v18;
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell_iconView;
  *(v1 + v19) = sub_12948C();
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ExternalLinkCell____lazy_storage___iconForcedToTrailingEdgeConstraint) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_12A8FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_304838();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CB88();
  if (a3)
  {
    sub_30B018();
    sub_304818();
    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v8 = qword_40DB80;
  }

  else
  {

    sub_304818();
    v9 = [objc_opt_self() labelColor];
  }

  v10 = sub_304758();
  sub_304728();
  v10(v17, 0);
  sub_D8184();
  v11 = sub_30CD68();
  v12 = sub_30CD88();
  sub_30CD28();

  v13 = sub_304758();
  sub_304718();
  v13(v17, 0);
  v17[3] = v4;
  v17[4] = &protocol witness table for UIListContentConfiguration;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v17);
  (*(v5 + 16))(boxed_opaque_existential_0Tm, v7, v4);
  sub_30CA78();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_12AB54()
{
  v0 = sub_3072C8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_307278();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ShelfCellListSeparatorMode.Layout.marginToMargin(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Placement.default(_:), v0);
  return sub_3072D8();
}

uint64_t sub_12AE50(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews9LabelCell_objectGraph) = a1;
}

uint64_t sub_12AE94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return TypedShelfUIKitCell.apply(model:)(a1, a2, WitnessTable);
}

uint64_t sub_12AF60()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ShelfCellListSeparatorMode.Placement.never(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v0);
  return sub_3072D8();
}

id sub_12B1D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_12B338(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LabelCell();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_12B37C()
{
  result = qword_4046A8;
  if (!qword_4046A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4046A8);
  }

  return result;
}

uint64_t sub_12B3D0()
{
  v1 = v0;
  v2 = sub_304838();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_config;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v29 = v8;
  v30 = v9;
  v9(v7, v1 + v8, v2);
  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  v10 = qword_40DB80;
  v11 = sub_304798();
  sub_304788();
  v11(v32, 0);
  v12 = sub_30AF68();
  sub_30AFB8();
  if (sub_30AFB8() == v12)
  {
    v13 = v10;
  }

  else
  {
    v14 = sub_30AF88();
    sub_30AFB8();
    v15 = sub_30AFB8();
    v16 = objc_opt_self();
    if (v15 == v14)
    {
      v17 = [v16 secondaryLabelColor];
    }

    else
    {
      v17 = [v16 labelColor];
    }

    v18 = v17;
  }

  v19 = sub_304758();
  sub_304728();
  v19(v32, 0);
  v20 = [objc_opt_self() secondaryLabelColor];
  v21 = sub_3047B8();
  sub_304728();
  v21(v32, 0);
  v22 = v30;
  v23 = v31;
  v30(v31, v7, v2);
  v24 = v29;
  swift_beginAccess();
  (*(v3 + 24))(v1 + v24, v23, v2);
  swift_endAccess();
  v32[3] = v2;
  v32[4] = &protocol witness table for UIListContentConfiguration;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v32);
  v22(boxed_opaque_existential_0Tm, v1 + v24, v2);
  sub_30CA78();
  v26 = *(v3 + 8);
  v26(v23, v2);
  return (v26)(v7, v2);
}

void sub_12B748()
{
  v1 = sub_30AF78();
  sub_30AFB8();
  if (sub_30AFB8() == v1)
  {
    v2 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_chevronShowing];
    v0[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_chevronShowing] = 1;
    if (v2)
    {
      return;
    }
  }

  else
  {
    v3 = sub_30AF98();
    sub_30AFB8();
    if (sub_30AFB8() == v3)
    {
      v4 = [v0 traitCollection];
      v5 = [v4 horizontalSizeClass];

      v6 = v5 == &dword_0 + 1;
      v7 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_chevronShowing];
      v0[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_chevronShowing] = v6;
      if (v6 == v7)
      {
        return;
      }
    }

    else
    {
      v8 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_chevronShowing];
      v0[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_chevronShowing] = 0;
      if ((v8 & 1) == 0)
      {
        return;
      }
    }
  }

  sub_12BB80();
}

void sub_12B85C()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_itemKind];
  v3 = [v0 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_4 + 1)
  {
    sub_D8184();
    v5 = sub_30CD88();
  }

  else if (v2 == 20)
  {
    sub_D8184();
    v5 = sub_30CD68();
  }

  else
  {
    if (v2 == 21)
    {
      v6 = 0;
      goto LABEL_9;
    }

    sub_D8184();
    v5 = sub_30CD78();
  }

  v6 = v5;
LABEL_9:
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_config;
  swift_beginAccess();
  sub_3046D8();
  swift_endAccess();
  v8 = sub_304838();
  v21 = v8;
  v22 = &protocol witness table for UIListContentConfiguration;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v20);
  v10 = *(*(v8 - 8) + 16);
  v10(boxed_opaque_existential_0Tm, &v1[v7], v8);
  sub_30CA78();
  if (v6)
  {
    swift_beginAccess();
    v11 = v6;
    v12 = sub_304758();
    sub_304718();
    v12(v20, 0);
    swift_endAccess();
    v21 = v8;
    v22 = &protocol witness table for UIListContentConfiguration;
    v13 = __swift_allocate_boxed_opaque_existential_0Tm(v20);
    v10(v13, &v1[v7], v8);
    sub_30CA78();
    swift_beginAccess();
    v14 = v11;
    v15 = sub_3047B8();
    sub_304718();
    v15(v20, 0);
    swift_endAccess();
    v21 = v8;
    v22 = &protocol witness table for UIListContentConfiguration;
    v16 = __swift_allocate_boxed_opaque_existential_0Tm(v20);
    v10(v16, &v1[v7], v8);
    sub_30CA78();
    v17 = [objc_opt_self() configurationWithFont:v14 scale:2];
    swift_beginAccess();
    v18 = sub_304798();
    sub_304778();
    v18(v20, 0);
    swift_endAccess();
    v21 = v8;
    v22 = &protocol witness table for UIListContentConfiguration;
    v19 = __swift_allocate_boxed_opaque_existential_0Tm(v20);
    v10(v19, &v1[v7], v8);
    sub_30CA78();
  }
}

uint64_t sub_12BB80()
{
  v1 = sub_3044A8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v78 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_304448();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_3044F8();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_304428();
  v80 = *(v6 - 8);
  __chkstk_darwin(v6);
  v79 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EB0);
  __chkstk_darwin(v8 - 8);
  v90 = &v69 - v9;
  v10 = sub_304478();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_304458();
  v89 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_304548();
  v86 = *(v91 - 8);
  __chkstk_darwin(v91);
  v83 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v82 = &v69 - v19;
  __chkstk_darwin(v20);
  v81 = &v69 - v21;
  __chkstk_darwin(v22);
  v85 = &v69 - v23;
  v25.n128_f64[0] = __chkstk_darwin(v24);
  v27 = &v69 - v26;
  v87 = v0;
  v88 = v2;
  v28 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_itemKind);
  v84 = v1;
  if (v28 == 75)
  {
    v29 = _swiftEmptyArrayStorage;
    v30 = v91;
    v31 = v87;
    v32 = v2;
    goto LABEL_11;
  }

  v71 = v11;
  v33 = v14;
  v34 = sub_3070F8();
  v36 = v35;
  if (v34 == sub_3070F8() && v36 == v37)
  {
  }

  else
  {
    v38 = sub_30D728();

    if ((v38 & 1) == 0)
    {
      v29 = _swiftEmptyArrayStorage;
      v1 = v84;
      v31 = v87;
      v32 = v88;
      v14 = v33;
      v30 = v91;
      goto LABEL_11;
    }
  }

  v70 = v6;
  v39 = v89;
  v14 = v33;
  (*(v89 + 104))(v16, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v33);
  v40 = sub_304488();
  (*(*(v40 - 8) + 56))(v90, 1, 1, v40);
  sub_304468();
  sub_304528();
  (*(v71 + 8))(v13, v10);
  (*(v39 + 8))(v16, v33);
  v29 = sub_CAF98(0, 1, 1, _swiftEmptyArrayStorage);
  v42 = v29[2];
  v41 = v29[3];
  if (v42 >= v41 >> 1)
  {
    v29 = sub_CAF98(v41 > 1, v42 + 1, 1, v29);
  }

  v1 = v84;
  v31 = v87;
  v43 = v88;
  v30 = v91;
  v29[2] = v42 + 1;
  (*(v86 + 32))(v29 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v42, v27, v30);
  v32 = v43;
  v6 = v70;
LABEL_11:
  if (*(v31 + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_accessoryText + 8))
  {
    v44 = v1;
    v45 = v89;
    (*(v89 + 104))(v16, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v14, v25);
    v46 = sub_304488();
    (*(*(v46 - 8) + 56))(v90, 1, 1, v46);

    v47 = v79;
    sub_304418();
    sub_304508();

    (*(v80 + 8))(v47, v6);
    (*(v45 + 8))(v16, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_CAF98(0, v29[2] + 1, 1, v29);
    }

    v49 = v29[2];
    v48 = v29[3];
    v50 = v86;
    v31 = v87;
    v1 = v44;
    if (v49 >= v48 >> 1)
    {
      v29 = sub_CAF98(v48 > 1, v49 + 1, 1, v29);
    }

    v32 = v88;
    v29[2] = v49 + 1;
    v30 = v91;
    (*(v50 + 32))(v29 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49, v85, v91);
  }

  else
  {
    v50 = v86;
  }

  if (*(v31 + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_chevronShowing) == 1)
  {
    v51 = v89;
    (*(v89 + 104))(v16, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v14);
    v52 = sub_304488();
    (*(*(v52 - 8) + 56))(v90, 1, 1, v52);
    v53 = v72;
    sub_3044E8();
    sub_3044B8();
    (*(v73 + 8))(v53, v74);
    (*(v51 + 8))(v16, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_CAF98(0, v29[2] + 1, 1, v29);
    }

    v55 = v29[2];
    v54 = v29[3];
    v32 = v88;
    if (v55 >= v54 >> 1)
    {
      v29 = sub_CAF98(v54 > 1, v55 + 1, 1, v29);
    }

    v29[2] = v55 + 1;
    (*(v50 + 32))(v29 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v55, v81, v30);
  }

  v56 = OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_itemIsDeletable;
  swift_beginAccess();
  if (*(v31 + v56) == 1)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = v89;
    (*(v89 + 104))(v16, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v14);
    v58 = sub_304488();
    (*(*(v58 - 8) + 56))(v90, 1, 1, v58);

    v59 = v75;
    sub_304438();
    sub_304518();

    (*(v76 + 8))(v59, v77);
    (*(v57 + 8))(v16, v14);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_CAF98(0, v29[2] + 1, 1, v29);
    }

    v61 = v29[2];
    v60 = v29[3];
    v1 = v84;
    if (v61 >= v60 >> 1)
    {
      v29 = sub_CAF98(v60 > 1, v61 + 1, 1, v29);
    }

    v29[2] = v61 + 1;
    (*(v50 + 32))(v29 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v61, v82);
  }

  v62 = OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_shouldDisplayMultiSelectUI;
  swift_beginAccess();
  if (*(v31 + v62) == 1)
  {
    v63 = v89;
    (*(v89 + 104))(v16, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v14);
    v64 = sub_304488();
    (*(*(v64 - 8) + 56))(v90, 1, 1, v64);
    v65 = v78;
    sub_304498();
    sub_304408();
    (*(v32 + 8))(v65, v1);
    (*(v63 + 8))(v16, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_CAF98(0, v29[2] + 1, 1, v29);
    }

    v67 = v29[2];
    v66 = v29[3];
    if (v67 >= v66 >> 1)
    {
      v29 = sub_CAF98(v66 > 1, v67 + 1, 1, v29);
    }

    v29[2] = v67 + 1;
    (*(v50 + 32))(v29 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v67, v83);
  }

  return sub_30CB78();
}

void sub_12C928()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_deletionUITriggered);
      v4 = v2;
      swift_beginAccess();
      v5 = *v3;

      v5(v1);
    }

    else
    {
    }
  }
}

uint64_t sub_12CA60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3046C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_304618();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 _bridgedConfigurationState];
  sub_3045F8();

  LOBYTE(v15) = sub_304608();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    sub_304698();
  }

  else
  {
    sub_3046B8();
    v19[3] = v10;
    v19[4] = &protocol witness table for UICellConfigurationState;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v19);
    (*(v11 + 16))(boxed_opaque_existential_0Tm, a2, v10);
    sub_3046A8();
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return (*(v7 + 56))(a3, 0, 1, v6);
}

id sub_12CE58(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_objectGraph] = 0;
  sub_304808();
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_presentationStyle;
  v4[v10] = sub_30AFB8();
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_itemKind] = 75;
  v11 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_accessoryText];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_chevronShowing] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_itemIsDeletable] = 0;
  v12 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_deletionUITriggered];
  *v12 = UINavigationBar.overrideBackButtonStyle.setter;
  v12[1] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_shouldDisplayMultiSelectUI] = 0;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id sub_12CF8C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_objectGraph] = 0;
  sub_304808();
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_presentationStyle;
  v1[v4] = sub_30AFB8();
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_itemKind] = 75;
  v5 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_accessoryText];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_chevronShowing] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_itemIsDeletable] = 0;
  v6 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_deletionUITriggered];
  *v6 = UINavigationBar.overrideBackButtonStyle.setter;
  v6[1] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_shouldDisplayMultiSelectUI] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t type metadata accessor for LinkListCell()
{
  result = qword_404708;
  if (!qword_404708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_12D1B0()
{
  result = sub_304838();
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

uint64_t sub_12D288()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_itemIsDeletable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_12D2D8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_12DEAC;
}

uint64_t sub_12D33C()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_deletionUITriggered);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_12D394(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_deletionUITriggered);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_12D454()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_shouldDisplayMultiSelectUI;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_12D4A4(char a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(v4 + v6) = a1;
  return sub_12BB80();
}

uint64_t (*sub_12D4F4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_12D558;
}

uint64_t sub_12D55C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_12BB80();
  }

  return result;
}

void sub_12D590(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v27 = sub_30AFC8();
  v28 = a1;
  v13 = *(v27 + 28);
  sub_101CE4(a1 + v13, v12);
  v14 = sub_3031C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14);
  sub_125E18(v12);
  if (v17 == 1)
  {
    goto LABEL_4;
  }

  sub_101CE4(v28 + v13, v6);
  if (v16(v6, 1, v14) != 1)
  {
    sub_307B78();
    sub_6D85C(v6, v9);
    (*(v15 + 56))(v9, 0, 1, v14);
    sub_307B68();
    sub_125E18(v9);
LABEL_4:
    v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_config;
    swift_beginAccess();
    sub_304828();
    swift_endAccess();
    v19 = sub_304838();
    v30 = v19;
    v31 = &protocol witness table for UIListContentConfiguration;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v29);
    v21 = *(*(v19 - 8) + 16);
    v21(boxed_opaque_existential_0Tm, v2 + v18, v19);
    sub_30CA78();
    v22 = v28;
    swift_beginAccess();

    sub_304818();
    swift_endAccess();
    v30 = v19;
    v31 = &protocol witness table for UIListContentConfiguration;
    v23 = __swift_allocate_boxed_opaque_existential_0Tm(v29);
    v21(v23, v2 + v18, v19);
    sub_30CA78();
    v24 = *(v22 + 40);
    v25 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_accessoryText);
    *v25 = *(v22 + 32);
    v25[1] = v24;

    sub_12BB80();
    *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_presentationStyle) = *(v22 + *(v27 + 32));
    sub_12B3D0();
    sub_12B748();
    return;
  }

  __break(1u);
}

void sub_12D8CC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_objectGraph) = a1;

  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_itemKind) = sub_307038();

  sub_12B85C();
}

uint64_t sub_12D938(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_12DE64(&qword_404740, type metadata accessor for LinkListCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v3);
}

uint64_t sub_12DA18()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_3072C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_307038();
  v8 = sub_3070F8();
  v10 = v9;
  if (v8 == sub_3070F8() && v10 == v11)
  {
  }

  else
  {
    v12 = sub_30D728();

    if ((v12 & 1) == 0)
    {
      (*(v5 + 104))(v7, enum case for ShelfCellListSeparatorMode.Placement.default(_:), v4);
      v14 = &enum case for ShelfCellListSeparatorMode.Layout.default(_:);
      goto LABEL_7;
    }
  }

  *v7 = 256;
  (*(v5 + 104))(v7, enum case for ShelfCellListSeparatorMode.Placement.custom(_:), v4);
  sub_304938();
  *v3 = v13;
  v3[1] = 0;
  v14 = &enum case for ShelfCellListSeparatorMode.Layout.custom(_:);
LABEL_7:
  (*(v1 + 104))(v3, *v14, v0);
  return sub_3072D8();
}

uint64_t sub_12DE24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12DE64(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_12DEB0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA8);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews11LoadingCell_spinner;
  *&v4[v13] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11LoadingCell_objectGraph] = 0;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews11LoadingCell_spinner;
  v16 = *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews11LoadingCell_spinner];
  v17 = v14;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [v17 contentView];
  [v18 addSubview:*&v14[v15]];

  v38 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_31D470;
  v20 = [*&v14[v15] topAnchor];
  v21 = [v17 contentView];
  v22 = [v21 topAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:40.0];
  sub_30C888();
  isa = sub_30CA28(v40).super.isa;

  *(v19 + 32) = isa;
  v25 = [*&v14[v15] bottomAnchor];
  v26 = [v17 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-40.0];
  sub_30C888();
  v29 = sub_30CA28(v41).super.isa;

  *(v19 + 40) = v29;
  v30 = [*&v14[v15] centerXAnchor];
  v31 = [v17 contentView];
  v32 = [v31 centerXAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  *(v19 + 48) = v33;
  sub_91304();
  v34 = sub_30C358().super.isa;

  [v38 activateConstraints:v34];

  [*&v14[v15] startAnimating];
  sub_304698();
  v35 = sub_3046C8();
  (*(*(v35 - 8) + 56))(v12, 0, 1, v35);
  sub_30CA88();

  return v17;
}

uint64_t sub_12E460()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ShelfCellListSeparatorMode.Placement.never(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v0);
  return sub_3072D8();
}

uint64_t sub_12E5E8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11LoadingCell_objectGraph) = a1;
}

uint64_t sub_12E630(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_12E8D0(&qword_4047B0, v3, type metadata accessor for LoadingCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_12E8D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_12E918()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.6 green:0.6 blue:0.6 alpha:0.1];
  qword_4047B8 = result;
  return result;
}

id sub_12E968()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_textStack];
  sub_30C6E8();
  [v2 setLayoutMargins:?];

  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_titleLabel];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_style;
  v5 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_style];
  sub_124C4(0, &qword_408100);
  v6 = v3;
  if (v5)
  {
    v7 = sub_30CD98();
  }

  else
  {
    v7 = sub_30CDB8();
  }

  v8 = v7;
  [v6 setFont:v7];

  LOBYTE(v8) = v1[v4];
  v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_subtitleLabel];
  if (v8)
  {
    v10 = sub_30CCB8();
  }

  else
  {
    v10 = sub_30CCC8();
  }

  v11 = v10;
  [v9 setFont:v10];

  v12 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_background];
  if (v1[v4])
  {
    v13 = 12.0;
  }

  else
  {
    v13 = 10.0;
  }

  v14 = *(&stru_68.reserved2 + (swift_isaMask & *v12));
  v15 = v12;
  v14(0, v13);

  v16 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_chinBackground];
  v17 = [v1 contentView];
  [v17 bounds];
  v19 = v18;

  if (v1[v4])
  {
    v20 = 68.0;
  }

  else
  {
    v20 = 86.0;
  }

  v21 = [v1 contentView];
  [v21 bounds];
  v23 = v22;

  if (v1[v4])
  {
    v24 = 68.0;
  }

  else
  {
    v24 = 86.0;
  }

  [v16 setFrame:{0.0, v19 - v20, v23, v24}];

  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_shadowView;
  if (v1[v4])
  {
    v26 = 12.0;
  }

  else
  {
    v26 = 10.0;
  }

  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_shadowView] _setContinuousCornerRadius:v26];
  [v1 sendSubviewToBack:*&v1[v25]];

  return [v1 setNeedsLayout];
}

char *sub_12EC10(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_objectGraph] = 0;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_background;
  type metadata accessor for RoundedCornerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_3FAB28 != -1)
  {
    swift_once();
  }

  v12 = qword_4047B8;
  v13 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_4047B8;
  v14 = v12;

  sub_2BE604();
  *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0x3FF0000000000000;
  sub_2BE604();
  *&v5[v10] = v11;
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_shadowView;
  type metadata accessor for ShadowView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_3FAF20 != -1)
  {
    swift_once();
  }

  v17 = qword_42AC68;
  v18 = qword_42AC80;
  v19 = &v16[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  v20 = *&v16[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  v21 = *algn_42AC70;
  *v19 = qword_42AC68;
  *(v19 + 8) = v21;
  *(v19 + 3) = v18;
  v22 = v17;

  sub_2BF1DC();
  *&v5[v15] = v16;
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_artworkView;
  type metadata accessor for ArtworkView();
  *&v5[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_chinBackground;
  *&v5[v24] = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_textStack;
  v26 = [objc_allocWithZone(UIStackView) init];
  [v26 setAxis:1];
  [v26 setBaselineRelativeArrangement:1];
  [v26 setSpacing:1.17549435e-38];
  [v26 setLayoutMarginsRelativeArrangement:1];
  *&v5[v25] = v26;
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_titleLabel;
  v28 = [objc_allocWithZone(UILabel) init];
  [v28 setAdjustsFontForContentSizeCategory:1];
  [v28 setTextAlignment:1];
  v29 = objc_opt_self();
  v30 = [v29 whiteColor];
  [v28 setTextColor:v30];

  *&v5[v27] = v28;
  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_subtitleLabel;
  v32 = [objc_allocWithZone(UILabel) init];
  [v32 setAdjustsFontForContentSizeCategory:1];
  [v32 setTextAlignment:1];
  v33 = [v29 whiteColor];
  [v32 setTextColor:v33];

  *&v5[v31] = v32;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_style] = 0;
  v78.receiver = v5;
  v78.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v78, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v38 = v34;
  [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v38 setPreservesSuperviewLayoutMargins:0];
  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_background;
  v40 = *&v38[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_background];
  v41 = [v38 contentView];
  [v41 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  [v40 setFrame:{v43, v45, v47, v49}];
  [*&v38[v39] setAutoresizingMask:18];
  v50 = [v38 contentView];
  [v50 addSubview:*&v38[v39]];

  [*&v38[v39] addSubview:*&v38[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_artworkView]];
  v51 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_chinBackground;
  [*&v38[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_chinBackground] setAutoresizingMask:10];
  [*&v38[v39] addSubview:*&v38[v51]];
  v52 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_textStack;
  [*&v38[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_textStack] setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = *&v38[v52];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_317F20;
  v55 = *&v38[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_titleLabel];
  *(v54 + 32) = v55;
  v56 = *&v38[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_subtitleLabel];
  *(v54 + 40) = v56;
  v57 = v53;
  v58 = v55;
  v59 = v56;
  v60._rawValue = v54;
  sub_30C688(v60);

  v61 = [v38 contentView];
  [v61 addSubview:*&v38[v52]];

  v62 = objc_opt_self();
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_31D470;
  v64 = [v38 contentView];
  v65 = [v64 leadingAnchor];

  v66 = [*&v38[v52] leadingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v63 + 32) = v67;
  v68 = [v38 contentView];

  v69 = [v68 trailingAnchor];
  v70 = [*&v38[v52] trailingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(v63 + 40) = v71;
  v72 = [*&v38[v52] centerYAnchor];
  v73 = [*&v38[v51] centerYAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v63 + 48) = v74;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v62 activateConstraints:isa];

  [v38 addSubview:*&v38[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_shadowView]];
  sub_12E968();

  return v38;
}

void sub_12F3FC()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_artworkView] setFrame:{0.0, 0.0, v3, v3}];
  v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_background];
  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_shadowView];
  [v4 bounds];
  [v5 setFrame:UIEdgeInsetsInsetRect_0(v6)];
}

unint64_t sub_12F610()
{
  result = qword_404830;
  if (!qword_404830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404830);
  }

  return result;
}

void sub_12F664(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_titleLabel;
  v8 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_titleLabel);
  v9 = sub_30C098();
  [v8 setText:v9];

  v10 = *(v2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v28 = v11;
  v29 = v12;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
  sub_120F0();
  if (sub_30D398())
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  [v13 setNumberOfLines:v14];

  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_subtitleLabel;
  v16 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_subtitleLabel);
  v17 = v16;
  if (v12)
  {
    v18 = sub_30C098();
  }

  else
  {
    v18 = 0;
  }

  [v16 setText:v18];

  v19 = *(v2 + v15);
  v28 = v11;
  v29 = v12;
  v20 = v19;
  [v20 setHidden:sub_30D398() & 1];

  v21 = sub_30AFC8();
  sub_101CE4(a1 + *(v21 + 28), v6);
  v22 = sub_3031C8();
  if ((*(*(v22 - 8) + 48))(v6, 1, v22) == 1)
  {
    sub_125E18(v6);
  }

  else
  {
    v23 = *(v6 + 7);
    v24 = v6[64];
    sub_12FCF8(v23, v6[64]);
    sub_6D924(v6);
    if (v24 != 255)
    {
      v25 = sub_303D48();
      sub_12FD20(v23, v24);
      goto LABEL_14;
    }
  }

  if (qword_3FAFE8 != -1)
  {
    swift_once();
  }

  v25 = qword_42B028;
LABEL_14:
  v26 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_chinBackground);
  v27 = sub_30D028();
  [v26 setBackgroundColor:v27];
}

uint64_t sub_12F964(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_objectGraph) = a1;
}

uint64_t sub_12F9AC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_12FD34(&qword_404858, v3, type metadata accessor for PowerSwooshCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_12FA80()
{
  v0 = sub_303DF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3030E8();
  if ((*(v1 + 88))(v3, v0) == enum case for CropCode.boundingBox(_:))
  {
    return 2;
  }

  sub_3030C8();
  v5 = sub_303118();
  (*(v1 + 8))(v3, v0);
  return v5;
}

id sub_12FCF8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_12FD0C(result, a2);
  }

  return result;
}

id sub_12FD0C(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

void sub_12FD20(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_860E0(a1, a2);
  }
}

uint64_t sub_12FD34(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_12FD9C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_objectGraph) = 0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_background;
  type metadata accessor for RoundedCornerView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_3FAB28 != -1)
  {
    swift_once();
  }

  v4 = qword_4047B8;
  v5 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_4047B8;
  v6 = v4;

  sub_2BE604();
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0x3FF0000000000000;
  sub_2BE604();
  *(v1 + v2) = v3;
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_shadowView;
  type metadata accessor for ShadowView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_3FAF20 != -1)
  {
    swift_once();
  }

  v9 = qword_42AC68;
  v10 = qword_42AC80;
  v11 = &v8[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  v12 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  v13 = *algn_42AC70;
  *v11 = qword_42AC68;
  *(v11 + 8) = v13;
  *(v11 + 3) = v10;
  v14 = v9;

  sub_2BF1DC();
  *(v1 + v7) = v8;
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v15) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_chinBackground;
  *(v1 + v16) = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_textStack;
  v18 = [objc_allocWithZone(UIStackView) init];
  [v18 setAxis:1];
  [v18 setBaselineRelativeArrangement:1];
  [v18 setSpacing:1.17549435e-38];
  [v18 setLayoutMarginsRelativeArrangement:1];
  *(v1 + v17) = v18;
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_titleLabel;
  v20 = [objc_allocWithZone(UILabel) init];
  [v20 setAdjustsFontForContentSizeCategory:1];
  [v20 setTextAlignment:1];
  v21 = objc_opt_self();
  v22 = [v21 whiteColor];
  [v20 setTextColor:v22];

  *(v1 + v19) = v20;
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_subtitleLabel;
  v24 = [objc_allocWithZone(UILabel) init];
  [v24 setAdjustsFontForContentSizeCategory:1];
  [v24 setTextAlignment:1];
  v25 = [v21 whiteColor];
  [v24 setTextColor:v25];

  *(v1 + v23) = v24;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_style) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_1301A0(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4048E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_3077F8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "setSelected:", a1 & 1, v9);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_model;
  swift_beginAccess();
  sub_13128C(v1 + v12, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1312FC(v6);
  }

  sub_131364(v6, v11);
  sub_13033C(v11);
  return sub_1313C8(v11);
}

uint64_t sub_13033C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_304838();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4048E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  sub_131170(a1, &v48 - v8);
  v10 = sub_3077F8();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_model;
  swift_beginAccess();
  sub_1311D4(v9, v2 + v11);
  swift_endAccess();
  sub_30CB88();
  v12 = sub_30C098();
  v13 = [objc_opt_self() systemImageNamed:v12];

  sub_304828();
  v14 = objc_opt_self();
  v51 = UIFontTextStyleBody;
  v15 = [v14 configurationWithTextStyle:UIFontTextStyleBody];
  v16 = sub_304798();
  sub_304778();
  v16(v54, 0);
  sub_3047A8();
  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  v19 = sub_304798();
  sub_304788();
  v19(v54, 0);
  v20 = *(a1 + 40);
  v21 = objc_allocWithZone(NSMutableAttributedString);
  v22 = sub_30C098();
  v23 = [v21 initWithString:v22];

  if (v20)
  {
    v49 = NSForegroundColorAttributeName;
    v53.receiver = v2;
    v53.super_class = ObjectType;
    v24 = objc_msgSendSuper2(&v53, "isSelected");
    v25 = &selRef_whiteColor;
    if (!v24)
    {
      v25 = &selRef_labelColor;
    }

    v26 = v4;
    v27 = [v17 *v25];
    v28 = sub_30C098();
    v29 = sub_30C098();
    v30 = [v28 rangeOfString:v29 options:385];
    v32 = v31;

    [v23 addAttribute:v49 value:v27 range:{v30, v32}];
    v4 = v26;
  }

  sub_304748();
  v33 = [objc_opt_self() preferredFontForTextStyle:v51];
  v34 = sub_304758();
  sub_304718();
  v34(v54, 0);
  v35 = [v17 secondaryLabelColor];
  v36 = sub_304758();
  sub_304728();
  v36(v54, 0);
  v37 = sub_3047C8();
  *(v38 + 8) = 0;
  v37(v54, 0);
  v39 = sub_3047C8();
  *(v40 + 24) = 0;
  v39(v54, 0);
  v41 = sub_3047C8();
  *v42 = 0x402C000000000000;
  v41(v54, 0);
  v43 = sub_3047C8();
  *(v44 + 16) = 0x402A000000000000;
  v43(v54, 0);
  [v2 directionalLayoutMargins];
  [v2 setDirectionalLayoutMargins:?];
  [v2 directionalLayoutMargins];
  [v2 setDirectionalLayoutMargins:?];
  v54[3] = v4;
  v54[4] = &protocol witness table for UIListContentConfiguration;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v54);
  v46 = v52;
  (*(v52 + 16))(boxed_opaque_existential_0Tm, v6, v4);
  sub_30CA78();
  return (*(v46 + 8))(v6, v4);
}

uint64_t type metadata accessor for SearchHintCell()
{
  result = qword_404898;
  if (!qword_404898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_130B44()
{
  sub_130BE0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_130BE0()
{
  if (!qword_4048A8)
  {
    sub_3077F8();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_4048A8);
    }
  }
}

uint64_t sub_130C3C()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 256;
  (*(v8 + 104))(v7, enum case for ShelfCellListSeparatorMode.Placement.custom(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.marginToMargin(_:), v0);
  return sub_3072D8();
}

uint64_t sub_130DCC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4048E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_objectGraph) = a1;

  v6 = sub_3077F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_model;
  swift_beginAccess();

  sub_1311D4(v5, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_130ED4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_131244(&qword_4048E8, type metadata accessor for SearchHintCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v3);
}

uint64_t sub_131170(uint64_t a1, uint64_t a2)
{
  v4 = sub_3077F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1311D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4048E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_131244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_13128C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4048E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1312FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4048E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_131364(uint64_t a1, uint64_t a2)
{
  v4 = sub_3077F8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1313C8(uint64_t a1)
{
  v2 = sub_3077F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_131424(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_style];
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_style] = a1;
  if (v4 == 3)
  {
    if (a1 == 3)
    {
      return;
    }
  }

  else if (a1 == 3 || v4 == a1)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_label];
  sub_124C4(0, &qword_408100);
  v6 = v5;
  if (v3 >= 2)
  {
    v7 = sub_30CC88();
  }

  else
  {
    v7 = sub_30CE18();
  }

  v8 = v7;
  [v6 setFont:v7];

  if (v3 >= 2)
  {
    v9 = sub_30CC88();
  }

  else
  {
    v9 = sub_30CE18();
  }

  v10 = v9;
  v11 = sub_30CDA8();

  [v11 scaledValueForValue:13.0];
  v13 = v12;

  v14 = [v2 contentView];
  [v14 setLayoutMargins:{v13, 10.0, v13, 10.0}];
}

char *sub_1315A8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_style] = 3;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_artworkView;
  v12 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_2D5EC(1, 14.0);
  v13 = qword_3FA928;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_428FC8;
  v16 = *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_428FC8;
  v17 = v15;

  sub_2BE604();
  *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0x3FE0000000000000;
  sub_2BE604();

  *&v5[v11] = v14;
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_label;
  v19 = [objc_allocWithZone(UILabel) init];
  [v19 setAdjustsFontForContentSizeCategory:1];
  [v19 setNumberOfLines:2];
  v20 = [objc_opt_self() whiteColor];
  [v19 setTextColor:v20];

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v18] = v19;
  v21 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_model;
  v22 = sub_309328();
  (*(*(v22 - 8) + 56))(&v5[v21], 1, 1, v22);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_objectGraph] = 0;
  v64.receiver = v5;
  v64.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v64, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_artworkView;
  v25 = *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_artworkView];
  v26 = v23;
  v27 = v25;
  v28 = [v26 contentView];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  [v27 setFrame:{v30, v32, v34, v36}];
  [*&v23[v24] setAutoresizingMask:18];
  v37 = [v26 contentView];
  [v37 addSubview:*&v23[v24]];

  v38 = [v26 contentView];
  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_label;
  [v38 addSubview:*&v26[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_label]];

  v40 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_31D480;
  v42 = [v26 contentView];
  v43 = [v42 layoutMarginsGuide];

  v44 = [v43 leadingAnchor];
  v45 = [*&v26[v39] leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v41 + 32) = v46;
  v47 = [v26 contentView];
  v48 = [v47 layoutMarginsGuide];

  v49 = [v48 topAnchor];
  v50 = [*&v26[v39] topAnchor];
  v51 = [v49 constraintLessThanOrEqualToAnchor:v50];

  *(v41 + 40) = v51;
  v52 = [v26 contentView];
  v53 = [v52 layoutMarginsGuide];

  v54 = [v53 trailingAnchor];
  v55 = [*&v26[v39] trailingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v41 + 48) = v56;
  v57 = [v26 contentView];
  v58 = [v57 layoutMarginsGuide];

  v59 = [v58 bottomAnchor];
  v60 = [*&v26[v39] lastBaselineAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v41 + 56) = v61;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v40 activateConstraints:isa];

  [v26 setAccessibilityIgnoresInvertColors:1];
  return v26;
}

void sub_131C30(void *a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = [a1 layoutDirection];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 traitCollection];
  v6 = [v5 layoutDirection];

  if (!a1 || v4 != v6)
  {
    sub_131DF0();
  }

  v7 = v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_style];
  if (v7 >= 2)
  {
    if (v7 != 2)
    {
      return;
    }

    sub_124C4(0, &qword_408100);
    v8 = sub_30CC88();
  }

  else
  {
    sub_124C4(0, &qword_408100);
    v8 = sub_30CE18();
  }

  v9 = v8;
  v10 = sub_30CDA8();

  [v10 scaledValueForValue:13.0];
  v12 = v11;

  v13 = [v2 contentView];
  [v13 layoutMargins];
  [v13 setLayoutMargins:v12];

  v14 = [v2 contentView];
  [v14 layoutMargins];
  [v14 setLayoutMargins:?];
}

void sub_131DF0()
{
  v1 = v0;
  v2 = sub_303758();
  v69 = *(v2 - 8);
  __chkstk_darwin(v2);
  v68 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_3041E8();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v5 - 8);
  v60 = &v52 - v6;
  v67 = sub_303398();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_3071E8();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_3030F8();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v73 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_303DF8();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v72 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = sub_3031C8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v70 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v74 = &v52 - v19;
  __chkstk_darwin(v20);
  v71 = &v52 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404980);
  __chkstk_darwin(v22 - 8);
  v24 = &v52 - v23;
  v25 = sub_309328();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_objectGraph])
  {
    v54 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_objectGraph];
    v53 = v2;
    v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_model;
    swift_beginAccess();
    sub_EB00(&v1[v29], v24, &qword_404980);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_EB68(v24, &qword_404980);
    }

    else
    {
      sub_133438(v24, v28, &type metadata accessor for SearchLandingBrick);
      sub_EB00(&v28[*(v25 + 24)], v14, &unk_402FF0);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {
        sub_133508(v28, &type metadata accessor for SearchLandingBrick);
        sub_EB68(v14, &unk_402FF0);
      }

      else
      {
        sub_133438(v14, v71, &type metadata accessor for ArtworkModel);

        v30 = [v1 traitCollection];
        [v30 layoutDirection];

        sub_309318();
        sub_3030D8();
        sub_3031A8();
        sub_3030C8();
        v52 = sub_303118();
        v31 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_artworkView];
        v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_style;
        v33 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_style];
        v34 = [v1 contentView];
        [v34 bounds];
        v36 = v35;
        v38 = v37;

        if (v33 != 3)
        {
          sub_307198();
          sub_3071C8();
          v36 = v39;
          (*(v55 + 8))(v9, v56);
        }

        v40 = v53;
        v41 = v74;
        sub_2EF18(v74, v36, v38);
        [v31 setContentMode:v52];
        sub_1334A0(v41, v70, &type metadata accessor for ArtworkModel);
        v42 = v1[v32];
        v43 = [v1 contentView];
        [v43 bounds];

        if (v42 != 3)
        {
          sub_307198();
          sub_3071C8();
          (*(v55 + 8))(v9, v56);
        }

        v44 = v61;
        v45 = v62;
        (*(v61 + 56))(v60, 1, 1, v62);
        v46 = v57;
        sub_304198();
        sub_30C778();
        sub_303A08();
        (*(v58 + 8))(v46, v59);
        v47 = [objc_opt_self() mainScreen];
        [v47 scale];

        v48 = v63;
        sub_303358();
        type metadata accessor for ArtworkView();
        sub_133568(&qword_404350, type metadata accessor for ArtworkView);
        sub_308E28();
        (*(v65 + 8))(v48, v67);
        v50 = v68;
        v49 = v69;
        (*(v69 + 104))(v68, enum case for ArtworkAspectRule.aspectFill(_:), v40);
        [v31 effectiveUserInterfaceLayoutDirection];
        [v31 setContentMode:5];

        sub_133508(v74, &type metadata accessor for ArtworkModel);
        (*(v64 + 8))(v73, v66);
        (*(v44 + 8))(v72, v45);
        sub_133508(v71, &type metadata accessor for ArtworkModel);
        sub_133508(v28, &type metadata accessor for SearchLandingBrick);
        v51 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
        swift_beginAccess();
        (*(v49 + 40))(&v31[v51], v50, v40);
        swift_endAccess();
      }
    }
  }
}

uint64_t type metadata accessor for SearchLandingCell()
{
  result = qword_404938;
  if (!qword_404938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_132C8C()
{
  sub_132D40();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_132D40()
{
  if (!qword_404948)
  {
    sub_309328();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_404948);
    }
  }
}

void sub_132D98(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404980);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  sub_1334A0(a1, &v10 - v4, &type metadata accessor for SearchLandingBrick);
  v6 = sub_309328();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_model;
  swift_beginAccess();
  sub_1333C8(v5, v1 + v7);
  swift_endAccess();
  v8 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_label);
  v9 = sub_30C098();
  [v8 setText:v9];

  sub_131DF0();
}

void sub_132EEC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_objectGraph) = a1;

  sub_307038();
  v2 = sub_3070F8();
  v4 = v3;
  if (v2 == sub_3070F8() && v4 == v5)
  {

    v6 = 0;
  }

  else
  {
    v7 = sub_30D728();

    v6 = (v7 & 1) == 0;
  }

  sub_131424(v6);
}

uint64_t sub_132FC4()
{
  sub_307038();
  sub_3070F8();
  sub_3070F8();

  return 1;
}

uint64_t sub_133030(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_133568(&qword_404988, type metadata accessor for SearchLandingCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v3);
}

uint64_t sub_1330B4()
{
  sub_307038();
  sub_3070F8();
  sub_3070F8();

  return sub_307198();
}

uint64_t sub_133124@<X0>(uint64_t a1@<X8>)
{
  v2 = &enum case for ShelfHeaderStyle.default(_:);
  if (_UISolariumEnabled() && (sub_30C968() & 1) != 0)
  {
    v2 = &enum case for ShelfHeaderStyle.subdued(_:);
  }

  v3 = *v2;
  v4 = sub_3071F8();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

id sub_1331C0()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

unint64_t sub_13320C()
{
  result = qword_404950;
  if (!qword_404950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404950);
  }

  return result;
}

uint64_t sub_1333C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_133438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1334A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_133508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_133568(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1335B0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_style) = 3;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_artworkView;
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_2D5EC(1, 14.0);
  v4 = qword_3FA928;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_428FC8;
  v7 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_428FC8;
  v8 = v6;

  sub_2BE604();
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0x3FE0000000000000;
  sub_2BE604();

  *(v1 + v2) = v5;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_label;
  v10 = [objc_allocWithZone(UILabel) init];
  [v10 setAdjustsFontForContentSizeCategory:1];
  [v10 setNumberOfLines:2];
  v11 = [objc_opt_self() whiteColor];
  [v10 setTextColor:v11];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v9) = v10;
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_model;
  v13 = sub_309328();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17SearchLandingCell_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

id sub_1337D4()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell____lazy_storage___artworkTapGesture;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell____lazy_storage___artworkTapGesture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell____lazy_storage___artworkTapGesture);
  }

  else
  {
    v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"artworkTapped"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_133858()
{
  swift_getObjectType();
  v1 = sub_30A288();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_model;
  swift_beginAccess();
  result = (*(v2 + 48))(v0 + v5, 1, v1);
  if (!result)
  {
    (*(v2 + 16))(v4, v0 + v5, v1);
    v7 = sub_30A268();
    (*(v2 + 8))(v4, v1);
    v12[3] = sub_30B038();
    v12[4] = sub_135534(&qword_3FBDA0, &type metadata accessor for Action);
    v12[0] = v7;
    v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_internalArtworkView);
    if (v8)
    {
      v9 = type metadata accessor for CachingArtworkView();
    }

    else
    {
      v9 = 0;
      v11[1] = 0;
      v11[2] = 0;
    }

    v11[0] = v8;
    v11[3] = v9;
    sub_135534(&qword_404A10, type metadata accessor for ShowEpisodeCountHeaderCell);

    v10 = v8;
    sub_3075F8();

    sub_EB68(v11, &unk_3FBB70);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

id sub_133C18(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_internalArtworkView] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_title] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_episodesCount] = 0;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_model;
  v5 = sub_30A288();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell____lazy_storage___artworkTapGesture] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_objectGraph] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t type metadata accessor for ShowEpisodeCountHeaderCell()
{
  result = qword_4049E0;
  if (!qword_4049E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_133E24()
{
  sub_133EC8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_133EC8()
{
  if (!qword_4049F0)
  {
    sub_30A288();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_4049F0);
    }
  }
}

void sub_133F20(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_objectGraph);
  if (v10)
  {
    v11 = sub_30A288();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9, a1, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
    v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_model;
    swift_beginAccess();

    sub_1346C0(v9, v2 + v13);
    swift_endAccess();
    v14 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_title);
    if (v14)
    {
      v15 = v14;
      sub_30A258();
      v16 = sub_30C098();

      [v15 setText:v16];

      v17 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_episodesCount);
      if (v17)
      {
        v18 = v17;
        sub_30A248();
        if (v19)
        {
          v20 = sub_30C098();
        }

        else
        {
          v20 = 0;
        }

        [v18 setText:v20];

        sub_30A278();
        v21 = sub_3031C8();
        (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
        sub_22B874(v6, v10);
        sub_EB68(v6, &unk_402FF0);
        v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_internalArtworkView;
        v23 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_internalArtworkView);
        if (v23)
        {
          v24 = [v23 gestureRecognizers];
          if (v24)
          {
            v25 = v24;
            sub_124C4(0, &qword_404A28);
            v26 = sub_30C368();

            v27 = sub_1337D4();
            v33 = v27;
            __chkstk_darwin(v27);
            *(&v32 - 2) = &v33;
            v28 = sub_22F62C(sub_134794, (&v32 - 4), v26);

            if (v28)
            {
              goto LABEL_12;
            }
          }

          v29 = *(v2 + v22);
          if (v29)
          {
            v30 = v29;
            v31 = sub_1337D4();
            [v30 addGestureRecognizer:v31];

LABEL_12:

            return;
          }

LABEL_17:
          __break(1u);
          return;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }
}

void sub_134310(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_objectGraph) = a1;

  sub_1347FC();
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_internalArtworkView);
  if (v3)
  {
    v4 = v3;
    sub_21C008(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_134398(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_135534(&qword_404A30, type metadata accessor for ShowEpisodeCountHeaderCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v3);
}

id sub_134434()
{
  result = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_internalArtworkView);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_13444C()
{
  v0 = sub_303DF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3030E8();
  if ((*(v1 + 88))(v3, v0) == enum case for CropCode.boundingBox(_:))
  {
    return 6;
  }

  sub_3030C8();
  v5 = sub_303118();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1346C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404A20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1347FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_internalArtworkView;
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_internalArtworkView] && *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_title] && *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_episodesCount])
  {
    return;
  }

  v3 = [objc_allocWithZone(type metadata accessor for CachingArtworkView()) init];
  v4 = *&v0[v2];
  *&v0[v2] = v3;
  v5 = v3;

  if (!v5)
  {
    __break(1u);
    goto LABEL_46;
  }

  v127 = v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
  sub_2DE78(&v127);

  v6 = *&v1[v2];
  if (!v6)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v7 = qword_3FAF28;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_42AC88;
  v10 = qword_42ACA0;
  v11 = &v8[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v12 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v13 = *algn_42AC90;
  *v11 = qword_42AC88;
  *(v11 + 8) = v13;
  *(v11 + 3) = v10;
  v14 = v9;

  sub_2D294();
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_title;
  v17 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_title];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_title] = v15;
  v18 = v15;

  if (!v18)
  {
    goto LABEL_47;
  }

  sub_124C4(0, &qword_408100);
  v19 = sub_30CC98();
  [v18 setFont:v19];

  v20 = *&v1[v16];
  if (!v20)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 labelColor];
  [v22 setTextColor:v23];

  v24 = *&v1[v16];
  if (!v24)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v24 setNumberOfLines:2];
  v25 = *&v1[v16];
  if (!v25)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v25 setAdjustsFontForContentSizeCategory:1];
  v26 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_episodesCount;
  v28 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_episodesCount];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_episodesCount] = v26;
  v29 = v26;

  if (!v29)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_124C4(0, &qword_4019C0);
  if (sub_30C978())
  {
    v30 = sub_30CD68();
  }

  else
  {
    v30 = sub_30CDB8();
  }

  v31 = v30;
  [v29 setFont:v30];

  v32 = *&v1[v27];
  if (!v32)
  {
    goto LABEL_52;
  }

  v33 = v32;
  v34 = [v21 secondaryLabelColor];
  [v33 setTextColor:v34];

  v35 = *&v1[v27];
  if (!v35)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v35 setAdjustsFontForContentSizeCategory:1];
  v36 = [v1 contentView];
  if (!*&v1[v2])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v37 = v36;
  [v36 addSubview:?];

  v38 = [v1 contentView];
  if (!*&v1[v16])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v39 = v38;
  [v38 addSubview:?];

  v40 = [v1 contentView];
  if (!*&v1[v27])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v41 = v40;
  [v40 addSubview:?];

  v42 = [objc_allocWithZone(UILayoutGuide) init];
  v43 = [v1 contentView];
  [v43 addLayoutGuide:v42];

  v44 = *&v1[v2];
  if (!v44)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = *&v1[v16];
  if (!v45)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = *&v1[v27];
  if (!v46)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_325780;
  v48 = *&v1[v2];
  if (!v48)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v49 = [v48 leadingAnchor];
  v50 = [v1 contentView];
  v51 = [v50 leadingAnchor];

  v52 = [v49 constraintEqualToAnchor:v51];
  *(v47 + 32) = v52;
  v53 = *&v1[v2];
  if (!v53)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v54 = [v53 centerYAnchor];
  v55 = [v1 contentView];
  v56 = [v55 centerYAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  *(v47 + 40) = v57;
  v58 = *&v1[v2];
  if (!v58)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v59 = [v58 topAnchor];
  v60 = [v1 contentView];
  v61 = [v60 topAnchor];

  v62 = [v59 constraintEqualToAnchor:v61 constant:14.0];
  *(v47 + 48) = v62;
  v63 = [v1 contentView];
  v64 = [v63 bottomAnchor];

  v65 = *&v1[v2];
  if (!v65)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v66 = [v65 bottomAnchor];
  v67 = [v64 constraintGreaterThanOrEqualToAnchor:v66 constant:24.0];

  *(v47 + 56) = v67;
  v68 = *&v1[v2];
  if (!v68)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v69 = [v68 heightAnchor];
  v70 = [v69 constraintEqualToConstant:90.0];

  *(v47 + 64) = v70;
  v71 = *&v1[v2];
  if (!v71)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v72 = [v71 widthAnchor];
  v73 = [v72 constraintEqualToConstant:90.0];

  *(v47 + 72) = v73;
  v74 = [v42 leadingAnchor];
  v75 = *&v1[v2];
  if (!v75)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v76 = [v75 trailingAnchor];
  v77 = sub_30C978();
  v78 = 16.0;
  if (v77)
  {
    v78 = 20.0;
  }

  v79 = [v74 constraintEqualToAnchor:v76 constant:v78];

  *(v47 + 80) = v79;
  v80 = [v42 trailingAnchor];
  v81 = [v1 contentView];
  v82 = [v81 trailingAnchor];

  v83 = [v80 constraintEqualToAnchor:v82];
  *(v47 + 88) = v83;
  v84 = [v42 topAnchor];
  v85 = [v1 contentView];
  v86 = [v85 topAnchor];

  v87 = [v84 constraintGreaterThanOrEqualToAnchor:v86];
  *(v47 + 96) = v87;
  v88 = [v1 contentView];
  v89 = [v88 bottomAnchor];

  v90 = [v42 bottomAnchor];
  v91 = [v89 constraintGreaterThanOrEqualToAnchor:v90];

  *(v47 + 104) = v91;
  v92 = [v42 centerYAnchor];
  v93 = *&v1[v2];
  if (!v93)
  {
    goto LABEL_67;
  }

  v94 = [v93 centerYAnchor];
  v95 = [v92 constraintEqualToAnchor:v94];

  *(v47 + 112) = v95;
  v96 = *&v1[v16];
  if (!v96)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v97 = [v96 leadingAnchor];
  v98 = [v42 leadingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v47 + 120) = v99;
  v100 = *&v1[v16];
  if (!v100)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v101 = [v100 trailingAnchor];
  v102 = [v42 trailingAnchor];
  v103 = [v101 constraintEqualToAnchor:v102];

  *(v47 + 128) = v103;
  v104 = *&v1[v16];
  if (!v104)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v105 = [v104 topAnchor];
  v106 = [v42 topAnchor];
  v107 = [v105 constraintEqualToAnchor:v106];

  *(v47 + 136) = v107;
  v108 = *&v1[v27];
  if (!v108)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v109 = [v108 lastBaselineAnchor];
  v110 = *&v1[v16];
  if (!v110)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v111 = [v110 lastBaselineAnchor];
  v112 = [v109 constraintEqualToAnchor:v111 constant:24.0];

  *(v47 + 144) = v112;
  v113 = *&v1[v27];
  if (!v113)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v114 = [v113 leadingAnchor];
  v115 = [v42 leadingAnchor];
  v116 = [v114 constraintEqualToAnchor:v115];

  *(v47 + 152) = v116;
  v117 = *&v1[v27];
  if (!v117)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v118 = [v117 trailingAnchor];
  v119 = [v42 trailingAnchor];
  v120 = [v118 constraintEqualToAnchor:v119];

  *(v47 + 160) = v120;
  v121 = *&v1[v27];
  if (!v121)
  {
LABEL_75:
    __break(1u);
    return;
  }

  v122 = objc_opt_self();
  v123 = [v121 bottomAnchor];
  v124 = [v42 bottomAnchor];
  v125 = [v123 constraintEqualToAnchor:v124];

  *(v47 + 168) = v125;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v122 activateConstraints:isa];
}

uint64_t sub_135534(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_13557C()
{
  sub_124C4(0, &qword_408100);
  v0 = sub_30CCF8();
  v1 = sub_30CCC8();
  v2 = sub_30CD28();

  qword_404A38 = v2;
}

uint64_t sub_135674()
{
  sub_124C4(0, &qword_408100);
  result = sub_30CD48();
  qword_404A50 = result;
  return result;
}

void sub_1356B8(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA8);
  __chkstk_darwin(v3 - 8);
  v53 = v50 - v4;
  v5 = sub_304838();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_301B18();
  __chkstk_darwin(v8 - 8);
  v9 = sub_301A78();
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  __chkstk_darwin(v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v16 = v50 - v15;
  if (qword_3FAB48 != -1)
  {
    swift_once();
  }

  v17 = [objc_opt_self() configurationWithFont:qword_404A50 scale:1];
  v18 = [v1 traitCollection];
  [v18 layoutDirection];

  v19 = v17;
  v20 = sub_30C098();
  v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

  v52 = v19;
  if (v21)
  {

    v22 = objc_opt_self();
    v50[0] = v21;
    v23 = [v22 textAttachmentWithImage:v21];
    v24 = [objc_opt_self() attributedStringWithAttachment:v23];

    sub_301AA8();
    v25 = objc_opt_self();
    v58[0] = [v25 secondaryLabelColor];
    sub_1363FC();
    sub_301A98();
    v26 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    v50[1] = v2;
    v27 = [v2 traitCollection];
    v28 = [v27 layoutDirection];

    [v26 setBaseWritingDirection:v28 == &dword_0 + 1];
    sub_124C4(0, &qword_404AB8);
    v29 = *(v51 + 24);
    v58[0] = *(v51 + 16);
    v58[1] = v29;

    v59._countAndFlagsBits = 41154;
    v59._object = 0xA200000000000000;
    sub_30C238(v59);
    sub_301B08();
    sub_301A88();
    sub_301A48();
    v30 = *(v57 + 8);
    v57 += 8;
    v30(v12, v56);
    v31 = sub_30CA18();
    v32 = v26;
    v33 = v31;
    [v33 addAttribute:NSParagraphStyleAttributeName value:v32 range:{0, objc_msgSend(v33, "length")}];

    sub_304808();
    sub_3047F8();
    if (qword_3FAB38 != -1)
    {
      swift_once();
    }

    v34 = qword_404A40;
    v35 = sub_3047C8();
    *v36 = v34;
    v35(v58, 0);
    if (qword_3FAB40 != -1)
    {
      swift_once();
    }

    v37 = qword_404A48;
    v38 = sub_3047C8();
    *(v39 + 16) = v37;
    v38(v58, 0);
    v40 = [v25 secondaryLabelColor];
    v41 = sub_304758();
    sub_304728();
    v41(v58, 0);
    v42 = v50[0];
    if (qword_3FAB30 != -1)
    {
      swift_once();
    }

    v43 = qword_404A38;
    v44 = sub_304758();
    sub_304718();
    v44(v58, 0);
    sub_304748();
    v45 = v55;
    v58[3] = v55;
    v58[4] = &protocol witness table for UIListContentConfiguration;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v58);
    v47 = v54;
    (*(v54 + 16))(boxed_opaque_existential_0Tm, v7, v45);
    sub_30CA78();
    v48 = v53;
    sub_304698();
    v49 = sub_3046C8();
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    sub_30CA88();

    (*(v47 + 8))(v7, v45);
    v30(v16, v56);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_135F98()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ShelfCellListSeparatorMode.Placement.never(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v0);
  return sub_3072D8();
}

uint64_t sub_136120(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20SubscriptionLinkCell_objectGraph) = a1;
}

uint64_t sub_136168(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_136450(&qword_404AC0, v3, type metadata accessor for SubscriptionLinkCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

unint64_t sub_1363FC()
{
  result = qword_404AB0;
  if (!qword_404AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404AB0);
  }

  return result;
}

uint64_t sub_136450(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_136498(uint64_t a1)
{
  v3 = sub_308AB8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404B50);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404B58);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_item;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_137CDC(a1, v13);
  sub_137CDC(v1 + v14, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_EB68(v13, &qword_404B50);
    }

    goto LABEL_6;
  }

  sub_137CDC(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_EB68(v13, &qword_404B58);
    return sub_1367B4();
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_137BBC(&qword_404B60, &type metadata accessor for ToggleCellModel);
  v18 = sub_30C018();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_EB68(v13, &qword_404B50);
  if ((v18 & 1) == 0)
  {
    return sub_1367B4();
  }

  return result;
}

uint64_t sub_1367B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v2 - 8);
  v37 = &v33 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404B68);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v5 = &v33 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404B70);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404B78);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v42 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404B50);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_308AB8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_defaultsSubscription;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_defaultsSubscription))
  {

    sub_304D08();
  }

  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_item;
  swift_beginAccess();
  sub_137CDC(v1 + v18, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_EB68(v13, &qword_404B50);
  }

  (*(v15 + 32))(v17, v13, v14);
  v20 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_segmentedControl);
  v35 = v14;
  sub_308AA8();
  v21 = sub_30C098();
  v33 = v8;
  v22 = v21;

  v34 = v9;
  [v20 setTitle:v22 forSegmentAtIndex:0];

  sub_308A88();
  v23 = sub_30C098();

  [v20 setTitle:v23 forSegmentAtIndex:1];

  v24 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_308A98();
  sub_301BB8();

  sub_124C4(0, &qword_3FBF20);
  v25 = sub_30C8F8();
  v43 = v25;
  v26 = sub_30C8E8();
  v27 = v37;
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  sub_EC8C(&qword_404B80, &qword_404B68);
  sub_CF4A8();
  v28 = v40;
  sub_304F28();
  sub_EB68(v27, &unk_408F30);

  (*(v38 + 8))(v5, v28);
  sub_EC8C(&qword_404B88, &qword_404B70);
  v29 = v41;
  v30 = v42;
  sub_304F48();
  (*(v39 + 8))(v7, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_EC8C(&qword_404B90, &qword_404B78);
  v31 = v33;
  v32 = sub_304F58();

  (*(v34 + 8))(v30, v31);
  (*(v15 + 8))(v17, v35);
  *(v1 + v36) = v32;
}

char *sub_136E60(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_objectGraph] = 0;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_item;
  v11 = sub_308AB8();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_defaultsSubscription] = 0;
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_segmentedControl;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_315420;
  *(v13 + 32) = 6710895;
  *(v13 + 40) = 0xE300000000000000;
  *(v13 + 88) = &type metadata for String;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = 28271;
  *(v13 + 72) = 0xE200000000000000;
  v14 = objc_allocWithZone(UISegmentedControl);
  isa = sub_30C358().super.isa;

  v16 = [v14 initWithItems:isa];

  *&v4[v12] = v16;
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_segmentedControl;
  v19 = *&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_segmentedControl];
  v20 = v17;
  [v19 addTarget:v20 action:"segmentedControlTapped" forControlEvents:0x2000];
  [*&v17[v18] setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v20 contentView];
  [v21 addSubview:*&v17[v18]];

  v22 = [*&v17[v18] leadingAnchor];
  v23 = [v20 contentView];
  v24 = [v23 leadingAnchor];

  v47 = [v22 constraintEqualToAnchor:v24];
  v25 = [*&v17[v18] trailingAnchor];
  v26 = [v20 contentView];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintEqualToAnchor:v27];
  v48 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_31FDA0;
  v30 = [*&v17[v18] topAnchor];
  v31 = [v20 contentView];
  v32 = [v31 topAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  *(v29 + 32) = v33;
  v34 = [*&v17[v18] bottomAnchor];
  v35 = [v20 contentView];
  v36 = [v35 bottomAnchor];

  v37 = [v34 constraintEqualToAnchor:v36];
  *(v29 + 40) = v37;
  *(v29 + 48) = v47;
  *(v29 + 56) = v28;
  v38 = *&v17[v18];
  v39 = v47;
  v40 = v28;
  v41 = [v38 centerXAnchor];
  v42 = [v20 contentView];

  v43 = [v42 centerXAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];

  *(v29 + 64) = v44;
  sub_124C4(0, &qword_403000);
  v45 = sub_30C358().super.isa;

  [v48 activateConstraints:v45];

  return v20;
}

uint64_t sub_1373E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404B50);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-v2];
  v4 = sub_308AB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_item;
  swift_beginAccess();
  sub_137CDC(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_EB68(v3, &qword_404B50);
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_segmentedControl) selectedSegmentIndex] == &dword_0 + 1;
  v11 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_308A98();
  v13 = v11;
  v12[15] = v10;
  swift_setAtReferenceWritableKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_137640(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_segmentedControl);

    [v4 setSelectedSegmentIndex:v1];
  }
}

uint64_t type metadata accessor for ToggleCell()
{
  result = qword_404B10;
  if (!qword_404B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_137798()
{
  sub_137844();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_137844()
{
  if (!qword_404B20)
  {
    sub_308AB8();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_404B20);
    }
  }
}

uint64_t sub_13789C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404B50);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = sub_308AB8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_item;
  swift_beginAccess();
  sub_137CDC(v1 + v11, v5);
  swift_beginAccess();
  sub_137D4C(v8, v1 + v11);
  swift_endAccess();
  sub_136498(v5);
  sub_EB68(v5, &qword_404B50);
  return sub_EB68(v8, &qword_404B50);
}

uint64_t sub_137A50(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_objectGraph) = a1;
}

uint64_t sub_137A98(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_137BBC(&qword_404B98, type metadata accessor for ToggleCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v3);
}

uint64_t sub_137BBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_137CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_137D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404B50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_137DBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_137DFC()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_objectGraph) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_item;
  v2 = sub_308AB8();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_defaultsSubscription) = 0;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews10ToggleCell_segmentedControl;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_315420;
  *(v4 + 32) = 6710895;
  *(v4 + 40) = 0xE300000000000000;
  *(v4 + 88) = &type metadata for String;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = 28271;
  *(v4 + 72) = 0xE200000000000000;
  v5 = objc_allocWithZone(UISegmentedControl);
  isa = sub_30C358().super.isa;

  v7 = [v5 initWithItems:isa];

  *(v0 + v3) = v7;
  sub_30D648();
  __break(1u);
}

uint64_t type metadata accessor for TranscriptSnippetCell()
{
  result = qword_404C30;
  if (!qword_404C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_137FC4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v31 = sub_309008();
  *(&v31 + 1) = v4;
  sub_120F0();
  v5 = sub_30C5A8();

  if (v5)
  {
    v6 = sub_305AA8();
    sub_1382D4(v2, &v31);
    v25 = v41;
    *v26 = v42[0];
    *&v26[9] = *(v42 + 9);
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v24 = v40;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v20 = v36;
    v15 = v31;
    v16 = v32;
    v27[9] = v40;
    v27[10] = v41;
    v28[0] = v42[0];
    *(v28 + 9) = *(v42 + 9);
    v27[6] = v37;
    v27[7] = v38;
    v27[8] = v39;
    v27[2] = v33;
    v27[3] = v34;
    v27[4] = v35;
    v27[5] = v36;
    v27[0] = v31;
    v27[1] = v32;
    sub_EB00(&v15, &v29, &qword_404BC0);
    sub_EB68(v27, &qword_404BC0);
    *&v14[151] = v24;
    *&v14[167] = v25;
    *&v14[183] = *v26;
    *&v14[87] = v20;
    *&v14[103] = v21;
    *&v14[119] = v22;
    *&v14[135] = v23;
    *&v14[23] = v16;
    *&v14[39] = v17;
    *&v14[55] = v18;
    *&v14[71] = v19;
    *&v14[7] = v15;
    *&v30[145] = *&v14[144];
    *&v30[161] = *&v14[160];
    *&v30[177] = *&v14[176];
    *&v30[193] = *&v26[9];
    *&v30[81] = *&v14[80];
    *&v30[97] = *&v14[96];
    *&v30[113] = *&v14[112];
    *&v30[129] = *&v14[128];
    *&v30[17] = *&v14[16];
    *&v30[33] = *&v14[32];
    *&v30[49] = *&v14[48];
    *&v30[65] = *&v14[64];
    v29 = v6;
    v30[0] = 1;
    *&v30[1] = *v14;
    UINavigationBar.overrideBackButtonStyle.setter(&v29);
    v42[1] = *&v30[176];
    v43 = *&v30[192];
    v44 = v30[208];
    v39 = *&v30[112];
    v40 = *&v30[128];
    v41 = *&v30[144];
    v42[0] = *&v30[160];
    v35 = *&v30[48];
    v36 = *&v30[64];
    v37 = *&v30[80];
    v38 = *&v30[96];
    v31 = v29;
    v32 = *v30;
    v33 = *&v30[16];
    v34 = *&v30[32];
  }

  else
  {
    sub_138AD8(&v31);
  }

  v7 = v43;
  *(a1 + 192) = v42[1];
  *(a1 + 208) = v7;
  *(a1 + 224) = v44;
  v8 = v40;
  *(a1 + 128) = v39;
  *(a1 + 144) = v8;
  v9 = v42[0];
  *(a1 + 160) = v41;
  *(a1 + 176) = v9;
  v10 = v36;
  *(a1 + 64) = v35;
  *(a1 + 80) = v10;
  v11 = v38;
  *(a1 + 96) = v37;
  *(a1 + 112) = v11;
  v12 = v32;
  *a1 = v31;
  *(a1 + 16) = v12;
  result = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1382D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE80);
  __chkstk_darwin(v3 - 8);
  v5 = v40 - v4;
  v52 = sub_309008();
  v53 = v6;
  sub_E504();
  v41 = sub_3063C8();
  v8 = v7;
  v10 = v9;
  v40[1] = v11;
  v44 = type metadata accessor for TranscriptSnippetCell();
  v12 = enum case for Font.Design.serif (_:);
  v13 = sub_306188();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v5, v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  sub_3061E8();
  sub_EB68(v5, &qword_3FEE80);
  v15 = v41;
  v16 = sub_306388();
  v42 = v17;
  v43 = v16;
  LOBYTE(v5) = v18;
  v45 = v19;

  sub_EBC8(v15, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  v76 = v5 & 1;
  v74 = 0;
  v21 = swift_getKeyPath();
  v22 = v76;
  LOBYTE(v8) = v74;
  sub_306C68();
  sub_305638();
  *(&v72[6] + 7) = *&v72[21];
  *(&v72[8] + 7) = *&v72[23];
  *(&v72[10] + 7) = *&v72[25];
  *(&v72[12] + 7) = v73;
  *(v72 + 7) = *&v72[15];
  *(&v72[2] + 7) = *&v72[17];
  *(&v72[4] + 7) = *&v72[19];
  v24 = v42;
  v23 = v43;
  *&v47 = v43;
  *(&v47 + 1) = v42;
  LOBYTE(v48) = v22;
  DWORD1(v48) = *&v75[3];
  *(&v48 + 1) = *v75;
  v25 = v45;
  *(&v48 + 1) = v45;
  *&v49 = 0x3FEB333333333333;
  *(&v49 + 1) = KeyPath;
  *&v50 = 8;
  BYTE8(v50) = v8;
  HIDWORD(v50) = *&v71[3];
  *(&v50 + 9) = *v71;
  *&v51[0] = v21;
  BYTE8(v51[0]) = 0;
  *(&v51[3] + 9) = *&v72[6];
  v27 = *&v72[4];
  v26 = *&v72[6];
  *(&v51[2] + 9) = *&v72[4];
  *(&v51[1] + 9) = *&v72[2];
  v29 = *v72;
  v28 = *&v72[2];
  *(v51 + 9) = *v72;
  *(&v51[7] + 1) = *(&v73 + 1);
  *(&v51[6] + 9) = *&v72[12];
  v31 = *&v72[10];
  v30 = *&v72[12];
  *(&v51[5] + 9) = *&v72[10];
  v32 = *&v72[8];
  *(&v51[4] + 9) = *&v72[8];
  v33 = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = v33;
  v34 = v48;
  *a2 = v47;
  *(a2 + 16) = v34;
  v35 = v51[3];
  *(a2 + 96) = v51[2];
  *(a2 + 112) = v35;
  v36 = v51[1];
  *(a2 + 64) = v51[0];
  *(a2 + 80) = v36;
  v37 = v51[7];
  *(a2 + 160) = v51[6];
  *(a2 + 176) = v37;
  v38 = v51[5];
  *(a2 + 128) = v51[4];
  *(a2 + 144) = v38;
  v68 = v32;
  v69 = v31;
  *v70 = v30;
  v46[192] = 1;
  *(a2 + 192) = 0;
  *(a2 + 200) = 1;
  v52 = v23;
  v53 = v24;
  v54 = v22;
  *v55 = *v75;
  *&v55[3] = *&v75[3];
  v56 = v25;
  v57 = 0x3FEB333333333333;
  v58 = KeyPath;
  v59 = 8;
  v60 = v8;
  *v61 = *v71;
  *&v61[3] = *&v71[3];
  v62 = v21;
  v63 = 0;
  *&v70[15] = *(&v72[13] + 7);
  v64 = v29;
  v65 = v28;
  v66 = v27;
  v67 = v26;
  sub_EB00(&v47, v46, &qword_404BC8);
  return sub_EB68(&v52, &qword_404BC8);
}

uint64_t sub_138754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = objc_opt_self();
  v7 = [v6 currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == &dword_4 + 1)
  {
    v9 = 580.0;
  }

  else
  {
    v9 = INFINITY;
  }

  v10 = type metadata accessor for TranscriptSnippetCell();
  *(a3 + *(v10 + 20)) = v9;
  v11 = *(v10 + 24);
  v12 = [v6 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v14 = sub_307048();
  (*(*(v14 - 8) + 8))(a1, v14);
  v15 = sub_306278();
  v16 = &enum case for Font.TextStyle.title3(_:);
  if (v13 != &dword_4 + 1)
  {
    v16 = &enum case for Font.TextStyle.body(_:);
  }

  (*(*(v15 - 8) + 104))(a3 + v11, *v16, v15);
  v17 = sub_309018();
  v18 = *(*(v17 - 8) + 32);

  return v18(a3, a2, v17);
}

uint64_t sub_138908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_138BD0(&qword_404BD0, type metadata accessor for TranscriptSnippetCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

double sub_138AD8(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_138B00@<X0>(uint64_t a1@<X8>)
{
  result = sub_3059B8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_138B34@<X0>(uint64_t a1@<X8>)
{
  result = sub_3059B8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_138BD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_138C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_309018();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_306278();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_138D30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_309018();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_306278();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_138E2C()
{
  result = sub_309018();
  if (v1 <= 0x3F)
  {
    result = sub_306278();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_138EBC()
{
  result = qword_404C70;
  if (!qword_404C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_404C78);
    sub_138F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404C70);
  }

  return result;
}

unint64_t sub_138F40()
{
  result = qword_404C80;
  if (!qword_404C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_404C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404C80);
  }

  return result;
}

void sub_138FF8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderEntitlementDisplay_style) == 2)
  {
    sub_2DB418();
  }

  else
  {
    if (a2)
    {
      v3 = sub_30C098();
    }

    else
    {
      v3 = 0;
    }

    [v2 setText:v3];
  }
}

uint64_t sub_139198()
{
  sub_2B83C(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_139230()
{
  result = qword_404D88;
  if (!qword_404D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404D88);
  }

  return result;
}

unint64_t sub_139288()
{
  result = qword_404D90;
  if (!qword_404D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404D90);
  }

  return result;
}

void sub_1392DC()
{
  v1 = v0;
  v2 = sub_3081D8();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
    sub_30B9A8();
    sub_30BE78();
    type metadata accessor for PlaybackStatusPresenter(0);
    swift_allocObject();
    v6 = sub_2A38D8(v4, v5, v12);

    *(v1 + 40) = v6;

    if (!*(v1 + 40))
    {
      return;
    }

    goto LABEL_4;
  }

  v8 = sub_3081F8();
  if (v9 & 1) != 0 || (v10 = v8, (sub_303D78()))
  {
    *(v1 + 40) = 0;

    sub_1394C4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
    sub_30B9A8();
    sub_30BE78();
    type metadata accessor for PlaybackStatusPresenter(0);
    swift_allocObject();
    v11 = sub_2A3A84(v10, v12);

    *(v1 + 40) = v11;

    if (*(v1 + 40))
    {

      v7 = v1;
LABEL_4:
      sub_2A2D04(v7, &off_3BB750);
    }
  }
}

void sub_1394C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderEntitlementDisplay_style) == 2)
    {
      sub_2DB418();
    }

    else
    {
      v1 = sub_30C098();
      [v2 setText:v1];
    }
  }
}

void sub_139588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_301DC8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  sub_43BD8(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2FB8C(v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = [objc_opt_self() mainBundle];
      v20._countAndFlagsBits = 0xE000000000000000;
      v22._object = 0x800000000033BE10;
      v22._countAndFlagsBits = 0xD000000000000014;
      v23.value._countAndFlagsBits = 0;
      v23.value._object = 0;
      v15.super.isa = v14;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      sub_301AB8(v22, v23, v15, v24, v20);

      if (*(v13 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderEntitlementDisplay_style) == 2)
      {
        sub_2DB418();
      }

      else
      {
        v18 = sub_30C098();

        [v13 setText:v18];
      }
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      (*(v6 + 16))(v8, v11, v5);
      sub_301CE8();
      sub_30C1D8();
      if (*(v17 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderEntitlementDisplay_style) == 2)
      {
        sub_2DB418();
      }

      else
      {
        v19 = sub_30C098();

        [v17 setText:v19];
      }
    }

    (*(v6 + 8))(v11, v5);
  }
}

void sub_1398EC(uint64_t a1)
{
  v3 = sub_303418();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_303748();
  __chkstk_darwin(v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v10 - 8);
  v12 = v21 - v11;
  sub_1DC68(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_43D24(v9, v12);
    sub_139588(v12);
    sub_2FB8C(v12);
  }

  else
  {
    sub_2B454(v9);
    if (*(v1 + 56) == 1)
    {
      v13 = *(v1 + 32);
      if (v13)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          sub_303458();
          v21[4] = sub_308238();
          v21[5] = sub_139B88();
          v21[1] = v13;
          (*(v4 + 104))(v6, enum case for EyebrowBuilder.Style.default(_:), v3);
          swift_retain_n();
          sub_303438();
          v16 = sub_3033E8();
          v18 = v17;

          if (v18)
          {
            sub_138FF8(v16, v18);
          }

          else
          {
            sub_1394C4();
          }
        }
      }
    }

    else
    {
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v20 = v19;
        [v19 setHidden:1];
      }
    }
  }
}

unint64_t sub_139B88()
{
  result = qword_404D98;
  if (!qword_404D98)
  {
    sub_308238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404D98);
  }

  return result;
}

void sub_139C30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_301E48();
  __chkstk_darwin(v5 - 8);
  v6 = sub_30C088();
  __chkstk_darwin(v6 - 8);
  if (v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21EpisodeHeaderSubtitle_style])
  {
    if (a2)
    {
      sub_E504();
      sub_30D3D8();
LABEL_6:
      v7 = sub_30C098();

      goto LABEL_8;
    }
  }

  else if (a2)
  {

    sub_30C198();

    goto LABEL_6;
  }

  v7 = 0;
LABEL_8:
  [v3 setText:v7];

  if (a2)
  {
    sub_E504();
    sub_30D3F8();

    if (*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews21EpisodeHeaderSubtitle_presenter])
    {

      sub_302698();

      if (sub_30D428())
      {
        sub_30C028();
        sub_301E28();
        sub_30C138();
        sub_30D3F8();
      }
    }

    v8 = sub_30C098();

    [v3 setAccessibilityLabel:v8];
  }
}

uint64_t sub_13A038()
{
  sub_2B83C(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_13A0D0()
{
  result = qword_404EA0;
  if (!qword_404EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404EA0);
  }

  return result;
}

uint64_t sub_13A124(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3081D8();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
    sub_30B9A8();
    sub_30BE78();
    type metadata accessor for PlaybackStatusPresenter(0);
    swift_allocObject();
    v8 = sub_2A38D8(v6, v7, v15);

    *(v2 + 40) = v8;

    if (!*(v2 + 40))
    {
      return result;
    }

    goto LABEL_4;
  }

  v11 = sub_3081F8();
  if (v12 & 1) != 0 || (v13 = v11, (sub_303D78()))
  {
    *(v2 + 40) = 0;

    return sub_13A37C(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
    sub_30B9A8();
    sub_30BE78();
    type metadata accessor for PlaybackStatusPresenter(0);
    swift_allocObject();
    v14 = sub_2A3A84(v13, v15);

    *(v2 + 40) = v14;

    if (*(v2 + 40))
    {

      v10 = v2;
LABEL_4:
      sub_2A2D04(v10, &off_3BB820);
    }
  }

  return result;
}

uint64_t sub_13A30C()
{
  v1 = *(v0 + 32);
  if (v1)
  {

    sub_303708();
    sub_13A37C(v1);
  }

  return result;
}

uint64_t sub_13A37C(uint64_t a1)
{
  v18 = a1;
  v19 = sub_303418();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3033A8();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_303408();
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong effectiveUserInterfaceLayoutDirection];
    swift_unknownObjectRelease();
  }

  v12 = [objc_opt_self() currentTraitCollection];
  [v12 horizontalSizeClass];

  sub_3033F8();
  v23 = sub_308238();
  v24 = sub_139B88();
  v22 = v18;
  v13 = v20;
  (*(v8 + 16))(v7, v10, v20);
  (*(v5 + 104))(v7, enum case for EyebrowBuilder.ListContext.episodeHeaderSubtitle(_:), v17);

  sub_302698();
  (*(v2 + 104))(v4, enum case for EyebrowBuilder.Style.default(_:), v19);
  sub_303458();
  swift_allocObject();
  sub_303448();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = sub_303428();
    sub_139C30(v14, v15);
    swift_unknownObjectRelease();
  }

  return (*(v8 + 8))(v10, v13);
}

void *sub_13A6E8(uint64_t a1)
{
  v2 = v1;
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = a1;
  sub_3026B8();

  sub_30B8E8();
  v2[7] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E20);
  sub_30B8E8();
  sub_12658(&v5, (v2 + 8));
  return v2;
}

uint64_t sub_13A7BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE80);
  __chkstk_darwin(v0 - 8);
  v2 = v15 - v1;
  v3 = sub_306928();
  v4 = sub_306188();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_3061D8();
  sub_13AA2C(v2);
  v5 = sub_306178();

  KeyPath = swift_getKeyPath();
  v7 = sub_305E98();
  sub_303A88();
  v8 = sub_3032F8();
  v10 = v9;
  if (v8 == sub_3032F8() && v10 == v11)
  {

    v12 = 1.0;
  }

  else
  {
    v13 = sub_30D728();

    v12 = 0.0;
    if (v13)
    {
      v12 = 1.0;
    }
  }

  v15[1] = v3;
  v15[2] = KeyPath;
  v15[3] = v5;
  v16 = v7;
  v17 = v12;
  sub_305B28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_404EA8);
  sub_13AA9C();
  sub_3066A8();
}

uint64_t sub_13AA2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_13AA9C()
{
  result = qword_404EB0;
  if (!qword_404EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_404EA8);
    sub_13AB28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404EB0);
  }

  return result;
}

unint64_t sub_13AB28()
{
  result = qword_404EB8;
  if (!qword_404EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_404EC0);
    sub_37EB8();
    sub_EC8C(&qword_401E68, &qword_401E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404EB8);
  }

  return result;
}

unint64_t sub_13ABE4()
{
  result = qword_404EC8;
  if (!qword_404EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_404ED0);
    sub_13AA9C();
    sub_13AC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404EC8);
  }

  return result;
}

unint64_t sub_13AC70()
{
  result = qword_3FC7C8;
  if (!qword_3FC7C8)
  {
    sub_306068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC7C8);
  }

  return result;
}

char *sub_13ACC8(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for CachingArtworkView()) init];
  v3 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + 16);
  v4 = v2;
  sub_2D5EC(0, v3);
  if (qword_3FAF40 != -1)
  {
    swift_once();
  }

  v5 = qword_42ACE8;
  v6 = qword_42AD00;
  v7 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v8 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v9 = *algn_42ACF0;
  *v7 = qword_42ACE8;
  *(v7 + 8) = v9;
  *(v7 + 3) = v6;
  v10 = v5;

  sub_2D294();
  v11 = sub_2FD3C(*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView], 0.4, 32.0, 2.0, 0.9);
  sub_2D178(v11);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v4;
}

char *sub_13AE00()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___textContentView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___textContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___textContentView);
  }

  else
  {
    memcpy(__dst, (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style), sizeof(__dst));
    memcpy(v11, (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style), sizeof(v11));
    v4 = objc_allocWithZone(type metadata accessor for HorizontalShowHeaderTextContentView());
    sub_13D120(__dst, &v10);
    v5 = v0;
    v6 = sub_13FF64(v11);
    *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_delegate + 8] = &off_3BB8E0;
    swift_unknownObjectWeakAssign();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_13AEE8()
{
  v1 = sub_30BB28();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___upsellBannerView;
  v6 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___upsellBannerView);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___upsellBannerView);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + 376);
    v9 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + 384);
    v10 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + 392);
    v11 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + 400);
    v12 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + 408);
    v13 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + 416);
    v14 = objc_allocWithZone(type metadata accessor for UpsellBannerView());
    v15 = v0;
    v16 = sub_2E423C(0, v12, v13, 0, v8, v9, v10, v11);
    v16[qword_40E008] = 0;
    memset(v21, 0, sizeof(v21));
    memset(v20, 0, sizeof(v20));
    sub_30BAB8();
    sub_EB68(v20, &unk_3FBB70);
    sub_EB68(v21, &unk_3FBB70);
    sub_30CED8();
    (*(v2 + 8))(v4, v1);
    v17 = *(v15 + v5);
    *(v15 + v5) = v16;
    v7 = v16;

    v6 = 0;
  }

  v18 = v6;
  return v7;
}

char *sub_13B0D4()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___entitlementBadgeView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___entitlementBadgeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___entitlementBadgeView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + 424);
    v5 = objc_allocWithZone(type metadata accessor for EntitlementBadgeView());
    v6 = v4;
    v7 = v0;
    v8 = sub_157ED0(v6);
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_13B160(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_13B1C4(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_30C968();

  v4 = sub_13B160(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView, sub_13ACC8);
  v5 = [v4 bottomAnchor];

  v6 = &selRef_contentView;
  if ((v3 & 1) == 0)
  {
    v6 = &selRef_layoutMarginsGuide;
  }

  v7 = [a1 *v6];
  v8 = [v7 bottomAnchor];

  v9 = [v5 constraintEqualToAnchor:v8];
  return v9;
}

id sub_13B2D0(uint64_t *a1, SEL *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
  }

  else
  {
    v9 = [*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_verticalStackView] *a2];
    v10 = [v3 contentView];
    v11 = [v10 *a2];

    v12 = [v9 *a3];
    v13 = *&v3[v4];
    *&v3[v4] = v12;
    v6 = v12;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

char *sub_13B3B4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_objectGraph] = 0;
  sub_13E390(&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style]);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView] = 0;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_verticalStackView;
  v11 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setAxis:1];
  [v11 setAlignment:1];
  v12 = v11;
  v13 = [v12 layer];
  [v13 setAllowsGroupBlending:0];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v10] = v12;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___textContentView] = 0;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_verticalSpacerView;
  v15 = [objc_allocWithZone(UIView) init];
  v16 = [v15 heightAnchor];
  v17 = [v16 constraintGreaterThanOrEqualToConstant:8.0];

  [v17 setActive:1];
  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___upsellBannerView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___entitlementBadgeView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkViewBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopGreaterThanOrEqualToConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTrailingConstraint] = 0;
  v91.receiver = v4;
  v91.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v91, "initWithFrame:", a1, a2, a3, a4);
  v19 = sub_13B160(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView, sub_13ACC8);
  v94._object = 0x800000000033C270;
  v94._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v94);
  v95._countAndFlagsBits = 46;
  v95._object = 0xE100000000000000;
  sub_30C238(v95);
  sub_30D638();
  v20 = sub_30C098();

  [v19 setAccessibilityIdentifier:v20];

  v21 = sub_13AEE8();
  v96._object = 0x800000000033C270;
  v96._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v96);
  v97._countAndFlagsBits = 46;
  v97._object = 0xE100000000000000;
  sub_30C238(v97);
  sub_30D638();
  v22 = sub_30C098();

  [v21 setAccessibilityIdentifier:v22];

  [v18 setPreservesSuperviewLayoutMargins:1];
  v23 = [v18 contentView];
  [v23 setPreservesSuperviewLayoutMargins:1];

  v24 = [v18 contentView];
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView;
  [v24 addSubview:*&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView]];

  v26 = [v18 contentView];
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_verticalStackView;
  [v26 addSubview:*&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_verticalStackView]];

  v28 = [v18 contentView];
  v29 = sub_13B0D4();
  [v28 addSubview:v29];

  v30 = *&v18[v27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_31D470;
  v32 = v30;
  *(v31 + 32) = sub_13AE00();
  v33 = *&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_verticalSpacerView];
  *(v31 + 40) = v33;
  v89 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___upsellBannerView;
  v34 = *&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___upsellBannerView];
  *(v31 + 48) = v34;
  v35 = v33;
  v36 = v34;
  v37._rawValue = v31;
  sub_30C688(v37);

  v90 = objc_opt_self();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_3264D0;
  v39 = [*&v18[v25] topAnchor];
  v40 = [v18 contentView];
  v41 = [v40 topAnchor];

  v42 = &v18[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style];
  v43 = [v39 constraintEqualToAnchor:v41 constant:*&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + 32]];

  *(v38 + 32) = v43;
  v44 = [*&v18[v25] leadingAnchor];
  v45 = [v18 contentView];
  v46 = [v45 layoutMarginsGuide];

  v47 = [v46 leadingAnchor];
  v48 = [v44 constraintEqualToAnchor:v47];

  *(v38 + 40) = v48;
  v49 = [*&v18[v25] widthAnchor];
  v50 = [v49 constraintEqualToConstant:*v42];

  *(v38 + 48) = v50;
  v51 = [*&v18[v25] heightAnchor];
  v52 = [v51 constraintEqualToConstant:v42[1]];

  *(v38 + 56) = v52;
  v53 = sub_13B160(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkViewBottomConstraint, sub_13B1C4);
  sub_30C888();
  isa = sub_30CA28(v92).super.isa;

  *(v38 + 64) = isa;
  v55 = [*&v18[v27] leadingAnchor];
  v56 = [*&v18[v25] trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:v42[3]];

  *(v38 + 72) = v57;
  *(v38 + 80) = sub_13B2D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTrailingConstraint, &selRef_trailingAnchor, &selRef_constraintLessThanOrEqualToAnchor_);
  v58 = v27;
  v59 = [*&v18[v27] centerYAnchor];
  v60 = [*&v18[v25] centerYAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  sub_30C888();
  v62 = sub_30CA28(v93).super.isa;

  *(v38 + 88) = v62;
  v63 = [*&v18[v58] widthAnchor];
  v64 = [v63 constraintLessThanOrEqualToConstant:v42[39]];

  *(v38 + 96) = v64;
  v65 = [*&v18[v58] bottomAnchor];
  v66 = [*&v18[v25] bottomAnchor];
  v67 = [v65 constraintLessThanOrEqualToAnchor:v66];

  *(v38 + 104) = v67;
  v68 = [*&v18[v89] trailingAnchor];
  v69 = [*&v18[v58] trailingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v38 + 112) = v70;
  v71 = [*&v18[v89] bottomAnchor];
  v72 = [*&v18[v25] bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  *(v38 + 120) = v73;
  v74 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___entitlementBadgeView;
  v75 = [*&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___entitlementBadgeView] leadingAnchor];
  v76 = [v18 contentView];
  v77 = [v76 leadingAnchor];

  v78 = [v75 constraintEqualToAnchor:v77];
  *(v38 + 128) = v78;
  v79 = [*&v18[v74] trailingAnchor];
  v80 = [v18 contentView];
  v81 = [v80 trailingAnchor];

  v82 = [v79 constraintEqualToAnchor:v81];
  *(v38 + 136) = v82;
  v83 = [*&v18[v74] bottomAnchor];
  v84 = [v18 contentView];

  v85 = [v84 bottomAnchor];
  v86 = [v83 constraintEqualToAnchor:v85];

  *(v38 + 144) = v86;
  sub_124C4(0, &qword_403000);
  v87 = sub_30C358().super.isa;

  [v90 activateConstraints:v87];

  return v18;
}