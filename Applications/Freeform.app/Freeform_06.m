uint64_t sub_100096AA8()
{

  if (*(v0 + 88))
  {
    sub_100005070(v0 + 64);
  }

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100096B20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100096C00@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100096C64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100096CAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100096DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
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

uint64_t sub_100096E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLBoardIdentifier(0);
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

uint64_t sub_100096F80()
{
  v1 = type metadata accessor for CRLBoardEntity();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  v6 = (v0 + v3 + *(v1 + 48));
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    sub_10002640C(*v6, v7);
  }

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100097104()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097140()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097178()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000971C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000971F8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100097278()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000972B0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000972F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097344()
{
  sub_10002640C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10009737C()
{

  sub_100005070(v0 + 48);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000973D4()
{
  v1 = (type metadata accessor for CRLFollowViewportState() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64) + v3;

  v5 = v0 + v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return _swift_deallocObject(v0, v4 + 2, v2 | 7);
}

uint64_t sub_1000974C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100097500()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097538()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009757C()
{
  v1 = sub_1005B981C(&qword_101A07DD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100097610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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
    v11 = type metadata accessor for CRLAssetReferrerIdentifier(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100097738(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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
    v11 = type metadata accessor for CRLAssetReferrerIdentifier(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100097860()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000978A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLWPShapeItemCRDTData(0);
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

uint64_t sub_10009795C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLWPShapeItemCRDTData(0);
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

uint64_t sub_100097A14()
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

uint64_t sub_100097F6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100097FAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097FF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000980F0()
{
  v1 = sub_1005B981C(&qword_101A15A30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000981C0()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100098208()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098240()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100098324()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000983C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000983FC()
{
  if (*(v0 + 40))
  {
    sub_100005070(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009844C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100098650(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
}

__n128 sub_100098690(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[1];
  result = *a1;
  *(a2 + 24) = a1[1].n128_u64[0];
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000986B8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
}

__n128 sub_1000986D0(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_100098728()
{
  if (*(v0 + 40))
  {
    sub_100005070(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100098768()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000987A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000987D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100098818()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098850()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100098890()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1009623C0(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  if (*(v0 + 176))
  {
  }

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_100098914()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100098960()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000989B8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100098A08()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100098AB8(uint64_t a1)
{
  result = sub_100969438();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100098B20()
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

uint64_t sub_100098DBC()
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

uint64_t sub_100099058()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099090()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000990EC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100099134()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009917C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000991B4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100099248(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
}

__n128 sub_100099270(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[1];
  result = *a1;
  *(a2 + 24) = a1[1].n128_u64[0];
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000992B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000992F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009933C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009939C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100099460()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100099530()
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

uint64_t sub_100099614()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009964C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100099690()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000996D8()
{
  sub_100005070(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009975C(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_1005B981C(&qword_101A0A6C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1005B981C(&qword_101A0A6C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_1005B981C(&qword_101A0A6D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = sub_1005B981C(&qword_101A0A6D8);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

char *sub_100099940(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1005B981C(&qword_101A0A6C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1005B981C(&qword_101A0A6C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_1005B981C(&qword_101A0A6D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&qword_101A0A6D8);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[14]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100099B88@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100099C4C()
{
  v1 = _s11SwiftUIViewVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = _s13ItemViewModelVMa();
  v6 = *(v5 - 1);
  v28 = *(v6 + 80);
  v29 = *(v6 + 64);
  v7 = v0 + v3;

  swift_unknownObjectWeakDestroy();

  v8 = v1[8];
  sub_1005B981C(&qword_101A0A8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v7 + v1[10];
  if (!(*(v6 + 48))(v10, 1, v5))
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10, v11);
    v27 = v5[5];
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 8);
    v13(v10 + v27, v12);
    v13(v10 + v5[6], v12);
    v3 = (v2 + 16) & ~v2;
  }

  sub_1005B981C(&qword_101A0A6C8);

  v14 = v7 + v1[11];
  v15 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v15 - 8) + 8))(v14, v15);
  sub_1005B981C(&qword_101A0A6D0);

  v16 = v7 + v1[14];
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  v19 = v2 | v28;
  v20 = (v3 + v4 + v28) & ~v28;
  sub_1005B981C(&qword_101A0A6D8);

  v21 = v0 + v20;
  (*(v18 + 8))(v0 + v20, v17);
  v22 = v0;
  v23 = v5[5];
  v24 = type metadata accessor for Date();
  v25 = *(*(v24 - 8) + 8);
  v25(v21 + v23, v24);
  v25(v21 + v5[6], v24);

  return _swift_deallocObject(v22, v20 + v29, v19 | 7);
}

uint64_t sub_10009A13C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009A21C(uint64_t a1, uint64_t a2)
{
  v4 = _s15FilterViewModelVMa();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009A288(uint64_t a1, uint64_t a2)
{
  v4 = _s15FilterViewModelVMa();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10009A2FC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10009A388()
{
  sub_1005C4E5C(&qword_101A0AC10);
  type metadata accessor for ModifiedContent();
  sub_10001A2F8(&qword_101A0AC18, &qword_101A0AC10);
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_1005C4E5C(&qword_101A0AC20);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10001A2F8(&qword_101A0AC38, &qword_101A0AC20);
  return swift_getWitnessTable();
}

uint64_t sub_10009A504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLCanvasLayerAnimation();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009A570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLCanvasLayerAnimation();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10009A6BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A6F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009A734()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A76C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A7A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A7E0(uint64_t a1)
{
  if ((a1 + 1) >= 6)
  {
    return 6;
  }

  else
  {
    return (0x40302010005uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_10009A80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10009A884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10009A960()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10009AA38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009AA70()
{
  v1 = sub_1005B981C(&qword_101A0B540);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10009AB50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009ABB0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10009AC5C(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009AD00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009AD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10009ADDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009AE14()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009AE90()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10009AEC8()
{
  v1 = *(type metadata accessor for SyncEvent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
LABEL_16:

        goto LABEL_21;
      }

      v10 = *v5;
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
        {
          v7 = type metadata accessor for CKSyncEngine.SyncReason();
          (*(*(v7 - 8) + 8))(v0 + v3, v7);
          v8 = *(type metadata accessor for SendChangesContext(0) + 20);
          v9 = type metadata accessor for CKSyncEngine.SendChangesOptions();
          (*(*(v9 - 8) + 8))(v5 + v8, v9);
        }

        goto LABEL_21;
      }

      v10 = *(v5 + 8);
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1009F5F64(*v5, *(v5 + 8), *(v5 + 16));
      }
    }

    else
    {
      sub_100005070(v0 + v3);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      goto LABEL_16;
    }
  }

LABEL_21:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10009B0E8()
{
  swift_unknownObjectRelease();
  sub_1009F5F64(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009B138()
{
  ChangesOptions = type metadata accessor for CKSyncEngine.FetchChangesOptions();
  v2 = *(ChangesOptions - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, ChangesOptions);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10009B20C()
{
  swift_unknownObjectRelease();
  sub_100005070(v0 + 32);

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_10009B264()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009B2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_101A1B3C0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10009B398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_101A1B3C0);
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10009B460()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009B4A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009B4D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009B518()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10009B5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLShapeItemCRDTData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_101A06128);
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

uint64_t sub_10009B710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLShapeItemCRDTData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1005B981C(&qword_101A06128);
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

uint64_t sub_10009BA34()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009BA6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009BAA4()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009BAE4()
{
  sub_100005070(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009BB28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009BB60()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 1) + 64);
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

  v9 = v1[8];
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 8);
  v11(v4 + v9, v10);
  v11(v4 + v1[9], v10);
  v12 = v4 + v1[14];
  v13 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v12 + v14, 1, v15))
    {
      (*(v16 + 8))(v12 + v14, v15);
    }
  }

  return _swift_deallocObject(v0, v3 + v18, v2 | 7);
}

uint64_t sub_10009BE98(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
}

__n128 sub_10009BEB8(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_10009BF08(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1005B981C(qword_101A0CF60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10009BFC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1005B981C(qword_101A0CF60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009C074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_1019F33C0);
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

uint64_t sub_10009C144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&unk_1019F33C0);
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

uint64_t sub_10009C210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_1019FFD10);
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

uint64_t sub_10009C2D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&unk_1019FFD10);
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

uint64_t sub_10009C42C()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1009623C0(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  if (*(v0 + 176))
  {
  }

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_10009C540(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
}

__n128 sub_10009C568(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[1];
  result = *a1;
  *(a2 + 24) = a1[1].n128_u64[0];
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10009C8C8(uint64_t a1)
{
  if ((a1 + 1) >= 4)
  {
    return 4;
  }

  else
  {
    return 0x2010003u >> (8 * (a1 + 1));
  }
}

uint64_t sub_10009C900(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
}

__n128 sub_10009C920(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_10009C950()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009C988()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009C9D8(uint64_t a1)
{

  sub_100A46EFC(a1);
}

uint64_t sub_10009CA3C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
}

__n128 sub_10009CAB4(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *a1;
  *(a2 + 24) = *(a1 + 16);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10009CACC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009CC70()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10009CD5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009CDA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009CDD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009CE18()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009CE5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009CEB8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
}

__n128 sub_10009CEE0(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[1];
  result = *a1;
  *(a2 + 24) = a1[1].n128_u64[0];
  *(a2 + 8) = result;
  return result;
}

id sub_10009CF2C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10094DF48();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_10009CF7C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009CFC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009D004()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009D03C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009D074()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009D0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLFolderIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F33E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10009D1D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLFolderIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1005B981C(&qword_1019F33E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10009D2EC()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10009D324()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009D35C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009D394()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009D3CC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009D438(uint64_t a1)
{
  if ((a1 + 1) >= 7)
  {
    return 7;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_10009D464()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10009D55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009D5C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10009D68C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10009D778()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009D7B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10009D7F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 CRLMathRecognitionMode];
  *a2 = result;
  return result;
}

uint64_t sub_10009D828()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009D860()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10009D938()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009D99C()
{
  if (*(v0 + 112))
  {

    if (*(v0 + 160))
    {
    }

    if (*(v0 + 216))
    {
    }
  }

  if (*(v0 + 344))
  {
  }

  if (*(v0 + 440))
  {
  }

  if (*(v0 + 536))
  {
  }

  if (*(v0 + 592))
  {
  }

  v1 = *(v0 + 632);
  if (v1 != 255)
  {
    sub_1009623C0(*(v0 + 616), *(v0 + 624), v1 & 1);
  }

  if (*(v0 + 776))
  {
  }

  return _swift_deallocObject(v0, 896, 7);
}

uint64_t sub_10009DB48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009DB88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009DBCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009DC08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009DC44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009DC94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009DCD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009DD10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v14 = sub_1005B981C(&qword_1019FC880);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[6];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  v17 = sub_1005B981C(&unk_1019F33C0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[7];
    goto LABEL_13;
  }

  v18 = sub_1005B981C(&unk_1019F8DB0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_10009DF00(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = sub_1005B981C(&qword_1019FC880);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1005B981C(&unk_1019F33C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = sub_1005B981C(&unk_1019F8DB0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_10009E0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019F6990);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009E1B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_1019F6990);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009E304()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009E354()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E434@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009E460@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009E49C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009E4DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E514()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009E564()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E59C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009E5D4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009E61C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E654()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009E69C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009E6FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E734()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E76C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009E7BC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009E824()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009E85C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009E8B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E8EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009E954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1005B981C(&qword_101A10C20);
    v8 = *(v7 - 8);
    if (*(v8 + 84) == a2)
    {
      v9 = v7;
      v10 = *(v8 + 48);
      v11 = a1 + *(a3 + 24);

      return v10(v11, a2, v9);
    }

    else
    {
      v12 = sub_1005B981C(&qword_101A0A6C0);
      v13 = *(*(v12 - 8) + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }
  }
}

void *sub_10009EA90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    result[1] = 1;
  }

  else
  {
    v8 = sub_1005B981C(&qword_101A10C20);
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
      v13 = sub_1005B981C(&qword_101A0A6C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10009EBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A10D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009EC68(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A10D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009ECD0()
{
  v1 = type metadata accessor for CRLScenesPopoverUI(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  swift_unknownObjectWeakDestroy();

  v6 = *(v1 + 24);
  sub_1005B981C(&unk_101A286B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorSchemeContrast();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  sub_1005B981C(&qword_101A0A8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10009EEB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009EF08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009EF58()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009EF90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009EFEC()
{

  sub_10067F154();
  if (*(v0 + 192) != 1)
  {
  }

  return _swift_deallocObject(v0, 416, 7);
}

uint64_t sub_10009F054()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10009F09C()
{

  return _swift_deallocObject(v0, 400, 7);
}

uint64_t sub_10009F0EC(uint64_t a1)
{
  result = sub_100B16644(&qword_1019F6EA8, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009F144(uint64_t a1)
{
  result = sub_100B1068C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009F1E4(uint64_t a1)
{
  result = sub_100B10788();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10009F244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 257);
    if (v4 > 0x80000000)
    {
      return -v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1005B981C(&qword_101A003E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10009F300(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = -a2 << 8;
    *(result + 264) = 0;
    *(result + 272) = 0;
  }

  else
  {
    v7 = sub_1005B981C(&qword_101A003E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009F3C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009F3F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009F45C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009F494(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10009F550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10009F60C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009F69C()
{
  sub_100005070(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009F6D4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009F700@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009F72C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009F764()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009F79C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009F7DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10009F89C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

unint64_t sub_10009F980(uint64_t a1)
{
  result = sub_100B10A28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009F9A8(uint64_t a1)
{
  result = sub_100B1092C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10009F9D0()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1009623C0(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  if (*(v0 + 176))
  {
  }

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_10009FA54()
{
  if (v0[14])
  {

    if (v0[20])
    {
    }

    if (v0[27])
    {
    }
  }

  if (v0[43])
  {
  }

  if (v0[55])
  {
  }

  if (v0[67])
  {
  }

  if (v0[74])
  {
  }

  return _swift_deallocObject(v0, 616, 7);
}

uint64_t sub_10009FB94()
{
  if (*(v0 + 112))
  {

    if (*(v0 + 160))
    {
    }

    if (*(v0 + 216))
    {
    }
  }

  if (*(v0 + 344))
  {
  }

  if (*(v0 + 440))
  {
  }

  if (*(v0 + 536))
  {
  }

  if (*(v0 + 592))
  {
  }

  v1 = *(v0 + 632);
  if (v1 != 255)
  {
    sub_1009623C0(*(v0 + 616), *(v0 + 624), v1 & 1);
  }

  if (*(v0 + 776))
  {
  }

  return _swift_deallocObject(v0, 896, 7);
}

uint64_t sub_10009FD30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009FDB0()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A0264()
{
  if (*(v0 + 72))
  {
    sub_100005070(v0 + 48);
  }

  return _swift_deallocObject(v0, 177, 7);
}

uint64_t sub_1000A02CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 217, 7);
}

uint64_t sub_1000A0304()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 185, 7);
}

uint64_t sub_1000A033C()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_1000A037C()
{
  swift_unknownObjectWeakDestroy();
  if (*(v0 + 48))
  {
    sub_100005070(v0 + 24);
  }

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1000A03F4()
{
  if (*(v0 + 40))
  {
    sub_100005070(v0 + 16);
  }

  if (*(v0 + 72))
  {
    sub_100005070(v0 + 48);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000A0590()
{
  if (*(v0 + 40))
  {
    sub_100005070(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A0600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLPathSourceData(0);
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

uint64_t sub_1000A06C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLPathSourceData(0);
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

uint64_t sub_1000A0780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A07EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A0898()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A08D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A0994()
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

uint64_t sub_1000A0A60()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000A0B60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A0BAC()
{
  v1 = sub_1005B981C(&qword_101A135D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 4, v3 | 7);
}

uint64_t sub_1000A0C88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A0D0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0D44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A0D84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A0E14()
{
  sub_100005070(v0 + 16);
  sub_100005070(v0 + 56);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000A0E54()
{
  sub_100005070(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A0E8C()
{

  sub_100005070(v0 + 64);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000A0EF4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0F20@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0F4C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0F78@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0FA4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0FD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A100C()
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

uint64_t sub_1000A11AC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A11D8()
{
  if (v0[14])
  {

    if (v0[20])
    {
    }

    if (v0[27])
    {
    }
  }

  if (v0[41])
  {
  }

  return _swift_deallocObject(v0, 400, 7);
}

uint64_t sub_1000A12B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A12E8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A1370()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A13F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A142C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A14D8(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A1588()
{
  v1 = *(type metadata accessor for CRLSEImportManifest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v13 = *(v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v14 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = v2 | v6;
  v10 = (v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + v6 + 8) & ~v6;

  (*(v5 + 8))(v0 + v11, v4);

  return _swift_deallocObject(v0, v11 + v14, v9 | 7);
}

uint64_t sub_1000A1790()
{
  if (*(v0 + 40))
  {
    sub_100005070(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A17E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1820()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1870()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A1978()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A19C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000A1A50(uint64_t a1)
{
  result = sub_100BF8E10();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A1A78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A1AB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1AF0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1B28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A1B68()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A1BB0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A1C74()
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

uint64_t sub_1000A1D84@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1DB0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1DE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1E1C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A1F14()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A2014()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A204C()
{
  swift_unknownObjectRelease();

  sub_100005070(v0 + 48);

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_1000A209C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1000A2100()
{
  v0 = objc_opt_self();

  return [v0 crl_openSoftwareUpdatePane];
}

uint64_t sub_1000A2138()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2170()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A2640()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v32 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v32(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:
  v30 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v30 + 8, v2 | 7);
}

uint64_t sub_1000A2B2C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000A2C2C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A2D34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A2D80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2DC0()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000A32A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A32DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A3334()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_10002640C(*(v0 + 80), v1);
  }

  v2 = *(v0 + 104);
  if (v2 >> 60 != 15)
  {
    sub_10002640C(*(v0 + 96), v2);
  }

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_1000A33A4()
{
  v1 = (sub_1005B981C(&qword_1019F6E18) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[13];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000A34B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A3504()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3598()
{
  if (v0[14])
  {

    if (v0[20])
    {
    }

    if (v0[27])
    {
    }
  }

  if (v0[43])
  {
  }

  if (v0[55])
  {
  }

  if (v0[67])
  {
  }

  if (v0[74])
  {
  }

  return _swift_deallocObject(v0, 616, 7);
}

uint64_t sub_1000A36D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000A3750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000A37CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_101A15D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 56));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000A3898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_101A15D00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 52);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A3970(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000A3A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

Swift::Int sub_1000A3B08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A4588[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000A3B90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A4588[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1000A3C14(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

Swift::Int sub_1000A3C64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A4530[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000A3CEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A4530[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000A3D8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A45A8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000A3E14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A45A8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1000A3E90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A3ED0()
{
  sub_100005070(v0 + 16);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A3F10()
{
  sub_100005070(v0 + 24);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000A3F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_101A166A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A401C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_101A166A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A40EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A16780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A415C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A16780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A41C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A10C20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A4240(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A10C20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A42DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4314()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A434C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A438C()
{
  v1 = sub_1005B981C(&qword_101A16F78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A442C(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000A44F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000A45B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A45EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4624()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A466C()
{
  sub_1007A98C8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A46D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
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

uint64_t sub_1000A47A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_1000A486C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000A48E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000A4968()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A49A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A49D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4A10()
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

uint64_t sub_1000A4ADC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4B18()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4B50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4B88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4BC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4BF8()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A4CC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4D00()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, v4 + v3 + 2, v2 | 7);
}

uint64_t sub_1000A51D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A521C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A525C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A529C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A5314()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A5364()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A53B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A5420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A5490()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A54C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A5518()
{
  v1 = *(type metadata accessor for CRLSpotlightManager.IndexDecision(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  if (EnumCaseMultiPayload != 1)
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A5650()
{
  v1 = *(type metadata accessor for CRLSpotlightManager.IndexDecision(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  if (EnumCaseMultiPayload != 1)
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000A57A8()
{
  v1 = *(type metadata accessor for CRLSpotlightManager.ChangeType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A58A0()
{
  v1 = *(type metadata accessor for CRLSpotlightManager.ChangeType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000A59B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A59F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A5A38()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A5B20()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 129, v3 | 7);
}

uint64_t sub_1000A5C14()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000A5C58(uint64_t a1)
{
  result = sub_100B10E18();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A5C88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A5CC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A5CFC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000A5DD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A5E1C()
{
  v1 = sub_1005B981C(&qword_101A1A6F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + v4 + 1) & ~v8;
  v10 = v3 | v8;
  v11 = (((v9 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000A5FA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A5FDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A601C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A6074()
{
  v1 = *(sub_1005B981C(&qword_101A1A740) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A616C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A625C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000A6358()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A6390()
{
  v1 = (type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);
  type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = *(type metadata accessor for CRLFollowViewportState() + 20);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {

    v6 = (v6 + *(sub_1005B981C(&qword_101A1AAD8) + 48));
    v8 = type metadata accessor for CRLFollowViewportState();
    if (!(*(*(v8 - 8) + 48))(v6, 1, v8))
    {
      v9 = *(v8 + 20);
LABEL_6:
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 8))(v6 + v9, v10);
    }
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000A6564()
{
  v1 = (type metadata accessor for CRLFollowViewportState() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000A6658()
{
  v1 = (type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);
  type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = *(type metadata accessor for CRLFollowViewportState() + 20);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {

    v6 = (v6 + *(sub_1005B981C(&qword_101A1AAD8) + 48));
    v8 = type metadata accessor for CRLFollowViewportState();
    if (!(*(*(v8 - 8) + 48))(v6, 1, v8))
    {
      v9 = *(v8 + 20);
LABEL_6:
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 8))(v6 + v9, v10);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A6820()
{

  sub_100005070(v0 + 24);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A6860()
{
  v1 = (type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);
  type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = *(type metadata accessor for CRLFollowViewportState() + 20);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {

    v6 = (v6 + *(sub_1005B981C(&qword_101A1AAD8) + 48));
    v8 = type metadata accessor for CRLFollowViewportState();
    if (!(*(*(v8 - 8) + 48))(v6, 1, v8))
    {
      v9 = *(v8 + 20);
LABEL_6:
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 8))(v6 + v9, v10);
    }
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v12 + 8, v2 | 7);
}

uint64_t sub_1000A6A4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A6A84()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A6ACC()
{

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Bool __swiftcall CRLWPObjcUserDefaults.grammarCheckingEnabled()()
{
  if (qword_1019F2BA0 != -1)
  {
    swift_once();
  }

  return 1;
}

uint64_t sub_1000A6BA4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 68);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F6990);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 80);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000A6CD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 68);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F6990);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A6E5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A6E98()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A6F70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A6FA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A6FE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A7020()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A7068()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A712C()
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

uint64_t sub_1000A7204()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A723C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A7274()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A72BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A730C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A7350()
{
  v1 = sub_1005B981C(&qword_101A1B438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A73E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A7454()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A7518()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A7558()
{
  swift_unknownObjectRelease();
  sub_100D15D44(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000A759C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A75D4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A7664()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000A776C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A77A4()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000A78E0()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 24);
  if (v4 >> 60 != 15)
  {
    sub_10002640C(*(v0 + 16), v4);
  }

  v5 = (v2 + 32) & ~v2;
  v6 = (((((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v5;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000A7A2C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000A7B14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A7B4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A7B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1BF18);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A7C04(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1005B981C(&qword_101A1BF18);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000A7C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_101A08C60);
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

uint64_t sub_1000A7D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_101A08C60);
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

uint64_t sub_1000A7E20(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = type metadata accessor for URL();
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

uint64_t sub_1000A7F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = type metadata accessor for URL();
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

uint64_t sub_1000A8044@<X0>(uint64_t *a1@<X8>)
{
  sub_1005B981C(&unk_101A287C0);
  result = Tips.Event.donations.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A809C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A8108()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A8150()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A81A0()
{
  v1 = sub_1005B981C(&unk_101A050F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A8270()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A82B8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A830C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1005B981C(&qword_1019F57A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A83C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1005B981C(&qword_1019F57A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A8488()
{
  sub_100005070(v0 + 16);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A8520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019F2D40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F2D58);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1005B981C(&qword_1019F2D50);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000A8684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1005B981C(&qword_1019F2D40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1005B981C(&qword_1019F2D58);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1005B981C(&qword_1019F2D50);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000A87F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventData();
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
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000A891C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EventData();
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
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000A8A44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&qword_1019F2D40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F2D58);
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

  v14 = sub_1005B981C(&qword_1019F2D60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_1005B981C(&qword_1019F2D68);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_1005B981C(&qword_1019F2D70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_1005B981C(&qword_1019F2D50);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_1000A8CA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&qword_1019F2D40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1005B981C(&qword_1019F2D58);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1005B981C(&qword_1019F2D60);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_1005B981C(&qword_1019F2D68);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_1005B981C(&qword_1019F2D70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_1005B981C(&qword_1019F2D50);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1000A8F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventData();
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
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000A9038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EventData();
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
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000A9160(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&qword_1019F2D40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F2D58);
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

  v14 = sub_1005B981C(&qword_1019F2D60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_1005B981C(&qword_1019F2D68);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_1005B981C(&qword_1019F2D70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_1005B981C(&qword_1019F2D50);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_1000A93C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&qword_1019F2D40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1005B981C(&qword_1019F2D58);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1005B981C(&qword_1019F2D60);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_1005B981C(&qword_1019F2D68);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_1005B981C(&qword_1019F2D70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_1005B981C(&qword_1019F2D50);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1000A962C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventData();
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
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000A9754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EventData();
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
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000A987C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A98B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A98EC(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1000A9998(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A9AC4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A9AF0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A9B1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A9B6C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A9BBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A9BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_101A28650);
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

uint64_t sub_1000A9CC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&unk_101A28650);
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

uint64_t sub_1000A9DF0()
{
  v1 = sub_1005B981C(&unk_101A07790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A9E84()
{
  v1 = sub_1005B981C(&unk_101A07790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AA004(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
}

__n128 sub_1000AA02C(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[1];
  result = *a1;
  *(a2 + 24) = a1[1].n128_u64[0];
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000AA048()
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

uint64_t sub_1000AA2DC()
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

uint64_t sub_1000AA578()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AA5C0()
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

uint64_t sub_1000AA854()
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

uint64_t sub_1000AAAF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AAB28(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000AAC34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t sub_1000AAE78(uint64_t a1)
{
  result = sub_100B10C20();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000AAEB8()
{
  v1 = *(_s17CategoryViewModelVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000AAFCC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AB00C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB044()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000AB12C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AB17C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_10002640C(*(v0 + v5), *(v0 + v5 + 8));
  sub_10002640C(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1000AB278()
{
  if (v0[14])
  {

    if (v0[20])
    {
    }

    if (v0[27])
    {
    }
  }

  if (v0[41])
  {
  }

  return _swift_deallocObject(v0, 400, 7);
}

uint64_t sub_1000AB350()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AB390()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AB3E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AB430()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB46C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AB4B8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = sub_1005B981C(&qword_1019F67C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000AB5E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = sub_1005B981C(&qword_1019F67C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000AB718(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = sub_1005B981C(&qword_1019F67C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000AB848(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = sub_1005B981C(&qword_1019F67C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000AB978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000ABA30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000ABB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000ABBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000ABC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000ABCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000ABD74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000ABE20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000ABEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000ABF7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AC028(char *a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = sub_1005B981C(&qword_101A1ACF8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = sub_1005B981C(&qword_101A1ACE8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_1005B981C(&qword_101A15CE8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_13;
  }

  v16 = sub_1005B981C(&qword_1019F67C0);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[12]];

  return v17(v18, a2, v16);
}

char *sub_1000AC254(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1005B981C(&qword_101A1ACF8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = sub_1005B981C(&qword_101A1ACE8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_1005B981C(&qword_101A15CE8);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_11;
  }

  v16 = sub_1005B981C(&qword_1019F67C0);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[12]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000AC480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1000AC538(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AC5E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1005B981C(&qword_1019F67C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10]);
  if (v13 >= 2)
  {
    v14 = ((v13 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v14 = -2;
  }

  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000AC714(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_1005B981C(&qword_1019F67C0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10]) = a2 + 2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1000AC82C(char *a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1005B981C(&qword_1019FC398);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1005B981C(&qword_1019FC390);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_1000AC9B0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1005B981C(&qword_1019FC398);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1005B981C(&qword_1019FC390);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000ACB40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1005B981C(&qword_1019F67C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 2)
  {
    v14 = ((v13 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v14 = -2;
  }

  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000ACC70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_1005B981C(&qword_1019F67C0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2 + 2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1000ACD88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000ACE34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000ACEDC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = sub_1005B981C(&qword_1019F67C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000AD00C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = sub_1005B981C(&qword_1019F67C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000AD140(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AD1E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_1005B981C(&qword_1019F67C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v11 = sub_1005B981C(&qword_101A15CE8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v14 = sub_1005B981C(&qword_101A15CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1000AD38C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = sub_1005B981C(&qword_1019F67C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v13 = sub_1005B981C(&qword_101A15CE8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v16 = sub_1005B981C(&qword_101A15CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + a4[9];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000AD54C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 12);
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

  v10 = type metadata accessor for UnknownStorage();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[8];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = sub_1005B981C(&qword_1019F67C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v16 = sub_1005B981C(&qword_101A15CE8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_1000AD6D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 12) = a2 + 1;
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1005B981C(&qword_1019F67C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_1005B981C(&qword_101A15CE8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000AD850(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AD8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_1005B981C(&qword_1019F67C0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_1000ADA24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = sub_1005B981C(&qword_1019F67C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000ADB50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1005B981C(&qword_1019FC100);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = sub_1005B981C(&qword_1019F67C0);
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[7];

  return v14(v15, a2, v13);
}

uint64_t sub_1000ADCA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = sub_1005B981C(&qword_1019FC100);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  v15 = sub_1005B981C(&qword_1019F67C0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000ADE68()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000ADFE4()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000AE078()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000AE1AC()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000AE2DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000AE3B8()
{
  v1 = sub_1005B981C(&unk_101A050F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AE4A0()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  (*(v6 + 8))(v0 + v8, v5);
  if (*(v0 + v9))
  {
  }

  return _swift_deallocObject(v0, v9 + 16, v2 | v7 | 7);
}

uint64_t sub_1000AE640()
{
  v1 = (type metadata accessor for CRLBoardDataStoreChangeSet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = v0 + v3 + v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  v8(v5 + v1[8], v7);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000AE7E8()
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

uint64_t sub_1000AE8B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AE8EC()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  if (*(v0 + v4))
  {
  }

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000AE9FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000AEAF4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_1005B981C(&qword_101A21E58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000AEC54()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1005B981C(&unk_101A050F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  v10 = (v0 + v4);
  v11 = *(v0 + v4 + 48);
  if (v11 >> 60 != 15)
  {
    sub_10002640C(v10[5], v11);
  }

  v12 = v10[8];
  if (v12 >> 60 != 15)
  {
    sub_10002640C(v10[7], v12);
  }

  v13 = v2 | v7;
  v14 = (v4 + v7 + 73) & ~v7;
  (*(v6 + 8))(v0 + v14, v5);

  return _swift_deallocObject(v0, v14 + v8, v13 | 7);
}

uint64_t sub_1000AEE40()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000AEF38()
{
  v1 = *(type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1005B981C(&unk_101A050F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
    type metadata accessor for CRLBoardIdentifierStorage(0);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v11 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v8, v2 | v7 | 7);
}

uint64_t sub_1000AF0FC()
{
  v1 = *(type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 32) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = sub_1005B981C(&unk_101A050F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);

  v10 = (v0 + v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v10, v12);
    type metadata accessor for CRLBoardIdentifierStorage(0);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v13 = swift_getEnumCaseMultiPayload();
  if (v13 == 2)
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v0 + v5, v14);
    type metadata accessor for CRLBoardIdentifierStorage(0);
  }

  else if (v13 <= 1)
  {
  }

  v15 = (v5 + v3 + v8) & ~v8;
  (*(v7 + 8))(v0 + v15, v6);

  return _swift_deallocObject(v0, v15 + v9, v2 | v8 | 7);
}

uint64_t sub_1000AF354()
{
  v1 = *(type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1005B981C(&unk_101A050F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
    type metadata accessor for CRLBoardIdentifierStorage(0);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v7 + 8) & ~v7;

  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_1000AF52C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AF574()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AF5C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AF604()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AF684()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AF6BC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000AF734()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1005B981C(&qword_101A21E58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000AF8AC()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  if (*(v0 + v4))
  {
  }

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000AFAB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AFAF0()
{
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000AFB68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000AFC8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
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
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000AFDB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AFDF8()
{
  v1 = type metadata accessor for CRLBoardDataStoreChangeSet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  if (*(v0 + 24))
  {
  }

  v4 = (v2 + 40) & ~v2;
  v5 = v0 + v4 + *(v1 + 20);
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  v7(v0 + v4 + *(v1 + 24), v6);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_1000AFFA0()
{
  v1 = sub_1005B981C(&unk_101A226F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

__n128 sub_1000B0114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + a3 - 32) - 8) + 16;
  (*v5)(a2, a1);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  result = *(v7 + 16);
  *v8 = *v7;
  *(v8 + 16) = result;
  return result;
}

__n128 sub_1000B01D0(__n128 *a1, uint64_t a2)
{
  v4 = *(a1->n128_u64[0] - 8);
  v5 = *(v4 + 64);
  (*(v4 + 32))(a2, a1->n128_u64 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  v6 = (a2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  result = a1[1];
  *v6 = *a1;
  v6[1] = result;
  return result;
}

uint64_t sub_1000B02CC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B02F8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B0324()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0364()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000B0444()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B047C()
{

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_1000B0598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + a3 - 32) - 8) + 16;
  (*v5)(a2, a1);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  result = *(v7 + 16);
  *v8 = *v7;
  *(v8 + 16) = result;
  return result;
}

__n128 sub_1000B0620(__n128 *a1, uint64_t a2)
{
  v4 = *(a1->n128_u64[0] - 8);
  v5 = *(v4 + 64);
  (*(v4 + 32))(a2, a1->n128_u64 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  v6 = (a2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  result = a1[1];
  *v6 = *a1;
  v6[1] = result;
  return result;
}

uint64_t sub_1000B06A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0724()
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

uint64_t sub_1000B09C0()
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

uint64_t sub_1000B0C54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0C94()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000B0CDC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B0D14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0D74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0DAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B0DEC()
{
  sub_100005070(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B0E24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0E94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0ED4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0F28()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 9, v2 | 7);
}

uint64_t sub_1000B1068()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B10D8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000B1140()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1178()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000B11D8()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B1230()
{
  v1 = sub_1005B981C(&unk_101A23860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B1308()
{
  v1 = sub_1005B981C(&unk_101A23860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B13E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B1438()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000B1470()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B14A8()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B197C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B1A48()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B1B0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B1B54()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B1C18()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v32 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v32(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:
  v30 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v30 + 8, v2 | 7);
}

uint64_t sub_1000B20F4()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B25C4()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B2A8C()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v32 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v32(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:
  v30 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v30 + 8, v2 | 7);
}

uint64_t sub_1000B2F6C()
{
  v1 = _s5BoardVMa(0);
  v43 = *(*(v1 - 1) + 80);
  v2 = (v43 + 32) & ~v43;
  v3 = (((((((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = *(v4 + 80);
  v6 = v5 + v3 + 16;
  v42 = *(v4 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  v10 = v7 + v1[5];
  v11 = type metadata accessor for CRLFolderIdentifier(0);
  v33 = *(*(v11 - 8) + 48);
  v34 = v11;
  if (!v33(v10, 1))
  {
    v9(v10, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  v37 = v9;
  v36 = v8;
  v12 = v6 & ~v5;

  v13 = v1[7];
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 8);
  v15(v7 + v13, v14);
  v15(v7 + v1[8], v14);
  v16 = v7 + v1[20];
  v17 = _s5BoardV13ShareMetadataVMa(0);
  v35 = *(*(v17 - 8) + 48);
  if (!v35(v16, 1, v17))
  {
    v38 = v5;
    v40 = v6 & ~v5;
    v18 = *(v17 + 20);
    v19 = type metadata accessor for URL();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v16 + v18, 1, v19))
    {
      (*(v20 + 8))(v16 + v18, v19);
    }

    v5 = v38;
    v12 = v40;
  }

  swift_unknownObjectRelease();

  v21 = v0 + v12;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v39 = v5;
    v41 = v12;
    v37(v0 + v12, v36);

    v27 = v21 + v1[5];
    if (!(v33)(v27, 1, v34))
    {
      v37(v27, v36);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v15(v21 + v1[7], v14);
    v15(v21 + v1[8], v14);
    v26 = v1[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_20;
    }

    v23 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v23 - 8) + 48))(v0 + v12, 5, v23))
    {
      goto LABEL_20;
    }

    v39 = v5;
    v41 = v12;
    v37(v0 + v12, v36);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v24 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v25 = v21 + v24[5];
    if (!(v33)(v25, 1, v34))
    {
      v37(v25, v36);
    }

    v15(v21 + v24[8], v14);
    v15(v21 + v24[9], v14);
    v26 = v24[14];
  }

  v28 = v21 + v26;
  v5 = v39;
  v12 = v41;
  if (!v35(v21 + v26, 1, v17))
  {
    v29 = *(v17 + 20);
    v30 = type metadata accessor for URL();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v28 + v29, 1, v30))
    {
      (*(v31 + 8))(v28 + v29, v30);
    }

    v12 = v41;
  }

LABEL_20:

  return _swift_deallocObject(v0, v12 + v42, v43 | v5 | 7);
}

uint64_t sub_1000B3680()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B3778()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000B37D0()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B3978()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B39B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B39F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019F2D40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1005B981C(&qword_1019F2D78);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000B3AF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1005B981C(&qword_1019F2D40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1005B981C(&qword_1019F2D78);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000B3C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B3C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B3CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_101A0B528);
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

uint64_t sub_1000B3DB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_101A0B528);
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

uint64_t sub_1000B3E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLAssetData();
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

uint64_t sub_1000B3F30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLAssetData();
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