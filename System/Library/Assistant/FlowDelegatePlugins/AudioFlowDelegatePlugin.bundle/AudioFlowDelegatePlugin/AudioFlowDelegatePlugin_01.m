uint64_t sub_1DCC4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 81);
}

uint64_t sub_1DD1C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1DD54()
{
  v1 = sub_20410(&qword_3524B0, &unk_2D8440);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1DE40()
{
  v1 = sub_20410(&qword_3524B0, &unk_2D8440);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_2C8BB0();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_1DF94()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1DFD0()
{
  v1 = *(sub_20410(&qword_356378, &qword_2D8590) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = sub_20410(&qword_3524B0, &unk_2D8440);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1E0FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1E134()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1E190()
{
  v1 = sub_2CC950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);

  v9 = *(v0 + v5);

  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1E268()
{
  v1 = sub_2CC950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1E2F0()
{
  v1 = sub_2CC950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16);
}

uint64_t sub_1E3F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1E444()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1E494()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1E4D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for ResponseFactoryOutputContext(0);
  v36 = *(*(v7 - 1) + 80);
  v35 = *(*(v7 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);
  v9 = (v36 + v6 + 8) & ~v36;

  v10 = v0 + v9;
  v11 = *(v0 + v9);

  v12 = v0 + v9 + v7[5];
  v13 = type metadata accessor for SnippetModelResponse();
  if (!(*(*(v13 - 1) + 48))(v12, 1, v13))
  {
    v34 = (v36 + v6 + 8) & ~v36;
    v14 = sub_2CD230();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (!v16(v12, 1, v14))
    {
      (*(v15 + 8))(v12, v14);
    }

    v17 = v13[5];
    if (!v16(v12 + v17, 1, v14))
    {
      (*(v15 + 8))(v12 + v17, v14);
    }

    v18 = *(v12 + v13[6] + 8);

    v19 = *(v12 + v13[7]);

    v9 = v34;
  }

  v20 = *(v10 + v7[6]);

  v21 = v10 + v7[7];
  v22 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v23 = sub_2CA130();
    (*(*(v23 - 8) + 8))(v21, v23);
  }

  v24 = v7[8];
  v25 = sub_2CA000();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v10 + v24, 1, v25))
  {
    (*(v26 + 8))(v10 + v24, v25);
  }

  v27 = *(v10 + v7[9]);

  v28 = (v10 + v7[11]);
  v29 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    if (v28[3])
    {
      sub_306C(v28);
    }

    v30 = *(v29 + 20);
    v31 = sub_2CD140();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v28 + v30, 1, v31))
    {
      (*(v32 + 8))(v28 + v30, v31);
    }
  }

  return _swift_deallocObject(v0, v9 + v35);
}

uint64_t sub_1E9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_20410(&qword_356420, &unk_2D88A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1EA78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_20410(&qword_356420, &unk_2D88A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1EB28(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_20410(&qword_356410, &qword_2D8888);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(a1 + v12, a2, v10);
  }

  v13 = sub_20410(&qword_34C820, &unk_2D0A30);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[7];
    goto LABEL_13;
  }

  v14 = sub_20410(&unk_353020, &unk_2D0970);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_20410(&qword_3564D0, qword_2D88D0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

char *sub_1ED18(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = sub_20410(&qword_356410, &qword_2D8888);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_20410(&qword_34C820, &unk_2D0A30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_20410(&unk_353020, &unk_2D0970);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_20410(&qword_3564D0, qword_2D88D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[11]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1EEFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1EF50()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1EFB0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F0D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F120()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1F16C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F1AC()
{
  v1 = sub_20410(&qword_356A78, &unk_2D8EF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1F27C()
{
  v1 = sub_20410(&qword_356A78, &unk_2D8EF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1F314()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1F364()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F3A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1F45C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F498()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_306C((v0 + v4));

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1F544()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1F584()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_306C((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1F68C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F6C4()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1F768()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1F7A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1F820(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2CAFE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_20410(&qword_34D718, &unk_2D15F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[18];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_20410(&qword_34D6A0, &unk_2D3490);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[28];
    goto LABEL_13;
  }

  v17 = sub_20410(&qword_34D6C8, &unk_2D15C0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[31];
    goto LABEL_13;
  }

  v18 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[32];

  return v19(v20, a2, v18);
}

uint64_t sub_1FA54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2CAFE0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_20410(&qword_34D718, &unk_2D15F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[18];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_20410(&qword_34D6A0, &unk_2D3490);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[28];
    goto LABEL_11;
  }

  v17 = sub_20410(&qword_34D6C8, &unk_2D15C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[31];
    goto LABEL_11;
  }

  v18 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[32];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1FC8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1FCD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1FD10()
{
  v1 = type metadata accessor for PlayMediaIOSSnippetModelProvider.PlayMediaIOSSnippetContext();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  v7 = sub_2CD270();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = *(v6 + v1[5] + 8);

  v10 = v1[6];
  v11 = sub_2CC380();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v6 + v1[7] + 8);

  v15 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_1FEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20410(&qword_352960, &qword_2D5110);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_20410(&qword_357570, &qword_2D9798);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_20048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20410(&qword_352960, &qword_2D5110);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_20410(&qword_357570, &qword_2D9798);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_201B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DetermineIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DetermineIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t variable initialization expression of ExecuteMusicOnRemoteFlow.inputToExecute@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2CA7B0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double variable initialization expression of ExecuteMusicOnRemoteFlow.companionNotInRangeErrorCodes()
{
  sub_20410(&qword_34C150, &qword_2D00B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2D0050;
  *(v0 + 32) = xmmword_2D0060;
  *&result = 1011;
  *(v0 + 48) = xmmword_2D0070;
  *(v0 + 64) = xmmword_2D0080;
  *(v0 + 80) = 1017;
  return result;
}

uint64_t sub_20410(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double sub_20468(uint64_t a1)
{
  sub_20410(&qword_34C150, &qword_2D00B0);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_2D0090;
  *(v2 + 32) = a1;
  return result;
}

uint64_t variable initialization expression of InternalSignalsManager.lock()
{
  sub_2CB4A0();
  sub_2CB490();
  v0 = sub_2CB810();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2CB7F0();
}

Swift::Int sub_20570()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CEF60(v1);
  return sub_2CEF80();
}

Swift::Int sub_205B8()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CEF60(v1);
  return sub_2CEF80();
}

_DWORD *sub_205FC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_20634(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_206AC(uint64_t a1)
{
  v88 = sub_2CD040();
  v86 = *(v88 - 8);
  v2 = *(v86 + 64);
  v3 = __chkstk_darwin(v88);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v87 = &v84 - v6;
  v7 = sub_2CE000();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v84 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v84 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v84 - v19;
  __chkstk_darwin(v18);
  v22 = &v84 - v21;
  v23 = sub_2CD050();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v27, a1, v23);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 == enum case for AppResolutionResult.needsConfirmation(_:))
  {
    (*(v24 + 96))(v27, v23);
    v29 = *v27;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = v90;
    v31 = sub_3ED0(v90, static Logger.default);
    swift_beginAccess();
    v32 = v89;
    (*(v89 + 16))(v20, v31, v30);

    v33 = sub_2CDFE0();
    v34 = sub_2CE690();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v91 = v29;
      v92 = v36;
      *v35 = 136315138;
      sub_2CCFB0();
      sub_21334(&qword_34C170, &type metadata accessor for App);
      v37 = sub_2CEE70();
      v39 = sub_3F08(v37, v38, &v92);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_0, v33, v34, "AppResolutionAction#from confirm %s", v35, 0xCu);
      sub_306C(v36);
    }

    (*(v32 + 8))(v20, v30);
    sub_2CA300();
    v40 = sub_2CA2F0();
LABEL_7:
    v41 = v40;

    return v41;
  }

  if (v28 == enum case for AppResolutionResult.needsDisambiguation(_:))
  {
    (*(v24 + 96))(v27, v23);
    v42 = *v27;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v43 = v90;
    v44 = sub_3ED0(v90, static Logger.default);
    swift_beginAccess();
    v45 = v89;
    (*(v89 + 16))(v17, v44, v43);

    v46 = sub_2CDFE0();
    v47 = sub_2CE690();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v92 = v49;
      *v48 = 136315138;
      sub_2CCFB0();
      v50 = sub_2CE420();
      v52 = sub_3F08(v50, v51, &v92);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_0, v46, v47, "AppResolutionAction#from disambiguate %s", v48, 0xCu);
      sub_306C(v49);
    }

    (*(v45 + 8))(v17, v43);
    sub_2CA300();
    v41 = sub_2CA2D0();
  }

  else
  {
    if (v28 == enum case for AppResolutionResult.selected(_:))
    {
      (*(v24 + 96))(v27, v23);
      v54 = *v27;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v55 = v90;
      v56 = sub_3ED0(v90, static Logger.default);
      swift_beginAccess();
      v57 = v89;
      (*(v89 + 16))(v22, v56, v55);

      v58 = sub_2CDFE0();
      v59 = sub_2CE690();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v91 = v54;
        v92 = v61;
        *v60 = 136315138;
        sub_2CCFB0();
        sub_21334(&qword_34C170, &type metadata accessor for App);
        v62 = sub_2CEE70();
        v64 = sub_3F08(v62, v63, &v92);

        *(v60 + 4) = v64;
        _os_log_impl(&dword_0, v58, v59, "AppResolutionAction#from selected %s", v60, 0xCu);
        sub_306C(v61);
      }

      (*(v57 + 8))(v22, v55);
      sub_2CA300();
      v40 = sub_2CA2E0();
      goto LABEL_7;
    }

    if (v28 == enum case for AppResolutionResult.unsuccessful(_:))
    {
      (*(v24 + 96))(v27, v23);
      v66 = v86;
      v65 = v87;
      v67 = v88;
      (*(v86 + 32))(v87, v27, v88);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v68 = v90;
      v69 = sub_3ED0(v90, static Logger.default);
      swift_beginAccess();
      v70 = v89;
      (*(v89 + 16))(v14, v69, v68);
      v71 = *(v66 + 16);
      v71(v5, v65, v67);
      v72 = sub_2CDFE0();
      v73 = sub_2CE680();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v74 = 138412290;
        sub_21334(&unk_34C160, &type metadata accessor for AppResolutionResult.AppResolutionResultError);
        swift_allocError();
        v71(v75, v5, v88);
        v76 = _swift_stdlib_bridgeErrorToNSError();
        v77 = *(v66 + 8);
        v77(v5, v88);
        *(v74 + 4) = v76;
        v78 = v85;
        *v85 = v76;
        v67 = v88;
        _os_log_impl(&dword_0, v72, v73, "AppResolutionAction#from unsuccessful. Error %@", v74, 0xCu);
        sub_212CC(v78);

        v65 = v87;
      }

      else
      {

        v77 = *(v66 + 8);
        v77(v5, v67);
      }

      (*(v70 + 8))(v14, v90);
      sub_2CA300();
      v41 = sub_2CA2C0();
      v77(v65, v67);
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v79 = v90;
      v80 = sub_3ED0(v90, static Logger.default);
      swift_beginAccess();
      (*(v89 + 16))(v11, v80, v79);
      v81 = sub_2CDFE0();
      v82 = sub_2CE680();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_0, v81, v82, "AppResolutionAction#from unkown state, return .noAppFound", v83, 2u);
      }

      (*(v89 + 8))(v11, v90);
      sub_2CA300();
      v41 = sub_2CA2C0();
      (*(v24 + 8))(v27, v23);
    }
  }

  return v41;
}

uint64_t sub_212CC(uint64_t a1)
{
  v2 = sub_20410(&unk_34FC00, &unk_2D0150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21334(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21458(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t CatService.__allocating_init(appNameResolver:options:morphunProvider:aceServiceInvoker:featureFlagProvider:)(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = sub_F9A0(a1, v11);
  v14 = sub_23F8C(v13, a2, a3, a4, a5, v5, v11, v12);
  sub_306C(a1);
  return v14;
}

uint64_t CatService.init(appNameResolver:options:morphunProvider:aceServiceInvoker:featureFlagProvider:)(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v33 = a4;
  v32 = a2;
  v8 = a1[3];
  v31 = a1[4];
  v9 = sub_F9A0(a1, v8);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a3[3];
  v30 = a3[4];
  v15 = sub_F9A0(a3, v14);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = a5[3];
  v21 = a5[4];
  v22 = sub_F9A0(a5, v20);
  v23 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = sub_23C40(v12, v32, v18, v33, v25, v34, v8, v14, v20, v31, v30, v21);
  sub_306C(a5);
  sub_306C(a3);
  sub_306C(a1);
  return v27;
}

uint64_t sub_21894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a6;
  v49 = a8;
  v50 = a5;
  v51 = a7;
  v52 = a2;
  v53 = a3;
  v56 = a1;
  v11 = sub_2CB260();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v47 = a9;
  v20 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);
  v21 = sub_2CDFE0();
  v22 = sub_2CE660();
  if (os_log_type_enabled(v21, v22))
  {
    v44 = v9;
    v23 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v23 = 138412290;
    sub_2CB180();
    v24 = sub_2CB150();
    if (v24)
    {
      sub_2CB130();
      v42 = a4;

      sub_2CD3C0();

      v25 = sub_2CB200();
      v27 = v26;
      (*(v45 + 8))(v14, v46);
      sub_10C40();
      swift_allocError();
      *v28 = v25;
      v28[1] = v27;
      a4 = v42;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v29 = v24;
    }

    else
    {
      v29 = 0;
    }

    *(v23 + 4) = v24;
    v30 = v43;
    *v43 = v29;
    _os_log_impl(&dword_0, v21, v22, "CatService#execute is creating dialog with responseMode = %@", v23, 0xCu);
    sub_30B8(v30, &unk_34FC00, &unk_2D0150);
  }

  (*(v16 + 8))(v19, v15);
  sub_F3F4(a4, v54, &qword_34C6C0, &qword_2D0710);
  v31 = a4;
  v32 = swift_allocObject();
  v33 = v50;
  v34 = v51;
  v35 = v56;
  *(v32 + 16) = v50;
  *(v32 + 24) = v35;
  v36 = v54[1];
  *(v32 + 32) = v54[0];
  *(v32 + 48) = v36;
  v38 = v48;
  v37 = v49;
  *(v32 + 64) = v55;
  *(v32 + 72) = v38;
  *(v32 + 80) = v34;
  *(v32 + 88) = v37;
  *(v32 + 96) = v47;
  v39 = v33;

  DialogService.buildParams(with:app:intentDialogContext:completion:)(v52, v53, v31, sub_242F0, v32);
}

void sub_21C84(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v16 = a2;
  }

  else
  {
    if (qword_34C008 != -1)
    {
      swift_once();
    }

    v16 = qword_35F848;
  }

  v17 = a2;
  v20 = sub_3128(a4);
  v18 = a3[36];
  sub_35E0(a3 + 32, a3[35]);
  if (sub_2CC4B0())
  {
    CatService.executeDialog(for:parameters:bundle:globals:completion:)(a5, a6, a1, v16, v20, a7, a8);
    v19 = v16;
  }

  else
  {
    CatService.executeTemplateResult(for:parameters:bundle:globals:completion:)(a5, a6, a1, v16, v20, a7, a8);
    v19 = v20;
    v20 = v16;
  }
}

uint64_t sub_21DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20410(&qword_34C6C8, &qword_2D0718);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  DialogService.buildParams(with:app:intentDialogContext:completion:)(a3, a4, a5, sub_24230, v15);
}

uint64_t sub_21F40()
{

  sub_20410(&qword_34C6C8, &qword_2D0718);
  return sub_2CE4A0();
}

uint64_t CatService.executeTemplateResult(for:parameters:bundle:globals:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v69 = a7;
  v68 = a6;
  v74 = a4;
  v75 = a2;
  v73 = a1;
  v9 = sub_2CCF30();
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  __chkstk_darwin(v9);
  v72 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2CDFD0();
  v83 = *(v77 - 8);
  v12 = *(v83 + 64);
  v13 = __chkstk_darwin(v77);
  v67 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v82 = &v62 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v70 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v62 - v20;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v23 = v16[2];
  v66 = v22;
  v65 = v16 + 2;
  v64 = v23;
  v23(v21, v22, v15);

  v24 = a5;
  v80 = v24;
  v25 = sub_2CDFE0();
  v26 = sub_2CE660();

  v27 = os_log_type_enabled(v25, v26);
  v81 = v16;
  v76 = a3;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v62 = v12;
    v29 = v28;
    v30 = swift_slowAlloc();
    *&v84[0] = swift_slowAlloc();
    *v29 = 136446722;
    v31 = sub_2CCCB0();
    v33 = sub_3F08(v31, v32, v84);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v34 = sub_2CE210();
    v36 = sub_3F08(v34, v35, v84);

    *(v29 + 14) = v36;
    v37 = v80;
    *(v29 + 22) = 2112;
    *(v29 + 24) = v37;
    *v30 = v37;
    v38 = v37;
    _os_log_impl(&dword_0, v25, v26, "CatService#executeTemplateResult %{public}s using params: %{public}s globals: %@", v29, 0x20u);
    sub_30B8(v30, &unk_34FC00, &unk_2D0150);

    swift_arrayDestroy();

    v12 = v62;

    v63 = v81[1];
  }

  else
  {

    v63 = v16[1];
  }

  v63(v21, v15);
  v39 = v77;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v40 = qword_35F760;
  v41 = v82;
  sub_2CDFB0();
  v42 = v83;
  v43 = v67;
  (*(v83 + 16))(v67, v41, v39);
  v44 = (*(v42 + 80) + 33) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = "catServiceInnerExecute";
  *(v45 + 24) = 22;
  *(v45 + 32) = 2;
  v46 = *(v42 + 32);
  v47 = v39;
  v46(v45 + v44, v43);
  v48 = (v45 + ((v12 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
  v49 = v69;
  *v48 = v68;
  v48[1] = v49;

  sub_2CE9E0();
  sub_2CDF90();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_2433C;
  *(v50 + 24) = v45;
  v51 = v70;
  v64(v70, v66, v15);

  v52 = sub_2CDFE0();
  v53 = sub_2CE660();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "CatService#executeTemplateResult CAT.execute ...", v54, 2u);
  }

  v63(v51, v15);
  sub_2CCD80();
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v55 = v71;
  v56 = *(v71 + 296);
  v57 = v72;
  sub_2CCF20();
  v58 = swift_allocObject();
  v58[2] = sub_24350;
  v58[3] = v50;
  v59 = v73;
  v58[4] = v55;
  v58[5] = v59;
  v60 = v76;
  v58[6] = v75;
  v58[7] = v60;

  sub_2CCD70();

  (*(v78 + 8))(v57, v79);
  sub_30B8(v84, &qword_34C6F8, &qword_2D0758);
  return (*(v83 + 8))(v82, v47);
}

uint64_t sub_2278C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void (*a7)(char *, char *, uint64_t))
{
  v81 = a7;
  v82 = a6;
  v85 = a5;
  v89 = a3;
  v90 = a2;
  v8 = sub_2CA130();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v84 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v83 = &v75 - v14;
  __chkstk_darwin(v13);
  v16 = &v75 - v15;
  v87 = sub_20410(&unk_3519A0, &qword_2D0980);
  v17 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v88 = &v75 - v18;
  v19 = sub_2CE000();
  v91 = *(v19 - 8);
  v20 = *(v91 + 64);
  v21 = __chkstk_darwin(v19);
  v86 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v75 - v23;
  v25 = sub_20410(&qword_34C700, &unk_2D0760);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v75 - v27);
  sub_F3F4(a1, &v75 - v27, &qword_34C700, &unk_2D0760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v19, static Logger.default);
    swift_beginAccess();
    v31 = v91;
    (*(v91 + 16))(v24, v30, v19);
    swift_errorRetain();
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v34 = 136446466;
      v35 = sub_2CCCB0();
      v37 = sub_3F08(v35, v36, &v92);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      swift_getErrorValue();
      v38 = sub_2CEEF0();
      v40 = sub_3F08(v38, v39, &v92);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_0, v32, v33, "CatService#executeTemplateResult %{public}s Error evaluating CAT: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }

    (*(v31 + 8))(v24, v19);
    v41 = v88;
    *v88 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v90(v41);

    return sub_30B8(v41, &unk_3519A0, &qword_2D0980);
  }

  else
  {
    (*(v9 + 32))(v16, v28, v8);
    v43 = sub_2CA0F0();
    v44 = v82;
    sub_12F0C(v85, v82, v43, v81);

    v45 = v8;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v46 = sub_3ED0(v19, static Logger.default);
    swift_beginAccess();
    v47 = *(v91 + 16);
    v48 = v86;
    v80 = v19;
    v47(v86, v46, v19);
    v49 = *(v9 + 16);
    v50 = v83;
    v49(v83, v16, v45);
    v51 = v84;
    v81 = v49;
    v49(v84, v16, v45);

    v52 = sub_2CDFE0();
    v53 = sub_2CE690();

    v79 = v53;
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v78 = v16;
      v55 = v54;
      v76 = swift_slowAlloc();
      v92 = v76;
      *v55 = 136446978;
      v56 = sub_2CCCB0();
      v77 = v52;
      v58 = v51;
      v59 = sub_3F08(v56, v57, &v92);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      *(v55 + 14) = sub_3F08(v85, v44, &v92);
      *(v55 + 22) = 2082;
      sub_2CA110();
      v60 = v45;
      v61 = sub_2CE420();
      v62 = v50;
      v64 = v63;

      v65 = *(v9 + 8);
      v85 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v65(v62, v60);
      v66 = v61;
      v45 = v60;
      v67 = sub_3F08(v66, v64, &v92);

      *(v55 + 24) = v67;
      *(v55 + 32) = 2082;
      sub_2CA100();
      v68 = sub_2CE420();
      v70 = v69;

      v65(v58, v45);
      v71 = sub_3F08(v68, v70, &v92);

      *(v55 + 34) = v71;
      v72 = v77;
      _os_log_impl(&dword_0, v77, v79, "CatService#executeTemplateResult %{public}s Successfully evaluated CAT: catId:%{public}s, result.speak:%{public}s, result.print:%{public}s", v55, 0x2Au);
      swift_arrayDestroy();

      v16 = v78;

      (*(v91 + 8))(v86, v80);
    }

    else
    {

      v65 = *(v9 + 8);
      v85 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v65(v51, v45);
      v65(v50, v45);
      (*(v91 + 8))(v48, v80);
    }

    v73 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v74 = v88;
    v81(v88, v16, v45);
    *(v74 + v73) = [objc_allocWithZone(DialogExecutionResult) init];
    swift_storeEnumTagMultiPayload();
    v90(v74);
    sub_30B8(v74, &unk_3519A0, &qword_2D0980);
    return (v65)(v16, v45);
  }
}

