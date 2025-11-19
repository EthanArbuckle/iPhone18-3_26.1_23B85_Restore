uint64_t sub_AAF1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PeopleListPersonRow(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + *(type metadata accessor for PeopleListPersonRow.State(0) + 32) + v4);
  v6 = *v5;
  v7 = v5[1];
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v5;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_ACD70(v6, v7);
}

void *sub_AAFB0(uint64_t a1)
{
  v2 = sub_B6700();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3198, &qword_C4F00);
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v33);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v32 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3448, &qword_C5358);
  v12 = *(v6 + 72);
  v13 = &qword_F3198;
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v32 = swift_allocObject();
  v15 = v32 + v14;
  v16 = type metadata accessor for PeopleListPersonRow.State(0);
  sub_A310(a1 + *(v16 + 44), v15, &qword_F3198, &qword_C4F00);
  v17 = a1 + *(v16 + 48);
  v38 = v12;
  v40 = v15;
  sub_A310(v17, v15 + v12, &qword_F3198, &qword_C4F00);
  v18 = sub_B7A60();
  v19 = &qword_C4F00;
  v20 = 0;
  v21 = 0;
  v36 = (v3 + 48);
  v37 = v18;
  v34 = v3;
  v35 = (v3 + 32);
  v22 = &_swiftEmptyArrayStorage;
  do
  {
    v23 = v2;
    v24 = v20;
    v25 = v13;
    v26 = v19;
    sub_A310(v40 + v21 * v38, v41, v13, v19);
    sub_B7A50();
    sub_B7A00();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_AB00(v41, v10, v13, v26);

    if ((*v36)(v10, 1, v2) == 1)
    {
      sub_A194(v10, v13, v26);
      v19 = v26;
    }

    else
    {
      v27 = *v35;
      (*v35)(v39, v10, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_536AC(0, v22[2] + 1, 1, v22);
      }

      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        v22 = sub_536AC(v28 > 1, v29 + 1, 1, v22);
      }

      v22[2] = v29 + 1;
      v30 = v22 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29;
      v2 = v23;
      v27(v30, v39, v23);
      v13 = v25;
      v19 = v26;
    }

    v20 = 1;
    v21 = 1;
  }

  while ((v24 & 1) == 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v22;
}

void *sub_AB3BC()
{
  v1 = *(type metadata accessor for PeopleListPersonRow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_AAFB0(v2);
}

void *PeopleListPersonRow.State.contact.getter()
{
  v1 = *(v0 + *(type metadata accessor for PeopleListPersonRow.State(0) + 40));
  v2 = v1;
  return v1;
}

uint64_t sub_AB450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *(a5 + 32);
  v23 = *(a5 + 40);
  sub_97E8();

  v5 = sub_B7200();
  v7 = v6;
  v21 = v8;
  sub_B6E60();
  v9 = sub_B71F0();
  v11 = v10;
  v13 = v12;
  v14 = sub_B71D0();
  v16 = v15;
  v18 = v17;
  sub_9C84(v9, v11, v13 & 1);

  sub_9C84(v5, v7, v21 & 1);

  v19 = sub_B71D0();
  sub_9C84(v14, v16, v18 & 1);

  return v19;
}

uint64_t sub_AB5F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0870, &unk_C2210);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3408, &qword_C5330);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  v10 = v0[1];
  if (v10)
  {
    v15[0] = *v0;
    v15[1] = v10;
    sub_97E8();

    *v9 = sub_B7200();
    *(v9 + 1) = v11;
    v9[16] = v12 & 1;
    *(v9 + 3) = v13;
    swift_storeEnumTagMultiPayload();
    sub_A8CC(&qword_F3410, &qword_F0870, &unk_C2210);
    return sub_B6F00();
  }

  else
  {
    sub_B6A90();
    (*(v2 + 16))(v9, v5, v1);
    swift_storeEnumTagMultiPayload();
    sub_A8CC(&qword_F3410, &qword_F0870, &unk_C2210);
    sub_B6F00();
    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t PeopleListPersonRow.State.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PeopleListPersonRow.State.subtitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PeopleListPersonRow.State.detailOrProgress.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PeopleListPersonRow.State(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_ACD70(v4, v5);
}

id PeopleListPersonRow.State.sendableContact.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PeopleListPersonRow.State(0) + 40));
  *a1 = v3;

  return v3;
}

uint64_t PeopleListPersonRow.State.init(id:title:subtitle:subtitleExtra:detailOrProgress:symbol:contact:primaryControl:secondaryControl:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = a1[1];
  v16 = *a7;
  v17 = a7[1];
  *a9 = *a1;
  a9[1] = v15;
  a9[2] = a2;
  a9[3] = a3;
  a9[4] = a4;
  a9[5] = a5;
  v18 = type metadata accessor for PeopleListPersonRow.State(0);
  sub_AB00(a6, a9 + v18[7], &qword_F3190, &unk_C4EF0);
  v19 = (a9 + v18[8]);
  *v19 = v16;
  v19[1] = v17;
  sub_AB00(a8, a9 + v18[9], &qword_F2698, &qword_C38E8);
  *(a9 + v18[10]) = a10;
  sub_AB00(a11, a9 + v18[11], &qword_F3198, &qword_C4F00);
  return sub_AB00(a12, a9 + v18[12], &qword_F3198, &qword_C4F00);
}

uint64_t static PeopleListPersonRow.State.SendableContact.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_ACD84();
  return sub_B7BB0() & 1;
}

Swift::Int PeopleListPersonRow.State.SendableContact.hashValue.getter()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7BC0();
  return sub_B7EE0();
}

Swift::Int sub_ABC14()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7BC0();
  return sub_B7EE0();
}

void PeopleListPersonRow.State.DetailOrProgress.hash(into:)()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_B7EC0(0);

    sub_B7980();
  }

  else
  {
    sub_B7EC0(1uLL);
  }
}

Swift::Int PeopleListPersonRow.State.DetailOrProgress.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_B7EB0();
  if (v2)
  {
    sub_B7EC0(0);
    sub_B7980();
  }

  else
  {
    sub_B7EC0(1uLL);
  }

  return sub_B7EE0();
}

Swift::Int sub_ABD40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_B7EB0();
  if (v2)
  {
    sub_B7EC0(0);
    sub_B7980();
  }

  else
  {
    sub_B7EC0(1uLL);
  }

  return sub_B7EE0();
}

uint64_t PeopleListPersonRow.State.RelativeDateOrString.hash(into:)()
{
  v1 = sub_B62D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_AD198(v0, v9, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = v9[1];
    sub_B7EC0(1uLL);
    sub_B7980();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_B7EC0(0);
    sub_AE014(&qword_F31A8, &type metadata accessor for FindMyRelativeDate);
    sub_B7880();
    return (*(v2 + 8))(v5, v1);
  }
}

Swift::Int PeopleListPersonRow.State.RelativeDateOrString.hashValue.getter()
{
  v1 = v0;
  v2 = sub_B62D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_B7EB0();
  sub_AD198(v1, v10, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = v10[1];
    sub_B7EC0(1uLL);
    sub_B7980();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_B7EC0(0);
    sub_AE014(&qword_F31A8, &type metadata accessor for FindMyRelativeDate);
    sub_B7880();
    (*(v3 + 8))(v6, v2);
  }

  return sub_B7EE0();
}

Swift::Int sub_AC19C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_B62D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  __chkstk_darwin(v8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_B7EB0();
  sub_AD198(v4, v13, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v15 = v13[1];
    sub_B7EC0(1uLL);
    sub_B7980();
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    sub_B7EC0(0);
    sub_AE014(&qword_F31A8, &type metadata accessor for FindMyRelativeDate);
    sub_B7880();
    (*(v6 + 8))(v10, v5);
  }

  return sub_B7EE0();
}

uint64_t static PeopleListPersonRow.State.ID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_B7DD0();
  }
}

uint64_t PeopleListPersonRow.State.ID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_B7980();
}

Swift::Int PeopleListPersonRow.State.ID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_B7EB0();
  sub_B7980();
  return sub_B7EE0();
}

Swift::Int sub_AC420()
{
  v1 = *v0;
  v2 = v0[1];
  sub_B7EB0();
  sub_B7980();
  return sub_B7EE0();
}

