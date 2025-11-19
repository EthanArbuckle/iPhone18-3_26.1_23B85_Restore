uint64_t sub_10006962C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007208C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100069684@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000720EC();
  *a1 = result;
  return result;
}

uint64_t sub_1000696B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000720EC();
  *a1 = result;
  return result;
}

unint64_t sub_10006973C()
{
  result = qword_1000973B0;
  if (!qword_1000973B0)
  {
    sub_1000038D4(&qword_100097368, &qword_100076C40);
    sub_1000697C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973B0);
  }

  return result;
}

unint64_t sub_1000697C8()
{
  result = qword_1000973B8;
  if (!qword_1000973B8)
  {
    sub_1000038D4(&qword_1000973A8, &unk_100076D50);
    sub_100069880();
    sub_100004C3C(&qword_100095788, &qword_100095790, &qword_100074BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973B8);
  }

  return result;
}

unint64_t sub_100069880()
{
  result = qword_1000973C0;
  if (!qword_1000973C0)
  {
    sub_1000038D4(&qword_1000973A0, &qword_100076D18);
    sub_10006990C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973C0);
  }

  return result;
}

unint64_t sub_10006990C()
{
  result = qword_1000973C8;
  if (!qword_1000973C8)
  {
    sub_1000038D4(&qword_100097398, &qword_100076D10);
    sub_1000699C4();
    sub_100004C3C(&qword_1000953D0, &qword_1000953D8, &qword_1000769A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973C8);
  }

  return result;
}

unint64_t sub_1000699C4()
{
  result = qword_1000973D0;
  if (!qword_1000973D0)
  {
    sub_1000038D4(&qword_100097390, &qword_100076CD8);
    sub_10001D318();
    sub_100004C3C(&qword_100095400, &qword_100095408, &qword_1000747C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973D0);
  }

  return result;
}

uint64_t sub_100069A7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007208C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100069AE4()
{
  result = qword_100097410;
  if (!qword_100097410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097410);
  }

  return result;
}