uint64_t CatService.executeDialog(for:parameters:bundle:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[29] = a5;
  v6[30] = v5;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = sub_2CE000();
  v6[31] = v7;
  v8 = *(v7 - 8);
  v6[32] = v8;
  v9 = *(v8 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return _swift_task_switch(sub_23120, 0, 0);
}

uint64_t sub_23120()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v13 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v12 = objc_opt_self();
  v6 = sub_2CE260();
  v0[35] = v6;
  sub_E014(v3);
  isa = sub_2CE1F0().super.isa;
  v0[36] = isa;

  sub_2CCCF0();
  v8 = sub_2CE1F0().super.isa;
  v0[37] = v8;

  v9 = *(v1 + 296);
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_23308;
  v10 = swift_continuation_init();
  v0[17] = sub_20410(&qword_34C6D0, &unk_2D0720);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_23AD4;
  v0[13] = &unk_331168;
  v0[14] = v10;
  [v12 execute:v13 catId:v6 parameters:isa globals:v8 callback:0 options:v9 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23308()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    v3 = sub_238BC;
  }

  else
  {
    v3 = sub_23418;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_23418()
{
  v50 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);
  v3 = *(v0 + 192);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v7 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v4, v7, v5);
  v8 = v3;
  v9 = sub_2CDFE0();
  v10 = sub_2CE670();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v11 = 136446722;
    v14 = sub_2CCCB0();
    v16 = sub_3F08(v14, v15, &v49);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    v17 = [v8 dialog];
    sub_13AE0();
    v18 = sub_2CE410();

    if (v18 >> 62)
    {
      result = sub_2CEDA0();
      v48 = v13;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      v48 = v13;
      if (result)
      {
LABEL_6:
        if ((v18 & 0xC000000000000001) != 0)
        {
          v20 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_28;
          }

          v20 = *(v18 + 32);
        }

        v21 = v20;

        v22 = [v21 fullPrint];

        v23 = sub_2CE270();
        v25 = v24;

        sub_10C40();
        swift_allocError();
        *v26 = v23;
        v26[1] = v25;
        v27 = _swift_stdlib_bridgeErrorToNSError();
LABEL_13:
        *(v11 + 14) = v27;
        *v12 = v27;
        *(v11 + 22) = 2114;
        v31 = [v8 dialog];
        v32 = sub_2CE410();

        if (v32 >> 62)
        {
          result = sub_2CEDA0();
          if (result)
          {
            goto LABEL_15;
          }
        }

        else
        {
          result = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
          if (result)
          {
LABEL_15:
            if ((v32 & 0xC000000000000001) != 0)
            {
              v33 = sub_2CECD0();
              goto LABEL_18;
            }

            if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
            {
              v33 = *(v32 + 32);
LABEL_18:
              v34 = v33;

              v35 = [v34 fullSpeak];

              v36 = sub_2CE270();
              v38 = v37;

              sub_10C40();
              swift_allocError();
              *v39 = v36;
              v39[1] = v38;
              v40 = _swift_stdlib_bridgeErrorToNSError();
LABEL_21:
              v41 = *(v0 + 272);
              v43 = *(v0 + 248);
              v42 = *(v0 + 256);
              *(v11 + 24) = v40;
              v12[1] = v40;
              _os_log_impl(&dword_0, v9, v10, "CatService#executeDialog %{public}s Successfully evaluated dialog to Print: %{public}@ speak:%{public}@", v11, 0x20u);
              sub_20410(&unk_34FC00, &unk_2D0150);
              swift_arrayDestroy();

              sub_306C(v48);

              (*(v42 + 8))(v41, v43);
              goto LABEL_22;
            }

LABEL_28:
            __break(1u);
            return result;
          }
        }

        v40 = 0;
        goto LABEL_21;
      }
    }

    v27 = 0;
    goto LABEL_13;
  }

  v28 = *(v0 + 272);
  v29 = *(v0 + 248);
  v30 = *(v0 + 256);

  (*(v30 + 8))(v28, v29);
LABEL_22:
  v45 = *(v0 + 264);
  v44 = *(v0 + 272);
  v46 = *(v0 + 304) != 0;

  v47 = *(v0 + 8);

  return v47(v8, v46);
}

uint64_t sub_238BC()
{
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  swift_willThrow();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = v0[38];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  v9 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v6, v9, v8);
  swift_errorRetain();
  v10 = sub_2CDFE0();
  v11 = sub_2CE680();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[38];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_0, v10, v11, "CatService#executeDialog has returned an error: %@", v13, 0xCu);
    sub_30B8(v14, &unk_34FC00, &unk_2D0150);
  }

  v17 = v0[32];
  v16 = v0[33];
  v18 = v0[31];

  (*(v17 + 8))(v16, v18);
  v19 = v0[38];
  v21 = v0[33];
  v20 = v0[34];

  v22 = v0[1];

  return v22(v19, v19 != 0);
}

uint64_t sub_23AD4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_35E0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_20410(&qword_34C6E0, &unk_2D0730);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t *CatService.deinit()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  sub_306C(v0 + 17);
  sub_306C(v0 + 22);
  sub_306C(v0 + 27);
  sub_306C(v0 + 32);
  return v0;
}

uint64_t sub_23C40(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42[3] = a7;
  v42[4] = a10;
  v19 = sub_F390(v42);
  (*(*(a7 - 8) + 32))(v19, a1, a7);
  v41[3] = a8;
  v41[4] = a11;
  v20 = sub_F390(v41);
  (*(*(a8 - 8) + 32))(v20, a3, a8);
  v40[3] = a9;
  v40[4] = a12;
  v21 = sub_F390(v40);
  (*(*(a9 - 8) + 32))(v21, a5, a9);
  *(a6 + 296) = a2;
  sub_EEAC(v40, a6 + 256);
  sub_EEAC(v42, v39);
  sub_EEAC(v41, v38);
  sub_EEAC(a4, v37);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34[3] = sub_2CCA30();
  v34[4] = &protocol witness table for MultiUserConnectionProvider;
  v34[0] = sub_2CCA20();
  v33[3] = sub_2CB9E0();
  v33[4] = &protocol witness table for DeviceProvider;
  sub_F390(v33);
  sub_2CB9C0();
  sub_EEAC(v39, a6 + 16);
  sub_EEAC(v38, a6 + 216);
  sub_EEAC(v37, a6 + 56);
  sub_EEAC(v34, a6 + 96);
  sub_EEAC(v33, a6 + 176);
  sub_F3F4(v35, &v28, qword_34C708, &qword_2D1620);
  if (v29)
  {
    sub_306C(a4);
    sub_30B8(v35, qword_34C708, &qword_2D1620);
    sub_306C(v37);
    sub_306C(v38);
    sub_306C(v39);
    sub_306C(v40);
    sub_306C(v41);
    sub_306C(v42);
    sub_306C(v33);
    sub_306C(v34);
    sub_F338(&v28, &v30);
  }

  else
  {
    sub_EEAC(v37, &v30);
    v22 = sub_2C9E60();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = sub_2C9E50();
    v31 = v22;
    v32 = &protocol witness table for ContactsManager;
    *&v30 = v25;
    sub_306C(a4);
    sub_30B8(v35, qword_34C708, &qword_2D1620);
    sub_306C(v37);
    sub_306C(v38);
    sub_306C(v39);
    sub_306C(v40);
    sub_306C(v41);
    sub_306C(v42);
    sub_306C(v33);
    sub_306C(v34);
    if (v29)
    {
      sub_30B8(&v28, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v30, a6 + 136);
  return a6;
}

uint64_t sub_23F8C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v36 = a4;
  v34 = a2;
  v33 = a1;
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CatService();
  v15 = swift_allocObject();
  v16 = a3[3];
  v31 = a3[4];
  v32 = v15;
  v17 = sub_F9A0(a3, v16);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = a5[3];
  v23 = a5[4];
  v24 = sub_F9A0(a5, v22);
  v25 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  (*(v11 + 16))(v14, v33, a7);
  v29 = sub_23C40(v14, v34, v20, v36, v27, v32, a7, v16, v22, v35, v31, v23);
  sub_306C(a5);
  sub_306C(a3);
  return v29;
}

uint64_t sub_24230()
{
  v0 = *(*(sub_20410(&qword_34C6C8, &qword_2D0718) - 8) + 80);

  return sub_21F40();
}

uint64_t sub_243B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = v3;

  sub_285E94(sub_24BD4, v7);
}

uint64_t sub_24450(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a3;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = sub_20410(&unk_3519A0, &qword_2D0980);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v27 - v19);
  sub_F3F4(a1, &v27 - v19, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29[0] = *v20;
    v30 = 1;
    swift_errorRetain();
    v27(v29);

    return sub_30B8(v29, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v20, v16);
    v22 = sub_35E0((a4 + 24), *(a4 + 48));
    sub_F3F4(v16, v14, &qword_34C6E8, &unk_2D0FF0);
    v23 = *&v14[*(v10 + 48)];
    v24 = sub_2CA000();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    v25 = *v22;
    sub_1C077C(v14, v23, v9, &_swiftEmptyArrayStorage, v27, v28);

    sub_30B8(v9, &unk_353020, &unk_2D0970);
    sub_30B8(v16, &qword_34C6E8, &unk_2D0FF0);
    v26 = sub_2CA130();
    return (*(*(v26 - 8) + 8))(v14, v26);
  }
}

void *sub_24740()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  v2 = v0[9];

  v3 = v0[11];

  return v0;
}

uint64_t sub_24778()
{
  sub_24740();

  return swift_deallocClassInstance();
}

uint64_t sub_247CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 80);
  v7 = *(a6 + 88);
  return sub_24A78(a1, a2, a4);
}

uint64_t sub_247E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 80);
  v14 = *(a6 + 88);
  v15 = type metadata accessor for ContinueInAppPunchOutStrategy();

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:completion:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_24864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 80);
  v16 = *(a5 + 88);
  v17 = type metadata accessor for ContinueInAppPunchOutStrategy();
  *v14 = v6;
  v14[1] = sub_24C84;

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v17, a6);
}

uint64_t sub_24954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_E664;

  return UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()(a1, a2, a3);
}

uint64_t sub_24A78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  sub_24B88();
  v4 = sub_2CEA90();
  sub_20410(&unk_351900, &unk_2D0960);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2D0770;
  *(v5 + 32) = v4;
  v8[3] = sub_2CA910();
  v8[4] = &protocol witness table for AceOutput;
  sub_F390(v8);
  v6 = v4;
  sub_2CA900();
  v9 = 0;
  a3(v8);

  return sub_30B8(v8, qword_34C798, &qword_2D0DA0);
}

unint64_t sub_24B88()
{
  result = qword_34C790;
  if (!qword_34C790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34C790);
  }

  return result;
}

uint64_t sub_24BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v41 = a4;
  v42 = a6;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v40 = v14;
  v20 = v18;
  v21 = sub_2CDFE0();
  v22 = sub_2CE670();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39 = v8;
    v24 = v23;
    v25 = swift_slowAlloc();
    v38 = a7;
    v26 = v25;
    v43 = v25;
    *v24 = 136446210;
    v27 = sub_2CCCA0();
    v37 = a3;
    v29 = sub_3F08(v27, v28, &v43);
    v36 = v20;
    v30 = a1;
    v31 = a2;
    v32 = a5;
    v33 = v29;
    a3 = v37;

    *(v24 + 4) = v33;
    a5 = v32;
    a2 = v31;
    a1 = v30;
    _os_log_impl(&dword_0, v21, v22, "CommonMediaConfirmationSnippetProvider#confirmationSnippetProvider... %{public}s", v24, 0xCu);
    sub_306C(v26);
    a7 = v38;

    (*(v15 + 8))(v36, v40);
  }

  else
  {

    (*(v15 + 8))(v20, v40);
  }

  return sub_24F68(a1, a2, a3, v41, a5, v42, a7);
}