void PeopleListPersonRow.State.hash(into:)()
{
  v1 = v0;
  v2 = sub_B6700();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  __chkstk_darwin(v2);
  v66 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3198, &qword_C4F00);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v57 - v9;
  v10 = sub_B63C0();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  __chkstk_darwin(v10);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2698, &qword_C38E8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v61 = &v57 - v15;
  v16 = sub_B62D0();
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = *(v58 + 64);
  __chkstk_darwin(v16);
  v57 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v57 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3190, &unk_C4EF0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v57 - v29;
  v31 = *v1;
  v32 = v1[1];
  sub_B7980();
  v33 = v1[2];
  v34 = v1[3];
  sub_B7980();
  v35 = v1[4];
  v36 = v1[5];
  sub_B7980();
  v37 = type metadata accessor for PeopleListPersonRow.State(0);
  sub_A310(v1 + v37[7], v30, &qword_F3190, &unk_C4EF0);
  if ((*(v20 + 48))(v30, 1, v19) == 1)
  {
    sub_B7ED0(0);
    v38 = v68;
  }

  else
  {
    sub_A9A64(v30, v26, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
    sub_B7ED0(1u);
    sub_AD198(v26, v24, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = *v24;
      v40 = v24[1];
      sub_B7EC0(1uLL);
      sub_B7980();
    }

    else
    {
      v42 = v57;
      v41 = v58;
      v43 = v59;
      (*(v58 + 32))(v57, v24, v59);
      sub_B7EC0(0);
      sub_AE014(&qword_F31A8, &type metadata accessor for FindMyRelativeDate);
      sub_B7880();
      (*(v41 + 8))(v42, v43);
    }

    v38 = v68;
    sub_ADFB8(v26);
  }

  v44 = v62;
  v45 = (v1 + v37[8]);
  v46 = v45[1];
  v47 = v67;
  if (v46 == 1)
  {
    sub_B7ED0(0);
  }

  else
  {
    v48 = *v45;
    sub_B7ED0(1u);
    if (v46)
    {
      sub_B7EC0(0);
      sub_B7980();
    }

    else
    {
      sub_B7EC0(1uLL);
    }
  }

  v49 = v61;
  sub_A310(v1 + v37[9], v61, &qword_F2698, &qword_C38E8);
  v50 = v63;
  if ((*(v44 + 48))(v49, 1, v63) == 1)
  {
    sub_B7ED0(0);
  }

  else
  {
    v51 = v60;
    (*(v44 + 32))(v60, v49, v50);
    sub_B7ED0(1u);
    sub_AE014(&qword_F31B0, &type metadata accessor for Symbol);
    sub_B7880();
    (*(v44 + 8))(v51, v50);
  }

  if (*(v1 + v37[10]))
  {
    sub_B7ED0(1u);
    sub_B7BC0();
  }

  else
  {
    sub_B7ED0(0);
  }

  v52 = v64;
  sub_A310(v1 + v37[11], v64, &qword_F3198, &qword_C4F00);
  v53 = *(v47 + 48);
  if (v53(v52, 1, v38) == 1)
  {
    sub_B7ED0(0);
  }

  else
  {
    v54 = v66;
    (*(v47 + 32))(v66, v52, v38);
    sub_B7ED0(1u);
    sub_AE014(&qword_F31B8, &type metadata accessor for GenericControl.Info);
    sub_B7880();
    (*(v47 + 8))(v54, v38);
  }

  v55 = v65;
  sub_A310(v1 + v37[12], v65, &qword_F3198, &qword_C4F00);
  if (v53(v55, 1, v38) == 1)
  {
    sub_B7ED0(0);
  }

  else
  {
    v56 = v66;
    (*(v47 + 32))(v66, v55, v38);
    sub_B7ED0(1u);
    sub_AE014(&qword_F31B8, &type metadata accessor for GenericControl.Info);
    sub_B7880();
    (*(v47 + 8))(v56, v38);
  }
}

Swift::Int PeopleListPersonRow.State.hashValue.getter()
{
  sub_B7EB0();
  PeopleListPersonRow.State.hash(into:)();
  return sub_B7EE0();
}

Swift::Int sub_ACD28()
{
  sub_B7EB0();
  PeopleListPersonRow.State.hash(into:)();
  return sub_B7EE0();
}

uint64_t sub_ACD70(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_ACD84()
{
  result = qword_F31A0;
  if (!qword_F31A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_F31A0);
  }

  return result;
}

uint64_t _s13FindMyAppCore19PeopleListPersonRowV5StateV16DetailOrProgressO2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_B7DD0();
}

