uint64_t sub_10009B5F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DC6A8);
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

uint64_t sub_10009B6C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009B784(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009B83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DDCB8);
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

uint64_t sub_10009B904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DDCB8);
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

uint64_t sub_10009B9F0(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F18F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009BA5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009BAE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009BB20()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009BB70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009BBD0()
{
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_100141EEC(&qword_1008F1AB8);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100141EEC(&qword_1008DC840);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
  swift_getWitnessTable();
  type metadata accessor for NavigationLink();
  swift_getWitnessTable();
  sub_10052675C();
  swift_getOpaqueTypeMetadata2();
  sub_100141EEC(&qword_1008E4500);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
  return swift_getWitnessTable();
}

uint64_t sub_10009BEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivitySharingHighlightViewModel();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10009BF84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivitySharingHighlightViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_10009C03C()
{
  v1 = (type metadata accessor for ActivitySharingAvatarView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for ActivitySharingHighlight();
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v5[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = type metadata accessor for ActivitySharingHighlightViewModel();
  v11 = v10[10];
  v12 = type metadata accessor for FIUIRelativeDateTimeFormatter();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10009C21C()
{
  v1 = (type metadata accessor for ActivitySharingHighlightViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for ActivitySharingHighlight();
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v5[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = v1[12];
  v11 = type metadata accessor for FIUIRelativeDateTimeFormatter();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10009C404()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009C444(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F1C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009C4BC()
{
  sub_100141EEC(&qword_1008F1C00);
  sub_1005295D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009C544()
{
  swift_unknownObjectRelease();

  sub_100005A40(v0 + 48);

  return _swift_deallocObject(v0, 112, 7);
}

id sub_10009C58C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

uint64_t sub_10009C5CC()
{

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_10009C63C()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10009C6B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009C6F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009C754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
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

uint64_t sub_10009C81C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DC6A8);
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

uint64_t sub_10009C98C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009C9C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009CA2C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009CA64()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10009CB68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009CBB0()
{
  type metadata accessor for Button();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009CC50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009CC88()
{
  v1 = *(sub_100140278(&qword_1008E5718) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10009CDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v7 = *(ViewModel - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = ViewModel;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100140278(&qword_1008F0320);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
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

uint64_t sub_10009CEC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v9 = *(ViewModel - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = ViewModel;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100140278(&qword_1008F0320);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10009CFD8()
{
  v1 = (type metadata accessor for LoadTypeScrollView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  (*(*(ViewModel - 8) + 8))(v0 + v3, ViewModel);
  v6 = v0 + v3 + v1[7];

  v7 = *(sub_100140278(&qword_1008F0320) + 32);
  DataType = type metadata accessor for TrainingLoadDataType();
  (*(*(DataType - 8) + 8))(v6 + v7, DataType);
  sub_1000A73A4(*(v0 + v3 + v1[8]), *(v0 + v3 + v1[8] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10009D13C()
{
  v1 = (type metadata accessor for LoadTypeScrollView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for ScrollViewProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  (*(*(ViewModel - 8) + 8))(v0 + v3, ViewModel);
  v13 = v0 + v3 + v1[7];

  v14 = *(sub_100140278(&qword_1008F0320) + 32);
  DataType = type metadata accessor for TrainingLoadDataType();
  (*(*(DataType - 8) + 8))(v13 + v14, DataType);
  sub_1000A73A4(*(v11 + v1[8]), *(v11 + v1[8] + 8));
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10009D328()
{
  v1 = (type metadata accessor for LoadTypeScrollView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v6 = *(ViewModel - 8);
  v7 = *(v6 + 80);
  v18 = (v3 + v4 + v7) & ~v7;
  v8 = *(v6 + 64);
  v21 = type metadata accessor for ScrollViewProxy();
  v9 = *(v21 - 8);
  v10 = *(v9 + 80);
  v11 = (v18 + v8 + v10) & ~v10;
  v20 = *(v9 + 64);
  v19 = v2 | v7 | v10;
  v12 = v0 + v3;
  v13 = *(v6 + 8);
  v13(v12, ViewModel);
  v14 = v12 + v1[7];

  v15 = *(sub_100140278(&qword_1008F0320) + 32);
  DataType = type metadata accessor for TrainingLoadDataType();
  (*(*(DataType - 8) + 8))(v14 + v15, DataType);
  sub_1000A73A4(*(v12 + v1[8]), *(v12 + v1[8] + 8));
  v13(v0 + v18, ViewModel);
  (*(v9 + 8))(v0 + v11, v21);

  return _swift_deallocObject(v0, v11 + v20, v19 | 7);
}

uint64_t sub_10009D580(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F27E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009D634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009D6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10009D710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v7 = *(ViewModel - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = ViewModel;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for GregorianDayRange();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
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

uint64_t sub_10009D82C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v9 = *(ViewModel - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = ViewModel;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for GregorianDayRange();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10009D980()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009D9B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DayIndex();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10009DA64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DayIndex();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009DB14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for AttributedString();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_100140278(&unk_1008EE8E0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10009DCA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100140278(&qword_1008DC6A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for AttributedString();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_100140278(&unk_1008EE8E0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10009DE30()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009DE68()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009DEB0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009DEF0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009DF68()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009DFB8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009DFF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009E030()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10009E09C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009E0F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10009E1B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10009E268()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
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
    v11 = type metadata accessor for DateComponents();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 52);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10009E4B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
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
    v11 = type metadata accessor for DateComponents();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10009E5D4()
{
  v1 = (type metadata accessor for ActivityRingEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[15];
  v8 = type metadata accessor for DateComponents();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10009E760()
{
  v1 = (type metadata accessor for ActivityRingEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = v1[15];
  v9 = type metadata accessor for DateComponents();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_10009E8FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100140278(&qword_1008F33F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_10009E9B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100140278(&qword_1008F33F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009EAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F35E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009EB24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009EB5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009EB98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009EBD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009EC10()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009EC64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009ECC8()
{
  v1 = type metadata accessor for WorkoutGoal();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10009ED8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009EDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008F0330);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009EEB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008F0330);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009EF88()
{
  v1 = *(type metadata accessor for WorkoutDetailColumnMetricView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  sub_100140278(&qword_1008E66B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for LayoutDirection();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v10, v5);

  return _swift_deallocObject(v0, v10 + v8, v2 | v7 | 7);
}

uint64_t sub_10009F198()
{
  v1 = *(type metadata accessor for WorkoutDetailColumnMetricView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  sub_100140278(&qword_1008E66B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for LayoutDirection();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10009F388()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009F3C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendListMetric();
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

uint64_t sub_10009F42C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TrendListMetric();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10009F4B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009F4EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009F53C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10009F598()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009F5D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009F610()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10009F648()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009F680()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009F6C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009F700()
{

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_10009F738()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10009F7FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009F834()
{
  sub_100005A40(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009F874()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009F8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutChartViewModel(0);
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

uint64_t sub_10009F988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutChartViewModel(0);
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

uint64_t sub_10009FA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F3F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009FAB4()
{
  sub_100141EEC(&qword_1008F3F78);
  sub_10014A6B0(&qword_1008F3F88, &qword_1008F3F78);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009FB50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009FBCC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009FC88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009FD40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009FD78()
{
  v1 = sub_100140278(&unk_1008E4D90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10009FE24()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009FE7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009FEB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009FFD4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0000@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A002C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008F0330);
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
    v11 = sub_100140278(&unk_1008F73B0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000A0194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008F0330);
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
    v11 = sub_100140278(&unk_1008F73B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000A02D4()
{
  v1 = type metadata accessor for WorkoutChartGroupView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v15 = *(v6 + 64);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  sub_100140278(&qword_1008E66B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for LayoutDirection();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = v8 + *(v1 + 40);
  v11 = type metadata accessor for AccessibilityTechnologies();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  v13 = (v3 + v4 + v7) & ~v7;
  sub_100140278(&unk_1008F73B0);

  (*(v6 + 8))(v0 + v13, v5);

  return _swift_deallocObject(v0, v13 + v15, v2 | v7 | 7);
}

uint64_t sub_1000A0570@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A05C8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A06AC(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F4900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A0714()
{
  v1 = *(sub_100140278(&unk_1008EB5B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Reply();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_1000A08D8()
{

  if (*(v0 + 96))
  {
  }

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1000A0950()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A0990()
{
  sub_100141EEC(&qword_1008F4918);
  sub_100141EEC(&qword_1008F4910);
  sub_100141EEC(&unk_1008DF478);
  sub_100141EEC(&qword_1008F4908);
  sub_100141EEC(&qword_1008F49B0);
  sub_100141EEC(&qword_1008F4900);
  type metadata accessor for ActivitySharingReplyMessageComposerView();
  sub_1005BE118();
  sub_1005BE31C();
  sub_1005BE378(&qword_1008DF4B0, type metadata accessor for ActivitySharingReplyMessageComposerView);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ActivitySharingReplyEditView(255);
  type metadata accessor for Material();
  sub_1005BE378(&qword_1008F49B8, type metadata accessor for ActivitySharingReplyEditView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1005BE3C8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A0C00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000A0CCC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0D88()
{
  v1 = type metadata accessor for PauseRingsPeriod();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A0E74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A0EAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A0EFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0F34()
{
  sub_100141EEC(&qword_1008F4CB0);
  sub_1000616F0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A0FD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A1020()
{
  v1 = (type metadata accessor for FitnessPlusStackViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);

  v6(v0 + v3 + v1[10], v5);
  v7 = v1[11];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A11AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A11E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000A13B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1005D64CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000A13E0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A142C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A146C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A14A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A14E0()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000A1538()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A157C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A15B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A162C()
{

  sub_100005A40(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A166C()
{
  sub_100141EEC(&qword_1008F52C8);
  sub_10014A6B0(&qword_1008F5300, &qword_1008F52C8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A1708()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1740()
{
  v1 = *(sub_100140278(&unk_1008EB5B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A1868()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A18CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A198C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DDCB8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A1A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DDCB8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A1A80()
{
  v1 = *(type metadata accessor for TrainingLoadInfoPaneDetailView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100140278(&qword_1008EE800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A1BCC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1000A1C3C()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000A1CB4()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000A1D48()
{
  sub_100141EEC(&qword_1008F5A50);
  sub_1005FCA1C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A1DB8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A1E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A1F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CatalogLockup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for MetricLocation();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A2024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CatalogLockup();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for MetricLocation();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000A213C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A21A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F5E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A2250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F5E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A22C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A2390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000A2484(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    DataType = type metadata accessor for TrainingLoadDataType();
    v9 = *(*(DataType - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, DataType);
  }
}

void *sub_1000A2530(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    DataType = type metadata accessor for TrainingLoadDataType();
    v8 = *(*(DataType - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, DataType);
  }

  return result;
}

uint64_t sub_1000A260C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2644(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F61B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A26B4()
{
  v1 = (type metadata accessor for LoadItemsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);

  v6 = v1[13];
  DataType = type metadata accessor for TrainingLoadDataType();
  (*(*(DataType - 8) + 8))(v5 + v6, DataType);

  sub_1000A73A4(*(v5 + v1[15]), *(v5 + v1[15] + 8));

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000A2800()
{
  v1 = (type metadata accessor for LoadItemsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);

  v6 = v1[13];
  DataType = type metadata accessor for TrainingLoadDataType();
  (*(*(DataType - 8) + 8))(v5 + v6, DataType);

  sub_1000A73A4(*(v5 + v1[15]), *(v5 + v1[15] + 8));
  sub_100005A40(v0 + v4);

  return _swift_deallocObject(v0, v4 + 40, v2 | 7);
}

uint64_t sub_1000A2958(uint64_t *a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v9 = sub_100140278(&qword_1008E4E80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1000A2A20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100140278(&qword_1008E4E80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A2AD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
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
    v11 = type metadata accessor for FriendsHighlightCard();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000A2C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DC6A8);
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
    v11 = type metadata accessor for FriendsHighlightCard();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000A2D7C()
{
  v1 = v0;
  v2 = (type metadata accessor for ActivitySharingHighlightViewModel() - 8);
  v24 = *(*v2 + 80);
  v3 = (v24 + 16) & ~v24;
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for FriendsHighlightCardView();
  v22 = *(*(v5 - 1) + 80);
  v23 = *(*(v5 - 1) + 64);
  v6 = (v3 + v4 + v22) & ~v22;
  v7 = v0 + v3;

  v8 = type metadata accessor for ActivitySharingHighlight();
  v9 = v8[5];
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 8);
  v11(v7 + v9, v10);
  v12 = v8[6];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v7 + v12, v13);

  v14 = v2[12];
  v15 = type metadata accessor for FIUIRelativeDateTimeFormatter();
  (*(*(v15 - 8) + 8))(v7 + v14, v15);

  v16 = v1 + v6;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for DynamicTypeSize();
    (*(*(v17 - 8) + 8))(v1 + v6, v17);
  }

  else
  {
  }

  v18 = v16 + v5[7];
  v11(v18, v10);
  v19 = type metadata accessor for FriendsHighlightCard();
  sub_10001D4F8(*(v18 + *(v19 + 20)), *(v18 + *(v19 + 20) + 8), *(v18 + *(v19 + 20) + 16));

  v20 = v16 + v5[8];
  if (*(v20 + 24))
  {
    sub_100005A40(v20);
  }

  return _swift_deallocObject(v1, v6 + v23, v24 | v22 | 7);
}

uint64_t sub_1000A30C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3160()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3198()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A31D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3214()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A324C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A3294()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A32DC()
{

  if (*(v0 + 160))
  {
  }

  return _swift_deallocObject(v0, 201, 7);
}

uint64_t sub_1000A3370()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A33B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for IndexSet();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A34A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for IndexSet();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000A35A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  Card = type metadata accessor for LoadCard();
  v12 = *(Card - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = Card;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
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

uint64_t sub_1000A36C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100140278(&qword_1008DC6A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for LoadCard();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A3858()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3890()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A38D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3910()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A3958()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A399C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A39EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3A24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3A64()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A3AA4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A3AE8()
{
  swift_unknownObjectRelease();

  sub_100005A40(v0 + 40);
  sub_100005A40(v0 + 80);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000A3B44()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 34) & ~v3;
  v5 = *(v2 + 64);
  sub_10021D470(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A3C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E1DA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A3D64()
{
  sub_100005A40(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A3D9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3DD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3E0C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A3E54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3EEC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A3FB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3FE8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A40AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A40EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4130()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4170()
{
  v1 = sub_100140278(&qword_1008EEEF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A4204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008E3D18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 <= 3)
    {
      return 0;
    }

    else
    {
      return v10 ^ 0xFF;
    }
  }
}

uint64_t sub_1000A42CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008E3D18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = ~a2;
  }

  return result;
}

uint64_t sub_1000A4394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TrendsCard();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
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

uint64_t sub_1000A44BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100140278(&qword_1008DC6A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TrendsCard();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A45D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F7598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A464C()
{
  v1 = (type metadata accessor for TrendListMetric() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for TrendsCardView(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = (v3 + v4 + v6) & ~v6;

  v9 = v1[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  v11 = v0 + v8;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DynamicTypeSize();
    (*(*(v12 - 8) + 8))(v0 + v8, v12);
  }

  else
  {
  }

  v13 = v11 + *(v5 + 20);
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for TrendsCard();
  sub_10001D4F8(*(v13 + *(v15 + 20)), *(v13 + *(v15 + 20) + 8), *(v13 + *(v15 + 20) + 16));

  v16 = v11 + *(v5 + 24);
  if (*(v16 + 24))
  {
    sub_100005A40(v16);
  }

  return _swift_deallocObject(v0, v8 + v7, v2 | v6 | 7);
}

uint64_t sub_1000A48C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A48F8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A4940()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A497C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A49B4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A49F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A4A38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4A70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4AA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A4B08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4B40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4B88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A4BC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4C00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4C3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Calendar();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A4CE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Calendar();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A4D8C()
{
  v1 = (type metadata accessor for ActivityDailyGoalChartView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for Calendar();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A4E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F7AC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A4F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F7AC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A4F74(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F7AC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A4FDC()
{
  sub_100141EEC(&qword_1008F7A98);
  sub_100141EEC(&qword_1008F7AF8);
  sub_100141EEC(&qword_1008F7A90);
  sub_100141EEC(&qword_1008F7AE0);
  sub_10014A6B0(&qword_1008F7AE8, &qword_1008F7A90);
  sub_10014A6B0(&qword_1008F7AF0, &qword_1008F7AE0);
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008F7B00, &qword_1008F7AF8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
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

uint64_t sub_1000A5228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DC6A8);
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

uint64_t sub_1000A52F0()
{
  v1 = type metadata accessor for TrendsStack();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_100005A40(v5 + *(v1 + 20));
  v7 = v5 + *(v1 + 24);
  if (*(v7 + 24))
  {
    sub_100005A40(v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A543C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F7C18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A54AC()
{
  v1 = (type metadata accessor for TrendListMetric() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for TrendsStack();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = (v3 + v4 + v6) & ~v6;

  v9 = v1[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  v11 = v0 + v8;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DynamicTypeSize();
    (*(*(v12 - 8) + 8))(v0 + v8, v12);
  }

  else
  {
  }

  sub_100005A40(v11 + *(v5 + 20));
  v13 = v11 + *(v5 + 24);
  if (*(v13 + 24))
  {
    sub_100005A40(v13);
  }

  return _swift_deallocObject(v0, v8 + v7, v2 | v6 | 7);
}

uint64_t sub_1000A56DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A5714()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A5764()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A57A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A57DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A5850()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A58A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A58E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A5920()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A599C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A59D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A5A18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A5A50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A5ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E4B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A5B2C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E4B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A5B98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A5C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_100140278(&qword_1008F8758);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for InferenceClient();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1000A5D40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_100140278(&qword_1008F8758);
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
      v13 = type metadata accessor for InferenceClient();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A5E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v7 = *(ViewModel - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = ViewModel;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DayIndex();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A5F9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v9 = *(ViewModel - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = ViewModel;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DayIndex();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A60A4()
{
  v1 = (type metadata accessor for TrainingLoadChartLollipopView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  (*(*(ViewModel - 8) + 8))(v0 + v3, ViewModel);
  v6 = v1[7];
  v7 = type metadata accessor for DayIndex();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  sub_1000A73A4(*(v0 + v3 + v1[13]), *(v0 + v3 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A6220(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F8A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A629C()
{
  sub_100141EEC(&qword_1008F8A88);
  sub_100681DF0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A6300()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A6348()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A6380()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A63C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A6410()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A644C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A6484()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A64D8(uint64_t *a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v9 = type metadata accessor for InferenceClient();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1000A6590(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for InferenceClient();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A6678()
{
  v1 = (type metadata accessor for WorkoutOnboardingNavigationiOS() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for InferenceClient();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A679C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100140278(&qword_1008F9270);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A6858(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100140278(&qword_1008F9270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A690C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A6944()
{
  v1 = (type metadata accessor for EntryLinksListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64) + v3;
  v5 = v0 + v3;

  v6 = v1[9];
  v7 = sub_100140278(&qword_1008F9270);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 1, v2 | 7);
}

uint64_t sub_1000A6A64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for WorkoutEffort();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_100140278(&qword_1008DC6A8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000A6BE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for WorkoutEffort();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for AttributedString();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_100140278(&qword_1008DC6A8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1000A6D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
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

uint64_t sub_1000A6E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString();
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

uint64_t sub_1000A6EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutEffort();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A6FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutEffort();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000A7078(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F9608);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A7100()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A7138()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A7178()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A71C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A7200()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A7238()
{
  v1 = sub_100140278(&qword_1008F9800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_1000A72F0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1000A7360(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1000A73A4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1000A7D9C(id a1)
{
  v1 = qword_1008F98D0;
  qword_1008F98D0 = &off_10086E4A0;
}

id sub_1000A8678(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 formattingManager];
  v6 = [v5 fitnessUIFormattingManager];
  v7 = [*(a1 + 32) formattingManager];
  v8 = [v7 fitnessUIFormattingManager];
  v9 = [v8 unitManager];
  v10 = [v6 localizedShortUnitStringForDistanceUnit:objc_msgSend(v9 textCase:{"userDistanceUnitForDistanceType:", 3), 1}];

  v11 = [FIUIFormattingManager stringWithNumber:v4 decimalPrecision:1];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"SWIMMING_SPLITS_HEADER_UNIT_FORMAT_%@_%@" value:&stru_1008680E8 table:@"Localizable"];
  v14 = [NSString stringWithFormat:v13, v11, v10];

  return v14;
}

void sub_1000A8D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A8DAC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSplitsDictionary:v3];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8E68;
  block[3] = &unk_10083A710;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v6);
}

void sub_1000A8E68(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 setSelectedPaceFormat:objc_msgSend(v1, "selectedPaceFormat")];
}

void sub_1000A9688(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1008F98E0;
  qword_1008F98E0 = v1;

  [qword_1008F98E0 setRingDiameter:22.0];
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  [qword_1008F98E0 setAppIconWidth:v4 * 22.0];

  [qword_1008F98E0 setGymKitIconWidth:22.0];
  [qword_1008F98E0 setRingThickness:3.5];
  v5 = [UIFont fu_sausageFontOfSize:22.0];
  [qword_1008F98E0 setValueFont:v5];

  v6 = [UIFont fu_sausageFontOfSize:18.0];
  [qword_1008F98E0 setGoalDescriptionFont:v6];

  [qword_1008F98E0 setGoalDescriptionAttributes:&__NSDictionary0__struct];
  v7 = [UIFont fu_sausageFontOfSize:18.0];
  [qword_1008F98E0 setPace100UnitFont:v7];

  v8 = [UIFont fu_sausageFontOfSize:16.0];
  [qword_1008F98E0 setDateFont:v8];

  v9 = [qword_1008F98E0 dateFont];
  [qword_1008F98E0 setWorkoutTypeFont:v9];

  v11 = +[NSBundle mainBundle];
  v10 = [v11 localizedStringForKey:@"FITNESS_UNIT_FORMAT_NO_SPACE" value:&stru_1008680E8 table:@"Localizable"];
  [qword_1008F98E0 setUnitFormatString:v10];
}

void sub_1000A98E4(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1008F98F0;
  qword_1008F98F0 = v1;

  [qword_1008F98F0 setRingDiameter:48.0];
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  [qword_1008F98F0 setAppIconWidth:v4 * 48.0];

  [qword_1008F98F0 setGymKitIconWidth:48.0];
  [qword_1008F98F0 setRingThickness:6.0];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  [v5 pointSize];
  v7 = v6;

  v8 = [UIFont systemFontOfSize:UIFontSystemFontDesignRounded weight:v7 design:UIFontWeightMedium];
  [qword_1008F98F0 setValueFont:v8];

  v25 = UIFontDescriptorFeatureSettingsAttribute;
  v22[0] = UIFontFeatureTypeIdentifierKey;
  v22[1] = UIFontFeatureSelectorIdentifierKey;
  v23[0] = &off_10086E110;
  v23[1] = &off_10086E128;
  v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v24 = v9;
  v10 = [NSArray arrayWithObjects:&v24 count:1];
  v26 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

  v12 = [qword_1008F98F0 valueFont];
  v13 = [v12 fontDescriptor];
  v14 = [v13 fontDescriptorByAddingAttributes:v11];

  v15 = [qword_1008F98F0 valueFont];
  [v15 pointSize];
  v16 = [UIFont fontWithDescriptor:v14 size:?];
  [qword_1008F98F0 setGoalDescriptionFont:v16];

  [qword_1008F98F0 setGoalDescriptionAttributes:&__NSDictionary0__struct];
  v17 = [UIFont fu_lightSausageFontOfSize:32.0];
  [qword_1008F98F0 setPace100UnitFont:v17];

  v18 = [UIFont defaultFontForTextStyle:UIFontTextStyleFootnote];
  [qword_1008F98F0 setDateFont:v18];

  v19 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
  [qword_1008F98F0 setWorkoutTypeFont:v19];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"FITNESS_UNIT_FORMAT_NO_SPACE" value:&stru_1008680E8 table:@"Localizable"];
  [qword_1008F98F0 setUnitFormatString:v21];
}

void sub_1000A9CC0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1008F9900;
  qword_1008F9900 = v1;

  [qword_1008F9900 setRingDiameter:28.0];
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  [qword_1008F9900 setAppIconWidth:v4 * 28.0];

  [qword_1008F9900 setGymKitIconWidth:40.0];
  [qword_1008F9900 setRingThickness:4.0];
  v5 = [UIFont fu_lightSausageFontOfSize:30.0];
  [qword_1008F9900 setValueFont:v5];

  v22 = UIFontDescriptorFeatureSettingsAttribute;
  v19[0] = UIFontFeatureTypeIdentifierKey;
  v19[1] = UIFontFeatureSelectorIdentifierKey;
  v20[0] = &off_10086E110;
  v20[1] = &off_10086E128;
  v6 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v21 = v6;
  v7 = [NSArray arrayWithObjects:&v21 count:1];
  v23 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  v9 = [qword_1008F9900 valueFont];
  v10 = [v9 fontDescriptor];
  v11 = [v10 fontDescriptorByAddingAttributes:v8];

  v12 = [qword_1008F9900 valueFont];
  [v12 pointSize];
  v13 = [UIFont fontWithDescriptor:v11 size:?];
  [qword_1008F9900 setGoalDescriptionFont:v13];

  [qword_1008F9900 setGoalDescriptionAttributes:&__NSDictionary0__struct];
  v14 = [UIFont fu_lightSausageFontOfSize:24.0];
  [qword_1008F9900 setPace100UnitFont:v14];

  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [qword_1008F9900 setDateFont:v15];

  v16 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
  [qword_1008F9900 setWorkoutTypeFont:v16];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"FITNESS_UNIT_FORMAT_NO_SPACE" value:&stru_1008680E8 table:@"Localizable"];
  [qword_1008F9900 setUnitFormatString:v18];
}

void sub_1000AA0A0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1008F9910;
  qword_1008F9910 = v1;

  [qword_1008F9910 setRingDiameter:85.0];
  [qword_1008F9910 setRingThickness:10.0];
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  [qword_1008F9910 setAppIconWidth:v4 * 62.0];

  [qword_1008F9910 setGymKitIconWidth:60.0];
  v5 = [UIFont fu_mediumSausageFontOfSize:30.0];
  [qword_1008F9910 setValueFont:v5];

  v22 = UIFontDescriptorFeatureSettingsAttribute;
  v19[0] = UIFontFeatureTypeIdentifierKey;
  v19[1] = UIFontFeatureSelectorIdentifierKey;
  v20[0] = &off_10086E110;
  v20[1] = &off_10086E128;
  v6 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v21 = v6;
  v7 = [NSArray arrayWithObjects:&v21 count:1];
  v23 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  v9 = [qword_1008F9910 valueFont];
  v10 = [v9 fontDescriptor];
  v11 = [v10 fontDescriptorByAddingAttributes:v8];

  v12 = [qword_1008F9910 valueFont];
  [v12 pointSize];
  v13 = [UIFont fontWithDescriptor:v11 size:?];
  [qword_1008F9910 setGoalDescriptionFont:v13];

  [qword_1008F9910 setGoalDescriptionAttributes:&__NSDictionary0__struct];
  v14 = [UIFont fu_sausageFontOfSize:16.0];
  [qword_1008F9910 setPace100UnitFont:v14];

  v15 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
  [qword_1008F9910 setDateFont:v15];

  v16 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
  [qword_1008F9910 setWorkoutTypeFont:v16];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"FITNESS_UNIT_FORMAT_NO_SPACE" value:&stru_1008680E8 table:@"Localizable"];
  [qword_1008F9910 setUnitFormatString:v18];
}

void sub_1000AA434(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1008F9920;
  qword_1008F9920 = v1;

  [qword_1008F9920 setRingDiameter:62.0];
  [qword_1008F9920 setRingThickness:11.0];
  [qword_1008F9920 ringDiameter];
  v4 = v3;
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  [qword_1008F9920 setAppIconWidth:v4 * v6];

  [qword_1008F9920 setGymKitIconWidth:60.0];
  v7 = [UIFont fu_mediumSausageFontOfSize:30.0];
  [qword_1008F9920 setValueFont:v7];

  v24 = UIFontDescriptorFeatureSettingsAttribute;
  v21[0] = UIFontFeatureTypeIdentifierKey;
  v21[1] = UIFontFeatureSelectorIdentifierKey;
  v22[0] = &off_10086E110;
  v22[1] = &off_10086E128;
  v8 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v23 = v8;
  v9 = [NSArray arrayWithObjects:&v23 count:1];
  v25 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  v11 = [qword_1008F9920 valueFont];
  v12 = [v11 fontDescriptor];
  v13 = [v12 fontDescriptorByAddingAttributes:v10];

  v14 = [qword_1008F9920 valueFont];
  [v14 pointSize];
  v15 = [UIFont fontWithDescriptor:v13 size:?];
  [qword_1008F9920 setGoalDescriptionFont:v15];

  [qword_1008F9920 setGoalDescriptionAttributes:&__NSDictionary0__struct];
  v16 = [UIFont fu_sausageFontOfSize:16.0];
  [qword_1008F9920 setPace100UnitFont:v16];

  v17 = [UIFont defaultFontForTextStyle:UIFontTextStyleSubheadline];
  [qword_1008F9920 setDateFont:v17];

  v18 = [UIFont defaultFontForTextStyle:UIFontTextStyleTitle2];
  [qword_1008F9920 setWorkoutTypeFont:v18];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"FITNESS_UNIT_FORMAT_NO_SPACE" value:&stru_1008680E8 table:@"Localizable"];
  [qword_1008F9920 setUnitFormatString:v20];
}

void sub_1000AABB8(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 firstObject];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v5 lastObject];

  [v9 doubleValue];
  v11 = CLLocationCoordinate2DMake(v8, v10);

  v12 = [*(a1 + 32) startDate];
  v14 = [v12 dateByAddingTimeInterval:*(a1 + 48) * a3];

  v13 = [[CLLocation alloc] initWithCoordinate:v14 altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:0.0 timestamp:{0.0, 0.0}];
  [*(a1 + 40) addObject:v13];
}

id sub_1000ABE6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

id sub_1000B3EB8(uint64_t a1)
{
  v1 = 0.2;
  if (!*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

void sub_1000B4AF4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSync;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_FAULT))
    {
      sub_10069B47C(a1, v5, v6);
    }
  }

  else if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Finished end to end Cloud sync", &v8, 0xCu);
  }
}

void sub_1000B4DA8()
{
  v1 = FIUIHealthStoreForDevice();
  v0 = v1;
  FIUIUserHasExistingMoveGoal();
}

void sub_1000B4E44(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(*(a1 + 32) + 16) invalidate];
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069B508(v5, v6);
    }

    a2 = 1;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4F40;
  block[3] = &unk_10083A920;
  v10 = a2;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000B4F40(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v6 = v3;
  if (v2 == 1)
  {
    [v3 buddyControllerReleaseHoldAndSkip:v4];

    v5 = *(a1 + 40);

    [CHASActivitySetupOnboardingViewController performEndToEndCloudSyncOnSkippingSetupForHealthStore:v5];
  }

  else
  {
    [v3 buddyControllerReleaseHold:v4];
  }
}

void *sub_1000B5154(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1008F9938)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1000B5294;
    v5[4] = &unk_10083A788;
    v5[5] = v5;
    v6 = off_10083A9B8;
    v7 = 0;
    qword_1008F9938 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1008F9938;
    if (qword_1008F9938)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1008F9938;
LABEL_5:
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1008F9930 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000B5294()
{
  result = _sl_dlopen();
  qword_1008F9938 = result;
  return result;
}

id sub_1000B5308()
{
  v0 = _HKActivityCacheDateComponentsFromCacheIndex();
  [v0 year];
  [v0 month];
  [v0 day];
  v1 = ACHDateComponentsForYearMonthDay();

  return v1;
}

id sub_1000B5384(void *a1)
{
  v1 = a1;
  v2 = +[NSCalendar hk_gregorianCalendar];
  v3 = [v2 components:ACHCalendarUnitForDayMonthYear fromDate:v1];

  return v3;
}

void sub_1000B5438(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;

  *&qword_1008F9940 = v3 * 0.034;
  v5 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  qword_1008F9940 = v4;
}

void sub_1000B56EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v10 = kHKDefaultUserWeightKG;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = [NSNumber numberWithDouble:v10 * kHKBaselineMETs / 3600.0];
    goto LABEL_6;
  }

  v8 = [HKUnit unitFromString:@"kg"];
  [v5 doubleValueForUnit:v8];
  v10 = v9;

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = 0;
LABEL_6:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5850;
  block[3] = &unk_10083A9F8;
  v12 = *(a1 + 32);
  v17 = v7;
  v18 = v12;
  v16 = v11;
  v13 = v7;
  v14 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000B5954(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v7 = *(a1 + 32);
    v9 = 0;
    v5 = [v7 _bodyMassCharacteristicQuantityWithError:&v9];
    v6 = v9;
  }

  v8 = v6;
  (*(*(a1 + 40) + 16))();
}

void sub_1000B5B84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v9 = [a3 lastObject];
  v7 = *(a1 + 32);
  v8 = [v9 quantity];
  (*(v7 + 16))(v7, v8, v6);
}

void sub_1000B62F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v11 = a2;
  [v5 centerXForElementAt:a3 width:25.0 percent:0.0];
  v7 = v6;
  [*(a1 + 32) _yValueForCellAtIndex:a3];
  v9 = v8;
  [v11 setFrame:{v7, v8, 25.0, 25.0}];
  [v11 setFullFrame:{v7, v9, 25.0, 25.0}];
  [*(a1 + 32) centerXForElementAt:a3 width:25.0 percent:1.0];
  [v11 setNarrowFrame:{v10 + 25.0 * -0.5, v9, 25.0, 25.0}];
}

void sub_1000B6F4C(id a1)
{
  qword_1008F9950 = [[CHFriendListTableViewCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  _objc_release_x1();
}

BOOL sub_1000B7B3C()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1 > 320.0;

  return v2;
}

double sub_1000B7B90()
{
  v0 = sub_1000B7B3C();
  result = 112.0;
  if (v0)
  {
    return 128.0;
  }

  return result;
}

double sub_1000B7BC0()
{
  v0 = sub_1000B7B3C();
  result = 152.0;
  if (v0)
  {
    return 168.0;
  }

  return result;
}

double sub_1000B7BF0()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1 * 0.5 + -45.0;

  return v2;
}

id sub_1000B7C48()
{
  v0 = sub_1000B7B3C();
  v1 = [NSNumber numberWithDouble:15.0];
  v2 = v1;
  if (v0)
  {
    v3 = &off_10086E4F0;
    v10 = v1;
    v4 = &off_10086E4E0;
    v5 = &v10;
    v6 = &off_10086E4D0;
  }

  else
  {
    v9 = v1;
    v4 = &off_10086E4D0;
    v6 = &off_10086E500;
    v5 = &v9;
    v3 = &off_10086E4D0;
  }

  v5[1] = v6;
  v5[2] = v4;
  v5[3] = v3;
  v7 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];

  return v7;
}

id sub_1000B7D34()
{
  if (qword_1008F9988 != -1)
  {
    sub_10069B5EC();
  }

  v1 = qword_1008F9980;

  return v1;
}

void sub_1000B7D78(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  Width = CGRectGetWidth(v14);

  v3 = Width * 0.1 + 15.0;
  if (!sub_1000B7B3C())
  {
    v3 = v3 + 4.0;
  }

  if (sub_1000B7B3C())
  {
    v4 = 168.0;
  }

  else
  {
    v4 = 152.0;
  }

  v5 = +[UIScreen mainScreen];
  [v5 scale];
  UIRoundToScale();
  v7 = Width + -15.0 - v6;

  v8 = [NSNumber numberWithDouble:v3];
  v9 = [NSNumber numberWithDouble:v4, v8];
  v13[1] = v9;
  v10 = [NSNumber numberWithDouble:v7];
  v13[2] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:3];
  v12 = qword_1008F9980;
  qword_1008F9980 = v11;
}

id sub_1000B7F00(void *a1, void *a2, int a3, double a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [NSLayoutConstraint constraintWithItem:v8 attribute:5 relatedBy:0 toItem:v7 attribute:5 multiplier:1.0 constant:15.0];
  if (a3)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v11 = [NSLayoutConstraint constraintWithItem:v8 attribute:v10 relatedBy:0 toItem:v7 attribute:v10 multiplier:1.0 constant:a4];
  v12 = [NSLayoutConstraint constraintWithItem:v8 attribute:6 relatedBy:0 toItem:v7 attribute:6 multiplier:1.0 constant:0.0];

  v13 = +[UIScreen mainScreen];
  [v13 scale];
  v15 = [NSLayoutConstraint constraintWithItem:v8 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:1.0 / v14];

  v18[0] = v9;
  v18[1] = v11;
  v18[2] = v12;
  v18[3] = v15;
  v16 = [NSArray arrayWithObjects:v18 count:4];

  return v16;
}

id sub_1000B841C(void *a1, void *a2, char a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [ARUIRingGroup activityRingGroupForRingType:3];
  v8 = [v7 forCompanion];

  LODWORD(v9) = 1145831424;
  [v8 setGroupDiameter:v9];
  LODWORD(v10) = 1121845248;
  [v8 setThickness:v10];
  LODWORD(v11) = 6.0;
  [v8 setInterspacing:v11];
  if (a3)
  {
    +[ARUISpriteSheetFactory wheelchairSharingSpriteSheet];
  }

  else
  {
    +[ARUISpriteSheetFactory sharingSpriteSheet];
  }
  v12 = ;
  [v8 setSpriteSheet:v12];
  [v8 hk_configureWithActivitySummary:v6 animated:0];

  v26.width = 1200.0;
  v26.height = 1200.0;
  UIGraphicsBeginImageContextWithOptions(v26, 1, 0.0);
  v13 = [ARUIRingsImageFactory renderRingGroup:v8 withRenderer:0];
  [v13 drawInRect:{192.0, 123.0, 816.0, 816.0}];
  v14 = [NSDateFormatter localizedStringFromDate:v5 dateStyle:3 timeStyle:0];

  v15 = [UIFont systemFontOfSize:60.0];
  v16 = [UIColor colorWithRed:0.682352941 green:0.705882353 blue:0.749019608 alpha:1.0];
  v23[0] = NSFontAttributeName;
  v23[1] = NSForegroundColorAttributeName;
  v24[0] = v15;
  v24[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v18 = [[NSAttributedString alloc] initWithString:v14 attributes:v17];
  [v14 sizeWithAttributes:v17];
  [v18 drawInRect:{(1200.0 - v19) * 0.5, (2139.0 - v20) * 0.5, v19}];
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v21;
}

id sub_1000B86E8(void *a1)
{
  v1 = a1;
  v2 = [NSDateFormatter localizedStringFromDate:v1 dateStyle:3 timeStyle:0];
  v3 = v1;
  v4 = +[NSCalendar currentCalendar];
  if ([v4 isDateInToday:v3])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"RING_SHARING_TODAY" value:&stru_1008680E8 table:@"Localizable"];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v7 = [v5 localizedStringForKey:@"RING_SHARING_%@" value:&stru_1008680E8 table:@"Localizable"];
    v6 = [NSString stringWithFormat:v7, v2];
  }

  return v6;
}

id sub_1000B882C()
{
  v2[0] = UIActivityTypeAddToReadingList;
  v2[1] = UIActivityTypeOpenInIBooks;
  v2[2] = UIActivityTypeAssignToContact;
  v2[3] = UIActivityTypeAirDrop;
  v2[4] = UIActivityTypeSharePlay;
  v0 = [NSArray arrayWithObjects:v2 count:5];

  return v0;
}

void sub_1000B8D00(uint64_t a1)
{
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  CGRectGetWidth(v6);
  v2 = [*(a1 + 32) collectionView];
  UIRoundToViewScale();
  qword_1008F9990 = v3;
}

id sub_1000B982C(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleID];
  if ([v1 needsWatchIcon])
  {
    v3 = @"watch";
  }

  else
  {
    v3 = @"phone";
  }

  [v1 preferredAppStoreIconWidth];
  v5 = v4;

  v6 = [NSString stringWithFormat:@"%@_%@_%.2f", v2, v3, v5];

  return v6;
}

void sub_1000BB8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BB954(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleAdvancedMode];
}

void sub_1000BB994(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAdvanceViewButton:v3];
}

void sub_1000BB9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BBAA8;
  v5[3] = &unk_10083AB50;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1000BBAA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setGoalSchedules:*(a1 + 32)];
    [v3 _showAdvancedViewIfNeeded];
    [v3 _setGoalQuantityForGoalView:v3[12]];
    WeakRetained = v3;
  }
}

void sub_1000BBB1C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000BBBF8;
    v6[3] = &unk_10083ABC8;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    [v5 _fetchActiveMoveGoalSampleWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_1000BBBF8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BBCC4;
  block[3] = &unk_10083ABA0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_1000BBCC4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a1[4])
  {
    v3 = WeakRetained;
    [WeakRetained[10] setAlpha:0.0];
    objc_storeStrong(v3 + 17, a1[5]);
    objc_storeStrong(v3 + 18, a1[4]);
    [v3 _setGoalQuantityForGoalView:v3[12]];
    [v3 updateContinueButton];
    WeakRetained = v3;
  }
}

void sub_1000BCD14(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069B668();
    }
  }
}

void sub_1000BDACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BDAE8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000BDBC4;
    v6[3] = &unk_10083ABC8;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    [v5 _fetchActiveExerciseGoalSampleWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_1000BDBC4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BDC90;
  block[3] = &unk_10083ABA0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_1000BDC90(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a1[4])
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 19, a1[5]);
    objc_storeStrong(v3 + 20, a1[4]);
    [v3 _setGoalQuantityForGoalView:v3[13]];
    [v3 _showAdvancedViewIfNeeded];
    [v3 updateHeaderViewContent];
    [v3 updateContinueButton];
    WeakRetained = v3;
  }
}

void sub_1000BE040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BE05C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000BE138;
    v6[3] = &unk_10083ABC8;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    [v5 _fetchActiveStandGoalSampleWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_1000BE138(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BE204;
  block[3] = &unk_10083ABA0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_1000BE204(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a1[4])
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 21, a1[5]);
    objc_storeStrong(v3 + 22, a1[4]);
    [v3 _setGoalQuantityForGoalView:v3[14]];
    [v3 _showAdvancedViewIfNeeded];
    [v3 updateHeaderViewContent];
    [v3 updateContinueButton];
    WeakRetained = v3;
  }
}

void sub_1000BE468(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogSync;
  if (v4 || !a2)
  {
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_FAULT))
    {
      sub_10069B714();
    }
  }

  else if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Finished end to end Cloud sync", v6, 2u);
  }
}

void sub_1000BE518(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogSync;
  if (a2)
  {
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Successfully forced nano sync after saving activity goals", v6, 2u);
    }
  }

  else if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    sub_10069B788();
  }
}

void *sub_1000BE9D4(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[11];
  if (v3 != result[12])
  {
    if (v3 != result[13])
    {
      if (v3 != result[14])
      {
        return result;
      }

      v15 = [result currentStandGoal];
      v16 = *(a1 + 32);
      v17 = *(v16 + 280);
      *(v16 + 280) = v15;

      v8 = *(a1 + 32);
      goto LABEL_16;
    }

    v11 = [result currentExerciseGoal];
    v12 = *(a1 + 32);
    v13 = *(v12 + 272);
    *(v12 + 272) = v11;

    v8 = *(a1 + 32);
    if (*(v8 + 120) != 1)
    {
      [v8 _removeAdvancedView];
      v14 = *(a1 + 32);

      return [v14 _displayStandGoalViewAnimated:1];
    }

LABEL_16:

    return [v8 _saveGoalsAndDismiss];
  }

  v4 = [result currentMoveGoal];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  v8 = *(a1 + 32);
  if ((*(v8 + 288) & 1) == 0)
  {
    v9 = [v8 _isStandalonePhoneFitnessMode];
    v8 = *(a1 + 32);
    if (v9)
    {
      goto LABEL_16;
    }
  }

  if (!*(v8 + 120))
  {
    goto LABEL_16;
  }

  [v8 _removeAdvancedView];
  v10 = *(a1 + 32);

  return [v10 _displayExerciseGoalViewAnimated:1];
}

void sub_1000BEB60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[26];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BEC48;
  v5[3] = &unk_10083AD08;
  v6 = *(a1 + 40);
  v4 = [v3 hk_filter:v5];
  [v2 _setGoalSchedules:v4];

  [*(*(a1 + 32) + 8) deleteObject:*(a1 + 40) withCompletion:&stru_10083AD28];
  (*(*(a1 + 48) + 16))();
}

void sub_1000BEC6C(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069B7F0();
    }
  }
}

id sub_1000BFABC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _formattingManager];
  v6 = [v5 localizedStringWithMoveQuantity:v4 activityMoveMode:*(*(a1 + 32) + 32)];

  return v6;
}

id sub_1000BFB3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _formattingManager];
  v6 = *(*(a1 + 32) + 32);
  [v4 _value];
  v8 = v7;

  v9 = [v5 localizedLongMoveUnitStringWithActivityMoveMode:v6 value:v8];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PER_DAY" value:&stru_1008680E8 table:@"ActivitySetup"];

  v12 = [NSString stringWithFormat:@"%@%@", v9, v11];
  v13 = [v12 localizedUppercaseString];

  return v13;
}

id sub_1000BFDF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _formattingManager];
  v5 = [v4 localizedStringWithBriskMinutes:v3];

  return v5;
}

id sub_1000BFE64(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _formattingManager];
  [v3 _value];
  v6 = v5;

  v7 = [v4 localizedLongBriskMinutesUnitStringForValue:v6];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PER_DAY" value:&stru_1008680E8 table:@"ActivitySetup"];

  v10 = [NSString stringWithFormat:@"%@%@", v7, v9];
  v11 = [v10 localizedUppercaseString];

  return v11;
}

id sub_1000C0108(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _formattingManager];
  v5 = [v4 localizedStringWithActiveHours:v3];

  return v5;
}

id sub_1000C0174(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _formattingManager];
  [v3 _value];
  v6 = v5;

  v7 = [v4 localizedLongActiveHoursUnitStringForValue:v6];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PER_DAY" value:&stru_1008680E8 table:@"ActivitySetup"];

  v10 = [NSString stringWithFormat:@"%@%@", v7, v9];
  v11 = [v10 localizedUppercaseString];

  return v11;
}

BOOL sub_1000C055C(id a1, HKActivityGoalSchedule *a2)
{
  v2 = a2;
  if ([(HKActivityGoalSchedule *)v2 goalType])
  {
    v3 = [(HKActivityGoalSchedule *)v2 goalType]== 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void sub_1000C0A44(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069B858();
    }
  }

  v8 = [v6 lastObject];
  v9 = [v8 quantity];

  (*(*(a1 + 40) + 16))();
}

void sub_1000C0EC8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069B8C0();
    }
  }

  v8 = [v6 lastObject];
  v9 = [v8 quantity];

  (*(*(a1 + 40) + 16))();
}

void sub_1000C110C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069B928();
    }
  }

  (*(*(a1 + 40) + 16))();
}

unint64_t sub_1000C125C(uint64_t a1, void *a2)
{
  result = [a2 goalType];
  if (result <= 3)
  {
    *(*(a1 + 32) + *off_10083AEE0[result]) = 1;
  }

  return result;
}

BOOL sub_1000C1430(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 goalType];
  v5 = [v3 goalType];

  return v4 == v5;
}

void sub_1000C1484(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069B990();
    }
  }
}

void sub_1000C14E4(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069B9F8();
    }
  }
}

void *sub_1000C1CEC(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1008F99A8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1000C1E2C;
    v5[4] = &unk_10083A788;
    v5[5] = v5;
    v6 = off_10083AEC8;
    v7 = 0;
    qword_1008F99A8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1008F99A8;
    if (qword_1008F99A8)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1008F99A8;
LABEL_5:
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1008F99A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000C1E2C()
{
  result = _sl_dlopen();
  qword_1008F99A8 = result;
  return result;
}

void sub_1000C1EB8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000C1ED8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1000C2A74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 reachableEmailAddress];
  if (!v4)
  {
    v5 = [v3 reachablePhoneNumber];
    v4 = sub_1000C2C20(v5);
  }

  v6 = [v4 destinationStripped];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [*(a1 + 32) recipientView];
  v8 = [v7 recipients];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) address];
        v14 = [v13 destinationStripped];

        LOBYTE(v13) = [v14 isEqualToString:v6];
        if (v13)
        {
          v15 = 0;
          goto LABEL_13;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_13:

  return v15;
}

id sub_1000C2C20(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 UTF8String], (v3 = CPPhoneNumberCopyNormalized()) != 0))
  {
    v4 = v3;
    v5 = CFStringCreateWithCString(0, v3, 0x8000100u);
    v6 = CPPhoneNumberCopyHomeCountryCode();
    v7 = CFPhoneNumberCreate();
    String = CFPhoneNumberCreateString();
    if (!String)
    {
      String = CFPhoneNumberCreateString();
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (String)
    {
      v9 = [String copy];
      CFRelease(String);
    }

    else
    {
      v9 = 0;
    }

    free(v4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1000C33D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C33FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000C3414()
{
  v0 = +[IMServiceImpl iMessageService];
  v1 = IMPreferredAccountForService();
  v2 = [v1 displayName];

  return v2;
}

void sub_1000C3480(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        dispatch_group_enter(*(a1 + 32));
        v11 = *(a1 + 48);
        v12 = *(*(a1 + 40) + 128);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000C363C;
        v14[3] = &unk_10083AF58;
        v15 = *(a1 + 56);
        v17 = *(a1 + 64);
        v16 = *(a1 + 32);
        [v12 sendInviteToRecipient:v10 callerID:v11 serviceIdentifier:v5 withCompletion:v14];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

void sub_1000C363C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C36F4;
  v8[3] = &unk_10083AF30;
  v11 = a2;
  v10 = *(a1 + 48);
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
  dispatch_group_leave(*(a1 + 40));
}

void sub_1000C36F4(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24) == 1)
  {
    v2 = *(a1 + 56);
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 24) = v2 & 1;
  v3 = *(*(a1 + 48) + 8);
  v6 = *(v3 + 40);
  v5 = (v3 + 40);
  v4 = v6;
  if (!v6)
  {
    v4 = *(a1 + 32);
  }

  objc_storeStrong(v5, v4);
}

void sub_1000C3B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C3BA0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqualToString:@"CHInvitationDestinationError"])
  {
    v7 = [v5 code];

    if (!v7)
    {
      ASLoggingInitialize();
      v8 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
      {
        sub_10069BAEC(v8);
      }

      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"SHARE_ACTIVITY" value:&stru_1008680E8 table:@"Localizable"];
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"SHARING_CANNOT_INVITE_MESSAGE" value:&stru_1008680E8 table:@"Localizable"];
      v13 = [UIAlertController alertControllerWithTitle:v10 message:v12 preferredStyle:1];

      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
      v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:0];
      [v13 addAction:v16];

      v17 = [*(a1 + 32) parentViewController];
      [v17 presentViewController:v13 animated:1 completion:0];
LABEL_21:

      goto LABEL_22;
    }
  }

  else
  {
  }

  if (v5 || (a2 & 1) == 0)
  {
    v20 = [v5 domain];
    if ([v20 isEqualToString:IDSSendErrorDomain])
    {
      v21 = [v5 code] == 1;
    }

    else
    {
      v21 = 0;
    }

    ASLoggingInitialize();
    v22 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_10069BA60(v5, v21, v22);
    }

    v23 = +[NSBundle mainBundle];
    v24 = v23;
    if (v21)
    {
      v25 = @"SHARING_CANNOT_INVITE_MESSAGE";
    }

    else
    {
      v25 = @"SHARING_INVITE_ERROR";
    }

    v13 = [v23 localizedStringForKey:v25 value:&stru_1008680E8 table:@"Localizable"];

    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"SHARE_ACTIVITY" value:&stru_1008680E8 table:@"Localizable"];
    v17 = [UIAlertController alertControllerWithTitle:v27 message:v13 preferredStyle:1];

    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
    v30 = [UIAlertAction actionWithTitle:v29 style:0 handler:0];
    [v17 addAction:v30];

    v31 = [*(a1 + 32) parentViewController];
    [v31 presentViewController:v17 animated:1 completion:0];

    goto LABEL_21;
  }

  ASLoggingInitialize();
  v18 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    v34 = 138412290;
    v35 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sent invitation to destinations %@", &v34, 0xCu);
  }

  [*(a1 + 32) _dismissAndNotifyDelegate];
LABEL_22:
  v32 = [*(a1 + 32) navigationItem];
  v33 = [v32 rightBarButtonItem];
  [v33 setEnabled:1];
}

void sub_1000C3FFC(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000C4324;
    v25[3] = &unk_10083AFF8;
    v25[4] = WeakRetained;
    v27 = &v28;
    v26 = a1[4];
    [v3 enumerateKeysAndObjectsUsingBlock:v25];
    v6 = v29[3];
    if (v6 >= [a1[5] count])
    {
      v16 = a1[4];
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_1000C4560;
      v23 = &unk_10083B020;
      objc_copyWeak(&v24, a1 + 6);
      [v5 _sendInviteToRecipientsByService:v16 completion:&v20];
      [v5 _dismissAndNotifyDelegate];
      objc_destroyWeak(&v24);
    }

    else
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"SHARE_ACTIVITY" value:&stru_1008680E8 table:@"Localizable"];
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"SHARING_CANNOT_INVITE_MESSAGE" value:&stru_1008680E8 table:@"Localizable"];
      v11 = [UIAlertController alertControllerWithTitle:v8 message:v10 preferredStyle:1];

      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
      v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:0];
      [v11 addAction:v14];

      v15 = [v5 parentViewController];
      [v15 presentViewController:v11 animated:1 completion:0];
    }

    v17 = objc_loadWeakRetained(a1 + 6);
    v18 = [v17 navigationItem];
    v19 = [v18 rightBarButtonItem];
    [v19 setEnabled:1];

    _Block_object_dispose(&v28, 8);
  }
}

void sub_1000C42F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak((v13 + 32));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C4324(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = objc_alloc_init(NSMutableSet);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([*(a1 + 32) _destinationMatchesCurrentAccountDestination:v12])
        {
          ASLoggingInitialize();
          v13 = ASLogDefault;
          if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping destination because it matches current account on this device: %@", buf, 0xCu);
          }
        }

        else
        {
          v14 = [*(a1 + 32) _recipientFromDestination:v12];
          if (v14)
          {
            [v6 addObject:v14];
            ++*(*(*(a1 + 48) + 8) + 24);
          }

          else
          {
            ASLoggingInitialize();
            v15 = ASLogDefault;
            if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v22 = v12;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Skipping destination because it no longer matches an CNComposeRecipient: %@", buf, 0xCu);
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v16];
}

void sub_1000C4560(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if ((v8 & 1) == 0 && WeakRetained)
  {
    v9 = [v5 domain];
    if ([v9 isEqualToString:IDSSendErrorDomain])
    {
      v10 = [v5 code] == 1;
    }

    else
    {
      v10 = 0;
    }

    ASLoggingInitialize();
    v11 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v5;
      v28 = 1024;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error sending invite (%@), destination unreachable=%d", &v26, 0x12u);
    }

    v12 = +[NSBundle mainBundle];
    v13 = v12;
    if (v10)
    {
      v14 = @"SHARING_CANNOT_INVITE_MESSAGE";
    }

    else
    {
      v14 = @"SHARING_INVITE_ERROR";
    }

    v15 = [v12 localizedStringForKey:v14 value:&stru_1008680E8 table:@"Localizable"];

    v16 = +[UIApplication sharedApplication];
    v17 = [v16 windows];
    v18 = [v17 firstObject];
    v19 = [v18 rootViewController];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"SHARE_ACTIVITY" value:&stru_1008680E8 table:@"Localizable"];
    v22 = [UIAlertController alertControllerWithTitle:v21 message:v15 preferredStyle:1];

    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
    v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:0];
    [v22 addAction:v25];

    [v19 presentViewController:v22 animated:1 completion:0];
  }
}

void sub_1000C4D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C4D60(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v22 = v6;
    v23 = v5;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          v13 = objc_alloc_init(CHContactWithReachableDestination);
          v14 = [v12 destination];
          v15 = [a1[4] objectForKeyedSubscript:v14];
          [(CHContactWithReachableDestination *)v13 setContact:v15];

          v16 = [v12 preferredServiceIdentifier];
          [(CHContactWithReachableDestination *)v13 setServiceIdentifier:v16];

          v17 = [v12 additionalServiceIdentifiers];
          v18 = [NSSet setWithArray:v17];
          [(CHContactWithReachableDestination *)v13 setAdditionalServiceIdentifiers:v18];

          v19 = [(CHContactWithReachableDestination *)v13 contact];

          if (v19)
          {
            [(CHContactWithReachableDestination *)v13 setReachableEmailAddress:v14];
          }

          else
          {
            v20 = [a1[5] objectForKeyedSubscript:v14];
            [(CHContactWithReachableDestination *)v13 setContact:v20];

            [(CHContactWithReachableDestination *)v13 setReachablePhoneNumber:v14];
          }

          [a1[6] _addSuggestedContact:{v13, v22, v23, v24}];
          [a1[6] setShownContacts:*(a1[6] + 2)];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    v6 = v22;
    v5 = v23;
  }

  else
  {
    ASLoggingInitialize();
    v21 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v5;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No reachable destinations for (%@), error: %@", buf, 0x16u);
    }
  }
}

void sub_1000C5014(id *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = objc_alloc_init(CHContactWithReachableDestination);
    v8 = [a1[4] objectForKeyedSubscript:v5];
    [(CHContactWithReachableDestination *)v7 setContact:v8];

    [(CHContactWithReachableDestination *)v7 setServiceIdentifier:v11];
    v9 = [(CHContactWithReachableDestination *)v7 contact];

    if (v9)
    {
      [(CHContactWithReachableDestination *)v7 setReachableEmailAddress:v5];
    }

    else
    {
      v10 = [a1[5] objectForKeyedSubscript:v5];
      [(CHContactWithReachableDestination *)v7 setContact:v10];

      [(CHContactWithReachableDestination *)v7 setReachablePhoneNumber:v5];
    }

    [WeakRetained _addSuggestedContact:v7];
    [WeakRetained setShownContacts:WeakRetained[2]];
  }
}

void sub_1000C5FD8(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] serviceIdentifier];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_1000C33FC;
  v14[4] = sub_1000C340C;
  v5 = [a1[5] objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(NSSet);
  }

  v15 = v7;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C6158;
  v9[3] = &unk_10083B0E8;
  v10 = a1[5];
  v13 = v14;
  v8 = v4;
  v11 = v8;
  v12 = a1[6];
  [v3 enumerateKeysAndObjectsUsingBlock:v9];

  _Block_object_dispose(v14, 8);
}

void sub_1000C6140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C6158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = *(a1 + 32);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C6348;
  v16[3] = &unk_10083B0C0;
  v8 = v5;
  v17 = v8;
  v18 = &v19;
  [v7 enumerateKeysAndObjectsUsingBlock:v16];
  if ([v6 integerValue] == 1)
  {
    v9 = [*(*(*(a1 + 56) + 8) + 40) setByAddingObject:v8];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [*(a1 + 32) setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:*(a1 + 40)];
    if ((v20[3] & 1) == 0)
    {
      if (*(a1 + 48))
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000C6394;
        block[3] = &unk_10083A9F8;
        v15 = *(a1 + 48);
        v13 = *(a1 + 40);
        v14 = v8;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }

  _Block_object_dispose(&v19, 8);
}

id sub_1000C6348(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1000C63B4(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = *(a1 + 32);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000C65C4;
  v22[3] = &unk_10083B160;
  v4 = v2;
  v23 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v22];
  v5 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [*(a1 + 40) _preferredServiceIdentifierForDestination:v11 inReachableDestinationsByService:{*(a1 + 32), v18}];
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = objc_alloc_init(NSSet);
        }

        v16 = v15;

        v17 = [v16 setByAddingObject:v11];

        [v5 setObject:v17 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000C65C4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allObjects];
  [v3 addObjectsFromArray:v4];
}

void sub_1000C6868(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [v5 firstObject];
    v8 = [v7 destination];
    v9 = [v8 isEqualToString:*(a1 + 32)];

    if (v9)
    {
      [*(a1 + 40) setTintColor:*(a1 + 48)];
    }
  }

  else
  {
    ASLoggingInitialize();
    v10 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No reachable destinations for (%@), error: %@", &v11, 0x16u);
    }
  }
}

void sub_1000C769C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C76B4(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v10 = [v6 contact];
  v8 = [v7 contact];

  v9 = [v10 isEqual:v8];
  *(*(*(a1 + 40) + 8) + 24) = v9;
  *a4 = v9;
}

int64_t sub_1000C79C0(id a1, CHContactWithReachableDestination *a2, CHContactWithReachableDestination *a3)
{
  v4 = a3;
  v5 = [(CHContactWithReachableDestination *)a2 contact];
  v6 = [CNContactFormatter stringFromContact:v5 style:0];

  v7 = [(CHContactWithReachableDestination *)v4 contact];

  v8 = [CNContactFormatter stringFromContact:v7 style:0];

  v9 = [v6 compare:v8];
  return v9;
}

void sub_1000C96E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C9704(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    [*(a1 + 32) setAverageHeartRate:v10];
  }

  if (v13)
  {
    [*(a1 + 32) setHeartRateReadings:?];
  }

  if (v9)
  {
    [*(a1 + 32) setRecoveryHeartRateReadings:v9];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];

  (*(*(a1 + 56) + 16))();
}

