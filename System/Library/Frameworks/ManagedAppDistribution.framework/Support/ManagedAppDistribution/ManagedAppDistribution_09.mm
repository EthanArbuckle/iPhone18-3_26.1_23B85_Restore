uint64_t sub_1001D1E44()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1001D1F3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001D1F94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D1FCC()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001D2074()
{

  if (*(v0 + 72))
  {
    sub_10000710C(v0 + 48);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1001D20E0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D213C(unsigned __int8 *a1)
{
  if (a1[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *a1;
}

uint64_t sub_1001D2158(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AppInstall();
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
      v13 = type metadata accessor for AppPackage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001D227C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AppInstall();
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
      v13 = type metadata accessor for AppPackage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001D23A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D23E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F0C48(&unk_1007809F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1001F0C48(&qword_10077E958);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1001D2520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F0C48(&unk_1007809F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1001F0C48(&qword_10077E958);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1001D2664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

uint64_t sub_1001D2724(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

uint64_t sub_1001D27E0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1001D2844()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 40);
  sub_10000710C(v0 + 80);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1001D289C()
{
  sub_10000710C(v0 + 16);

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_1001D290C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D2944()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 118) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1001D2A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnterpriseApp();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1001F0C48(&qword_10077FE28);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1001D2BA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EnterpriseApp();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1001F0C48(&qword_10077FE28);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

double sub_1001D2CC0(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001D2CF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F0C48(&qword_10077FE28);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D2DB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F0C48(&qword_10077FE28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D2E78(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for AppInstall();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for AppPackage();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1001F0C48(&qword_1007812A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[9]];

  return v15(v16, a2, v14);
}

char *sub_1001D2FF0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AppInstall();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for AppPackage();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1001F0C48(&qword_1007812A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[9]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1001D3168()
{
  v1 = type metadata accessor for AppInstallationEvent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001D34E4()
{
  v1 = *(sub_1001F0C48(&qword_10077F360) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 200) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 40);

  v5 = type metadata accessor for Locale.Language();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1001D3668()
{
  v1 = *(sub_1001F0C48(&qword_10077F360) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 200) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 40);

  v5 = type metadata accessor for Locale.Language();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32, v2 | 7);
}

uint64_t sub_1001D37DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D3814()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D384C()
{

  return _swift_deallocObject(v0, 127, 7);
}

uint64_t sub_1001D38F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MediaAPIApp.Attributes(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D39A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MediaAPIApp.Attributes(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D3A48(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F0C48(&unk_1007809F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void *sub_1001D3B04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F0C48(&unk_1007809F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D3BC4()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1001D3CAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AppState();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D3D58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppState();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D3E18()
{

  if (*(v0 + 72))
  {
    sub_10000710C(v0 + 48);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1001D3E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppInstallRequestType();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&qword_10077EC90);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001D3FB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AppInstallRequestType();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&qword_10077EC90);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001D40E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001D4150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001D41C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1001D42B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1001D43AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1001F0C48(&unk_1007809F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1001D44A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1001F0C48(&unk_1007809F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1001D45B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_1001F0C48(&unk_1007809F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_1001F0C48(&qword_100782768);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_1001F0C48(&qword_100782770);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[9]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  v19 = v18 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1001D47C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1001F0C48(&unk_1007809F0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_1001F0C48(&qword_100782768);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = sub_1001F0C48(&qword_100782770);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[9]) = a2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1001D49C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for AppStoreMetadata(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1001F0C48(&qword_100780DF8);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[10];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1001D4B44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for URL();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for AppStoreMetadata(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v14 = sub_1001F0C48(&qword_100780DF8);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[10];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_1001D4CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1001F0C48(&unk_1007809F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 44);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 48) + 8);
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

uint64_t sub_1001D4DE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1001F0C48(&unk_1007809F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 48) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 44);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1001D4F00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F0C48(&unk_1007809F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 116);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D4FBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F0C48(&unk_1007809F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 116);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D5110()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1001D5140()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D5178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F0C48(&unk_1007809F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001D52A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001F0C48(&unk_1007809F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001D53D8()
{
  if (*(v0 + 80) != 255)
  {
    sub_100222EB8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001D54F4()
{

  if (*(v0 + 72))
  {
    sub_10000710C(v0 + 48);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1001D5560()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D55A8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D55E8()
{

  if (*(v0 + 72))
  {
    sub_10000710C(v0 + 48);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1001D5638()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001D5680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D572C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D57D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NewLicenseBatch(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001D588C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NewLicenseBatch(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001D5944()
{

  if (*(v0 + 48))
  {
    sub_10000710C(v0 + 24);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001D598C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&unk_1007809F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001D5ABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&unk_1007809F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001D5BF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D5C38()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D5C98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D5CD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D5D10()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001D5D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001D5E0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001D5EC4()
{
  v1 = type metadata accessor for DDMDeclaration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 32);
  if (v6 >> 60 != 15)
  {
    sub_100007158(*(v5 + 24), v6);
  }

  v7 = v5 + v1[10];
  v8 = type metadata accessor for DDMCachedMetadata(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(v7, v9);
    v10 = *(v8 + 20);
    v11 = type metadata accessor for ManagedApp();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  v12 = v1[12];
  v13 = type metadata accessor for ComposedIdentifier();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v1[18];
  v16 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = v1[20];
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v5 + v18, 1, v19))
  {
    (*(v20 + 8))(v5 + v18, v19);
  }

  if (*(v5 + v1[22] + 8) >= 2uLL)
  {
  }

  v21 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1[24];
  v23 = type metadata accessor for Platform();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  v24 = v1[25];
  v25 = type metadata accessor for DDMPurchaseMethod();
  (*(*(v25 - 8) + 8))(v5 + v24, v25);

  return _swift_deallocObject(v0, v21 + 8, v2 | 7);
}

uint64_t sub_1001D62DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for URL();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 32);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1001D63E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for URL();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 32) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1001D6538()
{
  v1 = sub_1001F0C48(&qword_100783818);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return _swift_deallocObject(v0, 17, 7);
}

uint64_t sub_1001D674C()
{
  v1 = *(type metadata accessor for ADP() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 152) & ~v2;
  v4 = (((((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_10000710C(v0 + 32);

  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1001D6934()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 48);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001D697C()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 56);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1001D69E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D6A2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D6A84(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1001D6B30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D6BD4()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 64);
  sub_10000710C(v0 + 160);

  return _swift_deallocObject(v0, 261, 7);
}

uint64_t sub_1001D6C40()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 40);

  sub_10000710C(v0 + 144);

  return _swift_deallocObject(v0, 217, 7);
}

uint64_t sub_1001D6C98()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 64);

  sub_10000710C(v0 + 168);

  return _swift_deallocObject(v0, 241, 7);
}

uint64_t sub_1001D6D00()
{
  if (*(v0 + 80) != 255)
  {
    sub_100222EB8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001D6D64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D6D9C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D6DE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001D6E24(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001D6E34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001D6E88()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 56);
  sub_10000710C(v0 + 152);

  return _swift_deallocObject(v0, 225, 7);
}

uint64_t sub_1001D6EEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D6F40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F0C48(&qword_10077E958);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D6FFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F0C48(&qword_10077E958);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D70AC()
{
  v1 = type metadata accessor for CellularIdentity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001D7134(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AppStoreItem(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = type metadata accessor for AppInstallRequestType();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_1001F0C48(&qword_10077E958);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = type metadata accessor for DDMDeclaration(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[9] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_1001D7328(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for AppStoreItem(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for AppInstallRequestType();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_1001F0C48(&qword_10077E958);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = type metadata accessor for DDMDeclaration(0);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[9] + 8) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1001D753C()
{

  if (*(v0 + 72))
  {
    sub_10000710C(v0 + 48);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1001D75A8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D75F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D7628()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D7660()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1001D76A0()
{
  if (*(v0 + 80) != 255)
  {
    sub_100222EB8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001D7704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_1001D77C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1001D78BC()
{
  v1 = sub_1001F0C48(&unk_100784AE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001D7994()
{
  v1 = sub_1001F0C48(&unk_100784AE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64) + v4;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1001D7B54()
{

  sub_10000710C(v0 + 88);
  sub_10000710C(v0 + 128);

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_1001D7BB4()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 112);
  sub_10000710C(v0 + 152);

  return _swift_deallocObject(v0, 248, 7);
}

uint64_t sub_1001D7CCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D7D04()
{
  sub_10000710C(v0 + 16);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1001D7D4C()
{
  sub_10000710C(v0 + 16);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001D7D94()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001D7DDC()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 40);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001D7E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DDMDeclaration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001D7F04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DDMDeclaration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001D7FF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1001F0C48(&qword_10077E958);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for Platform();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1001D8128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1001F0C48(&qword_10077E958);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for Platform();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1001D8260(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1001F0C48(&unk_1007809F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[10] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1001F0C48(&unk_100780A00);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[14];
      goto LABEL_3;
    }

    v14 = type metadata accessor for UUID();
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[19];
      goto LABEL_3;
    }

    v15 = sub_1001F0C48(&qword_10077E958);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[20];
      goto LABEL_3;
    }

    v16 = type metadata accessor for AppInstallRequestType();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[21];
      goto LABEL_3;
    }

    v17 = type metadata accessor for Platform();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[34];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1001D84D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1001F0C48(&unk_1007809F0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1001F0C48(&unk_100780A00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_3;
  }

  v14 = type metadata accessor for UUID();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[19];
    goto LABEL_3;
  }

  v15 = sub_1001F0C48(&qword_10077E958);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[20];
    goto LABEL_3;
  }

  v16 = type metadata accessor for AppInstallRequestType();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[21];
    goto LABEL_3;
  }

  v17 = type metadata accessor for Platform();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[34];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1001D8798(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1001F0C48(&qword_10077F130);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_1001F0C48(&qword_10077F348);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_15;
  }

  v13 = sub_1001F0C48(&qword_10077F340);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[18];
    goto LABEL_15;
  }

  v14 = sub_1001F0C48(&unk_1007809F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[20];
    goto LABEL_15;
  }

  v15 = type metadata accessor for Platform();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[24];
    goto LABEL_15;
  }

  v17 = type metadata accessor for DDMPurchaseMethod();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[25];

  return v18(v19, a2, v17);
}

uint64_t sub_1001D8A0C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
    return result;
  }

  v8 = sub_1001F0C48(&qword_10077F130);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1001F0C48(&qword_10077F348);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_13;
  }

  v13 = sub_1001F0C48(&qword_10077F340);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[18];
    goto LABEL_13;
  }

  v14 = sub_1001F0C48(&unk_1007809F0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[20];
    goto LABEL_13;
  }

  v15 = type metadata accessor for Platform();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[24];
    goto LABEL_13;
  }

  v17 = type metadata accessor for DDMPurchaseMethod();
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[25];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1001D8C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for ManagedApp();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1001D8D88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ManagedApp();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1001D8EAC()
{

  if (*(v0 + 72))
  {
    sub_10000710C(v0 + 48);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1001D8F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for DDMJournalEntry();
    v8 = *(a3 + 28);
    v9 = type metadata accessor for ManagedAppDeclaration();
    v10 = *(*(v9 - 8) + 48);

    return v10(a1 + v8, a2, v9);
  }
}

uint64_t sub_1001D8FCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    type metadata accessor for DDMJournalEntry();
    v7 = *(a4 + 28);
    v8 = type metadata accessor for ManagedAppDeclaration();
    v9 = *(*(v8 - 8) + 56);

    return v9(v5 + v7, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1001D9104()
{
  sub_1004EB154(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1001D9160()
{
  sub_10000710C(v0 + 24);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001D9198()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001D91D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1001F0C48(&unk_100780A00);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1001F0C48(&unk_1007809F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = (*(a1 + a3[11] + 80) >> 60) & 3 | (4 * (*(a1 + a3[11] + 88) >> 1));
    if (v13 > 0x80000000)
    {
      return -v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = type metadata accessor for URL();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[19];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1001D9370(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1001F0C48(&unk_100780A00);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_1001F0C48(&unk_1007809F0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    v14 = a1 + a4[11];
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *v14 = 0u;
    *(v14 + 80) = (-a2 & 3) << 60;
    *(v14 + 88) = (-a2 >> 1) & 0x7FFFFFFE;
    *(v14 + 96) = 0;
    *(v14 + 104) = 0;
  }

  else
  {
    v15 = type metadata accessor for URL();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[19];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1001D951C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001D9564()
{
  if (*(v0 + 80) != 255)
  {
    sub_100222EB8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001D95C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaAPIMetadata();
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

uint64_t sub_1001D9688(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MediaAPIMetadata();
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

uint64_t sub_1001D9748()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D9780()
{
  v1 = sub_1001F0C48(&qword_100786370);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1001D9844(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1001D98F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D999C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001D99DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_1001D9A9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1001D9B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001D9BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001D9C64()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D9CAC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D9CEC()
{

  if (*(v0 + 72))
  {
    sub_10000710C(v0 + 48);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1001D9D3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1001D9DE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D9EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F0C48(&unk_1007809F0);
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

uint64_t sub_1001D9FB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F0C48(&unk_1007809F0);
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

uint64_t sub_1001DA288()
{
  v1 = type metadata accessor for URLRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  sub_100007158(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_1001DA350()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001DA3B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DA3F8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001DA404(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001DA440()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DA47C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DA4B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001DA500()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001DA53C()
{
  v1 = sub_1001F0C48(&qword_100783818);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return _swift_deallocObject(v0, 17, 7);
}

uint64_t sub_1001DA7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CellularIdentity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001DA864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CellularIdentity();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001DA920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001DA98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001DA9FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F0C48(&unk_1007809F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001DAAB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F0C48(&unk_1007809F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001DAB84()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001DABC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001DAC14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DAC54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001DAC9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DACDC()
{
  v1 = type metadata accessor for ExceptionRequestMetadata();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001DADA8()
{
  v1 = type metadata accessor for AppLibrary.ExceptionRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  sub_10000710C(v0 + v5);

  return _swift_deallocObject(v0, v5 + 104, v3 | 7);
}

uint64_t sub_1001DAE80()
{

  return _swift_deallocObject(v0, 51, 7);
}

uint64_t sub_1001DAEE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001DB040(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for AppInstall();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for AppPackage();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1001F0C48(&qword_1007812A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[15]];

  return v15(v16, a2, v14);
}

char *sub_1001DB1B8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AppInstall();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for AppPackage();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1001F0C48(&qword_1007812A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[15]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1001DB3DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DB41C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1001DB4BC()
{
  v1 = type metadata accessor for CellularIdentity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001DB544(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for CellularIdentity();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1001DB5F0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for CellularIdentity();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001DB6A4()
{
  if (*(v0 + 80) != 255)
  {
    sub_100222EB8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001DB708()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001DB768()
{
  v1 = sub_1001F0C48(&qword_100783818);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return _swift_deallocObject(v0, 17, 7);
}

uint64_t sub_1001DB7DC()
{
  v1 = sub_1001F0C48(&qword_10077E688);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001DB8AC()
{
  v1 = sub_1001F0C48(&qword_100788DF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001DB940()
{
  v1 = sub_1001F0C48(&qword_100788E10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1001DB9E8()
{
  v1 = sub_1001F0C48(&qword_100788E10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001DBAB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DBB48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for AppInstallRequestType();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1001F0C48(&unk_1007809F0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = sub_1001F0C48(&unk_100780A00);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_1001DBD1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for AppInstallRequestType();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1001F0C48(&unk_1007809F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = sub_1001F0C48(&unk_100780A00);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1001DBEF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&unk_1007809F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001DC020(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&unk_1007809F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001DC150(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&unk_1007809F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001DC280(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&unk_1007809F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001DC3DC()
{
  if (*(v0 + 40))
  {
    sub_10000710C(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DC428()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001DC460()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1001DC4FC()
{
  v1 = sub_1001F0C48(&qword_100789660);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001DC640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001DC6AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001DC738()
{

  if (*(v0 + 72))
  {
    sub_10000710C(v0 + 48);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1001DC7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ManagedAppStatus.State();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&qword_10077F3A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001DC8D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ManagedAppStatus.State();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&qword_10077F3A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001DCA04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ManagedAppStatus.State();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&qword_10077F3A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001DCB34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ManagedAppStatus.State();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&qword_10077F3A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001DCC64()
{
  v1 = type metadata accessor for IPA_PreambleTask();
  v35 = *(*(v1 - 8) + 80);
  v33 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v36 = v0;
  v34 = (v35 + 32) & ~v35;
  v2 = v0 + v34;

  v3 = v0 + v34 + *(v1 + 20);
  v4 = type metadata accessor for AppInstall();
  v5 = v4[9];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v38 = *(v7 + 48);
  if (!v38(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v37 = v7;
  v32 = v6;

  v8 = v4[14];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v31 = *(v10 + 48);
  if (!v31(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v30 = *(v10 + 8);
  v30(v3 + v4[19], v9);
  v11 = v4[20];
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v14 = v4[21];
  v15 = type metadata accessor for AppInstallRequestType();
  (*(*(v15 - 8) + 8))(v3 + v14, v15);

  v16 = v4[30];
  if (!v38(v3 + v16, 1, v32))
  {
    (*(v37 + 8))(v3 + v16, v32);
  }

  if (*(v3 + v4[32] + 8) >= 2uLL)
  {
  }

  v17 = v4[34];
  v18 = type metadata accessor for Platform();
  (*(*(v18 - 8) + 8))(v3 + v17, v18);
  v19 = (v3 + v4[36]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100007158(*v19, v20);
  }

  v21 = (v3 + v4[39]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100007158(*v21, v22);
  }

  if (*(v3 + v4[41] + 16) != 255)
  {
    sub_1003C74F8();
  }

  v23 = v2 + *(v1 + 24);
  if (*(v23 + 32) != 1)
  {
  }

  v24 = type metadata accessor for AppPackage();
  v25 = v24[8];
  if (!v31(v23 + v25, 1, v9))
  {
    v30(v23 + v25, v9);
  }

  if (*(v23 + v24[9] + 16) != 1)
  {
  }

  v26 = v24[10];
  if (!v38(v23 + v26, 1, v32))
  {
    (*(v37 + 8))(v23 + v26, v32);
  }

  v27 = v23 + v24[11];
  sub_1004EB154(*v27, *(v27 + 8), *(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 40), *(v27 + 48), *(v27 + 56), *(v27 + 64), *(v27 + 72), *(v27 + 80), *(v27 + 88));
  (*(v37 + 8))(v23 + v24[19], v32);

  v28 = v23 + v24[21];
  if (*(v28 + 32))
  {
    sub_10000710C(v28 + 8);
  }

  return _swift_deallocObject(v36, v34 + v33, v35 | 7);
}

uint64_t sub_1001DD240()
{
  v1 = type metadata accessor for IPA_DownloadTask();
  v34 = *(*(v1 - 8) + 80);
  v32 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v36 = v0;
  v33 = (v34 + 32) & ~v34;
  v2 = (v0 + v33);

  v3 = v2 + *(v1 + 20);
  v4 = type metadata accessor for AppInstall();
  v5 = v4[9];
  v6 = type metadata accessor for URL();
  v37 = *(*(v6 - 8) + 48);
  v38 = *(v6 - 8);
  if (!v37(&v3[v5], 1, v6))
  {
    (*(v38 + 8))(&v3[v5], v6);
  }

  v31 = v2;
  v35 = v1;

  v7 = v4[14];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v30 = *(v9 + 48);
  if (!v30(&v3[v7], 1, v8))
  {
    (*(v9 + 8))(&v3[v7], v8);
  }

  v29 = *(v9 + 8);
  v29(&v3[v4[19]], v8);
  v10 = v4[20];
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&v3[v10], 1, v11))
  {
    (*(v12 + 8))(&v3[v10], v11);
  }

  v13 = v4[21];
  v14 = type metadata accessor for AppInstallRequestType();
  (*(*(v14 - 8) + 8))(&v3[v13], v14);

  v15 = v4[30];
  if (!v37(&v3[v15], 1, v6))
  {
    (*(v38 + 8))(&v3[v15], v6);
  }

  if (*&v3[v4[32] + 8] >= 2uLL)
  {
  }

  v16 = v4[34];
  v17 = type metadata accessor for Platform();
  (*(*(v17 - 8) + 8))(&v3[v16], v17);
  v18 = &v3[v4[36]];
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100007158(*v18, v19);
  }

  v20 = &v3[v4[39]];
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100007158(*v20, v21);
  }

  if (v3[v4[41] + 16] != 255)
  {
    sub_1003C74F8();
  }

  v22 = v31 + *(v35 + 24);
  if (*(v22 + 4) != 1)
  {
  }

  v23 = type metadata accessor for AppPackage();
  v24 = v23[8];
  if (!v30(&v22[v24], 1, v8))
  {
    v29(&v22[v24], v8);
  }

  if (*&v22[v23[9] + 16] != 1)
  {
  }

  v25 = v23[10];
  if (!v37(&v22[v25], 1, v6))
  {
    (*(v38 + 8))(&v22[v25], v6);
  }

  v26 = &v22[v23[11]];
  sub_1004EB154(*v26, *(v26 + 1), *(v26 + 2), *(v26 + 3), *(v26 + 4), *(v26 + 5), *(v26 + 6), *(v26 + 7), *(v26 + 8), *(v26 + 9), *(v26 + 10), *(v26 + 11));
  (*(v38 + 8))(&v22[v23[19]], v6);

  v27 = &v22[v23[21]];
  if (*(v27 + 4))
  {
    sub_10000710C((v27 + 8));
  }

  return _swift_deallocObject(v36, v33 + v32, v34 | 7);
}

uint64_t sub_1001DD7FC()
{
  v1 = type metadata accessor for IPA_InstallTask();
  v38 = *(*(v1 - 8) + 80);
  v36 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v39 = v0;
  v37 = (v38 + 32) & ~v38;
  v2 = (v0 + v37);

  v3 = v2 + *(v1 + 20);
  v4 = type metadata accessor for AppInstall();
  v5 = v4[9];
  v6 = type metadata accessor for URL();
  v40 = *(v6 - 8);
  v41 = *(v40 + 48);
  if (!v41(&v3[v5], 1, v6))
  {
    (*(v40 + 8))(&v3[v5], v6);
  }

  v34 = v2;
  v35 = v1;

  v7 = v4[14];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v33 = *(v9 + 48);
  if (!v33(&v3[v7], 1, v8))
  {
    (*(v9 + 8))(&v3[v7], v8);
  }

  v32 = *(v9 + 8);
  v32(&v3[v4[19]], v8);
  v10 = v4[20];
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&v3[v10], 1, v11))
  {
    (*(v12 + 8))(&v3[v10], v11);
  }

  v13 = v4[21];
  v14 = type metadata accessor for AppInstallRequestType();
  (*(*(v14 - 8) + 8))(&v3[v13], v14);

  v15 = v4[30];
  if (!v41(&v3[v15], 1, v6))
  {
    (*(v40 + 8))(&v3[v15], v6);
  }

  if (*&v3[v4[32] + 8] >= 2uLL)
  {
  }

  v16 = v4[34];
  v17 = type metadata accessor for Platform();
  (*(*(v17 - 8) + 8))(&v3[v16], v17);
  v18 = &v3[v4[36]];
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100007158(*v18, v19);
  }

  v20 = &v3[v4[39]];
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100007158(*v20, v21);
  }

  if (v3[v4[41] + 16] != 255)
  {
    sub_1003C74F8();
  }

  v22 = v34 + *(v35 + 24);
  if (*(v22 + 4) != 1)
  {
  }

  v23 = type metadata accessor for AppPackage();
  v24 = v23[8];
  if (!v33(&v22[v24], 1, v8))
  {
    v32(&v22[v24], v8);
  }

  if (*&v22[v23[9] + 16] != 1)
  {
  }

  v25 = v23[10];
  if (!v41(&v22[v25], 1, v6))
  {
    (*(v40 + 8))(&v22[v25], v6);
  }

  v26 = &v22[v23[11]];
  sub_1004EB154(*v26, *(v26 + 1), *(v26 + 2), *(v26 + 3), *(v26 + 4), *(v26 + 5), *(v26 + 6), *(v26 + 7), *(v26 + 8), *(v26 + 9), *(v26 + 10), *(v26 + 11));
  v27 = *(v40 + 8);
  v27(&v22[v23[19]], v6);

  v28 = &v22[v23[21]];
  if (*(v28 + 4))
  {
    sub_10000710C((v28 + 8));
  }

  v29 = v34 + *(v35 + 36);

  v30 = sub_1001F0C48(&qword_1007812A0);
  v27(&v29[*(v30 + 36)], v6);

  return _swift_deallocObject(v39, v37 + v36, v38 | 7);
}

uint64_t sub_1001DDDE8()
{
  v1 = type metadata accessor for IPA_PostambleTask();
  v35 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v36 = v0;
  v34 = (v35 + 32) & ~v35;
  v2 = v0 + v34;

  sub_10000710C(v0 + v34 + 8);
  v3 = v0 + v34 + v1[6];
  v4 = type metadata accessor for AppInstall();
  v5 = v4[9];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v38 = *(v7 + 48);
  if (!v38(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v37 = v7;
  v32 = v6;

  v8 = v4[14];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v31 = *(v10 + 48);
  if (!v31(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v30 = *(v10 + 8);
  v30(v3 + v4[19], v9);
  v11 = v4[20];
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v14 = v4[21];
  v15 = type metadata accessor for AppInstallRequestType();
  (*(*(v15 - 8) + 8))(v3 + v14, v15);

  v16 = v4[30];
  if (!v38(v3 + v16, 1, v32))
  {
    (*(v37 + 8))(v3 + v16, v32);
  }

  if (*(v3 + v4[32] + 8) >= 2uLL)
  {
  }

  v17 = v4[34];
  v18 = type metadata accessor for Platform();
  (*(*(v18 - 8) + 8))(v3 + v17, v18);
  v19 = (v3 + v4[36]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100007158(*v19, v20);
  }

  v21 = (v3 + v4[39]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100007158(*v21, v22);
  }

  if (*(v3 + v4[41] + 16) != 255)
  {
    sub_1003C74F8();
  }

  v23 = v2 + v1[7];
  if (*(v23 + 32) != 1)
  {
  }

  v24 = type metadata accessor for AppPackage();
  v25 = v24[8];
  if (!v31(v23 + v25, 1, v9))
  {
    v30(v23 + v25, v9);
  }

  if (*(v23 + v24[9] + 16) != 1)
  {
  }

  v26 = v24[10];
  if (!v38(v23 + v26, 1, v32))
  {
    (*(v37 + 8))(v23 + v26, v32);
  }

  v27 = v23 + v24[11];
  sub_1004EB154(*v27, *(v27 + 8), *(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 40), *(v27 + 48), *(v27 + 56), *(v27 + 64), *(v27 + 72), *(v27 + 80), *(v27 + 88));
  (*(v37 + 8))(v23 + v24[19], v32);

  v28 = v23 + v24[21];
  if (*(v28 + 32))
  {
    sub_10000710C(v28 + 8);
  }

  sub_10000710C(v2 + v1[8]);

  return _swift_deallocObject(v36, v34 + v33, v35 | 7);
}

uint64_t sub_1001DE3D0()
{
  v1 = type metadata accessor for IPA_FailTask();
  v38 = *(*(v1 - 1) + 80);
  v36 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v39 = v0;
  v37 = (v38 + 32) & ~v38;
  v2 = v0 + v37;

  v3 = v0 + v37 + v1[5];
  v4 = type metadata accessor for AppInstall();
  v5 = v4[9];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v41 = *(v7 + 48);
  if (!v41(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v40 = v7;
  v35 = v6;

  v8 = v4[14];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v34 = *(v10 + 48);
  if (!v34(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v33 = *(v10 + 8);
  v33(v3 + v4[19], v9);
  v11 = v4[20];
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v14 = v4[21];
  v15 = type metadata accessor for AppInstallRequestType();
  (*(*(v15 - 8) + 8))(v3 + v14, v15);

  v16 = v4[30];
  if (!v41(v3 + v16, 1, v35))
  {
    (*(v40 + 8))(v3 + v16, v35);
  }

  if (*(v3 + v4[32] + 8) >= 2uLL)
  {
  }

  v17 = v4[34];
  v18 = type metadata accessor for Platform();
  (*(*(v18 - 8) + 8))(v3 + v17, v18);
  v19 = (v3 + v4[36]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100007158(*v19, v20);
  }

  v21 = (v3 + v4[39]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100007158(*v21, v22);
  }

  if (*(v3 + v4[41] + 16) != 255)
  {
    sub_1003C74F8();
  }

  v23 = v2 + v1[6];
  if (*(v23 + 32) != 1)
  {
  }

  v24 = type metadata accessor for AppPackage();
  v25 = v24[8];
  if (!v34(v23 + v25, 1, v9))
  {
    v33(v23 + v25, v9);
  }

  if (*(v23 + v24[9] + 16) != 1)
  {
  }

  v26 = v24[10];
  if (!v41(v23 + v26, 1, v35))
  {
    (*(v40 + 8))(v23 + v26, v35);
  }

  v27 = v23 + v24[11];
  sub_1004EB154(*v27, *(v27 + 8), *(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 40), *(v27 + 48), *(v27 + 56), *(v27 + 64), *(v27 + 72), *(v27 + 80), *(v27 + 88));
  v28 = *(v40 + 8);
  v28(v23 + v24[19], v35);

  v29 = v23 + v24[21];
  if (*(v29 + 32))
  {
    sub_10000710C(v29 + 8);
  }

  v30 = v2 + v1[15];

  v31 = sub_1001F0C48(&qword_1007812A0);
  v28(v30 + *(v31 + 36), v35);
  sub_10000710C(v2 + v1[16]);

  return _swift_deallocObject(v39, v37 + v36, v38 | 7);
}

uint64_t sub_1001DEA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001DEAB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001DEB60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001DEB98()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DEBE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&unk_1007809F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001DED18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F0C48(&unk_1007809F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001DEE48(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AppInstall();
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
      v13 = type metadata accessor for AppPackage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001DEF6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AppInstall();
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
      v13 = type metadata accessor for AppPackage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001DF090()
{
  sub_10000710C(v0 + 16);
  if (*(v0 + 104))
  {
    sub_10000710C(v0 + 80);
  }

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1001DF0D8()
{
  sub_10000710C(v0 + 16);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1001DF120()
{
  sub_10000710C(v0 + 16);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001DF168()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001DF1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OAuthServerMetadata();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1001DF2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OAuthServerMetadata();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UUID();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1001DF3D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001DF410()
{
  sub_10000710C(v0 + 16);
  if (*(v0 + 104))
  {
    sub_10000710C(v0 + 80);
  }

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1001DF458()
{
  sub_10000710C(v0 + 24);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001DF4A0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DF4EC()
{
  v1 = sub_1001F0C48(&qword_10078ACA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001DF5BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AppInstall();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AppPackage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001DF6E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AppInstall();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AppPackage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001DF804()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 48);

  sub_10000710C(v0 + 152);

  return _swift_deallocObject(v0, 249, 7);
}

uint64_t sub_1001DF864()
{
  v1 = type metadata accessor for RegisteredXPCClient();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((((((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = type metadata accessor for XPCClient.MessageRegistrationState();
  (*(*(v6 - 8) + 8))(v5, v6);

  if (*(v5 + *(v1 + 24) + 8) >= 5uLL)
  {
  }

  swift_unknownObjectRelease();

  v7 = *(v0 + v4 + 8);
  if (v7 >> 60 != 15)
  {
    sub_100007158(*(v0 + v4), v7);
  }

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001DF9D8()
{
  v1 = type metadata accessor for RegisteredXPCClient();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for XPCClient.MessageRegistrationState();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v3 + *(v1 + 24) + 8) >= 5uLL)
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1001DFB18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DFB50()
{
  v1 = type metadata accessor for MessageRegistration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001DFC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCClient.MessageRegistrationState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001DFCE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for XPCClient.MessageRegistrationState();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001DFDA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001DFDBC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1001DFE2C()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1001DFE6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001DFE7C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1001DFEBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001DFECC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10020ABFC(a1, a2);
  }

  return a1;
}

void sub_1001E07B8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (!v5 || [v5 containsObject:v7])
  {
    v6 = ASUSQLiteCopyFoundationValue(*(a1 + 48), a3);
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

id ASUSQLiteCopyFoundationValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3 || (a2 & 0x80000000) != 0)
  {
    if (!v3)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (*(v3 + 2) <= a2)
  {
LABEL_10:
    v7 = sqlite3_column_type(v3[6], a2);
    if (v7 > 2)
    {
      if (v7 == 5)
      {
        v5 = 0;
        goto LABEL_26;
      }

      if (v7 == 3)
      {
LABEL_16:
        v8 = [v4 stringForColumnIndex:a2];
        goto LABEL_25;
      }
    }

    else
    {
      if (v7 == 1)
      {
        v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 int64ForColumnIndex:a2]);
        goto LABEL_25;
      }

      if (v7 == 2)
      {
        [v4 doubleForColumnIndex:a2];
        v8 = [NSNumber numberWithDouble:?];
        goto LABEL_25;
      }
    }

LABEL_17:
    v8 = [v4 dataForColumnIndex:a2];
    goto LABEL_25;
  }

  v5 = 0;
  v6 = *(v3[2] + a2);
  if (v6 <= 2)
  {
    if (*(v3[2] + a2))
    {
      if (v6 == 1)
      {
        v8 = [v3 dateForColumnIndex:a2];
      }

      else
      {
        if (v6 != 2)
        {
          goto LABEL_26;
        }

        v8 = sub_100670CD0(v3, a2);
      }

LABEL_25:
      v5 = v8;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  switch(v6)
  {
    case 3u:
      v8 = [v3 UUIDForColumnIndex:a2];
      goto LABEL_25;
    case 4u:
      v8 = [v3 URLForColumnIndex:a2];
      goto LABEL_25;
    case 5u:
      goto LABEL_16;
  }

LABEL_26:

  return v5;
}

uint64_t ASUSQLiteApplyConnectionOptions(sqlite3 *a1, void *a2)
{
  v3 = a2;
  sqlite3_extended_result_codes(a1, 1);
  v4 = [v3 encryptionKeyId];

  if (!v4 || ([v3 encryptionKeyId], v5 = objc_claimAutoreleasedReturnValue(), v6 = ASUSQLiteEncryptDatabase(a1, v5), v5, !v6))
  {
    v7 = sqlite3_exec(a1, "PRAGMA journal_mode=WAL", 0, 0, 0);
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v8 = [[NSString alloc] initWithFormat:@"PRAGMA cache_size=%ld", objc_msgSend(v3, "cacheSize")];
      v6 = sqlite3_exec(a1, [v8 UTF8String], 0, 0, 0);
    }
  }

  return v6;
}

uint64_t ASUSQLiteEncryptDatabase(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_1001E9D64(ASUDefaultsManager, v2);
    v4 = v3;
    if (v3 && [v3 length] == 16)
    {
      v5 = 0;
    }

    else
    {
      v13 = 0;
      v6 = [ASUSQLiteKeychainHelper fetchKeyWithIdentifier:v2 error:&v13];
      v5 = v13;

      if (v6 && [v6 length] == 16)
      {
        v4 = v6;
      }

      else
      {

        v8 = ASULogHandleForCategory(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v15 = v2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Generating new encryption key for identifier: %{public}@", buf, 0xCu);
        }

        CCRandomGenerateBytes(buf, 0x10uLL);
        v4 = [NSData dataWithBytes:buf length:16];

        v12 = 0;
        v9 = [ASUSQLiteKeychainHelper storeKey:v4 withIdentifier:v2 error:&v12];
        v5 = v12;
        if ((v9 & 1) == 0)
        {
          v10 = ASULogHandleForCategory(1);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            sub_1001E1C9C(v2, v5, v10);
          }

          sub_1001E9E04(ASUDefaultsManager, v4, v2);
        }
      }
    }

    [v4 bytes];
    [v4 length];
    v7 = sqlite3_key();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id ASUSQLiteCreateErrorForResultCode(int a1)
{
  if (a1 - 100 < 2 || a1 == 0)
  {
    v2 = 0;
  }

  else
  {
    v4 = sqlite3_errstr(a1);
    if (v4 && *v4)
    {
      v8 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithUTF8String:v4];
      v9 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    }

    else
    {
      v6 = 0;
    }

    v2 = [[NSError alloc] initWithDomain:@"ASUSQLiteErrorDomain" code:a1 userInfo:v6];
  }

  return v2;
}

id ASUSQLiteGetRelatedFilePath(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = v4;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v6 = @"-wal";
  }

  else
  {
    v6 = @"-shm";
  }

  v2 = [v4 stringByAppendingString:v6];
LABEL_6:

  return v2;
}

id ASUSQLiteDeleteDatabase(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_alloc_init(NSFileManager);
  v5 = ASUSQLiteGetRelatedFilePath(v3, 0);
  v15 = 0;
  [v4 removeItemAtPath:v5 error:&v15];
  v6 = v15;

  v7 = ASUSQLiteGetRelatedFilePath(v3, 1);
  v14 = v6;
  [v4 removeItemAtPath:v7 error:&v14];
  v8 = v14;

  v13 = v8;
  v9 = [v4 removeItemAtPath:v3 error:&v13];

  v10 = v13;
  if (a2 && v10)
  {
    v11 = v10;
    *a2 = v10;
  }

  return v9;
}

uint64_t ASUSQLiteOpenDatabaseAndApplyOptions(sqlite3 **a1, void *a2)
{
  v3 = a2;
  ppDb = 0;
  v4 = [v3 databasePath];
  if ([v3 isReadOnly])
  {
    v5 = 2;
  }

  else
  {
    v6 = objc_alloc_init(NSFileManager);
    v7 = [v4 stringByDeletingLastPathComponent];
    [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];

    v5 = 6;
  }

  v8 = [v3 protectionType];
  v9 = v8;
  if (v8)
  {
    v5 |= ASUSQLiteOpenFlagForProtectionType(v8);
  }

  v10 = sqlite3_open_v2([v4 fileSystemRepresentation], &ppDb, v5, 0);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = ASUSQLiteApplyConnectionOptions(ppDb, v3);
    if (!v11)
    {
      *a1 = ppDb;
      goto LABEL_12;
    }
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

LABEL_12:

  return v11;
}

uint64_t ASUSQLiteOpenFlagForProtectionType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:NSFileProtectionNone])
    {
      v3 = 0x400000;
    }

    else if ([v2 isEqualToString:NSFileProtectionComplete])
    {
      v3 = 0x100000;
    }

    else if ([v2 isEqualToString:NSFileProtectionCompleteUnlessOpen])
    {
      v3 = 0x200000;
    }

    else if ([v2 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication])
    {
      v3 = 3145728;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1001E1C9C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to fetch/generate key with identifier: %{public}@ error: %{public}@", &v3, 0x16u);
}

id sub_1001E3820(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, 0, 0);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, v4);

  CFDictionaryAddValue(Mutable, kSecAttrNoLegacy, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
  cf = 0;
  v7 = SecItemCopyMatching(Mutable, &cf);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = cf == 0;
  }

  if (v8)
  {
    if (v7 == -25300 || v7 == 0)
    {
      v17 = NSDebugDescriptionErrorKey;
      v18 = @"SecItemCopyMatching succeeded with empty results";
      v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v13 = [NSError errorWithDomain:@"ASUSQLiteErrorDomain" code:5 userInfo:v10];
    }

    else
    {
      v13 = sub_1001E3C48(v5, v7);
    }

    v12 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = [NSData alloc];
    v12 = [v11 initWithBase64EncodedData:cf options:0];
    CFRelease(cf);
    v13 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }
  }

  if (!v12)
  {
    v14 = v13;
    *a3 = v13;
  }

LABEL_17:
  CFRelease(Mutable);

  return v12;
}

BOOL sub_1001E3AD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = [v7 base64EncodedDataWithOptions:0];

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 7, 0, 0);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, v6);

  CFDictionaryAddValue(Mutable, kSecAttrLabel, @"App Store User Data Encryption");
  CFDictionaryAddValue(Mutable, kSecAttrNoLegacy, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecValueData, v9);
  SecItemDelete(Mutable);
  v11 = SecItemAdd(Mutable, 0);
  CFRelease(Mutable);
  if (v11)
  {
    v12 = sub_1001E3C48(v8, v11);
    v13 = v12;
    if (a4)
    {
      v14 = v12;
      *a4 = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  return v11 == 0;
}

uint64_t sub_1001E3C48(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = SecCopyErrorMessageString(a2, 0);
  if (v3)
  {
    [NSString stringWithFormat:@"Keychain failed to return value (error %d): %@", a2, v3];
  }

  else
  {
    [NSString stringWithFormat:@"Keychain failed to return value (error %d)", a2, v8];
  }
  v4 = ;
  v9 = NSDebugDescriptionErrorKey;
  v10 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = [NSError errorWithDomain:@"ASUSQLiteErrorDomain" code:4 userInfo:v5];

  return v6;
}

void sub_1001E3F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E3F74(void *a1, void *a2)
{
  v3 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E402C;
  v9[3] = &unk_100756728;
  v4 = a1[6];
  v5 = a1[4];
  v11 = a1[5];
  v12 = v4;
  v10 = v3;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = *(*(a1[5] + 8) + 24);

  return v7;
}

id sub_1001E402C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = sub_1001E4088(ASUSQLiteEntity, a3, a2, *(a1 + 48), *(a1 + 32));
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

id sub_1001E4088(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_self();
  v11 = [[NSMutableString alloc] initWithString:@"INSERT OR REPLACE INTO "];
  [v11 appendString:v8];
  objc_msgSend(v11, "appendString:", @" (");
  v30 = v10;
  v12 = [v10 foreignKeyColumnForTable:v8];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"ROWID";
  }

  [v11 appendString:v14];
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v40 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        [v11 appendString:{@", "}];
        [v11 appendString:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v17);
  }

  [v11 appendString:@") VALUES (?"];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v15;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    while (1)
    {
      if (*v37 != v24)
      {
        objc_enumerationMutation(v21);
      }

      [v11 appendString:{@", ?"}];
      if (!--v23)
      {
        v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  [v11 appendString:@";"]);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001E59F4;
  v32[3] = &unk_100756928;
  v34 = a4;
  v35 = 0;
  v25 = v21;
  v33 = v25;
  v26 = [v9 executeStatement:v11 error:&v35 bindings:v32];
  v27 = v35;
  if (v27)
  {
    v28 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1001E5F3C(v30, v27, v28);
    }
  }

  return v26;
}

uint64_t sub_1001E45F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() databaseTable];
  v4 = sub_10067101C(v2, v3, @"ROWID");

  [objc_opt_class() foreignDatabaseTablesToDelete];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [objc_opt_class() foreignKeyColumnForTable:{v10, v17}];
        if (v11)
        {
          if ((sub_10067101C(*(a1 + 32), v10, v11) & 1) == 0)
          {

            v15 = 0;
            v14 = v5;
            goto LABEL_15;
          }

          v4 = 1;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v7 = v12;
    }

    while (v12);
  }

  if (v4)
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    *(v13 + 8) = 0;
    v15 = 1;
LABEL_15:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_1001E47A4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v5 = @"ASUSQLiteUserInfoKeyPersistentID";
  v3 = [NSNumber numberWithLongLong:*(a1 + 32)];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"ASUSQLiteDidDeleteEntityNotification" object:0 userInfo:v4];
}

void sub_1001E4998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E49B0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_1001E4DA8(id *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a2;
  v8 = [v5 disambiguatedSQLForProperty:v6];
  if (a3)
  {
    [a1[4] appendString:{@", "}];
  }

  [a1[4] appendString:v8];
  v7 = [a1[6] joinClauseForProperty:v6];

  if (v7)
  {
    [a1[5] addObject:v7];
  }
}

void sub_1001E4E5C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E4F24;
  v5[3] = &unk_100756838;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 enumerateRowsUsingBlock:v5];
}

void sub_1001E4F24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001E5000;
    v9[3] = &unk_100756810;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1001E5000(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = ASUSQLiteCopyFoundationValue(v5, a3);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

uint64_t sub_1001E5220(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v4 = sub_100670F18(*(a1 + 32), *(a1 + 40));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001E5328;
  v10[3] = &unk_1007568D8;
  v5 = *(a1 + 48);
  v14 = *(a1 + 56);
  v6 = v5;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = &v15;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v8;
}

void sub_1001E5310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E5328(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 56) foreignKeyColumnForTable:v7];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"ROWID";
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  if (([v7 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v11 = [[NSMutableString alloc] initWithString:@"SELECT 1 FROM "];
    [v11 appendString:v7];
    [v11 appendString:@" WHERE "];
    [v11 appendString:v10];
    [v11 appendString:@" =  ? LIMIT 1;"];
    v12 = *(a1 + 40);
    v13 = *(v12 + 8);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001E56D4;
    v30[3] = &unk_1007567C0;
    v30[4] = v12;
    v30[5] = &v31;
    [v13 executeQuery:v11 withResults:v30];
  }

  if (v32[3])
  {
    v14 = objc_alloc_init(NSMutableArray);
    v15 = [[NSMutableString alloc] initWithString:@"UPDATE "];
    [v15 appendString:v7];
    [v15 appendString:@" SET "];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001E5734;
    v24[3] = &unk_100756888;
    v27 = v28;
    v16 = v15;
    v25 = v16;
    v17 = v14;
    v26 = v17;
    [v8 enumerateKeysAndObjectsUsingBlock:v24];
    [v16 appendString:@" WHERE "];
    [v16 appendString:v7];
    [v16 appendString:@"."];
    [v16 appendString:v10];
    [v16 appendString:@" = ?;"];
    v18 = *(*(a1 + 40) + 8);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001E57E4;
    v21[3] = &unk_1007568B0;
    v19 = v17;
    v20 = *(a1 + 40);
    v22 = v19;
    v23 = v20;
    *(*(*(a1 + 48) + 8) + 24) = [v18 executeStatement:v16 error:0 bindings:v21];

    _Block_object_dispose(v28, 8);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = sub_1001E4088(ASUSQLiteEntity, v8, v7, *(*(a1 + 40) + 16), *(*(a1 + 40) + 8));
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  _Block_object_dispose(&v31, 8);
}

void sub_1001E56D4(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_1001E5734(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v6];
  [*(a1 + 32) appendString:@" = ?"];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 40) addObject:v5];
}

void sub_1001E57E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        ASUSQLiteBindFoundationValue(v3, v10, *(*(&v11 + 1) + 8 * v9));
        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  [v3 bindInt64:*(*(a1 + 40) + 16) atPosition:{v8, v11}];
}

void sub_1001E59F4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindInt64:*(a1 + 40) atPosition:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v9), v12}];
        ASUSQLiteBindFoundationValue(v3, v10, v11);

        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_1001E5B3C(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([v10 isEqualToString:@"ROWID"] & 1) == 0)
  {
    v6 = [a1[6] foreignDatabaseTableForProperty:v10];
    if (v6)
    {
      v7 = v6;
      v8 = [a1[6] foreignDatabaseColumnForProperty:v10];
    }

    else
    {
      v8 = v10;
      v7 = a1[4];
    }

    v9 = [a1[5] objectForKey:v7];
    if (!v9)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      [a1[5] setObject:v9 forKey:v7];
    }

    [v9 setObject:v5 forKey:v8];
  }
}

void sub_1001E5F3C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %@", &v6, 0x16u);
}

void sub_1001E61B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_1001E6418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E66AC(uint64_t a1, void *a2)
{
  v5 = 1;
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 predicate];
  [v4 applyBinding:v3 atIndex:&v5];
}

uint64_t sub_1001E6780(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v4 = [*(*(a1 + 32) + 16) entityClass];
  v5 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001E6870;
  v8[3] = &unk_100756A00;
  v8[5] = &v9;
  v8[6] = v4;
  v8[4] = v5;
  [v5 enumeratePersistentIDsUsingBlock:v8];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1001E6858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E6870(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(*(a1 + 32) + 8)];
  *(*(*(a1 + 40) + 8) + 24) = [v6 deleteFromDatabase];
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void sub_1001E6ACC(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(*(a1 + 40));
  [v4 setDatabaseID:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_1001E6B4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setDatabaseID:a2];
  [v7 setValuesWithDictionary:v6];

  (*(*(a1 + 32) + 16))();
}

void sub_1001E6D88(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 1;
  [a1[4] applyBinding:v5 atIndex:&v14];
  v7 = [a1[5] count];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001E6EAC;
  v8[3] = &unk_100756AA0;
  v12 = v7;
  v9 = a1[5];
  v10 = a1[6];
  v11 = v13;
  [v5 enumerateRowsUsingBlock:v8];

  _Block_object_dispose(v13, 8);
}

void sub_1001E6E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E6EAC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [NSMutableDictionary dictionaryWithCapacity:a1[7]];
  v9 = v8;
  if (v5)
  {
    v10 = a1[4];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1001E7000;
    v18 = &unk_100756810;
    v11 = v8;
    v19 = v11;
    v12 = v5;
    v20 = v12;
    [v10 enumerateObjectsUsingBlock:&v15];
    v13 = a1[5];
    v14 = [v12 int64ForColumnIndex:{0, v15, v16, v17, v18}];
    ++*(*(a1[6] + 8) + 24);
    (*(v13 + 16))(v13, v14, v11);
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1001E7000(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = ASUSQLiteCopyFoundationValue(v5, (a3 + 1));
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_1001E7868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E7880(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E7898(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

void sub_1001E7A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E7A6C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

id sub_1001E7AE8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_self();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1001E7880;
  v31 = sub_1001E7890;
  v32 = 0;
  v13 = [ASUSQLiteQueryDescriptor alloc];
  if (v13)
  {
    v14 = [(ASUSQLiteQueryDescriptor *)v13 initWithEntityClass:v12 memoryEntityClass:0];
  }

  else
  {
    v14 = 0;
  }

  [(ASUSQLiteQueryDescriptor *)v14 setPredicate:v10];
  v15 = [NSString alloc];
  v16 = [v12 disambiguatedSQLForProperty:v8];
  v17 = [v15 initWithFormat:@"%@(%@)", v9, v16];

  v33 = v8;
  v18 = [NSArray arrayWithObjects:&v33 count:1];
  v19 = [NSArray arrayWithObject:v17];
  v20 = [(ASUSQLiteQueryDescriptor *)v14 _newSelectSQLWithProperties:v18 columns:v19];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001E7F34;
  v24[3] = &unk_1007567C0;
  v21 = v14;
  v25 = v21;
  v26 = &v27;
  [v11 executeQuery:v20 withResults:v24];
  v22 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v22;
}

void sub_1001E7D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E7F34(uint64_t a1, void *a2)
{
  v7 = 1;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 predicate];
  [v5 applyBinding:v4 atIndex:&v7];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001E7FF4;
  v6[3] = &unk_100756B40;
  v6[4] = *(a1 + 40);
  [v4 enumerateRowsUsingBlock:v6];
}

void sub_1001E7FF4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = ASUSQLiteCopyFoundationValue(a2, 0);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

void sub_1001E8170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001E8C40(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1001E9008;
    v14 = sub_1001E9018;
    v15 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001E9020;
    v9[3] = &unk_100756BE0;
    v9[5] = &v10;
    v9[6] = [v5 UTF8String];
    v9[4] = a1;
    sub_1006717F4(a1, a3, v9);
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1001E8D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E8E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E8E6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_1001E8ED0(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1001E8FC4(sqlite3_context *a1)
{
  +[NSDate timeIntervalSinceReferenceDate];

  sqlite3_result_int64(a1, v2);
}

uint64_t sub_1001E9008(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001E9020(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), *(a1 + 48), -1, &ppStmt, 0);
  if (ASUSQLiteResultIsSuccess(v2))
  {
    v3 = [ASUSQLiteStatement alloc];
    v4 = [(ASUSQLiteStatement *)v3 initWithStatement:ppStmt onConnection:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    sqlite3_finalize(ppStmt);
  }

  return v2;
}

void sub_1001E918C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1001E95F8(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 56) databasePath];
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Connection taken down HARD, please call close before deallocating: %{public}@", &v4, 0xCu);
}

void sub_1001E9694(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Encountered exception while executing query: %{public}@", &v2, 0xCu);
}

uint64_t sub_1001E9854(uint64_t a1)
{
  v2 = sqlite3_step(*(a1 + 48));
  if (v2 == 100)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2;
}

void sub_1001E9958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1001E9970(void *result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v5 = result;
    result = [a2 int64ForColumnIndex:0];
    *(*(v5[4] + 8) + 24) = result;
  }

  *a4 = 1;
  return result;
}

void sub_1001E9AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E9AB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E9AD0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = [a2 numberForColumnIndex:0];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

void sub_1001E9BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E9BE0(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a4 = 1;
  return result;
}

id ASULogHandleForCategory(uint64_t a1)
{
  if (qword_10078B0F8 != -1)
  {
    sub_1001E9D50();
  }

  v2 = qword_10078B0E8[a1];

  return v2;
}

void sub_1001E9CE0(id a1)
{
  v1 = os_log_create("com.apple.appstoreutilities", "Defaults");
  v2 = qword_10078B0E8[0];
  qword_10078B0E8[0] = v1;

  qword_10078B0F0 = os_log_create("com.apple.appstoreutilities", "SQL");

  _objc_release_x1();
}

id sub_1001E9D64(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_self() copyDefaultsKeyForEncryptionKeyWithIdentifier:v2];

  v4 = CFPreferencesCopyAppValue(v3, @"com.apple.appstoreutilities");
  if (v4)
  {
    v5 = [[NSData alloc] initWithBase64EncodedString:v4 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1001E9E04(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  key = [objc_opt_self() copyDefaultsKeyForEncryptionKeyWithIdentifier:v4];

  v6 = [v5 base64EncodedStringWithOptions:0];

  CFPreferencesSetAppValue(key, v6, @"com.apple.appstoreutilities");
  CFPreferencesAppSynchronize(@"com.apple.appstoreutilities");
}

void sub_1001EA1BC(id a1)
{
  v2 = 4;
  if (sysctlbyname("kern.hv_vmm_present", &dword_10078B100, &v2, 0, 0))
  {
    v1 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_1001EA290(v1);
    }
  }
}

void sub_1001EA290(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "sysctlbyname for kern.hv_vmm_present failed with error: %{darwin.errno}d", v3, 8u);
}

void ASUSQLiteBindFoundationValue(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindArray:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindDictionary:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindString:v5 atPosition:a2];
    goto LABEL_10;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 bindNullAtPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
LABEL_15:
    [v9 bindDouble:a2 atPosition:?];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindData:v5 atPosition:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 bindUUID:v5 atPosition:a2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 absoluteString];
        [v9 bindString:v6 atPosition:a2];
      }

      else
      {
        v7 = [v5 objCType];
        v8 = *v7;
        if ((v8 == 102 || v8 == 100) && !v7[1])
        {
          [v5 doubleValue];
          goto LABEL_15;
        }

        [v9 bindInt64:objc_msgSend(v5 atPosition:{"longLongValue"), a2}];
      }
    }
  }

LABEL_10:
}

id sub_1001EA770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 16);
  if (a3)
  {
    return [v3 setObject:a3 forKey:a2];
  }

  else
  {
    return [v3 removeObjectForKey:a2];
  }
}

void sub_1001EB1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001EB2EC(uint64_t a1)
{
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_1001EC39C;
  v88 = sub_1001EC3AC;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2050000000;
  v1 = qword_10078B120;
  v98 = qword_10078B120;
  if (!qword_10078B120)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED120;
    v93 = &unk_100756D08;
    v94 = &v95;
    sub_1001ED120(&v90);
    v1 = v96[3];
  }

  v2 = v1;
  _Block_object_dispose(&v95, 8);
  v3 = [v1 alloc];
  v4 = [NSString stringWithFormat:@"AppDistribution-%@-%@", *(a1 + 32), *(a1 + 40)];
  v89 = [v3 initWithName:v4];

  v95 = 0;
  v96 = &v95;
  v97 = 0x2050000000;
  v5 = qword_10078B130;
  v98 = qword_10078B130;
  if (!qword_10078B130)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED2EC;
    v93 = &unk_100756D08;
    v94 = &v95;
    sub_1001ED2EC(&v90);
    v5 = v96[3];
  }

  v6 = v5;
  _Block_object_dispose(&v95, 8);
  v79 = [[v5 alloc] initWithStringValue:*(a1 + 32)];
  v95 = 0;
  v96 = &v95;
  v97 = 0x2050000000;
  v7 = qword_10078B138;
  v98 = qword_10078B138;
  if (!qword_10078B138)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED344;
    v93 = &unk_100756D08;
    v94 = &v95;
    sub_1001ED344(&v90);
    v7 = v96[3];
  }

  v8 = v7;
  _Block_object_dispose(&v95, 8);
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v9 = qword_10078B140;
  v98 = qword_10078B140;
  if (!qword_10078B140)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED39C;
    v93 = &unk_100756D08;
    v94 = &v95;
    v10 = sub_1001ED178();
    v11 = dlsym(v10, "ASCLockupKindApp");
    *(v94[1] + 24) = v11;
    qword_10078B140 = *(v94[1] + 24);
    v9 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v9)
  {
    goto LABEL_56;
  }

  v12 = *v9;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v13 = qword_10078B148;
  v98 = qword_10078B148;
  if (!qword_10078B148)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED3EC;
    v93 = &unk_100756D08;
    v94 = &v95;
    v14 = sub_1001ED178();
    v15 = dlsym(v14, "ASCLockupContextAppDistributionInstall");
    *(v94[1] + 24) = v15;
    qword_10078B148 = *(v94[1] + 24);
    v13 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v13)
  {
    goto LABEL_56;
  }

  v16 = *v13;
  v77 = [v7 _requestWithID:v79 kind:v12 context:v16 appVersionId:*(a1 + 40) distributorId:*(a1 + 48)];

  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v17 = qword_10078B150;
  v98 = qword_10078B150;
  if (!qword_10078B150)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED43C;
    v93 = &unk_100756D08;
    v94 = &v95;
    v18 = sub_1001ED178();
    v19 = dlsym(v18, "_ASCLockupKeyAdamID");
    *(v94[1] + 24) = v19;
    qword_10078B150 = *(v94[1] + 24);
    v17 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v17)
  {
    goto LABEL_56;
  }

  v76 = *v17;
  v99[0] = v76;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v20 = qword_10078B158;
  v98 = qword_10078B158;
  if (!qword_10078B158)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED48C;
    v93 = &unk_100756D08;
    v94 = &v95;
    v21 = sub_1001ED178();
    v22 = dlsym(v21, "_ASCLockupKeyDeveloperName");
    *(v94[1] + 24) = v22;
    qword_10078B158 = *(v94[1] + 24);
    v20 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v20)
  {
    goto LABEL_56;
  }

  v75 = *v20;
  v99[1] = v75;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v23 = qword_10078B160;
  v98 = qword_10078B160;
  if (!qword_10078B160)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED4DC;
    v93 = &unk_100756D08;
    v94 = &v95;
    v24 = sub_1001ED178();
    v25 = dlsym(v24, "_ASCLockupKeyDeveloperId");
    *(v94[1] + 24) = v25;
    qword_10078B160 = *(v94[1] + 24);
    v23 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v23)
  {
    goto LABEL_56;
  }

  v74 = *v23;
  v99[2] = v74;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v26 = qword_10078B168;
  v98 = qword_10078B168;
  if (!qword_10078B168)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED52C;
    v93 = &unk_100756D08;
    v94 = &v95;
    v27 = sub_1001ED178();
    v28 = dlsym(v27, "_ASCLockupKeyWebDistributionDomains");
    *(v94[1] + 24) = v28;
    qword_10078B168 = *(v94[1] + 24);
    v26 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v26)
  {
    goto LABEL_56;
  }

  v73 = *v26;
  v99[3] = v73;
  v78 = sub_1001EC3B4();
  v99[4] = v78;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v29 = qword_10078B178;
  v98 = qword_10078B178;
  if (!qword_10078B178)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED5CC;
    v93 = &unk_100756D08;
    v94 = &v95;
    v30 = sub_1001ED178();
    v31 = dlsym(v30, "_ASCLockupKeyTitle");
    *(v94[1] + 24) = v31;
    qword_10078B178 = *(v94[1] + 24);
    v29 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v29)
  {
    goto LABEL_56;
  }

  v72 = *v29;
  v99[5] = v72;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v32 = qword_10078B180;
  v98 = qword_10078B180;
  if (!qword_10078B180)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED61C;
    v93 = &unk_100756D08;
    v94 = &v95;
    v33 = sub_1001ED178();
    v34 = dlsym(v33, "_ASCLockupKeySubtitle");
    *(v94[1] + 24) = v34;
    qword_10078B180 = *(v94[1] + 24);
    v32 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v32)
  {
    goto LABEL_56;
  }

  v71 = *v32;
  v99[6] = v71;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v35 = qword_10078B188;
  v98 = qword_10078B188;
  if (!qword_10078B188)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED66C;
    v93 = &unk_100756D08;
    v94 = &v95;
    v36 = sub_1001ED178();
    v37 = dlsym(v36, "_ASCLockupKeyShortName");
    *(v94[1] + 24) = v37;
    qword_10078B188 = *(v94[1] + 24);
    v35 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v35)
  {
    goto LABEL_56;
  }

  v70 = *v35;
  v99[7] = v70;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v38 = qword_10078B190;
  v98 = qword_10078B190;
  if (!qword_10078B190)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED6BC;
    v93 = &unk_100756D08;
    v94 = &v95;
    v39 = sub_1001ED178();
    v40 = dlsym(v39, "_ASCLockupKeySupportUrl");
    *(v94[1] + 24) = v40;
    qword_10078B190 = *(v94[1] + 24);
    v38 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v38)
  {
    goto LABEL_56;
  }

  v41 = *v38;
  v99[8] = v41;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v42 = qword_10078B198;
  v98 = qword_10078B198;
  if (!qword_10078B198)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED70C;
    v93 = &unk_100756D08;
    v94 = &v95;
    v43 = sub_1001ED178();
    v44 = dlsym(v43, "_ASCLockupKeyContentRatingsBySystem");
    *(v94[1] + 24) = v44;
    qword_10078B198 = *(v94[1] + 24);
    v42 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v42)
  {
    goto LABEL_56;
  }

  v45 = *v42;
  v99[9] = v45;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v46 = qword_10078B1A0;
  v98 = qword_10078B1A0;
  if (!qword_10078B1A0)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED75C;
    v93 = &unk_100756D08;
    v94 = &v95;
    v47 = sub_1001ED178();
    v48 = dlsym(v47, "_ASCLockupKeyIsDistributor");
    *(v94[1] + 24) = v48;
    qword_10078B1A0 = *(v94[1] + 24);
    v46 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v46)
  {
    goto LABEL_56;
  }

  v49 = *v46;
  v99[10] = v49;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v50 = qword_10078B1A8;
  v98 = qword_10078B1A8;
  if (!qword_10078B1A8)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED7AC;
    v93 = &unk_100756D08;
    v94 = &v95;
    v51 = sub_1001ED178();
    v52 = dlsym(v51, "_ASCLockupKeyGenreName");
    *(v94[1] + 24) = v52;
    qword_10078B1A8 = *(v94[1] + 24);
    v50 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v50)
  {
    goto LABEL_56;
  }

  v53 = *v50;
  v99[11] = v53;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v54 = qword_10078B1B0;
  v98 = qword_10078B1B0;
  if (!qword_10078B1B0)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED7FC;
    v93 = &unk_100756D08;
    v94 = &v95;
    v55 = sub_1001ED178();
    v56 = dlsym(v55, "_ASCLockupKeyGenreID");
    *(v94[1] + 24) = v56;
    qword_10078B1B0 = *(v94[1] + 24);
    v54 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v54)
  {
    goto LABEL_56;
  }

  v57 = *v54;
  v99[12] = v57;
  v58 = sub_1001EC4B8();
  v99[13] = v58;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v59 = qword_10078B1C0;
  v98 = qword_10078B1C0;
  if (!qword_10078B1C0)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED89C;
    v93 = &unk_100756D08;
    v94 = &v95;
    v60 = sub_1001ED178();
    v61 = dlsym(v60, "_ASCLockupKeyAgeRating");
    *(v94[1] + 24) = v61;
    qword_10078B1C0 = *(v94[1] + 24);
    v59 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v59)
  {
    goto LABEL_56;
  }

  v62 = *v59;
  v99[14] = v62;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v63 = qword_10078B1C8;
  v98 = qword_10078B1C8;
  if (!qword_10078B1C8)
  {
    v90 = _NSConcreteStackBlock;
    v91 = 3221225472;
    v92 = sub_1001ED8EC;
    v93 = &unk_100756D08;
    v94 = &v95;
    v64 = sub_1001ED178();
    v65 = dlsym(v64, "_ASCLockupKeyAgeRatingValue");
    *(v94[1] + 24) = v65;
    qword_10078B1C8 = *(v94[1] + 24);
    v63 = v96[3];
  }

  _Block_object_dispose(&v95, 8);
  if (!v63)
  {
LABEL_56:
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v66 = *v63;
  v99[15] = v66;
  v67 = [NSArray arrayWithObjects:v99 count:16];
  v68 = [NSSet setWithArray:v67];

  v69 = v85[5];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1001EC5BC;
  v81[3] = &unk_100756CB8;
  v82 = *(a1 + 56);
  v83 = &v84;
  [v69 _lockupDictionaryForRequest:v77 includingKeys:v68 withCompletionBlock:v81];

  _Block_object_dispose(&v84, 8);
}

void sub_1001EC310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001EC39C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1001EC3B4()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_10078B170;
  v8 = qword_10078B170;
  if (!qword_10078B170)
  {
    v1 = sub_1001ED178();
    v6[3] = dlsym(v1, "_ASCLockupKeyIcon");
    qword_10078B170 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_1001EDBCC();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id sub_1001EC4B8()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_10078B1B8;
  v8 = qword_10078B1B8;
  if (!qword_10078B1B8)
  {
    v1 = sub_1001ED178();
    v6[3] = dlsym(v1, "_ASCLockupKeySubgenres");
    qword_10078B1B8 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_1001EDBCC();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1001EC5BC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v60 = a3;
  v63 = v4;
  v62 = [v4 mutableCopy];
  v5 = sub_1001EC3B4();
  v6 = [v4 objectForKeyedSubscript:v5];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2050000000;
  v7 = qword_10078B1D0;
  v77 = qword_10078B1D0;
  if (!qword_10078B1D0)
  {
    v69 = _NSConcreteStackBlock;
    v70 = 3221225472;
    v71 = sub_1001ED93C;
    v72 = &unk_100756D08;
    v73 = &v74;
    sub_1001ED93C(&v69);
    v7 = v75[3];
  }

  v8 = v7;
  _Block_object_dispose(&v74, 8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v4 objectForKeyedSubscript:@"icon"];
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v11 = qword_10078B1D8;
    v77 = qword_10078B1D8;
    if (!qword_10078B1D8)
    {
      v69 = _NSConcreteStackBlock;
      v70 = 3221225472;
      v71 = sub_1001ED994;
      v72 = &unk_100756D08;
      v73 = &v74;
      v12 = sub_1001ED178();
      v13 = dlsym(v12, "ASCArtworkTemplateKeyWidth");
      *(v73[1] + 24) = v13;
      qword_10078B1D8 = *(v73[1] + 24);
      v11 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v11)
    {
      goto LABEL_37;
    }

    v14 = *v11;
    v79[0] = v14;
    v80[0] = @"128";
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v15 = qword_10078B1E0;
    v77 = qword_10078B1E0;
    if (!qword_10078B1E0)
    {
      v69 = _NSConcreteStackBlock;
      v70 = 3221225472;
      v71 = sub_1001ED9E4;
      v72 = &unk_100756D08;
      v73 = &v74;
      v16 = sub_1001ED178();
      v17 = dlsym(v16, "ASCArtworkTemplateKeyHeight");
      *(v73[1] + 24) = v17;
      qword_10078B1E0 = *(v73[1] + 24);
      v15 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v15)
    {
      goto LABEL_37;
    }

    v18 = *v15;
    v79[1] = v18;
    v80[1] = @"128";
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v19 = qword_10078B1E8;
    v77 = qword_10078B1E8;
    if (!qword_10078B1E8)
    {
      v69 = _NSConcreteStackBlock;
      v70 = 3221225472;
      v71 = sub_1001EDA34;
      v72 = &unk_100756D08;
      v73 = &v74;
      v20 = sub_1001ED178();
      v21 = dlsym(v20, "ASCArtworkTemplateKeyCrop");
      *(v73[1] + 24) = v21;
      qword_10078B1E8 = *(v73[1] + 24);
      v19 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v19)
    {
      goto LABEL_37;
    }

    v22 = *v19;
    v79[2] = v22;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v23 = qword_10078B1F0;
    v77 = qword_10078B1F0;
    if (!qword_10078B1F0)
    {
      v69 = _NSConcreteStackBlock;
      v70 = 3221225472;
      v71 = sub_1001EDA84;
      v72 = &unk_100756D08;
      v73 = &v74;
      v24 = sub_1001ED178();
      v25 = dlsym(v24, "ASCArtworkCropBoundingBox");
      *(v73[1] + 24) = v25;
      qword_10078B1F0 = *(v73[1] + 24);
      v23 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v23)
    {
      goto LABEL_37;
    }

    v26 = *v23;
    v80[2] = v26;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v27 = qword_10078B1F8;
    v77 = qword_10078B1F8;
    if (!qword_10078B1F8)
    {
      v69 = _NSConcreteStackBlock;
      v70 = 3221225472;
      v71 = sub_1001EDAD4;
      v72 = &unk_100756D08;
      v73 = &v74;
      v28 = sub_1001ED178();
      v29 = dlsym(v28, "ASCArtworkTemplateKeyFormat");
      *(v73[1] + 24) = v29;
      qword_10078B1F8 = *(v73[1] + 24);
      v27 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v27)
    {
      goto LABEL_37;
    }

    v30 = *v27;
    v79[3] = v30;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v31 = qword_10078B200;
    v77 = qword_10078B200;
    if (!qword_10078B200)
    {
      v69 = _NSConcreteStackBlock;
      v70 = 3221225472;
      v71 = sub_1001EDB24;
      v72 = &unk_100756D08;
      v73 = &v74;
      v32 = sub_1001ED178();
      v33 = dlsym(v32, "ASCArtworkFormatPNG");
      *(v73[1] + 24) = v33;
      qword_10078B200 = *(v73[1] + 24);
      v31 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v31)
    {
LABEL_37:
      sub_1001EDBCC();
      __break(1u);
    }

    v81 = *v31;
    v34 = v81;
    v35 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];

    v36 = [v10 makeURLWithSubstitutions:v35];

    v37 = [v36 absoluteString];
    v38 = sub_1001EC3B4();
    [v62 setObject:v37 forKeyedSubscript:v38];
  }

  v39 = sub_1001EC4B8();
  v40 = [v4 objectForKeyedSubscript:v39];
  objc_opt_class();
  v41 = objc_opt_isKindOfClass();

  if (v41)
  {
    v64 = objc_opt_new();
    v42 = sub_1001EC4B8();
    v43 = [v4 objectForKeyedSubscript:v42];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v44 = v43;
    v45 = [v44 countByEnumeratingWithState:&v65 objects:v78 count:16];
    if (v45)
    {
      v46 = *v66;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v66 != v46)
          {
            objc_enumerationMutation(v44);
          }

          v48 = *(*(&v65 + 1) + 8 * i);
          v74 = 0;
          v75 = &v74;
          v76 = 0x2050000000;
          v49 = qword_10078B208;
          v77 = qword_10078B208;
          if (!qword_10078B208)
          {
            v69 = _NSConcreteStackBlock;
            v70 = 3221225472;
            v71 = sub_1001EDB74;
            v72 = &unk_100756D08;
            v73 = &v74;
            sub_1001EDB74(&v69);
            v49 = v75[3];
          }

          v50 = v49;
          _Block_object_dispose(&v74, 8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = v48;
            v52 = [v51 identifier];
            v53 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v52 intValue]);

            v54 = [MIStoreMetadataSubGenre alloc];
            v55 = [v51 name];

            v56 = [v54 initWithGenre:v55 genreID:v53];
            [v64 addObject:v56];
          }
        }

        v45 = [v44 countByEnumeratingWithState:&v65 objects:v78 count:16];
      }

      while (v45);
    }

    v57 = sub_1001EC4B8();
    [v62 setObject:v64 forKeyedSubscript:v57];
  }

  (*(*(a1 + 32) + 16))();
  v58 = *(*(a1 + 40) + 8);
  v59 = *(v58 + 40);
  *(v58 + 40) = 0;
}

Class sub_1001ECF68(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10078B118)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1001ED0AC;
    v4[4] = &unk_100756798;
    v4[5] = v4;
    v5 = off_100756D28;
    v6 = 0;
    qword_10078B118 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10078B118)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("GKScopedIdManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001EDBF0();
  }

  qword_10078B110 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001ED0AC()
{
  result = _sl_dlopen();
  qword_10078B118 = result;
  return result;
}

Class sub_1001ED120(uint64_t a1)
{
  sub_1001ED178();
  result = objc_getClass("ASCLockupViewGroup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10078B120 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1001EDC18();
    return sub_1001ED178();
  }

  return result;
}

uint64_t sub_1001ED178()
{
  v3[0] = 0;
  if (!qword_10078B128)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1001ED278;
    v3[4] = &unk_100756798;
    v3[5] = v3;
    v4 = off_100756D40;
    v5 = 0;
    qword_10078B128 = _sl_dlopen();
  }

  v0 = qword_10078B128;
  v1 = v3[0];
  if (!qword_10078B128)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1001ED278()
{
  result = _sl_dlopen();
  qword_10078B128 = result;
  return result;
}

Class sub_1001ED2EC(uint64_t a1)
{
  sub_1001ED178();
  result = objc_getClass("ASCAdamID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10078B130 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1001EDC40();
    return sub_1001ED344(v3);
  }

  return result;
}

Class sub_1001ED344(uint64_t a1)
{
  sub_1001ED178();
  result = objc_getClass("ASCLockupRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10078B138 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1001EDC68();
    return sub_1001ED39C(v3);
  }

  return result;
}

void *sub_1001ED39C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "ASCLockupKindApp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B140 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED3EC(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "ASCLockupContextAppDistributionInstall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B148 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED43C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyAdamID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B150 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED48C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyDeveloperName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B158 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED4DC(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyDeveloperId");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B160 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED52C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyWebDistributionDomains");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B168 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED57C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B170 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED5CC(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B178 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED61C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeySubtitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B180 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED66C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyShortName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B188 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED6BC(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeySupportUrl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B190 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED70C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyContentRatingsBySystem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B198 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED75C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyIsDistributor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED7AC(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyGenreName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED7FC(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyGenreID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED84C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeySubgenres");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED89C(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyAgeRating");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED8EC(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "_ASCLockupKeyAgeRatingValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1001ED93C(uint64_t a1)
{
  sub_1001ED178();
  result = objc_getClass("ASCArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10078B1D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1001EDC90();
    return sub_1001ED994(v3);
  }

  return result;
}

void *sub_1001ED994(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "ASCArtworkTemplateKeyWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001ED9E4(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "ASCArtworkTemplateKeyHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001EDA34(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "ASCArtworkTemplateKeyCrop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001EDA84(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "ASCArtworkCropBoundingBox");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001EDAD4(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "ASCArtworkTemplateKeyFormat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B1F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001EDB24(uint64_t a1)
{
  v2 = sub_1001ED178();
  result = dlsym(v2, "ASCArtworkFormatPNG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10078B200 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1001EDB74(uint64_t a1)
{
  sub_1001ED178();
  result = objc_getClass("ASCGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10078B208 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1001EDCB8();
    return sub_1001EDBCC();
  }

  return result;
}

uint64_t sub_1001EDBCC()
{
  dlerror();
  abort_report_np();
  return sub_1001EDBF0();
}

Swift::Int sub_1001EDD1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001EDD90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_1001EDDFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1001EDE28@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1001EDED8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10051D974();

  *a1 = v2;
  return result;
}

uint64_t sub_1001EDF1C()
{
  v0 = type metadata accessor for NWInterface.InterfaceType();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for NWInterface.InterfaceType.cellular(_:), v0);
  v4 = NWPath.usesInterfaceType(_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

BOOL sub_1001EE010(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = type metadata accessor for Logger();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NWInterface.InterfaceType();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkPath();
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NWPath.Status();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  NWPath.status.getter();
  (*(v12 + 104))(v15, enum case for NWPath.Status.satisfied(_:), v11);
  v18 = static NWPath.Status.== infix(_:_:)();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v19(v17, v11);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  sub_1001F0C90(a1, v10);
  if (NWPath.isConstrained.getter())
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = v41;
  (*(v5 + 104))(v7, enum case for NWInterface.InterfaceType.cellular(_:), v41);
  v22 = NWPath.usesInterfaceType(_:)();
  (*(v5 + 8))(v7, v21);
  v23 = v20 & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
  v24 = NWPath.isExpensive.getter();
  sub_1001F0CF4(v10);
  if (v24)
  {
    v25 = v23 | 4;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25 & v44;
  v27 = (v25 & v44) == v25;
  static Logger.general.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v30 = 136315650;
    v31 = sub_1001EE5E4(v25);
    v33 = sub_1002346CC(v31, v32, &v46);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v34 = sub_1001EE5E4(v44);
    v36 = sub_1002346CC(v34, v35, &v46);

    *(v30 + 14) = v36;
    *(v30 + 22) = 2080;
    if (v26 == v25)
    {
      v37 = 5457241;
    }

    else
    {
      v37 = 20302;
    }

    if (v26 == v25)
    {
      v38 = 0xE300000000000000;
    }

    else
    {
      v38 = 0xE200000000000000;
    }

    v39 = sub_1002346CC(v37, v38, &v46);

    *(v30 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "Current network %s allows %s: %s", v30, 0x20u);
    swift_arrayDestroy();
  }

  (*(v42 + 8))(v45, v43);
  return v27;
}

uint64_t sub_1001EE4AC()
{
  v0 = type metadata accessor for NWPath.Status();
  v1 = *(v0 - 8);
  v2 = (__chkstk_darwin)();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  NWPath.status.getter();
  (*(v1 + 104))(v4, enum case for NWPath.Status.satisfied(_:), v0);
  v7 = static NWPath.Status.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1001EE5E4(char a1)
{
  if ((a1 & 1) == 0)
  {
    if ((a1 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6._countAndFlagsBits = 1347962144;
    v6._object = 0xE400000000000000;
    String.append(_:)(v6);
    if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5._countAndFlagsBits = 1279607584;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  if ((a1 & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 2) != 0)
  {
LABEL_4:
    v2._countAndFlagsBits = 1464814624;
    v2._object = 0xE400000000000000;
    String.append(_:)(v2);
  }

LABEL_5:
  v3._countAndFlagsBits = 23840;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  return 91;
}

uint64_t sub_1001EE688(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for NWPath();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001EE7A4, 0, 0);
}

uint64_t sub_1001EE7A4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  v4 = NWPathMonitor.init()();
  v0[9] = v4;
  sub_1001F0FB0();
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v3);
  v5 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v1, v3);
  NWPathMonitor.start(queue:)();

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1001EE918;
  v7 = v0[5];
  v8 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v7, 0, 0, 0x746E6572727563, 0xE700000000000000, sub_1001F0FFC, v4, v8);
}

uint64_t sub_1001EE918()
{

  return _swift_task_switch(sub_1001EEA14, 0, 0);
}

uint64_t sub_1001EEA14()
{
  v1 = v0[2];
  (*(v0[4] + 32))(v1, v0[5], v0[3]);
  v2 = type metadata accessor for NetworkPath();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  NWPathMonitor.cancel()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001EEAF4(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_10077E688);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  return NWPathMonitor.pathUpdateHandler.setter();
}

uint64_t sub_1001EEC34(uint64_t a1)
{
  v2 = type metadata accessor for NWPath();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1001F0C48(&qword_10077E688);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001EED14()
{
  v0 = type metadata accessor for NWInterface.InterfaceType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWPath.Status();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v32 - v9;
  NWPath.status.getter();
  (*(v5 + 104))(v8, enum case for NWPath.Status.satisfied(_:), v4);
  v11 = static NWPath.Status.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if ((v11 & 1) == 0)
  {
    return 0x616C696176616E75;
  }

  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = 0x80000001006C3ED0;
  String.append(_:)(v13);
  v14 = NWPath.isExpensive.getter();
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19._object = 0x80000001006C3EF0;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);
  v20 = NWPath.isConstrained.getter();
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 0x6C756C6C6563202CLL;
  v25._object = 0xED0000203D207261;
  String.append(_:)(v25);
  (*(v1 + 104))(v3, enum case for NWInterface.InterfaceType.cellular(_:), v0);
  v26 = NWPath.usesInterfaceType(_:)();
  (*(v1 + 8))(v3, v0);
  if (v26)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v26)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  v29 = v28;
  String.append(_:)(*&v27);

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  return v32[0];
}

uint64_t sub_1001EF068@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for NWPath.Status();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  NWPath.status.getter();
  (*(v3 + 104))(v6, enum case for NWPath.Status.satisfied(_:), v2);
  v9 = static NWPath.Status.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  result = (v10)(v8, v2);
  *a1 = v9 & 1;
  return result;
}

uint64_t sub_1001EF1B4@<X0>(_BYTE *a1@<X8>)
{
  result = NWPath.isConstrained.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001EF1E4@<X0>(_BYTE *a1@<X8>)
{
  result = NWPath.isExpensive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001EF214@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for NWInterface.InterfaceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for NWInterface.InterfaceType.cellular(_:), v2);
  v6 = NWPath.usesInterfaceType(_:)();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6 & 1;
  return result;
}

uint64_t sub_1001EF31C(uint64_t a1)
{
  v20 = a1;
  v1 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_1001F0C48(&qword_10077E658);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19 - v6);
  v8 = sub_1001F0C48(&qword_10077E660);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  *v7 = 1;
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v4);
  type metadata accessor for NetworkPath();
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v7, v4);
  static TaskPriority.utility.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
  (*(v9 + 16))(v12, v14, v8);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v20;
  (*(v9 + 32))(&v17[v16], v12, v8);

  sub_1004F8754(0x4D6B726F7774654ELL, 0xEE00726F74696E6FLL, v3, &unk_10069D7C8, v17);

  sub_1001F0F48(v3);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_1001EF664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for NetworkPath();
  v5[5] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10077E668);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E670);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for NWPathMonitor.Iterator();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001EF7F0, 0, 0);
}

uint64_t sub_1001EF7F0()
{

  NWPathMonitor.makeAsyncIterator()();
  v1 = sub_1001F05C4(&qword_10077E678, &type metadata accessor for NWPathMonitor.Iterator);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100002DD8;
  v3 = v0[9];
  v4 = v0[10];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_1001EF8E0()
{
  *(v0 + 16) = *(v0 + 112);
  sub_1001F0C48(&unk_10077F940);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1001EF96C(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E850, type metadata accessor for BGSystemTaskSchedulerError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001EF9D8(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E850, type metadata accessor for BGSystemTaskSchedulerError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001EFA44(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E880, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_1001EFB54()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001EFBBC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1001EFC34(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1001EFCB4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1001EFCF8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1001EFD34()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1001EFD88()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_1001EFE0C(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E880, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001EFE78(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E880, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001EFEE4(void *a1, uint64_t a2)
{
  v4 = sub_1001F05C4(&qword_10077E880, type metadata accessor for BGSystemTaskSchedulerError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001EFF74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F05C4(&qword_10077E880, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1001F0000(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E8A0, type metadata accessor for AMSError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001F006C(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E8A0, type metadata accessor for AMSError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001F00D8(void *a1, uint64_t a2)
{
  v4 = sub_1001F05C4(&qword_10077E8A0, type metadata accessor for AMSError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001F0168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F05C4(&qword_10077E8A0, type metadata accessor for AMSError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1001F01E4()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001F0244()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1001F02B0()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1001F0338(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E8D8, type metadata accessor for URLResourceKey);
  v3 = sub_1001F05C4(&qword_10077E8E0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001F03F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F05C4(&qword_10077E880, type metadata accessor for BGSystemTaskSchedulerError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001F0478(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E648, type metadata accessor for AMSBuyParamProperty);
  v3 = sub_1001F05C4(&qword_10077E650, type metadata accessor for AMSBuyParamProperty);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001F05C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F0654(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E7E8, type metadata accessor for AMSError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001F06C0(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E7E8, type metadata accessor for AMSError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001F072C(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E8A0, type metadata accessor for AMSError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001F0798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F05C4(&qword_10077E8A0, type metadata accessor for AMSError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001F081C(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E8B8, type metadata accessor for AMSMediaTaskPlatform);
  v3 = sub_1001F05C4(&qword_10077E8C0, type metadata accessor for AMSMediaTaskPlatform);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001F08D8@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1001F0920(uint64_t a1)
{
  v2 = sub_1001F05C4(&qword_10077E8C8, type metadata accessor for FLUserInfoProperty);
  v3 = sub_1001F05C4(&qword_10077E8D0, type metadata accessor for FLUserInfoProperty);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001F09DC()
{
  sub_1001F0C48(&qword_10077E640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069D410;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  v1 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_getAtKeyPath();
    swift_getAtKeyPath();

    if (v5 != v4)
    {
LABEL_13:
      v2 = 0;
      goto LABEL_14;
    }

    if (v1)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_19;
      }
    }

    swift_getAtKeyPath();
    swift_getAtKeyPath();

    if (v5 != v4)
    {
      goto LABEL_13;
    }

    if (v1)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_19;
      }
    }

    swift_getAtKeyPath();
    swift_getAtKeyPath();

    if (v5 != v4)
    {
      goto LABEL_13;
    }

    if (v1)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {

      goto LABEL_18;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
  swift_getAtKeyPath();
  swift_getAtKeyPath();

  v2 = v5 ^ v4 ^ 1;
LABEL_14:

  return v2 & 1;
}

uint64_t sub_1001F0C48(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001F0C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkPath();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F0CF4(uint64_t a1)
{
  v2 = type metadata accessor for NetworkPath();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001F0D50(uint64_t a1)
{
  v4 = *(sub_1001F0C48(&qword_10077E660) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_1001EF664(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001F0E54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001F0F48(uint64_t a1)
{
  v2 = sub_1001F0C48(&unk_100780380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001F0FB0()
{
  result = qword_10077E680;
  if (!qword_10077E680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077E680);
  }

  return result;
}

uint64_t sub_1001F1004(uint64_t a1)
{
  sub_1001F0C48(&qword_10077E688);

  return sub_1001EEC34(a1);
}

__n128 sub_1001F10E4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001F10F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F1110(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_1001F1178(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001F118C(uint64_t a1, int a2)
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

uint64_t sub_1001F11AC(uint64_t result, int a2, int a3)
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

uint64_t sub_1001F128C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F12AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1001F12F8()
{
  result = type metadata accessor for NWPath();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001F1364()
{
  result = qword_10077E7A8;
  if (!qword_10077E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E7A8);
  }

  return result;
}

unint64_t sub_1001F13BC()
{
  result = qword_10077E7B0;
  if (!qword_10077E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E7B0);
  }

  return result;
}

unint64_t sub_1001F1414()
{
  result = qword_10077E7B8;
  if (!qword_10077E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E7B8);
  }

  return result;
}

unint64_t sub_1001F146C()
{
  result = qword_10077E7C0;
  if (!qword_10077E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E7C0);
  }

  return result;
}

unint64_t sub_1001F1700()
{
  result = qword_10077E810;
  if (!qword_10077E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E810);
  }

  return result;
}

void sub_1001F1A38(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1001F1D7C()
{
  v1[138] = v0;
  v2 = type metadata accessor for AppInstallRequestType();
  v1[139] = v2;
  v1[140] = *(v2 - 8);
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[148] = v3;
  v1[149] = *(v3 - 8);
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();

  return _swift_task_switch(sub_1001F1F4C, 0, 0);
}

uint64_t sub_1001F1F4C()
{
  v123 = v0;
  receiver = v0[69].receiver;
  static Logger.install.getter();
  sub_1001F5A04(receiver, &v0[1]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1001F5A3C(receiver);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[69].receiver;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v4[12];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Starting background asset relay task", v5, 0xCu);
    sub_1000032A8(v6, &qword_10077F920);
  }

  super_class = v0[79].super_class;
  v10 = v0[74].super_class;
  v11 = v0[74].receiver;
  v12 = v0[73].super_class;
  v13 = v0[70].receiver;
  v14 = v0[69].super_class;
  v15 = v0[69].receiver;

  v16 = *(v10 + 1);
  v0[80].receiver = v16;
  v0[80].super_class = ((v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v16(super_class, v11);
  v17 = *(v15[11] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v18 = *(*v17 + class metadata base offset for ManagedBuffer + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v19));
  v121 = v18;
  v118 = v17 + *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 28);
  v119 = v13[2];
  v119(v12, v118 + v18, v14);
  os_unfair_lock_unlock((v17 + v19));
  v20 = v13[11];
  v21 = v20(v12, v14);
  v116 = v16;
  v117 = v19;
  v111 = v20;
  v108 = enum case for AppInstallRequestType.restore(_:);
  v109 = enum case for AppInstallRequestType.promotion(_:);
  v110 = enum case for AppInstallRequestType.automaticInstall(_:);
  if (v21 == enum case for AppInstallRequestType.automaticInstall(_:) || v21 == enum case for AppInstallRequestType.promotion(_:) || v21 == enum case for AppInstallRequestType.restore(_:))
  {
    v22 = v0[69].receiver;
    static Logger.install.getter();
    sub_1001F5A04(v22, &v0[59].super_class);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    sub_1001F5A3C(v22);
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[79].receiver;
    v27 = v0[74].receiver;
    if (v25)
    {
      v114 = v0[79].receiver;
      v28 = v0[73].receiver;
      v29 = v0[70].receiver;
      log = v23;
      v30 = v0[69].super_class;
      v112 = v0[74].receiver;
      v104 = v0[69].receiver;
      v31 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v122 = v107;
      *v31 = 138412546;
      v32 = v104[12];
      *(v31 + 4) = v32;
      *v105 = v32;
      *(v31 + 12) = 2082;
      v33 = v32;
      os_unfair_lock_lock((v17 + v117));
      v119(v28, v118 + v121, v30);
      os_unfair_lock_unlock((v17 + v117));
      LOBYTE(v104) = v24;
      v34 = AppInstallRequestType.rawValue.getter();
      v36 = v35;
      v29[1](v28, v30);
      v37 = sub_1002346CC(v34, v36, &v122);

      *(v31 + 14) = v37;
      _os_log_impl(&_mh_execute_header, log, v104, "[%@] Skipping unsupported install type: %{public}s", v31, 0x16u);
      sub_1000032A8(v105, &qword_10077F920);

      sub_10000710C(v107);

      v19 = v117;

      v38 = v114;
      v39 = v112;
    }

    else
    {

      v38 = v26;
      v39 = v27;
    }

    v16(v38, v39);
  }

  else
  {
    (*(v0[70].receiver + 1))(v0[73].super_class, v0[69].super_class);
  }

  v40 = v0[73].receiver;
  v41 = v0[72].super_class;
  v42 = v0[70].receiver;
  v43 = v0[69].super_class;
  os_unfair_lock_lock((v17 + v19));
  v119(v40, v118 + v121, v43);
  os_unfair_lock_unlock((v17 + v19));
  v44 = v42[13];
  v113 = enum case for AppInstallRequestType.automaticUpdate(_:);
  v44(v41);
  sub_1001F6398(&qword_10077E8F0, &type metadata accessor for AppInstallRequestType);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = v42[1];
  v46(v41, v43);
  v115 = v46;
  v46(v40, v43);
  if ((v45 & 1) != 0 || sub_1001F5A6C() != 2)
  {
    v69 = v0[71].receiver;
    v70 = v0[70].super_class;
    v71 = v0[69].super_class;
    os_unfair_lock_lock((v17 + v117));
    v119(v69, v118 + v121, v71);
    os_unfair_lock_unlock((v17 + v117));
    (v44)(v70, v113, v71);
    sub_1001F6398(&qword_10077E8F8, &type metadata accessor for AppInstallRequestType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v72 = v0[71].receiver;
    v73 = v0[70].super_class;
    v74 = v0[69].super_class;
    if (v0[67].receiver == v0[68].receiver && v0[67].super_class == v0[68].super_class)
    {
      v115(v0[70].super_class, v0[69].super_class);
      v115(v72, v74);

      v75 = v116;
    }

    else
    {
      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v115(v73, v74);
      v115(v72, v74);

      v75 = v116;
      if ((v76 & 1) == 0)
      {
        if (sub_1001F5A6C() == 2)
        {
LABEL_30:
          v93 = swift_task_alloc();
          v0[83].super_class = v93;
          *v93 = v0;
          *(v93 + 1) = sub_1001F3324;

          return sub_1001F3BC0();
        }

        p_super_class = &v0[76].super_class;
        v88 = v0[69].receiver;
        static Logger.install.getter();
        sub_1001F5A04(v88, &v0[46].super_class);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();
        sub_1001F5A3C(v88);
        if (os_log_type_enabled(v79, v80))
        {
          v89 = v0[69].receiver;
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *v82 = 138412290;
          v90 = v89[12];
          *(v82 + 4) = v90;
          *v83 = v90;
          v91 = v90;
          v86 = "[%@] Not showing transparency sheet as it has been shown before";
          goto LABEL_24;
        }

LABEL_28:
        v87 = *p_super_class;
        goto LABEL_29;
      }
    }

    p_super_class = &v0[77];
    v78 = v0[69].receiver;
    static Logger.install.getter();
    sub_1001F5A04(v78, &v0[53]);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    sub_1001F5A3C(v78);
    if (os_log_type_enabled(v79, v80))
    {
      v81 = v0[69].receiver;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412290;
      v84 = v81[12];
      *(v82 + 4) = v84;
      *v83 = v84;
      v85 = v84;
      v86 = "[%@] Not showing transparency sheet for an automatic update";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v79, v80, v86, v82, 0xCu);
      v87 = *p_super_class;
      sub_1000032A8(v83, &qword_10077F920);

LABEL_29:
      v92 = v0[74].receiver;

      v75(v87, v92);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v47 = v0[72].receiver;
  v48 = v0[71].super_class;
  v49 = v0[69].super_class;
  os_unfair_lock_lock((v17 + v117));
  v119(v47, v118 + v121, v49);
  os_unfair_lock_unlock((v17 + v117));
  v119(v48, v47, v49);
  v50 = v111(v48, v49);
  if (v50 == v110)
  {
LABEL_14:
    v51 = v0[69].receiver;
    v115(v0[72].receiver, v0[69].super_class);
    static Logger.install.getter();
    sub_1001F5A04(v51, &v0[20].super_class);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    sub_1001F5A3C(v51);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v0[69].receiver;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = v54[12];
      *(v55 + 4) = v57;
      *v56 = v57;
      v58 = v57;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%@] Not proceeding, Not user initiated", v55, 0xCu);
      sub_1000032A8(v56, &qword_10077F920);
    }

    v59 = v0[78].receiver;
    v60 = v0[74].receiver;
    v61 = v0[69].receiver;

    v116(v59, v60);
    static Logger.install.getter();
    sub_1001F5A04(v61, &v0[27]);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    sub_1001F5A3C(v61);
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v0[69].receiver;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      v67 = v64[12];
      v120 = v0[77].super_class;
      *(v65 + 4) = v67;
      *v66 = v67;
      v68 = v67;
      _os_log_impl(&_mh_execute_header, v62, v63, "[%@] Finished background asset relay task", v65, 0xCu);
      sub_1000032A8(v66, &qword_10077F920);
    }

    else
    {
      v120 = v0[77].super_class;
    }

    v101 = v0[80].receiver;
    v102 = v0[74].receiver;

    v101(v120, v102);

    v103 = v0->super_class;

    return v103();
  }

  if (v50 != enum case for AppInstallRequestType.install(_:))
  {
    if (v50 == v113)
    {
      goto LABEL_14;
    }

    if (v50 != enum case for AppInstallRequestType.update(_:) && v50 != v109)
    {
      if (v50 != v108 && v50 != enum case for AppInstallRequestType.deviceVPP(_:) && v50 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v50 != enum case for AppInstallRequestType.userVPP(_:) && v50 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v50 != enum case for AppInstallRequestType.upp(_:) && v50 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_14;
    }
  }

  v95 = v0[69].receiver;
  v115(v0[72].receiver, v0[69].super_class);
  v96 = v95[12];
  v0[81].receiver = v96;
  v97 = type metadata accessor for BATransparencySheetTask();
  v98 = objc_allocWithZone(v97);
  *&v98[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_remoteHandle] = 0;
  *&v98[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_logKey] = v96;
  v0[66].receiver = v98;
  v0[66].super_class = v97;
  v99 = v96;
  v0[81].super_class = objc_msgSendSuper2(v0 + 66, "init");
  v100 = swift_task_alloc();
  v0[82].receiver = v100;
  *v100 = v0;
  v100[1] = sub_1001F2E58;

  return sub_10047EDB8();
}