uint64_t sub_100069B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100069B80(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100069C90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100071F5C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for CPTimelineEntry();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100069E10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100071F5C();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for CPTimelineEntry();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPBackgroundView()
{
  result = qword_1000974C8;
  if (!qword_1000974C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100069FB8()
{
  sub_10006A0CC(319, &qword_100094858, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100071F5C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CPTimelineEntry();
      if (v2 <= 0x3F)
      {
        sub_10006A0CC(319, &unk_1000974D8, type metadata accessor for AppDisplayData, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10006A0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10006A14C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100004C94(v2, &v17 - v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10006A34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_10000388C(&qword_100097528, &qword_100076FD8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v61 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v54 - v7;
  v9 = sub_10000388C(&qword_100097530, &qword_100076FE0);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v54 = (&v54 - v11);
  v12 = sub_10000388C(&qword_100097538, &qword_100076FE8);
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  __chkstk_darwin(v12);
  v55 = &v54 - v14;
  v15 = sub_1000729DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = sub_10000388C(&qword_100097540, &qword_100076FF0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v54 - v28;
  sub_10006A14C(v22);
  (*(v16 + 104))(v19, enum case for WidgetFamily.systemSmall(_:), v15);
  sub_10006CA2C(&qword_100095380);
  v30 = sub_100072B1C();
  v31 = *(v16 + 8);
  v31(v19, v15);
  v31(v22, v15);
  if ((v30 & 1) == 0)
  {
    v33 = type metadata accessor for CPBackgroundView();
    v34 = a1;
    v35 = *(v33 + 20);
    sub_10006A14C(v22);
    v36 = v34 + v35;
    v37 = v34;
    sub_100022F7C(v36, v22);
    v31(v22, v15);
    v38 = v34 + *(v33 + 24);
    v39 = type metadata accessor for CPTimelineEntry();
    if (*(v38 + v39[6]) == 1 && *(v38 + v39[9]) == 1)
    {
      v40 = *(v38 + v39[5]);
      if (v40 >> 62)
      {
        v52 = v39;
        v53 = sub_100072EDC();
        v39 = v52;
        if (v53)
        {
          goto LABEL_8;
        }
      }

      else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }
    }

    if (*(v38 + v39[8]) != 1)
    {
      v46 = 1;
      v45 = v55;
      goto LABEL_10;
    }

LABEL_8:
    v41 = sub_1000721AC();
    v42 = v54;
    *v54 = v41;
    v42[1] = 0;
    *(v42 + 16) = 0;
    v43 = sub_10000388C(&qword_100097558, &qword_100077008);
    sub_10006A94C(v37, v42 + *(v43 + 44));
    v44 = v42;
    v45 = v55;
    sub_100014DEC(v44, v55, &qword_100097530, &qword_100076FE0);
    v46 = 0;
LABEL_10:
    (*(v56 + 56))(v45, v46, 1, v57);
    sub_100014DEC(v45, v29, &qword_100097538, &qword_100076FE8);
    v32 = 0;
    goto LABEL_11;
  }

  v32 = 1;
LABEL_11:
  (*(v58 + 56))(v29, v32, 1, v59);
  *v8 = sub_10007223C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v47 = sub_10000388C(&qword_100097548, &qword_100076FF8);
  sub_10006C314(&v8[*(v47 + 44)]);
  sub_100004C94(v29, v26, &qword_100097540, &qword_100076FF0);
  v48 = v61;
  sub_100004C94(v8, v61, &qword_100097528, &qword_100076FD8);
  v49 = v60;
  sub_100004C94(v26, v60, &qword_100097540, &qword_100076FF0);
  v50 = sub_10000388C(&qword_100097550, &qword_100077000);
  sub_100004C94(v48, v49 + *(v50 + 48), &qword_100097528, &qword_100076FD8);
  sub_100004890(v8, &qword_100097528, &qword_100076FD8);
  sub_100004890(v29, &qword_100097540, &qword_100076FF0);
  sub_100004890(v48, &qword_100097528, &qword_100076FD8);
  return sub_100004890(v26, &qword_100097540, &qword_100076FF0);
}

uint64_t sub_10006A94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v2 = sub_10000388C(&qword_100097560, &qword_100077010);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = sub_10000388C(&qword_100097568, &qword_100077018);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v41 - v11;
  v42 = sub_10000388C(&qword_100097570, &qword_100077020);
  v13 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v15 = &v41 - v14;
  v43 = sub_10000388C(&qword_100097578, &qword_100077028);
  v16 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  *v12 = sub_1000721AC();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v25 = &v12[*(sub_10000388C(&qword_100097580, &qword_100077030) + 44)];
  *v8 = sub_10007224C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v26 = sub_10000388C(&qword_100097588, &qword_100077038);
  sub_10006AEDC(v41, &v8[*(v26 + 44)]);
  sub_100004C94(v8, v5, &qword_100097560, &qword_100077010);
  sub_100004C94(v5, v25, &qword_100097560, &qword_100077010);
  v27 = v25 + *(sub_10000388C(&qword_100097590, &unk_100077040) + 48);
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_100004890(v8, &qword_100097560, &qword_100077010);
  sub_100004890(v5, &qword_100097560, &qword_100077010);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  v29 = sub_1000723DC();
  *(inited + 32) = v29;
  v30 = sub_1000723BC();
  *(inited + 33) = v30;
  v31 = sub_1000723FC();
  *(inited + 34) = v31;
  v32 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v29)
  {
    v32 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v30)
  {
    v32 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v31)
  {
    v32 = sub_1000723EC();
  }

  sub_100014DEC(v12, v15, &qword_100097568, &qword_100077018);
  v33 = &v15[*(v42 + 36)];
  *v33 = v32;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  sub_1000728AC();
  sub_100071FFC();
  sub_100014DEC(v15, v21, &qword_100097570, &qword_100077020);
  v34 = &v21[*(v43 + 36)];
  v35 = v50;
  *(v34 + 4) = v49;
  *(v34 + 5) = v35;
  *(v34 + 6) = v51;
  v36 = v46;
  *v34 = v45;
  *(v34 + 1) = v36;
  v37 = v48;
  *(v34 + 2) = v47;
  *(v34 + 3) = v37;
  sub_100014DEC(v21, v24, &qword_100097578, &qword_100077028);
  sub_100004C94(v24, v18, &qword_100097578, &qword_100077028);
  v38 = v44;
  sub_100004C94(v18, v44, &qword_100097578, &qword_100077028);
  v39 = v38 + *(sub_10000388C(&qword_100097598, &unk_100077050) + 48);
  *v39 = 0;
  *(v39 + 8) = 0;
  sub_100004890(v24, &qword_100097578, &qword_100077028);
  return sub_100004890(v18, &qword_100097578, &qword_100077028);
}

uint64_t sub_10006AEDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v3 = sub_1000729DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_10000388C(&qword_1000975A0, &qword_100077060);
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v27 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v28 = a1;
  sub_10006A14C(v7);
  sub_10006CA2C(&qword_100094E70);
  sub_100072FEC();
  (*(v4 + 8))(v7, v3);
  sub_100071DFC();

  v19 = sub_100071C9C();
  result = (*(*(v19 - 8) + 48))(v11, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(result);
    *(&v26 - 2) = v28;
    sub_10000388C(&qword_1000975A8, &qword_100077068);
    sub_100004C3C(&qword_1000975B0, &qword_1000975A8, &qword_100077068);
    sub_10007254C();
    v21 = v13[2];
    v22 = v27;
    v21(v27, v18, v12);
    v23 = v29;
    v21(v29, v22, v12);
    v24 = &v23[*(sub_10000388C(&qword_1000975B8, &qword_100077070) + 48)];
    *v24 = 0;
    v24[8] = 0;
    v25 = v13[1];
    v25(v18, v12);
    return (v25)(v22, v12);
  }

  return result;
}

uint64_t sub_10006B29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1000721CC();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10000388C(&qword_1000975C0, &qword_100077078);
  return sub_10006B2F4(a1, a2 + *(v4 + 44));
}

uint64_t sub_10006B2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a1;
  v150 = a2;
  v124 = sub_10000388C(&qword_100097058, &qword_100077080);
  v2 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v123 = &v118 - v3;
  v130 = sub_10000388C(&qword_1000975C8, &unk_100077088);
  v129 = *(v130 - 8);
  v4 = *(v129 + 64);
  __chkstk_darwin(v130);
  v126 = &v118 - v5;
  v128 = sub_10000388C(&qword_100097060, &qword_100076880);
  v6 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v127 = &v118 - v7;
  v149 = sub_10000388C(&qword_100097068, &qword_100076888);
  v147 = *(v149 - 8);
  v8 = *(v147 + 64);
  __chkstk_darwin(v149);
  v125 = &v118 - v9;
  v143 = sub_100071DAC();
  v142 = *(v143 - 8);
  v10 = *(v142 + 64);
  __chkstk_darwin(v143);
  v141 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000388C(&qword_100097070, &qword_100076890);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v148 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v146 = &v118 - v16;
  v133 = sub_1000724DC();
  v132 = *(v133 - 8);
  v17 = *(v132 + 64);
  __chkstk_darwin(v133);
  v131 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000729DC();
  v152 = *(v19 - 8);
  v20 = *(v152 + 64);
  __chkstk_darwin(v19);
  v122 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v118 - v23;
  v139 = sub_10000388C(&qword_1000975D0, &qword_100077098);
  v138 = *(v139 - 8);
  v25 = *(v138 + 64);
  __chkstk_darwin(v139);
  v136 = &v118 - v26;
  v135 = sub_10000388C(&qword_1000975D8, &qword_1000770A0);
  v27 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v140 = &v118 - v28;
  v134 = sub_10000388C(&qword_1000975E0, &qword_1000770A8);
  v29 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v145 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v137 = &v118 - v32;
  __chkstk_darwin(v33);
  v144 = &v118 - v34;
  sub_1000721DC();
  v35 = sub_10007258C();
  v37 = v36;
  v39 = v38;
  sub_10007248C();
  v40 = sub_10007255C();
  v42 = v41;
  v44 = v43;
  sub_100004C84(v35, v37, v39 & 1);

  sub_10006A14C(v24);
  v46 = v152 + 88;
  v45 = *(v152 + 88);
  v151 = v19;
  v120 = v45;
  v47 = v45(v24, v19);
  v119 = enum case for WidgetFamily.systemSmall(_:);
  v121 = v46;
  v118 = enum case for WidgetFamily.systemMedium(_:);
  if (v47 == enum case for WidgetFamily.systemSmall(_:) || (v48 = v47, v47 == enum case for WidgetFamily.systemMedium(_:)))
  {
    sub_10007252C();
  }

  else if (v47 == enum case for WidgetFamily.systemLarge(_:) || v47 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_1000724EC();
  }

  else
  {
    v49 = enum case for WidgetFamily.accessoryCircular(_:);
    sub_10007252C();
    if (v48 != v49 && v48 != enum case for WidgetFamily.accessoryRectangular(_:) && v48 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v152 + 8))(v24, v151);
    }
  }

  v50 = v133;
  v51 = v132;
  v52 = v131;
  (*(v132 + 104))(v131, enum case for Font.Leading.tight(_:), v133);
  sub_10007250C();

  (*(v51 + 8))(v52, v50);
  v53 = sub_10007257C();
  v55 = v54;
  LOBYTE(v52) = v56;

  sub_100004C84(v40, v42, v44 & 1);

  v57 = *(type metadata accessor for CPBackgroundView() + 24);
  sub_100043050();
  v58 = sub_10007256C();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_100004C84(v53, v55, v52 & 1);

  KeyPath = swift_getKeyPath();
  v66 = swift_getKeyPath();
  v163 = v62 & 1;
  v162 = 0;
  v67 = swift_getKeyPath();
  *&v154 = v58;
  *(&v154 + 1) = v60;
  LOBYTE(v155) = v62 & 1;
  *(&v155 + 1) = v64;
  *&v156 = KeyPath;
  *(&v156 + 1) = 1;
  LOBYTE(v157) = 0;
  *(&v157 + 1) = v66;
  LOBYTE(v158) = 1;
  *(&v158 + 1) = v67;
  v159 = 0x3FE8000000000000;
  sub_10000388C(&qword_1000975E8, &qword_100077140);
  sub_10006CA90();
  v68 = v136;
  sub_1000725FC();
  v160[2] = v156;
  v160[3] = v157;
  v160[4] = v158;
  v161 = v159;
  v160[0] = v154;
  v160[1] = v155;
  sub_100004890(v160, &qword_1000975E8, &qword_100077140);
  sub_1000726CC();
  v69 = sub_1000726FC();

  v70 = v140;
  (*(v138 + 32))(v140, v68, v139);
  v71 = v70 + *(v135 + 36);
  *v71 = v69;
  *(v71 + 8) = xmmword_1000756D0;
  *(v71 + 24) = 0x3FF0000000000000;
  v72 = v137;
  v73 = &v137[*(v134 + 36)];
  v74 = enum case for CoordinateSpace.global(_:);
  v75 = sub_100071F9C();
  (*(*(v75 - 8) + 104))(v73, v74, v75);
  v76 = sub_1000728AC();
  v78 = v77;
  v79 = &v73[*(sub_10000388C(&qword_1000956A8, &qword_100077150) + 36)];
  *v79 = v76;
  v79[1] = v78;
  sub_100014DEC(v70, v72, &qword_1000975D8, &qword_1000770A0);
  v80 = v144;
  sub_100014DEC(v72, v144, &qword_1000975E0, &qword_1000770A8);
  v81 = v142;
  v82 = v141;
  v83 = v143;
  (*(v142 + 104))(v141, enum case for GKFeatureFlags.GameOverlayUI(_:), v143);
  LOBYTE(v73) = sub_100071D9C();
  (*(v81 + 8))(v82, v83);
  if (v73)
  {
    v84 = [objc_opt_self() currentDevice];
    v85 = [v84 userInterfaceIdiom];

    if (!v85)
    {
      v111 = 1;
      v110 = v149;
      v108 = v147;
      v99 = v146;
      goto LABEL_25;
    }
  }

  v86 = sub_10007276C();
  v87 = sub_10000388C(&qword_1000970A0, &qword_100076928);
  v88 = v123;
  v89 = &v123[*(v87 + 36)];
  v90 = *(sub_10000388C(&qword_100096498, &qword_100076930) + 28);
  v91 = enum case for Image.Scale.small(_:);
  v92 = sub_1000727BC();
  (*(*(v92 - 8) + 104))(v89 + v90, v91, v92);
  *v89 = swift_getKeyPath();
  *v88 = v86;
  *(v88 + 8) = 1;
  v93 = sub_100043208();
  v94 = swift_getKeyPath();
  v95 = (v88 + *(v124 + 36));
  *v95 = v94;
  v95[1] = v93;
  sub_10007248C();
  sub_1000638BC();
  v96 = v126;
  sub_1000725EC();
  sub_100004890(v88, &qword_100097058, &qword_100077080);
  v97 = v122;
  sub_10006A14C(v122);
  v98 = v120(v97, v151);
  v99 = v146;
  if (v98 == v119 || v98 == v118)
  {
    v103 = sub_10007252C();
  }

  else
  {
    if (v98 != enum case for WidgetFamily.systemLarge(_:) && v98 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v100 = enum case for WidgetFamily.accessoryCircular(_:);
      v101 = v98;
      v102 = sub_10007252C();
      if (v101 != v100 && v101 != enum case for WidgetFamily.accessoryRectangular(_:) && v101 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v152 + 8))(v97, v151);
      }

      goto LABEL_24;
    }

    v103 = sub_1000724EC();
  }

  v102 = v103;