void sub_1000C9D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C9D88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C9DA0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  if (v14 && v15)
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = [v15 startDate];
    LODWORD(v18) = [v18 _activeDateIntervals:v19 containsDate:v20];

    if (v18)
    {
      v21 = *(*(*(a1 + 88) + 8) + 40);
      if (v21)
      {
LABEL_13:
        v32 = [HKHeartRateSummaryReading alloc];
        v33 = [v15 startDate];
        v34 = [v32 initWithDate:v33 quantity:v14];
        [v21 addObject:v34];

        goto LABEL_14;
      }

      v22 = objc_alloc_init(NSMutableArray);
      v23 = *(*(a1 + 88) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v25 = *(a1 + 88);
    }

    else
    {
      v27 = *(a1 + 48);
      v28 = [v15 startDate];
      LODWORD(v27) = [v27 containsDate:v28];

      if (!v27)
      {
        goto LABEL_14;
      }

      v21 = *(*(*(a1 + 96) + 8) + 40);
      if (v21)
      {
        goto LABEL_13;
      }

      v29 = objc_alloc_init(NSMutableArray);
      v30 = *(*(a1 + 96) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      v25 = *(a1 + 96);
    }

    v21 = *(*(v25 + 8) + 40);
    goto LABEL_13;
  }

  _HKInitializeLogging();
  v26 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_10069BB30(v17, v26);
  }

  objc_storeStrong((*(*(a1 + 104) + 8) + 40), a7);
