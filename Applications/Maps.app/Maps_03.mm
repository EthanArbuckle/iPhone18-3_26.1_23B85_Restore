uint64_t sub_1000B30EC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B313C()
{

  sub_10004E3D0(v0 + 40);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000B3184()
{
  sub_10004E3D0(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000B31CC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1000CE6B8(&qword_10190EBC8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000CE6B8(&qword_10191B7B8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1000B3350(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1000CE6B8(&qword_10190EBC8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000CE6B8(&qword_10191B7B8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000B3518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&unk_10190EB28);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000CE6B8(&qword_10191B9C8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000B3620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000CE6B8(&unk_10190EB28);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000CE6B8(&qword_10191B9C8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000B3780()
{
  v1 = (type metadata accessor for VisitHistoryUIDatePickerWrapper(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = sub_1000CE6B8(&unk_10190EB28);
  v6(v0 + v3 + *(v7 + 36), v5);
  v8 = v0 + v3 + v1[7];

  v9 = sub_1000CE6B8(&qword_10191B9C8);
  v6(v8 + *(v9 + 32), v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B3918()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3958()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B3A00(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000B3A8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3AC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3AFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3B44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3B84(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10191C4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B3BEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3C2C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B3C6C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B3CB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3CF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3D28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3DC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3E00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3E38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B3F14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000B3F5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000B3F94@<D0>(double *a1@<X8>)
{
  sub_1001DF920();
  EnvironmentValues.subscript.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1000B4034()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4074()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B40B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B40FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000B4194(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1003939E4(v1);
}

void sub_1000B42B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100395A88(v1);
}

uint64_t sub_1000B430C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B435C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4394()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B43CC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1000B441C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000B4540(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000B4664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarDetailRowViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B46D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarDetailRowViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B4784@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B486C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B48B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B48F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B4930()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B4978()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B49B8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B4A08()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4A40()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B4AC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4AFC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000B4B54()
{
  type metadata accessor for Button();
  sub_1000D6664(&qword_10191D6D8);
  swift_getWitnessTable();
  sub_1003A6CD4();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for BackgroundUIView();
  return swift_getWitnessTable();
}

uint64_t sub_1000B4C74()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000B4CF4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B4D50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4D88()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1000B4EE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4F24()
{
  v1 = (type metadata accessor for NearbyTransitGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_1000CE6B8(&qword_10191DA40);
  (*(*(v6 - 8) + 8))(v5, v6);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000B507C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190FB80);
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
      v13 = type metadata accessor for Text.Measurements();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000B51AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000CE6B8(&qword_10190FB80);
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
      v13 = type metadata accessor for Text.Measurements();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000B5304(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B53B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B54A0()
{
  v1 = type metadata accessor for NearbyTransitCollapsedLinesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  swift_unknownObjectRelease();
  v6 = *(v1 + 20);
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = type metadata accessor for Text.Measurements();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000B5620(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190FB80);
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
      v13 = sub_1000CE6B8(&qword_1019152C8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000B575C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000CE6B8(&qword_10190FB80);
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
      v13 = sub_1000CE6B8(&qword_1019152C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000B5898(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190FB80);
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
      v13 = type metadata accessor for Font.TextStyle();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000B59C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000CE6B8(&qword_10190FB80);
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
      v13 = type metadata accessor for Font.TextStyle();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000B5AF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190FB80);
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
      v13 = sub_1000CE6B8(&qword_10191DA40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000B5C34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000CE6B8(&qword_10190FB80);
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
      v13 = sub_1000CE6B8(&qword_10191DA40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000B5DBC()
{
  v1 = type metadata accessor for NearbyTransitDepartureView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  swift_unknownObjectRelease();

  v6 = *(v1 + 24);
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  sub_1000CE6B8(&qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B5FC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6000()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6038()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000B6090()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6114()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B614C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B6194()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B61D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B6214()
{
  v1 = sub_1000CE6B8(&qword_10191E938);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B62A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&qword_101910C18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000B63D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000CE6B8(&qword_101910C18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000B6514()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 72));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000B6574(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for InterfaceIdiom();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B6620(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InterfaceIdiom();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B66C8()
{
  sub_1000D6664(&qword_10191F070);
  sub_1003CAD3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B6730()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6768()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000B67E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6838(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B68E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B6990()
{
  v1 = (type metadata accessor for HomePinnedItemCarouselRow() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B6A90()
{
  v1 = (type metadata accessor for HomePinnedItemCarouselRow() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B6BD0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6C08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B6C48(char *a1, uint64_t a2, int *a3)
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

  v8 = sub_1000CE6B8(&qword_10190CA38);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1000CE6B8(&qword_10190FB80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_1000CE6B8(&qword_1019152C8);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[11]];

  return v15(v16, a2, v14);
}

char *sub_1000B6DD8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000CE6B8(&qword_10190CA38);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000CE6B8(&qword_10190FB80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_1000CE6B8(&qword_1019152C8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000B6F98(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190FB80);
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
      v13 = sub_1000CE6B8(&qword_1019152C8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000B70D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000CE6B8(&qword_10190FB80);
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
      v13 = sub_1000CE6B8(&qword_1019152C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000B7210(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190CA38);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B72CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190CA38);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B7390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191F9D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000B7418@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 32);
  *a2 = v2;
  return v2;
}

uint64_t sub_1000B7448@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10005E838(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000B74AC()
{
  sub_1000D6664(&qword_10191F990);
  sub_1003E3B80();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B754C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B758C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B75DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B7628()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B766C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000B76A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 peopleSuggesterRank];
  *a2 = v4;
  return result;
}

id sub_1000B76EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionOfMatch];
  *a2 = v4;
  return result;
}

uint64_t sub_1000B7720()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B7770()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B77B8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B7884()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B78BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B78FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7954()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B798C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000B79C8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1003F5CFC(v1);
}

uint64_t sub_1000B7A30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B7A8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1003F49D0(v1, v2);
}

uint64_t sub_1000B7B3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B7BA8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7BE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7C18()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B7C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
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
    v8 = sub_1000CE6B8(&qword_1019203D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B7D14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_1019203D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B7DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101920490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7E38()
{
  v1 = (type metadata accessor for CarSearchResultsView() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_100406840(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = v0 + v4 + v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v9 = sub_1000CE6B8(&qword_1019203D8);

  v10 = *(v9 + 40);
  if (!v8(v5 + v10, 1, v6))
  {
    (*(v7 + 8))(v5 + v10, v6);
  }

  return _swift_deallocObject(v0, ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_1000B8014()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B806C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B8164()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B8218()
{
  v1 = sub_1000CE6B8(&qword_101920800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B82E8()
{
  v1 = sub_1000CE6B8(&qword_101920800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B837C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000B83DC()
{
  swift_unknownObjectRelease();

  if ((*(v0 + 48) - 1) >= 2)
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B858C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B85CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B866C()
{

  sub_1003E4F30(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000B86E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000B8738(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10041A8F4(v1);
}

uint64_t sub_1000B87D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B8810()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B8870()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000B88B0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B8908()
{
  sub_10004E3D0(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B8940()
{
  sub_10004E3D0(v0 + 16);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1000B898C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B89C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B8A00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B8A38()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B8A80()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B8AC8()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000B8B60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B8BC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B8BFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B8C5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B8CA4()
{
  v1 = type metadata accessor for RecentCellRowViewModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 24))
  {
    sub_10004E3D0(v0 + v3);
  }

  v5 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3 + *(v1 + 20);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  swift_unknownObjectRelease();
  sub_1000D87F0(*(v6 + *(v8 + 24)), *(v6 + *(v8 + 24) + 8));

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_1000B8E44(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190CA30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B8F00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190CA30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B9008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101921020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B90F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B91CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B9204()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B923C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000B9318()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000B93F4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000B95A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000B9644()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B9694()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B96CC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000B9728()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B9780@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B9800()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B98C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B98FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B9934()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B9978()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B99BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_1000B9AD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000B9BE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B9C24()
{
  v1 = (type metadata accessor for VisitsLoader.VisitData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  sub_1000D41B4(*(v6 + v1[8]), *(v6 + v1[8] + 8));

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_1000B9D90()
{
  v1 = sub_1000CE6B8(&unk_1019219F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B9E24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B9E68()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B9EA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B9EE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B9F24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B9F5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B9F94()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000B9FD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BA084()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BA0E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA11C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA154()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000BA1AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA1E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BA224()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA25C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190FB80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1000BA318(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190FB80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000BA3C8()
{
  v1 = (type metadata accessor for CarHomeContentListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[15];
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000BA514()
{

  if (*(v0 + 88))
  {
    sub_10004E3D0(v0 + 64);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000BA574()
{
  v1 = (type metadata accessor for CarHomeContentListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[15];
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v0 + v4 + 72))
  {
    sub_10004E3D0(v0 + v4 + 48);
  }

  return _swift_deallocObject(v0, v4 + 88, v2 | 7);
}

uint64_t sub_1000BA700()
{
  v1 = (type metadata accessor for CarHomeContentListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[15];
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000BA864()
{
  v1 = (type metadata accessor for CarHomeContentListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for CarRecentRowViewModel();
  v6 = *(*(v5 - 8) + 80);
  v16 = *(*(v5 - 8) + 64);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = v0 + v3;

  v9 = v1[15];
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v7, v11);
  v13 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  swift_unknownObjectRelease();
  sub_1000D87F0(*(v0 + v7 + *(v13 + 24)), *(v0 + v7 + *(v13 + 24) + 8));
  v12(v0 + v7 + *(v5 + 20), v11);

  v14 = v0 + v7 + *(v5 + 28);
  if (*(v14 + 24))
  {
    sub_10004E3D0(v14);
  }

  return _swift_deallocObject(v0, v7 + v16, v2 | v6 | 7);
}

uint64_t sub_1000BAAEC()
{
  sub_1000D6664(&qword_101921C78);
  sub_1000D6664(&qword_101921C70);
  sub_1000D6664(&qword_101921C68);
  sub_1000414C8(&qword_101921CA0, &qword_101921C68);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BAC40()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000BACBC()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BAD14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BAD4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BAD8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BADC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BAE08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10046B0EC(v1, v2);
}

uint64_t sub_1000BAE60()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BAE98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BAEF0()
{
  sub_1000D6664(&qword_101922248);
  sub_1000414C8(&qword_101922270, &qword_101922248);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BAFC8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BB000()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BB048()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BB0A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BB0EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BB144()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BB184()
{
  type metadata accessor for GuideCell();
  sub_1004711DC(&qword_101911FB0, &type metadata accessor for GuideCell);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BB380(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1004713AC(v1, v2);
}

uint64_t sub_1000BB478()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BB4B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BB4E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BB558()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000BB590()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BB5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UIListContentConfiguration();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000BB6A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UIListContentConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000BB760(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190CA30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000BB81C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190CA30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000BB8E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BB95C()
{
  v1 = (type metadata accessor for UserGuidesListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[7];
  v7 = type metadata accessor for EditMode();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_1000CE6B8(&qword_10190CA30);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000BBB58()
{
  type metadata accessor for PlaceCell();
  sub_10047BBFC(&qword_10190D640, &type metadata accessor for PlaceCell);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BBBE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BBC20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BBCE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BBD68()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BBDA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BBE48()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BBE90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BBEC8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BBF08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BBF40()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BBF78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BBFB0()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000BBFE8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BC030()
{

  sub_1000F1230(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000BC1A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BC200()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BC25C()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BC2A4()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BC2F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BC334()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BC37C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BC3EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BC424()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BC47C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000BC4D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BC514()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BC5D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BC618()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BC650()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BC690()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BC6D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BC718()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BC768()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BC7D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BC814()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BC854()
{
  sub_1000D6664(&qword_101923188);
  sub_1000414C8(&qword_1019231A0, &qword_101923188);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BC8F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BC930()
{
  swift_unknownObjectRelease();
  sub_1000F1230(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000BC99C()
{
  v1 = sub_1000CE6B8(&qword_1019232C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000BCA30()
{
  sub_1000D6664(&qword_1019232B0);
  sub_1000D6664(&qword_101918640);
  sub_1004A57D0();
  sub_1002BAADC();
  sub_1004A581C();
  swift_getOpaqueTypeConformance2();
  sub_1001DF878();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BCB14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000BCB78()
{

  sub_1000F1230(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000BCBEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BCC30()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BCC70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000BCCC0()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000BCCFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BCD34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BCD74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BCDAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BCDEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BCE9C()
{
  sub_1000D6664(&qword_101923840);
  type metadata accessor for ModifiedContent();
  sub_1004BF380();
  return swift_getWitnessTable();
}

uint64_t sub_1000BCF14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BCF4C()
{

  return _swift_deallocObject(v0, 42, 7);
}

uint64_t sub_1000BCF8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BCFEC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BD024()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BD05C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BD09C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BD0F4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BD14C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BD198()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BD250()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BD288()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BD2F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BD330()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BD378@<X0>(uint64_t *a1@<X8>)
{
  result = NearbyTileViewModel.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000BD3E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BD424()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BD45C()
{
  v1 = type metadata accessor for NearbyTileViewModel();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000BD530()
{
  sub_1000D6664(&qword_101923B88);
  sub_1000D6664(&qword_101923B80);
  sub_1000D6664(&qword_101923B78);
  sub_1004D49D4(&qword_101923BC0, &qword_101923B78, &unk_10120B7A0, sub_1004D4BAC);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BD654()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000BD6F4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
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
      v13 = sub_1000CE6B8(&qword_10190FB80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000BD824(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
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
      v13 = sub_1000CE6B8(&qword_10190FB80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000BD9A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BD9E4()
{

  sub_10004E3D0(v0 + 48);
  swift_unknownObjectWeakDestroy();
  if (*(v0 + 120))
  {
    sub_10004E3D0(v0 + 96);
  }

  if (*(v0 + 160))
  {
    sub_10004E3D0(v0 + 136);
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_1000BDA78()
{
  sub_1000D6664(&qword_101923D78);
  sub_1000414C8(&qword_101923DB8, &qword_101923D78);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BDB18()
{
  sub_10004E3D0(v0 + 24);
  swift_unknownObjectWeakDestroy();
  if (*(v0 + 96))
  {
    sub_10004E3D0(v0 + 72);
  }

  if (*(v0 + 136))
  {
    sub_10004E3D0(v0 + 112);
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_1000BDB90()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000BDBD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BDC10()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BDC48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BDD34()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000BDD74()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000BDE28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BDE68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000CE6B8(&qword_10190CA30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000BDF24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000CE6B8(&qword_10190CA30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000BE038@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shouldShowActionBar.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000BE0A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BE16C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BE1A4()
{
  v1 = (type metadata accessor for RouteItemsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[7];
  v7 = type metadata accessor for EditMode();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_1000CE6B8(&qword_10190CA30);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000BE320()
{
  v1 = (type metadata accessor for RouteItemsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[7];
  v7 = type metadata accessor for EditMode();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_1000CE6B8(&qword_10190CA30);

  return _swift_deallocObject(v0, v4 + 24, v2 | 7);
}

uint64_t sub_1000BE4A8@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = EnvironmentValues.listCellAccessoryTapHandler.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_100186B18;
  a1[1] = result;
  return result;
}

uint64_t sub_1000BE5F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BE658()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BE690()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BE7FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BE884()
{
  if (*(v0 + 40))
  {
    sub_10004E3D0(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BE8C4()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000BE90C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BE94C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BE994()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BE9D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BEA0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BEA68()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000BEAA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BEAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019248C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BEB64(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_1019248C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BEBCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BEC04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BECF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100501440(v1, v2);
}

void sub_1000BEE00(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100502B90(v1);
}

uint64_t sub_1000BEE30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BEEF8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000BEF38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BEF70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BEFA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BEFE8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000BF030(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1005072D8(v1);
}

void sub_1000BF088(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10050B5BC(v1, &OBJC_IVAR____TtC4Maps22RouteItemImageProvider__placeholderImage);
}

void sub_1000BF134(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10050B5BC(v1, &OBJC_IVAR____TtC4Maps22RouteItemImageProvider__image);
}

uint64_t sub_1000BF188()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000BF1F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10050BA50(v1);
}

uint64_t sub_1000BF220()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BF258()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000BF2B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000BF308()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000BF348()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BF384()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BF3BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BF3F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BF4A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BF4DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000BF528(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  MapsUIImageCacheImageProvider.uiImage.setter(v1);
}

void sub_1000BF5B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10051C5D8(v1);
}

uint64_t sub_1000BF5E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BF61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1000CE6B8(&unk_10190EB90);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000BF6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1000CE6B8(&unk_10190EB90);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000BF728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1000CE6B8(&unk_10190EB90);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000BF7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1000CE6B8(&unk_10190EB90);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000BF898()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BFC1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BFC54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BFC8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BFCCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BFD04()
{
  v1 = type metadata accessor for Calendar();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000BFDDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BFF44()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000BFF80(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100532DD8(v1);
}

uint64_t sub_1000BFFB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BFFE8()
{
  sub_10004E3D0(v0 + 24);
  swift_unknownObjectWeakDestroy();
  if (*(v0 + 96))
  {
    sub_10004E3D0(v0 + 72);
  }

  if (*(v0 + 136))
  {
    sub_10004E3D0(v0 + 112);
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_1000C006C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C00A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C00FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C0158()
{
  v1 = sub_1000CE6B8(&qword_1019115B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000C0270()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C02A8()
{
  v1 = (type metadata accessor for MyRecentsDataProvider.Recent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  swift_unknownObjectRelease();
  sub_1000D87F0(*(v0 + v3 + v1[8]), *(v0 + v3 + v1[8] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000C03BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C0408()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C0440()
{
  if (*(v0 + 16))
  {
  }

  sub_10004E3D0(v0 + 48);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000C0498()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000C0528()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C0560()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C0598()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C060C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000C06B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C0764()
{
  v1 = (type metadata accessor for HomeUserGuidesCarouselView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000C086C()
{
  v1 = (type metadata accessor for HomeUserGuidesCarouselView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000C09E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C0A2C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C0A64()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C0AA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000C0B08()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C0B78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C0BC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C0C04()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C0C3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C0CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&qword_10190F6E0);
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

uint64_t sub_1000C0D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000CE6B8(&qword_10190F6E0);
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

uint64_t sub_1000C0E58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000C0F04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C0FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchPlaceRatingRowViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000C1014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchPlaceRatingRowViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000C10BC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100553B7C(v1);
}

void sub_1000C10F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100553E5C(v1);
}

uint64_t sub_1000C1128()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C1160()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C1218()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C1250()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C12A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C12D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C1314()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C135C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlaceRowItem.ContentType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000C13C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlaceRowItem.ContentType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000C1468()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000C14C0()
{
  sub_1000D6664(&qword_101927090);
  sub_1000D6664(&qword_101927088);
  sub_1000414C8(&qword_1019270C0, &qword_101927088);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000C15E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C1628()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C1670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019273B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C1754()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C178C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C17CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C1804()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C1844()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C1894()
{
  type metadata accessor for PlaceCell();
  sub_10056E82C(&qword_10190D640, &type metadata accessor for PlaceCell);
  return swift_getOpaqueTypeConformance2();
}

void *sub_1000CD91C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1000CD948@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t *sub_1000CD974@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1000CD9D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1000CDAFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  if (![v2 isSuccess])
  {
    goto LABEL_9;
  }

  if ([v2 value])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v12 = 0u;
    v13 = 0u;
  }

  v14[0] = *v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    sub_1000D2DB0();
    if (swift_dynamicCast())
    {
      [v11 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      [v12[0] clearFindMyData];
      v3 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:objc_msgSend(v12[0] isPlaceHolderPlace:{"geoMapItem"), 0}];

      swift_unknownObjectRelease();
      return v3;
    }

LABEL_9:

    goto LABEL_11;
  }

  sub_100024F64(v14, &unk_101908380);
LABEL_11:
  v4 = *(v0 + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_location);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  [v5 coordinate];
  v7 = v6;
  [v5 coordinate];
  v9 = [objc_allocWithZone(CLLocation) initWithLatitude:v7 longitude:v8];
  v3 = [objc_allocWithZone(MKMapItem) initWithCLLocation:v9];

  return v3;
}

uint64_t sub_1000CDD54(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  if ([a1 isKindOfClass:swift_getObjCClassFromMetadata()])
  {
    v11 = swift_dynamicCastClassUnconditional();
    v12 = *(v2 + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_handle);
    v13 = *(v11 + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_handle);
    v14 = *(v5 + 16);
    v14(v10, v12 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v4);
    v14(v7, v13 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v4);
    v15 = static Handle.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v10, v4);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1000CDF68(void *a1, uint64_t a2, void (*a3)(id))
{
  v5 = [a1 error];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  swift_getErrorValue();
  if (sub_1000CE0F0(v18) == qword_101916260 && v7 == off_101916268)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  swift_getErrorValue();
  if (sub_1000CE270(v17))
  {
LABEL_10:

LABEL_11:
    v10 = a1;
    goto LABEL_12;
  }

  MyHandleWaypointRequest = FindMyHandleWaypointRequestError.NSError.getter();
  v16 = _convertErrorToNSError(_:)();
  v10 = [objc_opt_self() resultWithError:v16];

LABEL_12:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult);
    *(Strong + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult) = v10;
    v13 = Strong;
    v14 = v10;
  }

  a3(v10);
}

uint64_t sub_1000CE0F0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1, v3);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  v9 = [v8 domain];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

id sub_1000CE270(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1, v3);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  v9 = [v8 code];

  return v9;
}

id FindMyHandleWaypointRequestError.NSError.getter()
{
  sub_1000CE664();
  if (!_getErrorEmbeddedNSError<A>(_:)())
  {
    swift_allocError();
  }

  v0 = _convertErrorToNSError(_:)();

  v1 = [v0 domain];

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  if (!_getErrorEmbeddedNSError<A>(_:)())
  {
    swift_allocError();
  }

  v2 = _convertErrorToNSError(_:)();

  v3 = [v2 code];

  sub_1000CE6B8(&qword_101922E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v13._object = 0x8000000101216A40;
  v6._object = 0x80000001012169C0;
  v7._object = 0x80000001012169F0;
  v13._countAndFlagsBits = 0xD000000000000031;
  v6._countAndFlagsBits = 0xD000000000000022;
  v7._countAndFlagsBits = 0x1000000000000049;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, qword_1019600D8, v7, v13);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v8;
  sub_1000D0AA8(inited);
  swift_setDeallocating();
  sub_100024F64(inited + 32, &qword_101906970);
  v9 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithDomain:v1 code:v3 userInfo:isa];

  return v11;
}

unint64_t sub_1000CE664()
{
  result = qword_101906960;
  if (!qword_101906960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101906960);
  }

  return result;
}

uint64_t sub_1000CE6B8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000CE874(void *a1)
{
  sub_10032785C();
  v3 = String._bridgeToObjectiveC()();

  [a1 setSearchString:v3];

  result = [a1 setOrigin:3];
  v5 = *(v1 + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1000D2C6C;
    *(v7 + 24) = v6;
    v17 = sub_1000D2C74;
    v18 = v7;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1000CEB98;
    v16 = &unk_1016019A8;
    v8 = _Block_copy(&v13);
    v9 = v5;
    v10 = a1;

    v17 = UIView.annotateView(with:);
    v18 = 0;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1000CEBE8;
    v16 = &unk_1016019D0;
    v11 = _Block_copy(&v13);

    [v9 withValue:v8 orError:v11];
    _Block_release(v8);

    _Block_release(v11);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000CEAD8(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(GEOLatLng) init];
  if (v5)
  {
    [a1 coordinate];
    [v5 setLat:?];
    [a1 coordinate];
    [v5 setLng:v4];
    [a2 setCoordinate:v5];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000CEB98(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1000CEBE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1000CED48(double a1)
{
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_handle);
  v8 = sub_100327DCC();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    (*(v4 + 16))(v6, v7 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v3);
    Handle.identifier.getter();
    (*(v4 + 8))(v6, v3);
    v10 = String._bridgeToObjectiveC()();

    v9 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v10];
  }

  v11 = [v9 avatarImageWithSize:0 scale:128.0 rightToLeft:{128.0, a1}];

  return v11;
}

id CollectionPickerContaineeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int FindMyHandleWaypointRequestError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000CF300()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id variable initialization expression of PlaceCardLibraryOperationsCoordinator.savedStateObservers()
{
  v0 = objc_allocWithZone(GEOObserverHashTable);

  return [v0 initWithProtocol:&OBJC_PROTOCOL___MULibraryAccessProviderObserver queue:0];
}

id variable initialization expression of PlaceCardLibraryOperationsCoordinator.dataOperationsProvider()
{
  type metadata accessor for MapsSyncStore();
  v0 = static MapsSyncStore.sharedStore.getter();
  v1 = type metadata accessor for LibraryDataOperationsProvider();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t variable initialization expression of PlaceCardLibraryOperationsCoordinator.storeSubscriptionTypes()
{
  sub_100024578();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E1D40;
  *(v0 + 32) = type metadata accessor for FavoriteItem();
  *(v0 + 40) = type metadata accessor for CollectionPlaceItem();
  *(v0 + 48) = type metadata accessor for Collection();
  return v0;
}

uint64_t variable initialization expression of VisitedPlacesCountsManager.dataProvider()
{
  type metadata accessor for VisitHistoryHomeDataProvider();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for MapsSyncStore();
  v1 = static MapsSyncStore.sharedStore.getter();
  type metadata accessor for VisitedPlacesDataOperationsProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 112) = v2;
  *(v0 + 120) = 2;
  return v0;
}

id variable initialization expression of VisitedPlacesCountsManager.observers()
{
  v0 = objc_allocWithZone(GEOObserverHashTable);

  return [v0 initWithProtocol:&OBJC_PROTOCOL____TtP4Maps34VisitedPlacesCountsManagerObserver_ queue:0];
}

uint64_t variable initialization expression of VisitsLoaderConfigurationStorage.$__lazy_storage_$_plistURL@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id variable initialization expression of UserProfileLinkLibraryProvider.observers()
{
  v0 = objc_allocWithZone(GEOObserverHashTable);

  return [v0 initWithProtocol:&OBJC_PROTOCOL___UserProfileLinkDataProvidingObserver queue:0];
}

uint64_t variable initialization expression of LibraryRecentsDataProvider.storeSubscriptionTypes()
{
  sub_100024578();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E1D50;
  *(v0 + 32) = type metadata accessor for FavoriteItem();
  *(v0 + 40) = type metadata accessor for CollectionPlaceItem();
  *(v0 + 48) = type metadata accessor for Collection();
  *(v0 + 56) = type metadata accessor for CachedCuratedCollection();
  *(v0 + 64) = type metadata accessor for UserRoute();
  *(v0 + 72) = type metadata accessor for CuratedCollection();
  return v0;
}

id variable initialization expression of LibraryItemsCountManager.observers()
{
  v0 = objc_allocWithZone(GEOObserverHashTable);

  return [v0 initWithProtocol:&OBJC_PROTOCOL____TtP4Maps32LibraryItemsCountManagerObserver_ queue:0];
}

uint64_t sub_1000CF7F8(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  sub_100024578();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E1D60;
  *(v4 + 32) = a1(0);
  *(v4 + 40) = a2(0);
  return v4;
}

uint64_t sub_1000CF890(uint64_t (*a1)(void))
{
  sub_100024578();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E1D30;
  *(v2 + 32) = a1(0);
  return v2;
}

uint64_t sub_1000CF900(uint64_t a1, uint64_t a2)
{
  result = static Float._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_1000CF954(uint64_t a1, uint64_t a2)
{
  v3 = static Float._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1000CF9AC@<X0>(_DWORD *a1@<X8>)
{
  result = static Float._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_1000CF9DC(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1000CFA30(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1000CFA88@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_1000CFAB0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000CFB28(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000CFBA8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000CFBEC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000CFC28()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000CFC7C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

Swift::Int sub_1000CFCF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000CFD38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000CFD7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000CFDC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000CFE08()
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

uint64_t sub_1000CFE90()
{
  sub_1000D29E8(&qword_101908720, type metadata accessor for OpenExternalURLOptionsKey);
  sub_1000D29E8(&qword_101908728, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000CFF4C()
{
  sub_1000D29E8(&qword_1019086E0, type metadata accessor for URLResourceKey);
  sub_1000D29E8(&qword_1019086E8, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

float sub_1000D0008@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000D0014()
{
  sub_1000D29E8(&qword_101908710, type metadata accessor for UILayoutPriority);
  sub_1000D29E8(&qword_101908718, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000D00D0()
{
  sub_1000D29E8(&qword_1019086F0, type metadata accessor for NSKeyValueChangeKey);
  sub_1000D29E8(&qword_1019086F8, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double sub_1000D018C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000D0198()
{
  sub_1000D29E8(&qword_101908730, type metadata accessor for Weight);
  sub_1000D29E8(&qword_101908738, type metadata accessor for Weight);
  sub_1000D395C();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000D0260()
{
  sub_1000D29E8(&qword_10190EEE0, type metadata accessor for Key);
  sub_1000D29E8(&qword_101908770, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000D031C()
{
  sub_1000D29E8(&qword_101908700, type metadata accessor for InfoKey);
  sub_1000D29E8(&qword_101908708, type metadata accessor for InfoKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000D03D8()
{
  sub_1000D29E8(&qword_101908758, type metadata accessor for AttributeName);
  sub_1000D29E8(&unk_101908760, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000D0494@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000D04DC()
{
  sub_1000D29E8(&qword_101908748, type metadata accessor for TraitKey);
  sub_1000D29E8(&qword_101908750, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_1000D05A0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t sub_1000D05DC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

void sub_1000D0600()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

id sub_1000D067C(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult] = 0;
  *&v2[OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_handle] = a1;
  if (a2)
  {
    v6 = a1;
    v7 = a2;
    [v7 coordinate];
    if (!CLLocationCoordinate2DIsValid(v11))
    {

      a2 = 0;
    }
  }

  else
  {
    v8 = a1;
  }

  *&v2[OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_location] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_1000D0728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v38 = a2;
  v39 = a1;
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v40 = &v38 - v8;
  v9 = type metadata accessor for Handle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_location);
  if (v13)
  {
    v14 = v13;
    [v14 coordinate];
    v16 = v15;
    [v14 coordinate];
    v18 = v17;

    v19 = v16;
    v20 = v18;
  }

  else
  {
    v19 = 0xC066800000000000;
    v20 = 0xC066800000000000;
  }

  v21 = *(v10 + 16);
  v21(v12, *(v6 + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_handle) + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v9);
  MyHandleMapServiceTicket = type metadata accessor for FindMyHandleMapServiceTicket();
  v23 = objc_allocWithZone(MyHandleMapServiceTicket);
  *&v23[OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_ticket] = 0;
  v23[OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_isCancelled] = 0;
  v21(&v23[OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_handle], v12, v9);
  v24 = &v23[OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_coordinate];
  *v24 = v19;
  *(v24 + 1) = v20;
  v24[16] = 0;
  v44.receiver = v23;
  v44.super_class = MyHandleMapServiceTicket;
  v25 = objc_msgSendSuper2(&v44, "init");
  (*(v10 + 8))(v12, v9);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v28 = v38;
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v41;
  v29 = type metadata accessor for TaskPriority();
  v30 = v40;
  (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v32 = v39;
  v31[4] = v25;
  v31[5] = v32;
  v31[6] = sub_1000D2CB8;
  v31[7] = v27;
  v34 = v42;
  v33 = v43;
  v31[8] = v42;
  v31[9] = v33;
  v35 = v32;

  v36 = v25;
  sub_1000CD9D4(v34);
  sub_10020AAE4(0, 0, v30, &unk_1011E2EB0, v31);

  return v36;
}

unint64_t sub_1000D0AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908408);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2DFC(v4, &v13, &qword_101906970);
      v5 = v13;
      v6 = v14;
      result = sub_100297040(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000D2BE0(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t _s4Maps32FindMyHandleWaypointRequestErrorO16errorDescriptionSSSgvg_0()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x8000000101216A40;
  v0._object = 0x80000001012169C0;
  v1._object = 0x80000001012169F0;
  v3._countAndFlagsBits = 0xD000000000000031;
  v0._countAndFlagsBits = 0xD000000000000022;
  v1._countAndFlagsBits = 0x1000000000000049;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v0, 0, qword_1019600D8, v1, v3)._countAndFlagsBits;
}

unint64_t sub_1000D0C9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&unk_10190BAD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_10029709C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D0D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908168);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2DFC(v4, &v11, &qword_101908170);
      v5 = v11;
      result = sub_100298E68(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000D2BE0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D0EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_10190BB30);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2DFC(v4, v13, &qword_101907F90);
      result = sub_100297058(v13);
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
      result = sub_1000D2BE0(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D1000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&unk_10190BA60);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100297040(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D1104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908038);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100298E68();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1000D11F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908028);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2DFC(v4, &v11, &qword_101908030);
      v5 = v11;
      result = sub_100298E68(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000D2BE0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1000D131C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908018);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2DFC(v4, &v11, &qword_101908020);
      v5 = v11;
      result = sub_100298E68(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000D2BE0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1000D1458(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1000CE6B8(&unk_1019080E0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_100298E64(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_100298E64(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000D158C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908188);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v17 = i[1];
      v18 = *i;
      v8 = *(i - 4);
      sub_1000D2C54(v5, v6, v7);
      v9 = v18;

      result = sub_100296ED8(v8, v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 32 * result;
      *v12 = v8;
      *(v12 + 8) = v5;
      *(v12 + 16) = v6;
      *(v12 + 24) = v7;
      v13 = (v3[7] + 32 * result);
      *v13 = v18;
      v13[1] = v17;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1000D1700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908288);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2DFC(v4, &v18, &qword_101908290);
      v5 = v18;
      v6 = v19;
      v7 = v20;
      v8 = v21;
      result = sub_100296ED8(v18, v19, v20, v21);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 32 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v11 + 24) = v8;
      v12 = v3[7] + 40 * result;
      v13 = v22;
      v14 = v23;
      *(v12 + 32) = v24;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D1850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908280);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100297040(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D1968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908778);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100297040(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D1A64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908100);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *i;

      v10 = v7;
      result = sub_100297040(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 16 * result);
      *v14 = v10;
      v14[1] = v8;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D1B7C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_1019080F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000CE6B8(&qword_10190BAF0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2DFC(v9, v5, &unk_1019080F0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100297040(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Handle();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D1D7C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1000CE6B8(&qword_1019081A0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_100298E64(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_100298E64(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000D1E78(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_101908070);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000CE6B8(&unk_10190BAC0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2DFC(v9, v5, &unk_101908070);
      result = sub_1002974F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for VisitsLoader.VisitData(0);
      result = sub_1000D2BF0(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D205C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000CE6B8(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_100297040(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D2190(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = sub_1000CE6B8(a2);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_1000CE6B8(a4);
    v12 = static _DictionaryStorage.allocate(capacity:)();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      sub_1000D2DFC(v14, v10, a2);
      result = sub_1002972F8(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = type metadata accessor for UUID();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D2384(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000CE6B8(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_100297040(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

uint64_t sub_1000D24CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1000D2508()
{
  result = qword_1019069E8;
  if (!qword_1019069E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019069E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindMyHandleWaypointRequestError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FindMyHandleWaypointRequestError(_WORD *result, int a2, int a3)
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

__n128 sub_1000D28FC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000D29E8(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_1000D2BE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000D2BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitsLoader.VisitData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D2C54(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1000D2CC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003AC4C;

  return sub_10026E0D8(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000D2DB0()
{
  result = qword_101914500;
  if (!qword_101914500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101914500);
  }

  return result;
}

uint64_t sub_1000D2DFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000CE6B8(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D2EFC(uint64_t a1, int a2)
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

uint64_t sub_1000D2F1C(uint64_t result, int a2, int a3)
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

unint64_t sub_1000D395C()
{
  result = qword_101908740;
  if (!qword_101908740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101908740);
  }

  return result;
}

id sub_1000D3E78()
{
  result = [objc_allocWithZone(SyncedBookmarkRepr) init];
  if (result)
  {
    v2 = result;
    [result setType:3];
    v3 = String._bridgeToObjectiveC()();
    [v2 setTitle:v3];

    v4 = (v0 + OBJC_IVAR____TtC4Maps29MapRegionActivityDataProvider_mapRegion);
    v5 = *v4;
    [v2 setRegionLatitude:*v4];
    v6 = v4[1];
    [v2 setRegionLongitude:v6];
    [v2 setRegionLatitudeDelta:v4[2]];
    [v2 setRegionLongitudeDelta:v4[3]];
    [v2 setLatitude:v5];
    [v2 setLongitude:v6];
    v7 = [v2 data];
    if (v7)
    {
      v8 = v7;
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MapRegionActivityDataProvider()
{
  result = qword_101909728;
  if (!qword_101909728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D40F0()
{
  result = type metadata accessor for URL();
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

uint64_t sub_1000D41A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000D41B4(a1, a2);
  }

  return a1;
}

uint64_t sub_1000D41B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1000D4208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  ObjectType = swift_getObjectType();
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v8[OBJC_IVAR____TtC4Maps29MapRegionActivityDataProvider_mapRegion];
  *v22 = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  *&v8[OBJC_IVAR____TtC4Maps29MapRegionActivityDataProvider_camera] = a1;
  v23 = &v8[OBJC_IVAR____TtC4Maps29MapRegionActivityDataProvider_title];
  *v23 = a2;
  *(v23 + 1) = a3;
  v24 = objc_opt_self();
  v25 = a1;

  [v25 centerCoordinate];
  v27 = v26;
  v29 = v28;
  [v25 centerCoordinateDistance];
  v31 = v30;
  [v25 heading];
  v33 = v32;
  [v25 pitch];
  result = [v24 URLForMapFrameWithCenter:a4 distance:0 heading:v27 pitch:v29 mapType:v31 trackingMode:v33 span:{v34, a7, a8}];
  if (result)
  {
    v36 = result;

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v19 + 32))(&v8[OBJC_IVAR____TtC4Maps29MapRegionActivityDataProvider_url], v21, v18);
    v37.receiver = v8;
    v37.super_class = ObjectType;
    return objc_msgSendSuper2(&v37, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D4440()
{
  swift_getKeyPath();
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000D44EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__cellSnapshots;

  v5 = sub_1001EFBCC(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_1000D4714()
{
  swift_getKeyPath();
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__observers);

  return v1;
}

void sub_1000D4828(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__observers;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__observers);
  sub_1000CE6B8(&qword_101909888);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_1000D4998@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__observers);
  *a2 = v4;

  return v4;
}

uint64_t sub_1000D4A58(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active;
  if (*(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active) != v2)
  {
    v5 = *(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_markedLocationDataProvider);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [v5 setActive:*(v1 + v4)];
    v6 = *(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataProvider);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [v6 setActive:*(v1 + v4)];
    return sub_1000D4C6C();
  }

  return result;
}

uint64_t sub_1000D4BC4()
{
  swift_getKeyPath();
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active);
}

uint64_t sub_1000D4C6C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active] == 1)
  {
    v11 = sub_1000D5700();
    v18 = v3;
    v12 = *&v1[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataFilter];
    v17[1] = *&v1[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataFilterQueue];
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v11;
    v13[4] = v1;
    aBlock[4] = sub_1000D6658;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_1016021C8;
    v14 = _Block_copy(aBlock);
    v15 = v12;
    v16 = v1;
    static DispatchQoS.unspecified.getter();
    v19 = &_swiftEmptyArrayStorage;
    sub_1000D6850(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500);
    sub_10004EC58(&qword_1019097E0, &unk_10190B500);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v18 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_1000D50F0(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active) = v2;

    return sub_1000D4A58(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000D522C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active);
  *(a1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active) = a2;
  return sub_1000D4A58(v3);
}

uint64_t sub_1000D52DC(void *a1)
{
  v23 = a1;
  ObjectType = swift_getObjectType();
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataFilter;
  *&v1[v7] = [objc_allocWithZone(RecentsDataFilter) initWithSearchMode:1 filterPredicate:0];
  v26 = OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataFilterQueue;
  v8 = sub_100014C84(0, &qword_10190B4F0);
  v24 = "_$observationRegistrar";
  v25 = v8;
  static DispatchQoS.unspecified.getter();
  v29 = &_swiftEmptyArrayStorage;
  sub_1000D6850(&qword_101909890, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000CE6B8(&unk_101917C30);
  sub_10004EC58(&qword_1019098A0, &unk_101917C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  *&v1[v26] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_markedLocationDataProvider;
  *&v1[v9] = [objc_allocWithZone(MarkedLocationDataProvider) init];
  v10 = OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataProvider;
  *&v1[v10] = [objc_allocWithZone(RecentsDataProvider) init];
  v11 = OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_numInlineItems;
  result = GEOConfigGetUInteger();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *&v1[v11] = result;
    *&v1[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__cellSnapshots] = &_swiftEmptyArrayStorage;
    v13 = [objc_allocWithZone(GEOObserverHashTable) initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    *&v1[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__observers] = v13;
    v1[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active] = 0;
    ObservationRegistrar.init()();
    v14 = v23;
    *&v1[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_sectionIdentifierPath] = v23;
    v28.receiver = v1;
    v28.super_class = ObjectType;
    v15 = v14;
    v16 = objc_msgSendSuper2(&v28, "init");
    v17 = *&v16[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_markedLocationDataProvider];
    v18 = v16;
    v19 = [v17 observers];
    [v19 registerObserver:v18];

    v20 = [*&v18[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataProvider] observers];
    [v20 registerObserver:v18];

    return v18;
  }

  return result;
}

char *sub_1000D5700()
{
  v11 = &_swiftEmptyArrayStorage;
  v1 = [*(v0 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_markedLocationDataProvider) markedLocation];
  if (v1)
  {
    v2 = v1;
    v10 = sub_100014C84(0, &qword_10190E160);
    *&v9 = v2;
    v3 = sub_10005CED0(0, 1, 1, &_swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_10005CED0((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    sub_1000D2BE0(&v9, &v3[32 * v5 + 32]);
    v11 = v3;
  }

  v6 = [*(v0 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataProvider) recents];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005CDD8(v7);
  return v11;
}

uint64_t sub_1000D5878(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = [a1 filteredRecents:v11.super.isa excludingDuplicatesOfEntries:isa];

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = *(a3 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_numInlineItems);
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    swift_unknownObjectRelease();
    sub_100415D10(v14, v14 + 32, 0, v11.super.isa);
    v20 = v26;
    goto LABEL_12;
  }

  v16 = *(v14 + 16);
  if (v16 >= v15)
  {
    v16 = *(a3 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_numInlineItems);
  }

  v17 = 2 * v16;
  if (v15)
  {
    v11.super.isa = (v17 + 1);
  }

  else
  {
    v11.super.isa = 1;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = &_swiftEmptyArrayStorage;
  }

  v19 = v18[2];

  if (v19 != v11.super.isa >> 1)
  {
    goto LABEL_15;
  }

  v20 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v20)
  {
    v20 = &_swiftEmptyArrayStorage;
LABEL_12:
    swift_unknownObjectRelease();
  }

  sub_100014C84(0, &qword_10190B4F0);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v20;
  aBlock[4] = sub_1000D66AC;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101602240;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000D6850(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_10004EC58(&qword_1019097E0, &unk_10190B500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v30 + 8))(v7, v5);
  return (*(v28 + 8))(v10, v29);
}

uint64_t sub_1000D5CA0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D5CD8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for VisitsLoader.VisitData(0);
    return a2;
  }

  return result;
}

void sub_1000D5D6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    v27[0] = v4;
    sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v4[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active] == 1)
    {
      swift_getKeyPath();
      v27[0] = v4;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__cellSnapshots;
      v18 = *(*&v4[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__cellSnapshots] + 16);
      v5 = *(a2 + 16);
      if (v5)
      {
        v20 = OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_sectionIdentifierPath;
        v21 = &_swiftEmptyArrayStorage;
        v6 = a2 + 32;
        v7 = &type metadata for Any;
        while (1)
        {
          sub_10004E374(v6, v27);
          sub_10004E374(v27, v26);
          sub_1000CE6B8(&unk_101909850);
          if (swift_dynamicCast())
          {
            v8 = v7;
            v9 = [v25[0] _maps_diffableDataSourceIdentifier];
            if (!v9)
            {
              swift_unknownObjectRelease();
LABEL_14:
              sub_10004E3D0(v27);
              v7 = v8;
              goto LABEL_6;
            }

            v10 = v9;
            v11 = [*&v4[v20] identifierPathByAppendingIdentifier:v9];

            swift_unknownObjectRelease();
            if (!v11)
            {
              goto LABEL_14;
            }

            sub_10004E374(v27, v26);
            sub_100014C84(0, &qword_10190E160);
            v7 = v8;
            if (swift_dynamicCast())
            {
              if ([v22 type] == 3)
              {
                v23[0] = v22;
                v12 = 3;
LABEL_20:
                v24 = v12;
                sub_1000D671C(v23, v25);
                v13 = sub_1000D6778();
                v14 = swift_allocObject();
                sub_1000D671C(v25, v14 + 16);
                sub_10004E3D0(v27);
                v26[0] = v26[2];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v21 = sub_100355784(0, *(v21 + 2) + 1, 1, v21);
                }

                v16 = *(v21 + 2);
                v15 = *(v21 + 3);
                if (v16 >= v15 >> 1)
                {
                  v21 = sub_100355784((v15 > 1), v16 + 1, 1, v21);
                }

                *(v21 + 2) = v16 + 1;
                v17 = &v21[48 * v16];
                *(v17 + 4) = v11;
                *(v17 + 5) = v14;
                *(v17 + 3) = v26[0];
                *(v17 + 8) = &type metadata for HomeListTwoLinesCellModel;
                *(v17 + 9) = v13;
                v7 = v8;
                goto LABEL_6;
              }
            }

            else
            {
              sub_10004E374(v27, v26);
              sub_1000CE6B8(&qword_101909860);
              if (swift_dynamicCast())
              {
                v23[0] = v22;
                v12 = 4;
                goto LABEL_20;
              }

              sub_10004E374(v27, v26);
              sub_100014C84(0, &qword_101909868);
              if (swift_dynamicCast())
              {
                v23[0] = v22;
                v12 = 5;
                goto LABEL_20;
              }
            }

            memset(v23, 0, sizeof(v23));
            v24 = -1;
            sub_10004E3D0(v27);

            sub_1000D66B4(v23);
          }

          else
          {
            sub_10004E3D0(v27);
          }

LABEL_6:
          v6 += 32;
          if (!--v5)
          {
            goto LABEL_27;
          }
        }
      }

      v21 = &_swiftEmptyArrayStorage;
LABEL_27:
      sub_1000D44EC(v21);
      swift_getKeyPath();
      v27[0] = v4;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((v18 != 0) == (*(*&v4[v19] + 16) == 0))
      {
        sub_1000D6250();
      }
    }
  }
}

uint64_t sub_1000D6250()
{
  v1 = v0;
  swift_getKeyPath();
  v8[0] = v0;
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = [*(v0 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__observers) allObservers];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_10004E374(v5, v8);
      sub_1000CE6B8(&qword_101909880);
      if (swift_dynamicCast())
      {
        if ([v7 respondsToSelector:"homeDataProvidingObjectDidUpdate:"])
        {
          [v7 homeDataProvidingObjectDidUpdate:v1];
        }

        swift_unknownObjectRelease();
      }

      v5 += 32;
      --v4;
    }

    while (v4);
  }
}

uint64_t type metadata accessor for HomeRecentsCellSnapshotProvider()
{
  result = qword_1019097B8;
  if (!qword_1019097B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D6544()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000D6614()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__cellSnapshots) = *(v0 + 24);
}

uint64_t sub_1000D6664(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000D66B4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101909870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D6778()
{
  result = qword_101909878;
  if (!qword_101909878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909878);
  }

  return result;
}

void sub_1000D67CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__observers);
  *(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__observers) = v2;
  v4 = v2;
}

uint64_t sub_1000D680C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active);
  *(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active) = *(v0 + 24);
  return sub_1000D4A58(v2);
}

uint64_t sub_1000D6850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D692C()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_1000D86BC();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1000D6C30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong handleDismissAction:Strong];
  }
}

void sub_1000D6C90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000D6D00(a1, a2);
  }
}

void sub_1000D6D00(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v5 - 8);
  v7 = &v69 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v20 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v21 = [v20 stringValue];
    goto LABEL_7;
  }

  v13 = Strong;
  v14 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v15 = a1 + *(v14 + 24);
  v16 = *v15;
  v17 = *(v15 + 8);
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      if (v17 == 3)
      {
        [v13 recentsViewController:v2 didSelectTransitLine:objc_msgSend(swift_unknownObjectRetain() zoomToMapRegion:{"lineItem"), 1}];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v18 = v16;
        v19 = 3;
      }

      else
      {
        v29 = [v16 placeCollection];
        [v13 recentsViewController:v2 didSelectCuratedGuide:v29];
        swift_unknownObjectRelease();

        v18 = v16;
        v19 = 4;
      }

      sub_1000D87F0(v18, v19);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (!v17)
  {
LABEL_13:
    v23 = *(a1 + *(v14 + 20));
    v73[3] = swift_getObjectType();
    v73[0] = v23;
    swift_unknownObjectRetain();
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10004E3D0(v73);
    v25 = [objc_opt_self() searchFieldItemWithObject:v24];
    swift_unknownObjectRelease();
    if (v25)
    {
      sub_1000CE6B8(&qword_101909930);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1011E1D30;
      *(inited + 32) = 0xD00000000000001ALL;
      *(inited + 40) = 0x8000000101219AE0;
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInt:9];
      v27 = sub_1000D0C88(inited);
      swift_setDeallocating();
      sub_100024F64(inited + 32, &qword_101909938);
      sub_100268C4C(v27);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v13 recentsViewController:v2 didSelectSearchItem:v25 userInfo:isa];

LABEL_15:
      swift_unknownObjectRelease();
LABEL_18:
      v30 = 2064;
LABEL_19:
      v31 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
      v32 = [v31 stringValue];

      if (!v32)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = String._bridgeToObjectiveC()();
      }

      [objc_opt_self() captureUserAction:v30 target:257 value:v32];
LABEL_22:

      return;
    }

    swift_unknownObjectRelease();
    v36 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v37 = [v36 stringValue];
LABEL_26:
    v32 = v37;

    if (!v32)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = String._bridgeToObjectiveC()();
    }

    [objc_opt_self() captureUserAction:2064 target:257 value:v32];
    goto LABEL_22;
  }

  v33 = [swift_unknownObjectRetain() endWaypoint];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = [v34 route];
    [v13 recentsViewController:v2 didSelectRoute:v35];

    sub_1000D87F0(v16, 1u);
    swift_unknownObjectRelease();
    v20 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v21 = [v20 stringValue];
    goto LABEL_7;
  }

  v38 = [objc_opt_self() searchFieldItemsForRouteHistoryEntry:v16];
  if (!v38)
  {
    sub_1000D87F0(v16, 1u);
    goto LABEL_15;
  }

  v39 = v38;
  v70 = v9;
  sub_100014C84(0, &unk_101909910);
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = [v16 navigationWasInterrupted];
  v71 = v40;
  if (v41)
  {
    goto LABEL_33;
  }

  if (v40 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 3)
    {
      goto LABEL_33;
    }

LABEL_36:
    v72 = 0;
    goto LABEL_37;
  }

  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
  {
    goto LABEL_36;
  }

LABEL_33:
  v72 = [v16 transportType];
LABEL_37:
  v42 = objc_allocWithZone(DirectionItem);
  v43 = Array._bridgeToObjectiveC()().super.isa;
  v44 = [v42 initWithItems:v43 transportType:v72];

  v72 = v44;
  if (v44)
  {
    if ([v16 navigationWasInterrupted])
    {
      v45 = [v16 automobileOptions];
      v69 = objc_opt_self();
      v46 = [v69 standardUserDefaults];
      v47 = [objc_allocWithZone(DrivePreferences) initWithAutomobileOptions:v45 defaults:v46];

      [v72 setDrivePreferences:v47];
      v48 = [v16 transitOptions];
      v49 = [v69 standardUserDefaults];
      v50 = [objc_allocWithZone(TransitPreferences) initWithTransitOptions:v48 defaults:v49];

      [v72 setTransitPreferences:v50];
      v51 = [v16 walkingOptions];
      v52 = [v69 standardUserDefaults];
      v53 = [objc_allocWithZone(WalkPreferences) initWithWalkingOptions:v51 defaults:v52];

      [v72 setWalkPreferences:v53];
      v54 = [v16 cyclingOptions];
      v55 = [v69 standardUserDefaults];
      v56 = [objc_allocWithZone(CyclePreferences) initWithCyclingOptions:v54 defaults:v55];

      [v72 setCyclePreferences:v56];
    }

    type metadata accessor for MapsSyncObject();
    if (swift_dynamicCastClass())
    {
      v69 = v2;
      dispatch thunk of MapsSyncObject.identifier.getter();
      v57 = v70;
      if ((*(v70 + 48))(v7, 1, v8) != 1)
      {
        (*(v57 + 32))(v11, v7, v8);
        sub_1000CE6B8(&qword_101922E10);
        v58 = swift_initStackObject();
        *(v58 + 16) = xmmword_1011E1D60;
        *(v58 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v58 + 40) = v59;
        v60 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:1];
        v61 = v71;
        *(v58 + 72) = sub_100014C84(0, &qword_101909920);
        *(v58 + 48) = v60;
        *(v58 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v58 + 88) = v62;
        *(v58 + 120) = v8;
        v63 = sub_10001A848((v58 + 96));
        (*(v70 + 16))(v63, v11, v8);
        v64 = sub_1000D0AA8(v58);
        swift_setDeallocating();
        sub_1000CE6B8(&qword_101906970);
        swift_arrayDestroy();
        if (v61 >> 62)
        {
          v65 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v65 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v66 = v69;

        if (v65 > 2)
        {
          v30 = 302;
        }

        else
        {
          v30 = 303;
        }

        sub_100268F1C(v64);

        v67 = Dictionary._bridgeToObjectiveC()().super.isa;

        v68 = v72;
        [v13 recentsViewController:v66 didSelectDirectionItem:v72 userInfo:v67];

        sub_1000D87F0(v16, 1u);
        swift_unknownObjectRelease();

        (*(v70 + 8))(v11, v8);
        goto LABEL_19;
      }

      sub_1000D87F0(v16, 1u);
      swift_unknownObjectRelease();

      sub_100024F64(v7, &unk_101918E50);
    }

    else
    {
      sub_1000D87F0(v16, 1u);
      swift_unknownObjectRelease();
    }

    v36 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v37 = [v36 stringValue];
    goto LABEL_26;
  }

  sub_1000D87F0(v16, 1u);
  swift_unknownObjectRelease();
  v20 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  v21 = [v20 stringValue];
LABEL_7:
  v72 = v21;

  if (!v72)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = String._bridgeToObjectiveC()();
  }

  [objc_opt_self() captureUserAction:2064 target:257 value:v72];
  v22 = v72;
}

void sub_1000D79E4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = objc_opt_self();
      v9 = [v8 shareItemForObject:*(a1 + *(type metadata accessor for MyRecentsDataProvider.Recent(0) + 20))];
      v13 = a2;
      v10 = a2;
      sub_1000CE6B8(&unk_101909900);
      v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v12 = [objc_opt_self() optionsWithSender:{v11, v13}];
      swift_unknownObjectRelease();
      [v7 shareItem:v9 presentationOptions:v12 completion:0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1000D7BB8@<X0>(void *a1@<X8>)
{
  type metadata accessor for MyRecentsViewModel(0);

  State.init(wrappedValue:)();
  a1[3] = &type metadata for MyRecentsView;
  result = sub_1000D81B8();
  a1[4] = result;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D7CE8(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "willBecomeCurrent:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC4Maps32MyRecentsContaineeViewController_viewModel];
  if (*(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive) == 1)
  {
    *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive) = 1;
    return sub_100537688(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000D86BC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000D7E5C()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "didResignCurrent");
  v1 = *&v0[OBJC_IVAR____TtC4Maps32MyRecentsContaineeViewController_viewModel];
  if (*(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000D86BC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive) = 0;
    return sub_100537688(0);
  }
}

uint64_t sub_1000D80A8()
{

  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps32MyRecentsContaineeViewController_actionDelegate);
  v1 = v0 + OBJC_IVAR____TtC4Maps32MyRecentsContaineeViewController_shareDelegate;

  return sub_1000A09E0(v1);
}

unint64_t sub_1000D81B8()
{
  result = qword_1019098F0;
  if (!qword_1019098F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019098F0);
  }

  return result;
}

uint64_t sub_1000D820C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000D86BC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onClose);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onClose + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1000D82D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1000D86BC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1000D8400@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000D86BC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onSelect);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onSelect + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D87C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1000D84C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D878C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1000D86BC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1000D85F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000D86BC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive);
  return result;
}

unint64_t sub_1000D86BC()
{
  result = qword_1019098F8;
  if (!qword_1019098F8)
  {
    type metadata accessor for MyRecentsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019098F8);
  }

  return result;
}

uint64_t sub_1000D878C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

void sub_1000D87F0(id a1, unsigned __int8 a2)
{
  if (a2 < 4u)
  {
    swift_unknownObjectRelease();
  }

  else if (a2 == 4)
  {
  }
}

uint64_t sub_1000D882C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1000D88DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_1000D8900, 0, 0);
}

uint64_t sub_1000D8900()
{
  if (qword_101906610 != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 40) _geoMapItem];
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1000D8A4C;

    return sub_100256D78(v2);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1000D8A4C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 96) = a2;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1000D8B70, 0, 0);
}

uint64_t sub_1000D8B70()
{
  v1 = *(v0 + 96);
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 80) = *(v0 + 24);
    type metadata accessor for MainActor();
    *(v0 + 88) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000D8C4C, v5, v4);
  }
}

uint64_t sub_1000D8C4C()
{
  v1 = v0[10];
  v2 = v0[6];

  v2(v1 > 0);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000D8E10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_1000D88DC(a1, v4, v5, v6, v7, v8);
}

id sub_1000D8ED8()
{
  result = [objc_allocWithZone(type metadata accessor for CommunityIDMapsSync()) init];
  qword_10195FA50 = result;
  return result;
}

id sub_1000D9008()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunityIDMapsSync();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_1000D9088()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000D90FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000D9140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000D9164, 0, 0);
}

uint64_t sub_1000D9164()
{
  v1 = v0[2];
  type metadata accessor for CommunityIDRequest();
  v0[5] = CommunityIDRequest.__allocating_init()();
  v4 = (&async function pointer to dispatch thunk of CommunityIDRequest.fetch(options:) + async function pointer to dispatch thunk of CommunityIDRequest.fetch(options:));
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1000D9228;

  return v4(v1);
}

uint64_t sub_1000D9228(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1000D93C4;
  }

  else
  {

    v4 = sub_1000D9344;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D9344()
{
  v1 = v0[3];
  if (v1)
  {
    v1(v0[7], 0);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000D93C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);
  if (v1)
  {
    v3 = *(v0 + 24);
    swift_errorRetain();
    v3(0, v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_1000D9524(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for CommunityID();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1000D95C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v11 = (&async function pointer to dispatch thunk of CommunityIDRequest.fetch(options:) + async function pointer to dispatch thunk of CommunityIDRequest.fetch(options:));
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_1000D9678;

  return v11(a5);
}

uint64_t sub_1000D9678(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_1000D9920;
  }

  else
  {
    v4 = sub_1000D978C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D978C()
{
  v1 = v0[5];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = v0[2];

    if (v8)
    {
      v9 = v0[2];
      sub_1000DA744();
      v10 = swift_allocError();
      *v11 = 0;
      v9(0, v10);
    }

    goto LABEL_12;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[5] + 32);
  }

  v4 = v0[2];

  if (v4)
  {
    v5 = v0[2];
    sub_1000CE6B8(&qword_101908400);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1011E47B0;
    *(v6 + 32) = v3;
    v7 = v3;
    v5(v6, 0);
  }

  else
  {
  }

LABEL_12:
  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D9920()
{
  v1 = v0[2];
  v2 = v0[6];
  if (v1)
  {
    swift_errorRetain();
    v1(0, v2);
  }

  v3 = v0[1];

  return v3();
}

void sub_1000D9CD0(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  v9 = static MapsSyncQueryPredicate.withFormat(_:_:)();
  v10 = static MapsSyncQueryPredicate.withFormat(_:_:)();
  sub_1000CE6B8(&qword_101908400);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1011E47B0;
  v12 = objc_allocWithZone(NSSortDescriptor);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithKey:v13 ascending:1];

  *(v11 + 32) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1011E47C0;
  *(v15 + 32) = v9;
  *(v15 + 40) = v10;
  *(v15 + 48) = a1;
  v16 = objc_allocWithZone(Predicate);
  v17 = v9;
  v18 = v10;
  v19 = a1;
  MapsSyncQueryPredicate.init(and:)();
  v20 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v21 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = a2;
  v23[6] = v26;
  v24 = v21;
  sub_1000CD9D4(a2);
  sub_10020AAE4(0, 0, v7, &unk_1011E4828, v23);
}

void sub_1000D9F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  type metadata accessor for CommunityIDRequest();
  v11 = CommunityIDRequest.__allocating_init()();
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1011E1D30;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000DA61C();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v13 = NSPredicate.init(format:_:)();
  v14 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v15 = v13;
  v16 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v11;
  v18[5] = v16;
  v18[6] = a3;
  v18[7] = a4;
  v19 = v11;
  v20 = v16;
  sub_1000CD9D4(a3);
  sub_10020AAE4(0, 0, v10, &unk_1011E4818, v18);
}

void sub_1000DA198(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  type metadata accessor for CommunityID();
  v4 = MapsSyncObject.__allocating_init()();

  dispatch thunk of CommunityID.communityIdentifier.setter();
  dispatch thunk of CommunityID.usedCount.setter();
  dispatch thunk of CommunityID.expired.setter();
  type metadata accessor for MapsSyncStore();
  v5 = static MapsSyncStore.sharedStore.getter();
  sub_1000CE6B8(&qword_101908400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E47B0;
  *(v6 + 32) = v4;
  v7 = v4;
  dispatch thunk of MapsSyncStore.save(objects:)();

  if (a3)
  {
    a3(0, 0);
  }
}

uint64_t sub_1000DA318(void *a1, void (*a2)(uint64_t, void))
{
  dispatch thunk of CommunityID.expired.setter();
  type metadata accessor for MapsSyncStore();
  v4 = static MapsSyncStore.sharedStore.getter();
  sub_1000CE6B8(&qword_101908400);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E47B0;
  *(v5 + 32) = a1;
  v6 = a1;
  dispatch thunk of MapsSyncStore.save(objects:)();

  if (a2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1011E47B0;
    *(v8 + 32) = v6;
    v9 = v6;
    a2(v8, 0);
  }

  return result;
}

void (*sub_1000DA4A4(void *a1, void (*a2)(uint64_t, void)))(_BYTE *, void)
{
  result = dispatch thunk of CommunityID.usedCount.modify();
  if (__OFADD__(*v5, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v5;
    result(v11, 0);
    type metadata accessor for MapsSyncStore();
    v6 = static MapsSyncStore.sharedStore.getter();
    sub_1000CE6B8(&qword_101908400);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1011E47B0;
    *(v7 + 32) = a1;
    v8 = a1;
    dispatch thunk of MapsSyncStore.save(objects:)();

    if (a2)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1011E47B0;
      *(v9 + 32) = v8;
      v10 = v8;
      a2(v9, 0);
    }
  }

  return result;
}

unint64_t sub_1000DA61C()
{
  result = qword_10191A940;
  if (!qword_10191A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A940);
  }

  return result;
}

uint64_t sub_1000DA670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_1000D95C0(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1000DA744()
{
  result = qword_101909970;
  if (!qword_101909970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909970);
  }

  return result;
}

uint64_t sub_1000DA798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_1000D9140(a1, v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for CommunityIDMapsSync.AccessError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommunityIDMapsSync.AccessError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000DA9D4()
{
  result = qword_101909978;
  if (!qword_101909978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909978);
  }

  return result;
}

uint64_t sub_1000DAA2C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 value])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  aBlock = v26;
  v22 = v27;
  if (!*(&v27 + 1))
  {
    return sub_1000DB2F4(&aBlock);
  }

  sub_100014C84(0, &qword_101914500);
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v25;
    sub_100014C84(0, &qword_10190B4F0);
    v20 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a2;
    v23 = sub_1000DB35C;
    v24 = v15;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v22 = sub_100039C64;
    *(&v22 + 1) = &unk_1016025C8;
    v16 = _Block_copy(&aBlock);
    v17 = v14;
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000DB364();
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

void sub_1000DAD6C(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  if (v5 && (v6 = v5, v7 = [v5 isCarAppSceneHostingNavigation], v6, v7))
  {
    v8 = [v4 sharedInstance];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = "detourToWaypoint:";
  }

  else
  {
    v8 = [a2 appCoordinator];
    v9 = "addStopWithWaypoint:";
  }

  v10 = v8;
  [v8 v9];
}

id sub_1000DAEE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyActionHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000DAF40(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    v15 = [v14 findMyHandleIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1004C0804(_swiftEmptyArrayStorage);
    Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
    v16 = *(v7 + 16);
    v16(v9, v12, v6);
    [v14 coordinate];
    v18 = v17;
    v20 = v19;
    MyHandleMapServiceTicket = type metadata accessor for FindMyHandleMapServiceTicket();
    v22 = objc_allocWithZone(MyHandleMapServiceTicket);
    *&v22[OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_ticket] = 0;
    v22[OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_isCancelled] = 0;
    v16(&v22[OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_handle], v9, v6);
    v23 = &v22[OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_coordinate];
    *v23 = v18;
    *(v23 + 1) = v20;
    v23[16] = 0;
    v30.receiver = v22;
    v30.super_class = MyHandleMapServiceTicket;
    v24 = objc_msgSendSuper2(&v30, "init");
    v25 = *(v7 + 8);
    v25(v9, v6);
    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v24;
    v28[5] = 0;
    v28[6] = sub_1000DB2EC;
    v28[7] = v26;
    v28[8] = 0;
    v28[9] = 0;
    swift_unknownObjectRetain();
    v29 = v24;

    sub_10020AAE4(0, 0, v5, &unk_1011E2EB0, v28);

    return (v25)(v12, v6);
  }

  return result;
}

uint64_t sub_1000DB2F4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_101908380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DB364()
{
  result = qword_1019097D0;
  if (!qword_1019097D0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019097D0);
  }

  return result;
}

unint64_t sub_1000DB3BC()
{
  result = qword_1019097E0;
  if (!qword_1019097E0)
  {
    sub_1000D6664(&unk_10190B500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019097E0);
  }

  return result;
}

uint64_t sub_1000DB4B0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for PinnedItemsView();
  a1[4] = sub_1000DCBC4(&qword_101909A50, type metadata accessor for PinnedItemsView);
  v2 = sub_10001A848(a1);

  return sub_10042AA2C(v3, v2);
}

id sub_1000DB53C()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  result = [v0 cardPresentationController];
  if (result)
  {
    v3 = result;
    [result setPresentedModally:1];

    result = [v1 cardPresentationController];
    if (result)
    {
      v4 = result;
      [result setTakesAvailableHeight:1];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000DCBC4(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_getKeyPath();
      __chkstk_darwin(v6);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_getKeyPath();
      __chkstk_darwin(v7);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_getKeyPath();
      __chkstk_darwin(v8);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_getKeyPath();
      __chkstk_darwin(v9);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_getKeyPath();
      __chkstk_darwin(v10);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_getKeyPath();
      __chkstk_darwin(v11);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_getKeyPath();
      __chkstk_darwin(v12);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000DBCC0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a2 isSetupPlaceholder])
    {
      v5 = [objc_opt_self() addSessionWithShortcut:a2];
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        [v6 pinnedItemsViewControllerWithViewController:v4 didSelectAddPinned:v5];
        swift_unknownObjectRelease();
      }

      if ([a2 type] != 2)
      {
        if ([a2 type] != 3)
        {
LABEL_17:
          v13 = v4;
LABEL_25:

          return;
        }

        v12 = [objc_opt_self() sharedService];
        if (v12)
        {
          v8 = v12;
          [v12 captureUserAction:2043 onTarget:254 eventValue:0];
          goto LABEL_16;
        }

        goto LABEL_31;
      }

      v7 = [objc_opt_self() sharedService];
      if (v7)
      {
        v8 = v7;
        [v7 captureUserAction:2042 onTarget:254 eventValue:0];
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_29;
    }

    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      [v9 pinnedItemsViewControllerWithViewController:v4 didSelectPinned:a2];
      swift_unknownObjectRelease();
    }

    if ([a2 type] == 2)
    {
      v10 = [objc_opt_self() sharedService];
      if (!v10)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v11 = v10;
      [v10 captureUserAction:2046 onTarget:254 eventValue:0];
    }

    else
    {
      if ([a2 type] != 3)
      {
LABEL_22:
        v15 = objc_opt_self();
        v16 = [v15 sharedService];
        if (v16)
        {
          v17 = v16;
          [v16 captureUserAction:478 onTarget:254 eventValue:0];

          v18 = [v15 sharedService];
          if (v18)
          {
            v13 = v18;
            [v18 captureUserAction:2007 onTarget:254 eventValue:0];
            v5 = v4;
            goto LABEL_25;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v14 = [objc_opt_self() sharedService];
      if (!v14)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v11 = v14;
      [v14 captureUserAction:2047 onTarget:254 eventValue:0];
    }

    goto LABEL_22;
  }
}

void sub_1000DBFA0(uint64_t a1)
{
  v2 = [objc_opt_self() addSessionWithShortcut:a1];
  v3 = [v2 shortcutItem];
  v4 = [v3 type];

  if (v4 == 6)
  {
    [v2 setMoveToPreferredIndexInFavorites:1];
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakDestroy();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    aBlock[4] = sub_1000DCD08;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002ABAC8;
    aBlock[3] = &unk_101602640;
    v6 = _Block_copy(aBlock);
    v7 = v2;

    [v7 saveWithCompletion:v6];
    _Block_release(v6);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong pinnedItemsViewControllerWithViewController:v1 didSelectPinSuggested:v2];
      swift_unknownObjectRelease();
    }
  }

  v9 = sub_100546984();
  v10 = [objc_opt_self() sharedService];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = 211;
LABEL_10:
      [v10 captureUserAction:v12 onTarget:254 eventValue:0];

      return;
    }

    __break(1u);
  }

  else if (v10)
  {
    v12 = 2054;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1000DC1B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() addSession];
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 pinnedItemsViewControllerWithViewController:v1 didSelectAddPinned:v2];
      swift_unknownObjectRelease();
    }

    v4 = [objc_opt_self() sharedService];
    if (v4)
    {
      v5 = v4;
      [v4 captureUserAction:2044 onTarget:254 eventValue:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000DC2AC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_opt_self() editSessionWithShortcut:a2];
    v6 = [a2 isSetupPlaceholder];
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = &selRef_pinnedItemsViewControllerWithViewController_didSelectAddPinned_;
      if (!v6)
      {
        v8 = &selRef_pinnedItemsViewControllerWithViewController_didSelectEditPinned_;
      }

      [v7 *v8];
      swift_unknownObjectRelease();
    }

    v9 = [objc_opt_self() sharedService];
    if (v9)
    {
      v10 = v9;
      [v9 captureUserAction:2055 onTarget:254 eventValue:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000DC3D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000DBFA0(a2);
  }
}

id sub_1000DC434(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:objc_msgSend(a2 isPlaceHolderPlace:{"geoMapItem"), 0}];
    v8 = a3;
    sub_1000CE6B8(&unk_101909900);
    v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v10 = [objc_opt_self() optionsWithSender:{v9, a3}];
    swift_unknownObjectRelease();
    v11 = [objc_allocWithZone(SearchResult) initWithMapItem:v7];
    if (v11)
    {
      v12 = v11;
      result = [v11 unknownContact];
      if (result)
      {
        v13 = result;
        v14 = [objc_opt_self() shareItemWithSearchResult:v12 contact:result includePrintActivity:1];

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          swift_unknownObjectRetain();
          [v16 shareItem:v14 presentationOptions:v10 completion:0];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        result = [objc_opt_self() sharedService];
        if (result)
        {
          v17 = result;
          [result captureUserAction:2057 onTarget:254 eventValue:0];

          swift_unknownObjectRelease();
          goto LABEL_8;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

LABEL_8:

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000DC6B0(uint64_t a1, void *a2)
{
  if (qword_101906528 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FA58);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = [v4 shortcutItem];
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to save favorite button shortcut %@", v6, 0xCu);
    sub_1000DCD10(v7);
  }
}

id sub_1000DC800(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC4Maps25PinnedItemsViewController_viewModel;
  type metadata accessor for PinnedItemsViewModel();
  swift_allocObject();
  *&v3[v8] = sub_1001177F4();
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_1000DC958(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC4Maps25PinnedItemsViewController_viewModel;
  type metadata accessor for PinnedItemsViewModel();
  swift_allocObject();
  *&v1[v4] = sub_1001177F4();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1000DCA4C()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps25PinnedItemsViewController_actionDelegate);
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps25PinnedItemsViewController_shareDelegate);
}

uint64_t sub_1000DCB1C()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FA58);
  sub_100021540(v0, qword_10195FA58);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DCBC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DCD10(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_1019144F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DCDA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906530 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&qword_101909AA8);
  v3 = sub_100021540(v2, qword_10195FA70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_1000DCE58()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

Swift::Int sub_1000DCE80()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000DCEE8()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000DCF80()
{
  result = qword_101909A60;
  if (!qword_101909A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909A60);
  }

  return result;
}

unint64_t sub_1000DCFD4(uint64_t a1)
{
  result = sub_1000DCFFC();
  *(a1 + 8) = result;
  return result;
}