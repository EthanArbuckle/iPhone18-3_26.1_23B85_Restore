uint64_t sub_1F4D4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  sub_1FE68();
  v2 = sub_6D50C();
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (v2 + 32 * v3);
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v7 = v4[3];

  v20 = v5;
  v21 = v6;
  v22 = v8;
  v23 = v7;
  sub_1FEBC();
  if (sub_6D4FC())
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v9 = sub_6D04C();
    sub_5CE4(v9, qword_839A0);

    v10 = sub_6D03C();
    v11 = sub_6D45C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;

      v14 = sub_6D30C();
      v16 = v15;

      v17 = sub_1076C(v14, v16, &v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_0, v10, v11, "IFFlow setting subFeature as: %s", v12, 0xCu);
      sub_9964(v13);
    }

    v18 = sub_6D30C();

    return v18;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

id sub_1F740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v7 = sub_6C4EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v12 = sub_6D04C();
  sub_5CE4(v12, qword_839A0);
  (*(v8 + 16))(v11, a1, v7);
  v13 = sub_6D03C();
  v14 = sub_6D45C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35 = a1;
    v18 = v17;
    v37 = v17;
    *v16 = 136315138;
    v19 = sub_4B728();
    v34 = a4;
    v21 = v20;
    (*(v8 + 8))(v11, v7);
    v22 = sub_1076C(v19, v21, &v37);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, "IFFlow creating feedback form for toolId: %s", v16, 0xCu);
    sub_9964(v18);

    a3 = v33;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v23 = [objc_allocWithZone(SAUIFeedbackForm) init];
  if (a3)
  {
    v24 = sub_6D2BC();
    [v23 setOutput:v24];
  }

  v25 = sub_6D2BC();
  [v23 setDomain:v25];

  v26 = sub_4B728();
  sub_1F4D4(v26, v27);
  v29 = v28;

  if (v29)
  {
    v30 = sub_6D2BC();

    [v23 setSubFeature:v30];
  }

  return v23;
}

id sub_1FA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6C54C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B4CC(v10);
  if ((*(v7 + 88))(v10, v6) != enum case for StatementOutcome.success(_:))
  {
    goto LABEL_7;
  }

  v22 = sub_4B728();
  v23 = v11;
  v20 = 0xD000000000000022;
  v21 = 0x800000000006EE20;
  sub_1FDC0();
  sub_1FE14();
  v12 = sub_6D26C();

  if ((v12 & 1) == 0)
  {
    v22 = sub_4B728();
    v23 = v14;
    v20 = 0xD000000000000033;
    v21 = 0x800000000006E860;
    v15 = sub_6D26C();

    if (v15)
    {
      v13 = &SAUIFeedbackFormDomainSiriPQAValue;
      goto LABEL_6;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v13 = &SAUIFeedbackFormDomainSiriWithChatGPTValue;
LABEL_6:
  v16 = *v13;
  v17 = sub_6D2CC();
  v18 = sub_1F740(a1, a2, a3, v17);

LABEL_8:
  (*(v7 + 8))(v10, v6);
  return v18;
}

uint64_t sub_1FCA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1FCB4(a1, a2);
  }

  return a1;
}

uint64_t sub_1FCB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1FD1C()
{
  result = qword_817F8;
  if (!qword_817F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_817F8);
  }

  return result;
}

uint64_t sub_1FD68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1FD80(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1FCB4(result, a2);
  }

  return result;
}

unint64_t sub_1FDC0()
{
  result = qword_81820;
  if (!qword_81820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81820);
  }

  return result;
}

unint64_t sub_1FE14()
{
  result = qword_81828;
  if (!qword_81828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81828);
  }

  return result;
}

unint64_t sub_1FE68()
{
  result = qword_81830;
  if (!qword_81830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81830);
  }

  return result;
}

unint64_t sub_1FEBC()
{
  result = qword_81838;
  if (!qword_81838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81838);
  }

  return result;
}

unint64_t sub_1FF10()
{
  result = qword_81848;
  if (!qword_81848)
  {
    sub_29F8(&qword_81840, &qword_70428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81848);
  }

  return result;
}

unint64_t sub_1FF74()
{
  result = qword_81858;
  if (!qword_81858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81858);
  }

  return result;
}

uint64_t sub_1FFC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1CF38();
}

uint64_t sub_20120(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81870, &qword_70440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_201AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5708(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20274(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_202BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_202F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_20338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_203AC()
{
  v1 = v0;
  v2 = sub_6D20C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6D1EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_6D1AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v1, v7);
  if ((*(v8 + 88))(v11, v7) != enum case for TypedValue.entity(_:))
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  (*(v8 + 96))(v11, v7);
  v17 = *v11;
  v18 = swift_projectBox();
  (*(v13 + 16))(v16, v18, v12);

  sub_6D19C();
  if ((*(v3 + 88))(v6, v2) != enum case for TypeIdentifier.custom(_:))
  {
    (*(v13 + 8))(v16, v12);
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  (*(v3 + 96))(v6, v2);
  v19 = *v6;
  v21 = *(*v6 + 32);
  v20 = *(v19 + 40);

  if (v21 != 0xD000000000000012 || 0x800000000006EF00 != v20)
  {
    v23 = sub_6D63C();

    (*(v13 + 8))(v16, v12);
    return (v23 & 1) != 0;
  }

  (*(v13 + 8))(v16, v12);
  return 1;
}

uint64_t sub_20740@<X0>(uint64_t a1@<X8>)
{
  v37 = sub_6D20C();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v37);
  v47 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_6D1AC();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v38);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6D1EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v48 = &v34 - v15;
  result = sub_6C76C();
  v54 = *(result + 16);
  if (v54)
  {
    v41 = v8;
    v34 = a1;
    v17 = 0;
    v52 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v50 = v10 + 88;
    v51 = v10 + 16;
    v49 = enum case for TypedValue.entity(_:);
    v18 = (v10 + 8);
    v43 = (v5 + 16);
    v44 = (v10 + 96);
    v42 = (v2 + 88);
    v40 = enum case for TypeIdentifier.custom(_:);
    v45 = (v5 + 8);
    v46 = v10;
    v35 = (v2 + 96);
    v36 = (v2 + 8);
    v39 = 0x800000000006EF00;
    v19 = v37;
    v20 = v38;
    v21 = v48;
    v53 = result;
    while (v17 < *(result + 16))
    {
      v22 = *(v10 + 16);
      v22(v21, v52 + *(v10 + 72) * v17, v9);
      v22(v14, v21, v9);
      v23 = (*(v10 + 88))(v14, v9);
      if (v23 == v49)
      {
        (*v44)(v14, v9);
        v24 = *v14;
        v25 = swift_projectBox();
        v26 = v41;
        (*v43)(v41, v25, v20);

        v27 = v47;
        sub_6D19C();
        v28 = (*v42)(v27, v19);
        if (v28 == v40)
        {
          v29 = v26;
          (*v35)(v27, v19);
          v30 = *(*v27 + 32);
          v31 = *(*v27 + 40);

          if (v30 == 0xD000000000000012 && v39 == v31)
          {

            (*v45)(v29, v38);
            v10 = v46;
            v21 = v48;
LABEL_16:

            a1 = v34;
            (*(v10 + 32))(v34, v21, v9);
            v33 = 0;
            return (*(v10 + 56))(a1, v33, 1, v9);
          }

          v32 = sub_6D63C();

          v20 = v38;
          (*v45)(v29, v38);
          v19 = v37;
          v10 = v46;
          v21 = v48;
          if (v32)
          {
            goto LABEL_16;
          }
        }

        else
        {
          (*v45)(v26, v20);
          (*v36)(v27, v19);
          v10 = v46;
          v21 = v48;
        }
      }

      else
      {
        (*v18)(v14, v9);
      }

      ++v17;
      (*v18)(v21, v9);
      result = v53;
      if (v54 == v17)
      {

        v33 = 1;
        a1 = v34;
        return (*(v10 + 56))(a1, v33, 1, v9);
      }
    }

    __break(1u);
  }

  else
  {

    v33 = 1;
    return (*(v10 + 56))(a1, v33, 1, v9);
  }

  return result;
}

uint64_t sub_20C88()
{
  v1 = v0;
  v2 = sub_6D1CC();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  __chkstk_darwin(v2);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6D1DC();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  v7 = __chkstk_darwin(v5);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v51 - v9;
  v10 = sub_6D1EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v63 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v62 = &v51 - v16;
  v17 = __chkstk_darwin(v15);
  v64 = &v51 - v18;
  __chkstk_darwin(v17);
  v20 = (&v51 - v19);
  v21 = sub_6D1AC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v11 + 16);
  v26(v20, v1, v10);
  v61 = *(v11 + 88);
  if (v61(v20, v10) == enum case for TypedValue.entity(_:))
  {
    v52 = v5;
    v51 = *(v11 + 96);
    v51(v20, v10);
    v27 = *v20;
    v28 = swift_projectBox();
    v53 = v22;
    v54 = v21;
    (*(v22 + 16))(v25, v28, v21);

    v29 = sub_6D18C();
    v30 = v25;
    if (*(v29 + 16) && (v31 = sub_10DDC(0xD000000000000011, 0x800000000006EEE0), (v32 & 1) != 0))
    {
      v33 = v62;
      v26(v62, *(v29 + 56) + *(v11 + 72) * v31, v10);

      v34 = v64;
      (*(v11 + 32))(v64, v33, v10);
      v35 = v63;
      v26(v63, v34, v10);
      if (v61(v35, v10) == enum case for TypedValue.primitive(_:))
      {
        v62 = v30;
        v51(v35, v10);
        v36 = *v35;
        v37 = swift_projectBox();
        v38 = v60;
        v39 = *(v60 + 16);
        v40 = v58;
        v41 = v52;
        v39(v58, v37, v52);

        v42 = v59;
        v39(v59, v40, v41);
        v43 = v41;
        if ((*(v38 + 88))(v42, v41) == enum case for TypedValue.PrimitiveValue.file(_:))
        {
          (*(v38 + 96))(v42, v41);
          v44 = v55;
          v45 = v56;
          v46 = v57;
          (*(v56 + 32))(v55, v42, v57);
          v47 = sub_6D1BC();
          (*(v45 + 8))(v44, v46);
          (*(v38 + 8))(v40, v43);
          (*(v11 + 8))(v64, v10);
          (*(v53 + 8))(v62, v54);
          return v47;
        }

        v50 = *(v38 + 8);
        v50(v40, v41);
        (*(v11 + 8))(v64, v10);
        (*(v53 + 8))(v62, v54);
        v50(v42, v41);
      }

      else
      {
        v49 = *(v11 + 8);
        v49(v34, v10);
        (*(v53 + 8))(v30, v54);
        v49(v35, v10);
      }
    }

    else
    {

      (*(v53 + 8))(v25, v54);
    }
  }

  else
  {
    (*(v11 + 8))(v20, v10);
  }

  return 0;
}

uint64_t sub_21308()
{
  v0 = sub_5708(&qword_818E0, &qword_70480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v22 - v2;
  v4 = sub_6D1EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20740(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2164C(v3);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v9 = sub_6D04C();
    sub_5CE4(v9, qword_839A0);
    v10 = sub_6D03C();
    v11 = sub_6D44C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "[SearchEntityDataExtrator] Intermediate query result does not container SearchAnswerEntity", v12, 2u);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v13 = sub_20C88();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 data];
      v16 = sub_6AE1C();

      (*(v5 + 8))(v8, v4);
      return v16;
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v18 = sub_6D04C();
    sub_5CE4(v18, qword_839A0);
    v19 = sub_6D03C();
    v20 = sub_6D44C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "[SearchEntityDataExtrator] SearchAnswerEntity does not contain pommesContextFile", v21, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

uint64_t sub_2164C(uint64_t a1)
{
  v2 = sub_5708(&qword_818E0, &qword_70480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for FeatureEnablementProvider.Key(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FeatureEnablementProvider.Key(_WORD *result, int a2, int a3)
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

unint64_t sub_217B4()
{
  result = qword_818F8;
  if (!qword_818F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_818F8);
  }

  return result;
}

Swift::Int sub_21808()
{
  sub_6D6BC();
  sub_6D6CC(0);
  return sub_6D6DC();
}

Swift::Int sub_21874()
{
  sub_6D6BC();
  sub_6D6CC(0);
  return sub_6D6DC();
}

uint64_t sub_218DC()
{
  sub_5708(&qword_819C8, &qword_70718);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  return v1;
}

uint64_t sub_21980()
{
  v1 = sub_6BE0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  sub_5708(&qword_819C8, &qword_70718);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v0;

  sub_6BC7C();

  sub_6BE1C();

  (*(v2 + 104))(v6, enum case for NetworkAvailability.Status.unavailable(_:), v1);
  v9 = sub_6BDFC();
  v10 = *(v2 + 8);
  v10(v6, v1);
  v10(v8, v1);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v11 = sub_6D04C();
  sub_5CE4(v11, qword_839A0);
  v12 = sub_6D03C();
  v13 = sub_6D45C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v9 & 1;
    _os_log_impl(&dword_0, v12, v13, "Network Status Provider: isOffline=%{BOOL}d", v14, 8u);
  }

  return v9 & 1;
}

uint64_t sub_21C08()
{
  sub_5708(&qword_819C8, &qword_70718);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  v0 = sub_6BDEC();

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  v2 = sub_6D03C();
  v3 = sub_6D45C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v0 & 1;
    _os_log_impl(&dword_0, v2, v3, "Network Status Provider: isInAirPlaneMode=%{BOOL}d", v4, 8u);
  }

  return v0 & 1;
}

uint64_t sub_21D84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_21DA4, 0, 0);
}

uint64_t sub_21DA4()
{
  v21 = v0;
  v1 = v0[3];
  v2 = sub_21980();
  v3 = v0[3];
  if (v2)
  {
    v4 = sub_21C08();
    *(v3 + 96) = 1;
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_21FF8;

    return sub_2637C(v3 + 16, v3 + 56, v4 & 1);
  }

  else
  {
    *(v3 + 96) = 0;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v7 = v0[3];
    v8 = sub_6D04C();
    sub_5CE4(v8, qword_839A0);

    v9 = sub_6D03C();
    v10 = sub_6D45C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[3];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = *(v11 + 96);
      v15 = sub_6B06C();
      v17 = sub_1076C(v15, v16, &v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_0, v9, v10, "ExitValue for Network Availability guardflow is set as %s", v12, 0xCu);
      sub_9964(v13);
    }

    v18 = v0[2];
    sub_6B49C();
    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_21FF8()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_220F4, 0, 0);
}

uint64_t sub_220F4()
{
  v16 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_6D04C();
  sub_5CE4(v2, qword_839A0);

  v3 = sub_6D03C();
  v4 = sub_6D45C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 96);
    v9 = sub_6B06C();
    v11 = sub_1076C(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v3, v4, "ExitValue for Network Availability guardflow is set as %s", v6, 0xCu);
    sub_9964(v7);
  }

  v12 = v0[2];
  sub_6B49C();
  v13 = v0[1];

  return v13();
}

uint64_t sub_22290()
{
  sub_9964(v0 + 2);
  sub_9964(v0 + 7);
  v1 = v0[13];

  return swift_deallocClassInstance();
}

void (*sub_22344(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_6BC9C();
  return sub_223D0;
}

void sub_223D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_22434(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E728;

  return sub_21D84(a1);
}

uint64_t sub_22548(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NetworkAvailabilityGuardFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_5708(&qword_819C8, &qword_70718);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  *a2 = v5;
  return result;
}

uint64_t sub_22690@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_226C0()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v0 = sub_6D04C();
  sub_5CE4(v0, qword_839A0);
  v1 = sub_6D03C();
  v2 = sub_6D46C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1076C(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v6);
    _os_log_impl(&dword_0, v1, v2, "%s Execution should never reach here since we are providing implementation of onAsync function", v3, 0xCu);
    sub_9964(v4);
  }

  return 0;
}

uint64_t sub_22800()
{
  result = sub_6B7DC();
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_10DDC(0x636E617265747475, 0xE900000000000065), (v3 & 1) != 0))
    {
      sub_98EC(*(v1 + 56) + 32 * v2, v5);

      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_228B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6D12C();
  v17[0] = *(v2 - 8);
  v3 = *(v17[0] + 64);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6B7DC();
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16) && (v8 = sub_10DDC(0xD000000000000013, 0x800000000006EFB0), (v9 & 1) != 0))
    {
      sub_98EC(*(v7 + 56) + 32 * v8, v18);

      if (swift_dynamicCast())
      {
        v11 = v17[2];
        v10 = v17[3];
        v12 = sub_6AD5C();
        v13 = *(v12 + 48);
        v14 = *(v12 + 52);
        swift_allocObject();
        sub_6AD4C();
        sub_25EE8();
        sub_6AD3C();

        sub_1FCB4(v11, v10);
        (*(v17[0] + 32))(a1, v5, v2);
        return (*(v17[0] + 56))(a1, 0, 1, v2);
      }
    }

    else
    {
    }

    return (*(v17[0] + 56))(a1, 1, 1, v2);
  }

  else
  {
    v15 = *(v17[0] + 56);

    return v15(a1, 1, 1, v2);
  }
}