LABEL_14:
  if (a6)
  {
    v35 = *(a1 + 56);
    if (v35)
    {
      v36 = +[HKUnit _countPerMinuteUnit];
      [v35 doubleValueForUnit:v36];
      v37 = [NSNumber numberWithDouble:?];
      v38 = *(*(a1 + 112) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;
    }

    else
    {
      if (!*(*(*(a1 + 88) + 8) + 40))
      {
LABEL_33:
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000CA218;
        block[3] = &unk_10083B288;
        v64 = *(a1 + 80);
        v57 = vextq_s8(*(a1 + 104), *(a1 + 104), 8uLL);
        v65 = *(a1 + 88);
        v66 = v57;
        dispatch_async(&_dispatch_main_q, block);

        goto LABEL_34;
      }

      v58 = v17;
      v60 = v16;
      v62 = v13;
      v36 = objc_alloc_init(NSMutableData);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v40 = *(*(*(a1 + 88) + 8) + 40);
      v41 = [v40 countByEnumeratingWithState:&v67 objects:v71 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v68;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v68 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v67 + 1) + 8 * i);
            v46 = [v45 quantity];
            [v46 _beatsPerMinute];
            v48 = v47;

            v49 = [v45 date];
            [v36 fiui_appendHeartRate:v49 date:v48];
          }

          v42 = [v40 countByEnumeratingWithState:&v67 objects:v71 count:16];
        }

        while (v42);
      }

      v50 = *(a1 + 64);
      if (!v50)
      {
        v50 = *(a1 + 72);
      }

      v39 = [v50 startDate];
      v13 = v62;
      v51 = *(a1 + 64);
      if (!v51)
      {
        v51 = *(a1 + 72);
      }

      v52 = [v51 endDate];
      v17 = v59;
      v16 = v61;
      [v36 fiui_weightedAverageHeartRateWithStartDate:v39 endDate:v52];
      if (v53 != 0.0)
      {
        v54 = [NSNumber numberWithDouble:?];
        v55 = *(*(a1 + 112) + 8);
        v56 = *(v55 + 40);
        *(v55 + 40) = v54;
      }
    }

    goto LABEL_33;
  }