LABEL_24:
  v104 = swift_getKeyPath();
  v105 = v127;
  (*(v129 + 32))(v127, v96, v130);
  v106 = (v105 + *(v128 + 36));
  *v106 = v104;
  v106[1] = v102;
  sub_100063A84();
  v107 = v125;
  sub_1000725FC();
  sub_100004890(v105, &qword_100097060, &qword_100076880);
  v108 = v147;
  v109 = v107;
  v110 = v149;
  (*(v147 + 32))(v99, v109, v149);
  v111 = 0;
LABEL_25:
  (*(v108 + 56))(v99, v111, 1, v110);
  v112 = v145;
  sub_100004C94(v80, v145, &qword_1000975E0, &qword_1000770A8);
  v113 = v148;
  sub_100004C94(v99, v148, &qword_100097070, &qword_100076890);
  v114 = v150;
  sub_100004C94(v112, v150, &qword_1000975E0, &qword_1000770A8);
  v115 = sub_10000388C(&qword_100097608, &qword_1000771F0);
  sub_100004C94(v113, v114 + *(v115 + 48), &qword_100097070, &qword_100076890);
  v116 = v114 + *(v115 + 64);
  *v116 = 0;
  *(v116 + 8) = 0;
  sub_100004890(v99, &qword_100097070, &qword_100076890);
  sub_100004890(v80, &qword_1000975E0, &qword_1000770A8);
  sub_100004890(v113, &qword_100097070, &qword_100076890);
  return sub_100004890(v112, &qword_1000975E0, &qword_1000770A8);
}

uint64_t sub_10006C314@<X0>(char *a1@<X8>)
{
  v25 = a1;
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_10000388C(&qword_100097610, &qword_1000771F8);
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v24 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  sub_10006A14C(v5);
  sub_10006CA2C(&qword_100094E70);
  sub_100072FEC();
  (*(v2 + 8))(v5, v1);
  sub_100071DFC();

  v17 = sub_100071C9C();
  result = (*(*(v17 - 8) + 48))(v9, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000388C(&qword_100097618, &qword_100077200);
    sub_10006CC18();
    sub_10007254C();
    v19 = v11[2];
    v20 = v24;
    v19(v24, v16, v10);
    v21 = v25;
    v19(v25, v20, v10);
    v22 = &v21[*(sub_10000388C(&qword_100097638, &qword_100077210) + 48)];
    *v22 = 0;
    v22[8] = 0;
    v23 = v11[1];
    v23(v16, v10);
    return (v23)(v20, v10);
  }

  return result;
}