uint64_t sub_22C60()
{
  v0 = sub_6B7EC();
  v41 = *(v0 - 8);
  v1 = *(v41 + 64);
  __chkstk_darwin(v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6B82C();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5708(&qword_819D0, &qword_70DB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v38 - v10;
  v12 = sub_6B3DC();
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6B7FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B78C();
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == enum case for Parse.directInvocation(_:))
  {
    (*(v17 + 96))(v20, v16);
    v22 = v41;
    (*(v41 + 32))(v3, v20, v0);
    v23 = sub_6B7CC();
    v25 = v24;
    v26 = sub_6B25C();
    v27 = [v26 identifier];

    v28 = sub_6D2CC();
    v30 = v29;

    if (v23 == v28 && v25 == v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_6D63C();
    }

    (*(v22 + 8))(v3, v0);
  }

  else if (v21 == enum case for Parse.uso(_:))
  {
    (*(v17 + 96))(v20, v16);
    v33 = v39;
    v32 = v40;
    (*(v39 + 32))(v7, v20, v40);
    v31 = sub_249DC();
    (*(v33 + 8))(v7, v32);
  }

  else
  {
    if (v21 == enum case for Parse.nlRouter(_:))
    {
      (*(v17 + 96))(v20, v16);
      v34 = v38;
      (*(v38 + 32))(v15, v20, v12);
      sub_6B39C();
      v36 = v39;
      v35 = v40;
      if ((*(v39 + 48))(v11, 1, v40) != 1)
      {
        v31 = sub_249DC();
        (*(v34 + 8))(v15, v12);
        (*(v36 + 8))(v11, v35);
        return v31 & 1;
      }

      (*(v34 + 8))(v15, v12);
      sub_5E20(v11, &qword_819D0, &qword_70DB0);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
    }

    v31 = 0;
  }

  return v31 & 1;
}

unint64_t sub_23170()
{
  v0 = sub_6B7EC();
  v48 = *(v0 - 8);
  v1 = *(v48 + 64);
  __chkstk_darwin(v0);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6B82C();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5708(&qword_819D0, &qword_70DB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - v10;
  v12 = sub_6B3DC();
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6B7FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B78C();
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 != enum case for Parse.directInvocation(_:))
  {
    if (v21 == enum case for Parse.uso(_:))
    {
      (*(v17 + 96))(v20, v16);
      v29 = v46;
      v28 = v47;
      (*(v46 + 32))(v7, v20, v47);
      v30 = sub_24DEC();
      (*(v29 + 8))(v7, v28);
      return v30;
    }

    if (v21 == enum case for Parse.nlRouter(_:))
    {
      (*(v17 + 96))(v20, v16);
      v40 = v45;
      (*(v45 + 32))(v15, v20, v12);
      sub_6B39C();
      v42 = v46;
      v41 = v47;
      if ((*(v46 + 48))(v11, 1, v47) != 1)
      {
        v43 = sub_24DEC();
        (*(v40 + 8))(v15, v12);
        (*(v42 + 8))(v11, v41);
        return v43;
      }

      (*(v40 + 8))(v15, v12);
      sub_5E20(v11, &qword_819D0, &qword_70DB0);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
    }

    return 0;
  }

  (*(v17 + 96))(v20, v16);
  v22 = v48;
  (*(v48 + 32))(v3, v20, v0);
  v23 = sub_6B7CC();
  v25 = v24;
  v27 = v3;
  if (v23 == sub_6B24C() && v25 == v26)
  {
  }

  else
  {
    v32 = sub_6D63C();

    if ((v32 & 1) == 0)
    {
LABEL_20:
      (*(v22 + 8))(v27, v0);
      return 0;
    }
  }

  v33 = sub_6B7DC();
  if (!v33)
  {
    goto LABEL_20;
  }

  v34 = v33;
  v35 = sub_6B23C();
  if (!*(v34 + 16))
  {

    goto LABEL_19;
  }

  v37 = sub_10DDC(v35, v36);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_98EC(*(v34 + 56) + 32 * v37, v50);
  (*(v22 + 8))(v27, v0);

  if (swift_dynamicCast())
  {
    return v49;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v61 = a1;
  v57 = a3;
  v3 = sub_6BA6C();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  v5 = __chkstk_darwin(v3);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v51 - v7;
  v64 = sub_6B9AC();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v64);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v51 - v13;
  v14 = sub_6B8BC();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_6B9EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v60 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v51 - v21;
  v23 = sub_5708(&qword_818C0, &qword_70468);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v51 - v25;
  v27 = sub_6BC0C();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_6BBFC();
  sub_6BAEC();
  sub_5708(&qword_81548, &qword_70088);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_6FFF0;
  *(v31 + 32) = v30;
  v32 = sub_6BB3C();
  (*(*(v32 - 8) + 56))(v26, 1, 1, v32);

  v33 = sub_6BB1C();

  sub_5E20(v26, &qword_818C0, &qword_70468);
  sub_6B9DC();
  v34 = v63;
  sub_6BACC();
  if (v34)
  {
    (*(v17 + 8))(v22, v16);
  }

  else
  {
    v54 = v33;
    v62 = v30;
    v63 = v12;
    sub_6B9CC();
    v36 = v65;
    sub_6B99C();
    (*(v17 + 16))(v60, v22, v16);
    result = sub_6B95C();
    v37 = v61;
    if (v61 < 1)
    {
LABEL_14:
      __break(1u);
    }

    else
    {
      v38 = v36;
      v51 = 0;
      v52 = v22;
      v53 = v17;
      v60 = v16;
      v39 = *(v8 + 16);
      v40 = &_swiftEmptyArrayStorage;
      v41 = 1;
      v42 = v63;
      v43 = v64;
      while (1)
      {
        v39(v42, v38, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_2B7E0(0, v40[2] + 1, 1, v40);
        }

        v45 = v40[2];
        v44 = v40[3];
        if (v45 >= v44 >> 1)
        {
          v40 = sub_2B7E0(v44 > 1, v45 + 1, 1, v40);
        }

        v40[2] = v45 + 1;
        v46 = v40 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v45;
        v42 = v63;
        v43 = v64;
        result = (*(v8 + 32))(v46, v63, v64);
        if (v37 == v41)
        {
          break;
        }

        v47 = __OFADD__(v41++, 1);
        v38 = v65;
        if (v47)
        {
          __break(1u);
          goto LABEL_14;
        }
      }

      v48 = v56;
      sub_6BA5C();
      sub_6BA4C();
      sub_6BA2C();
      v50 = v58;
      v49 = v59;
      (*(v58 + 16))(v55, v48, v59);
      sub_6B9FC();

      (*(v50 + 8))(v48, v49);
      (*(v8 + 8))(v65, v43);
      return (*(v53 + 8))(v52, v60);
    }
  }

  return result;
}

uint64_t sub_23D20@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_6B7EC();
  v57 = *(v1 - 8);
  v2 = *(v57 + 64);
  __chkstk_darwin(v1);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6B82C();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5708(&qword_819D0, &qword_70DB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v53 - v11;
  v13 = sub_6B3DC();
  v54 = *(v13 - 8);
  v14 = *(v54 + 64);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6B7FC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B78C();
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for Parse.directInvocation(_:))
  {
    (*(v18 + 96))(v21, v17);
    v23 = v57;
    (*(v57 + 32))(v4, v21, v1);
    v24 = sub_6B7CC();
    v26 = v25;
    v27 = sub_6B26C();
    v28 = [v27 identifier];

    v29 = sub_6D2CC();
    v31 = v30;

    v32 = v4;
    if (v29 == v24 && v31 == v26)
    {

LABEL_8:
      (*(v23 + 8))(v4, v1);

      v37 = enum case for ConfirmationResponse.rejected(_:);
      v38 = sub_6B61C();
      v39 = *(v38 - 8);
      v40 = v58;
      (*(v39 + 104))(v58, v37, v38);
      return (*(v39 + 56))(v40, 0, 1, v38);
    }

    v36 = sub_6D63C();

    if (v36)
    {
      goto LABEL_8;
    }

    v44 = sub_6B27C();
    v45 = [v44 identifier];

    v46 = sub_6D2CC();
    v48 = v47;

    if (v46 == v24 && v48 == v26)
    {

      (*(v23 + 8))(v4, v1);
LABEL_18:
      v51 = enum case for ConfirmationResponse.confirmed(_:);
      v38 = sub_6B61C();
      v39 = *(v38 - 8);
      v40 = v58;
      (*(v39 + 104))(v58, v51, v38);
      return (*(v39 + 56))(v40, 0, 1, v38);
    }

    v50 = sub_6D63C();

    (*(v23 + 8))(v32, v1);
    if (v50)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v22 == enum case for Parse.uso(_:))
  {
    (*(v18 + 96))(v21, v17);
    v34 = v55;
    v33 = v56;
    (*(v55 + 32))(v8, v21, v56);
    sub_24464(v58);
    return (*(v34 + 8))(v8, v33);
  }

  if (v22 != enum case for Parse.nlRouter(_:))
  {
    v49 = sub_6B61C();
    (*(*(v49 - 8) + 56))(v58, 1, 1, v49);
    return (*(v18 + 8))(v21, v17);
  }

  (*(v18 + 96))(v21, v17);
  v41 = v54;
  (*(v54 + 32))(v16, v21, v13);
  sub_6B39C();
  v43 = v55;
  v42 = v56;
  if ((*(v55 + 48))(v12, 1, v56) == 1)
  {
    (*(v41 + 8))(v16, v13);
    sub_5E20(v12, &qword_819D0, &qword_70DB0);
LABEL_19:
    v52 = sub_6B61C();
    return (*(*(v52 - 8) + 56))(v58, 1, 1, v52);
  }

  sub_24464(v58);
  (*(v41 + 8))(v16, v13);
  return (*(v43 + 8))(v12, v42);
}

uint64_t sub_24464@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_6B82C();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v46 - v7;
  v9 = sub_6B8DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6B9AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  sub_6B81C();
  v20 = sub_6B8CC();
  (*(v10 + 8))(v13, v9);
  if (*(v20 + 16))
  {
    (*(v15 + 16))(v18, v20 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);

    if (sub_6B93C())
    {
      (*(v15 + 8))(v18, v14);
      v21 = enum case for ConfirmationResponse.rejected(_:);
      v22 = sub_6B61C();
      v23 = *(v22 - 8);
      v24 = v48;
      (*(v23 + 104))(v48, v21, v22);
      return (*(v23 + 56))(v24, 0, 1, v22);
    }

    v42 = sub_6B92C();
    (*(v15 + 8))(v18, v14);
    if (v42)
    {
      v43 = enum case for ConfirmationResponse.confirmed(_:);
      v22 = sub_6B61C();
      v23 = *(v22 - 8);
      v24 = v48;
      (*(v23 + 104))(v48, v43, v22);
      return (*(v23 + 56))(v24, 0, 1, v22);
    }
  }

  else
  {
    v25 = v19;
    v27 = v46;
    v26 = v47;
    v28 = v6;

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v29 = sub_6D04C();
    sub_5CE4(v29, qword_839A0);
    v30 = *(v27 + 16);
    v31 = v8;
    v32 = v26;
    v30(v8, v25, v26);
    v33 = sub_6D03C();
    v34 = sub_6D46C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v31;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136315138;
      v30(v28, v35, v32);
      v38 = sub_6D2EC();
      v40 = v39;
      (*(v27 + 8))(v35, v32);
      v41 = sub_1076C(v38, v40, &v49);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_0, v33, v34, "Invalid USOParse while looking for user confirmation. Parse has no UDAs: %s", v36, 0xCu);
      sub_9964(v37);
    }

    else
    {

      (*(v27 + 8))(v31, v26);
    }
  }

  v45 = sub_6B61C();
  return (*(*(v45 - 8) + 56))(v48, 1, 1, v45);
}

uint64_t sub_249DC()
{
  v1 = sub_6B82C();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v39 - v6;
  v8 = sub_6B8DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6B9AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0;
  sub_6B81C();
  v19 = sub_6B8CC();
  (*(v9 + 8))(v12, v8);
  if (*(v19 + 16))
  {
    (*(v14 + 16))(v17, v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);

    v20 = sub_6B94C();
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v21 = v18;
    v23 = v40;
    v22 = v41;
    v24 = v5;

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v25 = sub_6D04C();
    sub_5CE4(v25, qword_839A0);
    v26 = *(v23 + 16);
    v27 = v7;
    v28 = v22;
    v26(v7, v21, v22);
    v29 = sub_6D03C();
    v30 = sub_6D46C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v27;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136315138;
      v26(v24, v31, v28);
      v34 = sub_6D2EC();
      v36 = v35;
      (*(v23 + 8))(v31, v28);
      v37 = sub_1076C(v34, v36, &v42);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_0, v29, v30, "Invalid USOParse while looking for user cancellation. Parse has no UDAs: %s", v32, 0xCu);
      sub_9964(v33);
    }

    else
    {

      (*(v23 + 8))(v27, v22);
    }

    v20 = 0;
  }

  return v20 & 1;
}

unint64_t sub_24DEC()
{
  result = sub_2519C();
  if (result)
  {

    sub_6BB4C();

    if (v18[3])
    {
      sub_6BB8C();
      if (swift_dynamicCast())
      {

        sub_6BADC();

        if (v18[0])
        {
          v1 = sub_6BB2C();

          if (v1)
          {
            v2 = sub_25964();

            return v2;
          }
        }

        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v11 = sub_6D04C();
        sub_5CE4(v11, qword_839A0);

        v4 = sub_6D03C();
        v12 = sub_6D46C();

        if (os_log_type_enabled(v4, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v18[0] = v14;
          *v13 = 136315138;

          v15 = sub_6D2EC();
          v17 = sub_1076C(v15, v16, v18);

          *(v13 + 4) = v17;
          _os_log_impl(&dword_0, v4, v12, "Could not extract the listPosition from the usoNoEntity=%s", v13, 0xCu);
          sub_9964(v14);

LABEL_19:

          return 0;
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      sub_5E20(v18, &qword_819D8, &qword_70768);
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v3 = sub_6D04C();
    sub_5CE4(v3, qword_839A0);

    v4 = sub_6D03C();
    v5 = sub_6D46C();

    if (!os_log_type_enabled(v4, v5))
    {

      return 0;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315138;
    sub_6BC2C();

    v8 = sub_6D2EC();
    v10 = sub_1076C(v8, v9, v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Could not extract the usoNoEntity from the usoTask=%s", v6, 0xCu);
    sub_9964(v7);

    goto LABEL_18;
  }

  return result;
}

unint64_t sub_2519C()
{
  v1 = sub_6B82C();
  v70 = *(v1 - 8);
  v71 = v1;
  v2 = *(v70 + 64);
  v3 = __chkstk_darwin(v1);
  v69 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v66 - v5;
  v7 = sub_6B8DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6B9AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v67 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v68 = &v66 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v66 - v20;
  __chkstk_darwin(v19);
  v23 = &v66 - v22;
  v24 = v0;
  sub_6B81C();
  v25 = sub_6B8CC();
  (*(v8 + 8))(v11, v7);
  if (!*(v25 + 16))
  {
    v42 = v6;
    v44 = v69;
    v43 = v70;
    v45 = v71;

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v46 = sub_6D04C();
    sub_5CE4(v46, qword_839A0);
    v47 = v43;
    v48 = *(v43 + 16);
    v48(v42, v24, v45);
    v49 = sub_6D03C();
    v50 = sub_6D46C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v72[0] = v52;
      *v51 = 136315138;
      v48(v44, v42, v45);
      v53 = sub_6D2EC();
      v55 = v54;
      (*(v47 + 8))(v42, v45);
      v56 = sub_1076C(v53, v55, v72);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_0, v49, v50, "Cannot extract task: USO parse has no UDAs. %s", v51, 0xCu);
      sub_9964(v52);
    }

    else
    {

      (*(v47 + 8))(v42, v45);
    }

    return 0;
  }

  v26 = *(v13 + 16);
  v26(v21, v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

  (*(v13 + 32))(v23, v21, v12);
  v27 = v13;
  v28 = v23;
  if ((sub_6B91C() & 1) == 0)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v57 = sub_6D04C();
    sub_5CE4(v57, qword_839A0);
    v58 = sub_6D03C();
    v59 = sub_6D46C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "User dialog act does not have a user stated task", v60, 2u);
    }

    (*(v13 + 8))(v23, v12);
    return 0;
  }

  result = sub_6BABC();
  v62 = v68;
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  v64 = result;
  v65 = sub_6D5CC();
  result = v64;
  if (!v65)
  {
LABEL_27:

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v30 = sub_6D04C();
    sub_5CE4(v30, qword_839A0);
    v26(v62, v23, v12);
    v31 = sub_6D03C();
    v32 = sub_6D46C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v71 = v28;
      v72[0] = v34;
      v35 = v34;
      *v33 = 136315138;
      v26(v67, v62, v12);
      v36 = sub_6D2EC();
      v37 = v62;
      v39 = v38;
      v40 = *(v27 + 8);
      v40(v37, v12);
      v41 = sub_1076C(v36, v39, v72);

      *(v33 + 4) = v41;
      _os_log_impl(&dword_0, v31, v32, "Cannot extract task: UDA -> Task conversion failed. %s", v33, 0xCu);
      sub_9964(v35);

      v40(v71, v12);
    }

    else
    {

      v61 = *(v27 + 8);
      v61(v62, v12);
      v61(v28, v12);
    }

    return 0;
  }

LABEL_22:
  if ((result & 0xC000000000000001) != 0)
  {
    v63 = sub_6D58C();
    goto LABEL_25;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v63 = *(result + 32);

LABEL_25:

    (*(v27 + 8))(v23, v12);
    return v63;
  }

  __break(1u);
  return result;
}

uint64_t sub_25964()
{
  v0 = sub_5708(&qword_819E0, &qword_70770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_6BBAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_6BB9C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_5E20(v3, &qword_819E0, &qword_70770);
    return 0;
  }

  v13 = *(v5 + 32);
  v13(v11, v3, v4);
  v13(v9, v11, v4);
  v14 = (*(v5 + 88))(v9, v4);
  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourth(_:))
  {
    return 4;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Second(_:))
  {
    return 2;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Beginning(_:))
  {
    return 1;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFourth(_:))
  {
    return 24;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventeenth(_:))
  {
    return 17;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighth(_:))
  {
    return 8;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_ThirdToLast(_:))
  {
    return -3;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixth(_:))
  {
    return 6;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Nineteenth(_:))
  {
    return 19;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFifth(_:))
  {
    return 25;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Ninth(_:))
  {
    return 9;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eleventh(_:))
  {
    return 11;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_End(_:))
  {
    return -1;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourteenth(_:))
  {
    return 14;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_SecondToLast(_:))
  {
    return -2;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFirst(_:))
  {
    return 21;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Thirteenth(_:))
  {
    return 13;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:))
  {
    return -1;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentySecond(_:))
  {
    return 22;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifteenth(_:))
  {
    return 15;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twentieth(_:))
  {
    return 20;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifth(_:))
  {
    return 5;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixteenth(_:))
  {
    return 16;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_First(_:))
  {
    return 1;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventh(_:))
  {
    return 7;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighteenth(_:))
  {
    return 18;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyThird(_:))
  {
    return 23;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twelfth(_:))
  {
    return 12;
  }

  if (v14 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Third(_:))
  {
    return 3;
  }

  if (v14 != enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Tenth(_:))
  {
    (*(v5 + 8))(v9, v4);
    return 0;
  }

  return 10;
}

unint64_t sub_25EE8()
{
  result = qword_819E8;
  if (!qword_819E8)
  {
    sub_6D12C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_819E8);
  }

  return result;
}

unint64_t sub_25F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5708(&qword_819F0, &qword_70780);
    v3 = sub_6D5EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_C14C(v4, v13, &qword_81558, &qword_70098);
      result = sub_10D98(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2747C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_2607C(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return &_swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_6D3BC();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_26118(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5708(&qword_819F8, &qword_70788);
    v3 = sub_6D5EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_C14C(v4, &v13, &qword_81A00, &qword_716C0);
      v5 = v13;
      v6 = v14;
      result = sub_10DDC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2747C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_26248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5708(&qword_81A08, &qword_70790);
    v3 = sub_6D5EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_C14C(v4, &v13, &qword_81A10, &qword_70798);
      v5 = v13;
      v6 = v14;
      result = sub_10DDC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2748C(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_2637C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 440) = a3;
  *(v3 + 240) = a1;
  *(v3 + 248) = a2;
  v4 = *(*(sub_5708(&qword_81520, &qword_708D0) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v5 = sub_6B89C();
  *(v3 + 264) = v5;
  v6 = *(v5 - 8);
  *(v3 + 272) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  v8 = sub_6B64C();
  *(v3 + 288) = v8;
  v9 = *(v8 - 8);
  *(v3 + 296) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v11 = sub_6B55C();
  *(v3 + 312) = v11;
  v12 = *(v11 - 8);
  *(v3 + 320) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  v14 = sub_6AEDC();
  *(v3 + 336) = v14;
  v15 = *(v14 - 8);
  *(v3 + 344) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();

  return _swift_task_switch(sub_26598, 0, 0);
}

uint64_t sub_26598()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v24 = *(v0 + 440);
  v5 = *(v0 + 240);
  v6 = v5[4];
  sub_99FC(v5, v5[3]);
  sub_6B29C();
  sub_6AEAC();
  v7 = *(v4 + 8);
  v7(v1, v3);
  v8 = v5[4];
  sub_99FC(v5, v5[3]);
  sub_6B29C();
  sub_6AEAC();
  v7(v2, v3);
  v9 = objc_allocWithZone(CATContext);
  v10 = sub_6D2BC();

  v11 = sub_6D2BC();

  v12 = [v9 initWithInputLocale:v10 outputVoiceLocale:v11];
  *(v0 + 368) = v12;

  v13 = "suggestedInvocation";
  v14 = 0xD00000000000001BLL;
  if (v24 == 1)
  {
    v14 = 0xD000000000000020;
  }

  else
  {
    v13 = "IFFlow#CompanionNotFound";
  }

  if (v24)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0xD000000000000020;
  }

  if (v24)
  {
    v16 = v13;
  }

  else
  {
    v16 = "ity#AirplaneMode";
  }

  *(v0 + 376) = v15;
  *(v0 + 384) = v16;
  v17 = objc_opt_self();
  type metadata accessor for IFFlowPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v0 + 392) = v19;
  v20 = sub_6D2BC();
  *(v0 + 400) = v20;
  sub_25F40(&_swiftEmptyArrayStorage);
  isa = sub_6D22C().super.isa;
  *(v0 + 408) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_268D8;
  v22 = swift_continuation_init();
  *(v0 + 136) = sub_5708(&qword_81530, &qword_70078);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_9694;
  *(v0 + 104) = &unk_7F150;
  *(v0 + 112) = v22;
  [v17 execute:v19 catId:v20 parameters:isa globals:v12 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_268D8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 416) = v3;
  if (v3)
  {
    v4 = *(v1 + 384);

    v5 = sub_2704C;
  }

  else
  {
    v5 = sub_269F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_269F4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 368);
  v25 = *(v0 + 384);
  v26 = *(v0 + 376);
  v24 = *(v0 + 328);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  v30 = *(v0 + 264);
  v31 = *(v0 + 272);
  v27 = *(v0 + 256);
  v28 = *(v0 + 280);
  v29 = *(v0 + 248);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  *(v0 + 424) = v9;

  v10 = [v9 speak];
  sub_6D38C();

  v11 = [v9 print];
  sub_6D38C();

  (*(v5 + 104))(v6, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v7);
  v12 = [v9 print];
  v13 = sub_6D38C();

  v14 = *(v13 + 16);

  sub_2607C(0, 0xE000000000000000, v14);
  v15 = [v9 meta];
  sub_6D23C();

  sub_6B54C();
  v16 = v8[4];
  sub_99FC(v8, v8[3]);
  sub_6B2AC();
  v17 = sub_6B50C();
  (*(*(v17 - 8) + 56))(v27, 1, 1, v17);
  *(v0 + 176) = 0;
  *(v0 + 160) = 0u;
  *(v0 + 144) = 0u;
  sub_6B42C();
  sub_5E20(v0 + 144, &qword_81538, &qword_70080);
  sub_5E20(v27, &qword_81520, &qword_708D0);
  v18 = v29[3];
  v19 = v29[4];
  sub_99FC(v29, v18);
  *(v0 + 208) = v30;
  *(v0 + 216) = &protocol witness table for AceOutput;
  v20 = sub_97B0((v0 + 184));
  (*(v31 + 16))(v20, v28, v30);
  v21 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v22 = swift_task_alloc();
  *(v0 + 432) = v22;
  *v22 = v0;
  v22[1] = sub_26D58;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 184, v18, v19);
}