uint64_t sub_24F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v79 = a7;
  v78 = a6;
  v67 = a5;
  v66 = a4;
  v65 = a3;
  v64 = a2;
  v63 = a1;
  v7 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v73 = &v62 - v9;
  v76 = sub_2C8EC0();
  v75 = *(v76 - 8);
  v10 = *(v75 + 64);
  __chkstk_darwin(v76);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v80 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v21 = v14[2];
  v71 = v20;
  v69 = v14 + 2;
  v68 = v21;
  v21(v19, v20, v13);
  v22 = sub_2CDFE0();
  v23 = sub_2CE670();
  v24 = os_log_type_enabled(v22, v23);
  v77 = v13;
  v72 = v14;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v88 = v26;
    *v25 = 136446210;
    v27 = sub_2CCCA0();
    v29 = sub_3F08(v27, v28, v88);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_0, v22, v23, "CommonMediaConfirmationSnippetProvider#confirmationSnippet... %{public}s", v25, 0xCu);
    sub_306C(v26);
  }

  v70 = v14[1];
  v70(v19, v13);
  v30 = v81;
  v31 = v81[6];
  sub_35E0(v81 + 2, v81[5]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = objc_opt_self();
  v34 = [v33 bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v62 = sub_2CC620();
  v74 = v35;

  v36 = *(v75 + 8);
  v37 = v76;
  v36(v12, v76);
  v38 = v30[6];
  sub_35E0(v30 + 2, v30[5]);
  v39 = [v33 bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v40 = sub_2CC620();
  v42 = v41;

  v36(v12, v37);
  v88[0] = 0;
  *&v88[1] = v83;
  v89 = v84;
  *v90 = *v85;
  *&v90[15] = *&v85[15];
  v91 = 2;
  v43 = sub_234C04();
  v44 = v77;
  if (v43)
  {
    v45 = v43;
    v86 = 1;
    v87 = 2;
    v46 = sub_234C04();
    if (v46)
    {
      v47 = v46;
      v48 = swift_allocObject();
      v48[2] = v78;
      v49 = v62;
      v48[3] = v79;
      v48[4] = v49;
      v48[5] = v74;
      v48[6] = v40;
      v48[7] = v42;
      v48[8] = v45;
      v48[9] = v47;

      v50 = v45;
      v51 = v47;
      sub_26084(v63, v64, v65, v66, v67, sub_26804, v48);
    }
  }

  v68(v80, v71, v44);
  v53 = sub_2CDFE0();
  v54 = sub_2CE690();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v82 = v56;
    *v55 = 136446210;
    v57 = sub_2CCCA0();
    v59 = sub_3F08(v57, v58, &v82);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_0, v53, v54, "ConfirmationViewProvider#confirmationSnippet could not create commands for the confirmation snippet. returning empty snippet. %{public}s", v55, 0xCu);
    sub_306C(v56);
  }

  v70(v80, v44);
  v60 = sub_2CD230();
  v61 = v73;
  (*(*(v60 - 8) + 56))(v73, 1, 1, v60);
  v78(v61);
  return sub_30B8(v61, &unk_3530C0, &unk_2D0A40);
}

uint64_t sub_25754(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(char *, char *, uint64_t), void *a8, void *a9)
{
  v80 = a8;
  v81 = a4;
  v83 = a6;
  v84 = a7;
  v82 = a5;
  v89 = a3;
  v90 = a2;
  v10 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v88 = &v78 - v12;
  v91 = sub_2CE000();
  v13 = *(v91 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v91);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v78 - v18;
  v87 = sub_2CD300();
  v85 = *(v87 - 8);
  v20 = *(v85 + 64);
  v21 = __chkstk_darwin(v87);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v78 - v25;
  __chkstk_darwin(v24);
  v86 = &v78 - v27;
  v28 = sub_20410(&qword_34C820, &unk_2D0A30);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v78 - v30;
  sub_F3F4(a1, &v78 - v30, &qword_34C820, &unk_2D0A30);
  v32 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
  {
    sub_30B8(v31, &qword_34C820, &unk_2D0A30);
LABEL_16:
    v67 = v90;
    v66 = v91;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v68 = sub_3ED0(v66, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v17, v68, v66);
    v69 = sub_2CDFE0();
    v70 = sub_2CE680();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v92 = v72;
      *v71 = 136446210;
      v73 = sub_2CCCA0();
      v75 = sub_3F08(v73, v74, &v92);

      *(v71 + 4) = v75;
      _os_log_impl(&dword_0, v69, v70, "CommonMediaConfirmationSnippetProvider#confirmationSnippet error generating dialog. returning empty snippet %{public}s", v71, 0xCu);
      sub_306C(v72);
    }

    (*(v13 + 8))(v17, v66);
    v76 = v88;
    v77 = sub_2CD230();
    (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
    v67(v76);
    return sub_30B8(v76, &unk_3530C0, &unk_2D0A40);
  }

  v33 = *&v31[*(v32 + 48)];
  v34 = sub_2CA130();
  (*(*(v34 - 8) + 8))(v31, v34);
  v35 = [v33 dialog];
  sub_13AE0();
  v36 = sub_2CE410();

  if (v36 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_15:

    goto LABEL_16;
  }

  result = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((v36 & 0xC000000000000001) != 0)
  {
    v39 = sub_2CECD0();
    v38 = v19;
  }

  else
  {
    if (!*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v38 = v19;
    v39 = *(v36 + 32);
  }

  v79 = v33;

  v40 = a9;
  v41 = v80;
  v42 = v86;
  sub_2CD2F0();
  v43 = v85;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v44 = v91;
  v45 = sub_3ED0(v91, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v38, v45, v44);
  v46 = v87;
  v84 = *(v43 + 16);
  v84(v26, v42, v87);
  v47 = v38;
  v48 = sub_2CDFE0();
  v49 = sub_2CE690();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v92 = v82;
    *v50 = 136315394;
    v84(v23, v26, v87);
    v51 = sub_2CE2A0();
    v83 = v47;
    v53 = v52;
    v54 = *(v43 + 8);
    v54(v26, v87);
    v55 = sub_3F08(v51, v53, &v92);

    *(v50 + 4) = v55;
    *(v50 + 12) = 2082;
    v56 = sub_2CCCA0();
    v58 = sub_3F08(v56, v57, &v92);

    *(v50 + 14) = v58;
    v59 = v49;
    v60 = v54;
    _os_log_impl(&dword_0, v48, v59, "CommonMediaConfirmationSnippetProvider#confirmationSnippet created RF 2.0 Snippet: %s. %{public}s", v50, 0x16u);
    swift_arrayDestroy();

    v46 = v87;

    (*(v13 + 8))(v83, v91);
  }

  else
  {

    v60 = *(v43 + 8);
    v60(v26, v46);
    (*(v13 + 8))(v47, v44);
  }

  v61 = v88;
  v62 = v86;
  v84(v88, v86, v46);
  v63 = enum case for SiriAudioSnippets.confirmation(_:);
  v64 = sub_2CD230();
  v65 = *(v64 - 8);
  (*(v65 + 104))(v61, v63, v64);
  (*(v65 + 56))(v61, 0, 1, v64);
  v90(v61);

  sub_30B8(v61, &unk_3530C0, &unk_2D0A40);
  return (v60)(v62, v46);
}

uint64_t sub_26084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 56);
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  v17 = *(*v15 + 208);

  v17(a1, a4, a5, a3, a2, sub_267FC, v16);
}

uint64_t sub_26168(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v52 = a3;
  v53 = a2;
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v48 - v6;
  v8 = sub_20410(&qword_34C820, &unk_2D0A30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v49 = &v48 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  v19 = sub_20410(&unk_3519A0, &qword_2D0980);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v48 - v21);
  sub_F3F4(a1, &v48 - v21, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v24 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v18, v24, v11);
    swift_errorRetain();
    v25 = sub_2CDFE0();
    v26 = sub_2CE680();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v27 = 136315394;
      swift_getErrorValue();
      v28 = sub_2CEEF0();
      v30 = sub_3F08(v28, v29, &v54);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      v31 = sub_2CCCA0();
      v33 = sub_3F08(v31, v32, &v54);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v25, v26, "CommonMediaConfirmationSnippetProvider#promptForConfirmationDialog Error creating the confirmation prompt dialog: %s. %{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    (*(v12 + 8))(v18, v11);
    v34 = v49;
    (*(v50 + 56))(v49, 1, 1, v51);
    v53(v34);

    v35 = &qword_34C820;
    v36 = &unk_2D0A30;
    v37 = v34;
  }

  else
  {
    sub_24BE0(v22, v7);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v38 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v16, v38, v11);
    v39 = sub_2CDFE0();
    v40 = sub_2CE680();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54 = v42;
      *v41 = 136446210;
      v43 = sub_2CCCA0();
      v45 = sub_3F08(v43, v44, &v54);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_0, v39, v40, "CommonMediaConfirmationSnippetProvider#promptForConfirmationDialog confirmation dialog created. %{public}s", v41, 0xCu);
      sub_306C(v42);
    }

    (*(v12 + 8))(v16, v11);
    v46 = v49;
    sub_F3F4(v7, v49, &qword_34C6E8, &unk_2D0FF0);
    (*(v50 + 56))(v46, 0, 1, v51);
    v53(v46);
    sub_30B8(v46, &qword_34C820, &unk_2D0A30);
    v37 = v7;
    v35 = &qword_34C6E8;
    v36 = &unk_2D0FF0;
  }

  return sub_30B8(v37, v35, v36);
}

uint64_t sub_2677C()
{
  sub_306C((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t sub_267A4()
{
  sub_306C((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_26838()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_EEAC(v0 + 40, v11);
  v9 = sub_2CC2B0();
  v10 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v8);

  sub_2CC2A0();
  v6 = sub_2CC360();
  v7 = &protocol witness table for StringsFileResolver;
  sub_F390(&v5);
  sub_2CC350();
  sub_20410(&qword_34C8F8, &unk_2D0AA0);
  v3 = swift_allocObject();
  *(v3 + 112) = &off_32F1F0;
  strcpy((v3 + 160), "MediaItemType");
  *(v3 + 174) = -4864;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_F338(v11, v3 + 32);
  sub_F338(&v8, v3 + 72);
  sub_F338(&v5, v3 + 120);
  return v3;
}

uint64_t sub_26950()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_306C(v0 + 5);

  return swift_deallocClassInstance();
}

uint64_t sub_269C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 120);
  v11 = sub_112C0(_swiftEmptyArrayStorage);
  v14[3] = sub_27B44();
  v14[4] = &off_3344D0;
  v14[0] = a2;
  v12 = a2;
  sub_1E6614(v11, a1, v14, a4, a5);

  return sub_30B8(v14, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_26A74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v14 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v15 = *(v6 + 120);
  v18[3] = sub_27B44();
  v18[4] = &off_3344D0;
  v18[0] = a4;
  v16 = a4;
  sub_1E731C(v14, a1, v18, a5, a6);

  return sub_30B8(v18, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_26BBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, char *a8, char *a9)
{
  v125 = a8;
  v121 = a3;
  v120 = a2;
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v119 = &v106 - v14;
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v118 = &v106 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v116 = &v106 - v20;
  v115 = sub_2CCB30();
  v114 = *(v115 - 8);
  v21 = *(v114 + 64);
  __chkstk_darwin(v115);
  v112 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2CCAC0();
  v111 = *(v113 - 8);
  v23 = *(v111 + 64);
  __chkstk_darwin(v113);
  v110 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CE000();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [a4 unsupportedReason];
  v127 = v30;
  v128 = 0;
  sub_20410(&qword_34CB90, &unk_2D0B40);
  v109 = sub_2CE2A0();
  v32 = v31;
  v122 = a5;
  INUpdateMediaAffinityIntent.firstMediaItemType()();
  v33 = INMediaItemTypeGetName();
  if (v33)
  {
    v34 = v33;
    v107 = sub_2CE270();
    v36 = v35;
  }

  else
  {
    v107 = 0;
    v36 = 0xE000000000000000;
  }

  v123 = a1;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v108 = v30;
  v124 = a9;
  v37 = sub_3ED0(v25, static Logger.default);
  swift_beginAccess();
  (*(v26 + 16))(v29, v37, v25);

  v38 = sub_2CDFE0();
  v39 = sub_2CE690();

  v40 = os_log_type_enabled(v38, v39);
  v117 = v36;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v106 = a4;
    v127 = v42;
    *v41 = 136315394;
    v43 = sub_3F08(v109, v32, &v127);

    *(v41 + 4) = v43;
    *(v41 + 12) = 2080;

    v44 = sub_3F08(v107, v36, &v127);

    *(v41 + 14) = v44;
    _os_log_impl(&dword_0, v38, v39, "SearchForMediaDialogProvider#makeUnsupportedDialog, reason: %s, mediaType: %s", v41, 0x16u);
    swift_arrayDestroy();
    a4 = v106;
  }

  else
  {
  }

  (*(v26 + 8))(v29, v25);
  v45 = v111;
  v46 = v110;
  v47 = v113;
  (*(v111 + 104))(v110, enum case for AdditionalMetricsDescription.ModuleName.sfmdp(_:), v113);
  v48 = v114;
  v49 = v112;
  v50 = v115;
  (*(v114 + 104))(v112, enum case for AdditionalMetricsDescription.SourceFunction.unsupportedDialog(_:), v115);
  v127 = [a4 unsupportedReason];
  sub_2CEE70();
  [a4 resolutionResultCode];
  v109 = sub_2CCAE0();

  (*(v48 + 8))(v49, v50);
  (*(v45 + 8))(v46, v47);
  v51 = v126[25];
  sub_35E0(v126 + 21, v126[24]);
  v52 = enum case for ActivityType.failed(_:);
  v53 = sub_2C9C20();
  v54 = *(v53 - 8);
  v55 = v116;
  (*(v54 + 104))(v116, v52, v53);
  (*(v54 + 56))(v55, 0, 1, v53);
  v56 = sub_2CA130();
  v57 = v118;
  (*(*(v56 - 8) + 56))(v118, 1, 1, v56);
  v58 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
  v59 = sub_2C98F0();
  v60 = *(v59 - 8);
  v61 = v119;
  (*(v60 + 104))(v119, v58, v59);
  (*(v60 + 56))(v61, 0, 1, v59);
  v62 = v123;
  v63 = v122;
  sub_2CB4E0();

  sub_30B8(v61, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v57, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v55, &qword_34CB88, &unk_2D0D90);
  sub_112C0(_swiftEmptyArrayStorage);

  if ((v120 != 0x657449616964656DLL || v121 != 0xEA0000000000736DLL) && (sub_2CEEA0() & 1) == 0)
  {

    v71 = v126[15];
    v72 = sub_112C0(_swiftEmptyArrayStorage);
    v129 = sub_27B44();
    v130 = &off_3344D0;
    v127 = v63;
    v73 = v63;
    sub_1E8D2C(v72, v62, &v127, v125, v124);
    goto LABEL_30;
  }

  v64 = v108;
  if (v108 > 4)
  {
    if (v108 <= 6)
    {
      if (v108 == 5)
      {

        v83 = v126[15];
        v84 = sub_112C0(_swiftEmptyArrayStorage);
        v129 = sub_27B44();
        v130 = &off_3344D0;
        v127 = v63;
        v85 = v63;
        sub_33504(v84, v62, &v127, v125, v124);
      }

      else
      {

        v68 = v126[15];
        v69 = sub_112C0(_swiftEmptyArrayStorage);
        v129 = sub_27B44();
        v130 = &off_3344D0;
        v127 = v63;
        v70 = v63;
        sub_1E8024(v69, v62, &v127, v125, v124);
      }

      goto LABEL_30;
    }

    if (v108 == 7)
    {

      v92 = v126[15];
      v93 = sub_112C0(_swiftEmptyArrayStorage);
      v129 = sub_27B44();
      v130 = &off_3344D0;
      v127 = v63;
      v94 = v63;
      sub_39CA0(v93, v62, &v127, v125, v124);
      goto LABEL_30;
    }

    if (v108 == 8)
    {

      v77 = v126[15];
      v78 = sub_112C0(_swiftEmptyArrayStorage);
      v129 = sub_27B44();
      v130 = &off_3344D0;
      v127 = v63;
      v79 = v63;
      sub_3C470(v78, v62, &v127, v125, v124);
      goto LABEL_30;
    }
  }

  else
  {
    if (v108 > 2)
    {
      if (v108 == 3)
      {
        v86 = v117;
        sub_20410(&unk_353120, &unk_2D0B50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2D0090;
        *(inited + 32) = 0x707954616964656DLL;
        v88 = inited + 32;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = 0xE900000000000065;
        *(inited + 48) = v107;
        *(inited + 56) = v86;
        v89 = sub_112C0(inited);
        swift_setDeallocating();
        sub_30B8(v88, &qword_34CBA0, &unk_2D0FE0);
        v90 = v126[15];
        v129 = sub_27B44();
        v130 = &off_3344D0;
        v127 = v63;
        v91 = v63;
        sub_1E86A8(v89, v62, &v127, v125, v124);
      }

      else
      {

        v74 = v126[15];
        v75 = sub_112C0(_swiftEmptyArrayStorage);
        v129 = sub_27B44();
        v130 = &off_3344D0;
        v127 = v63;
        v76 = v63;
        sub_38950(v75, v62, &v127, v125, v124);
      }

      goto LABEL_30;
    }

    if (v108 == 1)
    {

      v80 = v126[15];
      v81 = sub_112C0(_swiftEmptyArrayStorage);
      v129 = sub_27B44();
      v130 = &off_3344D0;
      v127 = v63;
      v82 = v63;
      sub_38FC0(v81, v62, &v127, v125, v124);
      goto LABEL_30;
    }

    if (v108 == 2)
    {

      v65 = v126[15];
      v66 = sub_112C0(_swiftEmptyArrayStorage);
      v129 = sub_27B44();
      v130 = &off_3344D0;
      v127 = v63;
      v67 = v63;
      sub_39630(v66, v62, &v127, v125, v124);
LABEL_30:

      return sub_30B8(&v127, &qword_34C6C0, &qword_2D0710);
    }
  }

  if (_INSearchForMediaMediaItemUnsupportedReasonAppNotAvailable == v64)
  {
    v96 = v126[15];
    v97 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3A980(v97, v62, v125, v124);
  }

  else if (_INSearchForMediaMediaItemUnsupportedReasonAppNotConfigured == v64)
  {
    v98 = v126[15];
    v99 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B03C(v99, v62, v125, v124);
  }

  else
  {
    if (_INSearchForMediaMediaItemUnsupportedReasonAppAccountFailure != v64)
    {
      v102 = _INSearchForMediaMediaItemUnsupportedReasonAppDoesntSupportIntent;
      v103 = v126[15];
      v104 = sub_112C0(_swiftEmptyArrayStorage);
      v129 = sub_27B44();
      v130 = &off_3344D0;
      v127 = v63;
      v105 = v63;
      if (v102 == v64)
      {
        sub_3A310(v104, v62, &v127, v125, v124);
      }

      else
      {
        sub_382E0(v104, v62, &v127, v125, v124);
      }

      goto LABEL_30;
    }

    v100 = v126[15];
    v101 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B6F8(v101, v62, v125, v124);
  }
}

uint64_t sub_279E8()
{
  v1 = v0[15];

  sub_306C(v0 + 16);

  return sub_306C(v0 + 21);
}

uint64_t sub_27A20()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  v2 = v0[14];

  v3 = v0[15];

  sub_306C(v0 + 16);
  sub_306C(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchForMediaDialogProvider()
{
  result = qword_34C928;
  if (!qword_34C928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27B44()
{
  result = qword_34CB98;
  if (!qword_34CB98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34CB98);
  }

  return result;
}

uint64_t sub_27B90()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v4, v0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  sub_285EC(&static StringsBackedAppNameResolver.shared, v12);
  sub_2CB4A0();
  v5 = sub_2CB490();

  sub_2C9A00();
  type metadata accessor for AddMediaFlowStrategy();
  v6 = swift_allocObject();
  sub_EEAC(v11, v10);
  sub_285EC(v12, v9);
  v7 = sub_280C4(v9, v5, v10, v6);

  sub_306C(v11);
  result = sub_28648(v12);
  qword_35F500 = v7;
  return result;
}

uint64_t sub_27D28()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v4, v0);
  result = sub_21740C();
  qword_35F508 = result;
  return result;
}

uint64_t sub_27DF8()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v4, v0);
  sub_2CD070();
  result = sub_2CD060();
  static AddMedia.intentHandler = result;
  return result;
}