uint64_t _s13FindMyAppCore19PeopleListPersonRowV5StateV20RelativeDateOrStringO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v32 = sub_B62D0();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3440, &qword_C5350);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v31 - v18;
  v20 = (&v31 + *(v17 + 56) - v18);
  sub_AD198(a1, &v31 - v18, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  sub_AD198(a2, v20, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_AD198(v19, v14, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v32;
      (*(v4 + 32))(v7, v20, v32);
      v26 = sub_B62C0();
      v28 = *(v4 + 8);
      v28(v7, v27);
      v28(v14, v27);
      sub_ADFB8(v19);
      return v26 & 1;
    }

    (*(v4 + 8))(v14, v32);
    goto LABEL_12;
  }

  sub_AD198(v19, v12, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  v22 = *v12;
  v21 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_A194(v19, &qword_F3440, &qword_C5350);
    goto LABEL_13;
  }

  if (v22 == *v20 && v21 == v20[1])
  {
    v29 = v20[1];

    goto LABEL_16;
  }

  v24 = v20[1];
  v25 = sub_B7DD0();

  if (v25)
  {
LABEL_16:
    sub_ADFB8(v19);
    v26 = 1;
    return v26 & 1;
  }

  sub_ADFB8(v19);
LABEL_13:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_AD198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s13FindMyAppCore19PeopleListPersonRowV5StateV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = sub_B6700();
  v109 = *(v4 - 8);
  v5 = *(v109 + 64);
  __chkstk_darwin(v4);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3198, &qword_C4F00);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v104 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = &v101 - v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3418, &qword_C5338);
  v13 = *(*(v108 - 8) + 64);
  v14 = __chkstk_darwin(v108);
  v105 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v107 = &v101 - v16;
  v17 = sub_B63C0();
  v114 = *(v17 - 8);
  v115 = v17;
  v18 = *(v114 + 64);
  __chkstk_darwin(v17);
  v110 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2698, &qword_C38E8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v112 = &v101 - v22;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3420, &qword_C5340);
  v23 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v113 = &v101 - v24;
  v25 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3190, &unk_C4EF0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v101 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3428, &qword_C5348);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = &v101 - v36;
  v38 = *a1;
  v39 = a1[1];
  v40 = *a2;
  v41 = a2[1];
  v116 = a2;
  if ((v38 != v40 || v39 != v41) && (sub_B7DD0() & 1) == 0 || (a1[2] != v116[2] || a1[3] != v116[3]) && (sub_B7DD0() & 1) == 0 || (a1[4] != v116[4] || a1[5] != v116[5]) && (sub_B7DD0() & 1) == 0)
  {
    return 0;
  }

  v101 = v7;
  v102 = v4;
  v103 = type metadata accessor for PeopleListPersonRow.State(0);
  v42 = *(v103 + 28);
  v43 = *(v34 + 48);
  sub_A310(a1 + v42, v37, &qword_F3190, &unk_C4EF0);
  sub_A310(v116 + v42, &v37[v43], &qword_F3190, &unk_C4EF0);
  v44 = *(v26 + 48);
  if (v44(v37, 1, v25) == 1)
  {
    if (v44(&v37[v43], 1, v25) == 1)
    {
      sub_A194(v37, &qword_F3190, &unk_C4EF0);
      goto LABEL_19;
    }

LABEL_15:
    v45 = &qword_F3428;
    v46 = &qword_C5348;
LABEL_16:
    v47 = v37;
LABEL_17:
    sub_A194(v47, v45, v46);
    return 0;
  }

  sub_A310(v37, v33, &qword_F3190, &unk_C4EF0);
  if (v44(&v37[v43], 1, v25) == 1)
  {
    sub_ADFB8(v33);
    goto LABEL_15;
  }

  sub_A9A64(&v37[v43], v29, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  MyAppCore19PeopleListPersonRowV5StateV20RelativeDateOrStringO2eeoiySbAG_AGtFZ_0 = _s13FindMyAppCore19PeopleListPersonRowV5StateV20RelativeDateOrStringO2eeoiySbAG_AGtFZ_0(v33, v29);
  sub_ADFB8(v29);
  sub_ADFB8(v33);
  sub_A194(v37, &qword_F3190, &unk_C4EF0);
  if ((MyAppCore19PeopleListPersonRowV5StateV20RelativeDateOrStringO2eeoiySbAG_AGtFZ_0 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v49 = v103;
  v50 = *(v103 + 32);
  v51 = *(a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (v116 + v50);
  v54 = *v53;
  v55 = v53[1];
  if (v52 == 1)
  {
    if (v55 == 1)
    {
      v52 = 1;
      sub_ACD70(v51, 1);
      sub_ACD70(v54, 1);
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  if (v55 == 1)
  {
LABEL_26:
    sub_ACD70(v51, v52);
    sub_ACD70(v54, v55);
    sub_20AD4(v51, v52);
    v64 = v54;
    v65 = v55;
LABEL_44:
    sub_20AD4(v64, v65);
    return 0;
  }

  if (!v52)
  {
    if (!v55)
    {
      sub_ACD70(v51, 0);
      sub_ACD70(v54, 0);
      swift_bridgeObjectRelease_n();
      v52 = 0;
      goto LABEL_22;
    }

LABEL_42:
    sub_ACD70(v51, v52);
    sub_ACD70(v54, v55);
    sub_ACD70(v51, v52);

    goto LABEL_43;
  }

  if (!v55)
  {
    goto LABEL_42;
  }

  if (v51 == v54 && v52 == v55)
  {
    sub_ACD70(v51, v52);
    sub_ACD70(v51, v52);
    sub_ACD70(v51, v52);

    goto LABEL_22;
  }

  v79 = *v53;
  v80 = v53[1];
  v81 = sub_B7DD0();
  sub_ACD70(v51, v52);
  sub_ACD70(v54, v55);
  sub_ACD70(v51, v52);

  if ((v81 & 1) == 0)
  {
LABEL_43:
    v64 = v51;
    v65 = v52;
    goto LABEL_44;
  }

LABEL_22:
  sub_20AD4(v51, v52);
  v56 = v49[9];
  v57 = *(v111 + 48);
  v58 = v113;
  sub_A310(a1 + v56, v113, &qword_F2698, &qword_C38E8);
  sub_A310(v116 + v56, v58 + v57, &qword_F2698, &qword_C38E8);
  v60 = v114;
  v59 = v115;
  v61 = *(v114 + 48);
  v62 = v61(v58, 1, v115);
  v63 = v112;
  if (v62 == 1)
  {
    if (v61(v58 + v57, 1, v59) == 1)
    {
      sub_A194(v58, &qword_F2698, &qword_C38E8);
      goto LABEL_38;
    }

LABEL_34:
    v45 = &qword_F3420;
    v46 = &qword_C5340;
    v47 = v58;
    goto LABEL_17;
  }

  sub_A310(v58, v112, &qword_F2698, &qword_C38E8);
  if (v61(v58 + v57, 1, v59) == 1)
  {
    (*(v60 + 8))(v63, v59);
    goto LABEL_34;
  }

  v66 = v58 + v57;
  v67 = v110;
  (*(v60 + 32))(v110, v66, v59);
  sub_AE014(&qword_F3438, &type metadata accessor for Symbol);
  v68 = sub_B78C0();
  v69 = *(v60 + 8);
  v69(v67, v59);
  v69(v63, v59);
  sub_A194(v58, &qword_F2698, &qword_C38E8);
  if ((v68 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  v70 = v49[10];
  v71 = *(a1 + v70);
  v72 = *(v116 + v70);
  if (!v71)
  {
    if (!v72)
    {
      goto LABEL_50;
    }

    v78 = 0;
    v71 = *(v116 + v70);
LABEL_55:
    v86 = v71;

    return 0;
  }

  if (!v72)
  {
    v78 = *(a1 + v70);
    goto LABEL_55;
  }

  sub_ACD84();
  v73 = v71;
  v74 = v72;
  v75 = v73;
  v76 = sub_B7BB0();

  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v82 = v49[11];
  v37 = v107;
  v83 = *(v108 + 48);
  sub_A310(a1 + v82, v107, &qword_F3198, &qword_C4F00);
  sub_A310(v116 + v82, &v37[v83], &qword_F3198, &qword_C4F00);
  v84 = *(v109 + 48);
  v85 = v102;
  if (v84(v37, 1, v102) == 1)
  {
    if (v84(&v37[v83], 1, v85) == 1)
    {
      sub_A194(v37, &qword_F3198, &qword_C4F00);
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v87 = v106;
  sub_A310(v37, v106, &qword_F3198, &qword_C4F00);
  if (v84(&v37[v83], 1, v85) == 1)
  {
    (*(v109 + 8))(v87, v85);
LABEL_58:
    v45 = &qword_F3418;
    v46 = &qword_C5338;
    goto LABEL_16;
  }

  v88 = v109;
  (*(v109 + 32))(v101, &v37[v83], v85);
  sub_AE014(&qword_F3430, &type metadata accessor for GenericControl.Info);
  v89 = sub_B78C0();
  v90 = v88;
  v49 = v103;
  v91 = *(v90 + 8);
  v91(v101, v85);
  v91(v87, v85);
  sub_A194(v37, &qword_F3198, &qword_C4F00);
  if ((v89 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  v92 = v49[12];
  v93 = *(v108 + 48);
  v94 = a1 + v92;
  v95 = v105;
  sub_A310(v94, v105, &qword_F3198, &qword_C4F00);
  sub_A310(v116 + v92, v95 + v93, &qword_F3198, &qword_C4F00);
  if (v84(v95, 1, v85) != 1)
  {
    v96 = v104;
    sub_A310(v95, v104, &qword_F3198, &qword_C4F00);
    if (v84((v95 + v93), 1, v85) != 1)
    {
      v97 = v109;
      v98 = v101;
      (*(v109 + 32))(v101, v95 + v93, v85);
      sub_AE014(&qword_F3430, &type metadata accessor for GenericControl.Info);
      v99 = sub_B78C0();
      v100 = *(v97 + 8);
      v100(v98, v85);
      v100(v96, v85);
      sub_A194(v95, &qword_F3198, &qword_C4F00);
      return (v99 & 1) != 0;
    }

    (*(v109 + 8))(v96, v85);
    goto LABEL_65;
  }

  if (v84((v95 + v93), 1, v85) != 1)
  {
LABEL_65:
    v45 = &qword_F3418;
    v46 = &qword_C5338;
    v47 = v95;
    goto LABEL_17;
  }

  sub_A194(v95, &qword_F3198, &qword_C4F00);
  return 1;
}

uint64_t sub_ADFB8(uint64_t a1)
{
  v2 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AE014(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_AE060()
{
  result = qword_F31C0;
  if (!qword_F31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F31C0);
  }

  return result;
}

unint64_t sub_AE0B8()
{
  result = qword_F31C8;
  if (!qword_F31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F31C8);
  }

  return result;
}

unint64_t sub_AE158()
{
  result = qword_F31D8;
  if (!qword_F31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F31D8);
  }

  return result;
}

unint64_t sub_AE1F8()
{
  result = qword_F31E8;
  if (!qword_F31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F31E8);
  }

  return result;
}

uint64_t sub_AE27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleListPersonRow.State(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_AE2FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleListPersonRow.State(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_AE36C()
{
  result = type metadata accessor for PeopleListPersonRow.State(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_AE3EC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3190, &unk_C4EF0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2698, &qword_C38E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3198, &qword_C4F00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_AE590(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3190, &unk_C4EF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2698, &qword_C38E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3198, &qword_C4F00);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_AE720()
{
  sub_AE880(319, &qword_F32E8, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  if (v0 <= 0x3F)
  {
    sub_AE8D4(319, &qword_F32F0);
    if (v1 <= 0x3F)
    {
      sub_AE880(319, &qword_F32F8, &type metadata accessor for Symbol);
      if (v2 <= 0x3F)
      {
        sub_AE8D4(319, &qword_F3300);
        if (v3 <= 0x3F)
        {
          sub_AE880(319, &unk_F3308, &type metadata accessor for GenericControl.Info);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_AE880(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_B7BE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_AE8D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_B7BE0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_AE930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_AE980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_AE9D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_AE9EC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_AEA1C()
{
  result = sub_B62D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_AEAD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_AEB34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_AEBB0()
{
  result = qword_F3468;
  if (!qword_F3468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F3460, &qword_C5370);
    sub_AE014(&qword_F3470, &type metadata accessor for RelativeDateText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3468);
  }

  return result;
}

uint64_t sub_AEC6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(type metadata accessor for PeopleListPersonRow(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_AB450(a1, a2, a3 & 1, a4, v10);
}

unint64_t sub_AED10()
{
  result = qword_F3490;
  if (!qword_F3490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F3498, &qword_C5388);
    sub_A8CC(&qword_F3410, &qword_F0870, &unk_C2210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3490);
  }

  return result;
}

unint64_t sub_AEE78()
{
  result = qword_F34A0;
  if (!qword_F34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F34A0);
  }

  return result;
}

unint64_t sub_AEED0()
{
  result = qword_F34A8;
  if (!qword_F34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F34A8);
  }

  return result;
}

unint64_t sub_AEF28()
{
  result = qword_F34B0;
  if (!qword_F34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F34B0);
  }

  return result;
}

unint64_t sub_AEF80()
{
  result = qword_F34B8;
  if (!qword_F34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F34B8);
  }

  return result;
}

uint64_t LostModeInfo.init(handle:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_B6370();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for LostModeInfo();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t type metadata accessor for LostModeInfo()
{
  result = qword_F3520;
  if (!qword_F3520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LostModeInfo.message.getter()
{
  v1 = (v0 + *(type metadata accessor for LostModeInfo() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t static LostModeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_B6310() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for LostModeInfo() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_B7DD0();
}

uint64_t LostModeInfo.hash(into:)()
{
  sub_B6370();
  sub_AF7D8(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
  sub_B7880();
  v1 = (v0 + *(type metadata accessor for LostModeInfo() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_B7980();
}

Swift::Int LostModeInfo.hashValue.getter()
{
  sub_B7EB0();
  sub_B6370();
  sub_AF7D8(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
  sub_B7880();
  v1 = (v0 + *(type metadata accessor for LostModeInfo() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_B7980();
  return sub_B7EE0();
}

uint64_t sub_AF2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_B6310() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_B7DD0();
}

Swift::Int sub_AF358(uint64_t a1)
{
  sub_B7EB0();
  sub_B6370();
  sub_AF7D8(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
  sub_B7880();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_B7980();
  return sub_B7EE0();
}

uint64_t sub_AF400(uint64_t a1, uint64_t a2)
{
  sub_B6370();
  sub_AF7D8(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
  sub_B7880();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_B7980();
}

Swift::Int sub_AF49C(uint64_t a1, uint64_t a2)
{
  sub_B7EB0();
  sub_B6370();
  sub_AF7D8(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
  sub_B7880();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_B7980();
  return sub_B7EE0();
}

uint64_t LostModeInfo.email.getter()
{
  v0 = sub_B6320();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B6330();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    return 0;
  }

  if (v5 != enum case for PersonModel.Handle.Kind.email(_:))
  {
    if (v5 != enum case for PersonModel.Handle.Kind.unknown(_:))
    {
      (*(v1 + 8))(v4, v0);
    }

    return 0;
  }

  return _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
}

uint64_t LostModeInfo.phoneNumber.getter()
{
  v0 = sub_B6320();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B6330();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    return _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
  }

  if (v5 != enum case for PersonModel.Handle.Kind.email(_:) && v5 != enum case for PersonModel.Handle.Kind.unknown(_:))
  {
    (*(v1 + 8))(v4, v0);
  }

  return 0;
}

uint64_t sub_AF7D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AF834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_B6370();
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

    return (v10 + 1);
  }
}

uint64_t sub_AF908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_B6370();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_AF9C4()
{
  result = sub_B6370();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_AFA5C()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_F35F0);
  __swift_project_value_buffer(v0, qword_F35F0);
  type metadata accessor for PeopleManagementModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.peopleManagement.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_F35F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PeopleManagementSectionView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for PeopleManagementSectionViewModel();
  result = sub_B75B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

char *PeopleManagementSectionView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v16 - v5;
  v7 = *v1;
  v8 = v1[1];
  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v9 = sub_B62F0();
  v10 = __swift_project_value_buffer(v9, qword_F35F0);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v6, v10, v9);
  (*(v11 + 56))(v6, 0, 1, v9);
  v12 = sub_B78D0();
  v14 = v13;
  sub_A194(v6, &unk_F17B0, &qword_BE7D0);
  v16[0] = v7;
  v16[1] = v8;
  result = sub_AFD90();
  *a1 = v12;
  a1[1] = v14;
  a1[2] = result;
  return result;
}

char *sub_AFD90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v202 = &v195 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3608, &qword_C5728);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v201 = &v195 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v203 = &v195 - v9;
  v10 = *v0;
  v11 = v0[1];
  *&v218[0] = *v0;
  *(&v218[0] + 1) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3610, &qword_C5730);
  sub_B75C0();
  v13 = v212;
  swift_getKeyPath();
  *&v218[0] = v13;
  v14 = sub_B362C();
  sub_B65C0();

  v15 = *(v13 + 32);

  v206 = v11;
  v207 = v14;
  v208 = v12;
  if (v15)
  {
    *&v218[0] = v10;
    *(&v218[0] + 1) = v11;
    sub_B75C0();
    v17 = v212;
    swift_getKeyPath();
    *&v218[0] = v17;
    sub_B65C0();

    v18 = *(v17 + 40);

    if (qword_EEAF0 != -1)
    {
      swift_once();
    }

    v19 = sub_B62F0();
    v20 = __swift_project_value_buffer(v19, qword_F35F0);
    v21 = *(v19 - 8);
    v22 = v203;
    (*(v21 + 16))(v203, v20, v19);
    (*(v21 + 56))(v22, 0, 1, v19);
    v23 = sub_B78D0();
    v25 = v24;

    sub_A194(v22, &unk_F17B0, &qword_BE7D0);
    v26 = swift_allocObject();
    *(v26 + 16) = v10;
    *(v26 + 24) = v11;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    strcpy(v218, "removeFavorite");
    HIBYTE(v218[0]) = -18;
    *&v218[1] = v23;
    *(&v218[1] + 1) = v25;
    LOBYTE(v218[2]) = 1;
    *(&v218[2] + 1) = 0;
    *&v218[3] = 0;
    BYTE8(v218[3]) = 0;
    v218[4] = 0uLL;
    LOBYTE(v218[5]) = 1;
    *(&v218[5] + 1) = sub_B38FC;
    v218[6] = v26;
    memset(&v218[7], 0, 160);

    sub_2C360(&v212, &v218[11]);
    v27 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_5358C((v28 > 1), v29 + 1, 1, v27);
    }

    v16 = &off_F3000;
    *(v27 + 2) = v29 + 1;
    v205 = v27;
    memcpy(&v27[272 * v29 + 32], v218, 0x110uLL);
    v11 = v206;
  }

  else
  {
    v205 = &_swiftEmptyArrayStorage;
    v16 = &off_F3000;
  }

  *&v218[0] = v10;
  *(&v218[0] + 1) = v11;
  v30 = v11;
  sub_B75C0();
  v31 = v212;
  swift_getKeyPath();
  *&v218[0] = v31;
  sub_B65C0();

  v32 = *(v31 + 32);

  v204 = v10;
  if ((v32 & 4) != 0)
  {
    if (qword_EEAF0 != -1)
    {
      swift_once();
    }

    v33 = sub_B62F0();
    v34 = __swift_project_value_buffer(v33, qword_F35F0);
    v35 = *(v33 - 8);
    v36 = v203;
    (*(v35 + 16))(v203, v34, v33);
    (*(v35 + 56))(v36, 0, 1, v33);
    v37 = sub_B78D0();
    v39 = v38;
    sub_A194(v36, &unk_F17B0, &qword_BE7D0);
    v40 = swift_allocObject();
    v41 = v206;
    *(v40 + 16) = v204;
    *(v40 + 24) = v41;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    strcpy(v218, "editLocation");
    BYTE13(v218[0]) = 0;
    HIWORD(v218[0]) = -5120;
    *&v218[1] = v37;
    *(&v218[1] + 1) = v39;
    LOBYTE(v218[2]) = 1;
    *(&v218[2] + 1) = 0;
    *&v218[3] = 0;
    BYTE8(v218[3]) = 0;
    v218[4] = 0uLL;
    LOBYTE(v218[5]) = 1;
    *(&v218[5] + 1) = sub_B38D0;
    v218[6] = v40;
    memset(&v218[7], 0, 160);

    sub_2C360(&v212, &v218[11]);
    v42 = v205;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_5358C(0, *(v42 + 2) + 1, 1, v42);
    }

    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    v205 = v42;
    v10 = v204;
    v30 = v206;
    v16 = &off_F3000;
    if (v44 >= v43 >> 1)
    {
      v205 = sub_5358C((v43 > 1), v44 + 1, 1, v205);
    }

    v45 = v205;
    *(v205 + 2) = v44 + 1;
    memcpy(&v45[272 * v44 + 32], v218, 0x110uLL);
  }

  *&v218[0] = v10;
  *(&v218[0] + 1) = v30;
  sub_B75C0();
  v46 = v212;
  swift_getKeyPath();
  *&v218[0] = v46;
  sub_B65C0();

  v47 = *(v46 + 32);

  if ((v47 & 0x80) != 0)
  {
    return v205;
  }

  v48 = v10;
  *&v218[0] = v10;
  *(&v218[0] + 1) = v30;
  sub_B75C0();
  v49 = v212;
  swift_getKeyPath();
  *&v218[0] = v49;
  sub_B65C0();

  v50 = *(v49 + 32);

  if ((v50 & 8) != 0)
  {
    p_base_props = &PeopleModule.base_props;
    v54 = v205;
    if (qword_EEAF0 != -1)
    {
      swift_once();
    }

    v55 = sub_B62F0();
    v56 = __swift_project_value_buffer(v55, qword_F35F0);
    v57 = *(v55 - 8);
    v58 = v203;
    (*(v57 + 16))(v203, v56, v55);
    (*(v57 + 56))(v58, 0, 1, v55);
    v59 = sub_B78D0();
    v61 = v60;
    sub_A194(v58, &unk_F17B0, &qword_BE7D0);
    v62 = swift_allocObject();
    v63 = v204;
    v64 = v206;
    *(v62 + 16) = v204;
    *(v62 + 24) = v64;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    *&v218[0] = 0xD000000000000016;
    *(&v218[0] + 1) = 0x80000000000BC940;
    *&v218[1] = v59;
    *(&v218[1] + 1) = v61;
    LOBYTE(v218[2]) = 1;
    *(&v218[2] + 1) = 0;
    *&v218[3] = 0;
    BYTE8(v218[3]) = 0;
    v218[4] = 0uLL;
    LOBYTE(v218[5]) = 1;
    v53 = v63;
    *(&v218[5] + 1) = sub_B38A4;
    v218[6] = v62;
    memset(&v218[7], 0, 160);

    sub_2C360(&v212, &v218[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_5358C(0, *(v54 + 2) + 1, 1, v54);
    }

    v16 = &off_F3000;
    v66 = *(v54 + 2);
    v65 = *(v54 + 3);
    v51 = v206;
    if (v66 >= v65 >> 1)
    {
      v54 = sub_5358C((v65 > 1), v66 + 1, 1, v54);
    }

    *(v54 + 2) = v66 + 1;
    memcpy(&v54[272 * v66 + 32], v218, 0x110uLL);
  }

  else
  {
    v51 = v30;
    p_base_props = (&PeopleModule + 64);
    v53 = v48;
    v54 = v205;
  }

  v67 = v53;
  *&v218[0] = v53;
  *(&v218[0] + 1) = v51;
  sub_B75C0();
  v68 = v212;
  swift_getKeyPath();
  *&v218[0] = v68;
  sub_B65C0();

  v69 = *(v68 + 32);

  if ((v69 & 0x20) != 0)
  {
    *(&v218[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v218[2] = sub_28360();
    v70 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v218);
    if (v70)
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v71 = sub_B62F0();
      v72 = __swift_project_value_buffer(v71, qword_F35F0);
      v73 = *(v71 - 8);
      v74 = v203;
      v75 = v72;
      v198 = *(v73 + 16);
      v198(v203);
      v76 = *(v73 + 56);
      v76(v74, 0, 1, v71);
      v199 = "startSharingLocation";
      v205 = sub_B78D0();
      v200 = v77;
      sub_A194(v74, &unk_F17B0, &qword_BE7D0);
      *&v218[0] = v53;
      *(&v218[0] + 1) = v206;
      v78 = v201;
      sub_B1FA0(v201);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3630, &qword_C5770);
      if ((*(*(v79 - 8) + 48))(v78, 1, v79) == 1)
      {
        sub_A194(v78, &qword_F3608, &qword_C5728);
        v209 = 0u;
        v210 = 0u;
        v211 = 0;
      }

      else
      {
        *(&v210 + 1) = v79;
        v211 = sub_A8CC(&qword_F3638, &qword_F3630, &qword_C5770);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v209);
        sub_B3834(v78, boxed_opaque_existential_0);
      }

      v93 = v203;
      (v198)(v203, v75, v71);
      v76(v93, 0, 1, v71);
      v94 = sub_B78D0();
      v96 = v95;
      sub_A194(v93, &unk_F17B0, &qword_BE7D0);
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      memset(&v218[11], 0, 96);
      *(&v218[6] + 8) = 0u;
      *(&v218[5] + 8) = 0u;
      *(&v218[8] + 8) = v210;
      *&v218[0] = 0xD000000000000014;
      *(&v218[0] + 1) = 0x80000000000BC8F0;
      *&v218[1] = v205;
      *(&v218[1] + 1) = v200;
      LOBYTE(v218[2]) = 1;
      *(&v218[2] + 1) = 0;
      *&v218[3] = 0;
      BYTE8(v218[3]) = 0;
      v218[4] = 0uLL;
      LOBYTE(v218[5]) = 1;
      *(&v218[7] + 8) = v209;
      *(&v218[9] + 1) = v211;
      *&v218[10] = v94;
      *(&v218[10] + 1) = v96;
      sub_2C360(&v212, &v218[11]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_5358C(0, *(v54 + 2) + 1, 1, v54);
      }

      v51 = v206;
      v16 = &off_F3000;
      p_base_props = &PeopleModule.base_props;
      v90 = *(v54 + 2);
      v89 = *(v54 + 3);
      v91 = v90 + 1;
      v67 = v204;
      if (v90 < v89 >> 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v80 = sub_B62F0();
      v81 = __swift_project_value_buffer(v80, qword_F35F0);
      v82 = *(v80 - 8);
      v83 = v203;
      (*(v82 + 16))(v203, v81, v80);
      (*(v82 + 56))(v83, 0, 1, v80);
      v84 = sub_B78D0();
      v86 = v85;
      sub_A194(v83, &unk_F17B0, &qword_BE7D0);
      v87 = swift_allocObject();
      v67 = v204;
      v88 = v206;
      *(v87 + 16) = v204;
      *(v87 + 24) = v88;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      *&v218[0] = 0xD000000000000014;
      *(&v218[0] + 1) = 0x80000000000BC8F0;
      *&v218[1] = v84;
      *(&v218[1] + 1) = v86;
      LOBYTE(v218[2]) = 1;
      *(&v218[2] + 1) = 0;
      *&v218[3] = 0;
      BYTE8(v218[3]) = 0;
      v218[4] = 0uLL;
      LOBYTE(v218[5]) = 1;
      *(&v218[5] + 1) = sub_B3808;
      v218[6] = v87;
      memset(&v218[7], 0, 160);

      sub_2C360(&v212, &v218[11]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_5358C(0, *(v54 + 2) + 1, 1, v54);
      }

      v16 = &off_F3000;
      v90 = *(v54 + 2);
      v89 = *(v54 + 3);
      v91 = v90 + 1;
      v51 = v206;
      if (v90 < v89 >> 1)
      {
        goto LABEL_43;
      }
    }

    v54 = sub_5358C((v89 > 1), v91, 1, v54);
LABEL_43:
    *(v54 + 2) = v91;
    memcpy(&v54[272 * v90 + 32], v218, 0x110uLL);
  }

  *&v218[0] = v67;
  *(&v218[0] + 1) = v51;
  sub_B75C0();
  v97 = v212;
  swift_getKeyPath();
  v98 = v16[206];
  *&v218[0] = v97;
  sub_B65C0();

  v99 = *(v97 + 32);

  if ((v99 & 0x40) != 0)
  {
    *(&v218[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v218[2] = sub_28360();
    v100 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v218);
    v205 = 0x80000000000BC870;
    if (v100)
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v101 = sub_B62F0();
      v102 = __swift_project_value_buffer(v101, qword_F35F0);
      v103 = *(v101 - 8);
      v104 = *(v103 + 16);
      v105 = v203;
      v104(v203, v102, v101);
      v106 = *(v103 + 56);
      v106(v105, 0, 1, v101);
      v107 = sub_B78D0();
      v200 = v108;
      v201 = v107;
      sub_A194(v105, &unk_F17B0, &qword_BE7D0);
      *(&v218[7] + 8) = 0u;
      *(&v218[8] + 8) = 0u;
      *(&v218[9] + 1) = 0;
      v104(v105, v102, v101);
      v106(v105, 0, 1, v101);
      v109 = sub_B78D0();
      v111 = v110;
      sub_A194(v105, &unk_F17B0, &qword_BE7D0);
      *&v212 = v109;
      *(&v212 + 1) = v111;
      sub_97E8();
      v112 = sub_B7200();
      v114 = v113;
      LOBYTE(v111) = v115;
      v117 = v116;
      *(&v214 + 1) = &type metadata for Text;
      *&v215 = &protocol witness table for Text;
      v118 = swift_allocObject();
      *&v213 = v118;
      *(v118 + 16) = v112;
      *(v118 + 24) = v114;
      *(v118 + 32) = v111 & 1;
      *(v118 + 40) = v117;
      *&v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3620, &qword_C5768);
      *(&v217 + 1) = sub_B36C8();
      v119 = __swift_allocate_boxed_opaque_existential_0(&v215 + 1);
      v120 = v202;
      sub_B69E0();
      v121 = sub_B6A00();
      (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
      v122 = swift_allocObject();
      v123 = v204;
      v51 = v206;
      *(v122 + 16) = v204;
      *(v122 + 24) = v51;

      sub_B7600();
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
      (*(*(v124 - 8) + 56))(v119, 0, 1, v124);
      *&v212 = 0;
      *(&v212 + 1) = 0xE000000000000000;
      *&v218[0] = 0xD000000000000013;
      *(&v218[0] + 1) = v205;
      *&v218[1] = v201;
      *(&v218[1] + 1) = v200;
      LOBYTE(v218[2]) = 1;
      *(&v218[2] + 1) = 0;
      *&v218[3] = 0;
      BYTE8(v218[3]) = 0;
      v218[4] = 0uLL;
      LOBYTE(v218[5]) = 1;
      *(&v218[6] + 8) = 0u;
      *(&v218[5] + 8) = 0u;
      memset(&v218[10], 0, 112);
      sub_2C360(&v212, &v218[11]);
      v67 = v123;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_5358C(0, *(v54 + 2) + 1, 1, v54);
      }

      v16 = &off_F3000;
      v126 = *(v54 + 2);
      v125 = *(v54 + 3);
      v127 = v126 + 1;
      v128 = v126 >= v125 >> 1;
      p_base_props = (&PeopleModule + 64);
    }

    else
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v129 = sub_B62F0();
      v130 = __swift_project_value_buffer(v129, qword_F35F0);
      v131 = *(v129 - 8);
      v132 = v203;
      (*(v131 + 16))(v203, v130, v129);
      (*(v131 + 56))(v132, 0, 1, v129);
      v133 = sub_B78D0();
      v135 = v134;
      sub_A194(v132, &unk_F17B0, &qword_BE7D0);
      v136 = swift_allocObject();
      v67 = v204;
      *(v136 + 16) = v204;
      *(v136 + 24) = v51;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      *&v218[0] = 0xD000000000000013;
      *(&v218[0] + 1) = v205;
      *&v218[1] = v133;
      *(&v218[1] + 1) = v135;
      LOBYTE(v218[2]) = 3;
      *(&v218[2] + 1) = 0;
      *&v218[3] = 0;
      BYTE8(v218[3]) = 0;
      v218[4] = 0uLL;
      LOBYTE(v218[5]) = 1;
      *(&v218[5] + 1) = sub_B37AC;
      v218[6] = v136;
      memset(&v218[7], 0, 160);

      sub_2C360(&v212, &v218[11]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_5358C(0, *(v54 + 2) + 1, 1, v54);
      }

      v16 = &off_F3000;
      v126 = *(v54 + 2);
      v125 = *(v54 + 3);
      v127 = v126 + 1;
      v128 = v126 >= v125 >> 1;
    }

    if (v128)
    {
      v54 = sub_5358C((v125 > 1), v127, 1, v54);
    }

    *(v54 + 2) = v127;
    memcpy(&v54[272 * v126 + 32], v218, 0x110uLL);
  }

  *&v218[0] = v67;
  *(&v218[0] + 1) = v51;
  sub_B75C0();
  v137 = v212;
  swift_getKeyPath();
  v138 = v16[206];
  *&v218[0] = v137;
  sub_B65C0();

  v139 = *(v137 + 32);

  if ((v139 & 0x10) != 0)
  {
    *(&v218[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v218[2] = sub_28360();
    v140 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v218);
    v205 = 0x80000000000BC810;
    if (v140)
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v141 = sub_B62F0();
      v142 = __swift_project_value_buffer(v141, qword_F35F0);
      v143 = *(v141 - 8);
      v198 = *(v143 + 16);
      v199 = v142;
      v144 = v203;
      (v198)(v203, v142, v141);
      v197 = *(v143 + 56);
      v197(v144, 0, 1, v141);
      v145 = sub_B78D0();
      v200 = v146;
      v201 = v145;
      sub_A194(v144, &unk_F17B0, &qword_BE7D0);
      *(&v218[7] + 8) = 0u;
      *(&v218[8] + 8) = 0u;
      *(&v218[9] + 1) = 0;
      v196 = "PEOPLE_MANAGEMENT_REMOVE_FRIEND";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_BDA30;
      *&v212 = v204;
      *(&v212 + 1) = v206;
      sub_B75C0();
      v148 = v209;
      swift_getKeyPath();
      *&v212 = v148;
      sub_B65C0();

      v150 = *(v148 + 16);
      v149 = *(v148 + 24);

      *(v147 + 56) = &type metadata for String;
      *(v147 + 64) = sub_305FC();
      *(v147 + 32) = v150;
      *(v147 + 40) = v149;
      (v198)(v144, v199, v141);
      v197(v144, 0, 1, v141);
      v151 = sub_B78D0();
      v153 = v152;

      sub_A194(v144, &unk_F17B0, &qword_BE7D0);
      *&v212 = v151;
      *(&v212 + 1) = v153;
      sub_97E8();
      v154 = sub_B7200();
      v156 = v155;
      LOBYTE(v150) = v157;
      v159 = v158;
      *(&v214 + 1) = &type metadata for Text;
      *&v215 = &protocol witness table for Text;
      v160 = swift_allocObject();
      *&v213 = v160;
      *(v160 + 16) = v154;
      *(v160 + 24) = v156;
      *(v160 + 32) = v150 & 1;
      *(v160 + 40) = v159;
      *&v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3620, &qword_C5768);
      *(&v217 + 1) = sub_B36C8();
      v161 = __swift_allocate_boxed_opaque_existential_0(&v215 + 1);
      v162 = v202;
      sub_B69E0();
      v163 = sub_B6A00();
      (*(*(v163 - 8) + 56))(v162, 0, 1, v163);
      v164 = swift_allocObject();
      *(v164 + 16) = v204;
      *(v164 + 24) = v206;

      sub_B7600();
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
      (*(*(v165 - 8) + 56))(v161, 0, 1, v165);
      *&v212 = 0;
      *(&v212 + 1) = 0xE000000000000000;
      v166 = 0uLL;
      memset(&v218[11], 0, 96);
      *&v218[0] = 0xD000000000000015;
      *(&v218[0] + 1) = v205;
      *&v218[1] = v201;
      *(&v218[1] + 1) = v200;
      LOBYTE(v218[2]) = 1;
      *(&v218[2] + 1) = 0;
      *&v218[3] = 0;
      BYTE8(v218[3]) = 0;
      v218[4] = 0uLL;
    }

    else
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v167 = sub_B62F0();
      v168 = __swift_project_value_buffer(v167, qword_F35F0);
      v169 = *(v167 - 8);
      v198 = *(v169 + 16);
      v199 = v168;
      v170 = v203;
      (v198)(v203, v168, v167);
      v197 = *(v169 + 56);
      v197(v170, 0, 1, v167);
      v171 = sub_B78D0();
      v200 = v172;
      v201 = v171;
      sub_A194(v170, &unk_F17B0, &qword_BE7D0);
      *(&v218[7] + 8) = 0u;
      *(&v218[8] + 8) = 0u;
      *(&v218[9] + 1) = 0;
      v196 = "PEOPLE_MANAGEMENT_REMOVE_FRIEND";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_BDA30;
      *&v212 = v204;
      *(&v212 + 1) = v206;
      sub_B75C0();
      v174 = v209;
      swift_getKeyPath();
      *&v212 = v174;
      sub_B65C0();

      v176 = *(v174 + 16);
      v175 = *(v174 + 24);

      *(v173 + 56) = &type metadata for String;
      *(v173 + 64) = sub_305FC();
      *(v173 + 32) = v176;
      *(v173 + 40) = v175;
      (v198)(v170, v199, v167);
      v197(v170, 0, 1, v167);
      v177 = sub_B78D0();
      v179 = v178;

      sub_A194(v170, &unk_F17B0, &qword_BE7D0);
      *&v212 = v177;
      *(&v212 + 1) = v179;
      sub_97E8();
      v180 = sub_B7200();
      v182 = v181;
      LOBYTE(v176) = v183;
      v185 = v184;
      *(&v214 + 1) = &type metadata for Text;
      *&v215 = &protocol witness table for Text;
      v186 = swift_allocObject();
      *&v213 = v186;
      *(v186 + 16) = v180;
      *(v186 + 24) = v182;
      *(v186 + 32) = v176 & 1;
      *(v186 + 40) = v185;
      *&v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3620, &qword_C5768);
      *(&v217 + 1) = sub_B36C8();
      v187 = __swift_allocate_boxed_opaque_existential_0(&v215 + 1);
      v188 = v202;
      sub_B69E0();
      v189 = sub_B6A00();
      (*(*(v189 - 8) + 56))(v188, 0, 1, v189);
      v190 = swift_allocObject();
      *(v190 + 16) = v204;
      *(v190 + 24) = v206;

      sub_B7600();
      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
      (*(*(v191 - 8) + 56))(v187, 0, 1, v191);
      *&v212 = 0;
      *(&v212 + 1) = 0xE000000000000000;
      v166 = 0uLL;
      memset(&v218[11], 0, 96);
      *&v218[0] = 0xD000000000000015;
      *(&v218[0] + 1) = v205;
      *&v218[1] = v201;
      *(&v218[1] + 1) = v200;
      LOBYTE(v218[2]) = 3;
      *(&v218[2] + 1) = 0;
      *&v218[3] = 0;
      BYTE8(v218[3]) = 0;
      v218[4] = 0uLL;
    }

    LOBYTE(v218[5]) = 1;
    *(&v218[6] + 8) = v166;
    *(&v218[5] + 8) = v166;
    v218[10] = 0uLL;
    sub_2C360(&v212, &v218[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_5358C(0, *(v54 + 2) + 1, 1, v54);
    }

    v193 = *(v54 + 2);
    v192 = *(v54 + 3);
    if (v193 >= v192 >> 1)
    {
      v54 = sub_5358C((v192 > 1), v193 + 1, 1, v54);
    }

    *(v54 + 2) = v193 + 1;
    memcpy(&v54[272 * v193 + 32], v218, 0x110uLL);
  }

  return v54;
}

uint64_t sub_B1E40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3610, &qword_C5730);
  sub_B75C0();
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v0 = v5 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onSetAsFavorite;
  swift_beginAccess();
  v2 = *v0;
  v1 = *(v0 + 8);

  sub_B75C0();
  swift_getKeyPath();
  sub_B65C0();

  LOBYTE(v0) = *(v4 + 40);

  v2((v0 & 1) == 0);
}

uint64_t sub_B1FA0@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3640, &qword_C57F0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v36 = &v34 - v8;
  v9 = __chkstk_darwin(v7);
  v39 = &v34 - v10;
  v11 = __chkstk_darwin(v9);
  v35 = &v34 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v34 - v14;
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v19 = *v1;
  v18 = v1[1];
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3648, &qword_C57F8);
  sub_A8CC(&qword_F3650, &qword_F3648, &qword_C57F8);
  v21 = v17;
  v34 = v17;
  sub_B7610();
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v18;

  sub_B7610();
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = v18;

  v24 = v35;
  sub_B7610();
  v25 = v3[2];
  v26 = v39;
  v25(v39, v21, v2);
  v27 = v36;
  v25(v36, v15, v2);
  v28 = v37;
  v25(v37, v24, v2);
  v29 = v38;
  v25(v38, v26, v2);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3658, &qword_C5800);
  v25(&v29[*(v30 + 48)], v27, v2);
  v25(&v29[*(v30 + 64)], v28, v2);
  v31 = v3[1];
  v31(v24, v2);
  v31(v15, v2);
  v31(v34, v2);
  v31(v28, v2);
  v31(v27, v2);
  v31(v39, v2);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3630, &qword_C5770);
  return (*(*(v32 - 8) + 56))(v29, 0, 1, v32);
}

uint64_t sub_B244C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3610, &qword_C5730);
  sub_B75C0();
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v6 = v11 + *a5;
  swift_beginAccess();
  v8 = *v6;
  v7 = *(v6 + 8);

  v8(v9);
}

uint64_t sub_B2520@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v19 - v4;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v6 = sub_B62F0();
  v7 = __swift_project_value_buffer(v6, qword_F35F0);
  v8 = *(v6 - 8);
  (*(v8 + 16))(v5, v7, v6);
  (*(v8 + 56))(v5, 0, 1, v6);
  v9 = sub_B78D0();
  v11 = v10;
  sub_A194(v5, &unk_F17B0, &qword_BE7D0);
  v19[0] = v9;
  v19[1] = v11;
  sub_97E8();
  v12 = sub_B7200();
  v14 = v13;
  LOBYTE(v11) = v15;
  v17 = v16;

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_B2734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3610, &qword_C5730);
  sub_B75C0();
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v6 = v11 + *a5;
  swift_beginAccess();
  v8 = *v6;
  v7 = *(v6 + 8);

  v8(v9);
}

uint64_t sub_B2888@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v19 - v4;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v6 = sub_B62F0();
  v7 = __swift_project_value_buffer(v6, qword_F35F0);
  v8 = *(v6 - 8);
  (*(v8 + 16))(v5, v7, v6);
  (*(v8 + 56))(v5, 0, 1, v6);
  v9 = sub_B78D0();
  v11 = v10;
  sub_A194(v5, &unk_F17B0, &qword_BE7D0);
  v19[0] = v9;
  v19[1] = v11;
  sub_97E8();
  v12 = sub_B7200();
  v14 = v13;
  LOBYTE(v11) = v15;
  v17 = v16;

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_B2ACC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v19 - v4;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v6 = sub_B62F0();
  v7 = __swift_project_value_buffer(v6, qword_F35F0);
  v8 = *(v6 - 8);
  (*(v8 + 16))(v5, v7, v6);
  (*(v8 + 56))(v5, 0, 1, v6);
  v9 = sub_B78D0();
  v11 = v10;
  sub_A194(v5, &unk_F17B0, &qword_BE7D0);
  v19[0] = v9;
  v19[1] = v11;
  sub_97E8();
  v12 = sub_B7200();
  v14 = v13;
  LOBYTE(v11) = v15;
  v17 = v16;

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_B2D3C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v19 - v4;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v6 = sub_B62F0();
  v7 = __swift_project_value_buffer(v6, qword_F35F0);
  v8 = *(v6 - 8);
  (*(v8 + 16))(v5, v7, v6);
  (*(v8 + 56))(v5, 0, 1, v6);
  v9 = sub_B78D0();
  v11 = v10;
  sub_A194(v5, &unk_F17B0, &qword_BE7D0);
  v19[0] = v9;
  v19[1] = v11;
  sub_97E8();
  v12 = sub_B7200();
  v14 = v13;
  LOBYTE(v11) = v15;
  v17 = v16;

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_B2F88(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_B6810();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17[0] = a1;
  v17[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3610, &qword_C5730);
  sub_B75C0();
  v12 = v17[3];
  swift_getKeyPath();
  v17[0] = v12;
  sub_B362C();
  sub_B65C0();

  v13 = v12 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartSharingMyLocationFor;
  swift_beginAccess();
  v15 = *v13;
  v14 = *(v13 + 8);

  (*(v8 + 104))(v11, *a4, v7);
  v15(v11);

  (*(v8 + 8))(v11, v7);
}

uint64_t sub_B31CC()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3660, &qword_C5808);
  sub_B3994();
  sub_B7590();
}

uint64_t sub_B32C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v19 - v4;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v6 = sub_B62F0();
  v7 = __swift_project_value_buffer(v6, qword_F35F0);
  v8 = *(v6 - 8);
  (*(v8 + 16))(v5, v7, v6);
  (*(v8 + 56))(v5, 0, 1, v6);
  v9 = sub_B78D0();
  v11 = v10;
  sub_A194(v5, &unk_F17B0, &qword_BE7D0);
  v19[0] = v9;
  v19[1] = v11;
  sub_97E8();
  v12 = sub_B7200();
  v14 = v13;
  LOBYTE(v11) = v15;
  v17 = v16;

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_B350C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11[3] = &type metadata for SolariumFeatureFlag;
  v11[4] = sub_28360();
  v8 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v8)
  {
    v9 = a3(a1, a2);
  }

  else
  {

    v9 = 0;
  }

  *a4 = v9;
  return result;
}