uint64_t sub_26D58()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_27280;
  }

  else
  {
    sub_9964((v2 + 184));
    v5 = sub_26E84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_26E84()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  v2 = sub_6D03C();
  v3 = sub_6D45C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[53];
  v6 = v0[46];
  v8 = v0[40];
  v7 = v0[41];
  v21 = v0[39];
  v9 = v0[34];
  v10 = v0[35];
  v11 = v0[33];
  if (v4)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v2, v3, "Published AceOutput for offline network", v12, 2u);
  }

  (*(v9 + 8))(v10, v11);
  (*(v8 + 8))(v7, v21);
  v14 = v0[44];
  v13 = v0[45];
  v15 = v0[41];
  v16 = v0[38];
  v17 = v0[35];
  v18 = v0[32];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2704C()
{
  v26 = v0;
  v1 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[46];
  swift_willThrow();

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v6 = v0[52];
  v7 = sub_6D04C();
  sub_5CE4(v7, qword_839A0);
  swift_errorRetain();
  v8 = sub_6D03C();
  v9 = sub_6D46C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[52];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v0[29] = v11;
    swift_errorRetain();
    sub_5708(&qword_813D0, qword_6FC50);
    v14 = sub_6D2EC();
    v16 = sub_1076C(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Could not render error CAT: %s", v12, 0xCu);
    sub_9964(v13);
  }

  else
  {
  }

  v18 = v0[44];
  v17 = v0[45];
  v19 = v0[41];
  v20 = v0[38];
  v21 = v0[35];
  v22 = v0[32];

  v23 = v0[1];

  return v23();
}

uint64_t sub_27280()
{
  sub_9964(v0 + 23);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  v2 = sub_6D03C();
  v3 = sub_6D45C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[53];
  v6 = v0[46];
  v8 = v0[40];
  v7 = v0[41];
  v21 = v0[39];
  v9 = v0[34];
  v10 = v0[35];
  v11 = v0[33];
  if (v4)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v2, v3, "Published AceOutput for offline network", v12, 2u);
  }

  (*(v9 + 8))(v10, v11);
  (*(v8 + 8))(v7, v21);
  v14 = v0[44];
  v13 = v0[45];
  v15 = v0[41];
  v16 = v0[38];
  v17 = v0[35];
  v18 = v0[32];

  v19 = v0[1];

  return v19();
}

_OWORD *sub_2747C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_2748C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_274A4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51[1] = a2;
  v3 = sub_6C00C();
  v4 = *(v3 - 8);
  v79 = v3;
  v80 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6BFEC();
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_6C02C();
  v60 = *(v57 - 8);
  v13 = *(v60 + 64);
  __chkstk_darwin(v57);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v16 = [a1 recognition];
  if (!v16)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v17 = v16;
  v18 = [v16 phrases];

  if (!v18)
  {
LABEL_63:
    __break(1u);
    return;
  }

  sub_27E28(0, &qword_81A18, AFSpeechPhrase_ptr);
  v19 = sub_6D38C();

  if (v19 >> 62)
  {
    goto LABEL_57;
  }

  v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  if (!v20)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v21 = v19;
    v84 = &_swiftEmptyArrayStorage;
    v19 = &v84;
    v59 = v20;
    sub_27DA0(0, v20 & ~(v20 >> 63), 0);
    if (v59 < 0)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v22 = 0;
    v58 = v21 & 0xC000000000000001;
    v63 = v84;
    v54 = v21 & 0xFFFFFFFFFFFFFF8;
    v53 = (v21 + 32);
    v78 = v80 + 32;
    v70 = v72 + 32;
    v55 = v60 + 32;
    v56 = v21;
    v66 = v15;
    v67 = v12;
    while (1)
    {
      if (__OFADD__(v22, 1))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v62 = v22 + 1;
      if (v58)
      {
        v23 = sub_6D58C();
      }

      else
      {
        if (v22 >= *(v54 + 16))
        {
          goto LABEL_56;
        }

        v23 = v53[v22];
      }

      v61 = v23;
      v24 = [v23 interpretations];
      if (!v24)
      {
        goto LABEL_61;
      }

      v25 = v24;
      sub_27E28(0, &qword_81A20, AFSpeechInterpretation_ptr);
      v26 = sub_6D38C();

      if (v26 >> 62)
      {
        break;
      }

      v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
      if (v27)
      {
        goto LABEL_15;
      }

LABEL_44:

      sub_6C01C();

      v47 = v63;
      v84 = v63;
      v49 = v63[2];
      v48 = v63[3];
      if (v49 >= v48 >> 1)
      {
        v19 = &v84;
        sub_27DA0(v48 > 1, v49 + 1, 1);
        v47 = v84;
      }

      v47[2] = v49 + 1;
      v50 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v63 = v47;
      (*(v60 + 32))(v47 + v50 + *(v60 + 72) * v49, v15, v57);
      v22 = v62;
      if (v62 == v59)
      {
        goto LABEL_58;
      }
    }

    v27 = sub_6D5CC();
    if (!v27)
    {
      goto LABEL_44;
    }

LABEL_15:
    v83 = &_swiftEmptyArrayStorage;
    v19 = &v83;
    sub_27DE4(0, v27 & ~(v27 >> 63), 0);
    if ((v27 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v20 = sub_6D5CC();
    if (!v20)
    {
      goto LABEL_58;
    }
  }

  v28 = 0;
  v29 = v83;
  v73 = v26 & 0xC000000000000001;
  v65 = v26 & 0xFFFFFFFFFFFFFF8;
  v64 = v26 + 32;
  v68 = v27;
  v69 = v26;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v73)
    {
      v31 = sub_6D58C();
    }

    else
    {
      if (v28 >= *(v65 + 16))
      {
        goto LABEL_52;
      }

      v31 = *(v64 + 8 * v28);
    }

    v32 = v31;
    v33 = [v31 tokens];
    if (!v33)
    {
      goto LABEL_60;
    }

    v34 = v33;
    v75 = v32;
    v76 = v30;
    sub_27E28(0, &qword_81A28, AFSpeechToken_ptr);
    v35 = sub_6D38C();

    if (v35 >> 62)
    {
      break;
    }

    v36 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    if (v36)
    {
      goto LABEL_25;
    }

LABEL_38:

    v19 = &_swiftEmptyArrayStorage;
LABEL_39:
    sub_6BFDC();

    v83 = v29;
    v45 = v29[2];
    v44 = v29[3];
    v46 = v76;
    if (v45 >= v44 >> 1)
    {
      v19 = &v83;
      sub_27DE4(v44 > 1, v45 + 1, 1);
      v29 = v83;
    }

    v29[2] = v45 + 1;
    (*(v72 + 32))(v29 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v45, v12, v71);
    v28 = v46;
    if (v46 == v27)
    {
      goto LABEL_44;
    }
  }

  v36 = sub_6D5CC();
  if (!v36)
  {
    goto LABEL_38;
  }

LABEL_25:
  v82 = &_swiftEmptyArrayStorage;
  v19 = &v82;
  sub_27E70(0, v36 & ~(v36 >> 63), 0);
  if (v36 < 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v74 = v29;
  v37 = 0;
  v19 = v82;
  v81 = v35 & 0xC000000000000001;
  v77 = v35 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v12 = (v37 + 1);
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v81)
    {
      v38 = sub_6D58C();
    }

    else
    {
      if (v37 >= *(v77 + 16))
      {
        goto LABEL_49;
      }

      v38 = *(v35 + 8 * v37 + 32);
    }

    v39 = v38;
    v40 = [v38 text];
    if (!v40)
    {
      goto LABEL_55;
    }

    v41 = v40;
    v15 = v36;
    sub_6D2CC();

    [v39 confidenceScore];
    [v39 startTime];
    [v39 silenceStartTime];
    [v39 endTime];
    sub_6BFFC();

    v82 = v19;
    v43 = *(v19 + 16);
    v42 = *(v19 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_27E70(v42 > 1, v43 + 1, 1);
      v19 = v82;
    }

    *(v19 + 16) = v43 + 1;
    (*(v80 + 32))(v19 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v43, v7, v79);
    ++v37;
    v36 = v15;
    if (v12 == v15)
    {

      v15 = v66;
      v12 = v67;
      v27 = v68;
      v29 = v74;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_58:

  sub_6C03C();
}

size_t sub_27D3C(size_t a1, int64_t a2, char a3)
{
  result = sub_28134(a1, a2, a3, *v3, &qword_81A58, &qword_707C8, &type metadata accessor for ResponseOutput.VisualOutput);
  *v3 = result;
  return result;
}