LABEL_34:
}

void sub_1000CA458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CA478(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setDistanceSamples:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CA888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_1000CA8B0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = [*(a1 + 32) totalDistance];
    [v6 setObject:v8 forKeyedSubscript:*(a1 + 40)];

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 48) workoutActivity:*(a1 + 56)];
  }

  (*(*(a1 + 64) + 16))();
}

void sub_1000CA968(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v23 = a3;
  v5 = +[HKUnit meterUnit];
  v6 = [HKQuantity quantityWithUnit:v5 doubleValue:0.0];

  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v35 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v25 = *v36;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v11 = *(a1 + 32);
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          do
          {
            v15 = 0;
            do
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v31 + 1) + 8 * v15);
              v17 = [v10 startDate];
              LODWORD(v16) = [v16 containsDate:v17];

              if (v16)
              {
                v18 = [v10 quantity];
                v19 = [v6 _quantityByAddingQuantity:v18];

                v6 = v19;
              }

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v13);
        }

        v9 = v9 + 1;
      }

      while (v9 != v8);
      v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CAC44;
  block[3] = &unk_10083A9F8;
  v20 = *(a1 + 40);
  v28 = v6;
  v29 = v23;
  v30 = v20;
  v21 = v23;
  v22 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000CAE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000CAE78(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  if (v14 && v15)
  {
    v29 = v16;
    v30 = v13;
    v18 = *(*(*(a1 + 48) + 8) + 40);
    if (!v18)
    {
      v19 = objc_alloc_init(NSMutableArray);
      v20 = *(*(a1 + 48) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      v18 = *(*(*(a1 + 48) + 8) + 40);
    }

    v22 = *(a1 + 32);
    v23 = [v15 startDate];
    v24 = [v15 endDate];
    v25 = [HKQuantitySample quantitySampleWithType:v22 quantity:v14 startDate:v23 endDate:v24];
    [v18 addObject:v25];

    v16 = v29;
    v13 = v30;
    if (!a6)
    {
      goto LABEL_11;
    }

LABEL_10:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CB098;
    block[3] = &unk_10083AFA8;
    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_11;
  }

  _HKInitializeLogging();
  v26 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_10069BBA8(a1, v17, v26);
  }

  v27 = *(*(a1 + 48) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = 0;

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a7);
  if (a6)
  {
    goto LABEL_10;
  }

LABEL_11:
}