double sub_10006C674@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GameCenterLogo();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v22 - v7);
  v9 = sub_10000388C(&qword_100097630, &qword_100077208);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22 - v11;
  *v12 = sub_1000721CC();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = &v12[*(sub_10000388C(&qword_100097640, &qword_100077218) + 44)];
  *v8 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_10006CCD8(v8, v5);
  *v13 = 0;
  v13[8] = 0;
  v14 = sub_10000388C(&qword_100097648, &qword_100077258);
  sub_10006CCD8(v5, &v13[*(v14 + 48)]);
  sub_10006CD3C(v8);
  sub_10006CD3C(v5);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  v16 = sub_1000723DC();
  *(inited + 32) = v16;
  v17 = sub_1000723BC();
  *(inited + 33) = v17;
  v18 = sub_1000723FC();
  *(inited + 34) = v18;
  v19 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v16)
  {
    v19 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v17)
  {
    v19 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v18)
  {
    v19 = sub_1000723EC();
  }

  sub_10006CD98(v12, a1);
  v20 = a1 + *(sub_10000388C(&qword_100097618, &qword_100077200) + 36);
  *v20 = v19;
  result = 0.0;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 1;
  return result;
}

uint64_t sub_10006C920()
{
  v1 = sub_10000388C(&qword_100097510, &qword_100076FC8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v8 - v3);
  *v4 = sub_1000728AC();
  v4[1] = v5;
  v6 = sub_10000388C(&qword_100097518, &qword_100076FD0);
  sub_10006A34C(v0, v4 + *(v6 + 44));
  sub_100004C3C(&qword_100097520, &qword_100097510, &qword_100076FC8);
  sub_1000725AC();
  return sub_100004890(v4, &qword_100097510, &qword_100076FC8);
}

uint64_t sub_10006CA2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000729DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006CA90()
{
  result = qword_1000975F0;
  if (!qword_1000975F0)
  {
    sub_1000038D4(&qword_1000975E8, &qword_100077140);
    sub_10006CB48();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000975F0);
  }

  return result;
}

unint64_t sub_10006CB48()
{
  result = qword_1000975F8;
  if (!qword_1000975F8)
  {
    sub_1000038D4(&qword_100097600, &qword_100077148);
    sub_10004BC0C();
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000975F8);
  }

  return result;
}

unint64_t sub_10006CC18()
{
  result = qword_100097620;
  if (!qword_100097620)
  {
    sub_1000038D4(&qword_100097618, &qword_100077200);
    sub_100004C3C(&qword_100097628, &qword_100097630, &qword_100077208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097620);
  }

  return result;
}

uint64_t sub_10006CCD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterLogo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CD3C(uint64_t a1)
{
  v2 = type metadata accessor for GameCenterLogo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006CD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100097630, &qword_100077208);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CE08()
{
  sub_1000038D4(&qword_100097510, &qword_100076FC8);
  sub_100004C3C(&qword_100097520, &qword_100097510, &qword_100076FC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006CEA0()
{
  sub_100071E3C();
  v0 = sub_100071E1C();
  v1 = sub_100071E2C();

  result = 0;
  if ((v1 & 1) == 0)
  {
    v3 = [objc_opt_self() authenticatedLocalPlayers];
    v4 = sub_100072C4C();

    if (*(v4 + 16))
    {
      sub_10000EA40(v4 + 32, v6);

      sub_10006CF88();
      if (swift_dynamicCast())
      {
        return v5;
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

unint64_t sub_10006CF88()
{
  result = qword_100094CE0;
  if (!qword_100094CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100094CE0);
  }

  return result;
}

uint64_t sub_10006CFE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100071F5C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for CPTimelineEntry();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9] + 32);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_10006D1C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100071F5C();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = type metadata accessor for CPTimelineEntry();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9] + 32) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPMediumContentView()
{
  result = qword_1000976A8;
  if (!qword_1000976A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006D3DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CPMediumContentView();
  sub_100004C94(v1 + *(v12 + 20), v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10006D5E4()
{
  v1 = sub_10007218C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CPMediumContentView() + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_100072CEC();
    v8 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10006D73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_10000388C(&qword_100097718, &qword_100077310);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_10000388C(&qword_100097720, &qword_100077318);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_10006D9AC(&v24);
  v23 = v24;
  sub_10000388C(&qword_100097728, &qword_100077320);
  sub_10007107C();
  sub_10007264C();

  *v9 = sub_1000721CC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = sub_10000388C(&qword_100097738, &qword_100077328);
  sub_10006DCC8(a1, &v9[*(v17 + 44)]);
  sub_100004C94(v16, v13, &qword_100097720, &qword_100077318);
  sub_100004C94(v9, v6, &qword_100097718, &qword_100077310);
  v18 = v22;
  sub_100004C94(v13, v22, &qword_100097720, &qword_100077318);
  v19 = sub_10000388C(&qword_100097740, &qword_100077330);
  sub_100004C94(v6, v18 + *(v19 + 48), &qword_100097718, &qword_100077310);
  sub_100004890(v9, &qword_100097718, &qword_100077310);
  sub_100004890(v16, &qword_100097720, &qword_100077318);
  sub_100004890(v6, &qword_100097718, &qword_100077310);
  return sub_100004890(v13, &qword_100097720, &qword_100077318);
}

uint64_t sub_10006D9AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10007297C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_10007218C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + *(type metadata accessor for CPMediumContentView() + 24);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_100072CEC();
    v24 = v11;
    v25 = v1;
    v18 = v12;
    v19 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v17, 0);
    (*(v18 + 8))(v15, v24);
    if (v26 != 1)
    {
LABEL_6:
      result = 0;
      goto LABEL_10;
    }
  }

  sub_1000129F8(v10);
  sub_10007296C();
  sub_100004DB8(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode);
  v20 = sub_100072B1C();
  v21 = *(v4 + 8);
  v21(v7, v3);
  v21(v10, v3);
  if (v20)
  {
    goto LABEL_6;
  }

  if (qword_1000946D8 != -1)
  {
    swift_once();
  }

LABEL_10:
  *a1 = result;
  return result;
}

uint64_t sub_10006DCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_10000388C(&qword_100097748, &qword_100077338);
  v4 = *(v3 - 8);
  v47 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v44 - v8;
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000388C(&qword_100097750, &qword_100077340);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  v18 = sub_10000388C(&qword_100097758, &qword_100077348);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v45 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v44 - v23;
  sub_10006E0FC(&v44 - v23);
  sub_10006F3B4(a1, v17);
  v25 = *(type metadata accessor for CPMediumContentView() + 28);
  sub_10006D3DC(v13);
  sub_100022F7C(a1 + v25, v13);
  (*(v10 + 8))(v13, v9);
  sub_1000728AC();
  sub_100071F2C();
  v26 = &v17[*(v14 + 36)];
  v27 = v51;
  *v26 = v50;
  *(v26 + 1) = v27;
  *(v26 + 2) = v52;
  v28 = &v24[*(v19 + 44)];
  sub_1000710F8();
  sub_10007264C();
  sub_100004890(v17, &qword_100097750, &qword_100077340);
  v29 = sub_1000728AC();
  v31 = v30;
  v32 = &v28[*(sub_10000388C(&qword_1000977A8, &qword_100077370) + 36)];
  *v32 = v29;
  v32[1] = v31;
  v33 = v46;
  sub_10006E74C(v46);
  v34 = v33 + *(v47 + 44);
  sub_10006EC24(v34);
  v35 = sub_1000728AC();
  v37 = v36;
  v38 = (v34 + *(sub_10000388C(&qword_1000977B0, &qword_100077378) + 36));
  *v38 = v35;
  v38[1] = v37;
  v39 = v45;
  sub_100004C94(v24, v45, &qword_100097758, &qword_100077348);
  v40 = v48;
  sub_100004C94(v33, v48, &qword_100097748, &qword_100077338);
  v41 = v49;
  sub_100004C94(v39, v49, &qword_100097758, &qword_100077348);
  v42 = sub_10000388C(&qword_1000977B8, &qword_100077380);
  sub_100004C94(v40, v41 + *(v42 + 48), &qword_100097748, &qword_100077338);
  sub_100004890(v33, &qword_100097748, &qword_100077338);
  sub_100004890(v24, &qword_100097758, &qword_100077348);
  sub_100004890(v40, &qword_100097748, &qword_100077338);
  return sub_100004890(v39, &qword_100097758, &qword_100077348);
}