char *sub_27D80(char *a1, int64_t a2, char a3)
{
  result = sub_27F18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_27DA0(size_t a1, int64_t a2, char a3)
{
  result = sub_28134(a1, a2, a3, *v3, &qword_81A40, &qword_707B0, &type metadata accessor for SpeechPackage.Phrase);
  *v3 = result;
  return result;
}

size_t sub_27DE4(size_t a1, int64_t a2, char a3)
{
  result = sub_28134(a1, a2, a3, *v3, &qword_81A38, &qword_707A8, &type metadata accessor for SpeechPackage.Interpretation);
  *v3 = result;
  return result;
}

uint64_t sub_27E28(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

size_t sub_27E70(size_t a1, int64_t a2, char a3)
{
  result = sub_28134(a1, a2, a3, *v3, &qword_81A30, &qword_707A0, &type metadata accessor for SpeechPackage.Token);
  *v3 = result;
  return result;
}

char *sub_27EB4(char *a1, int64_t a2, char a3)
{
  result = sub_28024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_27ED4(size_t a1, int64_t a2, char a3)
{
  result = sub_28134(a1, a2, a3, *v3, &qword_81850, &qword_70430, &type metadata accessor for TypedValue);
  *v3 = result;
  return result;
}

char *sub_27F18(char *result, int64_t a2, char a3, char *a4)
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
    sub_5708(&qword_81A48, &qword_707B8);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_28024(char *result, int64_t a2, char a3, char *a4)
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
    sub_5708(&qword_81A50, &qword_707C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_28134(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5708(a5, a6);
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

uint64_t sub_28310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_5708(&qword_81B18, qword_708F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = sub_6B61C();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_28418, 0, 0);
}

uint64_t sub_28418()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  sub_23D20(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[9];
    v6 = v0[5];
    v8 = v0[3];
    v7 = v0[4];
    sub_5E20(v0[6], &qword_81B18, qword_708F0);
    sub_6D57C(48);

    sub_6B7AC();
    sub_11FB4(&qword_81768, &type metadata accessor for Input);
    v17._countAndFlagsBits = sub_6D61C();
    sub_6D33C(v17);

    *v7 = 0xD00000000000002ELL;
    v7[1] = 0x800000000006F090;
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    sub_11FB4(&qword_81470, type metadata accessor for IFFlowError);
    swift_willThrowTypedImpl();
  }

  else
  {
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    v13 = v0[5];
    v14 = v0[2];
    (*(v11 + 32))(v10, v0[6], v12);
    (*(v11 + 16))(v13, v10, v12);
    (*(v11 + 56))(v13, 0, 1, v12);
    sub_6B77C();
    (*(v11 + 8))(v10, v12);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_286C4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_6B5AC();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(sub_5708(&qword_81520, &qword_708D0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(sub_5708(&qword_81B08, &qword_708D8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = sub_6B89C();
  v2[14] = v8;
  v9 = *(v8 - 8);
  v2[15] = v9;
  v10 = *(v9 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_28850, 0, 0);
}

uint64_t sub_28850()
{
  if (*(v0[8] + 56) == 1)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v1 = sub_6D04C();
    sub_5CE4(v1, qword_839A0);
    v2 = sub_6D03C();
    v3 = sub_6D45C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "IFFlow Confirmation for GenAI Media QnA won't re-prompt on empty parse.", v4, 2u);
    }

    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[13];
    v8 = v0[8];

    sub_9878(v8 + 16, (v0 + 2));
    sub_5708(&qword_81B10, &qword_708E0);
    v9 = swift_dynamicCast();
    v10 = *(v6 + 56);
    if (v9)
    {
      v12 = v0[15];
      v11 = v0[16];
      v14 = v0[13];
      v13 = v0[14];
      v16 = v0[11];
      v15 = v0[12];
      v17 = v0[10];
      v33 = v0[9];
      v18 = v0[7];
      v10(v14, 0, 1, v13);
      (*(v12 + 32))(v11, v14, v13);
      sub_6B84C();
      (*(v17 + 104))(v16, enum case for DialogEngineOutput.none(_:), v33);
      v18[3] = v13;
      v18[4] = &protocol witness table for AceOutput;
      sub_97B0(v18);
      sub_6B87C();
      (*(v12 + 8))(v11, v13);
    }

    else
    {
      v25 = v0[13];
      v26 = v0[7];
      v10(v25, 1, 1, v0[14]);
      sub_5E20(v25, &qword_81B08, &qword_708D8);
      sub_6B33C();
      sub_6B32C();
    }
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v19 = sub_6D04C();
    sub_5CE4(v19, qword_839A0);
    v20 = sub_6D03C();
    v21 = sub_6D45C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "IFFlow Confirmation re-prompting on empty parse.", v22, 2u);
    }

    v23 = v0[7];
    v24 = v0[8];

    sub_9878(v24 + 16, v23);
  }

  v27 = v0[16];
  v28 = v0[12];
  v29 = v0[13];
  v30 = v0[11];

  v31 = v0[1];

  return v31();
}

uint64_t sub_28BDC()
{
  sub_9964((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_28C44()
{
  v0 = sub_5708(&qword_81B18, qword_708F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  if (sub_22C60())
  {

    return static ActionForInput.cancel()();
  }

  else
  {
    sub_23D20(v3);
    v4 = sub_6B61C();
    v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
    sub_5E20(v3, &qword_81B18, qword_708F0);
    if (v5 == 1)
    {
      return sub_6B40C();
    }

    else
    {
      return sub_6B3FC();
    }
  }
}

uint64_t sub_28D68(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IFFlowError();
  v2[2] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v2[3] = v7;
  v8 = swift_task_alloc();
  v2[4] = v8;
  *v8 = v2;
  v8[1] = sub_11A00;

  return sub_28310(a1, a2, v7);
}

uint64_t sub_28E48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_12CEC;

  return sub_286C4(a1);
}

uint64_t sub_28EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_12CEC;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t sub_28FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_E728;

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, v7, a3);
}

uint64_t sub_290A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12CEC;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t sub_29178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_12CEC;

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

uint64_t sub_29260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v211 = a6;
  v195 = a4;
  v210 = a3;
  v188 = a2;
  v214 = a7;
  v213 = *v7;
  v10 = sub_5708(&qword_81770, &unk_70F70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v189 = &v164 - v12;
  v186 = sub_6BEEC();
  v184 = *(v186 - 8);
  v13 = *(v184 + 64);
  __chkstk_darwin(v186);
  v187 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_6AE9C();
  v192 = *(v197 - 8);
  v15 = *(v192 + 64);
  __chkstk_darwin(v197);
  v190 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_5708(&unk_82030, &qword_70370);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v183 = &v164 - v19;
  v194 = sub_6C89C();
  v193 = *(v194 - 8);
  v20 = *(v193 + 64);
  __chkstk_darwin(v194);
  v191 = &v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_6C54C();
  v201 = *(v22 - 8);
  v202 = v22;
  v23 = *(v201 + 64);
  __chkstk_darwin(v22);
  v200 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_6C86C();
  v207 = *(v198 - 8);
  v25 = *(v207 + 64);
  v26 = __chkstk_darwin(v198);
  v181 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v206 = &v164 - v28;
  v29 = sub_6C35C();
  v208 = *(v29 - 8);
  v209 = v29;
  v30 = *(v208 + 64);
  v31 = __chkstk_darwin(v29);
  v185 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v182 = &v164 - v34;
  __chkstk_darwin(v33);
  v199 = &v164 - v35;
  v36 = sub_6C4EC();
  v204 = *(v36 - 8);
  v205 = v36;
  v37 = v204[8];
  v38 = __chkstk_darwin(v36);
  v178 = &v164 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v203 = &v164 - v40;
  v41 = sub_5708(&qword_81B18, qword_708F0);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v164 - v43;
  v45 = sub_6B61C();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v45);
  v179 = &v164 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v196 = &v164 - v51;
  v52 = __chkstk_darwin(v50);
  v180 = &v164 - v53;
  v54 = __chkstk_darwin(v52);
  v177 = &v164 - v55;
  v56 = __chkstk_darwin(v54);
  v212 = &v164 - v57;
  v58 = *(a5 - 8);
  v59 = *(v58 + 64);
  __chkstk_darwin(v56);
  v61 = &v164 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_6B37C();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  __chkstk_darwin(v62);
  v66 = &v164 - v65;
  (*(v63 + 16))(&v164 - v65, a1, v62);
  v67 = (*(v63 + 88))(v66, v62);
  if (v67 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v63 + 96))(v66, v62);
    (*(v58 + 32))(v61, v66, a5);
    sub_6B75C();
    v68 = v61;
    if ((*(v46 + 48))(v44, 1, v45) == 1)
    {
      (*(v58 + 8))(v61, a5);
      sub_5E20(v44, &qword_81B18, qword_708F0);
LABEL_20:
      *v214 = 0;
      type metadata accessor for IFFlowError();
      goto LABEL_21;
    }

    v71 = v45;
    v72 = v212;
    (*(v46 + 32))(v212, v44, v45);
    v73 = v199;
    sub_6C81C();
    v75 = v208;
    v74 = v209;
    v76 = v208 + 88;
    v176 = *(v208 + 88);
    v77 = v176(v73, v209);
    if (v77 != enum case for MessagePayload.systemResponse(_:))
    {
      (*(v46 + 8))(v72, v71);
      (*(v58 + 8))(v68, a5);
      (*(v75 + 8))(v73, v74);
      goto LABEL_20;
    }

    v175 = v77;
    v78 = *(v75 + 96);
    v170 = v75 + 96;
    v169 = v78;
    v78(v73, v74);
    v79 = v204[4];
    v168 = v204 + 4;
    v167 = v79;
    v79(v203, v73, v205);
    v80 = v200;
    sub_4B4CC(v200);
    v81 = (*(v201 + 88))(v80, v202);
    v199 = v71;
    v211 = v46;
    if (v81 == enum case for StatementOutcome.actionConfirmation(_:))
    {
      v172 = v68;
      v173 = v58;
      v174 = a5;
      v82 = v207;
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v171 = v76;
      v83 = sub_6D04C();
      sub_5CE4(v83, qword_839A0);
      v84 = sub_6D03C();
      v85 = sub_6D44C();
      v86 = os_log_type_enabled(v84, v85);
      v87 = v206;
      v88 = v180;
      if (v86)
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_0, v84, v85, "IFFlow responding to actionConfirmation", v89, 2u);
      }

      v90 = v211;
      v91 = *(v211 + 16);
      v92 = v199;
      v91(v88, v212, v199);
      v93 = *(v90 + 88);
      v94 = v93(v88, v92);
      v95 = enum case for ConfirmationResponse.confirmed(_:);
      v96 = enum case for ConfirmationResponse.rejected(_:);
      v97 = &enum case for SystemPromptResolution.UserAction.actionConfirmed(_:);
LABEL_31:
      v166 = v95;
      v118 = v94 == v95;
      v165 = v96;
      if (v94 != v95 && v94 != v96)
      {
        (*(v211 + 8))(v88, v199);
      }

      *v87 = v118;
      v119 = v198;
      (*(v82 + 104))(v87, *v97, v198);
      (*(v201 + 8))(v200, v202);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v120 = sub_6D04C();
      sub_5CE4(v120, qword_839A0);
      v121 = v211;
      v122 = v196;
      v123 = v199;
      v91(v196, v212, v199);
      v124 = sub_6D03C();
      v125 = sub_6D44C();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v215 = v127;
        *v126 = 136315138;
        v128 = v91;
        v129 = v93;
        v130 = v179;
        v128(v179, v122, v123);
        v131 = v129(v130, v123);
        if (v131 == v166)
        {
          v132 = 0xE900000000000064;
          v133 = 0x656D7269666E6F63;
        }

        else
        {
          v133 = 0x64657463656A6572;
          if (v131 != v165)
          {
            (*(v211 + 8))(v179, v123);
          }

          v132 = 0xE800000000000000;
        }

        v137 = v191;
        v202 = *(v211 + 8);
        v202(v196, v123);
        v141 = sub_1076C(v133, v132, &v215);

        *(v126 + 4) = v141;
        _os_log_impl(&dword_0, v124, v125, "IFFlow Confirmation %s. Forwarding to IF", v126, 0xCu);
        sub_9964(v127);

        v119 = v198;
        v82 = v207;
      }

      else
      {

        v202 = *(v121 + 8);
        v202(v122, v123);
        v137 = v191;
      }

      v142 = v192;
      (*(v192 + 56))(v183, 1, 1, v197);
      v143 = v190;
      sub_6C80C();
      (*(v82 + 16))(v181, v206, v119);
      (*(v184 + 16))(v187, v188, v186);
      v144 = enum case for SystemPromptResolution.ResolutionInput.touch(_:);
      v145 = sub_6C85C();
      v146 = *(v145 - 8);
      v147 = v189;
      (*(v146 + 104))(v189, v144, v145);
      (*(v146 + 56))(v147, 0, 1, v145);
      sub_6C87C();
      v201 = *(sub_5708(&qword_81788, &qword_70380) + 48);
      sub_6C82C();
      v148 = v182;
      sub_A17C(v137, v195);
      v149 = v208;
      v150 = v209;
      (*(v208 + 104))(v148, enum case for MessagePayload.request(_:), v209);
      v151 = v214;
      sub_30BF8(v143, v148);
      v152 = *(v149 + 8);
      v152(v148, v150);
      (*(v142 + 8))(v143, v197);
      v153 = v185;
      sub_6C81C();
      v154 = v176(v153, v150);
      if (v154 == v175)
      {
        v169(v153, v150);
        v155 = v178;
        v156 = v205;
        v167(v178, v153, v205);
        v157 = v201;
        sub_4458(v155, &v151[v201]);
        v158 = v204[1];
        v158(v155, v156);
        (*(v193 + 8))(v137, v194);
        (*(v207 + 8))(v206, v198);
        v158(v203, v156);
        v202(v212, v199);
        (*(v173 + 8))(v172, v174);
        v159 = 0;
        v160 = v157;
      }

      else
      {
        (*(v193 + 8))(v137, v194);
        (*(v207 + 8))(v206, v198);
        (v204[1])(v203, v205);
        v202(v212, v199);
        (*(v173 + 8))(v172, v174);
        v152(v153, v150);
        v159 = 1;
        v160 = v201;
      }

      v161 = sub_6CD2C();
      (*(*(v161 - 8) + 56))(&v151[v160], v159, 1, v161);
      v162 = *(v213 + 80);
      v163 = *(v213 + 88);
      type metadata accessor for IFFlow.State();
      return swift_storeEnumTagMultiPayload();
    }

    v110 = v214;
    v82 = v207;
    if (v81 == enum case for StatementOutcome.parameterConfirmation(_:))
    {
      v172 = v68;
      v173 = v58;
      v174 = a5;
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v171 = v76;
      v111 = sub_6D04C();
      sub_5CE4(v111, qword_839A0);
      v112 = sub_6D03C();
      v113 = sub_6D44C();
      v114 = os_log_type_enabled(v112, v113);
      v87 = v206;
      v88 = v177;
      if (v114)
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_0, v112, v113, "IFFlow responding to parameterConfirmation", v115, 2u);
        v82 = v207;
      }

      v116 = v211;
      v91 = *(v211 + 16);
      v117 = v199;
      v91(v88, v212, v199);
      v93 = *(v116 + 88);
      v94 = v93(v88, v117);
      v95 = enum case for ConfirmationResponse.confirmed(_:);
      v96 = enum case for ConfirmationResponse.rejected(_:);
      v97 = &enum case for SystemPromptResolution.UserAction.parameterConfirmed(_:);
      goto LABEL_31;
    }

    (v204[1])(v203, v205);
    (*(v46 + 8))(v212, v71);
    (*(v58 + 8))(v68, a5);
    v138 = sub_6C83C();
    (*(*(v138 - 8) + 16))(v110, v210, v138);
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    v139 = *(v213 + 80);
    v140 = *(v213 + 88);
    type metadata accessor for IFFlow.State();
    swift_storeEnumTagMultiPayload();
    return (*(v201 + 8))(v200, v202);
  }

  else
  {
    if (v67 == enum case for PromptResult.error<A>(_:))
    {
      (*(v63 + 96))(v66, v62);
      v69 = v66[8];
      v70 = v214;
      *v214 = *v66;
      v70[8] = v69;
      type metadata accessor for IFFlowError();
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v105 = *(v213 + 80);
      v106 = *(v213 + 88);
      type metadata accessor for IFFlow.State();
      return swift_storeEnumTagMultiPayload();
    }

    v98 = v214;
    if (v67 == enum case for PromptResult.cancelled<A>(_:))
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v99 = sub_6D04C();
      sub_5CE4(v99, qword_839A0);
      v100 = sub_6D03C();
      v101 = sub_6D45C();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_0, v100, v101, "Exiting IFFlow, received userCancelled", v102, 2u);
      }

      *v98 = 0;
      v98[8] = 0;
      v103 = *(v213 + 80);
      v104 = *(v213 + 88);
      type metadata accessor for IFFlow.State();
      return swift_storeEnumTagMultiPayload();
    }

    if (v67 == enum case for PromptResult.unanswered<A>(_:))
    {
      *v214 = 0;
      type metadata accessor for IFFlowError();
      swift_storeEnumTagMultiPayload();
      v108 = *(v213 + 80);
      v109 = *(v213 + 88);
      type metadata accessor for IFFlow.State();
      return swift_storeEnumTagMultiPayload();
    }

    v215 = 0;
    v216 = 0xE000000000000000;
    sub_6D57C(35);

    v215 = 0xD000000000000021;
    v216 = 0x800000000006EDA0;
    swift_getWitnessTable();
    v217._countAndFlagsBits = sub_4A254();
    sub_6D33C(v217);

    v134 = v216;
    *v98 = v215;
    *(v98 + 1) = v134;
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    v135 = *(v213 + 80);
    v136 = *(v213 + 88);
    type metadata accessor for IFFlow.State();
    swift_storeEnumTagMultiPayload();
    return (*(v63 + 8))(v66, v62);
  }
}

uint64_t sub_2A9C0()
{
  v1 = v0;
  v2 = sub_6BCEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DeviceIdiom.car(_:))
  {
    return 1;
  }

  if (v7 == enum case for DeviceIdiom.homepod(_:))
  {
    return 3;
  }

  if (v7 == enum case for DeviceIdiom.mac(_:))
  {
    return 4;
  }

  if (v7 == enum case for DeviceIdiom.pad(_:))
  {
    return 7;
  }

  if (v7 == enum case for DeviceIdiom.pod(_:))
  {
    return 5;
  }

  if (v7 == enum case for DeviceIdiom.phone(_:))
  {
    return 6;
  }

  if (v7 == enum case for DeviceIdiom.watch(_:))
  {
    return 8;
  }

  if (v7 == enum case for DeviceIdiom.tv(_:))
  {
    return 9;
  }

  if (v7 == enum case for DeviceIdiom.reality(_:))
  {
    return 10;
  }

  if (v7 != enum case for DeviceIdiom.unknown(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_2ABCC(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v108 = a5;
  v113 = a3;
  v100 = a2;
  v98 = a1;
  v6 = sub_6BCEC();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  __chkstk_darwin(v6);
  v105 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6BDBC();
  v104 = *(v9 - 8);
  v10 = *(v104 + 64);
  v11 = __chkstk_darwin(v9);
  v103 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v112 = (&v89 - v13);
  v14 = sub_6BD2C();
  v101 = *(v14 - 8);
  v102 = v14;
  v15 = *(v101 + 64);
  __chkstk_darwin(v14);
  v99 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_6BD0C();
  v96 = *(v97 - 8);
  v17 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_6BCDC();
  v93 = *(v94 - 8);
  v19 = *(v93 + 64);
  __chkstk_darwin(v94);
  v89 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_5708(&qword_81B20, &qword_70908);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v89 - v23;
  v25 = sub_5708(&qword_81B28, &qword_70910);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v110 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v92 = &v89 - v29;
  v30 = sub_6BDDC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_6BD4C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6BD6C();
  sub_6BD3C();
  (*(v36 + 8))(v39, v35);
  v40 = sub_6BDCC();
  (*(v31 + 8))(v34, v30);
  v41 = *(v40 + 16);
  v111 = a4;
  if (v41)
  {
    v91 = v9;
    v42 = sub_2BC1C(v41, 0);
    v43 = sub_2C778(v116, v42 + 4, v41, v40);

    sub_2C8D0();
    if (v43 != v41)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v9 = v91;
  }

  else
  {
    v42 = &_swiftEmptyArrayStorage;
  }

  v116[0] = v42;
  sub_2BCA0(v116);
  v45 = v103;
  v44 = v104;
  v46 = v92;

  v91 = v116[0];
  sub_6CE0C();
  v47 = sub_6BDAC();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v24, 1, v47) == 1)
  {
    sub_5E20(v24, &qword_81B20, &qword_70908);
    v49 = 1;
  }

  else
  {
    sub_6BD9C();
    (*(v48 + 8))(v24, v47);
    v49 = 0;
  }

  v50 = v110;
  v51 = v93;
  v52 = v94;
  (*(v93 + 56))(v46, v49, 1, v94);
  sub_2C8D8(v46, v50);
  if ((*(v51 + 48))(v50, 1, v52) == 1)
  {
    sub_5E20(v46, &qword_81B28, &qword_70910);
    v90 = 0;
    v110 = 0;
  }

  else
  {
    v53 = v46;
    v54 = v89;
    (*(v51 + 32))(v89, v50, v52);
    v116[0] = sub_6BCCC();
    v90 = sub_6D61C();
    v110 = v55;
    (*(v51 + 8))(v54, v52);
    sub_5E20(v53, &qword_81B28, &qword_70910);
  }

  v56 = sub_6D2BC();

  sub_6CDCC();
  v98 = v56;
  if (v57)
  {
    v100 = sub_6D2BC();
  }

  else
  {
    v100 = 0;
  }

  v58 = v95;
  sub_6CDDC();
  sub_6BCFC();
  (*(v96 + 8))(v58, v97);
  v97 = sub_6D2BC();

  v59 = v99;
  sub_6CDEC();
  sub_6BD1C();
  (*(v101 + 8))(v59, v102);
  v102 = sub_6D2BC();

  sub_6CE1C();
  (*(v44 + 104))(v45, enum case for InteractionType.dialogDriven(_:), v9);
  sub_2C948();
  sub_6D35C();
  sub_6D35C();
  if (v116[0] != v114 || v116[1] != v115)
  {
    sub_6D63C();
  }

  v60 = *(v44 + 8);
  v60(v45, v9);
  v60(v112, v9);

  v61.super.super.isa = sub_6D3DC().super.super.isa;
  sub_2C9A0();
  v62.super.super.isa = sub_6D49C(0).super.super.isa;
  sub_6BD8C();
  v63.super.super.isa = sub_6D3DC().super.super.isa;
  sub_6BD7C();
  v64.super.super.isa = sub_6D3DC().super.super.isa;
  v65 = sub_6CE3C();
  if (v65)
  {
    v66 = *(v65 + 16);

    v67.super.super.isa = sub_6D3DC().super.super.isa;
  }

  else
  {
    v67.super.super.isa = 0;
  }

  v68.super.isa = sub_6D37C().super.isa;

  isa = v62.super.super.isa;
  if (v110)
  {
    sub_5708(&qword_81A48, &qword_707B8);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_70000;
    v71 = v110;
    *(v70 + 32) = v90;
    *(v70 + 40) = v71;
  }

  v72.super.isa = sub_6D37C().super.isa;

  v73 = v105;
  sub_6BD5C();
  v74 = sub_2A9C0();
  (*(v106 + 8))(v73, v107);
  if (v108 == 2)
  {
    v75 = 0;
  }

  else
  {
    v75 = sub_6D3DC().super.super.isa;
  }

  v76 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  LODWORD(v88) = v74;
  v87 = v72.super.isa;
  v85 = v64.super.super.isa;
  v86 = v67.super.super.isa;
  v84 = v63.super.super.isa;
  v77 = v98;
  v112 = v72.super.isa;
  v78 = v100;
  v109 = v67.super.super.isa;
  v79 = v63.super.super.isa;
  v80 = v97;
  v81 = v64.super.super.isa;
  v82 = v102;
  v110 = [v76 initWithSessionID:v98 requestID:v100 inputOrigin:v97 responseMode:v102 isEyesFree:v61.super.super.isa isMultiUser:isa isVoiceTriggerEnabled:v84 isTextToSpeechEnabled:v85 isTriggerlessFollowup:v86 deviceRestrictions:v68.super.isa bargeInModes:v87 identifiedUser:0 encodedLocation:0 countryCode:0 siriLocale:0 contentRestrictions:0 uiScale:0 temperatureUnit:0 allowUserGeneratedContent:0 censorSpeech:0 meCard:0 deviceIdiom:v88 didPSCFire:v75];

  return v110;
}