uint64_t *AddMedia.intentHandler.unsafeMutableAddressor()
{
  if (qword_34BF30 != -1)
  {
    swift_once();
  }

  return &static AddMedia.intentHandler;
}

id static AddMedia.intentHandler.getter()
{
  if (qword_34BF30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static AddMedia.intentHandler;

  return v0;
}

void static AddMedia.intentHandler.setter(uint64_t a1)
{
  if (qword_34BF30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static AddMedia.intentHandler;
  static AddMedia.intentHandler = a1;
}

uint64_t (*static AddMedia.intentHandler.modify())()
{
  if (qword_34BF30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *sub_280C4(_OWORD *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_2CC2B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CB4A0();
  v55[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v33 = v13;
  v34 = a3;
  v55[3] = v13;
  v55[0] = a2;
  a4[2] = _swiftEmptyArrayStorage;
  a4[3] = 1307;
  a4[4] = 0;
  a4[5] = 0;
  sub_EEAC(a3, &v52);
  LODWORD(a3) = CATDefaultMode;
  v14 = sub_2CBC00();
  v15 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v16 = swift_allocObject();
  v50 = &type metadata for StringsBackedAppNameResolver;
  v51 = sub_2869C();
  v17 = swift_allocObject();
  *&v49 = v17;
  v18 = a1[3];
  v17[3] = a1[2];
  v17[4] = v18;
  v17[5] = a1[4];
  v19 = a1[1];
  v17[1] = *a1;
  v17[2] = v19;
  v48[3] = v14;
  v48[4] = &protocol witness table for MorphunProvider;
  v48[0] = v15;
  v47[3] = v8;
  v47[4] = &protocol witness table for FeatureFlagProvider;
  v20 = sub_F390(v47);
  (*(v9 + 16))(v20, v12, v8);
  *(v16 + 296) = a3;
  sub_EEAC(v47, v16 + 256);
  sub_EEAC(&v49, v46);
  sub_EEAC(v48, v45);
  sub_EEAC(&v52, v44);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v21 = sub_2CCA30();
  v22 = sub_2CCA20();
  v41[3] = v21;
  v41[4] = &protocol witness table for MultiUserConnectionProvider;
  v41[0] = v22;
  v40[3] = sub_2CB9E0();
  v40[4] = &protocol witness table for DeviceProvider;
  sub_F390(v40);
  sub_2CB9C0();
  sub_EEAC(v46, v16 + 16);
  sub_EEAC(v45, v16 + 216);
  sub_EEAC(v44, v16 + 56);
  sub_EEAC(v41, v16 + 96);
  sub_EEAC(v40, v16 + 176);
  sub_286F0(v42, &v35);
  if (v36)
  {

    sub_28760(v42);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(v46);
    (*(v9 + 8))(v12, v8);
    sub_306C(&v52);
    sub_306C(v47);
    sub_306C(v48);
    sub_306C(&v49);
    sub_306C(v40);
    sub_306C(v41);
    sub_F338(&v35, &v37);
  }

  else
  {
    sub_EEAC(v44, &v37);
    v23 = sub_2C9E60();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_2C9E50();
    v38 = v23;
    v39 = &protocol witness table for ContactsManager;

    *&v37 = v26;
    sub_28760(v42);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(v46);
    (*(v9 + 8))(v12, v8);
    sub_306C(&v52);
    sub_306C(v47);
    sub_306C(v48);
    sub_306C(&v49);
    sub_306C(v40);
    sub_306C(v41);
    if (v36)
    {
      sub_28760(&v35);
    }
  }

  sub_F338(&v37, v16 + 136);
  a4[6] = v16;
  v53 = sub_2CC360();
  v54 = &protocol witness table for StringsFileResolver;
  sub_F390(&v52);

  sub_2CC350();
  v27 = v33;
  v28 = sub_2CB490();
  v50 = v27;
  v51 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v49 = v28;
  sub_20410(qword_34CBD8, &unk_2D0BB0);
  v29 = swift_allocObject();
  v29[13] = 0xD000000000000011;
  v29[14] = 0x80000000002DA8D0;
  v29[2] = v16;
  sub_F338(&v52, (v29 + 3));
  sub_F338(&v49, (v29 + 8));
  a4[7] = v29;
  sub_EEAC(v55, (a4 + 8));
  v53 = v8;
  v54 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v52);
  sub_2CC2A0();
  v30 = type metadata accessor for SiriAudioOutputProvider();
  v31 = swift_allocObject();
  sub_F338(&v52, v31 + 16);
  v53 = v30;
  v54 = &off_337EB0;
  *&v52 = v31;
  sub_306C(v34);
  sub_306C(v55);
  sub_F338(&v52, (a4 + 13));
  return a4;
}

unint64_t sub_2869C()
{
  result = qword_34CBD0;
  if (!qword_34CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CBD0);
  }

  return result;
}

uint64_t sub_286F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(qword_34C708, &qword_2D1620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_28760(uint64_t a1)
{
  v2 = sub_20410(qword_34C708, &qword_2D1620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_28838@<X0>(uint64_t *a1@<X6>, uint64_t a2@<X8>)
{
  v132 = a2;
  v115 = sub_2CA810();
  v114 = *(v115 - 8);
  v3 = *(v114 + 64);
  v4 = __chkstk_darwin(v115);
  v108 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v106 - v7;
  __chkstk_darwin(v6);
  v117 = &v106 - v9;
  v10 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v129 = (&v106 - v12);
  v13 = sub_2CD490();
  v119 = *(v13 - 8);
  v14 = *(v119 + 64);
  v15 = __chkstk_darwin(v13);
  v109 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v116 = &v106 - v18;
  __chkstk_darwin(v17);
  v118 = &v106 - v19;
  v127 = sub_2CA870();
  v126 = *(v127 - 8);
  v20 = *(v126 + 64);
  v21 = __chkstk_darwin(v127);
  v120 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v131 = &v106 - v23;
  v24 = sub_2CA7B0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CE000();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = __chkstk_darwin(v29);
  v110 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v130 = &v106 - v35;
  v36 = __chkstk_darwin(v34);
  v113 = &v106 - v37;
  v38 = __chkstk_darwin(v36);
  v112 = &v106 - v39;
  __chkstk_darwin(v38);
  v41 = &v106 - v40;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v111 = v8;
  v42 = sub_3ED0(v29, static Logger.default);
  swift_beginAccess();
  v43 = v30[2];
  v123 = v42;
  v122 = v30 + 2;
  v121 = v43;
  v43(v41, v42, v29);
  v44 = *(v25 + 16);
  v128 = a1;
  v44(v28, a1, v24);
  v45 = v28;
  v46 = sub_2CDFE0();
  v47 = sub_2CE690();
  v48 = os_log_type_enabled(v46, v47);
  v125 = v13;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v137[0] = v107;
    *v49 = 136315138;
    sub_33458(&qword_34CD00, &type metadata accessor for Input);
    v50 = sub_2CEE70();
    v51 = v30;
    v52 = v50;
    v124 = v51;
    v54 = v53;
    (*(v25 + 8))(v45, v24);
    v55 = sub_3F08(v52, v54, v137);
    v30 = v124;

    *(v49 + 4) = v55;
    _os_log_impl(&dword_0, v46, v47, "MediaDestinationDisambiguationStrategy#actionForInput input:%s", v49, 0xCu);
    sub_306C(v107);
  }

  else
  {

    (*(v25 + 8))(v45, v24);
  }

  v56 = v30[1];
  v56(v41, v29);
  v57 = v130;
  v58 = v131;
  sub_2CA790();
  v59 = v126;
  v60 = v127;
  v61 = (*(v126 + 88))(v58, v127);
  v62 = v129;
  if (v61 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v59 + 96))(v58, v60);
    v63 = *&v58[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

    v64 = sub_2CAFE0();
    (*(*(v64 - 8) + 8))(v58, v64);
  }

  else
  {
    if (v61 == enum case for Parse.directInvocation(_:))
    {
      (*(v59 + 96))(v58, v60);
      v69 = v114;
      v70 = v58;
      v71 = v117;
      v72 = v115;
      (*(v114 + 32))(v117, v70, v115);
      sub_238E4C(v71, v137);
      if (v138 == 3)
      {
        sub_30B8(v137, &qword_34CCB0, &qword_2D5710);
        (*(v69 + 8))(v71, v72);
        return sub_2C9CE0();
      }

      v124 = v30;
      if (v138 != 255)
      {
        sub_30B8(v137, &qword_34CCB0, &qword_2D5710);
      }

      v129 = v56;
      v121(v57, v123, v29);
      v73 = *(v69 + 16);
      v74 = v111;
      v73(v111, v71, v72);
      v75 = sub_2CDFE0();
      v76 = sub_2CE680();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v131 = v29;
        v128 = v78;
        *&v135 = v78;
        *v77 = 136315138;
        v73(v108, v74, v72);
        v79 = sub_2CE2A0();
        v81 = v80;
        v82 = *(v69 + 8);
        v82(v74, v72);
        v83 = sub_3F08(v79, v81, &v135);

        *(v77 + 4) = v83;
        _os_log_impl(&dword_0, v75, v76, "MediaDestinationDisambiguationStrategy#actionForInput received unsupported directInvocation: %s", v77, 0xCu);
        sub_306C(v128);

        v84 = v130;
        v85 = v131;
      }

      else
      {

        v82 = *(v69 + 8);
        v82(v74, v72);
        v84 = v57;
        v85 = v29;
      }

      v129(v84, v85);
      sub_2C9CF0();
      return (v82)(v117, v72);
    }

    if (v61 != enum case for Parse.pommesResponse(_:))
    {
      v93 = v110;
      v121(v110, v123, v29);
      v94 = sub_2CDFE0();
      v95 = sub_2CE680();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_0, v94, v95, "MediaDestinationDisambiguationStrategy#actionForInput Ignorning unsupported parse", v96, 2u);
      }

      v56(v93, v29);
      sub_2C9CF0();
      return (*(v59 + 8))(v131, v60);
    }

    (*(v59 + 8))(v58, v60);
  }

  v65 = v120;
  sub_2CA790();
  v66 = sub_D1D64(v65, &v135);
  (*(v59 + 8))(v65, v60, v66);
  if (v136)
  {
    sub_F338(&v135, v137);
    sub_35E0(v137, v137[3]);
    sub_2CD480();
    v67 = v119;
    v68 = v125;
    if ((*(v119 + 48))(v62, 1, v125) == 1)
    {
      sub_30B8(v62, &qword_34CCE8, &unk_2D0E20);
LABEL_11:
      sub_306C(v137);
      return sub_2C9CE0();
    }

    v124 = v30;
    v131 = v29;
    (*(v67 + 32))(v118, v62, v68);
    v91 = *(v67 + 104);
    v91(v116, enum case for CommonAudio.Confirmation.cancel(_:), v68);
    sub_33458(&qword_34CCF8, &type metadata accessor for CommonAudio.Confirmation);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v135 == v133 && *(&v135 + 1) == v134)
    {
      v92 = 1;
    }

    else
    {
      v92 = sub_2CEEA0();
    }

    v97 = *(v119 + 8);
    v98 = v125;
    v97(v116, v125);

    if ((v92 & 1) == 0)
    {
      v99 = v109;
      v91(v109, enum case for CommonAudio.Confirmation.no(_:), v98);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v135 == v133 && *(&v135 + 1) == v134)
      {
        v97(v99, v98);
      }

      else
      {
        v100 = sub_2CEEA0();
        v97(v99, v98);

        if ((v100 & 1) == 0)
        {
          v97(v118, v98);
          goto LABEL_11;
        }
      }
    }

    v101 = v112;
    v102 = v131;
    v121(v112, v123, v131);
    v103 = sub_2CDFE0();
    v104 = sub_2CE690();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "MediaDestinationDisambiguationStrategy#actionForInput cancelled", v105, 2u);
    }

    v56(v101, v102);
    sub_2C9CD0();
    v97(v118, v125);
    return sub_306C(v137);
  }

  else
  {
    sub_30B8(&v135, &qword_34CCF0, &unk_2D1270);
    v86 = v113;
    v121(v113, v123, v29);
    v87 = sub_2CDFE0();
    v88 = sub_2CE690();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_0, v87, v88, "MediaDestinationDisambiguationStrategy#actionForInput received invalid intent", v89, 2u);
    }

    v56(v86, v29);
    return sub_2C9CF0();
  }
}

void *sub_298B0(uint64_t a1)
{
  v2 = sub_20410(&qword_34CC98, &unk_2D3120);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_2CE0A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v25 = &v23 - v12;
  v13 = *(a1 + 16);
  v27 = _swiftEmptyArrayStorage;
  sub_2DB98(0, v13, 0);
  v14 = v27;
  if (v13)
  {
    v15 = a1 + 32;
    v23 = v5;
    v24 = (v7 + 56);
    v16 = (v7 + 32);
    while (1)
    {
      sub_E2FC(v15, v26);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v24)(v5, 0, 1, v6);
      v17 = *v16;
      v18 = v25;
      (*v16)(v25, v5, v6);
      v17(v11, v18, v6);
      v27 = v14;
      v19 = v11;
      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        sub_2DB98(v20 > 1, v21 + 1, 1);
        v14 = v27;
      }

      v14[2] = v21 + 1;
      v17(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v19, v6);
      v15 += 32;
      --v13;
      v11 = v19;
      v5 = v23;
      if (!v13)
      {
        return v14;
      }
    }

    (*v24)(v5, 1, 1, v6);
    sub_30B8(v5, &qword_34CC98, &unk_2D3120);
    return 0;
  }

  return v14;
}