void sub_1000CB2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CB318(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [NSPredicate predicateWithBlock:&stru_10083B390];
    v9 = [v5 filteredArrayUsingPredicate:v7];

    [*(a1 + 32) setCadenceSamples:v9];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

BOOL sub_1000CB3F8(id a1, HKQuantitySample *a2, NSDictionary *a3)
{
  v3 = [(HKQuantitySample *)a2 fiui_dateInterval];
  [v3 duration];
  v5 = v4 < 5.0;

  return v5;
}

void sub_1000CB73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CB770(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setStrokeSamples:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CB814(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB8EC;
  block[3] = &unk_10083A9F8;
  v8 = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000CBBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CBBE8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setPaceSamples:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CBEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CBEEC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setPowerSamples:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CC178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CC198(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setCyclingSpeedSamples:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CC410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CC42C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setStrideLengthSamples:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CC6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CC6C0(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setVerticalOscillationSamples:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CC938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CC954(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setGroundContactTimeSamples:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CCCA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1000CCCC4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setSplits:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CCFAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000CCFC8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setCustomSplits:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CD334(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000CD350(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    [*(a1 + 32) setSegments:v3];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:0];
  }

  (*(*(a1 + 48) + 16))();
}

BOOL sub_1000CD3DC(id a1, HKWorkoutEvent *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(HKWorkoutEvent *)v3 type]== 4)
  {
    v4 = [(HKWorkoutEvent *)v3 metadata];
    v5 = [v4 objectForKey:FIUIPrivateMetadataKeyMarkerEventSubtype];

    if (v5)
    {
      v6 = [v5 intValue] == 1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000CD470(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 _queue_segmentsForWorkout:v3 markerEvents:v4 error:&v14];
  v6 = v14;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CD55C;
  v10[3] = &unk_10083A9F8;
  v7 = *(a1 + 56);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_1000CD76C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    [*(a1 + 32) setDownhillRuns:v3];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:0];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000CD7F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 _queue_downhillRunsForWorkout:v3 error:&v13];
  v5 = v13;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CD8E4;
  v9[3] = &unk_10083A9F8;
  v6 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v10 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_1000CDAF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    [*(a1 + 32) setIntervals:v3];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:0];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000CDB80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 _queue_intervalsForWorkout:v3 error:&v13];
  v5 = v13;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CDC6C;
  v9[3] = &unk_10083A9F8;
  v6 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v10 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_1000CDF60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000CDF80(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    [*(a1 + 32) setTrackLaps:v3];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:0];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000CE030(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 _queue_trackLapsForWorkout:v3 lapEvents:v4 error:&v14];
  v6 = v14;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CE11C;
  v10[3] = &unk_10083A9F8;
  v7 = *(a1 + 56);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_1000CE368(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setSwimDistanceByStrokeStyle:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CE40C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 _queue_swimDistanceByStrokeStyleForWorkout:v3 workoutActivity:v4 error:&v14];
  v6 = v14;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CE4F8;
  v10[3] = &unk_10083A9F8;
  v7 = *(a1 + 56);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_1000CE744(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setSwimDistanceByStrokeStyle:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CE7E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 _queue_openWaterSwimDistanceByStrokeStyleForWorkout:v3 workoutActivity:v4 error:&v14];
  v6 = v14;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CE8D4;
  v10[3] = &unk_10083A9F8;
  v7 = *(a1 + 56);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_1000CEB20(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setSwimmingSets:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CEBC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 _queue_swimmingSetsForWorkout:v3 workoutActivity:v4 error:&v14];
  v6 = v14;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CECB0;
  v10[3] = &unk_10083A9F8;
  v7 = *(a1 + 56);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_1000CEEFC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setSwimmingSplits:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained saveContainerToCache:*(a1 + 32) forWorkout:*(a1 + 40) workoutActivity:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000CEFA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 _queue_swimmingSplitsForWorkout:v3 workoutActivity:v4 error:&v14];
  v6 = v14;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CF08C;
  v10[3] = &unk_10083A9F8;
  v7 = *(a1 + 56);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_1000CF5F8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000CF6F8;
  v13[3] = &unk_10083B498;
  v14 = a5;
  v10 = v14;
  objc_copyWeak(&v17, (a1 + 32));
  v15 = v9;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(&_dispatch_main_q, v13);

  objc_destroyWeak(&v17);
}