size_t sub_2B830(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5708(a5, a6);
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

char *sub_2BA0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_5708(&qword_81A48, &qword_707B8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2BB18(char *result, int64_t a2, char a3, char *a4)
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
    sub_5708(&qword_81B40, &qword_70918);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_2BC1C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_5708(&qword_81A48, &qword_707B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

Swift::Int sub_2BCA0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2C9EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2BD0C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_2BD0C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_6D60C(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_6D3BC();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2BED4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2BE04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2BE04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_6D63C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2BED4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2C764(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2C4B0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_6D63C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_6D63C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2BB18(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2BB18((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2C4B0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2C764(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2C6D8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_6D63C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2C4B0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_6D63C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_6D63C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2C6D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2C764(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_2C778(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2C8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81B28, &qword_70910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2C948()
{
  result = qword_81B30;
  if (!qword_81B30)
  {
    sub_6BDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81B30);
  }

  return result;
}

unint64_t sub_2C9A0()
{
  result = qword_81B38;
  if (!qword_81B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_81B38);
  }

  return result;
}

uint64_t sub_2CA00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_6BF0C();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6B31C();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6BF6C();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6C54C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v2, v16);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == enum case for StatementOutcome.success(_:))
  {
    goto LABEL_2;
  }

  v22 = a1;
  if (v21 == enum case for StatementOutcome.snippetStream(_:))
  {
    sub_6B30C();
    return (*(v17 + 8))(v20, v16);
  }

  if (v21 == enum case for StatementOutcome.actionConfirmation(_:))
  {
LABEL_6:
    sub_6B2DC();
    return (*(v17 + 8))(v20, v16);
  }

  if (v21 == enum case for StatementOutcome.toolDisambiguation(_:) || v21 == enum case for StatementOutcome.parameterNeedsValue(_:))
  {
    goto LABEL_9;
  }

  if (v21 == enum case for StatementOutcome.parameterConfirmation(_:))
  {
    goto LABEL_6;
  }

  if (v21 == enum case for StatementOutcome.parameterDisambiguation(_:) || v21 == enum case for StatementOutcome.parameterNotAllowed(_:) || v21 == enum case for StatementOutcome.parameterCandidatesNotFound(_:) || v21 == enum case for StatementOutcome.actionRequirement(_:) || v21 == enum case for StatementOutcome.valueDisambiguation(_:))
  {
LABEL_9:
    sub_6B2EC();
    return (*(v17 + 8))(v20, v16);
  }

  if (v21 != enum case for StatementOutcome.failure(_:))
  {
LABEL_2:
    sub_6B2CC();
    return (*(v17 + 8))(v20, v16);
  }

  (*(v17 + 96))(v20, v16);
  v24 = v29 + 32;
  (*(v29 + 32))(v15, v20, v12);
  sub_6BF5C();
  v26 = v31;
  v25 = v32;
  v27 = (*(v31 + 88))(v7, v32);
  v28 = (v24 - 24);
  if (v27 == enum case for ActionFailure.Failure.noMatchingTool(_:) || v27 == enum case for ActionFailure.Failure.actionCanceled(_:))
  {
    sub_6B2CC();
    (*v28)(v15, v12);
  }

  else
  {
    sub_6B2FC();
    (*v28)(v15, v12);
    (*(v26 + 8))(v7, v25);
  }

  return (*(v30 + 32))(v22, v11, v8);
}

void *sub_2CEB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_27EB4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_27EB4((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_2747C(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2CFB4()
{
  v0 = sub_6AEDC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_6D2AC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_6D29C();
  sub_6AECC();
  result = sub_6D2DC();
  qword_839B8 = result;
  unk_839C0 = v5;
  return result;
}

uint64_t sub_2D0B8@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v149 = a8;
  v146 = a7;
  v148 = a6;
  v150 = a4;
  v151 = a5;
  v145 = a2;
  v155 = a1;
  v156 = a9;
  v10 = sub_5708(&qword_81B78, &qword_70948);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v131 = &v126 - v12;
  v130 = sub_6CA4C();
  v129 = *(v130 - 8);
  v13 = *(v129 + 64);
  __chkstk_darwin(v130);
  v128 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_6C75C();
  v133 = *(v134 - 8);
  v15 = *(v133 + 64);
  __chkstk_darwin(v134);
  v132 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_6C78C();
  v136 = *(v137 - 8);
  v17 = *(v136 + 64);
  v18 = __chkstk_darwin(v137);
  v126 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v141 = &v126 - v20;
  v140 = sub_6C7AC();
  v139 = *(v140 - 8);
  v21 = *(v139 + 64);
  v22 = __chkstk_darwin(v140);
  v127 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v138 = &v126 - v24;
  v25 = sub_5708(&qword_81B80, &qword_70950);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v126 - v27;
  v29 = sub_6CADC();
  v152 = *(v29 - 8);
  v153 = v29;
  v30 = *(v152 + 64);
  __chkstk_darwin(v29);
  v135 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_6C19C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_6C1BC();
  v37 = *(v154 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v154);
  v40 = &v126 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_6C35C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v126 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_6CA8C();
  v143 = *(v144 - 8);
  v46 = *(v143 + 64);
  __chkstk_darwin(v144);
  v142 = &v126 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = a3;
  if (a3)
  {
    (*(v42 + 16))(v45, v155, v41);
    v48 = (*(v42 + 88))(v45, v41);
    if (v48 == enum case for MessagePayload.actionSummaryUpdate(_:))
    {
      (*(v42 + 96))(v45, v41);
      v49 = v37;
      v50 = v154;
      (*(v37 + 32))(v40, v45, v154);
      v51 = [objc_allocWithZone(NSListFormatter) init];
      sub_6C1AC();
      v52 = sub_6C18C();
      (*(v33 + 8))(v36, v32);
      v53 = v51;
      v54 = sub_30270(v52, v53);

      __chkstk_darwin(v55);
      *(&v126 - 2) = v40;
      *(&v126 - 1) = v54;
      sub_6CAAC();

      v57 = v152;
      v56 = v153;
      if ((*(v152 + 48))(v28, 1, v153) == 1)
      {
        sub_5E20(v28, &qword_81B80, &qword_70950);
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v58 = sub_6D04C();
        sub_5CE4(v58, qword_839A0);
        v59 = sub_6D03C();
        v60 = sub_6D46C();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_0, v59, v60, "Could not build IntelligenceFlowStatusUpdateMessage from ActionSummary. Missing fields?", v61, 2u);
        }

        v62 = sub_6B1DC();
        (*(*(v62 - 8) + 56))(v156, 1, 1, v62);
        return (*(v37 + 8))(v40, v50);
      }

      v92 = *(v57 + 32);
      v93 = v135;
      v92(v135, v28, v56);
      v94 = v142;
      v92(v142, v93, v56);
      v95 = v49;
      v96 = v143;
      v97 = v144;
      (*(v143 + 104))(v94, enum case for IntelligenceFlowStatusUpdateMessage.StatusUpdate.actionSummary(_:), v144);
      v98 = (*(v95 + 8))(v40, v50);
LABEL_25:
      __chkstk_darwin(v98);
      v99 = v148;
      v100 = v149;
      *(&v126 - 8) = v146;
      *(&v126 - 7) = v100;
      *(&v126 - 6) = v99;
      v101 = v147;
      *(&v126 - 5) = v145;
      *(&v126 - 4) = v101;
      v102 = v151;
      *(&v126 - 3) = v150;
      *(&v126 - 2) = v102;
      *(&v126 - 1) = v94;
      v103 = sub_6CB6C();
      v104 = objc_allocWithZone(v103);
      v105 = sub_6CAEC();
      if (v105)
      {
        v160[3] = v103;
        v160[4] = &protocol witness table for IntelligenceFlowStatusUpdateMessage;
        v160[0] = v105;
        v159 = 0;
        v157 = 0u;
        v158 = 0u;
        v106 = v156;
        sub_6B1CC();
        v107 = sub_6B1DC();
        (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
      }

      else
      {
        v113 = sub_6B1DC();
        (*(*(v113 - 8) + 56))(v156, 1, 1, v113);
      }

      return (*(v96 + 8))(v94, v97);
    }

    if (v48 != enum case for MessagePayload.statusUpdate(_:))
    {
      v108 = sub_6B1DC();
      (*(*(v108 - 8) + 56))(v156, 1, 1, v108);
      return (*(v42 + 8))(v45, v41);
    }

    (*(v42 + 96))(v45, v41);
    v72 = v139;
    v73 = v138;
    v74 = v140;
    (*(v139 + 32))(v138, v45, v140);
    v75 = v141;
    sub_6C79C();
    v76 = v136;
    v77 = v137;
    v78 = (*(v136 + 88))(v75, v137);
    if (v78 == enum case for SessionStatusUpdate.Payload.executionProgressUpdate(_:))
    {
      (*(v76 + 96))(v75, v77);
      v79 = v133;
      v80 = v132;
      v81 = v75;
      v82 = v134;
      v83 = (*(v133 + 32))(v132, v81, v134);
      __chkstk_darwin(v83);
      *(&v126 - 2) = v80;
      v84 = v131;
      sub_6CA0C();
      v85 = v129;
      v86 = v130;
      if ((*(v129 + 48))(v84, 1, v130) != 1)
      {
        (*(v72 + 8))(v73, v74);
        v114 = *(v85 + 32);
        v115 = v128;
        v114(v128, v84, v86);
        v94 = v142;
        v114(v142, v115, v86);
        v96 = v143;
        v97 = v144;
        (*(v143 + 104))(v94, enum case for IntelligenceFlowStatusUpdateMessage.StatusUpdate.progressUpdate(_:), v144);
        v98 = (*(v79 + 8))(v80, v82);
        goto LABEL_25;
      }

      sub_5E20(v84, &qword_81B78, &qword_70948);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v87 = sub_6D04C();
      sub_5CE4(v87, qword_839A0);
      v88 = sub_6D03C();
      v89 = sub_6D46C();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_0, v88, v89, "Could not build IntelligenceFlowStatusUpdateMessage from ProgressUpdate. Missing fields?", v90, 2u);
      }

      (*(v72 + 8))(v73, v74);
      v91 = sub_6B1DC();
      (*(*(v91 - 8) + 56))(v156, 1, 1, v91);
      return (*(v79 + 8))(v80, v82);
    }

    else
    {
      if (v78 == enum case for SessionStatusUpdate.Payload.intermediateQueryResult(_:))
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v109 = sub_6D04C();
        sub_5CE4(v109, qword_839A0);
        v110 = sub_6D03C();
        v111 = sub_6D46C();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&dword_0, v110, v111, "IntermediateQueryResult is not supported.", v112, 2u);
        }

        (*(v72 + 8))(v73, v74);
      }

      else
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v116 = sub_6D04C();
        sub_5CE4(v116, qword_839A0);
        v117 = v127;
        (*(v72 + 16))(v127, v73, v74);
        v118 = sub_6D03C();
        v119 = sub_6D46C();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v160[0] = v155;
          *v120 = 136315138;
          v121 = v117;
          v122 = v126;
          sub_6C79C();
          (*(v76 + 8))(v122, v77);
          v123 = *(v72 + 8);
          v123(v121, v74);
          *(v120 + 4) = sub_1076C(0x64616F6C796150, 0xE700000000000000, v160);
          _os_log_impl(&dword_0, v118, v119, "Unsupported message payload type %s.", v120, 0xCu);
          sub_9964(v155);

          v75 = v141;

          v123(v73, v74);
        }

        else
        {

          v124 = *(v72 + 8);
          v124(v117, v74);
          v124(v73, v74);
        }
      }

      v125 = sub_6B1DC();
      (*(*(v125 - 8) + 56))(v156, 1, 1, v125);
      return (*(v76 + 8))(v75, v77);
    }
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v64 = sub_6D04C();
    sub_5CE4(v64, qword_839A0);
    v65 = sub_6D03C();
    v66 = sub_6D46C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v65, v66, "RequestId not set, skipping message posting.", v67, 2u);
    }

    v68 = sub_6B1DC();
    v69 = *(*(v68 - 8) + 56);
    v70 = v68;
    v71 = v156;

    return v69(v71, 1, 1, v70);
  }
}

uint64_t sub_2E344@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v102 = a3;
  v4 = sub_6C16C();
  v5 = *(v4 - 8);
  v96 = v4;
  v97 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v91 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v98 = (&v88 - v9);
  v10 = sub_6C14C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6C12C();
  v93 = *(v15 - 8);
  v94 = v15;
  v16 = v93[8];
  __chkstk_darwin(v15);
  v92 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_6C10C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v89 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v95 = &v88 - v24;
  __chkstk_darwin(v23);
  v26 = &v88 - v25;
  v27 = sub_6CA9C();
  v100 = *(v27 - 8);
  v101 = v27;
  v28 = *(v100 + 64);
  __chkstk_darwin(v27);
  v30 = (&v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = a1;
  v32 = a1;
  v33 = *(v19 + 16);
  v33(v26, v32, v18);
  v34 = (*(v19 + 88))(v26, v18);
  if (v34 == enum case for MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.value(_:))
  {
    (*(v19 + 96))(v26, v18);
    (*(v11 + 32))(v14, v26, v10);
    v35 = sub_6C13C();
    v37 = v36;

    (*(v19 + 8))(v31, v18);
    (*(v11 + 8))(v14, v10);
    *v30 = v35;
LABEL_6:
    v51 = &enum case for IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary.value(_:);
LABEL_7:
    v30[1] = v37;
    v53 = v100;
    v52 = v101;
    (*(v100 + 104))(v30, *v51, v101);
    v54 = v102;
    (*(v53 + 32))(v102, v30, v52);
    v55 = 0;
    return (*(v53 + 56))(v54, v55, 1, v52);
  }

  v90 = v31;
  if (v34 == enum case for MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.values(_:))
  {
    v38 = v19;
    v39 = *(v19 + 96);
    v40 = v18;
    v39(v26, v18);
    v41 = v97;
    v42 = v98;
    v43 = v96;
    (*(v97 + 32))(v98, v26, v96);
    v44 = sub_6C15C();
    sub_2CEB4(v44);

    isa = sub_6D37C().super.isa;

    v46 = v99;
    v47 = [v99 stringFromItems:isa];

    if (v47)
    {
      v48 = sub_6D2CC();
      v49 = v41;
      v37 = v50;

      (*(v38 + 8))(v90, v40);
      (*(v49 + 8))(v42, v43);
      *v30 = v48;
      goto LABEL_6;
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v74 = sub_6D04C();
    sub_5CE4(v74, qword_839A0);
    v75 = v91;
    v76 = v98;
    (*(v41 + 16))(v91, v98, v43);
    v77 = sub_6D03C();
    v78 = sub_6D46C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v103 = v93;
      *v79 = 136315138;
      sub_6C15C();
      v80 = sub_6D39C();
      v94 = v38;
      v95 = v40;
      v81 = v80;
      v82 = v43;
      v84 = v83;

      v85 = *(v97 + 8);
      v85(v75, v82);
      v86 = sub_1076C(v81, v84, &v103);

      *(v79 + 4) = v86;
      _os_log_impl(&dword_0, v77, v78, "Couldn't concatenate parameter summaries: %s", v79, 0xCu);
      sub_9964(v93);

      (*(v94 + 8))(v90, v95);
      v85(v98, v82);
    }

    else
    {

      (*(v38 + 8))(v90, v40);
      v87 = *(v41 + 8);
      v87(v75, v43);
      v87(v76, v43);
    }

    v55 = 1;
    v52 = v101;
    v54 = v102;
    v53 = v100;
  }

  else
  {
    if (v34 == enum case for MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.placeholder(_:))
    {
      (*(v19 + 96))(v26, v18);
      v58 = v92;
      v57 = v93;
      v59 = v94;
      (v93[4])(v92, v26, v94);
      v60 = sub_6C11C();
      v37 = v61;

      (*(v19 + 8))(v90, v18);
      (v57[1])(v58, v59);
      *v30 = v60;
      v51 = &enum case for IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary.placeholder(_:);
      goto LABEL_7;
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v62 = sub_6D04C();
    sub_5CE4(v62, qword_839A0);
    v63 = v90;
    v64 = v18;
    v33(v95, v90, v18);
    v65 = sub_6D03C();
    v66 = sub_6D46C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v103 = v98;
      *v67 = 136315138;
      LODWORD(v97) = v66;
      v68 = v95;
      v33(v89, v95, v18);
      v69 = sub_6D2EC();
      v71 = v70;
      v72 = *(v19 + 8);
      v72(v68, v18);
      v73 = sub_1076C(v69, v71, &v103);
      v64 = v18;

      *(v67 + 4) = v73;
      _os_log_impl(&dword_0, v65, v97, "Unknown ParameterSummary case: %s", v67, 0xCu);
      sub_9964(v98);

      v72(v90, v18);
    }

    else
    {

      v72 = *(v19 + 8);
      v72(v63, v18);
      v72(v95, v18);
    }

    v52 = v101;
    v54 = v102;
    v53 = v100;
    v72(v26, v64);
    v55 = 1;
  }

  return (*(v53 + 56))(v54, v55, 1, v52);
}

uint64_t sub_2ED9C()
{
  v0 = sub_6C19C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6C1AC();
  sub_6C17C();
  (*(v1 + 8))(v4, v0);
  sub_6CABC();

  return sub_6CACC();
}

uint64_t sub_2EEA4()
{
  sub_6C74C();
  sub_6CA3C();
  sub_6C73C();
  sub_6CA2C();
  sub_6C72C();
  return sub_6CA1C();
}

uint64_t sub_2EF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a5;
  v51 = a7;
  v49 = a6;
  v52 = a3;
  v53 = a4;
  v11 = sub_6CA8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5708(&qword_81B68, &qword_70938);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v48 - v18;
  v20 = sub_6CA7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_6CA5C();
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_5E20(v19, &qword_81B68, &qword_70938);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v25 = sub_6D04C();
      sub_5CE4(v25, qword_839A0);
      v26 = sub_6D03C();
      v27 = sub_6D46C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "Could not build IntelligenceFlowStatusUpdateMessage from StatusNotification. Missing fields?", v28, 2u);
      }

      v29 = sub_6B1DC();
      return (*(*(v29 - 8) + 56))(a8, 1, 1, v29);
    }

    else
    {
      v48 = a8;
      (*(v21 + 32))(v24, v19, v20);
      (*(v21 + 16))(v15, v24, v20);
      v37 = (*(v12 + 104))(v15, enum case for IntelligenceFlowStatusUpdateMessage.StatusUpdate.statusNotification(_:), v11);
      __chkstk_darwin(v37);
      v38 = v50;
      v39 = v51;
      *(&v48 - 8) = v49;
      *(&v48 - 7) = v39;
      *(&v48 - 6) = v38;
      *(&v48 - 5) = a1;
      v41 = v52;
      v40 = v53;
      *(&v48 - 4) = a2;
      *(&v48 - 3) = v41;
      *(&v48 - 2) = v40;
      *(&v48 - 1) = v15;
      v42 = sub_6CB6C();
      v43 = objc_allocWithZone(v42);
      v44 = sub_6CAEC();
      if (v44)
      {
        v58 = v42;
        v59 = &protocol witness table for IntelligenceFlowStatusUpdateMessage;
        v56 = 0;
        v57 = v44;
        v54 = 0u;
        v55 = 0u;
        v45 = v48;
        sub_6B1CC();
        (*(v21 + 8))(v24, v20);
        v46 = 0;
      }

      else
      {
        (*(v21 + 8))(v24, v20);
        v46 = 1;
        v45 = v48;
      }

      v47 = sub_6B1DC();
      (*(*(v47 - 8) + 56))(v45, v46, 1, v47);
      return (*(v12 + 8))(v15, v11);
    }
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v31 = sub_6D04C();
    sub_5CE4(v31, qword_839A0);
    v32 = sub_6D03C();
    v33 = sub_6D46C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "RequestId not set, skipping StatusNotificationMessage posting.", v34, 2u);
    }

    v35 = sub_6B1DC();
    v36 = *(*(v35 - 8) + 56);

    return v36(a8, 1, 1, v35);
  }
}

uint64_t sub_2F4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a7;
  v31 = a9;
  v10 = sub_5708(&qword_81B70, &qword_70940);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v30 - v12;
  v14 = sub_5708(&qword_81B60, &qword_70930);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v30 - v16;
  v18 = sub_5708(&unk_82030, &qword_70370);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v30 - v20;

  sub_6CB0C();
  v22 = sub_6AE9C();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a4, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  sub_6CB4C();

  sub_6CB3C();

  sub_6CB1C();
  v24 = enum case for MessageSource.ifFlow(_:);
  v25 = sub_6CC2C();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v17, v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  sub_6CB2C();
  v27 = sub_6CA8C();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v13, v31, v27);
  (*(v28 + 56))(v13, 0, 1, v27);
  return sub_6CAFC();
}

uint64_t sub_2F7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[0] = a9;
  v28[1] = a7;
  v10 = sub_5708(&qword_81B58, qword_70A90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v28 - v12;
  v14 = sub_5708(&qword_81B60, &qword_70930);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v28 - v16;
  v18 = sub_5708(&unk_82030, &qword_70370);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v28 - v20;

  sub_6CBBC();
  v22 = sub_6AE9C();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a4, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  sub_6CBAC();

  sub_6CB9C();
  v24 = enum case for MessageSource.ifFlow(_:);
  v25 = sub_6CC2C();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v17, v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  sub_6CBDC();

  sub_6CB8C();
  sub_2FA80(v28[0], v13);
  return sub_6CBCC();
}

uint64_t sub_2FA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81B58, qword_70A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2FAF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_6AE9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [objc_allocWithZone(SAUIShowRequestHandlingStatus) init];
    sub_6AE8C();
    sub_6AE6C();
    (*(v5 + 8))(v8, v4);
    v10 = sub_6D2BC();

    [v9 setAceId:v10];

    v11 = v9;
    v12 = sub_6D2BC();
    [v11 setRefId:v12];

    [v11 setExecutionInputSystem:SAUIShowRequestHandlingStatusExecutionInputSystemPLANNERValue];
    sub_5708(&qword_81548, &qword_70088);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_6FFF0;
    *(v13 + 32) = v11;
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_6B86C();

    v14 = sub_6B89C();
    return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v16 = sub_6D04C();
    sub_5CE4(v16, qword_839A0);
    v17 = sub_6D03C();
    v18 = sub_6D46C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Can't construct SAUIShowRequestHandlingStatus since execution request ID is Nil", v19, 2u);
    }

    v20 = sub_6B89C();
    v21 = *(*(v20 - 8) + 56);

    return v21(a2, 1, 1, v20);
  }
}