void *sub_29B74(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_2CED20();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_E2FC(i, v6);
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2CED00();
    v4 = v7[2];
    sub_2CED30();
    sub_2CED40();
    sub_2CED10();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_29C80(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_20410(&qword_34CC98, &unk_2D3120);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_20410(&qword_34CCA0, &unk_2D0DD0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  sub_F3F4(a1, &v32 - v13, &qword_34CCA0, &unk_2D0DD0);
  v15 = *(v11 + 56);
  v16 = sub_2CE060();
  v33 = v17;
  v18 = sub_2CE0A0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v20(&v14[v15], v18);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v16;
    v23 = [v21 mediaDestination];
    if (v23)
    {
      v24 = v23;
      sub_2CE090();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    (*(v19 + 56))(v7, v25, 1, v18);
    sub_14A58(v7, v9, &qword_34CC98, &unk_2D3120);
    if ((*(v19 + 48))(v9, 1, v18) != 1)
    {
      v27 = sub_2CE060();
      v29 = v28;
      v20(v9, v18);
      if (v33)
      {
        if (v29)
        {
          if (v22 == v27 && v33 == v29)
          {

            v26 = 1;
          }

          else
          {
            v26 = sub_2CEEA0();
          }

          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (v29)
      {
        v26 = 0;
        goto LABEL_9;
      }

LABEL_19:
      v26 = 1;
      return v26 & 1;
    }
  }

  else
  {
    (*(v19 + 56))(v9, 1, 1, v18);
  }

  sub_30B8(v9, &qword_34CC98, &unk_2D3120);
  if (!v33)
  {
    goto LABEL_19;
  }

LABEL_8:
  v26 = 0;
LABEL_9:

  return v26 & 1;
}

uint64_t sub_29FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v110 = a7;
  v111 = a6;
  v105 = a3;
  v106 = a4;
  v104 = a2;
  v101 = a1;
  v108 = a8;
  v109 = a9;
  v107 = a5;
  v88 = *a5;
  v95 = sub_2C8EC0();
  v94 = *(v95 - 8);
  v9 = *(v94 + 64);
  __chkstk_darwin(v95);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v98 = *(v11 - 8);
  v12 = *(v98 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v14;
  __chkstk_darwin(v13);
  v103 = &v87 - v15;
  v16 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v91 = *(v16 - 8);
  v17 = *(v91 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v97 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v19;
  __chkstk_darwin(v18);
  v102 = (&v87 - v20);
  v21 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v96 = (&v87 - v23);
  v24 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v92 = &v87 - v26;
  v27 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v89 = &v87 - v29;
  v30 = sub_2CCB30();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2CCAC0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20410(&unk_3519A0, &qword_2D0980);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v43 = (&v87 - v42);
  sub_F3F4(v101, &v87 - v42, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v43;
    (*(v36 + 104))(v39, enum case for AdditionalMetricsDescription.ModuleName.mdds(_:), v35);
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v30);
    swift_getErrorValue();
    sub_2CEEF0();
    v106 = sub_2CCAF0();

    (*(v31 + 8))(v34, v30);
    (*(v36 + 8))(v39, v35);
    v45 = v107[8];
    v107 = sub_35E0(v107 + 4, v107[7]);
    v46 = enum case for ActivityType.failed(_:);
    v47 = sub_2C9C20();
    v48 = *(v47 - 8);
    v49 = v89;
    (*(v48 + 104))(v89, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    v50 = sub_2CA130();
    v51 = v92;
    (*(*(v50 - 8) + 56))(v92, 1, 1, v50);
    v52 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v53 = sub_2C98F0();
    v54 = *(v53 - 8);
    v55 = v96;
    (*(v54 + 104))(v96, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    sub_2CB4E0();

    sub_30B8(v55, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v51, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v49, &qword_34CB88, &unk_2D0D90);
    v112[0] = v44;
    v113 = 1;
    swift_errorRetain();
    v108(v112);

    v56 = qword_34C798;
    v57 = &qword_2D0DA0;
    v58 = v112;
  }

  else
  {
    v59 = v102;
    sub_14A58(v43, v102, &qword_34C6E8, &unk_2D0FF0);
    sub_20410(&qword_34CC70, &qword_2D0D78);
    v60 = sub_2CA440();
    v62 = *(v88 + 80);
    v61 = *(v88 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v101 = AssociatedTypeWitness;
    v96 = swift_getAssociatedTypeWitness();
    v64 = v103;
    v65 = v111;
    sub_B2D88(v110, v60, v111, AssociatedTypeWitness, v96, v103);

    v66 = sub_2CA460();
    v67 = v90;
    sub_2CB570();
    sub_98D6C(v67, v66, 1);
    (*(v94 + 8))(v67, v95);
    sub_2AAB4(v66);

    v68 = sub_2C9960();
    v69 = *(v68 + 48);
    v70 = *(v68 + 52);
    swift_allocObject();
    v95 = sub_2C9950();
    v71 = v97;
    sub_F3F4(v59, v97, &qword_34C6E8, &unk_2D0FF0);
    v72 = v64;
    v73 = v100;
    sub_F3F4(v72, v100, &unk_353020, &unk_2D0970);
    v74 = (*(v91 + 80) + 96) & ~*(v91 + 80);
    v75 = (v93 + *(v98 + 80) + v74) & ~*(v98 + 80);
    v76 = swift_allocObject();
    v76[2] = v62;
    v76[3] = v61;
    v77 = v105;
    v76[4] = v104;
    v76[5] = v77;
    v78 = v106;
    v79 = v107;
    v76[6] = v106;
    v76[7] = v79;
    v76[8] = v65;
    v80 = v109;
    v81 = v110;
    v82 = v108;
    v76[9] = v110;
    v76[10] = v82;
    v76[11] = v80;
    sub_14A58(v71, v76 + v74, &qword_34C6E8, &unk_2D0FF0);
    sub_14A58(v73, v76 + v75, &unk_353020, &unk_2D0970);

    v83 = v78;

    v84 = v111;

    v85 = v81;

    sub_10CE1C(v84, v95, sub_332AC, v76);

    sub_30B8(v103, &unk_353020, &unk_2D0970);
    v58 = v102;
    v56 = &qword_34C6E8;
    v57 = &unk_2D0FF0;
  }

  return sub_30B8(v58, v56, v57);
}

void *sub_2AAB4(uint64_t a1)
{
  v2 = sub_2CE0A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_2DBDC(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        sub_2DBDC((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      v8[2] = v15 + 1;
      sub_E2DC(&v18, &v8[4 * v15 + 4]);
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_2AC4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2DBFC(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_2DBFC((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_2AD30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_2DBDC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 16);
      v6 = *(v4 + 48);
      v14 = *(v4 + 32);
      v15 = v6;
      v7 = *(v4 + 16);
      v13[0] = *v4;
      v13[1] = v7;
      v8 = *(v4 + 48);
      *&v12[13] = v14;
      *&v12[15] = v8;
      v16 = *(v4 + 64);
      v12[17] = *(v4 + 64);
      *&v12[9] = v13[0];
      *&v12[11] = v5;
      sub_333FC(v13, v12);
      swift_dynamicCast();
      v17 = v2;
      v10 = v2[2];
      v9 = v2[3];
      if (v10 >= v9 >> 1)
      {
        sub_2DBDC((v9 > 1), v10 + 1, 1);
        v2 = v17;
      }

      v2[2] = v10 + 1;
      sub_E2DC(v12, &v2[4 * v10 + 4]);
      v4 += 72;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_2AE84(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_2CEDA0();
  }

  else
  {
    v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_2DBDC(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        sub_2CECD0();
        sub_334A0(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_2DBDC((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_E2DC(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_334A0(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_2DBDC((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_E2DC(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2B070(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *), uint64_t a10, uint64_t a11)
{
  v85 = a7;
  v86 = a8;
  v81 = a5;
  v82 = a6;
  v80 = a4;
  v79 = a3;
  v87 = a10;
  v88 = a9;
  v89 = a1;
  v74 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v75 = &v70 - v13;
  v73 = sub_2CCB20();
  v14 = *(v73 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v73);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2CA910();
  v76 = *(v77 - 8);
  v18 = *(v76 + 64);
  __chkstk_darwin(v77);
  v83 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v78 = &v70 - v22;
  v23 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v84 = &v70 - v25;
  v26 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v70 - v28;
  v30 = sub_2CCB30();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2CCAC0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v36 + 104))(v39, enum case for AdditionalMetricsDescription.ModuleName.mdds(_:), v35);
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v30);
    swift_getErrorValue();
    sub_2CEEF0();
    v83 = sub_2CCAF0();

    (*(v31 + 8))(v34, v30);
    (*(v36 + 8))(v39, v35);
    v40 = v82[8];
    sub_35E0(v82 + 4, v82[7]);
    v41 = enum case for ActivityType.failed(_:);
    v42 = sub_2C9C20();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v29, v41, v42);
    (*(v43 + 56))(v29, 0, 1, v42);
    v44 = sub_2CA130();
    v45 = v84;
    (*(*(v44 - 8) + 56))(v84, 1, 1, v44);
    v46 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v47 = sub_2C98F0();
    v48 = *(v47 - 8);
    v49 = v78;
    (*(v48 + 104))(v78, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    sub_2CB4E0();

    sub_30B8(v49, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v45, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v29, &qword_34CB88, &unk_2D0D90);
    *&v90 = v89;
    v93 = 1;
    swift_errorRetain();
    v88(&v90);
  }

  else
  {
    v72 = v29;
    v71 = a11;
    sub_2CB5B0();
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    sub_2C9DF0();
    sub_30B8(&v90, &qword_34CC80, &qword_2D1520);
    (*(v36 + 104))(v39, enum case for AdditionalMetricsDescription.ModuleName.mdds(_:), v35);
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v30);
    v50 = v73;
    (*(v14 + 104))(v17, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v73);
    v89 = sub_2CCB00();
    v81 = v51;
    (*(v14 + 8))(v17, v50);
    (*(v31 + 8))(v34, v30);
    (*(v36 + 8))(v39, v35);
    v52 = v82[8];
    sub_35E0(v82 + 4, v82[7]);
    v53 = enum case for ActivityType.disambiguation(_:);
    v54 = sub_2C9C20();
    v55 = *(v54 - 8);
    v56 = v72;
    (*(v55 + 104))(v72, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    v57 = v75;
    sub_F3F4(v71, v75, &qword_34C6E8, &unk_2D0FF0);

    v58 = sub_2CA130();
    v59 = *(v58 - 8);
    v60 = v84;
    (*(v59 + 32))(v84, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = enum case for SiriKitReliabilityCodes.success(_:);
    v62 = sub_2C98F0();
    v63 = *(v62 - 8);
    v64 = v78;
    (*(v63 + 104))(v78, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    sub_2CB4E0();

    sub_30B8(v64, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v60, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v56, &qword_34CB88, &unk_2D0D90);
    v65 = v77;
    *(&v91 + 1) = v77;
    v92 = &protocol witness table for AceOutput;
    v66 = sub_F390(&v90);
    v67 = v76;
    v68 = v83;
    (*(v76 + 16))(v66, v83, v65);
    v93 = 0;
    v88(&v90);
    (*(v67 + 8))(v68, v65);
  }

  return sub_30B8(&v90, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_2BB5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v78 = a7;
  v81 = a5;
  v82 = a6;
  v83 = a4;
  v84 = a3;
  v76 = *a2;
  v9 = sub_2CD230();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  __chkstk_darwin(v9);
  v73 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&unk_353020, &unk_2D0970);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v80 = v71 - v14;
  v79 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v15 = *(*(v79 - 8) + 64);
  v16 = __chkstk_darwin(v79);
  v72 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v77 = v71 - v19;
  __chkstk_darwin(v18);
  v21 = v71 - v20;
  v22 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v71 - v24;
  v26 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = v71 - v28;
  v30 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = v71 - v32;
  v34 = sub_20410(&unk_3519A0, &qword_2D0980);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = (v71 - v36);
  sub_F3F4(a1, v71 - v36, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v37;
    v39 = a2[8];
    sub_35E0(a2 + 4, a2[7]);
    v40 = enum case for ActivityType.failed(_:);
    v41 = sub_2C9C20();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v33, v40, v41);
    (*(v42 + 56))(v33, 0, 1, v41);
    v43 = sub_2CA130();
    (*(*(v43 - 8) + 56))(v29, 1, 1, v43);
    v44 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v45 = sub_2C98F0();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v25, v44, v45);
    (*(v46 + 56))(v25, 0, 1, v45);
    swift_getErrorValue();
    sub_2CEEF0();
    sub_2CB4E0();

    sub_30B8(v25, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v29, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v33, &qword_34CB88, &unk_2D0D90);
    v85[0] = v38;
    v86 = 1;
    swift_errorRetain();
    v81(v85);

    return sub_30B8(v85, qword_34C798, &qword_2D0DA0);
  }

  sub_14A58(v37, v21, &qword_34C6E8, &unk_2D0FF0);
  v71[0] = sub_20410(&qword_34CC70, &qword_2D0D78);
  v48 = sub_2CA440();
  v50 = *(v76 + 80);
  v49 = *(v76 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = swift_getAssociatedTypeWitness();
  sub_B2D88(v83, v48, v84, AssociatedTypeWitness, v52, v80);

  v53 = v77;
  sub_F3F4(v21, v77, &qword_34C6E8, &unk_2D0FF0);
  v54 = *(v53 + *(v79 + 48));
  v55 = [v54 dialog];

  sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
  v56 = sub_2CE410();

  if (v56 >> 62)
  {
    result = sub_2CEDA0();
  }

  else
  {
    result = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
  }

  v71[1] = v49;
  v76 = v50;
  if (result)
  {
    if ((v56 & 0xC000000000000001) != 0)
    {
      v57 = v21;
      v58 = sub_2CECD0();
    }

    else
    {
      if (!*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v57 = v21;
      v58 = *(v56 + 32);
    }

    v59 = v58;

    v60 = [v59 fullPrint];

    v61 = sub_2CE270();
    v63 = v62;
  }

  else
  {
    v57 = v21;

    v61 = 0;
    v63 = 0xE000000000000000;
  }

  v64 = sub_2CA130();
  v65 = *(*(v64 - 8) + 8);
  v65(v53, v64);
  v66 = sub_2CA460();
  v67 = v73;
  sub_2C428(v61, v63, v66, v73);

  v68 = v72;
  sub_F3F4(v57, v72, &qword_34C6E8, &unk_2D0FF0);
  v69 = v80;
  v70 = *(v68 + *(v79 + 48));
  sub_328A0(v67, v68, v70, v80, v81, v82);

  (*(v74 + 8))(v67, v75);
  sub_30B8(v69, &unk_353020, &unk_2D0970);
  sub_30B8(v57, &qword_34C6E8, &unk_2D0FF0);
  return (v65)(v68, v64);
}

uint64_t sub_2C428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v70 = a1;
  v72 = a4;
  v5 = sub_20410(&unk_3519B0, &qword_2D1230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v82 = &v62 - v7;
  v86 = sub_2CD220();
  v83 = *(v86 - 8);
  v8 = *(v83 + 64);
  v9 = __chkstk_darwin(v86);
  v85 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v84 = &v62 - v11;
  v12 = sub_2CE0A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v67 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v62 - v22;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v24 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  v25 = v18[2];
  v65 = v24;
  v64 = v18 + 2;
  v63 = v25;
  v25(v23, v24, v17);
  v26 = v23;
  v27 = sub_2CDFE0();
  v28 = sub_2CE670();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "MediaItemDisambiguationStrategy#disambiguationSnippet...", v29, 2u);
  }

  v71 = a2;

  v30 = v18[1];
  v69 = v17;
  v68 = v18 + 1;
  v66 = v30;
  v30(v26, v17);
  v31 = *(v79 + 16);
  if (v31)
  {
    v34 = *(v13 + 16);
    v33 = v13 + 16;
    v32 = v34;
    v35 = v79 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v36 = *(v33 + 56);
    v37 = (v33 + 72);
    v38 = enum case for INMediaDestination.playlist(_:);
    v76 = (v33 + 80);
    v77 = (v33 - 8);
    v74 = v83 + 8;
    v75 = (v83 + 16);
    v73 = v83 + 32;
    v39 = _swiftEmptyArrayStorage;
    v80 = v34;
    v81 = v33;
    v79 = v36;
    v78 = enum case for INMediaDestination.playlist(_:);
    v34(v16, v35, v12);
    while (1)
    {
      if ((*v37)(v16, v12) == v38)
      {
        (*v76)(v16, v12);
        v40 = *v16;
        v41 = v16[1];
        v42 = sub_2C8D90();
        (*(*(v42 - 8) + 56))(v82, 1, 1, v42);

        v43 = v84;
        sub_2CD210();
        (*v75)(v85, v43, v86);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_B91F8(0, v39[2] + 1, 1, v39);
        }

        v45 = v39[2];
        v44 = v39[3];
        if (v45 >= v44 >> 1)
        {
          v39 = sub_B91F8(v44 > 1, v45 + 1, 1, v39);
        }

        v46 = v83;
        v47 = v86;
        (*(v83 + 8))(v84, v86);
        v39[2] = v45 + 1;
        (*(v46 + 32))(v39 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45, v85, v47);
        v32 = v80;
        v36 = v79;
        v38 = v78;
      }

      else
      {
        (*v77)(v16, v12);
      }

      v35 += v36;
      if (!--v31)
      {
        break;
      }

      v32(v16, v35, v12);
    }
  }

  v48 = v67;
  v49 = v69;
  v63(v67, v65, v69);
  v50 = sub_2CDFE0();
  v51 = sub_2CE670();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v87 = v53;
    *v52 = 136315138;

    v54 = sub_2CE420();
    v56 = v55;

    v57 = sub_3F08(v54, v56, &v87);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_0, v50, v51, "MediaItemDisambiguationStrategy#disambiguationSnippet returning items to disambiguate: %s", v52, 0xCu);
    sub_306C(v53);
  }

  v66(v48, v49);
  v58 = v72;

  sub_2CD310();
  v59 = enum case for SiriAudioSnippets.disambiguation(_:);
  v60 = sub_2CD230();
  (*(*(v60 - 8) + 104))(v58, v59, v60);
}

uint64_t sub_2CBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a3;
  v24 = a4;
  v25 = sub_2C9C40();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = v23 - v12;
  v14 = sub_2CB260();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_20410(&unk_353020, &unk_2D0970);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  sub_F3F4(a2, v23 - v18, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(v24, v13, &qword_34C6E8, &unk_2D0FF0);
  v19 = *&v13[*(v10 + 56)];
  v20 = [v19 catId];

  sub_2CE270();
  sub_2CA590();
  v21 = sub_2CA130();
  (*(*(v21 - 8) + 8))(v13, v21);
  sub_2CA5F0();
  sub_2CA5A0();
  (*(v5 + 104))(v8, enum case for ResponseType.disambiguation(_:), v25);
  return sub_2CA580();
}

uint64_t sub_2CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_2CF58, 0, 0);
}

uint64_t sub_2CF58()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = sub_2CA080();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[13] = sub_2CA070();
  v8 = sub_2CD230();
  v0[5] = v8;
  v0[6] = sub_33458(&qword_34CC78, &type metadata accessor for SiriAudioSnippets);
  v9 = sub_F390(v0 + 2);
  (*(*(v8 - 8) + 16))(v9, v4, v8);
  sub_20410(&unk_351900, &unk_2D0960);
  v10 = swift_allocObject();
  v0[14] = v10;
  *(v10 + 16) = xmmword_2D0770;
  sub_F3F4(v3, v1, &qword_34C6E8, &unk_2D0FF0);
  *(v10 + 32) = *(v1 + *(v2 + 48));
  v11 = sub_2CA130();
  (*(*(v11 - 8) + 8))(v1, v11);
  v12 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + 1);
  v17 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_2D160;
  v14 = v0[10];
  v15 = v0[7];

  return v17(v15, v0 + 2, v10, v14);
}

uint64_t sub_2D160()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 96);
  v8 = *v0;

  sub_306C((v1 + 16));

  v6 = *(v8 + 8);

  return v6();
}

void *sub_2D2BC()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_306C(v0 + 4);
  sub_306C(v0 + 9);
  v3 = v0[14];

  return v0;
}

uint64_t sub_2D2FC()
{
  sub_2D2BC();

  return swift_deallocClassInstance();
}

uint64_t sub_2D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 80);
  v14 = *(a6 + 88);
  v15 = type metadata accessor for MediaDestinationDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategy.paginationStyle(app:intent:parameterName:intentResolutionResult:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_2D3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  *(v14 + 24) = a8;
  v15 = *v8;

  sub_2E3F0(a3, a4, a6, sub_333BC);
}

uint64_t sub_2D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20 = *(a10 + 80);
  v21 = *(a10 + 88);
  v24 = type metadata accessor for MediaDestinationDisambiguationStrategy();

  return a12(a1, a2, a3, a4, a5, a6, a7, a8, a9, v24, a11);
}

uint64_t sub_2D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v19 = *(a9 + 80);
  v20 = *(a9 + 88);
  v23 = type metadata accessor for MediaDestinationDisambiguationStrategy();

  return a11(a1, a2, a3, a4, a5, a6, a7, a8, v23, a10);
}

uint64_t sub_2D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 + 80);
  v16 = *(a7 + 88);
  v17 = type metadata accessor for MediaDestinationDisambiguationStrategy();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_2D818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a8 + 80);
  v17 = *(a8 + 88);
  v18 = type metadata accessor for MediaDestinationDisambiguationStrategy();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v18, a9);
}

uint64_t sub_2D8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = *(a6 + 80);
  v18 = *(a6 + 88);
  v19 = type metadata accessor for MediaDestinationDisambiguationStrategy();
  *v16 = v7;
  v16[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v19, a7);
}