uint64_t sub_10006E0FC@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = sub_10007234C();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  __chkstk_darwin(v2);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10000388C(&qword_1000959E8, &unk_100077500);
  v5 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v56 = &v52 - v6;
  v7 = sub_10000388C(&qword_1000959F0, &unk_100074EE0);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  __chkstk_darwin(v7);
  v54 = &v52 - v9;
  v10 = sub_1000729DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v52 - v17;
  v61 = sub_100071C9C();
  v19 = *(v61 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v61);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v60 = &v52 - v24;
  v25 = type metadata accessor for CPMediumContentView();
  v26 = v1;
  v27 = v1 + *(v25 + 32);
  v28 = type metadata accessor for CPTimelineEntry();
  v29 = *(v27 + *(v28 + 20));
  if (v29 >> 62)
  {
    if (v29 < 0)
    {
      v51 = *(v27 + *(v28 + 20));
    }

    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_8;
    }
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    v53 = sub_100072E6C();
    goto LABEL_6;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v53 = *(v29 + 32);

LABEL_6:
    sub_10006D3DC(v14);
    sub_100005294(v14, v18);
    v31 = *(v11 + 8);
    v31(v14, v10);
    v32 = v19;
    if ((*(v19 + 48))(v18, 1, v61) != 1)
    {
      v37 = v60;
      (*(v32 + 32))();
      v38 = *(v25 + 28);
      v39 = v32;
      sub_10006D3DC(v14);
      sub_100022F7C(v26 + v38, v14);
      v31(v14, v10);
      v40 = v37;
      v41 = v61;
      v42 = (*(v32 + 16))(v22, v40, v61);
      __chkstk_darwin(v42);
      v43 = v53;
      *(&v52 - 2) = v26;
      *(&v52 - 1) = v43;
      sub_10000388C(&qword_1000959F8, &unk_100074EF0);
      sub_100004C3C(&qword_100095A00, &qword_1000959F8, &unk_100074EF0);
      v44 = v56;
      sub_10007254C();
      sub_1000728AC();
      sub_100071F2C();
      v45 = (v44 + *(v55 + 36));
      v46 = v66;
      *v45 = v65;
      v45[1] = v46;
      v45[2] = v67;
      v47 = v57;
      sub_10007233C();
      sub_1000286C8();
      v48 = v54;
      sub_10007266C();

      (*(v58 + 8))(v47, v59);
      sub_100004890(v44, &qword_1000959E8, &unk_100077500);
      (*(v39 + 8))(v60, v41);
      v36 = v62;
      v49 = v63;
      v50 = v64;
      (*(v62 + 32))(v64, v48, v63);
      v35 = v49;
      v34 = v50;
      v33 = 0;
      return (*(v36 + 56))(v34, v33, 1, v35);
    }

    sub_100004890(v18, &qword_100094E50, &qword_100074180);