uint64_t sub_2FE38(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_6CA9C();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_5708(qword_81B98, &qword_70968);
  v46 = a2;
  result = sub_6D5DC();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_6D6BC();
      sub_6D31C();
      result = sub_6D6DC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_301B8()
{
  if (qword_812A8 != -1)
  {
    swift_once();
  }

  return sub_6CA6C();
}

uint64_t sub_30270(uint64_t a1, void *a2)
{
  v86 = a2;
  v88 = sub_6C10C();
  v3 = *(v88 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v88);
  v84 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5708(&qword_81B88, &qword_70958);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v68 - v8;
  v89 = sub_6CA9C();
  v10 = *(v89 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v89);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v68 - v14;
  v87 = sub_5708(&qword_81B90, &qword_70960);
  v15 = *(*(v87 - 8) + 64);
  v16 = __chkstk_darwin(v87);
  v75 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v20 = &v68 - v19;
  __chkstk_darwin(v18);
  v82 = &v68 - v21;
  v23 = a1 + 64;
  v22 = *(a1 + 64);
  v24 = 1 << *(a1 + 32);
  v76 = &_swiftEmptyDictionarySingleton;
  v91 = &_swiftEmptyDictionarySingleton;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v80 = v3 + 16;
  v78 = (v10 + 48);
  v71 = v10;
  v73 = (v10 + 32);
  v85 = v3;
  v70 = (v3 + 8);
  v90 = a1;

  v29 = 0;
  v77 = a1 + 64;
  v81 = v27;
  v83 = v9;
  v79 = v20;
  while (1)
  {
    v30 = v29;
    if (!v26)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v29 = v30;
LABEL_10:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v31 | (v29 << 6);
      v33 = (*(v90 + 48) + 16 * v32);
      v35 = *v33;
      v34 = v33[1];
      v36 = v87;
      v37 = v88;
      v38 = *(v85 + 16);
      v39 = v82;
      v38(&v82[*(v87 + 48)], *(v90 + 56) + *(v85 + 72) * v32, v88);
      *v39 = v35;
      v39[1] = v34;
      v40 = v79;
      sub_30900(v39, v79);
      v41 = *(v36 + 48);
      v42 = v40;
      v43 = v40 + v41;
      v44 = v84;
      v38(v84, v43, v37);

      v45 = v86;
      v46 = v83;
      sub_2E344(v44, v45, v83);
      if ((*v78)(v46, 1, v89) != 1)
      {
        break;
      }

      sub_5E20(v42, &qword_81B90, &qword_70960);
      result = sub_5E20(v46, &qword_81B88, &qword_70958);
      v30 = v29;
      v23 = v77;
      v27 = v81;
      if (!v26)
      {
LABEL_7:
        while (1)
        {
          v29 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v29 >= v27)
          {

            return v76;
          }

          v26 = *(v23 + 8 * v29);
          ++v30;
          if (v26)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v47 = *v73;
    v48 = v72;
    v49 = v89;
    (*v73)(v72, v46, v89);
    sub_30900(v42, v75);
    v47(v74, v48, v49);
    v50 = v76[2];
    v27 = v81;
    if (v76[3] <= v50)
    {
      sub_2FE38(v50 + 1, 1);
    }

    v51 = v91;
    v53 = *v75;
    v52 = v75[1];
    v54 = v91[5];
    sub_6D6BC();
    v69 = v52;
    sub_6D31C();
    result = sub_6D6DC();
    v55 = v51 + 8;
    v76 = v51;
    v56 = -1 << *(v51 + 32);
    v57 = result & ~v56;
    v58 = v57 >> 6;
    if (((-1 << v57) & ~v51[(v57 >> 6) + 8]) == 0)
    {
      break;
    }

    v59 = __clz(__rbit64((-1 << v57) & ~v51[(v57 >> 6) + 8])) | v57 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    v64 = *(v87 + 48);
    *(v55 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
    v65 = v76;
    v66 = (v76[6] + 16 * v59);
    v67 = v69;
    *v66 = v53;
    v66[1] = v67;
    v47((v65[7] + *(v71 + 72) * v59), v74, v89);
    ++v65[2];
    result = (*v70)(v75 + v64, v88);
    v23 = v77;
  }

  v60 = 0;
  v61 = (63 - v56) >> 6;
  while (++v58 != v61 || (v60 & 1) == 0)
  {
    v62 = v58 == v61;
    if (v58 == v61)
    {
      v58 = 0;
    }

    v60 |= v62;
    v63 = v55[v58];
    if (v63 != -1)
    {
      v59 = __clz(__rbit64(~v63)) + (v58 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_308F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2ED9C();
}

uint64_t sub_30900(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81B90, &qword_70960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_30974(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_7EE58;
  v6._object = a2;
  v4 = sub_6D5FC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_309C4(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    swift_getAssociatedTypeWitness();
    result = sub_6D4DC();
    if (v6 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_6D4DC();
      if (v7 <= 0x3F)
      {
        v11 = *(result - 8) + 64;
        result = type metadata accessor for IFFlow.State();
        if (v8 <= 0x3F)
        {
          v12 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_30BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6C35C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6AE9C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  (*(v12 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_30BD4();
  sub_6CDBC();

  (*(v5 + 16))(v8, a2, v4);
  return sub_6C7DC();
}

uint64_t sub_30D9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_30BD4();
  *a2 = result;
  return result;
}

uint64_t sub_30DEC(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  sub_5708(a1, a2);
  v4 = *(v3 + 80);
  v6 = *(v3 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  return v7;
}

uint64_t sub_30ECC()
{
  v0 = sub_6CD7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6CD6C();
  sub_6CD5C();
  (*(v1 + 8))(v4, v0);
  sub_6AE5C();
}

uint64_t sub_30FBC(uint64_t *a1)
{
  v3 = *v1;
  v71 = sub_6CFDC();
  v68 = *(v71 - 8);
  v4 = *(v68 + 64);
  v5 = __chkstk_darwin(v71);
  v67 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v66 = v62 - v8;
  v9 = __chkstk_darwin(v7);
  v69 = v62 - v10;
  __chkstk_darwin(v9);
  v12 = v62 - v11;
  v13 = sub_5708(&unk_82030, &qword_70370);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v62 - v15;
  v17 = sub_6AE9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30ECC();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_5E20(v16, &unk_82030, &qword_70370);
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
    return swift_willThrowTypedImpl();
  }

  (*(v18 + 32))(v21, v16, v17);
  v23 = *(v3 + 80);
  v24 = *(v3 + 88);
  v25 = v1 + *(*v1 + 184);
  v26 = v70;
  sub_6CF3C();
  v27 = v17;
  if (!v26)
  {
    return (*(v18 + 8))(v21, v17);
  }

  v70 = v18;
  v73 = v26;
  swift_errorRetain();
  sub_5708(&qword_813D0, qword_6FC50);
  v28 = v71;
  if (swift_dynamicCast())
  {

    v29 = v68;
    v30 = v69;
    (*(v68 + 32))(v69, v12, v28);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v63 = v27;
    v31 = sub_6D04C();
    sub_5CE4(v31, qword_839A0);
    v32 = *(v29 + 16);
    v33 = v66;
    v62[1] = v29 + 16;
    v64 = v32;
    v32(v66, v30, v28);
    v34 = sub_6D03C();
    v35 = v29;
    v36 = sub_6D46C();
    if (os_log_type_enabled(v34, v36))
    {
      v37 = swift_slowAlloc();
      v65 = v21;
      v38 = v37;
      v39 = swift_slowAlloc();
      v72 = v39;
      *v38 = 136315138;
      sub_4B434(&qword_81D40, &type metadata accessor for IFSessionServiceClient.RelayError);
      v40 = sub_6D66C();
      v42 = v41;
      v66 = *(v35 + 8);
      (v66)(v33, v71);
      v43 = sub_1076C(v40, v42, &v72);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_0, v34, v36, "Unable to retrieve currentSessionIdentifier with error: %s", v38, 0xCu);
      sub_9964(v39);

      v21 = v65;
      v28 = v71;
    }

    else
    {

      v66 = *(v29 + 8);
      (v66)(v33, v28);
    }

    v53 = a1;
    v54 = v35;
    v55 = v67;
    v57 = v69;
    v56 = v70;
    v64(v67, v69, v28);
    v58 = (*(v54 + 88))(v55, v28);
    if (v58 == enum case for IFSessionServiceClient.RelayError.protocolIncompatible(_:))
    {
      (*(v54 + 96))(v55, v28);
      *v53 = *v55;
      type metadata accessor for IFFlowError();
      swift_storeEnumTagMultiPayload();
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
      swift_willThrowTypedImpl();
    }

    else
    {
      if (v58 != enum case for IFSessionServiceClient.RelayError.companionNotFound(_:) && v58 != enum case for IFSessionServiceClient.RelayError.companionNotCapable(_:) && v58 != enum case for IFSessionServiceClient.RelayError.companionAIIsOff(_:))
      {
        sub_4B434(&qword_81D40, &type metadata accessor for IFSessionServiceClient.RelayError);
        v59 = swift_allocError();
        v64(v60, v57, v28);
        *v53 = v59;
        type metadata accessor for IFFlowError();
        swift_storeEnumTagMultiPayload();
        sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
        swift_willThrowTypedImpl();
        v61 = v66;
        (v66)(v57, v28);
        (*(v56 + 8))(v21, v63);
        v61(v55, v28);
      }

      type metadata accessor for IFFlowError();
      swift_storeEnumTagMultiPayload();
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
      swift_willThrowTypedImpl();
    }

    (v66)(v57, v28);
    (*(v56 + 8))(v21, v63);
  }

  v65 = v21;

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v44 = sub_6D04C();
  sub_5CE4(v44, qword_839A0);
  swift_errorRetain();
  v45 = sub_6D03C();
  v46 = sub_6D46C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v73 = v48;
    *v47 = 136315138;
    swift_getErrorValue();
    v49 = sub_6D66C();
    v51 = sub_1076C(v49, v50, &v73);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_0, v45, v46, "Unable to retrieve currentSessionIdentifier with error: %s", v47, 0xCu);
    sub_9964(v48);
  }

  v52 = v70;
  *a1 = v26;
  type metadata accessor for IFFlowError();
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
  swift_willThrowTypedImpl();
  return (*(v52 + 8))(v65, v27);
}

uint64_t sub_31A24()
{
  v1 = *v0;
  v58 = type metadata accessor for IFFlowError();
  v2 = *(*(v58 - 8) + 64);
  v3 = __chkstk_darwin(v58);
  v57 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v56 = (v55 - v6);
  v7 = __chkstk_darwin(v5);
  v9 = v55 - v8;
  __chkstk_darwin(v7);
  v11 = v55 - v10;
  v12 = v1[10];
  v13 = v1[11];
  v14 = type metadata accessor for IFFlow.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v55 - v20;
  v22 = v1[26];
  swift_beginAccess();
  v23 = v15;
  v24 = *(v15 + 16);
  v24(v21, &v0[v22], v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_4B304(v21, v11, type metadata accessor for IFFlowError);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v28 = sub_6D04C();
    sub_5CE4(v28, qword_839A0);
    sub_4B3CC(v11, v9, type metadata accessor for IFFlowError);
    v29 = sub_6D03C();
    v30 = sub_6D46C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
      swift_allocError();
      sub_4B3CC(v9, v33, type metadata accessor for IFFlowError);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      sub_4B36C(v9, type metadata accessor for IFFlowError);
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_0, v29, v30, "%@", v31, 0xCu);
      sub_5E20(v32, &qword_81508, &unk_70260);
    }

    else
    {

      sub_4B36C(v9, type metadata accessor for IFFlowError);
    }

    sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
    v26 = swift_allocError();
    sub_4B304(v11, v52, type metadata accessor for IFFlowError);
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v26 = *v21;
    v27 = v21[8];
  }

  else
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_6D57C(57);
    v61._object = 0x800000000006F1C0;
    v61._countAndFlagsBits = 0xD000000000000037;
    sub_6D33C(v61);
    v24(v19, &v0[v22], v14);
    swift_getWitnessTable();
    v35 = sub_6D61C();
    v37 = v36;
    v38 = v15 + 8;
    v39 = *(v23 + 8);
    v39(v19, v14);
    v62._countAndFlagsBits = v35;
    v62._object = v37;
    sub_6D33C(v62);

    v40 = v60;
    v41 = v56;
    *v56 = v59;
    *(v41 + 8) = v40;
    swift_storeEnumTagMultiPayload();
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v42 = sub_6D04C();
    sub_5CE4(v42, qword_839A0);
    v43 = v57;
    sub_4B3CC(v41, v57, type metadata accessor for IFFlowError);
    v44 = sub_6D03C();
    v45 = sub_6D46C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
      swift_allocError();
      v55[1] = v38;
      v48 = v39;
      v49 = v57;
      sub_4B3CC(v57, v50, type metadata accessor for IFFlowError);
      v51 = _swift_stdlib_bridgeErrorToNSError();
      sub_4B36C(v49, type metadata accessor for IFFlowError);
      *(v46 + 4) = v51;
      *v47 = v51;
      v39 = v48;
      _os_log_impl(&dword_0, v44, v45, "%@", v46, 0xCu);
      sub_5E20(v47, &qword_81508, &unk_70260);
    }

    else
    {

      sub_4B36C(v43, type metadata accessor for IFFlowError);
    }

    sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
    v26 = swift_allocError();
    sub_4B304(v41, v53, type metadata accessor for IFFlowError);
    v39(v21, v14);
  }

  return v26;
}

uint64_t sub_321FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_6D4DC();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = &AssociatedConformanceWitness - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_6D4DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &AssociatedConformanceWitness - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &AssociatedConformanceWitness - v18;
  v20 = *(v3 + 200);
  swift_beginAccess();
  (*(v13 + 16))(v19, v2 + v20, v12);
  v21 = *(v11 - 8);
  if ((*(v21 + 48))(v19, 1, v11) != 1)
  {
    return (*(v21 + 32))(v27, v19, v11);
  }

  (*(v13 + 8))(v19, v12);
  (*(v25 + 16))(v10, v2 + *(*v2 + 192), v26);
  result = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = v27;
    sub_6D43C();
    (*(v21 + 16))(v17, v23, v11);
    (*(v21 + 56))(v17, 0, 1, v11);
    swift_beginAccess();
    (*(v13 + 40))(v2 + v20, v17, v12);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_325C0(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_6D4DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 32))(&v14 - v9, a1, AssociatedTypeWitness);
  (*(v11 + 56))(v10, 0, 1, AssociatedTypeWitness);
  v12 = *(*v1 + 200);
  swift_beginAccess();
  (*(v7 + 40))(v1 + v12, v10, v6);
  return swift_endAccess();
}

void sub_327C0()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for IFFlow.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v39 - v7;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v9 = sub_6D04C();
  v10 = sub_5CE4(v9, qword_839A0);

  v11 = sub_6D03C();
  v12 = sub_6D45C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v39[1] = v10;
    v14 = v13;
    v15 = swift_slowAlloc();
    v41 = v15;
    *v14 = 136315138;
    v16 = *(*v0 + 208);
    swift_beginAccess();
    (*(v5 + 16))(v8, v1 + v16, v4);
    swift_getWitnessTable();
    v17 = sub_6D61C();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1076C(v17, v19, &v41);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "IFFlow state transitioned to %s", v14, 0xCu);
    sub_9964(v15);
  }

  v21 = *(*v1 + 208);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v21, v4);
  swift_getWitnessTable();
  v22 = sub_6D61C();
  v24 = v23;
  (*(v5 + 8))(v8, v4);
  v40[0] = v22;
  v40[1] = v24;
  sub_1FE68();
  v25 = sub_6D50C();

  if (!v25[2])
  {

    return;
  }

  v26 = sub_6D03C();
  v27 = sub_6D47C();

  if (!os_log_type_enabled(v26, v27))
  {

    goto LABEL_11;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v40[0] = v29;
  *v28 = 136446210;
  if (v25[2])
  {
    v30 = v29;
    v31 = v25[4];
    v32 = v25[5];
    v33 = v25[6];
    v34 = v25[7];

    v35 = sub_6D30C();
    v37 = v36;

    v38 = sub_1076C(v35, v37, v40);

    *(v28 + 4) = v38;
    _os_log_impl(&dword_0, v26, v27, "IFFlow state transitioned to %{public}s", v28, 0xCu);
    sub_9964(v30);

LABEL_11:

    return;
  }

  __break(1u);
}