unint64_t sub_B362C()
{
  result = qword_F3618;
  if (!qword_F3618)
  {
    type metadata accessor for PeopleManagementSectionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3618);
  }

  return result;
}

uint64_t sub_B3684()
{
  sub_9C84(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_B36C8()
{
  result = qword_F3628;
  if (!qword_F3628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F3620, &qword_C5768);
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3628);
  }

  return result;
}

uint64_t sub_B3834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3630, &qword_C5770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B38FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_B1E40();
}

unint64_t sub_B3994()
{
  result = qword_F3668;
  if (!qword_F3668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F3660, &qword_C5808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3668);
  }

  return result;
}

uint64_t sub_B3AB4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t PeopleManagementSectionViewModel.isFavorite.getter()
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  return *(v0 + 40);
}

uint64_t sub_B3C50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

uint64_t sub_B3CE0(__int128 *a1, uint64_t *a2)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *a2;
  swift_getKeyPath();
  sub_B362C();
  sub_B65B0();
}

uint64_t type metadata accessor for PeopleManagementSectionViewModel()
{
  result = qword_F36F0;
  if (!qword_F36F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B3DE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t PeopleManagementSectionViewModel.isFavorite.setter(char a1)
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  swift_getKeyPath();
  sub_B65E0();

  *(v1 + 40) = a1;
  swift_getKeyPath();
  sub_B65D0();
}

void (*PeopleManagementSectionViewModel.isFavorite.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_B362C();
  sub_B65C0();

  *(v4 + 32) = *(v1 + 40);
  return sub_B400C;
}

void sub_B400C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[1];
  *v1 = v5;
  sub_B65C0();

  *v1 = v5;
  swift_getKeyPath();
  sub_B65E0();

  *(v5 + 40) = v2;
  *v1 = v5;
  swift_getKeyPath();
  sub_B65D0();

  free(v1);
}