LABEL_8:
    v33 = 1;
    v35 = v63;
    v34 = v64;
    v36 = v62;
    return (*(v36 + 56))(v34, v33, 1, v35);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006E74C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for CPAppGridView();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000962C0, &qword_100076240);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v49 = sub_10000388C(&qword_1000962C8, &qword_100077400);
  v11 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v13 = &v48 - v12;
  v14 = type metadata accessor for CPMediumContentView();
  sub_100028780(v1 + *(v14 + 32), v6, type metadata accessor for CPTimelineEntry);
  v15 = *(v14 + 28);
  v16 = v3[7];
  v17 = sub_100071F5C();
  (*(*(v17 - 8) + 16))(&v6[v16], v1 + v15, v17);
  *&v6[v3[13]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v6[v3[14]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v6[v3[8]] = 1;
  *&v6[v3[9]] = 2;
  v6[v3[10]] = 0;
  v18 = v3[11];
  *&v6[v18] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v19 = v3[12];
  *&v6[v19] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  LOBYTE(v19) = sub_1000723FC();
  *(inited + 32) = v19;
  v21 = sub_1000723CC();
  *(inited + 33) = v21;
  v22 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v19)
  {
    v22 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v21)
  {
    v22 = sub_1000723EC();
  }

  sub_100041AB4(v6, v10);
  v23 = &v10[*(v7 + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = sub_1000723DC();
  v25 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v24)
  {
    v25 = sub_1000723EC();
  }

  sub_100071F3C();
  sub_100071E8C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100014DEC(v10, v13, &qword_1000962C0, &qword_100076240);
  v34 = &v13[*(v49 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_1000723BC();
  v36 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v35)
  {
    v36 = sub_1000723EC();
  }

  sub_100071E8C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v50;
  sub_100014DEC(v13, v50, &qword_1000962C8, &qword_100077400);
  result = sub_10000388C(&qword_1000962D0, &qword_1000774A0);
  v47 = v45 + *(result + 36);
  *v47 = v36;
  *(v47 + 8) = v38;
  *(v47 + 16) = v40;
  *(v47 + 24) = v42;
  *(v47 + 32) = v44;
  *(v47 + 40) = 0;
  return result;
}

uint64_t sub_10006EC24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v34 = sub_10000388C(&qword_1000977C0, &qword_100077388);
  v3 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v5 = (&v32 - v4);
  v6 = sub_10000388C(&qword_1000977C8, &qword_100077390);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v33 = &v32 - v9;
  v10 = sub_10007297C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  sub_1000129F8(&v32 - v16);
  sub_10007296C();
  sub_100004DB8(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode);
  v18 = sub_100072B1C();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v19(v17, v10);
  if (v18)
  {
    goto LABEL_13;
  }

  v20 = v2 + *(type metadata accessor for CPMediumContentView() + 32);
  v21 = type metadata accessor for CPTimelineEntry();
  if (*(v20 + *(v21 + 32)) == 1 && (sub_10006D5E4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v22 = *(v20 + *(v21 + 20));
  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:
    v30 = 1;
    v29 = v35;
    return (*(v7 + 56))(v29, v30, 1, v6);
  }

  if (v22 < 0)
  {
    v31 = *(v20 + *(v21 + 20));
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = sub_100072E6C();
    goto LABEL_9;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v22 + 32);

LABEL_9:
    *v5 = sub_1000728AC();
    v5[1] = v25;
    v26 = sub_10000388C(&qword_1000977D0, &unk_100077398);
    sub_100070300(v24, v2, v5 + *(v26 + 44));
    sub_100004C3C(&qword_1000977D8, &qword_1000977C0, &qword_100077388);
    v27 = v33;
    sub_10007264C();

    sub_100004890(v5, &qword_1000977C0, &qword_100077388);
    v28 = v35;
    sub_100014DEC(v27, v35, &qword_1000977C8, &qword_100077390);
    v29 = v28;
    v30 = 0;
    return (*(v7 + 56))(v29, v30, 1, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006EFF4()
{
  sub_1000726DC();
  sub_10007264C();
}

uint64_t sub_10006F058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10007223C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10000388C(&qword_100095A20, &unk_100074F00);
  return sub_10006F0C0(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_10006F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CPTitleView();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v28 - v12);
  v14 = type metadata accessor for CPMediumContentView();
  v15 = v14[7];
  v16 = v7[10];
  v17 = sub_100071F5C();
  (*(*(v17 - 8) + 16))(v13 + v16, a1 + v15, v17);
  sub_100028780(a1 + v14[8], v13 + v7[11], type metadata accessor for CPTimelineEntry);
  v18 = (a1 + v14[9]);
  v19 = *(v18 + 4);
  v20 = v18[1];
  v34 = *v18;
  v35 = v20;
  v36 = v19;
  sub_10000388C(&qword_1000948F0, qword_100077520);
  sub_10007280C();
  v21 = v30;
  v22 = v31;
  v28 = v33;
  v29 = v32;
  *(v13 + v7[8]) = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *(v13 + v7[9]) = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *v13 = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v23 = v7[7];
  *(v13 + v23) = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  *(v13 + v7[12]) = a2;
  v24 = v13 + v7[13];
  *v24 = v21;
  *(v24 + 1) = v22;
  v25 = v28;
  *(v24 + 1) = v29;
  *(v24 + 2) = v25;
  sub_100028780(v13, v10, type metadata accessor for CPTitleView);
  *a3 = 0;
  *(a3 + 8) = 0;
  v26 = sub_10000388C(&qword_100095A28, &qword_100074F10);
  sub_100028780(v10, a3 + *(v26 + 48), type metadata accessor for CPTitleView);

  sub_1000287E8(v13, type metadata accessor for CPTitleView);
  return sub_1000287E8(v10, type metadata accessor for CPTitleView);
}

uint64_t sub_10006F3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_10000388C(&qword_1000977A0, &qword_100077368);
  v3 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v5 = (&v27 - v4);
  v6 = sub_1000729DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000388C(&qword_100097818, &qword_1000774A8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = a1 + *(type metadata accessor for CPMediumContentView() + 32);
  v16 = type metadata accessor for CPTimelineEntry();
  if (*(v15 + *(v16 + 32)) == 1 && (sub_10006D5E4() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100097798, &qword_1000977A0, &qword_100077368);
    v23 = v28;
    sub_10007230C();
    v24 = 0;
    goto LABEL_13;
  }

  v17 = *(v15 + *(v16 + 20));
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v26 = *(v15 + *(v16 + 20));
    }

    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_12;
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_100072E6C();
    goto LABEL_8;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);

LABEL_8:
    sub_10006D3DC(v10);
    v20 = sub_10001D980(v10, 1);
    (*(v7 + 8))(v10, v6);
    if (v20)
    {
      *v5 = sub_1000728AC();
      v5[1] = v21;
      v22 = sub_10000388C(&qword_100097820, &qword_1000774B0);
      sub_10006F79C(v20, a1, v5 + *(v22 + 44));
      sub_100004C94(v5, v14, &qword_1000977A0, &qword_100077368);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100097798, &qword_1000977A0, &qword_100077368);
      v23 = v28;
      sub_10007230C();

      sub_100004890(v5, &qword_1000977A0, &qword_100077368);
      v24 = 0;
LABEL_13:
      v25 = sub_10000388C(&qword_100097790, &qword_100077360);
      return (*(*(v25 - 8) + 56))(v23, v24, 1, v25);
    }

LABEL_12:
    v24 = 1;
    v23 = v28;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006F79C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v80 = a3;
  v4 = sub_10007297C();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v65 - v8;
  v9 = sub_1000728BC();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = *(v76 + 64);
  __chkstk_darwin(v9);
  v74 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10000388C(&qword_100095988, &qword_100074E48);
  v12 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v14 = &v65 - v13;
  v15 = sub_10000388C(&qword_100095990, &qword_100074E50);
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  __chkstk_darwin(v15);
  v66 = &v65 - v17;
  v18 = sub_10000388C(&qword_100095998, &unk_100074E58);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v69 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v65 - v23;
  __chkstk_darwin(v25);
  v67 = &v65 - v26;
  v27 = sub_10007277C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000388C(&qword_100094930, &qword_100076430);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v65 = &v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v65 - v37;
  v39 = a1;
  sub_10007275C();
  (*(v28 + 104))(v31, enum case for Image.ResizingMode.stretch(_:), v27);
  sub_1000727DC();

  (*(v28 + 8))(v31, v27);
  *v38 = sub_1000728AC();
  *(v38 + 1) = v40;
  v41 = sub_10000388C(&qword_100094978, &qword_100074E80);
  sub_10005544C(&v38[*(v41 + 44)], 0.3);

  v42 = &v38[*(sub_10000388C(&qword_100094980, &unk_100073AC0) + 36)];
  *v42 = 0;
  *(v42 + 4) = 1;
  v43 = &v38[*(v33 + 44)];
  v44 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
  v45 = enum case for ColorScheme.light(_:);
  v46 = sub_100071EAC();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = swift_getKeyPath();
  *v14 = sub_10007223C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v47 = sub_10000388C(&qword_1000959C8, &qword_100074EC0);
  sub_10006FF10(v73, &v14[*(v47 + 44)]);
  sub_100004C3C(&qword_1000959D0, &qword_100095988, &qword_100074E48);
  v48 = v66;
  sub_1000725AC();
  sub_100004890(v14, &qword_100095988, &qword_100074E48);
  v49 = v72;
  sub_1000129F8(v72);
  v50 = v75;
  sub_10007296C();
  v51 = v50;
  LOBYTE(v50) = sub_10007295C();
  v52 = *(v78 + 8);
  v53 = v51;
  v54 = v79;
  v52(v53, v79);
  v52(v49, v54);
  v55 = v76;
  v56 = &enum case for BlendMode.destinationOut(_:);
  if ((v50 & 1) == 0)
  {
    v56 = &enum case for BlendMode.normal(_:);
  }

  v57 = v74;
  v58 = v77;
  (*(v76 + 104))(v74, *v56, v77);
  (*(v55 + 32))(&v24[*(v19 + 44)], v57, v58);
  (*(v70 + 32))(v24, v48, v71);
  v59 = v67;
  sub_10007148C(v24, v67);
  v60 = v65;
  sub_100004C94(v38, v65, &qword_100094930, &qword_100076430);
  v61 = v69;
  sub_100004C94(v59, v69, &qword_100095998, &unk_100074E58);
  v62 = v80;
  sub_100004C94(v60, v80, &qword_100094930, &qword_100076430);
  v63 = sub_10000388C(&qword_100097828, &unk_1000774F0);
  sub_100004C94(v61, v62 + *(v63 + 48), &qword_100095998, &unk_100074E58);
  sub_100004890(v59, &qword_100095998, &unk_100074E58);
  sub_100004890(v38, &qword_100094930, &qword_100076430);
  sub_100004890(v61, &qword_100095998, &unk_100074E58);
  return sub_100004890(v60, &qword_100094930, &qword_100076430);
}

