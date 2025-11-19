uint64_t sub_100066728()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066760()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066798()
{
  v1 = *(sub_10007EBC0(&unk_1006B3008) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for FMIPAccessoryError();
  }

  else
  {
    v5 = type metadata accessor for FMIPItem();
  }

  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000668B4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000668EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066924()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006695C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066998()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_1000669D0()
{
  v1 = (type metadata accessor for FMPersonDetailViewModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[16];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100066B44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for FMPersonDetailViewModel(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[16];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100066D70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066DA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066E40()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100066F28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066F60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066F98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066FD8()
{
  v1 = type metadata accessor for FMIPItemActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100067134(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B76D0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000671AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10007EBC0(&qword_1006B76D0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

__n128 sub_10006724C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100067270()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000672A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000672E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067318()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1000673E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100067420()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067458()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067498(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10007EBC0(&qword_1006B2B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100067554(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10007EBC0(&qword_1006B2B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100067604()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067644(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3020);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000676BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10007EBC0(&qword_1006B3020);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10006774C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_100067790(char *a1, int64_t a2, char a3)
{
  result = sub_100168280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000677B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000677E8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100067820()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067858()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067890()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000678C8()
{
  v1 = *(type metadata accessor for FindingMode(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = *v5;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_11;
      }

      v7 = *(v5 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

LABEL_11:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100067A18()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100067A68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067AA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100067AE8()
{
  v1 = *(type metadata accessor for FindingMode(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = *v5;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_11;
      }

      v7 = *(v5 + 1);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

LABEL_11:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100067C38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067C94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067CCC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100067D04()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067D3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100067D84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100067DCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067E0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100067E5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100067EC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067F00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067F38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067F78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067FFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068034()
{
  v1 = *(type metadata accessor for FMAccessoryPairingUpdateRequiredCard.ViewModel() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for FMIPItem();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100068108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100068174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000681E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006821C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068254()
{
  v1 = *(sub_10007EBC0(&qword_1006B4D50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for FMIPAccessoryError();
  }

  else
  {
    v5 = type metadata accessor for URL();
  }

  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100068368()
{
  v1 = *(sub_10007EBC0(&unk_1006B4D70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for FMIPUnknownItemProductMetadata();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006848C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000684C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068508()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000685CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068604()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006863C()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100068730()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_10019A8F8(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100068838()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068870()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000688B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000688E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068928()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068974()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000689BC()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100068A14()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068A54()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100068AA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068AF8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 56);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_10007EBC0(&qword_1006B50F8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10007EBC0(&qword_1006B5100);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_10007EBC0(&qword_1006B5108);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_100068C80(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 56) = -a2;
    return result;
  }

  v8 = sub_10007EBC0(&qword_1006B50F8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10007EBC0(&qword_1006B5100);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_10007EBC0(&qword_1006B5108);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100068E0C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100068E74()
{
  v1 = type metadata accessor for FMChooseMapView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1001A1748();
  v6 = v1[6];
  sub_10007EBC0(&qword_1006B5338);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[7];
  sub_10007EBC0(&qword_1006B5340);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v10 = *(sub_10007EBC0(&qword_1006B5198) + 32);
    v11 = type metadata accessor for PresentationMode();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  v12 = v1[8];
  v13 = sub_10007EBC0(&qword_1006B5108);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return _swift_deallocObject(v0, v3 + v4 + 1, v2 | 7);
}

uint64_t sub_100069088@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000690DC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100069140@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000691B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000691EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069240()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100069280()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000692C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000692F8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100069330()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100069370()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000693C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100069400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FMIPDeviceImageSize();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000694F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FMIPDeviceImageSize();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000695F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069630()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for FMProductAssetProvider.DeviceFetchingContext() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v14 = v3 | v7;
  v9 = (((*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v8, v1);
  v11 = v6[7];
  v12 = type metadata accessor for FMIPDeviceImageSize();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return _swift_deallocObject(v0, v9 + 16, v14 | 7);
}

uint64_t sub_1000697F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069828()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000698EC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100069924()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000699D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069A0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100069A4C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMIPItem();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100069AF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMIPItem();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100069B9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069BD4()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100069C98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069CD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069D10()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100069DE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069E24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069E5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069E9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069ED8()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100069F9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006A004()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006A03C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006A084()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006A0D8()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10006A174()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006A1B0()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10006A2A4()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(sub_10007EBC0(&qword_1006B68E8) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v4 + v7 + 2) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for FMFDevice();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v9 + v8 + 1, v3 | v7 | 7);
}

uint64_t sub_10006A458()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006A4E0()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10006A530()
{
  v1 = type metadata accessor for FMIPPlaySoundMethod();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v12 = *(v7 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  v9 = v3 | v8;
  v10 = (v5 + v8 + 16) & ~v8;
  (*(v7 + 8))(v0 + v10, v6);

  return _swift_deallocObject(v0, v10 + v12, v9 | 7);
}

uint64_t sub_10006A6C0()
{
  v1 = type metadata accessor for FMIPActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  v10 = (((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
  v11 = (((((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v7 + 8))(v0 + v10, v6);

  return _swift_deallocObject(v0, v11 + 8, v3 | v8 | 7);
}

uint64_t sub_10006A878()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006A8BC()
{
  v1 = type metadata accessor for FMDeviceDetailViewModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[9];
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = v1[20];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v4 + v8, v9);
  v12 = v1[22];
  v13 = type metadata accessor for FMIPBatteryStatus();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);

  v14 = v1[33];
  if (!(*(v10 + 48))(v4 + v14, 1, v9))
  {
    v11(v4 + v14, v9);
  }

  v15 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v15 + 8, v2 | 7);
}

uint64_t sub_10006AB84()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10006AC94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10006AD70()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006ADB0()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10007EBC0(&qword_1006BB1E0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  v10 = type metadata accessor for FMIPAddress();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v7, 1, v10))
  {
    (*(v11 + 8))(v0 + v7, v10);
  }

  return _swift_deallocObject(v0, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | 7);
}

uint64_t sub_10006AFAC()
{
  v1 = type metadata accessor for FMDeviceDetailViewModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v16 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  v5 = v1[9];
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = v1[20];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v4 + v8, v9);
  v12 = v1[22];
  v13 = type metadata accessor for FMIPBatteryStatus();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);

  v14 = v1[33];
  if (!(*(v10 + 48))(v4 + v14, 1, v9))
  {
    v11(v4 + v14, v9);
  }

  return _swift_deallocObject(v0, v3 + v16, v2 | 7);
}

uint64_t sub_10006B258()
{
  v1 = type metadata accessor for FMDeviceDetailViewModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = v1[9];
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = v1[20];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v4 + v8, v9);
  v12 = v1[22];
  v13 = type metadata accessor for FMIPBatteryStatus();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);

  v14 = v1[33];
  if (!(*(v10 + 48))(v4 + v14, 1, v9))
  {
    v11(v4 + v14, v9);
  }

  v15 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v15 + 8, v2 | 7);
}

uint64_t sub_10006B518()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006B550()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006B590()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10006B63C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006B848()
{
  v1 = type metadata accessor for FMFPreferences();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006B910()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006B948()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {

      if (*(v5 + 16) >= 4uLL)
      {
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
LABEL_12:
          v7 = type metadata accessor for FMIPDevice();
LABEL_19:
          (*(*(v7 - 8) + 8))(v0 + v3, v7);
          break;
        case 8:
          v7 = type metadata accessor for FMIPUnknownItem();
          goto LABEL_19;
        case 10:
          v8 = type metadata accessor for URL();
          (*(*(v8 - 8) + 8))(v0 + v3, v8);
          v9 = *(sub_10007EBC0(&qword_1006B6BD0) + 48);
          v10 = type metadata accessor for UUID();
          (*(*(v10 - 8) + 8))(v5 + v9, v10);
          break;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = type metadata accessor for FMFFriend();
      }

      else
      {
        v7 = type metadata accessor for FMIPItem();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v11 = type metadata accessor for FMIPDevice();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v13 = type metadata accessor for FMIPItem();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

LABEL_20:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006BC30()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006BC68()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006BCA0()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10006BD68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006BDAC()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10006BE0C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006BE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B76D0);
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

uint64_t sub_10006BEE8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10007EBC0(&qword_1006B76D0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10006BF78()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10006BFB8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006BFF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C030()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C068()
{
  v1 = (type metadata accessor for FMUnknownItemCellViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[13];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[14];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10006C1C4()
{

  if (v0[3])
  {
  }

  if (v0[5])
  {
  }

  if (v0[7])
  {
  }

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10006C280(uint64_t a1, uint64_t a2, int *a3)
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

  v9 = sub_10007EBC0(&qword_1006BC990);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(a1 + v12, a2, v10);
  }

  v13 = sub_10007EBC0(&unk_1006B20C0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_13;
  }

  v14 = sub_10007EBC0(&unk_1006B0000);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[7];
    goto LABEL_13;
  }

  v16 = sub_10007EBC0(&qword_1006B7D50);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_10006C470(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = sub_10007EBC0(&qword_1006BC990);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10007EBC0(&unk_1006B20C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_10007EBC0(&unk_1006B0000);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = sub_10007EBC0(&qword_1006B7D50);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10006C654()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C68C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006C754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPAccessoryError();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10007EBC0(&unk_1006B0120);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10006C850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPAccessoryError();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10007EBC0(&unk_1006B0120);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10006C95C()
{

  return _swift_deallocObject(v0, 27, 7);
}

uint64_t sub_10006C9A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C9D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006CA10()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006CA50()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006CAA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CB28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CB64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CBA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CBDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006CC14()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006CC4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CC98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CCD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10006CD20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006CD60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006CDA0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006CDE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CE18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CE50()
{
  v1 = *(type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v6 = type metadata accessor for UUID();
      }

      else
      {
        if (EnumCaseMultiPayload != 6)
        {
          goto LABEL_14;
        }

        v6 = type metadata accessor for FMIPAccessoryError();
      }

      goto LABEL_13;
    }

LABEL_10:
    v6 = type metadata accessor for FMIPDiscoveredAccessory();
LABEL_13:
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    goto LABEL_14;
  }

  switch(EnumCaseMultiPayload)
  {
    case 1:
      goto LABEL_10;
    case 2:

      break;
    case 3:
      goto LABEL_10;
  }

LABEL_14:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006CFA0()
{
  v1 = type metadata accessor for FMIPAccessoryError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006D064()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10006D148()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006D188()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D1C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006D1FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10007EBC0(&unk_1006B0000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006D2B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10007EBC0(&unk_1006B0000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006D368()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D3A0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006D3E0()
{
  v1 = type metadata accessor for FMFLocationAlertAddressType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_10006D4B8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006D4F0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10006D540()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006D578()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006D5C0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006D5F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D634()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D66C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006D730()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D768()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006D7A8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006D7F0()
{
  v1 = type metadata accessor for FMFPreferences();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006D8B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D8F0()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {

      if (*(v5 + 16) >= 4uLL)
      {
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
LABEL_12:
          v7 = type metadata accessor for FMIPDevice();
LABEL_19:
          (*(*(v7 - 8) + 8))(v0 + v3, v7);
          break;
        case 8:
          v7 = type metadata accessor for FMIPUnknownItem();
          goto LABEL_19;
        case 10:
          v8 = type metadata accessor for URL();
          (*(*(v8 - 8) + 8))(v0 + v3, v8);
          v9 = *(sub_10007EBC0(&qword_1006B6BD0) + 48);
          v10 = type metadata accessor for UUID();
          (*(*(v10 - 8) + 8))(v5 + v9, v10);
          break;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = type metadata accessor for FMFFriend();
      }

      else
      {
        v7 = type metadata accessor for FMIPItem();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v11 = type metadata accessor for FMIPDevice();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v13 = type metadata accessor for FMIPItem();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

LABEL_20:
  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v15 + 8, v2 | 7);
}

uint64_t sub_10006DBE0()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006DCA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B9D48);
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

uint64_t sub_10006DD1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10007EBC0(&qword_1006B9D48);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10006DDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B9DF8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006DE24(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10007EBC0(&qword_1006B9DF8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10006DEFC()
{
  v1 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = (v0 + v3);
  v6 = sub_10007EBC0(&qword_1006B9D48);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 2, v6))
  {
    type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v7 = type metadata accessor for FMFFriend();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
    }

    v8 = *(v6 + 48);
    v9 = sub_10007EBC0(&qword_1006B9DF8);
    if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
    {
      v10 = type metadata accessor for FMIPBeaconShareState();
      (*(*(v10 - 8) + 8))(v5 + v8, v10);
    }

    v11 = *(v6 + 64);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v14 + 8, v2 | 7);
}

uint64_t sub_10006E144()
{
  v1 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = (v0 + v3);
  v6 = sub_10007EBC0(&qword_1006B9D48);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 2, v6))
  {
    type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v7 = type metadata accessor for FMFFriend();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
    }

    v8 = *(v6 + 48);
    v9 = sub_10007EBC0(&qword_1006B9DF8);
    if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
    {
      v10 = type metadata accessor for FMIPBeaconShareState();
      (*(*(v10 - 8) + 8))(v5 + v8, v10);
    }

    v11 = *(v6 + 64);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v13 + 8, v2 | 7);
}

uint64_t sub_10006E384()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006E3BC()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10006E4AC()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10006E558()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006E594()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006E5DC()
{
  v1 = sub_10007EBC0(&qword_1006B9FD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006E6AC()
{
  v1 = *(type metadata accessor for FMBeaconSharingModuleRelationshipType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = type metadata accessor for FMFFriend();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v6 + 8, v2 | 7);
}

uint64_t sub_10006E7B0()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006E874()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10006E9D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006EA10()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006EA70()
{
  v1 = type metadata accessor for FMIPItemActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10006EC00()
{
  v1 = type metadata accessor for FMIPItemActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10006ECF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006ED30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006ED84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006EE30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006EED4()
{
  v1 = (type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006EFCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006F004()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006F03C()
{
  v1 = (type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006F13C()
{
  v1 = (type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006F22C()
{
  v1 = (type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[7];
  v6 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10006F33C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006F388()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006F3C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006F404()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006F43C()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10006F54C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006F584()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10006F660()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006F6A0()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10007EBC0(&qword_1006BB1E0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  v10 = type metadata accessor for FMIPAddress();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v7, 1, v10))
  {
    (*(v11 + 8))(v0 + v7, v10);
  }

  return _swift_deallocObject(v0, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | 7);
}

uint64_t sub_10006F89C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006F8E0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10006F980()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006F9B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006F9F0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006FA28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006FA60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006FAAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006FAEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006FB24()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006FB5C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006FBA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006FBE0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006FC68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10006FCA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_10006FCD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006FD0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006FD44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006FD84()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006FDFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006FE3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006FE74()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006FEB0()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_10006FF54()
{
  v1 = type metadata accessor for FMIPItemActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_10007002C()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000700D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070108()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070140()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070214()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000702B0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10007030C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070344()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070380()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000703C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10007EBC0(&qword_1006B07D0);
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
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 72);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000704F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_10007EBC0(&qword_1006B07D0);
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
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 72);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100070620()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070658()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070694()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000706E4()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1000707D8()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10007088C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000708C4()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100070914()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007096C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000709A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070A00()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100070A54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070A94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070ACC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070B0C()
{
  v1 = type metadata accessor for FMIPSafeLocation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100070BE4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100070C44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070C7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

__n128 sub_100070CD4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100070CE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100070D18@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_100070D60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3028);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100070E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3028);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100070E8C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100070ECC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070F04()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070F40()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070F80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 64);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10007EBC0(&unk_1006B20C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000710B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 64);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10007EBC0(&unk_1006B20C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000711E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071220()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10007127C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000712F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071328()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100071378()
{

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1000713F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071458()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100071570()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10007161C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007169C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000716D8()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100071760()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000717B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100071824()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007185C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071894()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000718D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007190C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007194C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100071990()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100071A54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071A8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071AC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071AFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100071B4C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100071B84()
{
  v1 = type metadata accessor for FMItemDetailViewModel();
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v17 = type metadata accessor for UUID();
  v3 = *(v17 - 8);
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v5 = v0 + ((v2 + 16) & ~v2);

  v6 = v1[12];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v5 + v6, v7);
  v10 = v1[13];
  if (!(*(v8 + 48))(v5 + v10, 1, v7))
  {
    v9(v5 + v10, v7);
  }

  v11 = (((v16 + ((v2 + 16) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4;
  v12 = v1[15];
  v13 = type metadata accessor for FMIPProductType();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  (*(v3 + 8))(v0 + v11, v17);

  return _swift_deallocObject(v0, ((((v15 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v4 | 7);
}

uint64_t sub_100071E78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v21 = *(v2 + 80);
  v3 = (v21 + 16) & ~v21;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for FMItemDetailViewModel();
  v6 = *(*(v5 - 1) + 80);
  v19 = *(*(v5 - 1) + 64);
  v23 = sub_10007EBC0(&qword_1006BD080);
  v7 = *(v23 - 8);
  v8 = *(v7 + 80);
  v22 = *(v7 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v24 = v0;
  v20 = (v3 + v4 + v6) & ~v6;
  v9 = v0 + v20;

  v10 = v5[12];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v9 + v10, v11);
  v14 = v5[13];
  if (!(*(v12 + 48))(v9 + v14, 1, v11))
  {
    v13(v9 + v14, v11);
  }

  v15 = (v20 + v19 + v8) & ~v8;
  v16 = v5[15];
  v17 = type metadata accessor for FMIPProductType();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);

  (*(v7 + 8))(v24 + v15, v23);

  return _swift_deallocObject(v24, v15 + v22, v21 | v6 | v8 | 7);
}

uint64_t sub_1000721AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000721E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007224C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100072284()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000722D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100072310()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000723D8()
{
  v1 = type metadata accessor for FMIPItemActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 24))
  {
  }

  v5 = (v3 + 40) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_1000724AC()
{
  v1 = type metadata accessor for FMIPItemActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 24))
  {
  }

  v5 = (v3 + 40) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100072594()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000726A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100072780()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000727C4()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10007EBC0(&qword_1006BB1E0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  v10 = type metadata accessor for FMIPAddress();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v7, 1, v10))
  {
    (*(v11 + 8))(v0 + v7, v10);
  }

  return _swift_deallocObject(v0, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | 7);
}

uint64_t sub_1000729C0()
{
  v1 = type metadata accessor for FMIPLocation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100072A48()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100072A90()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_100072AC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_10007EBC0(&qword_1006BD088);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100072B84(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_10007EBC0(&qword_1006BD088);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100072D78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100072E24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100072EC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMFLocationAlertTriggerType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100072F74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMFLocationAlertTriggerType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007302C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100073064()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007309C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000730DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100073114()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100073154()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100073194()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100073258()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 42) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100073320()
{
  v1 = (type metadata accessor for FMPersonDetailViewModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for FMFFriend();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v0 + v3;

  v12 = v1[16];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100073520()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100073558()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100073598()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100073600()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100073638()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100073678()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000736B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000736E8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000737C0()
{
  v1 = type metadata accessor for FMIPItemActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000738A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000738E0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100073928()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100073994()
{
  v1 = *(sub_10007EBC0(&qword_1006B07D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = type metadata accessor for FMIPItem();
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

uint64_t sub_100073B40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100073B78()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100073BBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100073BF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100073C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&qword_1006BE898);
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

uint64_t sub_100073D04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007EBC0(&qword_1006BE898);
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

uint64_t sub_100073DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BE940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100073E68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1003DDE0C(v1, v2);
}

uint64_t sub_100073ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BE898);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100073F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BE898);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100073FC8()
{
  v1 = sub_10007EBC0(&qword_1006BEA98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100074060()
{
  v1 = *(type metadata accessor for FMPlatterIcon() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for FMFindingTechnology();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100074188()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000741C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074208()
{
  if (*(v0 + 24) >= 4uLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100074250()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074290()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000742C8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100074308()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100074358()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000743EC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100074424()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007445C()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {

      if (*(v5 + 16) >= 4uLL)
      {
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
LABEL_12:
          v7 = type metadata accessor for FMIPDevice();
LABEL_19:
          (*(*(v7 - 8) + 8))(v0 + v3, v7);
          break;
        case 8:
          v7 = type metadata accessor for FMIPUnknownItem();
          goto LABEL_19;
        case 10:
          v8 = type metadata accessor for URL();
          (*(*(v8 - 8) + 8))(v0 + v3, v8);
          v9 = *(sub_10007EBC0(&qword_1006B6BD0) + 48);
          v10 = type metadata accessor for UUID();
          (*(*(v10 - 8) + 8))(v5 + v9, v10);
          break;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = type metadata accessor for FMFFriend();
      }

      else
      {
        v7 = type metadata accessor for FMIPItem();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v11 = type metadata accessor for FMIPDevice();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v13 = type metadata accessor for FMIPItem();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

LABEL_20:
  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v15 + 8, v2 | 7);
}

uint64_t sub_100074754()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000747AC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000747F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074834()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007486C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000748A4()
{
  v1 = *(type metadata accessor for FMAnnotationIdentifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
    }

LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else if (EnumCaseMultiPayload == 6)
  {
  }

LABEL_7:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100074A04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074A3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074A8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100074AC4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100074B04()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100074B44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074B7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074BB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100074BEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100074C24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100074C5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100074CB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074CEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100074D3C()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100074DD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100074E10()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100074E50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100074EA8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100074EE8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100074F30()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100074F88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074FC0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075008()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100075060()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000750C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075100()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075140()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007517C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PeopleListPersonRow.State();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100075228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PeopleListPersonRow.State();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000752CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075310()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075348()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100075398()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000753D8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100075424()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075474()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000754AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000754E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075524()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007556C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000755A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000755DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075614()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075800()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075838()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075870()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100075934()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075970()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000759C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100075A08()
{
  v1 = type metadata accessor for FMIPItemActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100075AF8()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100075B50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075B90()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100075BD0()
{
  v1 = type metadata accessor for FMItemCellViewModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 64);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = *(v1 + 76);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100075DC4()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075DFC()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100075F0C()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_100075FFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100076034()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100076118()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100076150()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000761A0()
{
  v1 = type metadata accessor for FMFLocationAlertAddressType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_100076278()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000762B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10007638C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100076414()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100076454()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10007648C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000764E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100076534()
{
  v1 = type metadata accessor for FMFLocationAlertAddressType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_10007660C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007665C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100076694()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000766CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007670C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007675C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&unk_1006B20C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_100076834(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007EBC0(&unk_1006B20C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000768FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100076934(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMIPDiscoveredAccessory();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000769E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMIPDiscoveredAccessory();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100076A84(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100076B50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100076C08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100076C4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100076C84()
{
  v1 = sub_10007EBC0(&qword_1006B9FD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100076D54()
{
  v1 = *(sub_10007EBC0(&unk_1006B0120) - 8);
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

uint64_t sub_100076E6C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100076EAC()
{
  v1 = *(sub_10007EBC0(&qword_1006C1328) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for SeeLostItemViewModelError();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100076FCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007700C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077044()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007707C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000770BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000770F4()
{
  sub_10019A8F8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100077140()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100077188()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000771C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100077200()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077238()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPDiscoveredAccessory();
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

uint64_t sub_10007733C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FMIPDiscoveredAccessory();
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

uint64_t sub_1000773F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007742C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077464()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000774B4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100077504(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_10007EBC0(&qword_1006B07D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Date();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[20];
    goto LABEL_11;
  }

  v13 = type metadata accessor for FMIPBatteryStatus();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[22];
    goto LABEL_11;
  }

  v15 = sub_10007EBC0(&unk_1006B0000);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[33];

  return v16(v17, a2, v15);
}

uint64_t sub_1000776D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_10007EBC0(&qword_1006B07D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Date();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[20];
    goto LABEL_9;
  }

  v13 = type metadata accessor for FMIPBatteryStatus();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[22];
    goto LABEL_9;
  }

  v15 = sub_10007EBC0(&unk_1006B0000);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[33];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000778A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000778D8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100077918()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100077954()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100077994()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000779E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077A18()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100077AA8()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100077BE4()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8) >= 4uLL)
  {
  }

  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100077CF8()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v6 + 8) >= 4uLL)
  {
  }

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100077DFC()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v4 + ((((((v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4;
  v8 = v6 + v7;
  v3(v0 + v5, v1);

  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 1, v4 | 7);
}

uint64_t sub_100077EF8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100077F60()
{
  v1 = *(sub_10007EBC0(&qword_1006B0050) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for FMFFriend();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000780A4()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);

  v9(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_1000781CC()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_10007EBC0(&qword_1006B07D0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v11 = type metadata accessor for FMIPItem();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v8, 1, v11))
  {
    (*(v12 + 8))(v0 + v8, v11);
  }

  if (*(v0 + v10 + 8) >= 4uLL)
  {
  }

  v13 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v13 + 8, v3 | v7 | 7);
}

uint64_t sub_1000783C0()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000784C0()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8, v4 | 7);
}

uint64_t sub_1000785A0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100078634()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007866C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000786A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007870C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007874C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007878C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000787C4()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100078888()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000788C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100078908()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 32, v3 | 7);
}

uint64_t sub_1000789FC()
{
  v1 = type metadata accessor for FMDeviceDetailViewModel();
  v20 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v21 = type metadata accessor for FMIPDevice();
  v2 = *(v21 - 8);
  v3 = *(v2 + 80);
  v18 = *(v2 + 64);

  v19 = (v20 + 24) & ~v20;
  v4 = v0 + v19;

  v5 = v1[9];
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v19 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = v1[20];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v4 + v8, v9);
  v12 = v1[22];
  v13 = type metadata accessor for FMIPBatteryStatus();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);

  v14 = v1[33];
  if (!(*(v10 + 48))(v4 + v14, 1, v9))
  {
    v11(v4 + v14, v9);
  }

  v15 = (v19 + v17 + v3) & ~v3;

  (*(v2 + 8))(v0 + v15, v21);

  return _swift_deallocObject(v0, v15 + v18, v20 | v3 | 7);
}

uint64_t sub_100078D38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100078D70()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100078DAC()
{
  v1 = type metadata accessor for FMIPSafeLocation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100078E70()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100078EC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100078FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000790DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079114(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100079224(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000793F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079428()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100079480()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000794B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100079508()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079540()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100079580()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000795B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000795F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100079630()
{
  v1 = type metadata accessor for FMIPItemGroup();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000796D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079708()
{
  v1 = type metadata accessor for DeviceUseCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000797FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007983C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079874()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100079980(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
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
      v13 = type metadata accessor for PeopleListPersonRow.State();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100079AA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
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
      v13 = type metadata accessor for PeopleListPersonRow.State();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100079BC8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_100079C70(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100079C7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079CB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100079D1C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUserInteractionEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_100079E88()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100079EC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_100079F08@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isScrollEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_100079F50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100151A10();
  *a1 = result;
  return result;
}

uint64_t sub_100079FB4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A068()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007A0CC()
{
  v1 = (type metadata accessor for FMPeopleCellViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (sub_10007EBC0(&qword_1006B50B8) - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;

  v10 = v0 + v3;

  v11 = v1[7];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  v13 = v1[34];
  v14 = type metadata accessor for PeopleListPersonRow.State();
  (*(*(v14 - 8) + 8))(v10 + v13, v14);

  v15 = type metadata accessor for FriendshipExpiration();
  (*(*(v15 - 8) + 8))(v0 + v7, v15);

  return _swift_deallocObject(v0, v7 + v8, v9 | 7);
}

uint64_t sub_10007A364()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10007A4B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A548()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A580@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___LocateIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10007A5D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___LocateIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_10007A62C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ToggleLocationSharingIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10007A684(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ToggleLocationSharingIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_10007A6D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___LocateDeviceIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10007A730(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___LocateDeviceIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_10007A784@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PlaySoundIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10007A7DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PlaySoundIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_10007AD40(uint64_t a1, double a2)
{
  v4 = *(a1 + 40);
  v5 = -(*(a1 + 48) * a2);
  v6 = expf(v5);
  return v4 - fabs((*(*(a1 + 32) + 16))(a2) * v6);
}

double sub_10007ADA8(uint64_t a1, double a2)
{
  v4 = a2 * a2;
  v5 = exp(-(*(a1 + 40) * a2));
  v6 = (*(*(a1 + 32) + 16))(a2);
  v7 = *(a1 + 64);
  v8 = *(a1 + 48) + *(a1 + 56) * a2;
  v9 = -v7;
  v10 = v8 - v7 * v4;
  v11 = -(v8 + v9 * v4);
  if (v5 * v6 <= 0.0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a1 + 40) * a2;
  return v12 / (v4 * *(a1 + 72) * expf(v13));
}

double sub_10007AE54(uint64_t a1, double a2)
{
  v4 = (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4 * v5 + 1.0;
  *&v5 = -(v5 * a2);
  v8 = expf(*&v5);
  v9 = -v6;
  if (v4 < 0.0)
  {
    v9 = v6;
  }

  return v9 + v7 * v8;
}

double sub_10007AEC8(double *a1, double a2)
{
  v2 = a1[4] * (a1[5] - a2);
  v3 = a1[6] * a2;
  return v2 / expf(v3);
}

id sub_10007AF08(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_100645910 table:0];

  return v3;
}

void sub_10007B024()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1006C4070;
  qword_1006C4070 = v0;
}

uint64_t sub_10007B6B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_10007B6CC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_10007B6E8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

uint64_t sub_10007B704(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10007B930(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10007C254(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10007D3F8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) handleImageView];
  [v3 setCenter:{v1, v2}];
}

id *sub_10007D450(id *result, int a2)
{
  if (a2)
  {
    return [result[4] popAnimateHandle];
  }

  return result;
}

uint64_t sub_10007EBC0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10007EC08(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of FMObjectAssociation.isolationQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100003E90();
  static DispatchQoS.default.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100003EDC(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

__n128 sub_10007EEB4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_10007EEE8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMPasscodeViewStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMPasscodeViewStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FMDeviceEditableMessageViewStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10007F074(uint64_t a1, uint64_t a2)
{
  result = static Float._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_10007F0C8(uint64_t a1, uint64_t a2)
{
  v3 = static Float._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_10007F120@<X0>(_DWORD *a1@<X8>)
{
  result = static Float._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_10007F150(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_10007F1A4(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_10007F1FC@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_10007F240(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10007F2B8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10007F338@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_10007F420()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10007F488()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10007F4D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10007F514@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000806F8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10007F564(uint64_t a1)
{
  v2 = sub_100003EDC(&qword_1006AF310, type metadata accessor for CommandError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10007F5D0(uint64_t a1)
{
  v2 = sub_100003EDC(&qword_1006AF310, type metadata accessor for CommandError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10007F63C(void *a1, uint64_t a2)
{
  v4 = sub_100003EDC(&qword_1006AF310, type metadata accessor for CommandError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10007F6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003EDC(&qword_1006AF310, type metadata accessor for CommandError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10007F76C()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10007F7CC()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_10007F838()
{
  sub_100003EDC(&qword_1006AF390, type metadata accessor for TextStyle);
  sub_100003EDC(&qword_1006AF398, type metadata accessor for TextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10007F8F4()
{
  sub_100003EDC(&qword_1006AF360, type metadata accessor for OpenExternalURLOptionsKey);
  sub_100003EDC(&qword_1006AF368, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

_DWORD *sub_10007F9B0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_10007F9C0@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10007F9CC()
{
  sub_100003EDC(&qword_1006AF380, type metadata accessor for UILayoutPriority);
  sub_100003EDC(&qword_1006AF388, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double sub_10007FA88@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10007FA94()
{
  sub_100003EDC(&qword_1006AF030, type metadata accessor for Weight);
  sub_100003EDC(&qword_1006AF038, type metadata accessor for Weight);
  sub_100080730();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10007FB5C()
{
  sub_100003EDC(&qword_1006AF370, type metadata accessor for Key);
  sub_100003EDC(&qword_1006AF378, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10007FC18()
{
  sub_100003EDC(&qword_1006AF048, type metadata accessor for TraitKey);
  sub_100003EDC(&unk_1006AF050, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10007FE3C()
{
  sub_100003EDC(&qword_1006AF340, type metadata accessor for AttributeName);
  sub_100003EDC(&qword_1006AF348, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10007FEF8(uint64_t a1)
{
  v2 = sub_100003EDC(&qword_1006AF2D8, type metadata accessor for CommandError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10007FF64(uint64_t a1)
{
  v2 = sub_100003EDC(&qword_1006AF2D8, type metadata accessor for CommandError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10007FFD4(uint64_t a1)
{
  v2 = sub_100003EDC(&qword_1006AF310, type metadata accessor for CommandError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100080040()
{
  sub_100003EDC(&qword_1006AF310, type metadata accessor for CommandError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_1000800C4@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10008010C()
{
  sub_100003EDC(&qword_1006AF350, type metadata accessor for LaunchOptionsKey);
  sub_100003EDC(&qword_1006AF358, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000801C8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100080204()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100080258()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

void sub_1000802D4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t sub_100080310(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

void sub_100080334()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_100080370(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

uint64_t sub_100080388()
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

uint64_t sub_1000806C0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1000806F8(uint64_t a1)
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

unint64_t sub_100080730()
{
  result = qword_1006AF040;
  if (!qword_1006AF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AF040);
  }

  return result;
}

uint64_t sub_100080894(uint64_t a1, int a2)
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

uint64_t sub_1000808B4(uint64_t result, int a2, int a3)
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

unint64_t sub_100080F68()
{
  result = qword_1006AF300;
  if (!qword_1006AF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AF300);
  }

  return result;
}

uint64_t sub_100081288(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection();
  v5 = __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &aBlock[-1] - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &aBlock[-1] - v12;
  __chkstk_darwin(v11);
  v15 = &aBlock[-1] - v14;
  v16 = type metadata accessor for FMDeviceDetailCardViewController();
  v41.receiver = v2;
  v41.super_class = v16;
  objc_msgSendSuper2(&v41, "viewWillAppear:", a1 & 1);
  v17 = OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_mediator;
  v18 = *(*&v2[OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_mediator] + 56);
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v18 + v19, v15);
  sub_100062074(v15, v13);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10005D4E4(v13);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    sub_100062074(v15, v10);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      sub_100062074(v10, v7);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      sub_10005D4E4(v10);
      v28 = sub_100005B4C(v25, v27, aBlock);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "FMDeviceDetailCardViewController: Cannot be setup without a selected device. Selection: %s", v23, 0xCu);
      sub_100006060(v24);
    }

    else
    {

      sub_10005D4E4(v10);
    }

    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    aBlock[4] = sub_1000822F4;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100623AA0;
    v38 = _Block_copy(aBlock);

    [v2 dismissViewControllerAnimated:1 completion:v38];
    _Block_release(v38);
    return sub_10005D4E4(v15);
  }

  else
  {
    v29 = sub_10007EBC0(&qword_1006BEEE0);
    sub_10008228C(&v13[*(v29 + 48)]);
    v30 = type metadata accessor for FMIPDevice();
    (*(*(v30 - 8) + 8))(v13, v30);
    v31 = objc_allocWithZone(type metadata accessor for FMDeviceDetailContentViewController(0));

    v33 = sub_1001D81C0(v32);
    sub_1004DEC84(v33, v2);
    v34 = *(*&v2[v17] + 56);

    v35 = sub_1003CD20C(v2, v34);

    sub_10005D4E4(v15);
    *&v2[OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_selectionSubscription] = v35;
  }
}

void sub_100081720(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection();
  v5 = __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - v9;
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for FMDeviceDetailCardViewController();
  v55.receiver = v2;
  v55.super_class = v13;
  objc_msgSendSuper2(&v55, "viewWillDisappear:", a1 & 1);
  v14 = *&v2[OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_selectionSubscription];
  if (v14)
  {
    v15 = *(*&v2[OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_mediator] + 56);
    swift_beginAccess();

    v16 = sub_1003CD53C((v15 + 16), v14);
    v17 = *(v15 + 16);
    if (v17 >> 62)
    {
      v48 = v16;
      v18 = _CocoaArrayWrapper.endIndex.getter();
      v16 = v48;
      if (v18 >= v48)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18 >= v16)
      {
LABEL_4:
        sub_1003CD570(v16, v18);
        swift_endAccess();

        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_5:
  v19 = OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_mediator;
  v20 = *(*&v2[OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_mediator] + 56);
  v21 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v20 + v21, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 15)
  {
    if (EnumCaseMultiPayload == 19 || EnumCaseMultiPayload == 16)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100005B14(v28, qword_1006D4630);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_17;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "FMDeviceDetailCardViewController: ignore current selection";
      goto LABEL_16;
    }

LABEL_24:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100005B14(v33, qword_1006D4630);
    v34 = v2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    v53 = v36;
    v37 = os_log_type_enabled(v35, v36);
    v38 = &unk_1006D3000;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v51 = v39;
      v52 = swift_slowAlloc();
      v54[0] = v52;
      v50 = v35;
      *v39 = 136315138;
      v40 = OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_returnSelection;
      swift_beginAccess();
      sub_100062074(&v34[v40], v10);
      v41 = String.init<A>(describing:)();
      v43 = sub_100005B4C(v41, v42, v54);

      v44 = v51;
      *(v51 + 1) = v43;
      v38 = &unk_1006D3000;
      _os_log_impl(&_mh_execute_header, v35, v53, "FMDeviceDetailCardViewController: Returning to previous selection %s", v44, 0xCu);
      sub_100006060(v52);
    }

    else
    {
    }

    v45 = *(*&v2[v19] + 56);
    v46 = v38[391];
    swift_beginAccess();
    sub_100062074(&v34[v46], v10);
    v47 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v45 + v47, v7);
    swift_beginAccess();

    sub_100058530(v10, v45 + v47);
    swift_endAccess();
    sub_100058594(v7);

    sub_10005D4E4(v7);
    sub_10005D4E4(v10);
    goto LABEL_30;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_10005D4E4(v12);
    if (qword_1006AEBE0 == -1)
    {
LABEL_8:
      v23 = type metadata accessor for Logger();
      sub_100005B14(v23, qword_1006D4630);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v24, v25))
      {
LABEL_17:

        return;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "FMPersonDetailCardViewController: ignore current selection";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);

      goto LABEL_17;
    }

LABEL_33:
    swift_once();
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 8)
  {
    goto LABEL_24;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100005B14(v29, qword_1006D4630);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "FMDeviceDetailCardViewController: ignore current selection", v32, 2u);
  }

LABEL_30:
  sub_10005D4E4(v12);
}

void sub_100081DC0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FMSelectedSection();
  v6 = __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  sub_100062074(a2, &v24 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 11)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 8)
        {
LABEL_11:
          sub_10024D71C();
          goto LABEL_12;
        }

        v13 = *(*&v2[OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_mediator] + 56);
        v14 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
        swift_beginAccess();
        sub_100062074(v13 + v14, v8);
        objc_allocWithZone(type metadata accessor for FMUTCardViewController());

        v16 = v8;
        v17 = v2;
        v18 = sub_1003E4FF4(v15, v16);

        [v17 presentCard:v18 completion:0];
      }

LABEL_12:
      sub_10005D4E4(v10);
      return;
    }

    v19 = sub_10007EBC0(&qword_1006BEEE0);
    sub_10008228C(&v10[*(v19 + 48)]);
    v20 = type metadata accessor for FMIPDevice();
    (*(*(v20 - 8) + 8))(v10, v20);
  }

  else
  {
    if (EnumCaseMultiPayload < 16)
    {
LABEL_3:
      sub_100062074(a2, v8);
      v12 = OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_returnSelection;
      swift_beginAccess();
      sub_100058438(v8, &v2[v12]);
      swift_endAccess();
      sub_10024D71C();
      return;
    }

    if (EnumCaseMultiPayload != 16)
    {
      if (EnumCaseMultiPayload == 19)
      {
        return;
      }

      if (EnumCaseMultiPayload == 17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    v21 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
    swift_beginAccess();
    sub_100062074(a1 + v21, v8);

    v23 = sub_1001AB900(v22, v8, 0);

    sub_10005D4E4(v8);
    [v2 presentViewController:v23 animated:1 completion:0];
  }
}

uint64_t sub_1000820A8()
{

  sub_10005D4E4(v0 + OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_returnSelection);
}

id sub_1000820F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceDetailCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMDeviceDetailCardViewController()
{
  result = qword_1006AF568;
  if (!qword_1006AF568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000821E0()
{
  result = type metadata accessor for FMSelectedSection();
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

uint64_t sub_10008228C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B07D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100082540()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1000825B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000825CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100082614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100082674()
{
  v9 = *(v0 + 16);

  v1._countAndFlagsBits = 45;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + 32));
  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  if (*(v0 + 49))
  {
    v5._countAndFlagsBits = 0x2D6B726164;
    v5._object = 0xE500000000000000;
    String.append(_:)(v5);
  }

  v6._countAndFlagsBits = 12662;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 1735290926;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  return v9;
}

uint64_t sub_100082790()
{
  BYTE8(v9) = 0;
  _StringGuts.grow(_:)(53);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._object = 0x80000001005520E0;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x69746E656469203ALL;
  v3._object = 0xEE00203A72656966;
  String.append(_:)(v3);
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 0x203A696A6F6D6520;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 16));
  v5._countAndFlagsBits = 0x6973726556736F20;
  v5._object = 0xEC000000203A6E6FLL;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + 32));
  v6._countAndFlagsBits = 9071406774580000;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  *&v9 = *(v0 + 48);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return *(&v9 + 1);
}

void sub_1000828F8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_100082C58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_100082970(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_100082A88(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_100082C58()
{
  if (!qword_1006AF628)
  {
    v0 = sub_100082CA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1006AF628);
    }
  }
}

unint64_t sub_100082CA0()
{
  result = qword_1006AF630;
  if (!qword_1006AF630)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1006AF630);
  }

  return result;
}

char *sub_100082D04()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for FMLocationSettingsView()) init];
  v3 = OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsContainerView;
  *(v1 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsBackgroundView;
  v5 = type metadata accessor for FMPlatterBackgroundView();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v40.receiver = v6;
  v40.super_class = v5;
  v7 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettings;
  *(v1 + v8) = [objc_allocWithZone(type metadata accessor for FMStewieSettingsView()) init];
  v9 = OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsContainerView;
  *(v1 + v9) = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsBackgroundView;
  v11 = objc_allocWithZone(v5);
  v11[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v39.receiver = v11;
  v39.super_class = v5;
  v12 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v10) = v12;
  v13 = OBJC_IVAR____TtC6FindMy18FMMeViewController_helpFriendView;
  *(v1 + v13) = [objc_allocWithZone(type metadata accessor for FMHelpFriendView()) init];
  v14 = OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView;
  *(v1 + v14) = [objc_allocWithZone(UIStackView) init];
  v15 = OBJC_IVAR____TtC6FindMy18FMMeViewController_coarseLabel;
  *(v1 + v15) = [objc_allocWithZone(UILabel) init];
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_peopleSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_deviceSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_conditionsSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isLocationSharingOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowFriendsRequestOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowLocationAlertsOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isClearTagEnabledOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_currentLimitedPrecision) = 0;
  v16 = v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress;
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = sub_100174A74(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_cancellables) = v17;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = objc_allocWithZone(type metadata accessor for FMMeNotificationView());

  v20 = sub_1002E5C5C(v19);

  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_notificationView) = v20;
  type metadata accessor for FMStewieViewModel();
  swift_allocObject();

  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieViewModel) = sub_100171218(v21);
  *(&v42 + 1) = &type metadata for SolariumFeatureFlag;
  *&v43 = sub_10000BD04();
  LOBYTE(v20) = isFeatureEnabled(_:)();
  sub_100006060(&v41);
  __asm { FMOV            V1.2D, #4.0 }

  v41 = xmmword_100552160;
  v42 = _Q1;
  v43 = xmmword_100552170;
  v44 = xmmword_100552180;
  v45 = xmmword_100552190;
  v46 = xmmword_1005521A0;
  v47 = xmmword_1005521B0;
  v48 = xmmword_1005521C0;
  v49 = xmmword_1005521D0;
  v50 = xmmword_1005521E0;
  v51 = 0x4030000000000000;
  v52 = 0x403A000000000000;
  v53 = 0;
  __asm { FMOV            V0.2D, #16.0 }

  v54 = _Q0;
  v55 = 0x4046000000000000;
  v56 = v20 & 1;

  v29 = sub_100278C9C(v28, &v41);
  v30 = qword_1006AEBE0;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100005B14(v32, qword_1006D4630);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v31;
    *v36 = v31;
    v37 = v31;
    _os_log_impl(&_mh_execute_header, v33, v34, "FMMeViewController<%@>: init", v35, 0xCu);
    sub_100012DF0(v36, &unk_1006AF760);
  }

  return v31;
}

uint64_t sub_100083238()
{

  sub_10008ECE4(*(v0 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress), *(v0 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 8), *(v0 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 16), *(v0 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 24));

  v1 = v0 + OBJC_IVAR____TtC6FindMy18FMMeViewController_delegate;

  return sub_10005CD20(v1);
}

id sub_100083374()
{
  ObjectType = swift_getObjectType();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMMeViewController<%@>: deinit", v6, 0xCu);
    sub_100012DF0(v7, &unk_1006AF760);
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t sub_100083648(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10007EBC0(&qword_1006AF9A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1);
  v9 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v10 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 48);
  type metadata accessor for FMPeopleSubscription();
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v11 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100623CC0;
  swift_unknownObjectWeakAssign();
  v12 = *(v10 + 32);

  os_unfair_lock_lock((v12 + 24));
  sub_10000E7C0((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));

  *&v2[OBJC_IVAR____TtC6FindMy18FMMeViewController_peopleSubscription] = v11;

  v13 = *(*&v2[v9] + 24);
  type metadata accessor for FMDevicesSubscription();
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v14 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100623C20;
  swift_unknownObjectWeakAssign();
  v15 = *(v13 + 16);

  os_unfair_lock_lock((v15 + 24));
  sub_10000E7C0((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));

  *&v2[OBJC_IVAR____TtC6FindMy18FMMeViewController_deviceSubscription] = v14;

  v16 = *(*&v2[v9] + 16);
  v17 = sub_1003CC8EC(v2, v16);

  *&v2[OBJC_IVAR____TtC6FindMy18FMMeViewController_conditionsSubscription] = v17;

  sub_100083A2C();
  swift_beginAccess();
  sub_10007EBC0(&qword_1006AF9A8);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100004098(&qword_1006AF9B0, &qword_1006AF9A0);
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return sub_10017067C();
}

id sub_100083A2C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006AF740);
  v3 = __chkstk_darwin(v2 - 8);
  v140 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v141 = &v140 - v5;
  v6 = sub_10007EBC0(&qword_1006AF748);
  __chkstk_darwin(v6 - 8);
  v144 = &v140 - v7;
  v8 = type metadata accessor for FMFMyInfo();
  v146 = *(v8 - 8);
  __chkstk_darwin(v8);
  v145 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v10 - 8);
  v12 = &v140 - v11;
  v150 = type metadata accessor for FMFPreferences();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v152 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPUnknownItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v148 = *(*(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp);

  v18 = FMIPManager.unknownItems.getter();

  v19 = *(v18 + 16);
  v151 = v1;
  v147 = v8;
  if (v19)
  {
    v143 = v12;
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v156 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v142 = v18;
    v154 = v22;
    v23 = v18 + v22;
    v24 = *(v20 + 56);
    v25 = (v20 - 8);
    v26 = (v20 + 16);
    v27 = v20;
    v28 = _swiftEmptyArrayStorage;
    v155 = v27;
    v21(v17, v18 + v22, v14);
    while (1)
    {
      if (FMIPUnknownItem.isIgnored.getter())
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_10003544C(0, *(v28 + 2) + 1, 1, v28, &unk_1006B4100, &unk_1005523A0, &type metadata accessor for FMIPUnknownItem);
        }

        v30 = *(v28 + 2);
        v29 = *(v28 + 3);
        if (v30 >= v29 >> 1)
        {
          v28 = sub_10003544C(v29 > 1, v30 + 1, 1, v28, &unk_1006B4100, &unk_1005523A0, &type metadata accessor for FMIPUnknownItem);
        }

        *(v28 + 2) = v30 + 1;
        (*v26)(&v28[v154 + v30 * v24], v17, v14);
      }

      else
      {
        (*v25)(v17, v14);
      }

      v23 += v24;
      if (!--v19)
      {
        break;
      }

      v156(v17, v23, v14);
    }

    v1 = v151;
    v12 = v143;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  v31 = *(v28 + 2);

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100005B14(v32, qword_1006D4630);
  v33 = v1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v156 = v31;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v158 = v39;
    *v37 = 138412802;
    *(v37 + 4) = v33;
    *v38 = v33;
    *(v37 + 12) = 2080;
    *&v163 = 0;
    *(&v163 + 1) = 0xE000000000000000;
    v40 = v31 == 0;
    if (v31)
    {
      v41 = 1702195828;
    }

    else
    {
      v41 = 0x65736C6166;
    }

    if (v40)
    {
      v42 = 0xE500000000000000;
    }

    else
    {
      v42 = 0xE400000000000000;
    }

    v43 = v33;
    v44._countAndFlagsBits = v41;
    v44._object = v42;
    String.append(_:)(v44);

    v45 = sub_100005B4C(v163, *(&v163 + 1), &v158);

    *(v37 + 14) = v45;
    *(v37 + 22) = 1024;
    *(v37 + 24) = v148;
    _os_log_impl(&_mh_execute_header, v34, v35, "FMMeViewController<%@>: update, show clear button: %s, isNetworkUp: %{BOOL}d", v37, 0x1Cu);
    sub_100012DF0(v38, &unk_1006AF760);

    sub_100006060(v39);
    v1 = v151;
  }

  v46 = v150;
  v47 = v149;
  v48 = v152;
  v49 = v153;
  v50 = qword_1006AECC0;
  v51 = *(*&v1[v153] + 16);
  if (v50 != -1)
  {
    v139 = v51;
    swift_once();
    v51 = v139;
  }

  if (byte_1006D4AD1 == 1)
  {
    v52 = v51[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

    if ((v52 & 1) == 0)
    {

      v53 = dispatch thunk of FMFManager.isInitialized.getter();

      if (v53)
      {
        v54 = OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView;
        [*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView) insertArrangedSubview:*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsContainerView) atIndex:0];
        [*(v33 + v54) insertArrangedSubview:*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_coarseLabel) atIndex:0];
        [*(v33 + v54) insertArrangedSubview:*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsContainerView) atIndex:0];
        goto LABEL_32;
      }
    }
  }

  else
  {
  }

  [*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsContainerView) removeFromSuperview];
  [*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_coarseLabel) removeFromSuperview];
  [*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsContainerView) removeFromSuperview];
LABEL_32:

  dispatch thunk of FMFManager.preferences.getter();

  if ((*(v47 + 48))(v12, 1, v46) == 1)
  {
    sub_100012DF0(v12, &qword_1006AF750);
LABEL_38:
    *(&v164 + 1) = &type metadata for SolariumFeatureFlag;
    v165 = sub_10000BD04();
    v61 = isFeatureEnabled(_:)();
    sub_100006060(&v163);
    if (v61)
    {
      [*(v33 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel) setHidden:1];
      [*(v33 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel) setText:0];
    }

    v62 = v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress;
    v63 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress);
    v64 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 8);
    v65 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 16);
    v66 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 24);
    *v62 = 0u;
    *(v62 + 1) = 0u;
    *(v62 + 16) = 0;
    sub_10008ECE4(v63, v64, v65, v66);
    v67 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_notificationView);
    [*&v67[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_allowFriendRequestSwitch] setHidden:1];
    [v67 removeFromSuperview];
    [*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView) addArrangedSubview:*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_helpFriendView)];
    v69 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isClearTagEnabledOverride) == 2 && v156 != 0;
    v67[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_showClearButton] = v69;
    [*&v67[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_clearIgnoredTagsButton] setHidden:!v69];
    goto LABEL_47;
  }

  (*(v47 + 32))(v48, v12, v46);

  v55 = dispatch thunk of FMFManager.devices.getter();

  if (!v55)
  {
    (*(v47 + 8))(v48, v46);
    goto LABEL_38;
  }

  v155 = v55;

  v56 = v144;
  dispatch thunk of FMFManager.myInfo.getter();
  v57 = v56;

  v58 = v146;
  v59 = v56;
  v60 = v147;
  if ((*(v146 + 48))(v59, 1, v147) == 1)
  {
    (*(v47 + 8))(v48, v46);

    sub_100012DF0(v57, &qword_1006AF748);
    goto LABEL_38;
  }

  (*(v58 + 32))(v145, v57, v60);
  v79 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isLocationSharingOnOverride);
  if (v79 == 2)
  {
    v79 = FMFPreferences.hideLocation.getter() ^ 1;
  }

  v80 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowFriendsRequestOnOverride);
  if (v80 == 2)
  {
    LOBYTE(v80) = FMFPreferences.allowFriendRequests.getter();
  }

  v81 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings);
  v82 = *(v81 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch);
  v148 = v79;
  v83 = v79 & 1;
  *(v82 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = v83;
  [*(v82 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) setOn:v83];

  v84 = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

  v154 = v81;
  *(v81 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_friendsOperationsRestricted) = v84 & 1;
  v85 = *&v1[v49];

  sub_10008D1D8(v83, v85, &v163);
  v86 = v163;
  v87 = v164;
  v88 = v165;
  LODWORD(v83) = BYTE1(v165);

  if (v83)
  {
    v89 = 256;
  }

  else
  {
    v89 = 0;
  }

  v90 = v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress;
  v91 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress);
  v92 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 8);
  v93 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 16);
  v94 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 24);
  *v90 = v86;
  v95 = v151;
  *(v90 + 1) = v87;
  *(v90 + 16) = v89 | v88;
  sub_10008ECE4(v91, v92, v93, v94);
  v96 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_notificationView);
  v97 = OBJC_IVAR____TtC6FindMy20FMMeNotificationView_allowFriendRequestSwitch;
  v98 = *(v96 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_allowFriendRequestSwitch);
  *(v98 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = v80 & 1;
  [*(v98 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) setOn:?];
  v99 = *(v96 + v97);
  v99[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled] = (v84 & 1) == 0;
  v100 = v99;
  sub_10014B454();

  v144 = OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView;
  [*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView) addArrangedSubview:v96];
  v101 = 0;
  v102 = *(*&v95[v153] + 40);
  if (*(v102 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized) == 1)
  {
    v101 = *(v102 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision) ^ 1;
  }

  [*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_coarseLabel) setHidden:v101 & 1];
  v104 = *(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isClearTagEnabledOverride) == 2 && v156 != 0;
  *(v96 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_showClearButton) = v104;
  v156 = v96;
  [*(v96 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_clearIgnoredTagsButton) setHidden:!v104];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v161[0] = v163;
  v161[1] = v164;
  v105 = 256;
  if (!BYTE1(v163))
  {
    v105 = 0;
  }

  v106 = v105 | LOBYTE(v161[0]);
  v107 = 0x10000;
  if (!BYTE2(v163))
  {
    v107 = 0;
  }

  v108 = 0x1000000;
  if (!BYTE3(v163))
  {
    v108 = 0;
  }

  v109 = v106 | v107 | v108;
  v110 = &_mh_execute_header;
  if (!BYTE4(v163))
  {
    v110 = 0;
  }

  v111 = 0x10000000000;
  if (!BYTE5(v163))
  {
    v111 = 0;
  }

  v112 = 0x1000000000000;
  if (!BYTE6(v163))
  {
    v112 = 0;
  }

  sub_100170480(v109 | v110 | v111 | v112, *(&v163 + 1), v164, *(&v164 + 1), &v163);
  sub_10008ED28(v161);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v162[0] = v158;
  v162[1] = v159;
  sub_10008ED28(v162);
  sub_10041A3F0(&v163, v162[0]);
  sub_10008ED7C(&v163);
  *(&v159 + 1) = &type metadata for SolariumFeatureFlag;
  v160 = sub_10000BD04();
  v113 = isFeatureEnabled(_:)();
  sub_100006060(&v158);
  v114 = v147;
  if (v113)
  {
    v115 = *(v33 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel);
    v116 = v152;
    if (v148)
    {
      if (*(v90 + 3) && *(v90 + 1))
      {

        v117 = String._bridgeToObjectiveC()();
      }

      else
      {
        v117 = 0;
      }

      [v115 setText:v117];

      if (*(v90 + 3) && (v127 = *(v90 + 1)) != 0)
      {
        if ((v127 & 0x2000000000000000) != 0)
        {
          v128 = HIBYTE(v127) & 0xF;
        }

        else
        {
          v128 = *v90 & 0xFFFFFFFFFFFFLL;
        }

        v129 = v128 == 0;
      }

      else
      {
        v129 = 1;
      }

      [v115 setHidden:v129];
      v121 = *(v33 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel);
      if (*(v90 + 3))
      {

        v125 = String._bridgeToObjectiveC()();
      }

      else
      {
        v125 = 0;
      }

      [v121 setText:v125];
      v126 = &selRef_labelColor;
    }

    else
    {
      [*(v33 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel) setHidden:1];
      v121 = *(v33 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel);
      v122 = [objc_opt_self() mainBundle];
      v166._object = 0x80000001005798C0;
      v123._object = 0x8000000100579890;
      v166._countAndFlagsBits = 0xD000000000000033;
      v123._countAndFlagsBits = 0xD000000000000021;
      v124._countAndFlagsBits = 0;
      v124._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v123, 0, v122, v124, v166);

      v125 = String._bridgeToObjectiveC()();

      [v121 setText:v125];
      v126 = &selRef_redColor;
    }

    v130 = [objc_opt_self() *v126];
    [v121 setTextColor:v130];

    v118 = v141;
    dispatch thunk of FMFManager.myLocation.getter();

    if (*(v90 + 3))
    {
      v132 = *v90;
      v131 = *(v90 + 1);
    }

    else
    {
      v132 = 0;
      v131 = 0;
    }

    sub_1002D912C(v116, v155, v145, v148 & 1, v118, v132, v131);
  }

  else
  {

    v118 = v140;
    dispatch thunk of FMFManager.myLocation.getter();

    v119 = *v90;
    v120 = *(v90 + 1);
    LOWORD(v160) = *(v90 + 16);
    v158 = v119;
    v159 = v120;
    sub_100007204(&v158, v157, &qword_1006AF758);
    sub_1002DA2C0(v152, v155, v145, v118, &v158);

    sub_100012DF0(&v158, &qword_1006AF758);
  }

  sub_100012DF0(v118, &qword_1006AF740);

  v133 = dispatch thunk of FMFManager.friends.getter();

  v134 = dispatch thunk of FMFManager.locationAlerts.getter();

  v135 = dispatch thunk of FMFManager.contactsController.getter();

  sub_1002E20AC(v133, v134, v135);

  [*&v144[v33] addArrangedSubview:*(v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_helpFriendView)];
  v136 = v33 + OBJC_IVAR____TtC6FindMy18FMMeViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v137 = *(v136 + 1);
    ObjectType = swift_getObjectType();
    (*(v137 + 8))(ObjectType, v137);
    swift_unknownObjectRelease();
  }

  (*(v146 + 8))(v145, v114);
  (*(v149 + 8))(v152, v150);
LABEL_47:
  v70 = *(v33 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel);
  v71 = [v70 text];
  if (v71)
  {
    v72 = v71;
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v76 = v73 & 0xFFFFFFFFFFFFLL;
    }

    v77 = v76 == 0;
  }

  else
  {
    v77 = 1;
  }

  return [v70 setHidden:v77];
}

void sub_100084ED8(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(a1 + 1);
  v22 = a1[16];
  v9 = *(a1 + 3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = v9;
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettings);

    v13 = 256;
    if ((v2 & 1) == 0)
    {
      v13 = 0;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFFFELL | v1 & 1;
    v15 = 0x10000;
    if ((v3 & 1) == 0)
    {
      v15 = 0;
    }

    v16 = 0x1000000;
    if ((v4 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = v14 | v15 | v16;
    v18 = &_mh_execute_header;
    if ((v5 & 1) == 0)
    {
      v18 = 0;
    }

    v19 = 0x10000000000;
    if ((v6 & 1) == 0)
    {
      v19 = 0;
    }

    v20 = 0x1000000000000;
    if ((v7 & 1) == 0)
    {
      v20 = 0;
    }

    sub_100170480(v17 | v18 | v19 | v20, v8, v22 & 1, v21, v23);
    sub_10041A3F0(v23, v1 & 1);
    sub_10008ED7C(v23);
  }
}

uint64_t sub_100085074(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v25 = v11;
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v30.receiver = v2;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "viewDidAppear:", a1 & 1);
  sub_10000905C(0, &qword_1006AEDC0);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v12 + 8);
  v24(v15, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  aBlock[4] = sub_10008FBA4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100624360;
  v19 = _Block_copy(aBlock);
  v20 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009E38(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v23;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v28 + 8))(v7, v5);
  (*(v26 + 8))(v10, v27);
  return (v24)(v17, v25);
}

void sub_100085470(char *a1)
{
  v2 = type metadata accessor for FMSelectionPendingAction(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006AF998);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  v9 = sub_10007EBC0(&unk_1006B8DD0);
  v10 = __chkstk_darwin(v9 - 8);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v34 - v13;
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v39 = a1;
  v37 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v17 = *(*&a1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v18 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();
  swift_storeEnumTagMultiPayload();
  v35 = *(v3 + 56);
  v36 = v3 + 56;
  v35(v16, 0, 1, v2);
  v19 = *(v6 + 56);
  sub_100007204(v17 + v18, v8, &unk_1006B8DD0);
  sub_100007204(v16, &v8[v19], &unk_1006B8DD0);
  v20 = *(v3 + 48);
  if (v20(v8, 1, v2) != 1)
  {
    sub_100007204(v8, v14, &unk_1006B8DD0);
    if (v20(&v8[v19], 1, v2) != 1)
    {
      v21 = v34;
      sub_10008FBAC(&v8[v19], v34);
      v22 = sub_100247790(v14, v21);
      sub_100029E60(v21, type metadata accessor for FMSelectionPendingAction);
      sub_100012DF0(v16, &unk_1006B8DD0);
      sub_100029E60(v14, type metadata accessor for FMSelectionPendingAction);
      sub_100012DF0(v8, &unk_1006B8DD0);
      if ((v22 & 1) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_100012DF0(v16, &unk_1006B8DD0);
    sub_100029E60(v14, type metadata accessor for FMSelectionPendingAction);
LABEL_6:
    sub_100012DF0(v8, &qword_1006AF998);
    return;
  }

  sub_100012DF0(v16, &unk_1006B8DD0);
  if (v20(&v8[v19], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_100012DF0(v8, &unk_1006B8DD0);
LABEL_8:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100005B14(v23, qword_1006D4630);
  v24 = v39;
  v25 = v39;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "FMMeViewController<%@>: showing education sheet", v28, 0xCu);
    sub_100012DF0(v29, &unk_1006AF760);
  }

  v31 = *(*&v24[v37] + 56);
  v32 = v38;
  v35(v38, 1, 1, v2);
  v33 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();

  sub_10008EC74(v32, v31 + v33);
  swift_endAccess();

  sub_10008D940(0);
}

uint64_t sub_100085A20(char a1)
{
  v2 = v1;
  v33.receiver = v2;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, "viewWillDisappear:", a1 & 1);
  v4 = OBJC_IVAR____TtC6FindMy18FMMeViewController_peopleSubscription;
  if (*&v2[OBJC_IVAR____TtC6FindMy18FMMeViewController_peopleSubscription])
  {
    v5 = *(*(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 48) + 32);

    os_unfair_lock_lock((v5 + 24));
    sub_10008FB88((v5 + 16));
    os_unfair_lock_unlock((v5 + 24));

    *&v2[v4] = 0;
  }

  v6 = OBJC_IVAR____TtC6FindMy18FMMeViewController_deviceSubscription;
  if (*&v2[OBJC_IVAR____TtC6FindMy18FMMeViewController_deviceSubscription])
  {
    v7 = *(*(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 24) + 16);

    os_unfair_lock_lock((v7 + 24));
    sub_10008FB6C((v7 + 16));
    os_unfair_lock_unlock((v7 + 24));

    *&v2[v6] = 0;
  }

  v8 = OBJC_IVAR____TtC6FindMy18FMMeViewController_conditionsSubscription;
  v9 = *&v2[OBJC_IVAR____TtC6FindMy18FMMeViewController_conditionsSubscription];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
  v11 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  v12 = v10;
  result = sub_1003CD738(&v10[v11], v9);
  v14 = *&v10[v11];
  if (v14 >> 62)
  {
    while (1)
    {
      v30 = result;
      v15 = _CocoaArrayWrapper.endIndex.getter();
      result = v30;
      if (v15 < v30)
      {
        goto LABEL_29;
      }

LABEL_8:
      sub_1003CDB08(result, v15);
      swift_endAccess();

      *&v2[v8] = 0;

LABEL_9:
      v16 = OBJC_IVAR____TtC6FindMy18FMMeViewController_cancellables;
      swift_beginAccess();
      v31 = v16;
      v17 = *&v2[v16];
      if ((v17 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for AnyCancellable();
        sub_100009E38(&qword_1006AF990, &type metadata accessor for AnyCancellable);
        result = Set.Iterator.init(_cocoa:)();
        v8 = v34;
        v12 = v35;
        v18 = v36;
        v19 = v37;
        v20 = v38;
      }

      else
      {
        v21 = -1 << *(v17 + 32);
        v12 = (v17 + 56);
        v18 = ~v21;
        v22 = -v21;
        v23 = v22 < 64 ? ~(-1 << v22) : -1;
        v20 = v23 & *(v17 + 56);
        result = swift_bridgeObjectRetain_n();
        v19 = 0;
        v8 = v17;
      }

      v24 = (v18 + 64) >> 6;
      if (v8 < 0)
      {
        break;
      }

LABEL_16:
      v25 = v19;
      v26 = v20;
      v27 = v19;
      if (v20)
      {
LABEL_20:
        v28 = (v26 - 1) & v26;
        v29 = *(*(v8 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

        if (v29)
        {
          goto LABEL_24;
        }

LABEL_26:
        sub_10000BEC8();

        *&v2[v31] = &_swiftEmptySetSingleton;
      }

      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          goto LABEL_26;
        }

        v26 = *&v12[8 * v27];
        ++v25;
        if (v26)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    while (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      v27 = v19;
      v28 = v20;
      if (!v32)
      {
        break;
      }

LABEL_24:
      AnyCancellable.cancel()();

      v19 = v27;
      v20 = v28;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_26;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 >= result)
  {
    goto LABEL_8;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_100085EA4(uint64_t a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    if (qword_1006AEBD0 != -1)
    {
      swift_once();
    }

    left = *(&xmmword_1006D4500 + 1);
    top = 0.0;
    bottom = 0.0;
    right = *(&xmmword_1006D4500 + 1);
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setLayoutMargins:{top, left, bottom, right}];
  }

  else
  {
    __break(1u);
  }
}

id sub_100086048()
{
  v1 = v0;
  sub_1002791F0();
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel) setHidden:1];
  v42 = &type metadata for SolariumFeatureFlag;
  v43 = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v41);
  v3 = 0.0;
  if ((v2 & 1) == 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel);
    v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
    v6 = sub_100039388(2);

    [v4 setFont:v6];
    v3 = 1.0;
  }

  [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryBackground) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primarySeparator) setAlpha:v3];
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v44._object = 0x8000000100579B90;
  v9._countAndFlagsBits = 0x545F4241545F454DLL;
  v9._object = 0xEC000000454C5449;
  v44._countAndFlagsBits = 0xD00000000000001ELL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v44);

  *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText) = v11;

  sub_10027D190();
  [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel) setNumberOfLines:0];
  v12 = OBJC_IVAR____TtC6FindMy18FMMeViewController_coarseLabel;
  v13 = *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_coarseLabel);
  v14 = [v7 mainBundle];
  v45._object = 0x8000000100579BD0;
  v15._object = 0x8000000100579BB0;
  v45._countAndFlagsBits = 0xD000000000000027;
  v15._countAndFlagsBits = 0xD000000000000015;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v45);

  v17 = String._bridgeToObjectiveC()();

  [v13 setText:v17];

  v18 = *(v1 + v12);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 secondaryLabelColor];
  [v20 setTextColor:v21];

  [*(v1 + v12) setNumberOfLines:0];
  v22 = *(v1 + v12);
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v24 setFont:v25];

  v26 = *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings);
  *(v26 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_delegate + 8) = &off_100623DC8;
  swift_unknownObjectWeakAssign();
  v27 = *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_notificationView);
  *(v27 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_delegate + 8) = &off_100623DA8;
  swift_unknownObjectWeakAssign();
  v28 = *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettings);
  *(v28 + OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_delegate + 8) = &off_100623BD8;
  swift_unknownObjectWeakAssign();
  v29 = OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView;
  [*(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView) setAxis:1];
  [*(v1 + v29) setSpacing:19.0];
  [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView) addSubview:*(v1 + v29)];
  v30 = [objc_opt_self() sharedInstance];
  v31 = [v30 isInternalBuild];

  if (v31)
  {
    v32 = [objc_opt_self() standardUserDefaults];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 BOOLForKey:v33];

    if (v34)
    {
      v35 = *(*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 40);
      v36 = objc_allocWithZone(type metadata accessor for FMPISDebugLocationPlatter());
      v37 = sub_100500A60(v35);
      [*(v1 + v29) addArrangedSubview:v37];
    }
  }

  [*(v1 + v29) addArrangedSubview:v27];
  [*(v1 + v29) addArrangedSubview:*(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_helpFriendView)];
  v38 = *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsContainerView);
  [v38 addSubview:*(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsBackgroundView)];
  [v38 addSubview:v26];
  v39 = *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsContainerView);
  [v39 addSubview:*(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsBackgroundView)];
  return [v39 addSubview:v28];
}

void sub_100086654()
{
  sub_10027A200();
  v1 = OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v83 = *&v0[OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsBackgroundView];
  [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
  v84 = *&v0[OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettings];
  [v84 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsBackgroundView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v4 = *(&xmmword_1006D4720 + 1);
  v5 = *&qword_1006D4798;
  sub_10007EBC0(&qword_1006AFC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005521F0;
  v7 = [*&v0[v1] topAnchor];
  v8 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryRowStackView] bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 160]];

  *(v6 + 32) = v9;
  v10 = [*&v0[v1] leadingAnchor];
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v82 = v3;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor:v13 constant:16.0];
  *(v6 + 40) = v14;
  v15 = [*&v0[v1] trailingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v17 = v16;
  v85 = objc_opt_self();
  v18 = [v17 trailingAnchor];

  v19 = [v15 constraintEqualToAnchor:v18 constant:-16.0];
  *(v6 + 48) = v19;
  v20 = [*&v0[v1] bottomAnchor];
  v21 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView] bottomAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor:v21 constant:-(v4 + v5)];

  *(v6 + 56) = v22;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v85 activateConstraints:isa];

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100552200;
  v25 = [v2 leadingAnchor];
  v26 = [v83 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v24 + 32) = v27;
  v28 = [v2 trailingAnchor];
  v29 = [v83 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v24 + 40) = v30;
  v31 = [v2 topAnchor];
  v32 = [v83 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v24 + 48) = v33;
  v34 = [v2 bottomAnchor];
  v35 = [v83 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v24 + 56) = v36;
  v37 = [v2 leadingAnchor];
  v38 = *&v0[OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsContainerView];
  v39 = [v38 leadingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];

  *(v24 + 64) = v40;
  v41 = [v2 trailingAnchor];
  v42 = [v38 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v24 + 72) = v43;
  v44 = [v2 topAnchor];
  v45 = [v38 topAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v24 + 80) = v46;
  v47 = [v2 bottomAnchor];
  v48 = [v38 bottomAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v24 + 88) = v49;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v85 activateConstraints:v50];

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100552200;
  v52 = [v84 leadingAnchor];
  v53 = [v82 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v51 + 32) = v54;
  v55 = [v84 trailingAnchor];
  v56 = [v82 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v51 + 40) = v57;
  v58 = [v84 topAnchor];
  v59 = [v82 topAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v51 + 48) = v60;
  v61 = [v84 bottomAnchor];
  v62 = [v82 bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v51 + 56) = v63;
  v64 = [v84 leadingAnchor];
  v65 = *&v0[OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsContainerView];
  v66 = [v65 leadingAnchor];
  v67 = [v64 constraintEqualToAnchor:v66];

  *(v51 + 64) = v67;
  v68 = [v84 trailingAnchor];
  v69 = [v65 trailingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v51 + 72) = v70;
  v71 = [v84 topAnchor];
  v72 = [v65 topAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  *(v51 + 80) = v73;
  v74 = [v84 bottomAnchor];
  v75 = [v65 bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v51 + 88) = v76;
  v77 = Array._bridgeToObjectiveC()().super.isa;

  [v85 activateConstraints:v77];

  v78 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsTopConstraint];
  if (v78)
  {
    v87 = &type metadata for SolariumFeatureFlag;
    v88 = sub_10000BD04();
    v79 = v78;
    v80 = isFeatureEnabled(_:)();
    sub_100006060(v86);
    v81 = 60.0;
    if (v80)
    {
      v81 = 0.0;
    }

    [v79 setConstant:v81];
  }
}

void sub_10008713C()
{
  v1 = type metadata accessor for FMFDevice();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v84 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v78 - v6;
  __chkstk_darwin(v5);
  v9 = &v78 - v8;
  v10 = sub_10007EBC0(&qword_1006AF748);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v78 - v14;
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    v17 = sub_100005B14(v16, qword_1006D4630);
    v18 = v0;
    v89 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v90 = v18;

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = v90;
      v87 = v9;
      v23 = v1;
      v24 = v21;
      v25 = v13;
      v26 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMMeViewController<%@>: change me device button pressed", v24, 0xCu);
      sub_100012DF0(v26, &unk_1006AF760);
      v13 = v25;

      v1 = v23;
      v9 = v87;
    }

    v28 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;

    v29 = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

    if (v29)
    {
      break;
    }

    dispatch thunk of FMFManager.myInfo.getter();

    v36 = type metadata accessor for FMFMyInfo();
    v37 = *(v36 - 8);
    v81 = *(v37 + 48);
    v82 = v37 + 48;
    v38 = v81(v15, 1, v36);
    v83 = v37;
    if (v38 == 1)
    {
      sub_100012DF0(v15, &qword_1006AF748);
      goto LABEL_23;
    }

    v87 = v9;
    v88 = v1;
    v1 = FMFMyInfo.deviceId.getter();
    v39 = v36;
    v41 = v40;
    v42 = *(v37 + 8);
    v79 = v39;
    v42(v15, v39);
    v80 = v28;
    v0 = *((*(&v90->isa + v28))[6] + 40);

    v15 = dispatch thunk of FMFManager.devices.getter();

    if (!v15)
    {

LABEL_22:
      v36 = v79;
LABEL_23:

      dispatch thunk of FMFManager.myInfo.getter();

      v50 = v81(v13, 1, v36);
      v51 = v83;
      if (v50 == 1)
      {
        sub_100012DF0(v13, &qword_1006AF748);
        v52 = 0;
        v53 = 0;
      }

      else
      {
        v52 = FMFMyInfo.deviceId.getter();
        v54 = v36;
        v53 = v55;
        (*(v51 + 8))(v13, v54);
      }

      v56 = v90;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v92 = v53;
        v93 = v61;
        *v59 = 138412546;
        *(v59 + 4) = v56;
        *v60 = v56;
        *(v59 + 12) = 2080;
        v91 = v52;
        v62 = v56;
        sub_10007EBC0(&qword_1006AF8F0);
        v63 = String.init<A>(describing:)();
        v65 = sub_100005B4C(v63, v64, &v93);

        *(v59 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v57, v58, "FMMeViewController<%@>: Cannot change me device, can't find device %s", v59, 0x16u);
        sub_100012DF0(v60, &unk_1006AF760);

        sub_100006060(v61);
      }

      else
      {
      }

      return;
    }

    v78 = v13;
    v9 = v88;
    if (!*(v15 + 2))
    {
LABEL_20:

      v13 = v78;
      goto LABEL_22;
    }

    v43 = *(v15 + 2);
    v13 = 0;
    v85 = (v2 + 8);
    v86 = v2 + 16;
    while (v13 < *(v15 + 2))
    {
      v44 = &v15[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13];
      v45 = v2;
      v46 = *(v2 + 16);
      v46(v7, v44, v9);
      v47 = FMFDevice.identifier.getter();
      v0 = v48;
      if (v47 == v1 && v48 == v41)
      {

LABEL_32:
        v66 = v45 + 32;
        v67 = v87;
        (*(v45 + 32))(v87, v7, v9);
        v46(v84, v67, v9);
        type metadata accessor for FMFUpdateMeDeviceAction();
        swift_allocObject();
        v68 = FMFUpdateMeDeviceAction.init(meDevice:)();
        v69 = v90;
        v70 = *(&v90->isa + OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings);
        [*(v70 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceSpinner) startAnimating];
        v71 = *(v70 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow);
        *(v71 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable) = 0;
        v72 = *(v71 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel);
        v73 = objc_opt_self();
        v74 = v72;
        v75 = [v73 secondaryLabelColor];
        [v74 setTextColor:v75];

        v76 = swift_allocObject();
        *(v76 + 16) = v69;
        v77 = v69;

        sub_1000FB600(v68, sub_10008FAE8, v76);

        (*(v66 - 24))(v67, v9);
        return;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v49)
      {

        v9 = v88;
        goto LABEL_32;
      }

      ++v13;
      v9 = v88;
      (*v85)(v7, v88);
      v2 = v45;
      if (v43 == v13)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  v30 = v90;
  v90 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v90, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v30;
    *v33 = v30;
    v34 = v30;
    _os_log_impl(&_mh_execute_header, v90, v31, "FMMeViewController<%@>: Cannot change me device, friends operations restricted", v32, 0xCu);
    sub_100012DF0(v33, &unk_1006AF760);
  }

  v35 = v90;
}