uint64_t PeopleManagementSectionViewModel.__allocating_init(managedPerson:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PeopleManagementSectionViewModel.init(managedPerson:)(a1);
  return v5;
}

uint64_t PeopleManagementSectionViewModel.init(managedPerson:)(__int128 *a1)
{
  v14 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  sub_B69B0();
  v4 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onSetAsFavorite);
  *v4 = ItemContactInfoSetupIntroductionViewModel.bind();
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onEditLocationName);
  *v5 = ItemContactInfoSetupIntroductionViewModel.bind();
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartFollowing);
  *v6 = ItemContactInfoSetupIntroductionViewModel.bind();
  v6[1] = 0;
  v7 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartSharingMyLocation);
  *v7 = ItemContactInfoSetupIntroductionViewModel.bind();
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onWantToStopSharingMyLocation);
  *v8 = ItemContactInfoSetupIntroductionViewModel.bind();
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onWantToStopFollowingLocation);
  *v9 = ItemContactInfoSetupIntroductionViewModel.bind();
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onShouldStopSharingMyLocation);
  *v10 = ItemContactInfoSetupIntroductionViewModel.bind();
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onShouldStopFollowingLocation);
  *v11 = ItemContactInfoSetupIntroductionViewModel.bind();
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartSharingMyLocationFor);
  *v12 = ItemContactInfoSetupIntroductionViewModel.bind();
  v12[1] = 0;
  sub_B65F0();
  *(v1 + 16) = v14;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return v1;
}