void sub_1000CF6F8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        sub_10069BC34();
      }

      v3 = [WeakRetained healthStore];
      [v3 stopQuery:WeakRetained[5]];

      v4 = WeakRetained[5];
      WeakRetained[5] = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Workout Data Calculator] Updated Effort Relationship Query with anchor %@", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _handleUpdatedRelationships:*(a1 + 48) withAnchor:*(a1 + 40)];
  }
}

void sub_1000CF82C(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 count])
  {
    v3 = [[CHEffortSampleCollection alloc] initWithQuantitySamples:v8];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained cacheContainerForWorkout:*(a1 + 32) workoutActivity:*(a1 + 40)];
      [v6 setEffortSampleCollection:v3];
      [v5 saveContainerToCache:v6 forWorkout:*(a1 + 32) workoutActivity:*(a1 + 40)];
    }

    v7 = [(CHEffortSampleCollection *)v3 preferredQuantity];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000CF910(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CF9BC;
  v6[3] = &unk_10083B3B8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1000CFF10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v31 = a1;
  v32 = a5;
  v35 = [*(a1 + 32) _activeDateIntervalsForWorkout:*(a1 + 40) during:*(a1 + 48)];
  v8 = objc_alloc_init(NSMutableData);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v34 = *v41;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v13 = v35;
        v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v37;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v37 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v36 + 1) + 8 * j);
              v19 = [v12 date];
              LODWORD(v18) = [v18 containsDate:v19];

              if (v18)
              {
                v20 = [v12 quantity];
                [v20 _beatsPerMinute];
                v22 = v21;

                v23 = [v12 date];
                [v8 fiui_appendHeartRate:v23 date:v22];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v15);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v10);
  }

  v24 = [*(v31 + 48) startDate];
  v25 = [*(v31 + 48) endDate];
  [v8 fiui_weightedAverageHeartRateWithStartDate:v24 endDate:v25];
  v27 = v26;

  if (v27 == 0.0)
  {
    v30 = v32;
    (*(*(v31 + 56) + 16))();
  }

  else
  {
    v28 = +[HKUnit _countPerMinuteUnit];
    v29 = [HKQuantity quantityWithUnit:v28 doubleValue:v27];

    (*(*(v31 + 56) + 16))();
    v30 = v32;
  }
}

void sub_1000D0304(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v35 = [*(a1 + 32) _activeDateIntervalsForWorkout:*(a1 + 40) during:*(a1 + 48)];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = v5;
  v36 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
  obj = v7;
  if (!v36)
  {

LABEL_25:
    (*(*(a1 + 56) + 16))();
    goto LABEL_26;
  }

  v32 = a1;
  v34 = *v43;
  v8 = 0.0;
  v9 = 0.0;
  do
  {
    v10 = 0;
    do
    {
      if (*v43 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v37 = v10;
      v11 = *(*(&v42 + 1) + 8 * v10);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v12 = v35;
      v13 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v39;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v39 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v38 + 1) + 8 * i);
            v18 = [v11 startDate];
            LODWORD(v17) = [v17 containsDate:v18];

            if (v17)
            {
              v19 = [v11 quantityType];
              v20 = 1.0;
              if (![v19 aggregationStyle])
              {
                v21 = [v11 fiui_dateInterval];
                [v21 duration];
                v20 = v22;
              }

              v23 = [v11 quantity];
              v24 = +[HKUnit _countPerMinuteUnit];
              v25 = [v23 isCompatibleWithUnit:v24];

              v26 = [v11 quantity];
              if (v25)
              {
                v27 = +[HKUnit _countPerMinuteUnit];
                [v26 doubleValueForUnit:v27];
                v29 = v28 / 60.0;
              }

              else
              {
                v27 = +[HKUnit countUnit];
                [v26 doubleValueForUnit:v27];
              }

              v8 = v8 + v20;
              v9 = v9 + v29;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v14);
      }

      v10 = v37 + 1;
    }

    while ((v37 + 1) != v36);
    v36 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  }

  while (v36);

  a1 = v32;
  if (v8 <= 0.0)
  {
    goto LABEL_25;
  }

  v30 = +[HKUnit _countPerMinuteUnit];
  v31 = [HKQuantity quantityWithUnit:v30 doubleValue:v9 / v8 * 60.0];

  (*(*(v32 + 56) + 16))();
LABEL_26:
}

void sub_1000D076C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v30 = [*(a1 + 32) _activeDateIntervalsForWorkout:*(a1 + 40) during:*(a1 + 48)];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v8)
  {

LABEL_20:
    (*(*(a1 + 56) + 16))();
    goto LABEL_21;
  }

  v9 = v8;
  v26 = a1;
  v27 = v6;
  obj = v7;
  v29 = *v36;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v36 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v35 + 1) + 8 * i);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = v30;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v31 + 1) + 8 * j);
            v20 = [v13 startDate];
            LODWORD(v19) = [v19 containsDate:v20];

            if (v19)
            {
              v21 = [v13 quantity];
              v22 = +[HKUnit wattUnit];
              [v21 doubleValueForUnit:v22];
              v11 = v11 + v23;

              v10 = v10 + 1.0;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v16);
      }
    }

    v7 = obj;
    v9 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  }

  while (v9);

  a1 = v26;
  v6 = v27;
  if (v10 <= 0.0)
  {
    goto LABEL_20;
  }

  v24 = +[HKUnit wattUnit];
  v25 = [HKQuantity quantityWithUnit:v24 doubleValue:v11 / v10];

  (*(*(v26 + 56) + 16))();
LABEL_21:
}