uint64_t sub_2D9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8;
  v17 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = *(a7 + 80);
  v20 = *(a7 + 88);
  v21 = type metadata accessor for MediaDestinationDisambiguationStrategy();
  *v18 = v15;
  v18[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v21, a8);
}

unint64_t sub_2DACC()
{
  result = qword_34CC60;
  if (!qword_34CC60)
  {
    sub_2DB30(&qword_34CC68, &qword_2D0CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CC60);
  }

  return result;
}

uint64_t sub_2DB30(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_2DB78(char *a1, int64_t a2, char a3)
{
  result = sub_2DC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2DB98(size_t a1, int64_t a2, char a3)
{
  result = sub_2E214(a1, a2, a3, *v3, &qword_34CCC8, &unk_2D0DF0, &type metadata accessor for INMediaDestination);
  *v3 = result;
  return result;
}

char *sub_2DBDC(char *a1, int64_t a2, char a3)
{
  result = sub_2DD9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2DBFC(char *a1, int64_t a2, char a3)
{
  result = sub_2DEAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DC1C(void *a1, int64_t a2, char a3)
{
  result = sub_2DFB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2DC3C(size_t a1, int64_t a2, char a3)
{
  result = sub_2E214(a1, a2, a3, *v3, &qword_34CD18, &qword_2D0E38, &type metadata accessor for InstalledApp);
  *v3 = result;
  return result;
}

char *sub_2DC80(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34CD08, &qword_2D0E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2DD9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34CC88, &unk_2D0DC0);
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

char *sub_2DEAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&unk_356F40, &unk_2D0740);
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

void *sub_2DFB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_20410(&qword_34CCD0, &unk_2D0E00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_20410(&qword_34CCD8, &unk_2D10D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2E0EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34CCE0, &unk_2D0E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2E214(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_20410(a5, a6);
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

uint64_t sub_2E3F0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v4 + 112);
  v37[0] = a1;
  v37[1] = a2;
  v36 = v37;
  if (sub_13964(sub_334E8, v35, v14))
  {
    v15 = [a3 disambiguationItems];
    v16 = sub_2CE410();

    v17 = *(v16 + 16);

    if (v17)
    {
      v18 = [a3 disambiguationItems];
      v19 = sub_2CE410();

      v20 = sub_298B0(v19);

      if (v20)
      {
        v21 = sub_20410(&qword_34CC68, &qword_2D0CD0);
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();
        sub_2CA730();
        a4();
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v13, v30, v9);
    v31 = sub_2CDFE0();
    v32 = sub_2CE680();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "MediaDestinationDisambiguationStrategy#makeDisambiguationItemContainer resolutionResult.disambiguationItems not of type [INMediaItem] or empty", v33, 2u);
    }

    (*(v10 + 8))(v13, v9);
    v25 = sub_2CB850();
    sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v26 = swift_allocError();
    v28 = v34;
    v29 = &enum case for PlaybackCode.ceGE42(_:);
  }

  else
  {
    v25 = sub_2CB850();
    sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v26 = swift_allocError();
    v28 = v27;
    v29 = &enum case for PlaybackCode.ceGE41(_:);
  }

  (*(*(v25 - 8) + 104))(v28, *v29, v25);
  (a4)(v26, 1);
}

uint64_t sub_2E7DC(void *a1, uint64_t a2, unint64_t *a3, void (*a4)(char *, unint64_t, uint64_t), uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v475 = a7;
  v476 = a6;
  v464 = a5;
  v469 = a4;
  v473 = a3;
  v451 = a1;
  v9 = *v7;
  v461 = sub_2CA810();
  v460 = *(v461 - 1);
  v10 = *(v460 + 64);
  v11 = __chkstk_darwin(v461);
  v439 = &v420 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v454 = &v420 - v14;
  __chkstk_darwin(v13);
  v466 = &v420 - v15;
  v16 = sub_20410(&qword_34CC90, qword_2D40E0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v437 = &v420 - v18;
  v458 = sub_2CAA00();
  v446 = *(v458 - 8);
  v19 = *(v446 + 64);
  v20 = __chkstk_darwin(v458);
  v436 = &v420 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v453 = &v420 - v22;
  v23 = *(v9 + 80);
  v478 = *(v9 + 88);
  v477 = v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_2CA230();
  v449 = *(v24 - 8);
  v25 = *(v449 + 64);
  __chkstk_darwin(v24);
  v448 = &v420 - v26;
  v450 = v27;
  sub_2CA380();
  sub_2DB30(&qword_34C6E0, &unk_2D0730);
  v28 = sub_2CEFA0();
  v474 = *(v28 - 8);
  v29 = *(v474 + 64);
  __chkstk_darwin(v28);
  v31 = (&v420 - v30);
  v32 = sub_20410(&qword_34CC98, &unk_2D3120);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v434 = &v420 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v444 = &v420 - v37;
  __chkstk_darwin(v36);
  v447 = &v420 - v38;
  v472 = sub_2CE000();
  v470 = *(v472 - 8);
  v39 = *(v470 + 64);
  v40 = __chkstk_darwin(v472);
  v445 = &v420 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v457 = &v420 - v43;
  v44 = __chkstk_darwin(v42);
  v438 = &v420 - v45;
  v46 = __chkstk_darwin(v44);
  v432 = &v420 - v47;
  v48 = __chkstk_darwin(v46);
  v430 = &v420 - v49;
  v50 = __chkstk_darwin(v48);
  v433 = &v420 - v51;
  v52 = __chkstk_darwin(v50);
  v426 = &v420 - v53;
  v54 = __chkstk_darwin(v52);
  v435 = &v420 - v55;
  v56 = __chkstk_darwin(v54);
  v455 = &v420 - v57;
  v58 = __chkstk_darwin(v56);
  v459 = &v420 - v59;
  __chkstk_darwin(v58);
  v452 = &v420 - v60;
  v479 = sub_20410(&qword_34CCA0, &unk_2D0DD0);
  v61 = *(*(v479 - 8) + 64);
  v62 = __chkstk_darwin(v479);
  v467 = &v420 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v471 = (&v420 - v65);
  v66 = __chkstk_darwin(v64);
  v68 = (&v420 - v67);
  v69 = __chkstk_darwin(v66);
  v428 = &v420 - v70;
  v71 = __chkstk_darwin(v69);
  v463 = &v420 - v72;
  v73 = __chkstk_darwin(v71);
  v468 = &v420 - v74;
  v75 = __chkstk_darwin(v73);
  v462 = (&v420 - v76);
  v77 = __chkstk_darwin(v75);
  v425 = &v420 - v78;
  v79 = __chkstk_darwin(v77);
  v81 = &v420 - v80;
  v82 = __chkstk_darwin(v79);
  v84 = (&v420 - v83);
  __chkstk_darwin(v82);
  v442 = &v420 - v85;
  v480 = sub_2CE0A0();
  v481 = *(v480 - 8);
  v86 = *(v481 + 64);
  v87 = __chkstk_darwin(v480);
  v427 = &v420 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __chkstk_darwin(v87);
  v429 = &v420 - v90;
  v91 = __chkstk_darwin(v89);
  v423 = &v420 - v92;
  v93 = __chkstk_darwin(v91);
  v424 = &v420 - v94;
  v95 = __chkstk_darwin(v93);
  v431 = &v420 - v96;
  v97 = __chkstk_darwin(v95);
  v443 = &v420 - v98;
  v99 = __chkstk_darwin(v97);
  v441 = &v420 - v100;
  __chkstk_darwin(v99);
  v456 = &v420 - v101;
  v102 = sub_2CA870();
  v103 = *(v102 - 8);
  v104 = *(v103 + 64);
  __chkstk_darwin(v102);
  v106 = (&v420 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = v7[14];
  v486 = a2;
  v487 = v473;
  v483 = &v486;
  if ((sub_13964(sub_13A68, v482, v107) & 1) == 0)
  {
    v137 = sub_2CB850();
    sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v138 = swift_allocError();
    (*(*(v137 - 8) + 104))(v139, enum case for PlaybackCode.ceGE43(_:), v137);
    *v31 = v138;
    swift_storeEnumTagMultiPayload();
    v476(v31);
    return (*(v474 + 8))(v31, v28);
  }

  v440 = v31;
  v422 = v28;
  sub_2CA790();
  v108 = (*(v103 + 88))(v106, v102);
  if (v108 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v103 + 96))(v106, v102);
    v109 = *(v106 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v110 = sub_2CA830();
    v111 = swift_dynamicCastUnknownClass();
    if (!v111)
    {

      v182 = v470;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v183 = v472;
      v184 = sub_3ED0(v472, static Logger.default);
      swift_beginAccess();
      v185 = v455;
      (*(v182 + 16))(v455, v184, v183);
      v186 = sub_2CDFE0();
      v187 = sub_2CE680();
      v188 = os_log_type_enabled(v186, v187);
      v189 = v474;
      v190 = v440;
      if (v188)
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&dword_0, v186, v187, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult Ignorning non-server-conversion parse", v191, 2u);
      }

      (*(v182 + 8))(v185, v183);
      v192 = sub_2CB850();
      sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v193 = swift_allocError();
      (*(*(v192 - 8) + 104))(v194, enum case for PlaybackCode.ceGE44(_:), v192);
      *v190 = v193;
      v195 = v422;
      swift_storeEnumTagMultiPayload();
      v476(v190);

      (*(v189 + 8))(v190, v195);
      v196 = sub_2CAFE0();
      return (*(*(v196 - 8) + 8))(v106, v196);
    }

    v112 = v111;
    v468 = v110;
    v469 = v109;
    v471 = v106;
    sub_20410(&qword_34CC70, &qword_2D0D78);
    v113 = sub_2CA460();
    v114 = *(v113 + 16);
    if (v114)
    {
      v115 = 0;
      v473 = (v481 + 16);
      while (1)
      {
        if (v115 >= *(v113 + 16))
        {
          __break(1u);
          goto LABEL_124;
        }

        v116 = v481;
        v117 = v113 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v481 + 72) * v115;
        v118 = *(v479 + 48);
        *v84 = v115;
        v119 = *(v116 + 16);
        v119(v84 + v118, v117, v480);
        sub_14A58(v84, v81, &qword_34CCA0, &unk_2D0DD0);
        if (sub_29C80(v81, v112))
        {
          break;
        }

        ++v115;
        sub_30B8(v81, &qword_34CCA0, &unk_2D0DD0);
        if (v114 == v115)
        {
          goto LABEL_9;
        }
      }

      v209 = v442;
      sub_14A58(v81, v442, &qword_34CCA0, &unk_2D0DD0);
      v210 = v481;
      v211 = *(v481 + 32);
      v212 = v441;
      v213 = v480;
      v211(v441, v209 + *(v479 + 48), v480);
      v214 = v456;
      v211(v456, v212, v213);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v215 = v472;
      v216 = sub_3ED0(v472, static Logger.default);
      swift_beginAccess();
      v217 = v470;
      v218 = v452;
      (*(v470 + 16))(v452, v216, v215);
      v219 = v443;
      v119(v443, v214, v213);
      v220 = sub_2CDFE0();
      v221 = sub_2CE680();
      if (os_log_type_enabled(v220, v221))
      {
        v222 = v210;
        v223 = swift_slowAlloc();
        v224 = v219;
        v225 = swift_slowAlloc();
        v486 = v225;
        *v223 = 136315138;
        sub_33458(&qword_34CCB8, &type metadata accessor for INMediaDestination);
        v226 = sub_2CEE70();
        v228 = v227;
        v229 = *(v222 + 8);
        v478 = (v222 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v479 = v229;
        v229(v224, v480);
        v230 = sub_3F08(v226, v228, &v486);
        v213 = v480;

        *(v223 + 4) = v230;
        _os_log_impl(&dword_0, v220, v221, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult Updating media items with match: %s", v223, 0xCu);
        sub_306C(v225);

        (*(v217 + 8))(v452, v472);
      }

      else
      {

        v268 = *(v210 + 8);
        v478 = (v210 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v479 = v268;
        v268(v219, v213);
        (*(v217 + 8))(v218, v215);
        v222 = v210;
      }

      v269 = v440;
      v270 = v451;
      v271 = v450;
      v272 = v449;
      v273 = v447;
      v274 = v456;
      v119(v447, v456, v213);
      (*(v222 + 56))(v273, 0, 1, v213);
      sub_72E4C(v273);
      sub_30B8(v273, &qword_34CC98, &unk_2D3120);
      v488 = v213;
      v275 = sub_F390(&v486);
      v119(v275, v274, v213);
      v276 = v270;
      v277 = v448;
      sub_2CA220();
      sub_2CA370();
      (*(v272 + 8))(v277, v271);
      v278 = v422;
      swift_storeEnumTagMultiPayload();
      v476(v269);

      (*(v474 + 8))(v269, v278);
      (v479)(v274, v213);
      v279 = sub_2CAFE0();
      return (*(*(v279 - 8) + 8))(v471, v279);
    }

LABEL_9:

    if (qword_34BF58 == -1)
    {
LABEL_10:
      v120 = v472;
      v121 = sub_3ED0(v472, static Logger.default);
      swift_beginAccess();
      v122 = v470;
      v123 = v459;
      (*(v470 + 16))(v459, v121, v120);
      v124 = v468;
      v125 = sub_2CDFE0();
      v126 = sub_2CE670();

      v127 = os_log_type_enabled(v125, v126);
      v128 = v476;
      v129 = v471;
      if (!v127)
      {

        (*(v122 + 8))(v123, v120);
LABEL_88:
        v329 = sub_2CB850();
        sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
        v330 = swift_allocError();
        (*(*(v329 - 8) + 104))(v331, enum case for PlaybackCode.ceGE45(_:), v329);
        v332 = v440;
        *v440 = v330;
        v333 = v422;
        swift_storeEnumTagMultiPayload();
        v128(v332);

        (*(v474 + 8))(v332, v333);
        v334 = sub_2CAFE0();
        return (*(*(v334 - 8) + 8))(v129, v334);
      }

      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v485 = v131;
      *v130 = 136315138;
      objc_opt_self();
      v132 = swift_dynamicCastObjCClass();
      if (v132)
      {
        v479 = v124;
        v133 = [v132 mediaDestination];
        if (v133)
        {
          v134 = v434;
          v135 = v133;
          sub_2CE090();

          v136 = 0;
        }

        else
        {
          v136 = 1;
          v134 = v434;
        }

        v318 = v481;
        v319 = v480;
        (*(v481 + 56))(v134, v136, 1, v480);
        v291 = v444;
        sub_14A58(v134, v444, &qword_34CC98, &unk_2D3120);
        v320 = (*(v318 + 48))(v291, 1, v319);
        v124 = v479;
        if (v320 != 1)
        {
          v323 = v291;
          v321 = sub_2CE060();
          v322 = v324;
          v325 = v323;
          v124 = v479;
          (*(v318 + 8))(v325, v319);
          goto LABEL_87;
        }
      }

      else
      {
        v291 = v444;
        (*(v481 + 56))(v444, 1, 1, v480);
      }

      sub_30B8(v291, &qword_34CC98, &unk_2D3120);
      v321 = 0;
      v322 = 0;
LABEL_87:
      v129 = v471;
      v128 = v476;
      v484[0] = v321;
      v484[1] = v322;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v326 = sub_2CE2A0();
      v328 = sub_3F08(v326, v327, &v485);

      *(v130 + 4) = v328;
      _os_log_impl(&dword_0, v125, v126, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult could not find selected content for intent playlistName: %s", v130, 0xCu);
      sub_306C(v131);

      (*(v470 + 8))(v459, v120);
      goto LABEL_88;
    }

LABEL_126:
    swift_once();
    goto LABEL_10;
  }

  if (v108 != enum case for Parse.directInvocation(_:))
  {
    if (v108 != enum case for Parse.pommesResponse(_:))
    {
      v197 = v440;
      v198 = v472;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v199 = sub_3ED0(v198, static Logger.default);
      swift_beginAccess();
      v200 = v470;
      v201 = v445;
      (*(v470 + 16))(v445, v199, v198);
      v202 = sub_2CDFE0();
      v203 = sub_2CE680();
      if (os_log_type_enabled(v202, v203))
      {
        v204 = swift_slowAlloc();
        *v204 = 0;
        _os_log_impl(&dword_0, v202, v203, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult Ignorning non-server-conversion parse", v204, 2u);
      }

      (*(v200 + 8))(v201, v198);
      v205 = sub_2CB850();
      sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v206 = swift_allocError();
      (*(*(v205 - 8) + 104))(v207, enum case for PlaybackCode.ceGE51(_:), v205);
      *v197 = v206;
      v208 = v422;
      swift_storeEnumTagMultiPayload();
      v476(v197);
      (*(v474 + 8))(v197, v208);
      return (*(v103 + 8))(v106, v102);
    }

    (*(v103 + 96))(v106, v102);
    v467 = *v106;
    v160 = sub_1B7F14();
    v161 = v440;
    v162 = v472;
    if (!v160)
    {
      v280 = v474;
      v281 = v476;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v282 = sub_3ED0(v162, static Logger.default);
      swift_beginAccess();
      v283 = v432;
      (*(v470 + 16))(v432, v282, v162);
      v284 = sub_2CDFE0();
      v285 = sub_2CE680();
      if (os_log_type_enabled(v284, v285))
      {
        v286 = swift_slowAlloc();
        *v286 = 0;
        _os_log_impl(&dword_0, v284, v285, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult pommesResponse contains no AudioExperience", v286, 2u);
      }

      (*(v470 + 8))(v283, v162);
      v287 = sub_2CB850();
      sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v288 = swift_allocError();
      (*(*(v287 - 8) + 104))(v289, enum case for PlaybackCode.ceGE46(_:), v287);
      *v161 = v288;
      v290 = v422;
      swift_storeEnumTagMultiPayload();
      v281(v161);

      return (*(v280 + 8))(v161, v290);
    }

    v163 = v160;
    v164 = v453;
    v466 = v163;
    sub_2CDA40();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v165 = sub_3ED0(v162, static Logger.default);
    swift_beginAccess();
    v166 = *(v470 + 16);
    v167 = v435;
    v459 = v165;
    v457 = (v470 + 16);
    v456 = v166;
    (v166)(v435, v165, v162);
    v168 = v446;
    v169 = *(v446 + 16);
    v170 = v436;
    v171 = v458;
    v169(v436, v164, v458);
    v172 = sub_2CDFE0();
    v173 = sub_2CE690();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v485 = v175;
      *v174 = 136315138;
      sub_2CAA60();
      v488 = v458;
      v489 = sub_33458(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
      v176 = sub_F390(&v486);
      v169(v176, v170, v458);
      v177 = sub_2CAA50();
      v178 = v170;
      v180 = v179;
      v461 = *(v168 + 8);
      v461(v178, v458);
      sub_306C(&v486);
      v181 = sub_3F08(v177, v180, &v485);

      *(v174 + 4) = v181;
      _os_log_impl(&dword_0, v172, v173, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult pommesResponse userDialogAct: %s", v174, 0xCu);
      sub_306C(v175);
      v171 = v458;

      v161 = v440;
    }

    else
    {

      v461 = *(v168 + 8);
      v461(v170, v171);
    }

    v292 = v167;
    v293 = v472;
    v460 = *(v470 + 8);
    (v460)(v292, v472);
    v294 = v474;
    v295 = v476;
    sub_20410(&qword_34CC70, &qword_2D0D78);
    v296 = sub_2CA460();
    sub_2CD700();
    v297 = v437;
    v298 = v466;
    sub_2CDA40();

    (*(v168 + 56))(v297, 0, 1, v171);
    v299 = sub_2CD600();
    if (v299)
    {
      v300 = v299;
      v478 = v296;
      v301 = sub_2CD660();
      if (v301 >> 62)
      {
        v419 = v301;
        v302 = sub_2CEDA0();
        v301 = v419;
      }

      else
      {
        v302 = *(&dword_10 + (v301 & 0xFFFFFFFFFFFFFF8));
      }

      v303 = v433;
      if (v302)
      {
        if ((v301 & 0xC000000000000001) != 0)
        {
          v304 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v301 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);

            result = sub_30B8(v171, &qword_34CCA0, &unk_2D0DD0);
            __break(1u);
            return result;
          }

          v304 = *(v301 + 32);
        }
      }

      else
      {

        v304 = 0;
      }

      v335 = v478;
      v471 = *(v478 + 16);
      v464 = v300;
      if (v471)
      {
        v336 = 0;
        v477 = v481 + 16;
        v337 = (v481 + 8);
        v338 = &qword_34CCA0;
        v473 = v304;
        while (1)
        {
          if (v336 >= *(v335 + 16))
          {
            goto LABEL_125;
          }

          v339 = v337;
          v340 = v481;
          v341 = v335 + ((*(v340 + 80) + 32) & ~*(v340 + 80)) + *(v340 + 72) * v336;
          v342 = v479;
          v343 = *(v479 + 48);
          v344 = v462;
          *v462 = v336;
          v345 = v480;
          v469 = *(v340 + 16);
          v469(v344 + v343, v341, v480);
          v346 = v468;
          sub_14A58(v344, v468, v338, &unk_2D0DD0);
          v347 = v463;
          v348 = v338;
          sub_F3F4(v346, v463, v338, &unk_2D0DD0);
          v349 = *(v342 + 48);
          v350 = sub_2CE060();
          v352 = v351;
          v353 = v345;
          v354 = *(v340 + 8);
          v337 = v339;
          (v354)(v347 + v349, v353);
          v304 = v473;
          if (!v473)
          {
            break;
          }

          v355 = sub_2CADC0();
          v293 = v472;
          if (!v352)
          {
            if (!v356)
            {
LABEL_104:
              v471 = v354;
              v358 = v423;
LABEL_118:

              v391 = v425;
              sub_14A58(v468, v425, &qword_34CCA0, &unk_2D0DD0);
              v392 = *(v481 + 32);
              v393 = v391 + *(v479 + 48);
              v394 = v424;
              v395 = v480;
              v392(v424, v393, v480);
              v396 = v431;
              v392(v431, v394, v395);
              v397 = v426;
              (v456)(v426, v459, v293);
              v469(v358, v396, v395);
              v398 = sub_2CDFE0();
              v399 = sub_2CE690();
              v400 = os_log_type_enabled(v398, v399);
              v455 = v339;
              if (v400)
              {
                v401 = swift_slowAlloc();
                v402 = swift_slowAlloc();
                v486 = v402;
                *v401 = 136315138;
                sub_33458(&qword_34CCB8, &type metadata accessor for INMediaDestination);
                v403 = sub_2CEE70();
                v404 = v358;
                v406 = v405;
                (v471)(v404, v395);
                v407 = sub_3F08(v403, v406, &v486);

                *(v401 + 4) = v407;
                _os_log_impl(&dword_0, v398, v399, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult Updating media items with match: %s", v401, 0xCu);
                sub_306C(v402);
              }

              else
              {

                (v471)(v358, v395);
              }

              (v460)(v397, v293);
              v408 = v451;
              v409 = v450;
              v410 = v449;
              v411 = v448;
              v412 = v447;
              v413 = v431;
              v414 = v469;
              v469(v447, v431, v395);
              (*(v481 + 56))(v412, 0, 1, v395);
              sub_72E4C(v412);
              sub_30B8(v412, &qword_34CC98, &unk_2D3120);
              v488 = v395;
              v415 = sub_F390(&v486);
              v414(v415, v413, v395);
              v416 = v408;
              sub_2CA220();
              v417 = v440;
              sub_2CA370();
              (*(v410 + 8))(v411, v409);
              v418 = v422;
              swift_storeEnumTagMultiPayload();
              v476(v417);

              (*(v474 + 8))(v417, v418);
              (v471)(v413, v395);
              v389 = v453;
              v390 = v458;
              return (v461)(v389, v390);
            }

            goto LABEL_93;
          }

          if (!v356)
          {
            goto LABEL_93;
          }

          if (v350 == v355 && v352 == v356)
          {
            v471 = v354;

            v358 = v423;
            goto LABEL_118;
          }

          v357 = sub_2CEEA0();

          if (v357)
          {
            goto LABEL_104;
          }

LABEL_94:
          ++v336;
          v338 = v348;
          sub_30B8(v468, v348, &unk_2D0DD0);
          v335 = v478;
          if (v471 == v336)
          {
            v295 = v476;
            v161 = v440;
            v171 = v458;
            v303 = v433;
            goto LABEL_109;
          }
        }

        v293 = v472;
        if (!v352)
        {
          goto LABEL_104;
        }

LABEL_93:

        goto LABEL_94;
      }

LABEL_109:

      (v456)(v303, v459, v293);

      v375 = v304;
      v376 = sub_2CDFE0();
      v377 = sub_2CE680();

      if (os_log_type_enabled(v376, v377))
      {
        v378 = swift_slowAlloc();
        v379 = swift_slowAlloc();
        v485 = v379;
        *v378 = 136315138;
        if (v375)
        {
          v380 = sub_2CADC0();
        }

        else
        {
          v380 = 0;
          v381 = 0;
        }

        v486 = v380;
        v487 = v381;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v382 = sub_2CE2A0();
        v384 = sub_3F08(v382, v383, &v485);

        *(v378 + 4) = v384;
        _os_log_impl(&dword_0, v376, v377, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult could not find selected content for uso graph playlistName: %s", v378, 0xCu);
        sub_306C(v379);

        (v460)(v303, v293);
        v161 = v440;
        v171 = v458;
      }

      else
      {

        (v460)(v303, v293);
      }

      v385 = sub_2CB850();
      sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v386 = swift_allocError();
      (*(*(v385 - 8) + 104))(v387, enum case for PlaybackCode.ceGE48(_:), v385);
      *v161 = v386;
      v388 = v422;
      swift_storeEnumTagMultiPayload();
      v295(v161);

      (*(v474 + 8))(v161, v388);
    }

    else
    {

      v305 = v430;
      (v456)(v430, v459, v293);
      v306 = sub_2CDFE0();
      v307 = sub_2CE680();
      if (os_log_type_enabled(v306, v307))
      {
        v308 = swift_slowAlloc();
        *v308 = 0;
        _os_log_impl(&dword_0, v306, v307, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult AudioUsoIntent failed to be constructed", v308, 2u);
      }

      (v460)(v305, v293);
      v309 = sub_2CB850();
      sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v310 = swift_allocError();
      (*(*(v309 - 8) + 104))(v311, enum case for PlaybackCode.ceGE47(_:), v309);
      *v161 = v310;
      v312 = v422;
      swift_storeEnumTagMultiPayload();
      v295(v161);

      (*(v294 + 8))(v161, v312);
    }

    v389 = v453;
    v390 = v171;
    return (v461)(v389, v390);
  }

  (*(v103 + 96))(v106, v102);
  v141 = v460;
  v142 = v466;
  v143 = v461;
  (*(v460 + 32))(v466, v106, v461);
  sub_238E4C(v142, &v486);
  if (v490 != 3)
  {
    v144 = v472;
    v145 = v470;
    if (v490 != 255)
    {
      sub_30B8(&v486, &qword_34CCB0, &qword_2D5710);
    }

    v146 = v454;
    v147 = v457;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v148 = sub_3ED0(v144, static Logger.default);
    swift_beginAccess();
    (*(v145 + 16))(v147, v148, v144);
    v149 = *(v141 + 16);
    v149(v146, v466, v143);
    v150 = sub_2CDFE0();
    v151 = sub_2CE680();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v485 = v153;
      *v152 = 136315138;
      v149(v439, v146, v143);
      v154 = sub_2CE2A0();
      v156 = v155;
      v157 = *(v141 + 8);
      v157(v146, v143);
      v158 = sub_3F08(v154, v156, &v485);

      *(v152 + 4) = v158;
      v159 = v157;
      _os_log_impl(&dword_0, v150, v151, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult received unsupported directInvocation: %s", v152, 0xCu);
      sub_306C(v153);

      (*(v470 + 8))(v457, v472);
    }

    else
    {

      v159 = *(v141 + 8);
      v159(v146, v143);
      (*(v145 + 8))(v147, v144);
    }

    v252 = v474;
    v253 = v422;
    v254 = sub_2CB850();
    sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v255 = swift_allocError();
    (*(*(v254 - 8) + 104))(v256, enum case for PlaybackCode.ceGE49(_:), v254);
    v257 = v440;
    *v440 = v255;
    swift_storeEnumTagMultiPayload();
    v476(v257);
    (*(v252 + 8))(v257, v253);
    return (v159)(v466, v143);
  }

  v463 = v486;
  v462 = v487;
  sub_20410(&qword_34CC70, &qword_2D0D78);
  v231 = sub_2CA460();
  v232 = v438;
  v473 = *(v231 + 16);
  if (v473)
  {
    v233 = 0;
    v477 = v481 + 16;
    v478 = v481 + 8;
    v234 = &qword_34CCA0;
    v469 = v231;
    v421 = v68;
    while (v233 < *(v231 + 16))
    {
      v235 = v481;
      v236 = v231 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v233;
      v237 = v479;
      v238 = *(v479 + 48);
      *v68 = v233;
      v239 = v480;
      v468 = *(v235 + 16);
      (v468)(v68 + v238, v236, v480);
      v240 = v471;
      sub_14A58(v68, v471, v234, &unk_2D0DD0);
      v241 = v232;
      v242 = v467;
      v243 = v234;
      sub_F3F4(v240, v467, v234, &unk_2D0DD0);
      v244 = *(v237 + 48);
      v245 = sub_2CE060();
      v247 = v246;
      v248 = *(v235 + 8);
      v249 = &v242[v244];
      v232 = v241;
      v248(v249, v239);
      if (v247)
      {
        if (v245 == v463 && v247 == v462)
        {

LABEL_106:
          sub_30B8(&v486, &qword_34CCB0, &qword_2D5710);

          v359 = v428;
          sub_14A58(v471, v428, &qword_34CCA0, &unk_2D0DD0);
          v360 = v481;
          v361 = *(v481 + 32);
          v362 = v427;
          v363 = v248;
          v364 = v480;
          v361(v427, v359 + *(v479 + 48), v480);
          v365 = v429;
          v361(v429, v362, v364);
          v366 = v447;
          v367 = v468;
          (v468)(v447, v365, v364);
          (*(v360 + 56))(v366, 0, 1, v364);
          v368 = v451;
          sub_72E4C(v366);
          sub_30B8(v366, &qword_34CC98, &unk_2D3120);
          v484[3] = v364;
          v369 = sub_F390(v484);
          v367(v369, v365, v364);
          v370 = v368;
          v371 = v448;
          sub_2CA220();
          v372 = v440;
          v373 = v450;
          sub_2CA370();
          (*(v449 + 8))(v371, v373);
          v374 = v422;
          swift_storeEnumTagMultiPayload();
          v476(v372);
          (*(v474 + 8))(v372, v374);
          v363(v365, v364);
          return (*(v460 + 8))(v466, v461);
        }

        v251 = sub_2CEEA0();

        if (v251)
        {
          goto LABEL_106;
        }
      }

      ++v233;
      v234 = v243;
      sub_30B8(v471, v243, &unk_2D0DD0);
      v231 = v469;
      v68 = v421;
      if (v473 == v233)
      {
        goto LABEL_57;
      }
    }

LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_57:

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v258 = v472;
  v259 = sub_3ED0(v472, static Logger.default);
  swift_beginAccess();
  v260 = v470;
  (*(v470 + 16))(v232, v259, v258);
  sub_F3F4(&v486, v484, &qword_34CCB0, &qword_2D5710);
  v261 = sub_2CDFE0();
  v262 = sub_2CE680();
  sub_30B8(&v486, &qword_34CCB0, &qword_2D5710);
  v263 = os_log_type_enabled(v261, v262);
  v264 = v476;
  if (v263)
  {
    v265 = swift_slowAlloc();
    v266 = swift_slowAlloc();
    v484[0] = v266;
    *v265 = 136315138;
    v267 = sub_3F08(v463, v462, v484);
    sub_30B8(&v486, &qword_34CCB0, &qword_2D5710);
    *(v265 + 4) = v267;
    _os_log_impl(&dword_0, v261, v262, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult could not find selected content for uso graph playlistName: %s", v265, 0xCu);
    sub_306C(v266);
  }

  else
  {
    sub_30B8(&v486, &qword_34CCB0, &qword_2D5710);
  }

  (*(v260 + 8))(v232, v258);
  v313 = v440;
  v314 = sub_2CB850();
  sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode);
  v315 = swift_allocError();
  (*(*(v314 - 8) + 104))(v316, enum case for PlaybackCode.ceGE50(_:), v314);
  *v313 = v315;
  v317 = v422;
  swift_storeEnumTagMultiPayload();
  v264(v313);
  (*(v474 + 8))(v313, v317);
  return (*(v460 + 8))(v466, v461);
}

uint64_t sub_32020(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v25 = a6;
  v26 = a7;
  v27 = a3;
  v28 = a4;
  v12 = *v7;
  v13 = sub_20410(&qword_34CC70, &qword_2D0D78);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = v7[3];
  (*(v14 + 16))(&v25 - v16, a5, v13);
  v19 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = *(v12 + 80);
  *(v20 + 3) = *(v12 + 88);
  *(v20 + 4) = v8;
  *(v20 + 5) = a1;
  *(v20 + 6) = a2;
  v21 = v26;
  *(v20 + 7) = v25;
  *(v20 + 8) = v21;
  (*(v14 + 32))(&v20[v19], v17, v13);
  v22 = *(*v18 + 232);

  v23 = a2;

  v22(a1, v27, v28, v23, sub_32818, v20);
}

uint64_t sub_32214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v48 = a8;
  v49 = a4;
  v45 = a7;
  v46 = a2;
  v50 = a3;
  v47 = a1;
  v11 = *v8;
  v42 = a5;
  v43 = v11;
  v12 = sub_20410(&qword_34CC70, &qword_2D0D78);
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin(v12);
  v41 = &v40 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);
  v21 = sub_2CDFE0();
  v22 = sub_2CE690();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "MediaDestinationDisambiguationStrategy#promptForDisambiguationLegacy...", v23, 2u);
  }

  (*(v16 + 8))(v19, v15);
  v40 = v9[3];
  v24 = v44;
  v25 = v41;
  (*(v44 + 16))(v41, a6, v12);
  v26 = (*(v24 + 80) + 96) & ~*(v24 + 80);
  v27 = swift_allocObject();
  v29 = v42;
  v28 = v43;
  *(v27 + 2) = *(v43 + 80);
  v31 = v49;
  v30 = v50;
  *(v27 + 3) = *(v28 + 88);
  *(v27 + 4) = v30;
  *(v27 + 5) = v31;
  *(v27 + 6) = v29;
  v33 = v47;
  v32 = v48;
  *(v27 + 7) = v9;
  *(v27 + 8) = v33;
  v34 = v45;
  v35 = v46;
  *(v27 + 9) = v46;
  *(v27 + 10) = v34;
  *(v27 + 11) = v32;
  (*(v24 + 32))(&v27[v26], v25, v12);
  v36 = *(*v40 + 232);
  v45 = *v40 + 232;

  v37 = v29;

  v38 = v35;

  v36(v33, v50, v31, v38, sub_33220, v27);
}

uint64_t sub_325BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v26 = a5;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2CDFE0();
  v21 = sub_2CE690();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v25 = a4;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "MediaDestinationDisambiguationStrategy#makePromptForDisambiguation...", v22, 2u);
    a4 = v25;
  }

  (*(v15 + 8))(v18, v14);
  v23 = v9[13];
  sub_35E0(v9 + 9, v9[12]);
  if (sub_2CC4B0())
  {
    return sub_32020(v27, v28, v29, a4, a6, a7, a8);
  }

  else
  {
    return sub_32214(v27, v28, v29, a4, v26, a6, a7, a8);
  }
}

uint64_t sub_32818(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34CC70, &qword_2D0D78) - 8);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_2BB5C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_328A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a5;
  v87 = a6;
  v10 = sub_2CD230();
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = *(v84 + 64);
  __chkstk_darwin(v10);
  v82 = v12;
  v83 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C9B80();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v78 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2CA630();
  v79 = *(v90 - 8);
  v16 = *(v79 + 64);
  v17 = __chkstk_darwin(v90);
  v80 = v18;
  v81 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v89 = &v68 - v19;
  v73 = sub_2CB260();
  v72 = *(v73 - 8);
  v20 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v28 = v27 - 8;
  v75 = *(v27 - 8);
  v29 = *(v75 + 64);
  v30 = __chkstk_darwin(v27);
  v76 = v31;
  v77 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v68 - v32;
  v34 = sub_2CA130();
  (*(*(v34 - 8) + 16))(v33, a2, v34);
  v35 = *(v28 + 56);
  v88 = v33;
  *&v33[v35] = a3;
  v36 = a3;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v39 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  (*(v23 + 16))(v26, v39, v22);

  v40 = sub_2CDFE0();
  v41 = v26;
  v42 = sub_2CE660();

  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v70 = a1;
    v45 = v44;
    v91 = v44;
    *v43 = 136315138;
    sub_2CB130();
    v69 = v41;
    v46 = v71;
    sub_2CD3C0();

    v47 = sub_2CB200();
    v68 = v22;
    v48 = v38;
    v49 = a4;
    v51 = v50;
    (*(v72 + 8))(v46, v73);
    v52 = sub_3F08(v47, v51, &v91);
    a4 = v49;
    v38 = v48;

    *(v43 + 4) = v52;
    _os_log_impl(&dword_0, v40, v42, "MediaItemDisambiguationStrategy#disambiguationSnippet with responseMode = %s", v43, 0xCu);
    sub_306C(v45);
    a1 = v70;

    (*(v23 + 8))(v69, v68);
  }

  else
  {

    (*(v23 + 8))(v41, v22);
  }

  v74 = v38;
  v53 = sub_2C9B40();
  __chkstk_darwin(v53);
  *(&v68 - 4) = a4;
  *(&v68 - 3) = v38;
  v54 = v88;
  v55 = v89;
  *(&v68 - 2) = v88;
  sub_2CA560();
  v57 = v83;
  v56 = v84;
  v58 = v85;
  (*(v84 + 16))(v83, a1, v85);
  v59 = v77;
  sub_F3F4(v54, v77, &qword_34C6E8, &unk_2D0FF0);
  v60 = v79;
  v61 = v81;
  (*(v79 + 16))(v81, v55, v90);
  v62 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v63 = (v82 + *(v75 + 80) + v62) & ~*(v75 + 80);
  v64 = (v76 + *(v60 + 80) + v63) & ~*(v60 + 80);
  v65 = swift_allocObject();
  (*(v56 + 32))(v65 + v62, v57, v58);
  sub_14A58(v59, v65 + v63, &qword_34C6E8, &unk_2D0FF0);
  v66 = v90;
  (*(v60 + 32))(v65 + v64, v61, v90);
  sub_20410(&unk_353030, &unk_2D1450);
  sub_2CE4F0();

  (*(v60 + 8))(v89, v66);
  return sub_30B8(v88, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_33074(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_2CEB4(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_33220(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34CC70, &qword_2D0D78) - 8);
  v5 = v1 + ((*(v3 + 80) + 96) & ~*(v3 + 80));
  return sub_29FAC(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
}

uint64_t sub_332AC(uint64_t a1, char a2)
{
  v5 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  return sub_2B070(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), v2 + v6);
}

uint64_t sub_333BC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_33458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_334A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_33504(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v101 = a4;
  v104 = a2;
  v105 = a3;
  v103 = a1;
  v7 = sub_2CE000();
  v108 = *(v7 - 8);
  v8 = v108[8];
  v9 = __chkstk_darwin(v7);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v94 - v13;
  __chkstk_darwin(v12);
  v100 = &v94 - v15;
  v16 = sub_2CDFD0();
  v109 = *(v16 - 8);
  v110 = v16;
  v17 = *(v109 + 64);
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v21 = &v94 - v20;
  __chkstk_darwin(v19);
  v23 = &v94 - v22;
  v24 = sub_2CB650();
  v25 = v5[3];
  v102 = v5[4];
  v26 = v5[2];
  v106 = v7;
  v107 = v26;
  if (v24)
  {
    v99 = v14;
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v27 = qword_35F760;
    sub_2CDFB0();
    v28 = v109;
    v29 = v110;
    (*(v109 + 16))(v21, v23, v110);
    v30 = (*(v28 + 80) + 33) & ~*(v28 + 80);
    v31 = (v17 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = v23;
    v33 = swift_allocObject();
    *(v33 + 16) = "catServiceExecute";
    *(v33 + 24) = 17;
    *(v33 + 32) = 2;
    (*(v28 + 32))(v33 + v30, v21, v29);
    v34 = (v33 + v31);
    *v34 = v101;
    v34[1] = a5;

    sub_2CE9E0();
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_2D0E40;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_1087C();
    *(v35 + 32) = v107;
    *(v35 + 40) = v25;
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 64) = v36;
    strcpy((v35 + 72), "GenericError");
    *(v35 + 85) = 0;
    *(v35 + 86) = -5120;

    v93 = v35;
    LOBYTE(v92) = 2;
    v91 = 125;
    v101 = v32;
    sub_2CDF90();

    v37 = swift_allocObject();
    *(v37 + 16) = sub_13D80;
    *(v37 + 24) = v33;
    v96 = v37;
    v38 = qword_34BF58;

    if (v38 != -1)
    {
      swift_once();
    }

    v39 = v106;
    v40 = sub_3ED0(v106, static Logger.default);
    swift_beginAccess();
    v41 = v108;
    v42 = v100;
    v97 = v108[2];
    v98 = (v108 + 2);
    v97(v100, v40, v39);

    v43 = sub_2CDFE0();
    v44 = sub_2CE660();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v45 = 136315394;
      v46 = v107;
      *(v45 + 4) = sub_3F08(v107, v25, &v111);
      *(v45 + 12) = 2080;
      v95 = v40;
      *(v45 + 14) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v111);
      _os_log_impl(&dword_0, v43, v44, "Evaluating CAT family:%s id:%s...", v45, 0x16u);
      swift_arrayDestroy();

      v47 = v100;
      v48 = v39;
      v40 = v95;
      v100 = v108[1];
      (v100)(v47, v39);
    }

    else
    {

      v48 = v39;
      v100 = v41[1];
      (v100)(v42, v39);
      v46 = v107;
    }

    v111 = v46;
    v112 = v25;

    v115._countAndFlagsBits = 35;
    v115._object = 0xE100000000000000;
    sub_2CE350(v115);
    v116._countAndFlagsBits = 0x45636972656E6547;
    v116._object = 0xEC000000726F7272;
    sub_2CE350(v116);
    v79 = v111;
    v78 = v112;
    v80 = sub_2CB460();
    if (!v80)
    {
      sub_2CB180();
      v80 = sub_2CB170();
    }

    v81 = v80;
    v82 = swift_allocObject();
    v82[2] = v81;
    v82[3] = sub_13DB4;
    v82[4] = v96;
    v83 = sub_2CB180();
    __chkstk_darwin(v83);
    v84 = v103;
    *(&v94 - 10) = v102;
    *(&v94 - 9) = v84;
    v85 = v105;
    *(&v94 - 8) = v104;
    *(&v94 - 7) = v85;
    *(&v94 - 6) = 0;
    *(&v94 - 5) = v79;
    v91 = v78;
    v92 = sub_3E06C;
    v93 = v82;

    sub_2CB0F0();

    (*(v109 + 8))(v101, v110);
    v86 = v99;
    v97(v99, v40, v48);
    v87 = sub_2CDFE0();
    v88 = sub_2CE680();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v111 = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v111);
      _os_log_impl(&dword_0, v87, v88, "UnsupportedMediaItemsCellularDataSettings invoked on HomePod, defaulting to %s", v89, 0xCu);
      sub_306C(v90);
    }

    return (v100)(v86, v48);
  }

  else
  {
    v98 = 0x80000000002DAD60;
    v99 = v11;
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v49 = qword_35F760;
    sub_2CDFB0();
    v50 = v109;
    v51 = v110;
    (*(v109 + 16))(v21, &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v110);
    v52 = (*(v50 + 80) + 33) & ~*(v50 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = "catServiceExecute";
    *(v53 + 24) = 17;
    *(v53 + 32) = 2;
    (*(v50 + 32))(v53 + v52, v21, v51);
    v54 = (v53 + ((v17 + v52 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v54 = v101;
    v54[1] = a5;

    sub_2CE9E0();
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_2D0E40;
    *(v55 + 56) = &type metadata for String;
    v56 = sub_1087C();
    v57 = v107;
    *(v55 + 32) = v107;
    *(v55 + 40) = v25;
    *(v55 + 96) = &type metadata for String;
    *(v55 + 104) = v56;
    *(v55 + 64) = v56;
    *(v55 + 72) = 0xD000000000000029;
    v58 = v98;
    *(v55 + 80) = v98;

    v93 = v55;
    LOBYTE(v92) = 2;
    v91 = 125;
    v101 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2CDF90();

    v59 = swift_allocObject();
    *(v59 + 16) = sub_13D80;
    *(v59 + 24) = v53;
    v60 = qword_34BF58;
    v100 = v53;

    if (v60 != -1)
    {
      swift_once();
    }

    v61 = v106;
    v62 = sub_3ED0(v106, static Logger.default);
    swift_beginAccess();
    v63 = v108;
    v64 = v99;
    (v108[2])(v99, v62, v61);

    v65 = sub_2CDFE0();
    v66 = sub_2CE660();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v97 = v59;
      v111 = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_3F08(v57, v25, &v111);
      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_3F08(0xD000000000000029, v58, &v111);
      _os_log_impl(&dword_0, v65, v66, "Evaluating CAT family:%s id:%s...", v67, 0x16u);
      swift_arrayDestroy();
      v59 = v97;
    }

    (v63[1])(v64, v61);
    v111 = v57;
    v112 = v25;

    v113._countAndFlagsBits = 35;
    v113._object = 0xE100000000000000;
    sub_2CE350(v113);
    v114._countAndFlagsBits = 0xD000000000000029;
    v114._object = v58;
    sub_2CE350(v114);
    v70 = v111;
    v69 = v112;
    v71 = sub_2CB460();
    if (!v71)
    {
      sub_2CB180();
      v71 = sub_2CB170();
    }

    v72 = v71;
    v73 = swift_allocObject();
    v73[2] = v72;
    v73[3] = sub_13DB4;
    v73[4] = v59;
    v74 = sub_2CB180();
    __chkstk_darwin(v74);
    v75 = v103;
    *(&v94 - 10) = v102;
    *(&v94 - 9) = v75;
    v76 = v105;
    *(&v94 - 8) = v104;
    *(&v94 - 7) = v76;
    *(&v94 - 6) = 0;
    *(&v94 - 5) = v70;
    v91 = v69;
    v92 = sub_3E06C;
    v93 = v73;

    sub_2CB0F0();

    return (*(v109 + 8))(v101, v110);
  }
}

uint64_t sub_34234(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DAD40;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000019;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_348A4(unint64_t a1, unint64_t a2, unint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v56 = v5[4];
  v18 = v5[2];
  v50 = v17;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "catServiceExecute";
  *(v22 + 24) = 17;
  *(v22 + 32) = 2;
  v57 = v11;
  v23 = *(v11 + 32);
  v61 = v10;
  v23(v22 + v20, v14);
  v24 = (v22 + v21);
  *v24 = v53;
  v24[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2D0E40;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_1087C();
  v52 = v18;
  *(v25 + 32) = v18;
  v27 = v50;
  *(v25 + 40) = v50;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  *(v25 + 64) = v26;
  *(v25 + 72) = 0x726F7774654E6F4ELL;
  *(v25 + 80) = 0xE90000000000006BLL;

  v49 = v25;
  LOBYTE(v48) = 2;
  v47 = 125;
  v53 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v22;
  v51 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v55;
  v31 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v32 = v54;
  v33 = v62;
  (*(v54 + 16))(v62, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v52;
    *(v36 + 4) = sub_3F08(v52, v27, &v63);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0x726F7774654E6F4ELL, 0xE90000000000006BLL, &v63);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v32 + 8))(v62, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v52;
  }

  v63 = v37;
  v64 = v27;

  v65._countAndFlagsBits = 35;
  v65._object = 0xE100000000000000;
  sub_2CE350(v65);
  v66._countAndFlagsBits = 0x726F7774654E6F4ELL;
  v66._object = 0xE90000000000006BLL;
  sub_2CE350(v66);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v58;
  v44 = v59;
  *(&v50 - 10) = v56;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v60;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_34F18(unint64_t a1, unint64_t a2, unint64_t a3, char *a4, char *a5)
{
  v54 = a4;
  v60 = a2;
  v61 = a3;
  v59 = a1;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v63 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "catServiceExecute";
  *(v22 + 24) = 17;
  *(v22 + 32) = 2;
  v58 = v11;
  v23 = *(v11 + 32);
  v62 = v10;
  v23(v22 + v20, v14);
  v24 = (v22 + v21);
  *v24 = v54;
  v24[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2D0E40;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_1087C();
  v53 = v18;
  *(v25 + 32) = v18;
  v27 = v51;
  *(v25 + 40) = v51;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  *(v25 + 64) = v26;
  *(v25 + 72) = 0x726F727245706D41;
  *(v25 + 80) = 0xE800000000000000;

  v50 = v25;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v22;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v32 = v55;
  v33 = v63;
  (*(v55 + 16))(v63, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v27, &v64);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0x726F727245706D41, 0xE800000000000000, &v64);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v32 + 8))(v63, v30);
    v38 = v58;
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v38 = v58;
    v37 = v53;
  }

  v64 = v37;
  v65 = v27;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x726F727245706D41;
  v67._object = 0xE800000000000000;
  sub_2CE350(v67);
  v40 = v64;
  v39 = v65;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v52;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v59;
  v45 = v60;
  *(&v51 - 10) = v57;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v61;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v38 + 8))(v54, v62);
}