uint64_t sub_10006FF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for CPTitleGradientView();
  v4 = *(v3 - 8);
  v47 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = (&v42 - v8);
  v9 = sub_1000729DC();
  v44 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPHeaderGradientView();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (&v42 - v19);
  v21 = type metadata accessor for CPMediumContentView();
  v22 = *(v21 + 28);
  sub_10006D3DC(v13);
  sub_100022F7C(a1 + v22, v13);
  v24 = v23;
  v43 = *(v10 + 8);
  v43(v13, v9);
  sub_100071F3C();
  v26 = v25 * 0.2867;
  v27 = *(v21 + 32);
  sub_100028780(a1 + v27, v20 + *(v15 + 32), type metadata accessor for CPTimelineEntry);
  *v20 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v28 = (v20 + *(v15 + 28));
  *v28 = v24;
  v28[1] = v26;
  sub_10006D3DC(v13);
  sub_100022F7C(a1 + v22, v13);
  v30 = v29;
  v43(v13, v44);
  sub_100071F3C();
  v32 = v31 * 0.5;
  v34 = v46;
  v33 = v47;
  sub_100028780(a1 + v27, v46 + *(v47 + 32), type metadata accessor for CPTimelineEntry);
  *v34 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v35 = (v34 + *(v33 + 28));
  *v35 = v30;
  v35[1] = v32;
  v36 = v45;
  sub_100028780(v20, v45, type metadata accessor for CPHeaderGradientView);
  v37 = v48;
  sub_100028780(v34, v48, type metadata accessor for CPTitleGradientView);
  v38 = v49;
  sub_100028780(v36, v49, type metadata accessor for CPHeaderGradientView);
  v39 = sub_10000388C(&qword_1000959E0, &unk_100074ED0);
  v40 = v38 + *(v39 + 48);
  *v40 = 0;
  *(v40 + 8) = 0;
  sub_100028780(v37, v38 + *(v39 + 64), type metadata accessor for CPTitleGradientView);
  sub_1000287E8(v34, type metadata accessor for CPTitleGradientView);
  sub_1000287E8(v20, type metadata accessor for CPHeaderGradientView);
  sub_1000287E8(v37, type metadata accessor for CPTitleGradientView);
  return sub_1000287E8(v36, type metadata accessor for CPHeaderGradientView);
}

