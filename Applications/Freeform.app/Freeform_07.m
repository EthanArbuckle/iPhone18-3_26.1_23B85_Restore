uint64_t sub_1000B3FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F3480);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B4070(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1005B981C(&qword_1019F3480);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000B4104()
{
  v1 = 0x7265746C6966;
  if (*v0 != 1)
  {
    v1 = 0x6472616F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972617262696CLL;
  }
}

uint64_t sub_1000B4158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F950D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B4180()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B41BC()
{
  switch(*(v0 + 312))
  {
    case 0:
    case 0x22:
      if (*(v0 + 80))
      {
        sub_100005070(v0 + 56);
      }

      if (*(v0 + 112))
      {
        sub_100005070(v0 + 88);
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 80))
      {
        sub_100005070(v0 + 56);
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 176))
      {
        sub_100005070(v0 + 152);
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 144))
      {
        sub_100005070(v0 + 120);
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 332, 7);
}

uint64_t sub_1000B4450()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000B44C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_101A2F5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A0D9D0);
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

  v14 = sub_1005B981C(&qword_101A13F18);
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

  return (v16 + 1);
}

uint64_t sub_1000B4638(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_101A2F5B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&unk_101A0D9D0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1005B981C(&qword_101A13F18);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
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

uint64_t sub_1000B47AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLAssetData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A1B880);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000B48C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLAssetData();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1005B981C(&unk_101A1B880);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000B49D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B4A10()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B4A50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B4AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B4B6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4BA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4BDC()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B4CAC()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_10002640C(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000B4DC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B4E04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B4FD0@<X0>(_BYTE *a1@<X8>)
{
  sub_100FBDF4C();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000B506C()
{
  type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier(255);
  type metadata accessor for ModifiedContent();
  sub_100FBE50C(&qword_101A25D50, type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1000B510C()
{
  type metadata accessor for CRLiOSAutoSizingHostingController.AdditionalSafeAreasModifier(255);
  type metadata accessor for ModifiedContent();
  sub_100FBE50C(&qword_101A25D58, type metadata accessor for CRLiOSAutoSizingHostingController.AdditionalSafeAreasModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1000B51A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_101A25D60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_1000B5270(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_101A25D60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1000B5338(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1005B981C(&qword_101A25E18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B53F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1005B981C(&qword_101A25E18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B54A4()
{
  v1 = (type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_100005070(v0 + v3);
  v5 = v1[7];
  sub_1005B981C(&qword_101A25B30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CoordinateSpace();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B55C0()
{
  v1 = (type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  sub_100005070(v0 + v3);
  v9 = v1[7];
  sub_1005B981C(&qword_101A25B30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for CoordinateSpace();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v8, v2 | v7 | 7);
}

uint64_t sub_1000B5768()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B57B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B57F0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B58B8()
{
  v1 = sub_1005B981C(&qword_101A25F38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_1000B5964()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000B5BC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B5C04()
{
  v1 = sub_1005B981C(&qword_101A07DD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_1000B5CD8(uint64_t a1)
{
  result = sub_100B110B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B5D00(uint64_t a1)
{
  result = sub_100B10FBC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B5D28(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1000B5D40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B5D78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B5DB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B5E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000B5F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_1000B5FD4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 8) + a2;
  *a1 = *v2;
  *(a1 + 8) = v3;
}

uint64_t sub_1000B5FEC()
{
  switch(*(v0 + 296))
  {
    case 0:
    case 0x22:
      if (*(v0 + 64))
      {
        sub_100005070(v0 + 40);
      }

      if (*(v0 + 96))
      {
        sub_100005070(v0 + 72);
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 64))
      {
        sub_100005070(v0 + 40);
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 160))
      {
        sub_100005070(v0 + 136);
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 128))
      {
        sub_100005070(v0 + 104);
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 316, 7);
}

uint64_t sub_1000B6288()
{
  switch(*(v0 + 312))
  {
    case 0:
    case 0x22:
      if (*(v0 + 80))
      {
        sub_100005070(v0 + 56);
      }

      if (*(v0 + 112))
      {
        sub_100005070(v0 + 88);
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 80))
      {
        sub_100005070(v0 + 56);
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 176))
      {
        sub_100005070(v0 + 152);
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 144))
      {
        sub_100005070(v0 + 120);
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 332, 7);
}

uint64_t sub_1000B6520(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLBoardItemParentAffinity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CRLPathSourceData(0);
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

  v14 = sub_1005B981C(&qword_101A224B8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000B6680(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLBoardItemParentAffinity();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CRLPathSourceData(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1005B981C(&qword_101A224B8);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
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

uint64_t sub_1000B67DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
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

uint64_t sub_1000B6898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
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

uint64_t sub_1000B6950(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_101A10690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A0D9D0);
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

  v14 = sub_1005B981C(&unk_101A10680);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&unk_101A0D9C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1000B6B1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_101A10690);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&unk_101A0D9D0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1005B981C(&unk_101A10680);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1005B981C(&unk_101A0D9C0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = (a2 - 1);
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

uint64_t sub_1000B6D70(uint64_t a1)
{
  if ((a1 + 1) >= 6)
  {
    return 5;
  }

  else
  {
    return (0x30502010004uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_1000B6DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B6E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B6E7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6EB4()
{
  v1 = *(type metadata accessor for CRLAppIntentsDonationManager.DonatableAppIntent() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  v7 = type metadata accessor for CRLBoardEntity();

  v8 = (v0 + v3 + *(v7 + 48));
  v9 = v8[1];
  if (EnumCaseMultiPayload == 1)
  {
    if (v9 >> 60 != 15)
    {
      sub_10002640C(*v8, v9);
    }

    swift_unknownObjectWeakDestroy();
    sub_1005B981C(&qword_1019F73F0);
  }

  else
  {
    if (v9 >> 60 != 15)
    {
      sub_10002640C(*v8, v9);
    }

    swift_unknownObjectWeakDestroy();
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B70F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B73A4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B73EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7450()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7488()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B752C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B75B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000B7644()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B7690()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B76D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B7720()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7758()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B7790()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000B785C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B78B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000B79A8()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

id sub_1000B7A48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 viewScale];
  *a2 = v4;
  return result;
}

uint64_t sub_1000B7A90()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B7AD8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000B7D8C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B7DB8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B7DE4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B7E10@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B7E3C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B7E68()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7EA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7ED8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B7F1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B7F54()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7F8C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B7FE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B8024()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B805C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B80A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B80F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019F4860);
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

uint64_t sub_1000B81C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_1019F4860);
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

uint64_t sub_1000B8284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_101A0BA08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000B8350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_101A0BA08);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000B847C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B8548()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000B85A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v12 = v3 | v8;
  v10 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 17, v12 | 7);
}

uint64_t sub_1000B8744()
{
  v1 = sub_1005B981C(qword_101A295B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B8810()
{
  type metadata accessor for CRLCRDTMapBucket();
  type metadata accessor for Dictionary.Iterator();
  return swift_getWitnessTable();
}

uint64_t sub_1000B8878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1005B981C(&qword_1019F6990);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 36) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000B899C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = sub_1005B981C(&qword_1019F6990);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 36));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000B8AC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000B8B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000B8C3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B8C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B8CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B8DB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B8DE8()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B8EBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B8F04()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B9004()
{
  sub_10002640C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000B905C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B90C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000B911C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B915C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B91DC()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000B92E8()
{
  v1 = type metadata accessor for CRLFolder();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v19 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  type metadata accessor for CRLFolderIdentifierStorage(0);

  v7 = v0 + v3 + v1[5];
  v8 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v6(v7, v5);
  }

  v9 = v4 + v1[7];
  v10 = sub_1005B981C(&qword_101A1A020);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for CRLFolderCRDTData();
  v12 = v11[5];
  v13 = sub_1005B981C(&qword_1019F4850);
  (*(*(v13 - 8) + 8))(v9 + v12, v13);
  v14 = v11[6];
  v15 = sub_1005B981C(&qword_1019F4858);
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  v16 = v11[7];
  v17 = sub_1005B981C(&qword_1019F4860);
  (*(*(v17 - 8) + 8))(v9 + v16, v17);

  return _swift_deallocObject(v0, v3 + v19, v2 | 7);
}

uint64_t sub_1000B9648()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B9680()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B96E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B971C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B9764(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B977C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B97B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B97EC()
{
  swift_unknownObjectRelease();

  sub_100005070(v0 + 48);

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_1000B983C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B9884()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B98D4()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000B993C()
{
  swift_unknownObjectRelease();
  if (v0[4])
  {
  }

  if (v0[10])
  {
  }

  if (v0[13])
  {
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000B99D4(uint64_t a1)
{
  result = sub_10003EAF8(&qword_101A11178, type metadata accessor for TSContentLanguage.Models.Text);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B9A2C(uint64_t a1)
{
  result = sub_100B103EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B9A54(uint64_t a1)
{
  result = sub_100B0FB10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B9A7C(uint64_t a1)
{
  result = sub_100B101A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B9AA4(uint64_t a1)
{
  result = sub_100B10440();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B9B68(uint64_t a1)
{
  result = sub_100B0F7C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B9B90(uint64_t a1)
{
  result = sub_100B1029C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B9BF8(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s8Freeform17TSContentLanguageO6ModelsO12ScaffoldFillV0eF4TypeO21__derived_enum_equalsySbAI_AItFZ_0(v4, __dst) & 1;
}

unint64_t sub_1000B9C60(uint64_t a1)
{
  result = sub_100B0F624();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B9CD8()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B9DA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B9DDC()
{
  v1 = sub_1005B981C(&qword_101A15A30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_1000B9EDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B9F14()
{
  v1 = sub_1005B981C(&qword_101A15A30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_1000B9FEC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA024()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BA074()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BA0AC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BA0F0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BA138()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA170()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BA1B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BA1F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BA244()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BA350(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v8 = sub_1005B981C(&qword_101A2C100);
    v9 = sub_10001A2F8(&qword_101A2C108, &qword_101A2C100);
    v7 = xmmword_1014CE6B0;
    v6[3] = sub_1005B981C(&qword_101A00608);
    v6[4] = sub_10001A2F8(&qword_101A2C1B8, &qword_101A00608);
    v6[0] = v1;
    if ((*(v1 + 16) - 10) >= 0xFFFFFFFFFFFFFFF7)
    {

      sub_100005070(v6);
      return sub_100005070(&v7);
    }

    else
    {
      sub_100852F1C();
      v2 = swift_allocError();
      v4 = v3;
      sub_10000630C(&v7, v3);
      sub_10000630C(v6, v4 + 40);
      swift_willThrow();

      sub_100005070(v6);
      sub_100005070(&v7);
      sub_100810B2C();
      swift_allocError();
      strcpy(v5, "gutterWidths");
      v5[13] = 0;
      *(v5 + 7) = -5120;
      *(v5 + 2) = v2;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1000BA504(uint64_t a1)
{
  result = sub_100B0FDB0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000BA5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s6CellIDVMa(0);
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

uint64_t sub_1000BA69C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s6CellIDVMa(0);
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

uint64_t sub_1000BA764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_101A2D840);
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

uint64_t sub_1000BA82C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_101A2D840);
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

__n128 sub_1000BA95C@<Q0>(uint64_t a1@<X8>)
{
  sub_1005B981C(&qword_101A2C7B0);
  CRRegister.wrappedValue.getter();
  *(a1 + 192) = v15;
  *(a1 + 208) = v16;
  *(a1 + 224) = v17;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  *(a1 + 176) = v14;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1000BAAD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLContainerItemCRDTData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A2C7D0);
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

  v14 = sub_1005B981C(&unk_101A2D830);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_1005B981C(&qword_1019FA370);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = _s13StyleCRDTDataVMa();
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

  return (v18 + 1);
}

uint64_t sub_1000BACD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLContainerItemCRDTData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&unk_101A2C7D0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1005B981C(&unk_101A2D830);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_1005B981C(&qword_1019FA370);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = _s13StyleCRDTDataVMa();
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[9]) = (a2 - 1);
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

uint64_t sub_1000BAEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLWPStorageCRDTData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A10690);
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

uint64_t sub_1000BAFF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1005B981C(&unk_101A10690);
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

uint64_t sub_1000BB108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000BB174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000BB244(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for CRLWPStorageCRDTData(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1000BB2FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for CRLWPStorageCRDTData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000BB3A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&qword_101A2C7B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A2D9E0);
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

  v14 = sub_1005B981C(&qword_101A2C810);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&unk_101A10690);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[10]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1000BB56C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&qword_101A2C7B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&unk_101A2D9E0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1005B981C(&qword_101A2C810);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1005B981C(&unk_101A10690);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[10]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[9];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000BB744()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BB798()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000BB884()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BB8C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BB8FC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BB944()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BB984()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BB9CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BBA1C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000BBA88()
{
  v1 = sub_1005B981C(&qword_101A15A30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000BBB34(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for ShadowStyle();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1000BBBEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for ShadowStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000BBD28(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000BBDD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000BBEBC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000BBEE8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000BBF14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BBF4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BBF84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BBFBC()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_1000BC000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 304);
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
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1005B981C(&qword_1019F57A8);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1000BC13C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 304) = a2;
  }

  else
  {
    v8 = type metadata accessor for UUID();
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
      v13 = sub_1005B981C(&qword_1019F57A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000BC26C()
{
  switch(*(v0 + 312))
  {
    case 0:
    case 0x22:
      if (*(v0 + 80))
      {
        sub_100005070(v0 + 56);
      }

      if (*(v0 + 112))
      {
        sub_100005070(v0 + 88);
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 80))
      {
        sub_100005070(v0 + 56);
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 176))
      {
        sub_100005070(v0 + 152);
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 144))
      {
        sub_100005070(v0 + 120);
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 332, 7);
}

uint64_t sub_1000BC500()
{
  switch(*(v0 + 296))
  {
    case 0:
    case 0x22:
      if (*(v0 + 64))
      {
        sub_100005070(v0 + 40);
      }

      if (*(v0 + 96))
      {
        sub_100005070(v0 + 72);
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 64))
      {
        sub_100005070(v0 + 40);
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 160))
      {
        sub_100005070(v0 + 136);
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 128))
      {
        sub_100005070(v0 + 104);
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 316, 7);
}

uint64_t sub_1000BC79C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000BC858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000BC910()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BC960()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BC9C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BC9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_101A2EF00);
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

uint64_t sub_1000BCAC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&unk_101A2EF00);
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

uint64_t sub_1000BCB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLAssetData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A1B880);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000BCC9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLAssetData();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1005B981C(&unk_101A1B880);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000BCDB0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000BCE5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
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

uint64_t sub_1000BCF28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BCF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DispatchTimeInterval();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000BD064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DispatchTimeInterval();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000BD160()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BD1B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BD1F8()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BD240()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000BD2B0()
{
  v1 = sub_1005B981C(&qword_101A07DD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000BD388()
{
  v1 = sub_1005B981C(&qword_101A07DD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000BD41C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BD454(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000BD514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000BD5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLContainerItemCRDTData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_101A2C810);
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

uint64_t sub_1000BD6E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLContainerItemCRDTData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1005B981C(&qword_101A2C810);
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

uint64_t sub_1000BD7FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_1019F5250);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A0F400);
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

  v14 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
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

  return (v16 + 1);
}

uint64_t sub_1000BD968(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_1019F5250);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&unk_101A0F400);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
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

uint64_t sub_1000BDB48()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000BDC48()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000BDD9C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BDDD4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000BDE00@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000BDE38@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1CA0 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = Image.init(systemName:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_10081EF10(v2, v4, v6);

  sub_10007441C(v2, v4, v6);
}

uint64_t sub_1000BDF54@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1C80 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = Image.init(systemName:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_10081EF10(v2, v4, v6);

  sub_10007441C(v2, v4, v6);
}

uint64_t sub_1000BE064@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1C90 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = Image.init(systemName:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_10081EF10(v2, v4, v6);

  sub_10007441C(v2, v4, v6);
}

uint64_t sub_1000BE1AC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.menuIndicatorVisibility.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000BE390@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityVoiceOverEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000BE3C0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilitySwitchControlEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000BE3F0(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_1005B981C(&qword_101A31118);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1005B981C(&qword_101A0A6C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = sub_1005B981C(&qword_101A31120);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = sub_1005B981C(&qword_101A166A0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[17];

  return v16(v17, a2, v15);
}

char *sub_1000BE5D4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1005B981C(&qword_101A31118);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1005B981C(&qword_101A0A6C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = sub_1005B981C(&qword_101A31120);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&qword_101A166A0);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[17]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000BE830()
{
  sub_1005C4E5C(&qword_101A31278);
  sub_1005C4E5C(&qword_101A31340);
  sub_1012A4F78();
  sub_1012A52AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BE910()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BE948()
{
  type metadata accessor for VStack();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000BEC50@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000BED08@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000BEE68@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000BEF44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1005B981C(&qword_101A32018);
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
      v13 = sub_1005B981C(&qword_101A25D60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000BF080(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1005B981C(&qword_101A32018);
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
      v13 = sub_1005B981C(&qword_101A25D60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000BF214()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1000BF288@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007D7988();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000BF2B4()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_1000BF30C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1005B981C(&qword_101A10C20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_101A31120);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000BF448(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1005B981C(&qword_101A10C20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_101A31120);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000BF5C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BF834(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
}

__n128 sub_1000BF85C(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[1];
  result = *a1;
  *(a2 + 24) = a1[1].n128_u64[0];
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000BF8A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_1019F5250);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_1005B981C(&qword_101A1A020);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  inserted = type metadata accessor for CRLBoardInsertStyleData(0);
  if (*(*(inserted - 8) + 84) == a2)
  {
    v8 = inserted;
    v12 = *(inserted - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = type metadata accessor for CRLBoardScenesCRDTData(0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v19 = *(a1 + a3[10]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1000BFAE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&qword_1019F4858);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F4850);
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

  v14 = sub_1005B981C(&qword_101A2C810);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&qword_101A22790);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1000BFCB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&qword_1019F4858);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&qword_1019F4850);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1005B981C(&qword_101A2C810);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1005B981C(&qword_101A22790);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000BFE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_1019F5250);
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

uint64_t sub_1000BFF40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&unk_1019F5250);
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

uint64_t sub_1000C0004(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_1019F4B90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F4B70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_1005B981C(&qword_1019F4B58);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v15 = sub_1005B981C(&qword_1019F4B80);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v16 = sub_1005B981C(&qword_1019F4B48);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_1000C0224(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_1019F4B90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&qword_1019F4B70);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[7];
    }

    else
    {
      v16 = sub_1005B981C(&qword_1019F4B58);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[8];
      }

      else
      {
        v17 = sub_1005B981C(&qword_1019F4B80);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[9];
        }

        else
        {
          result = sub_1005B981C(&qword_1019F4B48);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11]) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[10];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000C0440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_101A2C810);
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

uint64_t sub_1000C0508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_101A2C810);
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

uint64_t sub_1000C05CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C0604()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000C06C8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000C0794()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C07D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F33E0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for Date();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_1005B981C(&qword_1019F33D0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[20];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1000C09AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1005B981C(&qword_1019F33E0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for Date();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_1005B981C(&qword_1019F33D0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[20];

  return v18(v19, a2, a2, v17);
}

uint64_t getEnumTagSinglePayload for CRLSQLSchemaVersionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLSQLSchemaVersionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1000C0D5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1000C0DA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);

  *(v2 + v4) = a1;
  return result;
}

uint64_t SyncEvent.SentDatabaseChanges.deletedZoneIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t getEnumTagSinglePayload for CRLMiniFormatterStrokeDataProvider.StrokeChangingState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLMiniFormatterStrokeDataProvider.StrokeChangingState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000C0E80(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000C0E98(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C0EB4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

double sub_1000C0ED4@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t *sub_1000C0EEC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_1000C0F04@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result + 1;
  v3 = v2 >= 3;
  v4 = 0x10002u >> (8 * v2);
  if (v3)
  {
    LOBYTE(v4) = 3;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1000C0F30@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10002u >> (8 * (result + 1));
  if ((result + 1) >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_1000C0F58(void *result, int a2)
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

unint64_t _s8Freeform25CRLiCloudConnectionStatusO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1000C0F9C(uint64_t a1)
{
  v1 = *(a1 + 592);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C0FB4(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C1014(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000C1080(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1000C10AC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000C10B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000920DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C10E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009A7E0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C1110@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009C8C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C1140@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000920DC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C1168@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009A7E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C1190@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009C8C8(a1);
  *a2 = result;
  return result;
}

void sub_1000C11B8(uint64_t a1)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
  sub_1000C1498((a1 + 80), v2);
  v3 = *(a1 + 104) * 0.5;
  if (v3 == 0.0)
  {
    v4 = *(a1 + 72);
    v5 = v2 - v4;
    if (v2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = *(a1 + 48) + v6;
        v8 = *(a1 + 80) + v6;
        v10 = *(v7 + 48);
        v9 = *(v7 + 64);
        v11 = *(v7 + 32);
        *(v8 + 80) = *(v7 + 80);
        *(v8 + 48) = v10;
        *(v8 + 64) = v9;
        *(v8 + 32) = v11;
        v12 = *(v7 + 16);
        *v8 = *v7;
        *(v8 + 16) = v12;
        v6 += 88;
        --v5;
      }

      while (v5);
    }

    v13 = *(a1 + 32);
  }

  else
  {
    v13 = *(a1 + 72);
    if (v13 < v2)
    {
      v14 = dbl_101462540[*(a1 + 112) == 1];
      v15 = v3 / v14;
      v16 = vcvtpd_s64_f64(v15);
      v17 = v14 * ceil(v15);
      v18 = *(a1 + 48);
      v19 = *(a1 + 72);
      do
      {
        v20 = v18 + 88 * v19;
        v21 = *(a1 + 80) + 88 * v19;
        v22 = *(v20 + 16);
        *v21 = *v20;
        *(v21 + 16) = v22;
        v23 = *(v20 + 32);
        v24 = *(v20 + 48);
        v25 = *(v20 + 64);
        *(v21 + 80) = *(v20 + 80);
        *(v21 + 48) = v24;
        *(v21 + 64) = v25;
        *(v21 + 32) = v23;
        v18 = *(a1 + 48);
        v26 = *(a1 + 72) - 1;
        if ((v16 & 0x8000000000000000) == 0)
        {
          v27 = 0;
          v28 = (v18 + 88 * v19);
          v29 = v28[3].f64[0];
          v30 = CGPointZero;
          v31 = v29 - v17;
          v32 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - v18) >> 3) - 1;
          v33 = 0.0;
          do
          {
            if (v29 == v31)
            {
              if (v26 <= v19)
              {
                v26 = v19;
              }

              v34 = *v28;
            }

            else
            {
              v35 = (v18 + 88 * v19 + 48);
              v36 = v19;
              if (v19 >= 1)
              {
                while (*v35 > v31)
                {
                  v35 -= 11;
                  if (v36-- <= 1)
                  {
                    v36 = 0;
                    break;
                  }
                }
              }

              if (v36 <= v32)
              {
                v38 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - v18) >> 3) - 1;
              }

              else
              {
                v38 = v36;
              }

              v39 = v36 - 1;
              v40 = (v18 + 136 + 88 * v36);
              while (v39 - v38 != -1)
              {
                v41 = *v40;
                v40 += 11;
                ++v39;
                if (v41 >= v31)
                {
                  goto LABEL_27;
                }
              }

              v39 = v38;
LABEL_27:
              v42 = (v18 + 88 * v39);
              v43 = v42[3].f64[0];
              if (v26 <= v39)
              {
                v26 = v39;
              }

              if (v43 <= v31)
              {
                v34 = *v42;
                if (v39 != v32)
                {
                  v44 = (v18 + 88 * (v39 + 1));
                  v45 = v44[3].f64[0] - v43;
                  if (v26 <= v39 + 1)
                  {
                    v26 = v39 + 1;
                  }

                  if (v45 != 0.0)
                  {
                    v34 = vaddq_f64(v34, vmulq_n_f64(vsubq_f64(*v44, v34), (v31 - v43) / v45));
                  }
                }
              }

              else
              {
                v34 = *v42;
              }
            }

            v31 = v14 + v31;
            v30 = vaddq_f64(v30, v34);
            v33 = v33 + 1.0;
          }

          while (v27++ != ((2 * v16) & ~((2 * v16) >> 63)));
          if (v33 > 0.0)
          {
            *(*(a1 + 80) + 88 * v19) = vmulq_n_f64(v30, 1.0 / v33);
          }
        }

        if ((*(a1 + 16) & 1) != 0 || v26 < *(a1 + 32) - 1)
        {
          v13 = ++v19;
        }

        else
        {
          ++v19;
        }
      }

      while (v19 != v2);
    }
  }

  *(a1 + 72) = v13;
}

void sub_1000C1498(void *a1, unint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1000C1BC4(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 88 * a2;
  }
}

uint64_t sub_1000C14DC(uint64_t a1)
{
  objc_destroyWeak((a1 + 120));
  *a1 = off_101839AC8;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  *a1 = off_101839B30;
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1000C1560(uint64_t a1)
{
  objc_destroyWeak((a1 + 120));
  *a1 = off_101839AC8;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  *a1 = off_101839B30;
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  operator delete();
}

void sub_1000C1604(void *a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6 = a1[1];
  if (v6)
  {
    (*(*v6 + 16))(v6, a2, a3);
  }

  a1[3] = v3;
  a1[14] = a2;
  v7 = objc_opt_class();
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 objectForKey:@"internalSettings.pathSmoothing.timeInterval"];
  v12 = sub_100014370(v7, v9);

  v10 = v12;
  if (v12)
  {
    [v12 doubleValue];
    a1[13] = v11;
    v10 = v12;
  }
}

uint64_t sub_1000C1724(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1000C1800(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 56))(a1);
  v6 = (*(*a1 + 64))(a1);
  sub_1000C1E80(a3, *(a3 + 8), (*v6 + 88 * a2), *(v6 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 8) - (*v6 + 88 * a2)) >> 3));
  return a1[9];
}

void *sub_1000C18B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = (*(*a1 + 64))(a1);
  result[1] = *result;
  return result;
}

uint64_t sub_1000C1944(uint64_t a1)
{
  sub_1000C1498((a1 + 48), *(a1 + 32));
  *(a1 + 32) = (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 72);

  return v2(a1);
}

void *sub_1000C19E8(void *a1)
{
  *a1 = off_101839AC8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_101839B30;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1000C1A64(void *a1)
{
  *a1 = off_101839AC8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_101839B30;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_1000C1B00(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2);
  }

  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_1000C1B64(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void sub_1000C1BC4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x2E8BA2E8BA2E8BA3 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 88 * ((88 * a2 - 88) / 0x58) + 88;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_1000C1D48();
    }

    v8 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x1745D1745D1745DLL)
    {
      v9 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000C1DF0(a1, v9);
    }

    v11 = 88 * v6;
    v12 = 88 * ((88 * a2 - 88) / 0x58) + 88;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_1000C1D60(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000C1DBC(exception, a1);
}

std::logic_error *sub_1000C1DBC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000C1DF0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1000C1E4C();
}

void sub_1000C1E4C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

char *sub_1000C1E80(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (0x2E8BA2E8BA2E8BA3 * ((v9 - v10) >> 3) < a5)
  {
    v11 = *a1;
    v12 = a5 + 0x2E8BA2E8BA2E8BA3 * ((v10 - *a1) >> 3);
    if (v12 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_1000C1D48();
    }

    v13 = __dst - v11;
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x1745D1745D1745DLL)
    {
      v15 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_1000C1DF0(a1, v15);
    }

    v39 = 8 * (v13 >> 3);
    v40 = 88 * a5;
    v41 = (v39 + 88 * a5);
    v42 = v39;
    do
    {
      v43 = *(v7 + 1);
      *v42 = *v7;
      *(v42 + 16) = v43;
      v44 = *(v7 + 2);
      v45 = *(v7 + 3);
      v46 = *(v7 + 4);
      *(v42 + 80) = *(v7 + 10);
      *(v42 + 48) = v45;
      *(v42 + 64) = v46;
      *(v42 + 32) = v44;
      v42 += 88;
      v7 += 88;
      v40 -= 88;
    }

    while (v40);
    memcpy(v41, v5, *(a1 + 8) - v5);
    v47 = *a1;
    v48 = &v41[*(a1 + 8) - v5];
    *(a1 + 8) = v5;
    v49 = v5 - v47;
    v50 = (v39 - (v5 - v47));
    memcpy(v50, v47, v49);
    v51 = *a1;
    *a1 = v50;
    *(a1 + 8) = v48;
    *(a1 + 16) = 0;
    if (v51)
    {
      operator delete(v51);
    }

    return v39;
  }

  v16 = v10 - __dst;
  if (0x2E8BA2E8BA2E8BA3 * ((v10 - __dst) >> 3) >= a5)
  {
    v32 = &__dst[88 * a5];
    v33 = v10 - 88 * a5;
    v34 = *(a1 + 8);
    while (v33 < v10)
    {
      v35 = *(v33 + 16);
      *v34 = *v33;
      *(v34 + 16) = v35;
      v36 = *(v33 + 32);
      v37 = *(v33 + 48);
      v38 = *(v33 + 64);
      *(v34 + 80) = *(v33 + 80);
      *(v34 + 48) = v37;
      *(v34 + 64) = v38;
      *(v34 + 32) = v36;
      v33 += 88;
      v34 += 88;
    }

    *(a1 + 8) = v34;
    if (v10 != v32)
    {
      memmove(&__dst[88 * a5], __dst, v10 - v32);
    }

    v31 = 88 * a5;
    v29 = v5;
    v30 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[88 * a5];
    v21 = v10 + v18;
    if (&v19[-88 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -88 * a5];
      do
      {
        v24 = v22 - v7;
        v25 = *(v23 - v7 + 16);
        *v24 = *(v23 - v7);
        *(v24 + 16) = v25;
        v26 = *(v23 - v7 + 32);
        v27 = *(v23 - v7 + 48);
        v28 = *(v23 - v7 + 64);
        *(v24 + 80) = *(v23 - v7 + 80);
        *(v24 + 48) = v27;
        *(v24 + 64) = v28;
        *(v24 + 32) = v26;
        v23 += 88;
        v22 += 88;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[88 * a5], v5, v19 - v20);
    }

    v29 = v5;
    v30 = v7;
    v31 = v10 - v5;
LABEL_28:
    memmove(v29, v30, v31);
  }

  return v5;
}

void sub_1000C22EC(id a1)
{
  v1 = [NSSet setWithArray:&off_1018E10E0];
  v2 = qword_101A34430;
  qword_101A34430 = v1;
}

void sub_1000C2378(id a1)
{
  v23[0] = @"SimSun";
  v22 = +[NSBundle mainBundle];
  v21 = [v22 localizedStringForKey:@"SimSun" value:0 table:0];
  v24[0] = v21;
  v23[1] = @"NSimSun";
  v20 = +[NSBundle mainBundle];
  v19 = [v20 localizedStringForKey:@"NSimSun" value:0 table:0];
  v24[1] = v19;
  v23[2] = @"STZhongsong";
  v18 = +[NSBundle mainBundle];
  v17 = [v18 localizedStringForKey:@"STZhongsong" value:0 table:0];
  v24[2] = v17;
  v23[3] = @"FangSong";
  v16 = +[NSBundle mainBundle];
  v15 = [v16 localizedStringForKey:@"FangSong" value:0 table:0];
  v24[3] = v15;
  v23[4] = @"Calibri";
  v14 = +[NSBundle mainBundle];
  v13 = [v14 localizedStringForKey:@"Calibri" value:0 table:0];
  v24[4] = v13;
  v23[5] = @"Calibri-Bold";
  v1 = +[NSBundle mainBundle];
  v2 = [v1 localizedStringForKey:@"Calibri" value:0 table:0];
  v24[5] = v2;
  v23[6] = @"Calibri-Italic";
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Calibri" value:0 table:0];
  v24[6] = v4;
  v23[7] = @"Calibri-BoldItalic";
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Calibri" value:0 table:0];
  v24[7] = v6;
  v23[8] = @"Calibri-Light";
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Calibri" value:0 table:0];
  v24[8] = v8;
  v23[9] = @"Calibri-LightItalic";
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Calibri" value:0 table:0];
  v24[9] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:10];
  v12 = qword_101A34440;
  qword_101A34440 = v11;
}

void sub_1000C2C3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C2C80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C37C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C380C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C3850(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C3894(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C38D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C391C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C4CC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C4D08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C4F40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C4F84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C597C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_1000C59C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

void sub_1000C5A14(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x2Cu);
}

void sub_1000C616C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }

  else
  {
    v4 = [NSError crl_fileReadUnknownErrorWithUserInfo:?];
    (*(v1 + 16))(v1, 0, v4);
  }
}

void sub_1000C6434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C645C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C6474(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C66E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C672C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C6B10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C6B54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C6B98(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000C6BDC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000C6F38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C6F7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C71F4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000C7470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000C7494(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = objc_autoreleasePoolPush();
    if (!v3)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10130E388();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130E39C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10130E424();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130E44C(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLZipFileArchive copyToTemporaryLocationRelativeToURL:error:]_block_invoke"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileArchive.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:323 isFatal:0 description:"File should be opened."];
    }

    [*(a1 + 32) createTemporaryDirectoryRelativeToURL:*(a1 + 40)];
    v8 = [*(*(a1 + 32) + 64) URLByAppendingPathComponent:@"Temp.zip"];
    if (v8)
    {
      v9 = [CRLFileIOChannel alloc];
      v10 = *(*(a1 + 48) + 8);
      obj = *(v10 + 40);
      v11 = [(CRLFileIOChannel *)v9 initForStreamWritingURL:v8 error:&obj];
      objc_storeStrong((v10 + 40), obj);
    }

    else
    {
      v11 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v11 != 0;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = sub_1000C645C;
      v39 = sub_1000C646C;
      v40 = 0;
      v12 = dispatch_group_create();
      dispatch_group_enter(v12);
      v13 = [v3 readChannel];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000C7AD0;
      v31[3] = &unk_101839F68;
      v34 = &v35;
      v14 = v12;
      v32 = v14;
      v15 = v11;
      v33 = v15;
      [v13 readFromOffset:0 length:-1 handler:v31];

      dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      [v15 close];

      v16 = v36;
      *(*(*(a1 + 56) + 8) + 24) = v36[5] == 0;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v16[5]);
        if (qword_101AD5A08 != -1)
        {
          sub_10130E5D4();
        }

        v17 = off_1019EDA60;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v23 = [*(a1 + 40) path];
          v24 = [v8 path];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = [v36[5] domain];
          v28 = [v36[5] code];
          v29 = v36[5];
          *buf = 138413570;
          v43 = v23;
          v44 = 2112;
          v45 = v24;
          v46 = 2114;
          v47 = v26;
          v48 = 2114;
          v49 = v27;
          v50 = 2048;
          v51 = v28;
          v52 = 2112;
          v53 = v29;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to copy zip file from %@ to %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x3Eu);
        }
      }

      _Block_object_dispose(&v35, 8);
      v11 = 0;
    }

    else
    {
      if (qword_101AD5A08 != -1)
      {
        sub_10130E50C();
      }

      v18 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10130E534(v18, v8);
      }
    }

    v19 = *(*(a1 + 56) + 8);
    if (*(v19 + 24) == 1)
    {
      v20 = *(a1 + 32);
      v21 = *(*(a1 + 48) + 8);
      v30 = *(v21 + 40);
      v22 = [v20 reopenWithTemporaryURL:v8 error:&v30];
      objc_storeStrong((v21 + 40), v30);
      v19 = *(*(a1 + 56) + 8);
    }

    else
    {
      v22 = 0;
    }

    *(v19 + 24) = v22;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) removeTemporaryDirectory];
    }

    objc_autoreleasePoolPop(v4);
    [v3 waitForAccessToEnd];
  }
}

void sub_1000C7A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C7A48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C7A8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C7AD0(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && !(v8 | *(*(*(a1 + 48) + 8) + 40)))
  {
    dispatch_group_enter(*(a1 + 32));
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C7BE0;
    v14[3] = &unk_101839F40;
    v10 = *(a1 + 40);
    v16 = *(a1 + 48);
    v15 = *(a1 + 32);
    [v10 writeData:v7 handler:v14];
  }

  if (a2)
  {
    if (v9)
    {
      v11 = *(*(a1 + 48) + 8);
      v13 = *(v11 + 40);
      v12 = (v11 + 40);
      if (!v13)
      {
        objc_storeStrong(v12, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_1000C7BE0(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v11 = v7;
    if (v7)
    {
      v8 = *(*(a1 + 40) + 8);
      v10 = *(v8 + 40);
      v9 = (v8 + 40);
      if (!v10)
      {
        objc_storeStrong(v9, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
    v7 = v11;
  }
}

void sub_1000C7C5C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000C7CA0(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000C7E9C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = v2;
  if (v2)
  {
    v4 = dup([v2 fileDescriptor]);
    if ((v4 & 0x80000000) != 0)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_10130E5FC();
      }

      v12 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10130E610(v12);
      }
    }

    else
    {
      v5 = v4;
      if (([*(a1 + 32) options] & 0x10) != 0 && fcntl(v5, 48, 1) == -1)
      {
        if (qword_101AD5A08 != -1)
        {
          sub_10130E6A0();
        }

        v6 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          sub_10130E6B4(v6);
        }
      }

      [v3 beginAccess];
      v7 = [CRLFileIOChannel alloc];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000C80D0;
      v13[3] = &unk_10183A040;
      v15 = v5;
      v14 = v3;
      v8 = [(CRLFileIOChannel *)v7 initForReadingDescriptor:v5 cleanupHandler:v13];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10130E744();
    }

    v11 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10130E758(v11);
    }
  }
}

void sub_1000C808C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

id sub_1000C80D0(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 endAccess];
}

void sub_1000C810C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000C8150(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

ssize_t sub_1000C8248(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    result = [v2 fileDescriptor];
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(*(*(a1 + 40) + 8) + 24) = result >= 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = 0;
    result = read(result, &v4, 0);
    *(*(*(a1 + 40) + 8) + 24) = result == 0;
  }

  return result;
}

void sub_1000C8690(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C86D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C891C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

void sub_1000C8D44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C8D88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C8DCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C8E10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C8E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CRLWPLayoutManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000C96F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C973C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C9780(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000C97C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CA324(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CA368(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CA3AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CA3F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CA710(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_1000CAA24(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2114;
  *(a2 + 10) = result;
  return result;
}

void sub_1000CAA4C(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

void sub_1000CAD28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CAD6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CB2C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CB308(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CB5A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CB5EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CB7EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CB830(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CC8B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CC8F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1000CCC44()
{
  if (qword_101A34470 != -1)
  {
    sub_10130F26C();
  }

  return qword_101A34468;
}

uint64_t sub_1000CCC9C()
{
  if (qword_101A34480 != -1)
  {
    sub_10130F280();
  }

  return qword_101A34478;
}

uint64_t sub_1000CCCF4()
{
  if (qword_101A34490 != -1)
  {
    sub_10130F294();
  }

  return qword_101A34488;
}

uint64_t sub_1000CCD4C()
{
  if (qword_101A344A0 != -1)
  {
    sub_10130F2A8();
  }

  return qword_101A34498;
}

void sub_1000CCD84(id a1)
{
  qword_101A34498 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  if (!qword_101A34498)
  {
    qword_101A34498 = CGColorSpaceCreateDeviceRGB();
  }
}

uint64_t sub_1000CCDC4()
{
  if (qword_101A344B0 != -1)
  {
    sub_10130F2BC();
  }

  return qword_101A344A8;
}

uint64_t sub_1000CCE28()
{
  if (qword_101A344C0 != -1)
  {
    sub_10130F2D0();
  }

  return qword_101A344B8;
}

void sub_1000CCE60(id a1)
{
  qword_101A344B8 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
  if (!qword_101A344B8)
  {
    qword_101A344B8 = CGColorSpaceCreateDeviceRGB();
  }
}

CGColorRef sub_1000CCEA0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  if (qword_101A34470 != -1)
  {
    sub_10130F26C();
  }

  return CGColorCreate(qword_101A34468, components);
}

CGColorRef sub_1000CCF18()
{
  v0 = sub_1004C326C();
  v1 = sub_1004C326C();
  v2 = sub_1004C326C();

  return sub_1000CCEA0(v0, v1, v2, 1.0);
}

CGPatternRef sub_1000CCF68(CGImageRef image, __int128 *a2)
{
  if (!image)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130F2E4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F2F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130F380();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v4);
    }

    v5 = [NSString stringWithUTF8String:"CGPatternRef  _Nonnull CRLCGPatternCreateWithImageAndTransform(CGImageRef _Nonnull, const CGAffineTransform * _Nullable)"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColorUtils.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:235 isFatal:0 description:"can't create an image pattern without an image"];
  }

  CGImageRetain(image);
  y = CGPointZero.y;
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (a2)
  {
    v10 = a2[1];
    v15 = *a2;
    v16 = v10;
    v11 = a2[2];
  }

  else
  {
    v12 = *&CGAffineTransformIdentity.c;
    v15 = *&CGAffineTransformIdentity.a;
    v16 = v12;
    v11 = *&CGAffineTransformIdentity.tx;
  }

  v17 = v11;
  v18.size.height = Height;
  v18.size.width = Width;
  *&v14.a = v15;
  *&v14.c = v16;
  *&v14.tx = v11;
  v18.origin.x = CGPointZero.x;
  v18.origin.y = y;
  return CGPatternCreate(image, v18, &v14, Width, v18.size.height, kCGPatternTilingConstantSpacing, 1, &unk_10183A528);
}

void sub_1000CD140(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CD184(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CD1C8(CGImage *a1, CGContext *a2)
{
  y = CGPointZero.y;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  x = CGPointZero.x;
  v8 = y;
  v9 = Width;

  CGContextDrawImage(a2, *&x, a1);
}

CGColorRef sub_1000CD240(CGImage *a1, __int128 *a2)
{
  v2 = sub_1000CCF68(a1, a2);
  Pattern = CGColorSpaceCreatePattern(0);
  v6 = 0x3FF0000000000000;
  v4 = CGColorCreateWithPattern(Pattern, v2, &v6);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v2);
  return v4;
}

CGColorRef sub_1000CD2D8(CGColorSpace *a1, double a2, double a3, double a4, double a5)
{
  v9[1] = a5;
  sub_1000CD374(&components, &v8, v9, a2, a3, a4);
  if (!a1)
  {
    if (qword_101A34470 != -1)
    {
      sub_10130F26C();
    }

    a1 = qword_101A34468;
  }

  return CGColorCreate(a1, &components);
}

double *sub_1000CD374(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = a4 * 6.0;
  v7 = a4 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_19:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_19;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_18:
      v13 = a6;
      goto LABEL_19;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_18;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_19;
  }

  return result;
}

double sub_1000CD450(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 < a5 || a4 < a6)
  {
    if (a5 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    if (a4 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a4;
    }

    v9 = a5 < a4 || a5 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = a5;
    }
  }

  else
  {
    if (a5 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = a5;
    }

    v11 = a4;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - a5) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == a4)
      {
        if (v10 == a5)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == a5;
        v19 = (v11 - a4) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == a4)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  result = v12 / 6.0;
  *a1 = v12 / 6.0;
  *a2 = v14;
  return result;
}

CGFloat sub_1000CD56C(CGColor *a1)
{
  if (a1)
  {
    ColorSpace = CGColorGetColorSpace(a1);
    Model = CGColorSpaceGetModel(ColorSpace);
    switch(Model)
    {
      case kCGColorSpaceModelMonochrome:
        return *CGColorGetComponents(a1);
      case kCGColorSpaceModelCMYK:
        Components = CGColorGetComponents(a1);
        v10 = Components[3];
        v11 = 1.0 - fmin(v10 + *Components * (1.0 - v10), 1.0);
        v12 = 1.0 - fmin(v10 + Components[1] * (1.0 - v10), 1.0);
        v13 = 1.0 - fmin(v10 + Components[2] * (1.0 - v10), 1.0);
        v5 = fmax(fmax(v11, v12), v13) + fmin(fmin(v11, v12), v13);
        return v5 * 0.5;
      case kCGColorSpaceModelRGB:
        v4 = CGColorGetComponents(a1);
        v5 = fmax(fmax(*v4, v4[1]), v4[2]) + fmin(fmin(*v4, v4[1]), v4[2]);
        return v5 * 0.5;
    }

    NSLog(@"WARNING: Testing lightness of unsupported color model");
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130F450();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F464();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130F4EC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"CGFloat CRLColorLightness(CGColorRef _Nonnull)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColorUtils.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:470 isFatal:0 description:"Trying to get lightness of a nil color"];
  }

  return 0.0;
}

void sub_1000CD754(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CD798(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CGFloat sub_1000CD7DC(CGColor *a1)
{
  if (a1)
  {
    ColorSpace = CGColorGetColorSpace(a1);
    Model = CGColorSpaceGetModel(ColorSpace);
    switch(Model)
    {
      case kCGColorSpaceModelMonochrome:
        return *CGColorGetComponents(a1);
      case kCGColorSpaceModelCMYK:
        Components = CGColorGetComponents(a1);
        v10 = Components[3];
        v5 = 1.0 - fmin(v10 + Components[2] * (1.0 - v10), 1.0) + 1.0 - fmin(v10 + *Components * (1.0 - v10), 1.0) + 1.0 - fmin(v10 + Components[1] * (1.0 - v10), 1.0);
        return v5 / 3.0;
      case kCGColorSpaceModelRGB:
        v4 = CGColorGetComponents(a1);
        v5 = *v4 + v4[1] + v4[2];
        return v5 / 3.0;
    }

    NSLog(@"WARNING: Testing lightness of unsupported color model");
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130F514();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F528();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130F5B0();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"CGFloat CRLColorAverageLightness(CGColorRef _Nonnull)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColorUtils.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:499 isFatal:0 description:"Trying to get lightness of a nil color"];
  }

  return 0.0;
}

void sub_1000CD9AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CD9F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CGContext *sub_1000CDA34(int a1, double a2, CGFloat a3, CGFloat a4)
{
  if (qword_101A34470 != -1)
  {
    sub_10130F26C();
  }

  v8 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, (4 * (a2 * a4) + 31) & 0xFFFFFFFFFFFFFFE0, qword_101A34468, 0x2002u);
  if (!v8)
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130F5D8();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *transform = 67110402;
      *&transform[4] = v9;
      *&transform[8] = 2082;
      *&transform[10] = "CGContextRef CRLCreateRGBABitmapContext(CGSize, CGFloat, BOOL)";
      *&transform[18] = 2082;
      *&transform[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColorUtils.m";
      *&transform[28] = 1024;
      *&transform[30] = 515;
      *&transform[34] = 2048;
      *&transform[36] = (a2 * a4);
      *&transform[44] = 2048;
      *&transform[46] = (a3 * a4);
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CGBitmapContextCreate returns nil CGContextRef for width %ld, height %ld", transform, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130F5EC();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v11);
    }

    v12 = [NSString stringWithUTF8String:"CGContextRef CRLCreateRGBABitmapContext(CGSize, CGFloat, BOOL)"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColorUtils.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:515 isFatal:0 description:"CGBitmapContextCreate returns nil CGContextRef for width %ld, height %ld", (a2 * a4), (a3 * a4)];
  }

  CGAffineTransformMakeScale(transform, a4, a4);
  CGContextConcatCTM(v8, transform);
  if (a1)
  {
    CGContextTranslateCTM(v8, 0.0, a3);
    CGAffineTransformMakeScale(transform, 1.0, -1.0);
    CGContextConcatCTM(v8, transform);
  }

  return v8;
}

void sub_1000CDCE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CDD24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CDE8C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000CE0A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CE0E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CE27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000CE2C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = *(*(a1 + 48) + 8);
  if (v7 && *(v8 + 24))
  {
    *(v8 + 24) = 0;
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v7];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!*(v8 + 24))
  {
    goto LABEL_10;
  }

  v9 = *(*(a1 + 56) + 8);
  if (!*(v9 + 24))
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      [*(a1 + 32) prepareBuffer];
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v9 = *(*(a1 + 56) + 8);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v10 inflateResult:v9 + 24 CRC:*(*(a1 + 72) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }

LABEL_10:
}

void sub_1000CE5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CE608(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (HIDWORD(a5))
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10130F9D8();
    }

    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10130F9EC();
    }

    goto LABEL_49;
  }

  v9 = *(a1 + 32);
  if (*(v9 + 64))
  {
    *(v9 + 40) = a5;
    *(*(a1 + 32) + 32) = a4;
    v10 = *(a1 + 32);
    v11 = 1;
    if (*(v10 + 40))
    {
      while (1)
      {
        if (**(a1 + 56))
        {
LABEL_51:
          v11 = 1;
          goto LABEL_50;
        }

        v12 = inflate((v10 + 32), 0);
        **(a1 + 56) = v12;
        if ((v12 + 5) > 6 || ((1 << (v12 + 5)) & 0x61) == 0)
        {
          if (qword_101AD5A08 != -1)
          {
            sub_10130F85C();
          }

          if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
          {
            sub_10130F884();
          }

          goto LABEL_49;
        }

        v14 = v12;
        v10 = *(a1 + 32);
        v15 = *(v10 + 64);
        if (v12 == 1)
        {
          goto LABEL_16;
        }

        if (!v15)
        {
          break;
        }

LABEL_29:
        if (!*(v10 + 40))
        {
          goto LABEL_51;
        }
      }

      v15 = 0;
LABEL_16:
      v16 = *(v10 + 144);
      v17 = v16 - v15;
      if (*(v10 + 28) == 1)
      {
        v18 = *(a1 + 64);
        if (v18)
        {
          v19 = *v18;
          v20 = *(v10 + 152);
          if (HIDWORD(v17))
          {
            v39 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10130F834();
            }

            log = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v42 = v39;
              v43 = 2082;
              v44 = "[CRLZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:]_block_invoke_2";
              v45 = 2082;
              v46 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipInflateReadChannel.m";
              v47 = 1024;
              v48 = 153;
              _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              dispatch_once(&qword_101AD5A10, &stru_10183A728);
            }

            loga = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              logb = loga;
              v35 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v42 = v39;
              v43 = 2114;
              v44 = v35;
              _os_log_error_impl(&_mh_execute_header, logb, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v40 = [NSString stringWithUTF8String:"[CRLZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:]_block_invoke"];
            v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipInflateReadChannel.m"];
            [CRLAssertionHandler handleFailureInFunction:v40 file:v34 lineNumber:153 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

            v21 = -1;
          }

          else
          {
            v21 = v17;
          }

          **(a1 + 64) = crc32(v19, v20, v21);
          v10 = *(a1 + 32);
          v16 = *(v10 + 144);
        }
      }

      v22 = dispatch_data_create(*(v10 + 152), v16, 0, _dispatch_data_destructor_free);
      v23 = v22;
      if (*(*(a1 + 32) + 144) == v17)
      {
        subrange = v22;
      }

      else
      {
        subrange = dispatch_data_create_subrange(v22, 0, v17);
      }

      v25 = subrange;
      (*(*(a1 + 40) + 16))();
      *(*(a1 + 32) + 144) = 0;
      *(*(a1 + 32) + 152) = 0;
      v26 = *(a1 + 32);
      v27 = *(v26 + 16);
      v28 = v27 >= v17;
      v29 = v27 - v17;
      if (!v28)
      {
        v29 = 0;
      }

      *(v26 + 16) = v29;
      if (v14 != 1)
      {
        [*(a1 + 32) prepareBuffer];
      }

      v10 = *(a1 + 32);
      goto LABEL_29;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130F900();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F914();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130F9B0();
    }

    v30 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v30);
    }

    v31 = [NSString stringWithUTF8String:"[CRLZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:]_block_invoke"];
    v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipInflateReadChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:129 isFatal:0 description:"Buffer should have been initialized."];

LABEL_49:
    v11 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

LABEL_50:

  return v11;
}

void sub_1000CEBC4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000CEC08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CEC4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CEC90(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000CECD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CED18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CED5C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000CEDA0(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000CFF20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000CFF64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D01A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D01EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D03BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D0400(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D05D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D0618(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D07E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D082C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D0A18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D0A5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D0C20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D0C64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D0E7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D0EC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D10B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D10F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D139C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D13E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D159C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D15E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D2FE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D3024(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D33DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D3420(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1000D3464(uint64_t a1)
{
  [*(a1 + 32) p_updateAllButtons];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void sub_1000D5044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000D505C(uint64_t a1)
{
  result = [*(a1 + 32) _crlaxShouldPreventMakingVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000D5864(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D58A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D58EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D5930(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D5DB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D5DF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1000D5E38(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000D8E24(v5, v5 + 1, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void sub_1000D6160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  _Block_object_dispose(&a28, 8);
  sub_1000D9C84(&a34);
  v36 = *v34;
  if (*v34)
  {
    *(v34 + 8) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

void sub_1000D61C0(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v5 = *(a1 + 32);
      if (!v5 || (*(v5 + 16))(v5, v3[6], *(v3 + 4), *(v3 + 5), *(v3 + 7)))
      {
        v6 = sub_100120090(*(a1 + 48), *(a1 + 56), *(v3 + 4), *(v3 + 5));
        if (v6 <= *(a1 + 64))
        {
          if (!sub_1000D8228((*(*(a1 + 40) + 8) + 48), v3 + 6))
          {
            goto LABEL_8;
          }

          v7 = sub_1000D9958((*(*(a1 + 40) + 8) + 48), v3 + 6);
          if (!v7)
          {
            sub_1000D9CD0("unordered_map::at: key not found");
          }

          if (v6 < v7[9])
          {
LABEL_8:
            sub_1000D9D60((*(*(a1 + 40) + 8) + 48), v3 + 6);
            v8 = *(*(a1 + 40) + 8);
            sub_100120090(*(a1 + 48), *(a1 + 56), *(v3 + 4), *(v3 + 5));
            sub_1000D9DDC((v8 + 48), v3 + 6);
          }
        }
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v2);
  }
}

void sub_1000D6390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D6714(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D6758(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__n128 sub_1000D679C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1000D67C0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1000D67D8(uint64_t a1, double **a2)
{
  v2 = (a2 + 1);
  v3 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v6 = v3[4];
      v5 = v3[5];
      v30 = 0;
      v31 = 0.0;
      [*(a1 + 32) distanceToPoint:&v30 elementIndex:&v31 tValue:1 threshold:v6 findClosestMatch:{v5, *(a1 + 48)}];
      if (v7 <= *(a1 + 48))
      {
        [*(a1 + 32) pointAt:v30 fromElement:v31];
        v9 = v8;
        v11 = v10;
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v3 + 6);
        v14 = *(v3 + 7);
        v15 = sub_100120090(v8, v10, v6, v5);
        v16 = v12[7];
        v17 = v12[8];
        if (v16 >= v17)
        {
          v19 = v12[6];
          v20 = v16 - v19;
          v21 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v19) >> 3);
          v22 = v21 + 1;
          if ((v21 + 1) > 0x492492492492492)
          {
            sub_1000C1D48();
          }

          v23 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v19) >> 3);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x249249249249249)
          {
            v22 = 0x492492492492492;
          }

          if (v22)
          {
            sub_1000DA030((v12 + 6), v22);
          }

          v24 = 56 * v21;
          *v24 = v9;
          *(v24 + 8) = v11;
          *(v24 + 16) = v6;
          *(v24 + 24) = v5;
          *(v24 + 32) = v13;
          *(v24 + 40) = v14;
          *(v24 + 48) = v15;
          v18 = 56 * v21 + 56;
          v25 = v24 - v20;
          memcpy((v24 - v20), v19, v20);
          v26 = v12[6];
          v12[6] = v25;
          v12[7] = v18;
          v12[8] = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v16 = v9;
          *(v16 + 8) = v11;
          *(v16 + 16) = v6;
          *(v16 + 24) = v5;
          *(v16 + 32) = v13;
          v18 = v16 + 56;
          *(v16 + 40) = v14;
          *(v16 + 48) = v15;
        }

        v12[7] = v18;
      }

      v27 = *(v3 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v3 + 2);
          v29 = *v28 == v3;
          v3 = v28;
        }

        while (!v29);
      }

      v3 = v28;
    }

    while (v28 != v2);
  }
}

void sub_1000D6A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D6B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D6B64(uint64_t a1, void *a2, _BYTE *a3)
{
  v3 = (a2 + 1);
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    do
    {
      if (sub_10011F068(v4[4], v4[5], v7, v8) <= v9)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a3 = 1;
      }

      v10 = *(v4 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != v3);
  }
}

void sub_1000D6F60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D6FA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000D6FE8(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v5 = sub_1000D9958((*(a1 + 32) + 56), v3 + 6);
      if (v5)
      {
        v6 = v5[3];
      }

      else
      {
        v6 = 0;
      }

      if (*(v3 + 64))
      {
        v7 = 64;
      }

      else
      {
        v7 = 72;
      }

      v8 = *(a1 + v7);
      if (([*(a1 + 40) containsObject:v6] & 1) == 0)
      {
        if ([*(a1 + 48) isAnyPathNearPoint:*(v3 + 4) withSearchThreshold:{*(v3 + 5), v8 + 1.0}])
        {
          [*(a1 + 56) distanceToPoint:0 elementIndex:0 tValue:0 threshold:*(v3 + 4) findClosestMatch:{*(v3 + 5), v8}];
          if (v9 <= v8)
          {
            [*(a1 + 40) addObject:v6];
          }
        }
      }

      v10 = v3[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v3[2];
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != v2);
  }
}

void sub_1000D7948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  sub_1000D87F0(v18 + 16, a18);
  sub_1000D87F0(&a10, a11);
  _Unwind_Resume(a1);
}

id sub_1000D7A00(uint64_t a1, CGFloat a2, CGFloat a3, double a4)
{
  v11.x = a2;
  v11.y = a3;
  result = CGRectContainsPoint(*(a1 + 40), v11);
  if (result)
  {
    *v9 = a2;
    *&v9[1] = a3;
    v9[2] = *(a1 + 72);
    *&v9[3] = a4;
    v10 = 0;
    return [*(a1 + 32) p_addPointInfoStruct:v9];
  }

  return result;
}

id sub_1000D7B9C(uint64_t a1, double a2, double a3)
{
  result = [*(a1 + 32) containsPoint:?];
  if (result)
  {
    v9 = 1;
    *v8 = a2;
    *&v8[1] = a3;
    v7 = *(a1 + 40);
    v8[2] = *(a1 + 48);
    v8[3] = 0x7FEFFFFFFFFFFFFFLL;
    return [v7 p_addPointInfoStruct:v8];
  }

  return result;
}

double *sub_1000D80E0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7[0] = a3;
  v7[1] = a4;
  result = sub_1000D9360((*(a1 + 32) + 8), v7);
  if (result)
  {
    return (*(*(a1 + 40) + 16))(*(a1 + 40), result + 4, a2);
  }

  return result;
}

void *sub_1000D8228(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_1000D82DC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1000D853C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D8550(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D8550(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1000D859C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1000D868C(a1, prime);
    }
  }
}

void sub_1000D868C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1000C1E4C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1000D87F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000D87F0(a1, *a2);
    sub_1000D87F0(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_1000D8844(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_1000D8A9C(void *a1, id *a2, void *a3)
{
  v5 = *a2;
  a1[1] = *a3;
  v6 = a3 + 1;
  v7 = a3[1];
  *a1 = v5;
  a1[2] = v7;
  v8 = a1 + 2;
  v9 = a3[2];
  a1[3] = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *a3 = v6;
    *v6 = 0;
    a3[2] = 0;
  }

  else
  {
    a1[1] = v8;
  }

  return a1;
}

void sub_1000D8B08(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1000D87F0(a2 + 24, *(a2 + 32));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_1000D8B70(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_1000D8DCC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000D5E38(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1000D8E24(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_1000D8EC4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1000D8EC4(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1000D90C0(a1, a5, (a2 + 4)))
  {
    if (!sub_1000D90C0(a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1000D90C0(a1, a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1000D90C0(a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000D9128(a1, a3, a5);
}

uint64_t *sub_1000D9068(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_1000D91C4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL sub_1000D90C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a3 + 16);
  if (v3 != v4)
  {
    return v3 < v4;
  }

  v5 = *a2 < *a3;
  if (*a2 == *a3)
  {
    v6 = *(a2 + 8);
    v7 = *(a3 + 8);
    v5 = v6 < v7;
    if (v6 == v7)
    {
      v8 = *(a2 + 24);
      v9 = *(a3 + 24);
      v5 = v8 < v9;
      if (v8 == v9)
      {
        return (*(a3 + 32) != *(a2 + 32)) & *(a2 + 32);
      }
    }
  }

  return v5;
}

void *sub_1000D9128(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_1000D90C0(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1000D90C0(a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *sub_1000D91C4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

double *sub_1000D9360(void *a1, double *a2)
{
  v2 = a2[1];
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 1);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *&v3;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v5)
    {
      v8 = v6 % *&v5;
    }
  }

  else
  {
    v8 = v6 & (*&v5 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = *(result + 1);
    if (v11 == v6)
    {
      if (result[2] == *a2 && result[3] == v2)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000D9434(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1000D9488(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000D9518(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_1000D9488(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_1000D90C0(a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_1000D90C0(a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_1000D9518(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_1000D958C(v6, a2);
  return v3;
}

uint64_t *sub_1000D958C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t sub_1000D990C(void *a1, unint64_t *a2)
{
  result = sub_1000D9958(a1, a2);
  if (result)
  {
    sub_1000D9A0C(a1, result, v4);
    sub_1000D8550(v4);
    return 1;
  }

  return result;
}

void *sub_1000D9958(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_1000D9A0C@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}