void sub_1000D0AE0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a2 objectForKey:&off_10086E158];
    if ([v5 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v21;
        v11 = 0.0;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            [v13 durationScaledToFillSplit];
            v11 = v11 + v14;
            v9 += [v13 strokeCountScaledToFillSplit];
          }

          v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = 0;
        v11 = 0.0;
      }

      v15 = v11 / [v6 count];
      v16 = (v9 / [v6 count]);
      v17 = *(a1 + 32);
      v18 = [NSNumber numberWithDouble:v15];
      v19 = [NSNumber numberWithInteger:v16];
      (*(v17 + 16))(v17, v18, v19, 0);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_1000D15E4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v5];

  [v4 addObject:v7];
}

void sub_1000D1670(uint64_t a1, void *a2, char *a3)
{
  v4 = a2;
  v5 = [*(a1 + 32) lastObject];
  if (v5)
  {
    v6 = [v4 startDate];
    v7 = [v5 endDate];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;

    if (v9 > 5.0)
    {
      v10 = objc_alloc_init(CHWorkoutInterval);
      v11 = [v5 endDate];
      [(CHWorkoutSegment *)v10 setStartDate:v11];

      v12 = [v4 startDate];
      [(CHWorkoutSegment *)v10 setEndDate:v12];

      [(CHWorkoutSegment *)v10 setElapsedTime:v9];
      [(CHWorkoutInterval *)v10 setStepKeyPath:@"WORKOUT_CONFIGURATION_GOAL_UNKNOWN"];
      [*(a1 + 32) addObject:v10];
      _HKInitializeLogging();
      v13 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [(CHWorkoutInterval *)v10 description];
        *buf = 138412290;
        v79 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[interval][recovery] detected large gap between interval, adding placeholder. %@", buf, 0xCu);
      }
    }
  }

  v16 = objc_alloc_init(CHWorkoutInterval);
  v17 = [v4 startDate];
  [(CHWorkoutSegment *)v16 setStartDate:v17];

  v18 = [v4 endDate];
  [(CHWorkoutSegment *)v16 setEndDate:v18];

  v19 = [v4 metadata];
  v20 = +[HKWorkout kIntervalWorkoutStepMetadataKey];
  v21 = [v19 objectForKeyedSubscript:v20];
  [(CHWorkoutInterval *)v16 setStepKeyPath:v21];

  v22 = [v4 metadata];
  v23 = +[HKWorkout kIntervalWorkoutStepSuccessful];
  v24 = [v22 objectForKeyedSubscript:v23];
  -[CHWorkoutInterval setWasSuccessful:](v16, "setWasSuccessful:", [v24 BOOLValue]);

  v25 = [NSDateInterval alloc];
  v26 = [(CHWorkoutSegment *)v16 startDate];
  v27 = [(CHWorkoutSegment *)v16 endDate];
  v28 = [v25 initWithStartDate:v26 endDate:v27];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v29 = *(a1 + 40);
  v30 = [v29 countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v74;
    v33 = 0.0;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v74 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v35 = [v28 intersectionWithDateInterval:*(*(&v73 + 1) + 8 * i)];
        v36 = v35;
        if (v35)
        {
          [v35 duration];
          v33 = v33 + v37;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v73 objects:v77 count:16];
    }

    while (v31);
  }

  else
  {
    v33 = 0.0;
  }

  [(CHWorkoutSegment *)v16 setElapsedTime:v33];
  if ([(CHWorkoutInterval *)v16 wasSuccessful])
  {
    v38 = *(a1 + 48);
    v39 = [(CHWorkoutInterval *)v16 stepKeyPath];
    v40 = [v38 expectedIntervalDurationForStepKeyPath:v39];

    if (v40)
    {
      v41 = +[HKUnit secondUnit];
      [v40 doubleValueForUnit:v41];
      v43 = v42;

      [(CHWorkoutSegment *)v16 elapsedTime];
      if (vabdd_f64(v44, v43) > 1.0)
      {
        v46 = *(a1 + 48);
        v45 = *(a1 + 56);
        v47 = [(CHWorkoutSegment *)v16 startDate];
        v48 = [v45 _endDateInWorkout:v46 reachingAccumulatedTime:v47 fromStartDate:v43];

        if (v48)
        {
          [(CHWorkoutSegment *)v16 setEndDate:v48];
          _HKInitializeLogging();
          v49 = HKLogWorkouts;
          if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
          {
            v50 = v49;
            v51 = [(CHWorkoutInterval *)v16 description];
            *buf = 138412290;
            v79 = v51;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[interval][recovery] detected unended time interval, resetting endDate to expected time. %@", buf, 0xCu);
          }
        }
      }

      [(CHWorkoutSegment *)v16 setElapsedTime:v43];
    }

    v52 = *(a1 + 48);
    v53 = [(CHWorkoutInterval *)v16 stepKeyPath];
    v54 = [v52 expectedIntervalDistanceForStepKeyPath:v53];

    if (!v54)
    {
      goto LABEL_33;
    }

    v55 = +[HKUnit meterUnit];
    [v54 doubleValueForUnit:v55];
    v57 = v56;

    v58 = [v4 endDate];
    v59 = [*(a1 + 48) endDate];
    if ([v58 isEqualToDate:v59])
    {
      v60 = [*(a1 + 48) workoutActivities];
      v71 = a1;
      v61 = v40;
      v62 = v5;
      v63 = [v60 count] - 1;

      v64 = v63 == a3;
      v5 = v62;
      v40 = v61;
      a1 = v71;
      if (v64)
      {
LABEL_33:

        goto LABEL_34;
      }

      v66 = *(v71 + 48);
      v65 = *(v71 + 56);
      v67 = [(CHWorkoutSegment *)v16 startDate];
      v58 = [v65 _endDateInWorkout:v66 reachingAccumulatedDistance:v67 fromStartDate:v57];

      if (v58)
      {
        [(CHWorkoutSegment *)v16 setEndDate:v58];
        _HKInitializeLogging();
        v68 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
        {
          v69 = v68;
          v70 = [(CHWorkoutInterval *)v16 description];
          *buf = 138412290;
          v79 = v70;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[interval][recovery] detected unended distance interval, resetting endDate to expected time. %@", buf, 0xCu);
        }
      }
    }

    else
    {
    }

    goto LABEL_33;
  }

LABEL_34:
  [*(a1 + 32) addObject:{v16, v71}];
}

void sub_1000D1D40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  if ([v5 count])
  {
    v7 = FUInterpolateQuantitySamplesOverDateIntervals();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D1E50;
    v10[3] = &unk_10083B600;
    v11 = *(a1 + 40);
    v8 = *(a1 + 48);
    v14 = *(a1 + 80);
    v9 = *(a1 + 56);
    v12 = v8;
    v13 = v9;
    [v7 enumerateObjectsUsingBlock:v10];
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_1000D1E50(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 distance];

  if (!v6)
  {
    [v5 setDistance:v28];
  }

  v7 = *(a1 + 40);
  v8 = [v5 stepKeyPath];
  v9 = [v7 requiredDistanceForIntervalTimeGoalForStepKeyPath:v8];

  if (*(a1 + 56) == 1 && v9)
  {
    v10 = [*(a1 + 40) workoutActivities];
    v11 = [v10 objectAtIndexedSubscript:a3];

    v12 = [v11 metadata];
    v13 = +[HKWorkout kIntervalWorkoutStepDistanceGoalAchievedDurationKey];
    v14 = [v12 objectForKeyedSubscript:v13];

    v15 = [v11 metadata];
    v16 = +[HKWorkout kIntervalWorkoutStepDistanceGoalAchievedDateKey];
    v17 = [v15 objectForKeyedSubscript:v16];

    v18 = *(a1 + 40);
    v19 = [v5 stepKeyPath];
    v20 = [v18 expectedIntervalDurationForStepKeyPath:v19];

    if (v14)
    {
      v21 = +[HKUnit secondUnit];
      [v20 doubleValueForUnit:v21];
      [v5 setElapsedTime:?];

      [v14 doubleValue];
      v23 = v22;
    }

    else
    {
      if (!v17)
      {
LABEL_10:

        goto LABEL_11;
      }

      v24 = +[HKUnit secondUnit];
      [v20 doubleValueForUnit:v24];
      [v5 setElapsedTime:?];

      v25 = *(a1 + 48);
      v26 = [v5 startDate];
      [v25 _activeWorkoutElapsedTimeFromDate:v26 toDate:v17 forWorkout:*(a1 + 40) workoutActivity:v11];
      v23 = v27;
    }

    [v5 setDistanceGoalAchievedTime:v23];
    goto LABEL_10;
  }

LABEL_11:
}

void sub_1000D20C4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v10 = v6;
  if (v6)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v9 = [a3 sumQuantity];
    [*(a1 + 32) setActiveEnergy:v9];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000D2B9C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v5];

  [v4 addObject:v7];
}

void sub_1000D2C28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if ([v5 count])
  {
    v7 = FUInterpolateQuantitySamplesOverDateIntervals();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000D2D18;
    v8[3] = &unk_10083B678;
    v9 = *(a1 + 40);
    [v7 enumerateObjectsUsingBlock:v8];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1000D2D18(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 distance];

  if (!v6)
  {
    [v5 setDistance:v7];
  }
}

void sub_1000D2D98(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v10 = v6;
  if (v6)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v9 = [a3 sumQuantity];
    [*(a1 + 32) setActiveEnergy:v9];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000D300C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000D3030(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000D37E0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v5];

  [v4 addObject:v7];
}

void sub_1000D386C(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v17 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v5 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [NSDateInterval alloc];
        v13 = [v11 startDate];
        v14 = [v11 endDate];
        v15 = [v12 initWithStartDate:v13 endDate:v14];
        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  if ([v18 count])
  {
    v16 = FUInterpolateQuantitySamplesOverDateIntervals();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000D3AB4;
    v19[3] = &unk_10083B6F0;
    v20 = *(a1 + 40);
    v21 = *(a1 + 32);
    [v16 enumerateObjectsUsingBlock:v19];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1000D3AB4(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 metadata];
  v7 = [v6 allKeys];
  v8 = [v7 containsObject:FIPrivateMetadataKeyLapDistance];

  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    [v9 setDistance:v10];
  }
}

void sub_1000D3B7C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v10 = v6;
  if (v6)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v9 = [a3 sumQuantity];
    [*(a1 + 32) setActiveEnergy:v9];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000D3FFC(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_1000D404C(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_1000D409C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 metadata];
  v8 = [v7 objectForKeyedSubscript:HKMetadataKeySwimmingStrokeStyle];
  v9 = v8;
  v10 = &off_10086E188;
  if (v8)
  {
    v10 = v8;
  }

  v16 = v10;

  if ([*(*(*(a1 + 40) + 8) + 40) count] >= a3 + 1)
  {
    v11 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a3];
    v12 = [v11 quantity];

    v13 = [*(a1 + 32) objectForKeyedSubscript:v16];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 _quantityByAddingQuantity:v12];
    }

    else
    {
      v15 = v12;
    }

    [*(a1 + 32) setObject:v15 forKeyedSubscript:v16];
  }

  else
  {
    *a4 = 1;
  }
}