uint64_t sub_100070300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v82 = sub_10000388C(&qword_1000958F0, &unk_100076390);
  v5 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v7 = (&v72 - v6);
  v73 = sub_10000388C(&qword_100095228, &qword_1000745D0);
  v8 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  KeyPath = &v72 - v9;
  v75 = sub_10000388C(&qword_1000958F8, &unk_1000763A0);
  v10 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v77 = &v72 - v11;
  v83 = sub_10000388C(&qword_100095900, &unk_100074DF0);
  v12 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v76 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = &v72 - v15;
  v16 = sub_10000388C(&qword_100095908, &unk_1000763B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v81 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v72 - v20;
  v22 = sub_10007277C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10004D174(0x6C616D726F6ELL, 0xE600000000000000);
  v74 = a1;
  if (v27)
  {
    v28 = v27;
    sub_10007275C();
    (*(v23 + 104))(v26, enum case for Image.ResizingMode.stretch(_:), v22);
    v29 = sub_1000727DC();

    (*(v23 + 8))(v26, v22);
    sub_10007290C();
    v86 = v29;
    *v87 = xmmword_100077260;
    *&v87[16] = 0x3FF0000000000000;
    *&v88 = v30;
    *(&v88 + 1) = v31;
    v89 = 0;

    sub_10000388C(&qword_1000977E0, &qword_1000773A8);
    sub_10000388C(&qword_1000977E8, &qword_1000773B0);
    sub_100071344();
    sub_1000713F0(&qword_100097808, &qword_1000977E8, &qword_1000773B0);
    sub_10007230C();
  }

  else
  {
    v32 = *(a1 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
    if (v32)
    {
      v33 = *(a1 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
    }

    else
    {
      v34 = *(a1 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
      }
    }

    v36 = v32;
    v86 = sub_1000726AC();
    *v87 = 0xBFC3333333333333;
    *&v87[8] = 0u;
    v88 = 0u;
    v89 = 1;
    sub_10000388C(&qword_1000977E0, &qword_1000773A8);
    sub_10000388C(&qword_1000977E8, &qword_1000773B0);
    sub_100071344();
    sub_1000713F0(&qword_100097808, &qword_1000977E8, &qword_1000773B0);
    sub_10007230C();
  }

  v84 = v90;
  v85 = v91;
  v38 = v92;
  v37 = v93;
  v39 = v94;
  v40 = v80 + *(type metadata accessor for CPMediumContentView() + 32);
  v41 = type metadata accessor for CPTimelineEntry();
  v42 = *(v40 + v41[6]) == 1;
  v80 = *(&v84 + 1);
  if (v42 && (*(v40 + v41[7]) & 1) == 0 && (*(v40 + v41[8]) & 1) == 0 && *(v40 + v41[9]) == 1)
  {
    v43 = *(v40 + v41[5]);
    if (v43 >> 62)
    {
      if (v43 < 0)
      {
        v67 = *(v40 + v41[5]);
      }

      if (sub_100072EDC() >= 1)
      {
        goto LABEL_16;
      }
    }

    else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_16:
      v44 = v38;
      v45 = v37;
      j__swift_retain();
      v46 = KeyPath;
      sub_10007287C();
      v47 = sub_1000723AC();
      *(v46 + *(sub_10000388C(&qword_100095220, &unk_1000763C0) + 36)) = v47;
      sub_1000726CC();
      v48 = sub_1000726FC();

      v49 = sub_1000723AC();
      v50 = v46 + *(v73 + 36);
      *v50 = v48;
      *(v50 + 8) = v49;
      v51 = *(v74 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
      v72 = v7;
      if (!v51)
      {
        v52 = *(v74 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
        if (v52)
        {
          v53 = v52;
        }

        else
        {
          v54 = objc_allocWithZone(UIColor);
          [v54 initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:{1.0, v72}];
        }
      }

      v55 = v51;
      sub_1000726AC();
      v56 = sub_1000726FC();

      v57 = sub_1000723AC();
      v58 = v77;
      sub_100014DEC(KeyPath, v77, &qword_100095228, &qword_1000745D0);
      v59 = v58 + *(v75 + 36);
      *v59 = v56;
      *(v59 + 8) = v57;
      KeyPath = swift_getKeyPath();
      v60 = v76;
      v61 = &v76[*(v83 + 36)];
      v75 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
      v62 = enum case for ColorScheme.light(_:);
      v63 = sub_100071EAC();
      (*(*(v63 - 8) + 104))(&v61[v75], v62, v63);
      *v61 = KeyPath;
      sub_100014DEC(v58, v60, &qword_1000958F8, &unk_1000763A0);
      v64 = v60;
      v65 = v78;
      sub_100014DEC(v64, v78, &qword_100095900, &unk_100074DF0);
      sub_100004C94(v65, v72, &qword_100095900, &unk_100074DF0);
      swift_storeEnumTagMultiPayload();
      sub_100028240();
      v66 = v21;
      sub_10007230C();
      sub_100004890(v65, &qword_100095900, &unk_100074DF0);
      goto LABEL_27;
    }
  }

  v44 = v38;
  v45 = v37;
  j__swift_retain();
  if (qword_1000946E0 != -1)
  {
    swift_once();
  }

  *v7 = qword_100099978;
  swift_storeEnumTagMultiPayload();
  sub_100028240();

  v66 = v21;
  sub_10007230C();
LABEL_27:
  v68 = v81;
  sub_100004C94(v66, v81, &qword_100095908, &unk_1000763B0);
  v69 = v85;
  *a3 = v84;
  *(a3 + 16) = v69;
  *(a3 + 32) = v44;
  *(a3 + 40) = v45;
  *(a3 + 48) = v39;
  v70 = sub_10000388C(&qword_100097810, &qword_1000773C0);
  sub_100004C94(v68, a3 + *(v70 + 48), &qword_100095908, &unk_1000763B0);
  j__swift_retain();
  j__swift_release();
  sub_100004890(v66, &qword_100095908, &unk_1000763B0);
  sub_100004890(v68, &qword_100095908, &unk_1000763B0);
  return j__swift_release();
}

uint64_t sub_100070DA8@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = sub_10007236C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000976F0, &qword_1000772F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v14 - v9);
  *v10 = sub_1000728AC();
  v10[1] = v11;
  v12 = sub_10000388C(&qword_1000976F8, &qword_100077300);
  sub_10006D73C(v1, v10 + *(v12 + 44));
  sub_10007235C();
  sub_1000728AC();
  sub_10000388C(&qword_100097700, &qword_100077308);
  sub_100004C3C(&qword_100097708, &qword_1000976F0, &qword_1000772F8);
  sub_100070FC0();
  sub_10007265C();
  (*(v3 + 8))(v6, v2);
  return sub_100004890(v10, &qword_1000976F0, &qword_1000772F8);
}

unint64_t sub_100070FC0()
{
  result = qword_100097710;
  if (!qword_100097710)
  {
    sub_1000038D4(&qword_100097700, &qword_100077308);
    sub_100004DB8(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097710);
  }

  return result;
}

unint64_t sub_10007107C()
{
  result = qword_100097730;
  if (!qword_100097730)
  {
    sub_1000038D4(&qword_100097728, &qword_100077320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097730);
  }

  return result;
}

unint64_t sub_1000710F8()
{
  result = qword_100097760;
  if (!qword_100097760)
  {
    sub_1000038D4(&qword_100097750, &qword_100077340);
    sub_100071184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097760);
  }

  return result;
}

unint64_t sub_100071184()
{
  result = qword_100097768;
  if (!qword_100097768)
  {
    sub_1000038D4(&qword_100097770, &qword_100077350);
    sub_100071208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097768);
  }

  return result;
}

unint64_t sub_100071208()
{
  result = qword_100097778;
  if (!qword_100097778)
  {
    sub_1000038D4(&qword_100097780, &qword_100077358);
    sub_10007128C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097778);
  }

  return result;
}

unint64_t sub_10007128C()
{
  result = qword_100097788;
  if (!qword_100097788)
  {
    sub_1000038D4(&qword_100097790, &qword_100077360);
    sub_100004C3C(&qword_100097798, &qword_1000977A0, &qword_100077368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097788);
  }

  return result;
}

unint64_t sub_100071344()
{
  result = qword_1000977F0;
  if (!qword_1000977F0)
  {
    sub_1000038D4(&qword_1000977E0, &qword_1000773A8);
    sub_1000713F0(&qword_1000977F8, &qword_100097800, &qword_1000773B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977F0);
  }

  return result;
}

uint64_t sub_1000713F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007148C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100095998, &unk_100074E58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100071504()
{
  sub_1000038D4(&qword_1000976F0, &qword_1000772F8);
  sub_1000038D4(&qword_100097700, &qword_100077308);
  sub_100004C3C(&qword_100097708, &qword_1000976F0, &qword_1000772F8);
  sub_100070FC0();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_1000715E4(int a1, int a2, int a3)
{
  if (qword_100099948 == -1)
  {
    v3 = dword_100099938 < a1;
    if (dword_100099938 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_100071B6C();
    a2 = v6;
    a3 = v5;
    v3 = dword_100099938 < a1;
    if (dword_100099938 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_10009993C > a2)
  {
    return 1;
  }

  if (dword_10009993C < a2)
  {
    return 0;
  }

  return dword_100099940 >= a3;
}

uint64_t sub_1000716A4(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100099950 == -1)
  {
    if (qword_100099958)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100071B84();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100099958)
    {
      return _availability_version_check();
    }
  }

  if (qword_100099948 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100071B6C();
    a3 = v10;
    a4 = v9;
    v8 = dword_100099938 < v11;
    if (dword_100099938 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10009993C > a3)
      {
        return 1;
      }

      if (dword_10009993C >= a3)
      {
        return dword_100099940 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100099938 < a2;
  if (dword_100099938 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100071838(uint64_t result)
{
  v1 = qword_100099958;
  if (qword_100099958)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100099958 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100099938, &dword_10009993C, &dword_100099940);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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