uint64_t sub_32C6C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v4 = sub_6AE9C();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for IFFlowError();
  v2[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_6C9FC();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = sub_6B7FC();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();
  v15 = sub_6B3DC();
  v2[18] = v15;
  v16 = *(v15 - 8);
  v2[19] = v16;
  v17 = *(v16 + 64) + 15;
  v2[20] = swift_task_alloc();
  v18 = sub_6BEEC();
  v2[21] = v18;
  v19 = *(v18 - 8);
  v2[22] = v19;
  v20 = *(v19 + 64) + 15;
  v2[23] = swift_task_alloc();
  v21 = sub_6C83C();
  v2[24] = v21;
  v22 = *(v21 - 8);
  v2[25] = v22;
  v23 = *(v22 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = *(v3 + 80);
  v2[28] = *(v3 + 88);
  v24 = type metadata accessor for IFFlow.State();
  v2[29] = v24;
  v25 = *(v24 - 8);
  v2[30] = v25;
  v26 = *(v25 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v27 = sub_6B7AC();
  v2[33] = v27;
  v28 = *(v27 - 8);
  v2[34] = v28;
  v29 = *(v28 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_33044, 0, 0);
}

uint64_t sub_33044()
{
  v143 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[5];
  v5 = sub_6D04C();
  sub_5CE4(v5, qword_839A0);
  v132 = *(v2 + 16);
  v132(v1, v4, v3);
  v6 = sub_6D03C();
  v7 = sub_6D45C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[38];
  v11 = v0[33];
  v10 = v0[34];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v142[0] = swift_slowAlloc();
    v13 = v142[0];
    *v12 = 136315138;
    sub_4B434(&qword_81768, &type metadata accessor for Input);
    v14 = sub_6D61C();
    v16 = v15;
    v129 = *(v10 + 8);
    v129(v9, v11);
    v17 = sub_1076C(v14, v16, v142);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "IFFlow received input with %s", v12, 0xCu);
    sub_9964(v13);
  }

  else
  {

    v129 = *(v10 + 8);
    v129(v9, v11);
  }

  v18 = v0[32];
  v20 = v0[29];
  v19 = v0[30];
  v21 = v0[6];
  v22 = *(*v21 + 208);
  swift_beginAccess();
  (*(v19 + 16))(v18, v21 + v22, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v50 = v0[5];
    if (sub_C1CC())
    {
      v52 = v0[30];
      v51 = v0[31];
      v53 = v0[29];
      v54 = v0[6];
      v132(v51, v0[5], v0[33]);
      swift_storeEnumTagMultiPayload();
      sub_4A280(v51);
      (*(v52 + 8))(v51, v53);
      goto LABEL_14;
    }

    v132(v0[36], v0[5], v0[33]);
    v77 = sub_6D03C();
    v78 = sub_6D46C();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v0[36];
    v81 = v0[33];
    v82 = v0[34];
    if (v79)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v142[0] = v84;
      *v83 = 136315138;
      sub_4B434(&qword_81768, &type metadata accessor for Input);
      v85 = sub_6D61C();
      v87 = v86;
      v129(v80, v81);
      v88 = sub_1076C(v85, v87, v142);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_0, v77, v78, "IFFlow not accepting input. Unsupported parse type received: %s", v83, 0xCu);
      sub_9964(v84);
    }

    else
    {

      v129(v80, v81);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v24 = v0[32];
    v25 = v0[27];
    v26 = v0[28];
    v28 = v0[25];
    v27 = v0[26];
    v30 = v0[23];
    v29 = v0[24];
    v31 = v0[21];
    v32 = v0[22];
    v33 = v0[5];
    type metadata accessor for IFFlow.PromptValue();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v35 = *(TupleTypeMetadata3 + 64);
    (*(v28 + 32))(v27, v24 + *(TupleTypeMetadata3 + 48), v29);
    (*(v32 + 32))(v30, v24 + v35, v31);
    if (sub_C1CC())
    {
      v37 = v0 + 17;
      v36 = v0[17];
      v39 = v0 + 16;
      v38 = v0[16];
      v41 = v0 + 15;
      v40 = v0[15];
      v42 = v0[5];
      sub_6B78C();
      if ((*(v38 + 88))(v36, v40) == enum case for Parse.nlRouter(_:))
      {
        v37 = v0 + 14;
        v43 = v0[14];
        v44 = v0[19];
        v45 = v0[20];
        v47 = v0[17];
        v46 = v0[18];
        v39 = v0 + 13;
        v48 = v0[13];
        v41 = v0 + 12;
        v126 = v0[12];
        (*(v0[16] + 96))(v47, v0[15]);
        (*(v44 + 32))(v45, v47, v46);
        sub_6B3BC();
        if ((*(v48 + 88))(v43, v126) == enum case for NLRoutingDecisionMessage.RoutingDecision.planner(_:))
        {
          v49 = v0[6];
          sub_33DA4(v0[5], v0[11]);
          v117 = v0[25];
          v116 = v0[26];
          v119 = v0[23];
          v118 = v0[24];
          v120 = v0[21];
          v121 = v0[22];
          (*(v0[19] + 8))(v0[20], v0[18]);
          (*(v121 + 8))(v119, v120);
          (*(v117 + 8))(v116, v118);
LABEL_14:
          v139 = 1;
          goto LABEL_27;
        }

        (*(v0[19] + 8))(v0[20], v0[18]);
      }

      v89 = *v37;
      v90 = *v41;
      v91 = *v39;
      v93 = v0[30];
      v92 = v0[31];
      v128 = v0[29];
      v130 = v0[26];
      v137 = v0[25];
      v141 = v0[24];
      v94 = v0[23];
      v134 = v0[21];
      v95 = v0[9];
      v123 = v0[10];
      v125 = v0[22];
      v97 = v0[7];
      v96 = v0[8];
      v98 = v0[5];
      v99 = v0[6];
      (*(v91 + 8))(v89, v90);
      sub_6C80C();
      v100 = sub_347D0();
      sub_34A98(v95, v94, v100, v101);

      (*(v96 + 8))(v95, v97);
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
      v102 = swift_allocError();
      *v103 = 1;
      swift_storeEnumTagMultiPayload();
      *v92 = v102;
      *(v92 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_4A280(v92);
      (*(v93 + 8))(v92, v128);
      (*(v125 + 8))(v94, v134);
      (*(v137 + 8))(v130, v141);
    }

    else
    {
      v132(v0[37], v0[5], v0[33]);
      v61 = sub_6D03C();
      v136 = sub_6D46C();
      v62 = os_log_type_enabled(v61, v136);
      v63 = v0[37];
      v64 = v0[33];
      v140 = v0[34];
      v66 = v0[25];
      v65 = v0[26];
      v68 = v0[23];
      v67 = v0[24];
      v70 = v0[21];
      v69 = v0[22];
      if (v62)
      {
        v133 = v0[21];
        v71 = swift_slowAlloc();
        v127 = v65;
        v72 = swift_slowAlloc();
        v142[0] = v72;
        *v71 = 136315138;
        sub_4B434(&qword_81768, &type metadata accessor for Input);
        v122 = v68;
        v124 = v67;
        v73 = sub_6D61C();
        v75 = v74;
        v129(v63, v64);
        v76 = sub_1076C(v73, v75, v142);

        *(v71 + 4) = v76;
        _os_log_impl(&dword_0, v61, v136, "IFFlow not accepting input. Unsupported parse type received: %s", v71, 0xCu);
        sub_9964(v72);

        (*(v69 + 8))(v122, v133);
        (*(v66 + 8))(v127, v124);
      }

      else
      {

        v129(v63, v64);
        (*(v69 + 8))(v68, v70);
        (*(v66 + 8))(v65, v67);
      }
    }
  }

  else
  {
    v55 = sub_6D03C();
    v56 = sub_6D45C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "IFFlow can only accept input after it is first initialized. Ignoring.", v57, 2u);
    }

    v58 = v0[32];
    v59 = v0[29];
    v60 = v0[30];

    (*(v60 + 8))(v58, v59);
  }

  v139 = 0;
LABEL_27:
  v105 = v0[37];
  v104 = v0[38];
  v107 = v0[35];
  v106 = v0[36];
  v109 = v0[31];
  v108 = v0[32];
  v110 = v0[26];
  v111 = v0[23];
  v112 = v0[20];
  v113 = v0[17];
  v131 = v0[14];
  v135 = v0[11];
  v138 = v0[9];

  v114 = v0[1];

  return v114(v139);
}

uint64_t sub_33DA4(uint64_t a1, uint64_t a2)
{
  v120 = a2;
  v118 = a1;
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 88);
  v5 = type metadata accessor for IFFlow.State();
  v106 = *(v5 - 8);
  v107 = v5;
  v6 = *(v106 + 64);
  __chkstk_darwin(v5);
  v105 = &v93 - v7;
  v8 = sub_5708(&qword_81B58, qword_70A90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v108 = &v93 - v10;
  v11 = sub_6C35C();
  v101 = *(v11 - 8);
  v102 = v11;
  v12 = *(v101 + 64);
  __chkstk_darwin(v11);
  v100 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6C7EC();
  v15 = *(v14 - 8);
  v103 = v14;
  v104 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v110 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_6C33C();
  v117 = *(v109 - 8);
  v18 = *(v117 + 64);
  __chkstk_darwin(v109);
  v114 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6CFCC();
  v115 = *(v20 - 8);
  v116 = v20;
  v21 = *(v115 + 64);
  __chkstk_darwin(v20);
  v113 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_6B7FC();
  v24 = *(v23 - 8);
  v111 = v23;
  v112 = v24;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_5708(&qword_81588, &qword_700C0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v93 - v30;
  v32 = type metadata accessor for IFFlowError();
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = (&v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v38 = (&v93 - v37);
  v39 = sub_6AE9C();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v43 = &v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v119;
  sub_30FBC(v38);
  v45 = v120;
  if (v44)
  {
    return sub_4B304(v38, v45, type metadata accessor for IFFlowError);
  }

  v93 = v27;
  v94 = v36;
  v46 = v111;
  v98 = v43;
  v95 = v40;
  v99 = v39;
  v119 = v31;
  v96 = 0;
  sub_30BD4();
  v47 = sub_6CDFC();

  v97 = v2;
  if (v47)
  {
    v48 = v119;
    sub_274A4(v47, v119);
    v49 = 0;
    v50 = v117;
  }

  else
  {
    v49 = 1;
    v50 = v117;
    v48 = v119;
  }

  v51 = v99;
  v52 = v46;
  v53 = v112;
  v54 = v93;
  v55 = sub_6C04C();
  (*(*(v55 - 8) + 56))(v48, v49, 1, v55);
  sub_6B78C();
  v56 = sub_4A3DC(v54);
  (*(v53 + 8))(v54, v52);
  v57 = v113;
  v58 = v98;
  LODWORD(v112) = v56;
  sub_3556C(v56, v113);
  v59 = v114;
  v60 = v96;
  v38 = v94;
  sub_C818(v48, v57, v94, v114);
  if (v60)
  {
    (*(v115 + 8))(v57, v116);
    sub_5E20(v48, &qword_81588, &qword_700C0);
    (*(v95 + 8))(v58, v51);
    v45 = v120;
    return sub_4B304(v38, v45, type metadata accessor for IFFlowError);
  }

  v62 = v100;
  (*(v50 + 16))(v100, v59, v109);
  v64 = v101;
  v63 = v102;
  (*(v101 + 104))(v62, enum case for MessagePayload.request(_:), v102);
  v65 = v110;
  sub_30BF8(v58, v62);
  (*(v64 + 8))(v62, v63);
  sub_5468(v108);
  sub_4AADC();
  v66 = sub_6AE6C();
  v68 = v67;
  v69 = sub_30BD4();
  v70 = sub_30DC8();
  v71 = sub_2ABCC(v66, v68, v69, v70, v112);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v72 = sub_6D04C();
  sub_5CE4(v72, qword_839A0);
  v73 = v71;
  v74 = sub_6D03C();
  v75 = sub_6D45C();

  v76 = os_log_type_enabled(v74, v75);
  v77 = v104;
  if (v76)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v78 = 138412290;
    *(v78 + 4) = v73;
    *v79 = v73;
    v80 = v73;
    _os_log_impl(&dword_0, v74, v75, "BMSiriRequestContext event = %@. Going to send this to the Biome Siri Orchestration stream.", v78, 0xCu);
    sub_5E20(v79, &qword_81508, &unk_70260);

    v65 = v110;
  }

  v81 = v97;
  [*(v97 + 136) sendEvent:v73];
  v82 = *(sub_5708(&qword_81788, &qword_70380) + 48);
  v83 = *(v77 + 16);
  v84 = v77;
  v85 = v105;
  v86 = v103;
  v83(v105, v65, v103);
  v87 = v108;
  sub_C14C(v108, v85 + v82, &qword_81B58, qword_70A90);
  v88 = v107;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v85);
  (*(v106 + 8))(v85, v88);
  v89 = sub_347D0();
  v91 = v90;

  sub_5E20(v87, &qword_81B58, qword_70A90);
  (*(v84 + 8))(v110, v86);
  (*(v117 + 8))(v114, v109);
  (*(v115 + 8))(v113, v116);
  sub_5E20(v119, &qword_81588, &qword_700C0);
  (*(v95 + 8))(v98, v99);
  v92 = *(v81 + 208);
  *(v81 + 200) = v89;
  *(v81 + 208) = v91;
}

uint64_t sub_347D0()
{
  v0 = sub_6B3AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_6B7FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6B3DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B78C();
  if ((*(v6 + 88))(v9, v5) == enum case for Parse.nlRouter(_:))
  {
    (*(v6 + 96))(v9, v5);
    (*(v11 + 32))(v14, v9, v10);
    sub_6B3CC();
    (*(v11 + 8))(v14, v10);
    if ((*(v1 + 88))(v4, v0) == enum case for NLRouterParse.InputCandidate.text(_:))
    {
      (*(v1 + 96))(v4, v0);
      result = *v4;
      v16 = v4[1];
      return result;
    }

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
  }

  return 0;
}

uint64_t sub_34A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a4;
  v92 = a2;
  v93 = a3;
  v90 = a1;
  v103 = *v4;
  v5 = sub_6C35C();
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  __chkstk_darwin(v5);
  v97 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6C7EC();
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = *(v101 + 64);
  __chkstk_darwin(v8);
  v98 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_6CFCC();
  v94 = *(v96 - 8);
  v11 = *(v94 + 64);
  __chkstk_darwin(v96);
  v91 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5708(&qword_81770, &unk_70F70);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v84 = &v77 - v15;
  v83 = sub_6BEEC();
  v82 = *(v83 - 8);
  v16 = *(v82 + 64);
  __chkstk_darwin(v83);
  v81 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_6C86C();
  v79 = *(v80 - 8);
  v18 = *(v79 + 64);
  __chkstk_darwin(v80);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_6C89C();
  v86 = *(v21 - 8);
  v87 = v21;
  v22 = *(v86 + 64);
  __chkstk_darwin(v21);
  v85 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_6C33C();
  v89 = *(v24 - 8);
  v25 = *(v89 + 64);
  __chkstk_darwin(v24);
  v88 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for IFFlowError();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = (&v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_5708(&unk_82030, &qword_70370);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v77 - v36;
  v38 = sub_6AE9C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v43 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v104 = &v77 - v44;
  sub_30FBC(v30);
  v78 = v24;
  v45 = *(v39 + 56);
  v45(v37, 0, 1, v38);
  (*(v39 + 32))(v104, v37, v38);
  v77 = v35;
  v45(v35, 1, 1, v38);
  (*(v39 + 16))(v43, v90, v38);
  sub_6C88C();
  (*(v79 + 104))(v20, enum case for SystemPromptResolution.UserAction.actionCanceled(_:), v80);
  v46 = *(v82 + 16);
  v90 = 0;
  v46(v81, v92, v83);

  v47 = v84;
  sub_6C0CC();
  v48 = enum case for SystemPromptResolution.ResolutionInput.text(_:);
  v49 = sub_6C85C();
  v50 = *(v49 - 8);
  (*(v50 + 104))(v47, v48, v49);
  (*(v50 + 56))(v47, 0, 1, v49);
  v51 = v85;
  sub_6C87C();
  v52 = v91;
  v53 = v104;
  sub_3556C(2, v91);
  v54 = v88;
  sub_A17C(v51, v52);
  (*(v94 + 8))(v52, v96);
  (*(v86 + 8))(v51, v87);
  v55 = v89;
  v56 = v97;
  (*(v89 + 16))(v97, v54, v78);
  v58 = v99;
  v57 = v100;
  (*(v99 + 104))(v56, enum case for MessagePayload.request(_:), v100);
  v59 = v98;
  sub_30BF8(v53, v56);
  (*(v58 + 8))(v56, v57);
  v60 = *(v103 + 80);
  v61 = *(v103 + 88);
  v62 = v4 + *(*v4 + 184);
  v63 = v90;
  sub_6CF4C();
  v64 = v55;
  v65 = v54;
  if (v63)
  {
    v66 = v78;
    (*(v101 + 8))(v59, v102);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v67 = sub_6D04C();
    sub_5CE4(v67, qword_839A0);
    swift_errorRetain();
    v68 = sub_6D03C();
    v69 = sub_6D46C();

    v70 = v39;
    v71 = v66;
    if (os_log_type_enabled(v68, v69))
    {
      v72 = swift_slowAlloc();
      v73 = v65;
      v74 = swift_slowAlloc();
      *v72 = 138412290;
      swift_errorRetain();
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 4) = v75;
      *v74 = v75;
      _os_log_impl(&dword_0, v68, v69, "Error attempting to cancel current execution with IF. %@", v72, 0xCu);
      sub_5E20(v74, &qword_81508, &unk_70260);

      (*(v64 + 8))(v73, v71);
    }

    else
    {

      (*(v64 + 8))(v65, v66);
    }

    return (*(v70 + 8))(v104, v38);
  }

  else
  {
    (*(v101 + 8))(v59, v102);
    (*(v55 + 8))(v54, v78);
    return (*(v39 + 8))(v104, v38);
  }
}

uint64_t sub_3556C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_6AE6C();
  v6 = v5;
  v7 = sub_30BD4();
  v8 = sub_30DC8();

  return sub_69DC4(v4, v6, v7, v8, a1, a2);
}

uint64_t sub_355F4(uint64_t a1)
{
  v3 = v2;
  v3[2] = a1;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for IFFlow.State();
  v3[4] = v7;
  v8 = *(v7 - 8);
  v3[5] = v8;
  v9 = *(v8 + 64) + 15;
  v3[6] = swift_task_alloc();
  v10 = type metadata accessor for IFFlowError();
  v3[7] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v12 = swift_task_alloc();
  v3[9] = v12;
  v3[10] = swift_task_alloc();
  v13 = swift_task_alloc();
  v3[11] = v13;
  *v13 = v3;
  v13[1] = sub_35774;

  return sub_35D00(a1, v12);
}

uint64_t sub_35774()
{
  v2 = *(*v1 + 88);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_3590C;
  }

  else
  {
    v3 = sub_35884;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_35884()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_3590C()
{
  v1 = v0[7];
  sub_4B304(v0[9], v0[10], type metadata accessor for IFFlowError);
  if (swift_getEnumCaseMultiPayload() == 22)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_35B00;
    v3 = v0[3];

    return sub_3BEF0();
  }

  else
  {
    v5 = v0[10];
    v6 = v0[8];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];
    sub_4B3CC(v5, v6, type metadata accessor for IFFlowError);
    sub_4B3CC(v6, v7, type metadata accessor for IFFlowError);
    swift_storeEnumTagMultiPayload();
    sub_4A280(v7);
    (*(v8 + 8))(v7, v10);
    sub_6B45C();
    sub_4B36C(v6, type metadata accessor for IFFlowError);
    sub_4B36C(v5, type metadata accessor for IFFlowError);
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    v15 = v0[6];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_35B00()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_35BFC, 0, 0);
}