uint64_t sub_B441C()
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65B0();
}

void (*PeopleManagementSectionViewModel.onSetAsFavorite.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B4648;
}

void (*PeopleManagementSectionViewModel.onEditLocationName.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B47E0;
}

void (*PeopleManagementSectionViewModel.onStartFollowing.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B4978;
}

void (*PeopleManagementSectionViewModel.onStartSharingMyLocation.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B4B10;
}

void (*PeopleManagementSectionViewModel.onWantToStopSharingMyLocation.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B4CA8;
}

uint64_t sub_B4CC8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

void (*PeopleManagementSectionViewModel.onWantToStopFollowingLocation.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B4EE4;
}

void (*PeopleManagementSectionViewModel.onShouldStopSharingMyLocation.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B507C;
}

void (*PeopleManagementSectionViewModel.onShouldStopFollowingLocation.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B5214;
}

uint64_t sub_B5250@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X6>, void *a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v8 = (v7 + *a2);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *a4 = a3;
  a4[1] = v11;
}

uint64_t sub_B5358(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_B362C();

  sub_B65B0();
}

void (*PeopleManagementSectionViewModel.onStartSharingMyLocationFor.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B56BC;
}

uint64_t PeopleManagementSectionViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel_logger;
  v3 = sub_B69C0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onSetAsFavorite + 8);

  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onEditLocationName + 8);

  v6 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartFollowing + 8);

  v7 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartSharingMyLocation + 8);

  v8 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onWantToStopSharingMyLocation + 8);

  v9 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onWantToStopFollowingLocation + 8);

  v10 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onShouldStopSharingMyLocation + 8);

  v11 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onShouldStopFollowingLocation + 8);

  v12 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartSharingMyLocationFor + 8);

  v13 = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  v14 = sub_B6600();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t PeopleManagementSectionViewModel.__deallocating_deinit()
{
  PeopleManagementSectionViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_B5A1C()
{
  result = sub_B69C0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_B6600();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_B5B3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B5B74(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_B5BAC(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_B5BD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v1 + 24);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
}

uint64_t sub_B5D84()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_F3868);
  __swift_project_value_buffer(v0, qword_F3868);
  type metadata accessor for PeopleModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.people.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAF8 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_F3868);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t isSolariumEnabled.getter()
{
  v2[3] = &type metadata for SolariumFeatureFlag;
  v2[4] = sub_28360();
  v0 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_B5F40()
{
  result = qword_F3880;
  if (!qword_F3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3880);
  }

  return result;
}