void sub_1000D4A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_1000D4A94(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_1000D4AE4(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_1000D4B34(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(a1 + 32) count] - 1 == a3)
  {
    v6 = a1;
    v7 = 0;
  }

  else
  {
    [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
    v7 = v6 = a1;
  }

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000D50B0;
  v59[3] = &unk_10083B788;
  v8 = v5;
  v60 = v8;
  v9 = [NSPredicate predicateWithBlock:v59];
  v10 = [*(*(*(v6 + 64) + 8) + 40) filteredArrayUsingPredicate:v9];
  v46 = v9;
  v11 = [*(*(*(v6 + 72) + 8) + 40) filteredArrayUsingPredicate:v9];
  [*(*(*(v6 + 64) + 8) + 40) removeObjectsInArray:v10];
  v47 = v6;
  v44 = v11;
  [*(*(*(v6 + 72) + 8) + 40) removeObjectsInArray:v11];
  v12 = objc_alloc_init(CHWorkoutSwimmingSet);
  v13 = [v8 dateInterval];
  v14 = [v13 startDate];
  [(CHWorkoutSwimmingSet *)v12 setStartDate:v14];

  v15 = [v8 dateInterval];
  v16 = [v15 endDate];
  [(CHWorkoutSwimmingSet *)v12 setMovementEndDate:v16];

  if (v7)
  {
    v17 = [v7 dateInterval];
    [v17 startDate];
  }

  else
  {
    v17 = [v8 dateInterval];
    [v17 endDate];
  }
  v18 = ;
  v45 = v8;
  v48 = v7;
  [(CHWorkoutSwimmingSet *)v12 setEndDate:v18];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v19 = v10;
  v20 = [v19 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v56;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = [*(*(&v55 + 1) + 8 * i) quantity];
        v26 = +[HKUnit countUnit];
        [v25 doubleValueForUnit:v26];
        v28 = llround(v27);

        v22 += v28;
      }

      v21 = [v19 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v29 = +[HKUnit meterUnit];
  v30 = [HKQuantity quantityWithUnit:v29 doubleValue:0.0];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v31 = v44;
  v32 = [v31 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v52;
    do
    {
      v35 = 0;
      v36 = v30;
      do
      {
        if (*v52 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v37 = [*(*(&v51 + 1) + 8 * v35) quantity];
        v30 = [v36 _quantityByAddingQuantity:v37];

        v35 = v35 + 1;
        v36 = v30;
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v33);
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000D5184;
  v49[3] = &unk_10083B7B0;
  v38 = v45;
  v50 = v38;
  v39 = [NSPredicate predicateWithBlock:v49];
  v40 = [v47[5] filteredArrayUsingPredicate:v39];
  -[CHWorkoutSwimmingSet setDominantStrokeStyle:](v12, "setDominantStrokeStyle:", [v47[6] _queue_strokeStyleForLaps:v40]);
  [(CHWorkoutSwimmingSet *)v12 setStrokeCount:v22];
  [(CHWorkoutSwimmingSet *)v12 setDistance:v30];
  v41 = [v38 metadata];
  v42 = [v41 objectForKeyedSubscript:HKMetadataKeySWOLFScore];
  [v42 doubleValue];
  [(CHWorkoutSwimmingSet *)v12 setSwolfScore:v43];

  if ([(CHWorkoutSwimmingSet *)v12 dominantStrokeStyle]== 6)
  {
    [(CHWorkoutSwimmingSet *)v12 setStrokeCount:0];
    [(CHWorkoutSwimmingSet *)v12 setSwolfScore:0];
  }

  [v47[7] addObject:v12];
}

BOOL sub_1000D50B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSDateInterval alloc];
  v5 = [v3 startDate];
  v6 = [v3 endDate];

  v7 = [v4 initWithStartDate:v5 endDate:v6];
  v8 = [*(a1 + 32) dateInterval];
  v9 = [v7 intersectionWithDateInterval:v8];
  [v9 duration];
  v11 = v10 > 2.22044605e-16;

  return v11;
}

BOOL sub_1000D5184(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 3)
  {
    v4 = [v3 dateInterval];
    v5 = [*(a1 + 32) dateInterval];
    v6 = [v4 intersectionWithDateInterval:v5];
    [v6 duration];
    v8 = v7 > 2.22044605e-16;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1000D59C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_1000D59DC(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 timeIntervalSinceDate:a2];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

void sub_1000D5DAC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v31 = v5;
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) objectAtIndexedSubscript:a3 - 1];
    v8 = [v7 endDate];
    v9 = [v31 startDate];
    [v6 _activeWorkoutElapsedTimeFromDate:v8 toDate:v9 forWorkout:*(a1 + 48) workoutActivity:*(a1 + 56)];
    v11 = v10;

    v5 = v31;
    if (v11 > 2.22044605e-16)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 64);
      [*(a1 + 72) doubleValueForUnit:*(a1 + 80)];
      [v12 _updateSplits:v13 withDistance:0 duration:0.0 strokeCount:v11 splitDelimiterInUserUnit:v14];
      v5 = v31;
    }
  }

  v15 = *(a1 + 32);
  v16 = [v5 startDate];
  v17 = [v31 endDate];
  [v15 _activeWorkoutElapsedTimeFromDate:v16 toDate:v17 forWorkout:*(a1 + 48) workoutActivity:*(a1 + 56)];
  v19 = v18;

  v20 = *(a1 + 32);
  v21 = *(a1 + 64);
  v22 = [v31 quantity];
  [v22 doubleValueForUnit:*(a1 + 80)];
  v24 = v23;
  v25 = [*(a1 + 88) objectAtIndexedSubscript:a3];
  v26 = [v25 quantity];
  v27 = +[HKUnit countUnit];
  [v26 doubleValueForUnit:v27];
  v29 = v28;
  [*(a1 + 72) doubleValueForUnit:*(a1 + 80)];
  [v20 _updateSplits:v21 withDistance:v29 duration:v24 strokeCount:v19 splitDelimiterInUserUnit:v30];
}

void sub_1000D67E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_1000D6854(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_1000D68A4(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_1000D6B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [HKQuery predicateForSamplesWithStartDate:a2 endDate:a3 options:0];
  [v3 addObject:v4];
}

void sub_1000D6B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [HKQuery predicateForSamplesWithStartDate:a2 endDate:a3 options:0];
  [v3 addObject:v4];
}

void sub_1000D6D14(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v5];

  [v4 addObject:v7];
}

void sub_1000D6DA0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v5];

  [v4 addObject:v7];
}

NSPredicate *__cdecl sub_1000D6E90(id a1, NSDateInterval *a2)
{
  v2 = a2;
  v3 = [(NSDateInterval *)v2 startDate];
  v4 = [(NSDateInterval *)v2 endDate];

  v5 = [HKQuery predicateForSamplesWithStartDate:v3 endDate:v4 options:1];

  return v5;
}

void sub_1000D7164(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) startDate];
  v7 = [v6 compare:v5];

  v8 = [*(a1 + 32) endDate];
  v9 = [v8 compare:v22];

  if (v7 != 1 && v9 + 1 != 0)
  {
    v11 = [*(a1 + 32) startDate];
    v12 = [v11 compare:v5];

    v13 = [*(a1 + 40) count];
    if (v12 != -1 || v13)
    {
      v14 = v22;
    }

    else
    {
      v14 = [*(a1 + 32) startDate];
    }

    v15 = v14;
    v16 = [*(a1 + 32) endDate];
    v17 = [v16 compare:v5];

    if (v17 == -1)
    {
      v18 = [*(a1 + 32) endDate];
    }

    else
    {
      v18 = v5;
    }

    v19 = v18;
    v20 = *(a1 + 40);
    v21 = [[NSDateInterval alloc] initWithStartDate:v15 endDate:v18];
    [v20 addObject:v21];
  }
}

void sub_1000D73BC(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) startDate];
  v7 = [v6 compare:v5];

  v8 = [*(a1 + 32) endDate];
  v9 = [v8 compare:v22];

  if (v7 != 1 && v9 + 1 != 0)
  {
    v11 = [*(a1 + 32) startDate];
    v12 = [v11 compare:v5];

    v13 = [*(a1 + 40) count];
    if (v12 != -1 || v13)
    {
      v14 = v22;
    }

    else
    {
      v14 = [*(a1 + 32) startDate];
    }

    v15 = v14;
    v16 = [*(a1 + 32) endDate];
    v17 = [v16 compare:v5];

    if (v17 == -1)
    {
      v18 = [*(a1 + 32) endDate];
    }

    else
    {
      v18 = v5;
    }

    v19 = v18;
    v20 = *(a1 + 40);
    v21 = [[NSDateInterval alloc] initWithStartDate:v15 endDate:v18];
    [v20 addObject:v21];
  }
}

void sub_1000D7804(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v5];

  [v4 addObject:v7];
}

void sub_1000D7A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D7A6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_10069BD6C();
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          v14 = [v13 fiui_dateInterval];
          [v14 duration];
          if (fabs(v15) >= 2.22044605e-16)
          {
            v16 = [v14 intersectionWithDateInterval:*(a1 + 40)];
            v17 = v16;
            if (v16)
            {
              [v16 duration];
              v19 = v18;
              [v14 duration];
              v21 = v19 / v20;
              v22 = [v13 quantity];
              v23 = +[HKUnit meterUnit];
              [v22 doubleValueForUnit:v23];
              v25 = v21 * v24;

              v26 = v11 + v25;
              v27 = *(a1 + 56);
              if (v11 + v25 >= v27)
              {
                v28 = (v27 - v11) / v25;
                [v17 duration];
                v30 = v28 * v29;
                v31 = [v17 startDate];
                v32 = [v31 dateByAddingTimeInterval:v30];
                v33 = *(*(a1 + 48) + 8);
                v34 = *(v33 + 40);
                *(v33 + 40) = v32;

                goto LABEL_17;
              }
            }

            else
            {
              v26 = v11;
            }

            v11 = v26;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v9);
    }

LABEL_17:

    v6 = v35;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000D84C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id *sub_1000D9B74(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    _HKInitializeLogging();
    v3 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069BDA0(v3);
    }

    return [v2[4] _openKBURLWithRetry];
  }

  return result;
}

void sub_1000D9BD0(id a1, BOOL a2)
{
  if (!a2)
  {
    _HKInitializeLogging();
    v2 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069BDE4(v2);
    }
  }
}

void sub_1000DD020(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000DD03C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069BEA4(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2)
    {
      v15 = *(a1 + 32);
      FIUIUserHasExistingExerciseAndStandGoals();
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v17 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - hasExistingMoveGoal %d", buf, 8u);
      }

      WeakRetained[7] = 3;
    }
  }
}

void sub_1000DD1C0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069BF10(v5, v6, v7, v8, v9, v10, v11, v12);
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_8:
      FIUIUserHasExistingPreKincaidMoveGoal();
      goto LABEL_9;
    }
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  _HKInitializeLogging();
  v13 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = 1;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - hasExistingExerciseAndStandGoals %d", buf, 8u);
  }

  *(*(a1 + 32) + 56) = 5;
LABEL_9:
}

void sub_1000DD328(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069BF7C(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  _HKInitializeLogging();
  v13 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = a2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - hasExistingPreKincaidMoveGoal %d", v15, 8u);
  }

  v14 = 4;
  if (a2)
  {
    v14 = 5;
  }

  *(*(a1 + 32) + 56) = v14;
}

void sub_1000DD5D8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
}

void sub_1000DDECC(id a1, UIAlertAction *a2)
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setWheelchairDataSubmissionAllowed:1];
}

void sub_1000DDF18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(BPSAboutDetailViewController);
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_MORE_INFO_TITLE" value:&stru_1008680E8 table:@"ActivitySetup"];
  [v4 setTitleString:v6];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_MORE_INFO_DESCRIPTION" value:&stru_1008680E8 table:@"ActivitySetup"];
  [v4 setHeaderString:v8];

  objc_initWeak(&location, *(a1 + 32));
  v9 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DE0C8;
  v10[3] = &unk_10083A710;
  objc_copyWeak(&v11, &location);
  [v4 presentWithController:v9 onDismiss:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_1000DE0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DE0C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestWheelchairDiagnosticsSubmissionIfNecessary];
}

void sub_1000DE108(id a1, UIAlertAction *a2)
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setWheelchairDataSubmissionAllowed:0];
}

void sub_1000DE30C(id a1, BOOL a2)
{
  _HKInitializeLogging();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "CHASActivitySetupMetricsCollectionViewController opened url to Pregnancy setup in Health", v3, 2u);
  }
}

void sub_1000DE420(uint64_t a1)
{
  v3 = [*(a1 + 32) tableView];
  v2 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [*(a1 + 40) section]);
  [v3 reloadSections:v2 withRowAnimation:5];
}

void sub_1000DE604(id a1)
{
  qword_1008F99B0 = objc_alloc_init(AAUIAchievementResourceProvider);

  _objc_release_x1();
}

void sub_1000E0498(uint64_t a1)
{
  v2 = [*(a1 + 32) badgeView];
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v5];

  v4 = [*(a1 + 32) badgeView];
  [v4 setAlpha:1.0];
}

void sub_1000E0510(uint64_t a1)
{
  v2 = ACHLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Modal presentation of achievement completion", v4, 2u);
  }

  v3 = [*(a1 + 32) navigationController];
  [v3 setNavigationBarHidden:0 animated:0];
}

double sub_1000E0C74(double a1, double a2)
{
  v2 = a2 * 0.5;
  UIRoundToViewScale();
  return v2 + v3;
}

void sub_1000E0FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E100C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadDataFromProvider];
}

void sub_1000E104C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadDataForFilter];
}

void sub_1000E1DD8(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a1[4] + 16);
  v6 = a2;
  v7 = [v5 sortedDateComponentKeys];
  v8 = [v7 containsObject:v6];

  if ((v8 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    v10 = [NSIndexSet indexSetWithIndex:a3];
    [WeakRetained deleteSections:v10 withRowAnimation:6];

    v11 = a1[5];
    v12 = [NSNumber numberWithUnsignedInteger:a3];
    [v11 removeObject:v12];

    v13 = a1[6];
    v14 = [NSNumber numberWithUnsignedInteger:a3];
    [v13 addObject:v14];
  }
}

void sub_1000E1F08(void *a1, uint64_t a2, uint64_t a3)
{
  if (([*(a1[4] + 72) containsObject:a2] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    v6 = [NSIndexSet indexSetWithIndex:a3];
    [WeakRetained insertSections:v6 withRowAnimation:6];

    v7 = a1[5];
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    [v7 removeObject:v8];

    v9 = a1[6];
    v10 = [NSNumber numberWithUnsignedInteger:a3];
    [v9 addObject:v10];
  }
}

void sub_1000E2014(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 section]);
  [v2 addObject:v3];
}

NSIndexPath *__cdecl sub_1000E2080(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 integerValue];

  return [NSIndexPath indexPathForRow:0 inSection:v2];
}