uint64_t sub_35BFC()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_4A280(v3);
  (*(v5 + 8))(v3, v4);
  sub_6B45C();
  sub_4B36C(v1, type metadata accessor for IFFlowError);
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_35D00(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[37] = a2;
  v3[35] = a1;
  v4 = *v2;
  v5 = *(*(type metadata accessor for LocationRequest() - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v6 = sub_6C35C();
  v3[39] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v8 = sub_6C83C();
  v3[41] = v8;
  v9 = *(v8 - 8);
  v3[42] = v9;
  v10 = *(v9 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v11 = *(*(sub_5708(&qword_81B08, &qword_708D8) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v12 = sub_6B89C();
  v3[50] = v12;
  v13 = *(v12 - 8);
  v3[51] = v13;
  v14 = *(v13 + 64) + 15;
  v3[52] = swift_task_alloc();
  v15 = sub_6CD3C();
  v3[53] = v15;
  v16 = *(v15 - 8);
  v3[54] = v16;
  v17 = *(v16 + 64) + 15;
  v3[55] = swift_task_alloc();
  v18 = sub_5708(&qword_81D48, &unk_70D10);
  v3[56] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v20 = *(*(sub_5708(&qword_814F0, &qword_71350) - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v21 = sub_6CD0C();
  v3[61] = v21;
  v22 = *(v21 - 8);
  v3[62] = v22;
  v23 = *(v22 + 64) + 15;
  v3[63] = swift_task_alloc();
  v24 = sub_6CC0C();
  v3[64] = v24;
  v25 = *(v24 - 8);
  v3[65] = v25;
  v26 = *(v25 + 64) + 15;
  v3[66] = swift_task_alloc();
  v27 = *(*(sub_5708(&unk_82030, &qword_70370) - 8) + 64) + 15;
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v28 = sub_6AE9C();
  v3[69] = v28;
  v29 = *(v28 - 8);
  v3[70] = v29;
  v30 = *(v29 + 64) + 15;
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v31 = *(*(sub_5708(&qword_81D50, &qword_70D20) - 8) + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v32 = sub_6B1DC();
  v3[76] = v32;
  v33 = *(v32 - 8);
  v3[77] = v33;
  v34 = *(v33 + 64) + 15;
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v35 = *(*(sub_5708(&qword_81B58, qword_70A90) - 8) + 64) + 15;
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v36 = sub_6C7EC();
  v3[84] = v36;
  v37 = *(v36 - 8);
  v3[85] = v37;
  v38 = *(v37 + 64) + 15;
  v3[86] = swift_task_alloc();
  v39 = type metadata accessor for IFFlowError();
  v3[87] = v39;
  v40 = *(*(v39 - 8) + 64) + 15;
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v41 = sub_6B7AC();
  v3[97] = v41;
  v42 = *(v41 - 8);
  v3[98] = v42;
  v43 = *(v42 + 64) + 15;
  v3[99] = swift_task_alloc();
  v3[100] = *(v4 + 80);
  v3[101] = *(v4 + 88);
  v44 = type metadata accessor for IFFlow.State();
  v3[102] = v44;
  v45 = *(v44 - 8);
  v3[103] = v45;
  v46 = *(v45 + 64) + 15;
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();

  return _swift_task_switch(sub_3643C, 0, 0);
}

uint64_t sub_3643C()
{
  v310 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = sub_6D04C();
  v0[106] = sub_5CE4(v2, qword_839A0);

  v3 = sub_6D03C();
  v4 = sub_6D45C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[105];
    v6 = v0[103];
    v7 = v0[102];
    v8 = v0[36];
    v9 = swift_slowAlloc();
    v309[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1076C(0x657475636578655FLL, 0xEA00000000002928, v309);
    *(v9 + 12) = 2080;
    v10 = *(*v8 + 208);
    swift_beginAccess();
    (*(v6 + 16))(v5, v8 + v10, v7);
    v11 = sub_48EAC(v7);
    v13 = v12;

    (*(v6 + 8))(v5, v7);
    v14 = sub_1076C(v11, v13, v309);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_0, v3, v4, "%s called for IFFlowPlugin with state - %s ", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = v0[36];
  }

  v16 = v0[104];
  v17 = v0[103];
  v18 = v0[102];
  v19 = v0[36];
  v20 = *(*v19 + 208);
  swift_beginAccess();
  (*(v17 + 16))(v16, v19 + v20, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v34 = v0[104];
        v35 = v0[101];
        v36 = v0[100];
        v37 = v0[87];
        v38 = v0[41];
        v39 = v0[42];
        v40 = v0[37];
        type metadata accessor for IFFlow.PromptValue();
        v41 = sub_6BEEC();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v43 = *(TupleTypeMetadata3 + 48);
        v44 = *(TupleTypeMetadata3 + 64);
        *v40 = 0xD00000000000004ELL;
        v40[1] = 0x800000000006F200;
        swift_storeEnumTagMultiPayload();
        sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
        swift_willThrowTypedImpl();
        (*(*(v41 - 8) + 8))(v34 + v44, v41);
        (*(v39 + 8))(v34 + v43, v38);
      }

      else
      {
        v58 = v0[89];
        v59 = v0[38];
        v61 = v0[35];
        v60 = v0[36];
        sub_4B304(v0[104], v59, type metadata accessor for LocationRequest);
        sub_66AF4(v59);
        sub_4B36C(v0[38], type metadata accessor for LocationRequest);
      }

LABEL_33:
      v86 = v0[105];
      v87 = v0[104];
      v88 = v0[99];
      v89 = v0[96];
      v90 = v0[95];
      v91 = v0[94];
      v92 = v0[93];
      v93 = v0[92];
      v94 = v0[91];
      v95 = v0[90];
      v255 = v0[89];
      v256 = v0[88];
      v257 = v0[86];
      v258 = v0[83];
      v259 = v0[82];
      v260 = v0[81];
      v261 = v0[80];
      v262 = v0[79];
      v263 = v0[78];
      v264 = v0[75];
      v265 = v0[74];
      v266 = v0[73];
      v267 = v0[72];
      v268 = v0[71];
      v269 = v0[68];
      v270 = v0[67];
      v271 = v0[66];
      v272 = v0[63];
      v273 = v0[60];
      v274 = v0[59];
      v275 = v0[58];
      v276 = v0[57];
      v277 = v0[55];
      v278 = v0[52];
      v279 = v0[49];
      v280 = v0[48];
      v281 = v0[47];
      buf = v0[46];
      v285 = v0[45];
      v288 = v0[44];
      v292 = v0[43];
      v298 = v0[40];
      v303 = v0[38];

      v96 = v0[1];

      return v96();
    }

    if (!EnumCaseMultiPayload)
    {
      v22 = v0[99];
      v23 = v0[95];
      v24 = v0[36];
      (*(v0[98] + 32))(v22, v0[104], v0[97]);
      sub_33DA4(v22, v23);
      v25 = v0[99];
      v26 = v0[98];
      v27 = v0[97];
      v28 = v0[35];
      sub_6B45C();
      (*(v26 + 8))(v25, v27);
      goto LABEL_33;
    }

    v47 = v0[104];
    v48 = v0[101];
    v49 = v0[100];
    v50 = v0[86];
    v51 = v0[85];
    v52 = v0[84];
    v53 = v0[83];
    v54 = v0[36];
    v55 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    (*(v51 + 32))(v50, v47, v52);
    sub_201AC(v47 + v55, v53, &qword_81B58, qword_70A90);
    v56 = v54 + *(*v54 + 184);
    sub_6CF4C();
    v66 = sub_6D03C();
    v67 = sub_6D47C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_0, v66, v67, "sent message to IFClient, logging IntelligenceFlowQuerySent message", v68, 2u);
    }

    v69 = v0[105];
    v70 = v0[103];
    v71 = v0[102];
    v72 = v0[36];

    sub_3C8E8();
    swift_storeEnumTagMultiPayload();
    sub_4A280(v69);
    (*(v70 + 8))(v69, v71);
    sub_30BD4();
    v287 = sub_6CDCC();
    v74 = v73;

    sub_30BD4();
    v291 = sub_6CDBC();
    v76 = v75;

    sub_30BD4();
    v297 = sub_6CE5C();
    v78 = v77;

    sub_30BD4();
    v79 = sub_6CE4C();
    v81 = v80;

    if (v74)
    {
      if (v76 && v78)
      {
        v82 = v0[70];
        v83 = v0[69];
        v84 = v0[68];
        sub_6AE5C();
        if ((*(v82 + 48))(v84, 1, v83) != 1)
        {
          v157 = v0[83];
          v158 = v0[73];
          (*(v0[70] + 32))(v158, v0[68], v0[69]);
          v159 = swift_task_alloc();
          v159[2] = v79;
          v159[3] = v81;
          v159[4] = v158;
          v159[5] = v287;
          v159[6] = v74;
          v159[7] = v291;
          v159[8] = v76;
          v159[9] = v157;
          v160 = objc_allocWithZone(sub_6CBEC());
          v161 = sub_6CB7C();

          if (v161)
          {
            v162 = v0[75];
            memset(v309, 0, 40);
            sub_6B1CC();
            v163 = 0;
          }

          else
          {
            v163 = 1;
          }

          v199 = v0[73];
          v200 = v0[70];
          v201 = v0[69];
          (*(v0[77] + 56))(v0[75], v163, 1, v0[76]);
          (*(v200 + 8))(v199, v201);
          goto LABEL_55;
        }

        sub_5E20(v0[68], &unk_82030, &qword_70370);
      }

      v85 = v74;
    }

    else
    {
      v85 = 0xE600000000000000;
    }

    v97 = sub_6D03C();
    v98 = sub_6D46C();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v309[0] = swift_slowAlloc();
      *v99 = 136315650;
      if (v74)
      {
        v100 = v287;
      }

      else
      {
        v100 = 0x3E6C6C756E3CLL;
      }

      v101 = sub_1076C(v100, v85, v309);

      *(v99 + 4) = v101;
      *(v99 + 12) = 2080;
      if (v76)
      {
        v102 = v291;
      }

      else
      {
        v102 = 0x3E6C6C756E3CLL;
      }

      if (v76)
      {
        v103 = v76;
      }

      else
      {
        v103 = 0xE600000000000000;
      }

      v104 = sub_1076C(v102, v103, v309);

      *(v99 + 14) = v104;
      *(v99 + 22) = 2080;
      if (v78)
      {
        v105 = v297;
      }

      else
      {
        v105 = 0x3E6C6C756E3CLL;
      }

      if (v78)
      {
        v106 = v78;
      }

      else
      {
        v106 = 0xE600000000000000;
      }

      v107 = sub_1076C(v105, v106, v309);

      *(v99 + 24) = v107;
      _os_log_impl(&dword_0, v97, v98, "Can't construct IntelligenceFlowTraceIdGeneratedMessage from executionRequestId: %s, traceId: %s, sessionId: %s", v99, 0x20u);
      swift_arrayDestroy();
    }

    (*(v0[77] + 56))(v0[75], 1, 1, v0[76]);
LABEL_55:

    v108 = v0[77];
    v109 = v0[76];
    v110 = v0[75];

    v111 = *(v108 + 48);
    v0[107] = v111;
    v0[108] = (v108 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v111(v110, 1, v109) != 1)
    {
      v117 = v0[81];
      v118 = v0[80];
      v119 = v0[77];
      v120 = v0[76];
      (*(v119 + 32))(v117, v0[75], v120);
      v121 = *(v119 + 16);
      v121(v118, v117, v120);
      v122 = sub_6D03C();
      v123 = sub_6D45C();
      v124 = os_log_type_enabled(v122, v123);
      v125 = v0[80];
      v126 = v0[77];
      v127 = v0[76];
      if (v124)
      {
        v128 = v0[66];
        v304 = v0[76];
        v129 = v0[65];
        v299 = v0[64];
        bufa = swift_slowAlloc();
        v289 = swift_slowAlloc();
        *bufa = 138412290;
        v293 = v122;
        sub_6B1BC();
        v130 = v0[26];
        sub_99FC(v0 + 22, v0[25]);
        sub_6CC1C();
        v131 = sub_6CBFC();
        (*(v129 + 8))(v128, v299);
        v132 = *(v126 + 8);
        v132(v125, v304);
        sub_9964(v0 + 22);
        *(bufa + 4) = v131;
        *v289 = v131;
        _os_log_impl(&dword_0, v293, v123, "Posting %@", bufa, 0xCu);
        sub_5E20(v289, &qword_81508, &unk_70260);
      }

      else
      {

        v132 = *(v126 + 8);
        v132(v125, v127);
      }

      v0[109] = v132;
      v146 = v0[81];
      v147 = v0[76];
      v148 = v0[36];
      v149 = v148[10];
      v150 = v148[11];
      sub_99FC(v148 + 7, v149);
      v0[20] = v147;
      v0[21] = &protocol witness table for FlowMessageTransportableOutput;
      v151 = sub_97B0(v0 + 17);
      v121(v151, v146, v147);
      v152 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
      v153 = swift_task_alloc();
      v0[110] = v153;
      *v153 = v0;
      v153[1] = sub_385F8;
      v154 = v0 + 17;
      goto LABEL_66;
    }

    sub_5E20(v0[75], &qword_81D50, &qword_70D20);
    v112 = v0[82];
    sub_C14C(v0[83], v112, &qword_81B58, qword_70A90);
    v113 = sub_6CD2C();
    v114 = *(v113 - 8);
    v115 = (*(v114 + 48))(v112, 1, v113);
    v116 = v0[82];
    if (v115 == 1)
    {
      sub_5E20(v116, &qword_81B58, qword_70A90);
LABEL_74:
      v171 = v0[106];
      v172 = sub_6D03C();
      v173 = sub_6D45C();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        *v174 = 0;
        _os_log_impl(&dword_0, v172, v173, "Unable to contruct StatusNotification to update UI, maybe some fields are missing.", v174, 2u);
      }

      goto LABEL_77;
    }

    v133 = (*(v114 + 88))(v116, v113);
    v134 = v0[82];
    if (v133 != enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:))
    {
      (*(v114 + 8))(v0[82], v113);
      goto LABEL_74;
    }

    v135 = v0[62];
    v136 = v0[63];
    v138 = v0[60];
    v137 = v0[61];
    v139 = v0[57];
    v300 = v0[59];
    v305 = v0[56];
    v140 = v0[54];
    v294 = v0[53];
    (*(v114 + 96))(v134, v113);
    (*(v135 + 32))(v136, v134, v137);
    v141 = v139;
    sub_6CCFC();
    (*(v140 + 56))(v300, 1, 1, v294);
    v142 = *(v305 + 48);
    sub_C14C(v138, v139, &qword_814F0, &qword_71350);
    sub_C14C(v300, v139 + v142, &qword_814F0, &qword_71350);
    v143 = *(v140 + 48);
    if (v143(v141, 1, v294) == 1)
    {
      v144 = v0[60];
      v145 = v0[53];
      sub_5E20(v0[59], &qword_814F0, &qword_71350);
      sub_5E20(v144, &qword_814F0, &qword_71350);
      if (v143(v141 + v142, 1, v145) == 1)
      {
        sub_5E20(v0[57], &qword_814F0, &qword_71350);
        goto LABEL_88;
      }
    }

    else
    {
      v164 = v0[53];
      sub_C14C(v0[57], v0[58], &qword_814F0, &qword_71350);
      v165 = v143(v141 + v142, 1, v164);
      v166 = v0[59];
      v167 = v0[60];
      v168 = v0[58];
      if (v165 != 1)
      {
        v306 = v0[57];
        v202 = v0[54];
        v203 = v0[55];
        v204 = v0[53];
        (*(v202 + 32))(v203, v141 + v142, v204);
        sub_4B434(&qword_81500, &type metadata accessor for RequestSummary.PrescribedGenAITool);
        v205 = sub_6D28C();
        v206 = *(v202 + 8);
        v206(v203, v204);
        sub_5E20(v166, &qword_814F0, &qword_71350);
        sub_5E20(v167, &qword_814F0, &qword_71350);
        v206(v168, v204);
        sub_5E20(v306, &qword_814F0, &qword_71350);
        if (v205)
        {
LABEL_88:
          v207 = v0[36];
          sub_30BD4();
          v208 = sub_6CDBC();
          v210 = v209;

          if (v210)
          {
            v211 = v0[36];
            sub_30BD4();
            sub_6CE5C();
            v213 = v212;

            if (v213)
            {
              v214 = v0[70];
              v215 = v0[69];
              v216 = v0[67];
              sub_6AE5C();

              if ((*(v214 + 48))(v216, 1, v215) == 1)
              {
                v217 = v0[67];
                (*(v0[62] + 8))(v0[63], v0[61]);

                v218 = &unk_82030;
                v219 = &qword_70370;
LABEL_96:
                sub_5E20(v217, v218, v219);
                goto LABEL_77;
              }

              v301 = v0[107];
              v307 = v0[108];
              v295 = v0[76];
              v220 = v0[74];
              v221 = v0[72];
              v222 = v0[36];
              (*(v0[70] + 32))(v221, v0[67], v0[69]);
              v223 = sub_3CC8C(&CurrentRequest.executionRequestId.getter);
              v225 = v224;
              sub_30BD4();
              v226 = sub_6CE4C();
              v228 = v227;

              sub_2EF18(v223, v225, v208, v210, v221, v226, v228, v220);

              if (v301(v220, 1, v295) == 1)
              {
                v217 = v0[74];
                v230 = v0[62];
                v229 = v0[63];
                v231 = v0[61];
                (*(v0[70] + 8))(v0[72], v0[69]);
                (*(v230 + 8))(v229, v231);
                v218 = &qword_81D50;
                v219 = &qword_70D20;
                goto LABEL_96;
              }

              v232 = v0[106];
              v233 = v0[79];
              v234 = v0[78];
              v235 = v0[77];
              v236 = v0[76];
              (*(v235 + 32))(v233, v0[74], v236);
              v237 = *(v235 + 16);
              v237(v234, v233, v236);
              v238 = sub_6D03C();
              v308 = sub_6D45C();
              v239 = os_log_type_enabled(v238, v308);
              v240 = v0[78];
              v241 = v0[77];
              v242 = v0[76];
              if (v239)
              {
                v302 = v237;
                v243 = v0[66];
                v244 = v0[65];
                v296 = v0[64];
                v286 = swift_slowAlloc();
                v290 = swift_slowAlloc();
                *v286 = 138412290;
                bufb = v242;
                sub_6B1BC();
                v245 = v0[16];
                sub_99FC(v0 + 12, v0[15]);
                sub_6CC1C();
                v246 = sub_6CBFC();
                v247 = v243;
                v237 = v302;
                (*(v244 + 8))(v247, v296);
                v248 = *(v241 + 8);
                v248(v240, bufb);
                sub_9964(v0 + 12);
                *(v286 + 4) = v246;
                *v290 = v246;
                _os_log_impl(&dword_0, v238, v308, "Posting StatusNotification: %@", v286, 0xCu);
                sub_5E20(v290, &qword_81508, &unk_70260);
              }

              else
              {

                v248 = *(v241 + 8);
                v248(v240, v242);
              }

              v0[112] = v248;
              v249 = v0[79];
              v250 = v0[76];
              v251 = v0[36];
              v149 = v251[10];
              v150 = v251[11];
              sub_99FC(v251 + 7, v149);
              v0[10] = v250;
              v0[11] = &protocol witness table for FlowMessageTransportableOutput;
              v252 = sub_97B0(v0 + 7);
              v237(v252, v249, v250);
              v253 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
              v254 = swift_task_alloc();
              v0[113] = v254;
              *v254 = v0;
              v254[1] = sub_398A8;
              v154 = v0 + 7;
LABEL_66:
              v155 = v149;
              v156 = v150;
LABEL_82:

              return dispatch thunk of OutputPublisherAsync.publish(output:)(v154, v155, v156);
            }

            (*(v0[62] + 8))(v0[63], v0[61]);
          }

          else
          {
            (*(v0[62] + 8))(v0[63], v0[61]);
          }

LABEL_77:
          v175 = v0[50];
          v176 = v0[51];
          v177 = v0[49];
          v178 = v0[36];
          sub_30BD4();
          sub_6CDCC();
          v180 = v179;

          sub_2FAF0(v180, v177);

          if ((*(v176 + 48))(v177, 1, v175) == 1)
          {
            sub_5E20(v0[49], &qword_81B08, &qword_708D8);
            v181 = v0[86];
            v182 = v0[85];
            v183 = v0[84];
            v184 = v0[83];
            v185 = v0[35];
            sub_6B44C();
            sub_5E20(v184, &qword_81B58, qword_70A90);
            (*(v182 + 8))(v181, v183);
            goto LABEL_33;
          }

          v186 = v0[106];
          (*(v0[51] + 32))(v0[52], v0[49], v0[50]);
          v187 = sub_6D03C();
          v188 = sub_6D45C();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            *v189 = 0;
            _os_log_impl(&dword_0, v187, v188, "Posting SAUIShowRequestHandlingStatus message with execution source PLANNER", v189, 2u);
          }

          v191 = v0[51];
          v190 = v0[52];
          v192 = v0[50];
          v193 = v0[36];

          v194 = v193[10];
          v195 = v193[11];
          sub_99FC(v193 + 7, v194);
          v0[5] = v192;
          v0[6] = &protocol witness table for AceOutput;
          v196 = sub_97B0(v0 + 2);
          (*(v191 + 16))(v196, v190, v192);
          v197 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
          v198 = swift_task_alloc();
          v0[115] = v198;
          *v198 = v0;
          v198[1] = sub_3A2D4;
          v154 = v0 + 2;
          v155 = v194;
          v156 = v195;
          goto LABEL_82;
        }

LABEL_73:
        (*(v0[62] + 8))(v0[63], v0[61]);
        goto LABEL_74;
      }

      v169 = v0[53];
      v170 = v0[54];
      sub_5E20(v0[59], &qword_814F0, &qword_71350);
      sub_5E20(v167, &qword_814F0, &qword_71350);
      (*(v170 + 8))(v168, v169);
    }

    sub_5E20(v0[57], &qword_81D48, &unk_70D10);
    goto LABEL_73;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v45 = v0[87];
      v46 = v0[37];
      *v46 = 0xD00000000000005CLL;
      v46[1] = 0x800000000006F250;
      swift_storeEnumTagMultiPayload();
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
      swift_willThrowTypedImpl();
      goto LABEL_33;
    }

    v62 = swift_task_alloc();
    v0[117] = v62;
    *v62 = v0;
    v62[1] = sub_3AA80;
    v63 = v0[91];
    v64 = v0[48];
    v65 = v0[36];

    return sub_3DEF8(v64, v63);
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      v57 = v0[35];
      (*(v0[103] + 8))(v0[104], v0[102]);
      sub_6B49C();
      goto LABEL_33;
    }

    sub_4B304(v0[104], v0[88], type metadata accessor for IFFlowError);
    v29 = swift_task_alloc();
    v0[120] = v29;
    *v29 = v0;
    v29[1] = sub_3B570;
    v30 = v0[88];
    v31 = v0[35];
    v32 = v0[36];

    return sub_5F98(v31, v30);
  }
}

uint64_t sub_385F8()
{
  v2 = *(*v1 + 880);
  v5 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v3 = sub_39524;
  }

  else
  {
    v3 = sub_3870C;
  }

  return _swift_task_switch(v3, 0, 0);
}