id sub_B5FC8()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_F3888 = result;
  return result;
}

uint64_t sub_B6020()
{
  v0 = sub_B6980();
  __swift_allocate_value_buffer(v0, qword_FAEA0);
  __swift_project_value_buffer(v0, qword_FAEA0);
  if (qword_EEB00 != -1)
  {
    swift_once();
  }

  v1 = qword_F3888;
  return sub_B6970();
}

uint64_t sub_B60C8()
{
  v0 = sub_B6980();
  __swift_allocate_value_buffer(v0, qword_FAEB8);
  __swift_project_value_buffer(v0, qword_FAEB8);
  if (qword_EEB00 != -1)
  {
    swift_once();
  }

  v1 = qword_F3888;
  return sub_B6970();
}

uint64_t sub_B6170()
{
  v0 = sub_B6980();
  __swift_allocate_value_buffer(v0, qword_FAED0);
  __swift_project_value_buffer(v0, qword_FAED0);
  if (qword_EEB00 != -1)
  {
    swift_once();
  }

  v1 = qword_F3888;
  return sub_B6970();
}

uint64_t sub_B6218()
{
  v0 = sub_B6980();
  __swift_allocate_value_buffer(v0, qword_FAEE8);
  __swift_project_value_buffer(v0, qword_FAEE8);
  if (qword_EEB00 != -1)
  {
    swift_once();
  }

  v1 = qword_F3888;
  return sub_B6970();
}