uint64_t sub_35588(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v56 = v5[4];
  v17 = v5[3];
  v63 = v5[2];
  v50 = v17;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v11;
  v21 = *(v11 + 32);
  v61 = v10;
  v21(v20 + v19, v14);
  v22 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v53;
  v22[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "PrivacyAckReqd");
  *(v23 + 87) = -18;

  v48 = v23;
  LOBYTE(v47) = 2;
  v46 = 125;
  v53 = v16;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v51 = v26;
  v52 = v20;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x4179636176697250, 0xEE00647165526B63, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x4179636176697250;
  v67._object = 0xEE00647165526B63;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_35C1C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v56 = v5[4];
  v17 = v5[3];
  v63 = v5[2];
  v50 = v17;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v11;
  v21 = *(v11 + 32);
  v61 = v10;
  v21(v20 + v19, v14);
  v22 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v53;
  v22[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0x6E49746F4E707041;
  *(v23 + 80) = 0xEF64656C6C617473;

  v48 = v23;
  LOBYTE(v47) = 2;
  v46 = 125;
  v53 = v16;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v51 = v26;
  v52 = v20;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x6E49746F4E707041, 0xEF64656C6C617473, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x6E49746F4E707041;
  v67._object = 0xEF64656C6C617473;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_362B0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DAD20;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000017;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000017, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000017;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_36920(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DAD00;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD00000000000001ALL;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_36F90(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DACD0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000021;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000021, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000021;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_37600(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DACA0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000025;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000025, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000025;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_37C70(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DAC80;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000018;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_382E0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DAC60;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001CLL;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD00000000000001CLL, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD00000000000001CLL;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_38950(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DAC30;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002CLL;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD00000000000002CLL, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD00000000000002CLL;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_38FC0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DAC00;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000022;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000022, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000022;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_39630(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DABD0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000029;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000029, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000029;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_39CA0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DABA0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000027;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000027, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000027;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}