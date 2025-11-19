uint64_t *sub_28EC0()
{
  if (qword_7C9A0 != -1)
  {
    swift_once();
  }

  return &qword_7DA50;
}

uint64_t sub_28F38(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a2;
  v6 = *a3;

  return v5;
}

uint64_t sub_28FD0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a5;
  *a4 = a1;
  *a5 = a2;
}

uint64_t (*sub_2904C())()
{
  if (qword_7C9A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_290D4()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_7DA60 = result;
  return result;
}

char *sub_29108()
{
  if (qword_7C9A8 != -1)
  {
    swift_once();
  }

  return &byte_7DA60;
}

uint64_t sub_29158()
{
  if (qword_7C9A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_7DA60;
}

uint64_t sub_291CC(char a1)
{
  if (qword_7C9A8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_7DA60 = a1 & 1;
  return result;
}

uint64_t (*sub_29248())()
{
  if (qword_7C9A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_292D0@<X0>(void *a1@<X8>)
{
  if (qword_7C990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_7DA38;
  *a1 = qword_7DA38;

  return v2;
}

uint64_t sub_293AC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = *a4;
  v8 = *a5;

  return v7;
}

uint64_t sub_29428()
{
  sub_2A84C();
  sub_4B88C();
  return v1;
}

uint64_t sub_29464()
{
  sub_2A84C();
  sub_4A94C();
  return v1;
}

void (*sub_2951C(void *a1, uint64_t a2, uint64_t a3))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  sub_2A84C();
  sub_4A94C();
  return sub_295C4;
}

void sub_295C4(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = v3;
    *v2 = v3;
    sub_2A84C();
    sub_4A95C();
  }

  else
  {
    *v2 = v3;
    sub_2A84C();
    sub_4A95C();
  }

  free(v2);
}

uint64_t sub_29688()
{
  swift_beginAccess();
  v0 = qword_7DA68;
  v1 = qword_7DA68;
  return v0;
}

void sub_296D4(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_7DA68;
  qword_7DA68 = a1;
}

id sub_2977C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_7DA68;
  *a1 = qword_7DA68;

  return v2;
}

uint64_t sub_297D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2B210();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_29848()
{
  swift_beginAccess();
  v0 = qword_7DA70;
  v1 = qword_7DA70;
  return v0;
}

void sub_29894(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_7DA70;
  qword_7DA70 = a1;
}

id sub_2993C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_7DA70;
  *a1 = qword_7DA70;

  return v2;
}

uint64_t sub_29998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2B11C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_299FC()
{
  sub_2A84C();
  sub_4B88C();
  return v1;
}

uint64_t sub_29A44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_2A8A0(a1, *(a1 + 24));
  v4 = a2;
  sub_2A84C();
  return sub_4A95C();
}

uint64_t sub_29AB0@<X0>(void *a1@<X8>)
{
  sub_2A84C();
  result = sub_4B88C();
  *a1 = v3;
  return result;
}

uint64_t sub_29B00(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = *(a1 + 32);
  sub_2A8A0(a1, *(a1 + 24));
  v4 = v2;
  return sub_294C0();
}

uint64_t sub_29BC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(CRHomeScreenPersistenceManager);
  v3 = sub_4B5EC();
  isa = sub_4A63C().super.isa;
  v5 = [v2 initWithVehicleId:v3 certificateSerial:isa];

  a1[3] = type metadata accessor for CRHomeScreenLayoutView();
  a1[4] = sub_2A298(&qword_7AC30, type metadata accessor for CRHomeScreenLayoutView);
  v6 = sub_2B2C0(a1);
  return sub_288FC(v5, v6);
}

uint64_t sub_29C9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_4ACDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_14628(&qword_7B310, &qword_52AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_2BC3C(v2, &v17 - v11, &qword_7B310, &qword_52AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_4AA3C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_4B7FC();
    v16 = sub_4AFDC();
    sub_4A90C();

    sub_4ACCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_29E9C()
{
  v1 = *(type metadata accessor for CRHomeScreenLayoutView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2532C(v2);
}

unint64_t sub_29EFC()
{
  result = qword_7B388;
  if (!qword_7B388)
  {
    sub_1D648(&qword_7B328, &qword_52B48);
    sub_29F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B388);
  }

  return result;
}

unint64_t sub_29F88()
{
  result = qword_7B390;
  if (!qword_7B390)
  {
    sub_1D648(&qword_7B370, &qword_52BC8);
    sub_2A040();
    sub_2C958(&qword_7B3D8, &qword_7B378, &unk_52BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B390);
  }

  return result;
}

unint64_t sub_2A040()
{
  result = qword_7B398;
  if (!qword_7B398)
  {
    sub_1D648(&qword_7B368, &qword_52B90);
    sub_2A0F8();
    sub_2C958(&qword_7B3C8, &qword_7B3D0, &qword_52BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B398);
  }

  return result;
}

unint64_t sub_2A0F8()
{
  result = qword_7B3A0;
  if (!qword_7B3A0)
  {
    sub_1D648(&qword_7B360, &qword_52B88);
    sub_2A1B0();
    sub_2C958(&qword_7B3C8, &qword_7B3D0, &qword_52BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B3A0);
  }

  return result;
}

unint64_t sub_2A1B0()
{
  result = qword_7B3A8;
  if (!qword_7B3A8)
  {
    sub_1D648(&qword_7B350, &qword_52B78);
    sub_2C958(&qword_7B3B0, &qword_7B3B8, &qword_52BE0);
    sub_2A298(&qword_7B3C0, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B3A8);
  }

  return result;
}

uint64_t sub_2A298(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2A2E8()
{
  result = qword_7B400;
  if (!qword_7B400)
  {
    sub_1D648(&qword_7B3F0, &unk_533A0);
    sub_2C958(&qword_7B408, &qword_7B410, &qword_533B0);
    sub_2C958(&qword_7B418, &qword_7B420, &qword_52C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B400);
  }

  return result;
}

unint64_t sub_2A3CC()
{
  result = qword_7B428;
  if (!qword_7B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B428);
  }

  return result;
}

unint64_t sub_2A428()
{
  result = qword_7B440;
  if (!qword_7B440)
  {
    sub_1D648(&qword_7B438, &qword_52C18);
    sub_2A4E0();
    sub_2C958(&qword_7B4A8, &qword_7B4B0, &qword_52C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B440);
  }

  return result;
}

unint64_t sub_2A4E0()
{
  result = qword_7B448;
  if (!qword_7B448)
  {
    sub_1D648(&qword_7B450, &qword_52C20);
    sub_2A598();
    sub_2C958(&qword_7B498, &qword_7B4A0, &qword_52C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B448);
  }

  return result;
}

unint64_t sub_2A598()
{
  result = qword_7B458;
  if (!qword_7B458)
  {
    sub_1D648(&qword_7B460, &qword_52C28);
    sub_2A61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B458);
  }

  return result;
}

unint64_t sub_2A61C()
{
  result = qword_7B468;
  if (!qword_7B468)
  {
    sub_1D648(&qword_7B470, &qword_52C30);
    sub_2C958(&qword_7B478, &qword_7B480, &qword_52C38);
    sub_2C958(&qword_7B488, &qword_7B490, &qword_52C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B468);
  }

  return result;
}

unint64_t sub_2A708()
{
  result = qword_7B4C0;
  if (!qword_7B4C0)
  {
    sub_1D648(&qword_7B4B8, &qword_52C58);
    sub_1D648(&qword_7B4C8, &qword_52C60);
    sub_4AB6C();
    sub_2C958(&qword_7B4D0, &qword_7B4C8, &qword_52C60);
    sub_2A298(&qword_7B4D8, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B4C0);
  }

  return result;
}

unint64_t sub_2A84C()
{
  result = qword_7B4E0;
  if (!qword_7B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B4E0);
  }

  return result;
}

uint64_t sub_2A8A0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_2A910()
{
  result = qword_7B4E8;
  if (!qword_7B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B4E8);
  }

  return result;
}

uint64_t sub_2A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14628(&qword_7B4F0, qword_52E00);
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

uint64_t sub_2AA54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_14628(&qword_7B4F0, qword_52E00);
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

void sub_2AB18()
{
  sub_2ACAC();
  if (v0 <= 0x3F)
  {
    sub_2AD68(319, &qword_7B558, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_2AD04(319, &qword_7B560, &qword_7B568, "ָ", &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_16F40(319, &qword_7B570, &off_6D0A8);
        if (v3 <= 0x3F)
        {
          sub_2AD04(319, &qword_7B578, &qword_7B320, &qword_52B40, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_2AD68(319, &unk_7B580, &type metadata for Bool, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2ACAC()
{
  if (!qword_7B550)
  {
    sub_4AA3C();
    v0 = sub_4AA5C();
    if (!v1)
    {
      atomic_store(v0, &qword_7B550);
    }
  }
}

void sub_2AD04(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D648(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2AD68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2ADF8()
{
  sub_1D648(&qword_7B338, &qword_52B58);
  sub_1D648(&qword_7B330, &qword_52B50);
  sub_1D648(&qword_7B3E8, &unk_52BF0);
  sub_1D648(&qword_7B328, &qword_52B48);
  sub_4AA3C();
  sub_29EFC();
  sub_2A298(&qword_7B3E0, &type metadata accessor for ColorScheme);
  swift_getOpaqueTypeConformance2();
  sub_1D648(&qword_7B3F0, &unk_533A0);
  sub_1D648(&qword_7B3F8, &unk_52C00);
  sub_2A2E8();
  sub_2A3CC();
  sub_2C958(&qword_7B430, &qword_7B3F8, &unk_52C00);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2B08C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D648(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2B11C()
{
  result = qword_7B5E8;
  if (!qword_7B5E8)
  {
    sub_1D648(&qword_7B5F0, &unk_52F38);
    sub_2B1CC(&qword_7B5F8, &qword_7B600, BSColor_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B5E8);
  }

  return result;
}

uint64_t sub_2B1CC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_16F40(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2B210()
{
  result = qword_7B608;
  if (!qword_7B608)
  {
    sub_1D648(&qword_7B568, "ָ");
    sub_2B1CC(&qword_7B610, &qword_7B618, SBSHomeScreenIconStyleConfiguration_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B608);
  }

  return result;
}

uint64_t *sub_2B2C0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2B324@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CRHomeScreenLayoutView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_275F4(a1, v6, a2);
}

uint64_t sub_2B3A4()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_14628(&qword_7B310, &qword_52AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AA3C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_24780(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  sub_2478C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v9 = (v5 + v1[8]);
  v10 = *v9;

  v11 = v9[1];

  v12 = (v5 + v1[9]);
  v13 = *v12;

  v14 = v12[1];

  v15 = *(v5 + v1[10] + 8);

  v16 = *(v5 + v1[11] + 8);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_2B550()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v31 = *(v0 + ((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = (v0 + v2 + *(v1 + 36));
  v26 = *v4;
  v27 = v1;
  v25 = v4[1];
  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  v28 = v3;
  if (v32 >> 62)
  {
LABEL_24:
    v29 = v32 & 0xFFFFFFFFFFFFFF8;
    v30 = sub_4BA5C();
  }

  else
  {
    v29 = v32 & 0xFFFFFFFFFFFFFF8;
    v30 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v30 == v5)
    {
    }

    if ((v32 & 0xC000000000000001) != 0)
    {
      v6 = sub_4B9AC();
    }

    else
    {
      if (v5 >= *(v29 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v6 = *(v32 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = [v6 bundleIdentifier];
    v9 = sub_4B5FC();
    v11 = v10;

    v12 = [v31 bundleIdentifier];
    v13 = sub_4B5FC();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
      break;
    }

    v17 = sub_4BA8C();

    if (v17)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_23;
    }
  }

LABEL_19:

  sub_4B31C();

  sub_4B32C();

  v20 = (v28 + *(v27 + 32));
  v21 = *v20;
  v22 = v20[1];

  sub_4B31C();
  v23 = v31;
  sub_4B67C();
  if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v24 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    sub_4B6BC();
  }

  sub_4B6CC();
  sub_4B32C();

  return sub_24FA0();
}

uint64_t sub_2B8CC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = sub_4AD0C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_14628(&qword_7B650, &qword_52F70);
  return sub_27990(v4, v3, a1 + *(v5 + 44));
}

unint64_t sub_2B930(uint64_t a1)
{
  v2 = v1;
  v4 = sub_4B95C(*(v2 + 40));

  return sub_2B974(a1, v4);
}

unint64_t sub_2B974(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_2CDAC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_4B96C();
      sub_2CD58(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2BA3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_4AC8C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2BA94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4AC5C();
  *a1 = result;
  return result;
}

uint64_t sub_2BAC0(uint64_t *a1)
{
  v1 = *a1;

  return sub_4AC6C();
}

uint64_t sub_2BB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_14628(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v16 - v13;
  sub_2BC3C(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_2BBE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4AC2C();
  *a1 = result;
  return result;
}

uint64_t sub_2BC10(uint64_t *a1)
{
  v1 = *a1;

  return sub_4AC3C();
}

uint64_t sub_2BC3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_14628(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2BCA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2BCB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2BCC4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

char *sub_2BCD0(char *a1, int64_t a2, char a3)
{
  result = sub_2BCF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2BCF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_14628(&qword_7B6F8, &qword_54180);
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

uint64_t sub_2BDFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_4BA5C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_4BA5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2C958(&qword_7B738, &qword_7B320, &qword_52B40);
          for (i = 0; i != v6; ++i)
          {
            sub_14628(&qword_7B320, &qword_52B40);
            v9 = sub_222D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_16F40(0, &qword_7B638, off_6D0A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2BFB0()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v30 = *(v2 + v1[7]);
  v3 = (v2 + v1[8]);
  v32 = *v3;
  v34 = v3[1];
  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  if (v31 >> 62)
  {
    v4 = sub_4BA5C();
  }

  else
  {
    v4 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {
    sub_2BCD0(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v29 = v2;
    v5 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v6 = sub_4B9AC();
      }

      else
      {
        v6 = *(v31 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v7 bundleIdentifier];
      v9 = sub_4B5FC();
      v11 = v10;

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_2BCD0((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v9;
      v14[5] = v11;
    }

    while (v4 != v5);

    v2 = v29;
  }

  else
  {
  }

  v15.super.isa = sub_4B68C().super.isa;

  v16 = (v2 + v1[9]);
  v33 = *v16;
  v35 = v16[1];
  sub_4B31C();
  if (!(v31 >> 62))
  {
    v17 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    if (v17)
    {
      goto LABEL_16;
    }

LABEL_27:

    isa = sub_4B68C().super.isa;

    [v30 setIconState:v15.super.isa hiddenIcons:isa];

    return;
  }

  v17 = sub_4BA5C();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_16:
  sub_2BCD0(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v19 = sub_4B9AC();
      }

      else
      {
        v19 = *(v31 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v20 bundleIdentifier];
      v22 = sub_4B5FC();
      v24 = v23;

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      if (v26 >= v25 >> 1)
      {
        sub_2BCD0((v25 > 1), v26 + 1, 1);
      }

      ++v18;
      _swiftEmptyArrayStorage[2] = v26 + 1;
      v27 = &_swiftEmptyArrayStorage[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
    }

    while (v17 != v18);
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_2C340(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2C358@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for CRHomeScreenLayoutView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *a1;
  *a2 = sub_4AD0C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = sub_14628(&qword_7B748, &qword_530D0);
  sub_2645C(v6, (a2 + *(v7 + 44)));
  v8 = [v6 isEditable] ^ 1;
  result = sub_14628(&qword_7B470, &qword_52C30);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_2C424()
{
  v1 = (type metadata accessor for CRHomeScreenLayoutView() - 8);
  v13 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v2 = v13;
  v11 = sub_28180(sub_2C880, v12);
  v3 = (v2 + v1[10]);
  v4 = v3[1];
  v17 = *v3;
  v5 = v17;
  v18 = v4;

  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  sub_14628(&qword_7B320, &qword_52B40);
  sub_2C958(&qword_7B720, &qword_7B320, &qword_52B40);
  sub_2C958(&qword_7B728, &qword_7B320, &qword_52B40);
  sub_4B7AC();
  v15 = v5;
  v16 = v4;
  v14 = v19;
  sub_4B32C();

  v6 = (v2 + v1[11]);
  v8 = v6[1];
  v17 = *v6;
  v7 = v17;
  v18 = v8;
  sub_4B31C();
  sub_283EC(v11);
  v17 = v15;
  swift_getKeyPath();
  sub_2C958(&qword_7B730, &qword_7B320, &qword_52B40);
  v9 = sub_4B64C();

  v17 = v7;
  v18 = v8;
  v19 = v9;
  sub_4B32C();
  return sub_24FA0();
}

uint64_t sub_2C694()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2C6CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2C6F4()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 32));
  v4 = *v2;
  v3 = v2[1];

  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  sub_14628(&qword_7B320, &qword_52B40);
  sub_2C958(&qword_7B720, &qword_7B320, &qword_52B40);
  sub_4B5CC();
  sub_4B32C();

  return sub_24FA0();
}

uint64_t sub_2C854(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2);
}

uint64_t sub_2C880@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = (v4 + *(type metadata accessor for CRHomeScreenLayoutView() + 32));
  v11 = *v6;
  v12 = v6[1];
  sub_14628(&qword_7B358, &qword_52B80);
  result = sub_4B31C();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v8 = sub_4B9AC();
    goto LABEL_5;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    v8 = *(v10 + 8 * v5 + 32);
LABEL_5:
    v9 = v8;

    *a2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2C958(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D648(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2C9A0()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView();
  v2 = v0 + *(v1 + 44) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *v2;
  v5 = *(v2 + 8);
  sub_14628(&qword_7B760, &qword_533F0);
  return sub_4B32C();
}

uint64_t sub_2CA74()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_14628(&qword_7B310, &qword_52AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AA3C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_24780(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  sub_2478C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v8 = (v5 + v1[8]);
  v9 = *v8;

  v10 = v8[1];

  v11 = (v5 + v1[9]);
  v12 = *v11;

  v13 = v11[1];

  v14 = *(v5 + v1[10] + 8);

  v15 = *(v5 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2CC14()
{
  v1 = *(type metadata accessor for CRHomeScreenLayoutView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25EDC(v2);
}

uint64_t sub_2CC78()
{
  v2 = *(type metadata accessor for CRHomeScreenLayoutView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DB38;

  return sub_28660(v4, v5, v6, v0 + v3);
}

uint64_t sub_2CE08()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  sub_14628(&qword_7B310, &qword_52AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_4AA3C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  sub_24780(*(v6 + v1[5]), *(v6 + v1[5] + 8));
  sub_2478C(*(v6 + v1[6]), *(v6 + v1[6] + 8));

  v9 = (v6 + v1[8]);
  v10 = *v9;

  v11 = v9[1];

  v12 = (v6 + v1[9]);
  v13 = *v12;

  v14 = v12[1];

  v15 = *(v6 + v1[10] + 8);

  v16 = *(v6 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2CFB0()
{
  v1 = *(type metadata accessor for CRHomeScreenLayoutView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1E76C;

  return sub_254E4();
}

uint64_t sub_2D0C0()
{
  v1 = [v0 environment];
  v2 = sub_4B5AC();

  if (*(v2 + 16) && (v3 = sub_2D1BC(0xD00000000000001ALL, 0x800000000005B740), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    if (v7 == 49 && v6 == 0xE100000000000000)
    {

      return 1;
    }

    else
    {
      v9 = sub_4BA8C();

      return v9 & 1;
    }
  }

  else
  {

    return 0;
  }
}

unint64_t sub_2D1BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_4BACC();
  sub_4B61C();
  v6 = sub_4BAEC();

  return sub_2D234(a1, a2, v6);
}

unint64_t sub_2D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_4BA8C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2D2EC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_14628(&qword_7B790, &qword_531D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2D370(uint64_t a1)
{
  v2 = sub_4AB1C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_4AC1C();
}

uint64_t sub_2D438()
{
  type metadata accessor for CRWidgetSettingsModel();
  sub_3CE84(&qword_7ACD0, type metadata accessor for CRWidgetSettingsModel);
  return sub_4AA6C();
}

uint64_t sub_2D4F0()
{
  v0 = *(type metadata accessor for CRWidgetStackView(0) + 24);
  sub_14628(&qword_7B798, &qword_531D8);
  sub_4B46C();
  return v2;
}

uint64_t sub_2D564()
{
  v0 = *(type metadata accessor for CRWidgetStackView(0) + 24);
  sub_14628(&qword_7B798, &qword_531D8);
  return sub_4B47C();
}

uint64_t (*sub_2D5BC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CRWidgetStackView(0) + 24);
  sub_14628(&qword_7B798, &qword_531D8);
  *(v3 + 32) = sub_4B45C();
  return sub_2D658;
}

uint64_t sub_2D65C()
{
  v0 = *(type metadata accessor for CRWidgetStackView(0) + 24);
  sub_14628(&qword_7B798, &qword_531D8);
  return sub_4B48C();
}

uint64_t sub_2D6B0()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackView(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2D6F0()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackView(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_2D778()
{
  result = qword_7B7A8;
  if (!qword_7B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B7A8);
  }

  return result;
}

uint64_t sub_2D7D4()
{
  v20 = sub_4ACDC();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_14628(&qword_7B790, &qword_531D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_4AB1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0;
  sub_2BC3C(v0, v8, &qword_7B790, &qword_531D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v14 = *v8;
    sub_4B7FC();
    v15 = sub_4AFDC();
    sub_4A90C();

    sub_4ACCC();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  result = (*(v10 + 88))(v13, v9);
  if (result == enum case for DynamicTypeSize.xSmall(_:) || result == enum case for DynamicTypeSize.small(_:) || result == enum case for DynamicTypeSize.medium(_:) || result == enum case for DynamicTypeSize.large(_:) || result == enum case for DynamicTypeSize.xLarge(_:) || result == enum case for DynamicTypeSize.xxLarge(_:) || result == enum case for DynamicTypeSize.xxxLarge(_:))
  {
    v17 = *(type metadata accessor for CRWidgetStackView(0) + 40);
    sub_14628(&qword_7B868, &qword_53280);
    return sub_4AA9C();
  }

  else if (result != enum case for DynamicTypeSize.accessibility1(_:) && result != enum case for DynamicTypeSize.accessibility2(_:) && result != enum case for DynamicTypeSize.accessibility3(_:) && result != enum case for DynamicTypeSize.accessibility4(_:) && result != enum case for DynamicTypeSize.accessibility5(_:))
  {
    v18 = *(type metadata accessor for CRWidgetStackView(0) + 40);
    sub_14628(&qword_7B868, &qword_53280);
    sub_4AA9C();
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_2DC0C()
{
  sub_14628(&qword_7B7B0, &qword_531E8);
  sub_2C958(&qword_7B7B8, &qword_7B7B0, &qword_531E8);
  return sub_4B43C();
}

uint64_t sub_2DCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v103 = sub_14628(&qword_7B870, &qword_53288);
  v3 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v104 = (v85 - v4);
  v5 = sub_14628(&qword_7BDE8, &qword_53A20);
  v107 = *(v5 - 8);
  v108 = v5;
  v6 = *(v107 + 64);
  v7 = __chkstk_darwin(v5);
  v106 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v105 = v85 - v9;
  v10 = sub_14628(&qword_7BDF0, &qword_53A28);
  v99 = *(v10 - 8);
  v100 = v10;
  v11 = *(v99 + 64);
  __chkstk_darwin(v10);
  v89 = v85 - v12;
  v88 = sub_4ACDC();
  v87 = *(v88 - 8);
  v13 = *(v87 + 64);
  __chkstk_darwin(v88);
  v86 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_14628(&qword_7BDF8, &qword_53A30);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v102 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v113 = v85 - v19;
  v20 = type metadata accessor for CRWidgetStackView(0);
  v21 = v20 - 8;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  v24 = sub_14628(&qword_7BE00, &qword_53A38);
  v25 = *(v24 - 8);
  v112 = (v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24 - 8);
  v101 = v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = v85 - v29;
  v93 = *(v21 + 32);
  v92 = sub_14628(&qword_7B798, &qword_531D8);
  v90 = a1;
  v31 = sub_4B46C();
  v32 = (*(*v114 + 168))(v31);

  v118 = v32;
  KeyPath = swift_getKeyPath();
  sub_39744(a1, v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRWidgetStackView);
  v33 = *(v22 + 80);
  v34 = (v33 + 16) & ~v33;
  v97 = v23;
  v95 = v33;
  v91 = swift_allocObject();
  v96 = v34;
  v98 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_397AC(v98, v91 + v34, type metadata accessor for CRWidgetStackView);
  v111 = sub_14628(&qword_7AD10, &qword_52950);
  v110 = sub_14628(&qword_7BE08, &qword_53A68);
  v35 = sub_2C958(&qword_7BE10, &qword_7AD10, &qword_52950);
  v36 = sub_3CE84(&qword_7B078, &type metadata accessor for UUID);
  v37 = sub_1D648(&qword_7B7F0, &qword_53220);
  v38 = sub_1D648(&qword_7B7E8, &qword_53218);
  v39 = sub_1D648(&qword_7B858, &qword_53278);
  v40 = sub_1D648(&qword_7B7E0, &qword_53210);
  v41 = sub_39084();
  v114 = v40;
  v115 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_2C958(&qword_7B860, &qword_7B858, &qword_53278);
  v114 = v38;
  v115 = v39;
  v44 = v90;
  v116 = OpaqueTypeConformance2;
  v117 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v114 = v37;
  v115 = v45;
  v85[1] = swift_getOpaqueTypeConformance2();
  KeyPath = v35;
  v91 = v36;
  sub_4B41C();
  sub_4B46C();
  v46 = v114;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_3CECC;
  *(v47 + 24) = v46;
  v48 = &v30[*(sub_14628(&qword_7BE18, &qword_53A70) + 36)];
  *v48 = sub_2C6CC;
  v48[1] = v47;
  sub_4B46C();
  v49 = v114;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_3CEF0;
  *(v50 + 24) = v49;
  v51 = *(v112 + 11);
  v112 = v30;
  v52 = &v30[v51];
  *v52 = sub_2C854;
  *(v52 + 1) = v50;
  v53 = v44 + *(v21 + 28);
  v54 = *v53;
  LOBYTE(v49) = *(v53 + 8);

  if ((v49 & 1) == 0)
  {
    sub_4B7FC();
    v56 = sub_4AFDC();
    sub_4A90C();

    v57 = v86;
    sub_4ACCC();
    swift_getAtKeyPath();

    v55 = (*(v87 + 8))(v57, v88);
    v54 = v114;
  }

  v58 = (*(*v54 + 344))(v55);

  if (v58)
  {
    v59 = sub_4B46C();
    v60 = (*(*v114 + 176))(v59);

    v114 = v60;
    swift_getKeyPath();
    v61 = v98;
    sub_39744(v44, v98, type metadata accessor for CRWidgetStackView);
    v62 = v96;
    v63 = swift_allocObject();
    sub_397AC(v61, v63 + v62, type metadata accessor for CRWidgetStackView);
    v64 = v89;
    sub_4B41C();
    v65 = v99;
    v66 = v113;
    v67 = v64;
    v68 = v100;
    (*(v99 + 32))(v113, v67, v100);
    v69 = 0;
  }

  else
  {
    v69 = 1;
    v66 = v113;
    v65 = v99;
    v68 = v100;
    v61 = v98;
    v62 = v96;
  }

  (*(v65 + 56))(v66, v69, 1, v68);
  v70 = sub_4AD0C();
  v71 = v104;
  *v104 = v70;
  *(v71 + 8) = 0;
  *(v71 + 16) = 0;
  v72 = sub_14628(&qword_7B878, &qword_53290);
  sub_3131C((v71 + *(v72 + 44)));
  *(v71 + *(v103 + 36)) = 0;
  sub_39744(v44, v61, type metadata accessor for CRWidgetStackView);
  v73 = swift_allocObject();
  sub_397AC(v61, v73 + v62, type metadata accessor for CRWidgetStackView);
  sub_39628();
  v74 = v105;
  sub_4B18C();

  sub_1E284(v71, &qword_7B870, &qword_53288);
  v75 = v101;
  sub_2BC3C(v112, v101, &qword_7BE00, &qword_53A38);
  v76 = v102;
  sub_2BC3C(v66, v102, &qword_7BDF8, &qword_53A30);
  v77 = v106;
  v78 = v107;
  v79 = *(v107 + 16);
  v80 = v108;
  v79(v106, v74, v108);
  v81 = v109;
  sub_2BC3C(v75, v109, &qword_7BE00, &qword_53A38);
  v82 = sub_14628(&qword_7BE20, &qword_53A78);
  sub_2BC3C(v76, v81 + *(v82 + 48), &qword_7BDF8, &qword_53A30);
  v79((v81 + *(v82 + 64)), v77, v80);
  v83 = *(v78 + 8);
  v83(v74, v80);
  sub_1E284(v113, &qword_7BDF8, &qword_53A30);
  sub_1E284(v112, &qword_7BE00, &qword_53A38);
  v83(v77, v80);
  sub_1E284(v76, &qword_7BDF8, &qword_53A30);
  return sub_1E284(v75, &qword_7BE00, &qword_53A38);
}

uint64_t sub_2E918@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v4 = type metadata accessor for CRWidgetStackView(0);
  v96 = *(v4 - 8);
  v5 = *(v96 + 64);
  __chkstk_darwin(v4);
  v97 = v6;
  v98 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_14628(&qword_7B7C0, &qword_531F0);
  v78 = *(v7 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v7);
  v77 = &v77 - v9;
  v82 = sub_14628(&qword_7B7C8, &qword_531F8);
  v10 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v12 = &v77 - v11;
  v88 = sub_14628(&qword_7B7D0, &qword_53200);
  v13 = *(*(v88 - 1) + 8);
  __chkstk_darwin(v88);
  v87 = &v77 - v14;
  v85 = sub_14628(&qword_7B7D8, &qword_53208);
  v15 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v84 = &v77 - v16;
  v89 = sub_14628(&qword_7B7E0, &qword_53210);
  v17 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v86 = &v77 - v18;
  v93 = sub_14628(&qword_7B7E8, &qword_53218);
  v91 = *(v93 - 8);
  v19 = *(v91 + 64);
  __chkstk_darwin(v93);
  v90 = &v77 - v20;
  v21 = sub_14628(&qword_7B7F0, &qword_53220);
  v94 = *(v21 - 8);
  v95 = v21;
  v22 = *(v94 + 64);
  __chkstk_darwin(v21);
  v92 = &v77 - v23;
  v24 = sub_4ACDC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v4;
  v29 = *(v4 + 20);
  v100 = v2;
  v30 = v2 + v29;
  v31 = *v30;
  LOBYTE(v4) = *(v30 + 8);

  if ((v4 & 1) == 0)
  {
    sub_4B7FC();
    v32 = sub_4AFDC();
    sub_4A90C();

    sub_4ACCC();
    swift_getAtKeyPath();

    (*(v25 + 8))(v28, v24);
    v31 = v101;
  }

  v33 = v31[6];

  v34 = sub_4017C(a1);

  v83 = v7;
  if (v34)
  {
    LOBYTE(v101) = (*&stru_B8.segname[(swift_isaMask & *a1) - 8])();
    v105 = 1;
    sub_22358();
    v35 = sub_4B5DC() ^ 1;
  }

  else
  {
    v35 = 0;
  }

  v36 = *&stru_B8.segname[(swift_isaMask & *a1) - 8];
  LOBYTE(v101) = v36();
  v105 = 1;
  sub_22358();
  if (sub_4B5DC())
  {
    v37 = 0;
  }

  else
  {
    v38 = *(v81 + 24);
    sub_14628(&qword_7B798, &qword_531D8);
    v39 = sub_4B46C();
    v40 = (*(*v101 + 21))(v39);

    if (v40 >> 62)
    {
      v41 = sub_4BA5C();
    }

    else
    {
      v41 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
    }

    v37 = v41 > 1;
  }

  LOBYTE(v101) = v36();
  v105 = 1;
  v80 = sub_4B5DC();
  v42 = v83;
  v43 = swift_allocBox();
  v45 = v44;
  type metadata accessor for CRWidgetModel();
  sub_3CE84(&qword_7B7F8, type metadata accessor for CRWidgetModel);
  v46 = a1;
  sub_4B49C();
  *v12 = sub_4AD0C();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v47 = &v12[*(sub_14628(&qword_7B800, &qword_53228) + 44)];
  LODWORD(v81) = v35 & 1;
  sub_2F6C0(v43, v100, v37, v81, v47);
  v48 = 0;
  v12[*(v82 + 36)] = 0;
  if ((v35 & 1) == 0)
  {
    v49 = v78;
    v50 = v77;
    (*(v78 + 16))(v77, v45, v42);
    sub_4B46C();
    v51 = (*(v49 + 8))(v50, v42);
    v52 = v101;
    LOBYTE(v50) = (*&stru_B8.segname[(swift_isaMask & *v101) - 8])(v51);

    LOBYTE(v101) = v50;
    v105 = 1;
    v48 = sub_4B5DC() ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v48 & 1;
  v55 = v87;
  sub_3C23C(v12, v87, &qword_7B7C8, &qword_531F8);
  v56 = (v55 + *(v88 + 9));
  *v56 = KeyPath;
  v56[1] = sub_2CA54;
  v56[2] = v54;
  v57 = v55;
  v58 = v84;
  sub_3C23C(v57, v84, &qword_7B7D0, &qword_53200);
  *(v58 + *(v85 + 36)) = !v37;
  v59 = v86;
  sub_3C23C(v58, v86, &qword_7B7D8, &qword_53208);
  v60 = v89;
  *(v59 + *(v89 + 36)) = v80 & 1;
  sub_4B02C();
  v61 = sub_39084();
  v62 = v90;
  sub_4B1AC();
  v63 = sub_1E284(v59, &qword_7B7E0, &qword_53210);
  v88 = &v77;
  __chkstk_darwin(v63);
  v64 = v100;
  *(&v77 - 2) = v100;
  *(&v77 - 1) = v43;
  v79 = v43;
  v65 = sub_14628(&qword_7B858, &qword_53278);
  v101 = v60;
  v102 = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = sub_2C958(&qword_7B860, &qword_7B858, &qword_53278);
  v69 = v92;
  v68 = v93;
  sub_4B19C();
  (*(v91 + 8))(v62, v68);
  v70 = v64;
  v71 = v98;
  sub_39744(v70, v98, type metadata accessor for CRWidgetStackView);
  v72 = (*(v96 + 80) + 17) & ~*(v96 + 80);
  v73 = (v97 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v81;
  sub_397AC(v71, v74 + v72, type metadata accessor for CRWidgetStackView);
  *(v74 + v73) = v79;

  v101 = v68;
  v102 = v65;
  v103 = OpaqueTypeConformance2;
  v104 = v67;
  swift_getOpaqueTypeConformance2();
  v75 = v95;
  sub_4B18C();

  (*(v94 + 8))(v69, v75);
}

uint64_t sub_2F4D0()
{
  v1 = v0;
  v2 = type metadata accessor for CRWidgetStackView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_14628(&qword_7B870, &qword_53288);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  *v8 = sub_4AD0C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = sub_14628(&qword_7B878, &qword_53290);
  sub_3131C(&v8[*(v9 + 44)]);
  v8[*(v5 + 36)] = 0;
  sub_39744(v1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRWidgetStackView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_397AC(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CRWidgetStackView);
  sub_39628();
  sub_4B18C();

  return sub_1E284(v8, &qword_7B870, &qword_53288);
}

uint64_t sub_2F6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v126) = a4;
  v113 = a3;
  v127 = a5;
  v128 = a2;
  v6 = sub_14628(&qword_7B660, &qword_52F80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v114 = &v106 - v8;
  v125 = sub_14628(&qword_7BD48, &qword_539B8);
  v9 = *(*(v125 - 8) + 64);
  v10 = __chkstk_darwin(v125);
  v130 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v132 = &v106 - v12;
  v119 = sub_14628(&qword_7BCD8, &qword_538C8);
  v108 = *(v119 - 8);
  v13 = *(v108 + 64);
  __chkstk_darwin(v119);
  v107 = &v106 - v14;
  v117 = sub_14628(&qword_7BD50, &qword_539C0);
  v15 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v118 = &v106 - v16;
  v17 = sub_4AEBC();
  v111 = *(v17 - 8);
  v112 = v17;
  v18 = *(v111 + 64);
  __chkstk_darwin(v17);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_14628(&qword_7BD58, &qword_539C8);
  v109 = *(v21 - 8);
  v110 = v21;
  v22 = *(v109 + 64);
  __chkstk_darwin(v21);
  v24 = &v106 - v23;
  v115 = sub_14628(&qword_7BD60, &qword_539D0);
  v25 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v27 = &v106 - v26;
  v28 = sub_14628(&qword_7B7C0, &qword_531F0);
  v29 = *(v28 - 8);
  v30 = v29[8];
  __chkstk_darwin(v28);
  v32 = &v106 - v31;
  v33 = sub_14628(&qword_7BD68, &qword_539D8);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v129 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v131 = &v106 - v37;
  v38 = a1;
  v39 = swift_projectBox();
  v40 = v29[2];
  v122 = v29 + 2;
  v123 = v39;
  v121 = v40;
  (v40)(v32);
  sub_4B46C();
  v41 = v29[1];
  v124 = v29 + 1;
  v120 = v41;
  v42 = v41(v32, v28);
  v43 = v135;
  v44 = (*&stru_B8.segname[(swift_isaMask & *v135) - 8])(v42);

  LOBYTE(v146[0]) = v44;
  LOBYTE(v147) = 1;
  sub_223AC();
  sub_4B66C();
  v45 = sub_4B66C();
  v116 = v38;
  if (v135 == v133[0])
  {
    __chkstk_darwin(v45);
    *(&v106 - 2) = v128;

    sub_14628(&qword_7BDC8, &qword_53A10);
    sub_3CB14();
    sub_4B35C();
    sub_4AEAC();
    sub_2C958(&qword_7BD88, &qword_7BD58, &qword_539C8);
    sub_3CE84(&qword_7BD90, &type metadata accessor for BorderlessButtonStyle);
    v46 = v110;
    v47 = v112;
    sub_4B15C();
    (*(v111 + 8))(v20, v47);
    (*(v109 + 8))(v24, v46);
    *&v27[*(sub_14628(&qword_7BD80, &qword_539E0) + 36)] = 0x3FF0000000000000;
    v48 = *(type metadata accessor for CRWidgetStackView(0) + 24);
    sub_14628(&qword_7B798, &qword_531D8);
    v49 = sub_4B46C();
    LOBYTE(v47) = (*(*v135 + 160))(v49);

    KeyPath = swift_getKeyPath();
    v51 = swift_allocObject();
    *(v51 + 16) = v47 & 1;
    v52 = &v27[*(v115 + 36)];
    *v52 = KeyPath;
    v52[1] = sub_3D3D0;
    v52[2] = v51;
    sub_2BC3C(v27, v118, &qword_7BD60, &qword_539D0);
    swift_storeEnumTagMultiPayload();
    sub_3C7F8();
    v53 = sub_1D648(&qword_7BD08, &qword_53998);
    v54 = sub_3C3A0();
    v135 = v53;
    v136 = v54;
    swift_getOpaqueTypeConformance2();
    v55 = v131;
    sub_4AE7C();
    sub_1E284(v27, &qword_7BD60, &qword_539D0);
    v56 = 0;
    v57 = v55;
  }

  else
  {
    v58 = v118;
    v59 = v119;
    v57 = v131;
    if (v113)
    {
      v56 = 1;
    }

    else
    {
      v60 = v107;
      sub_308A0(0);
      v61 = v108;
      v62 = v59;
      (*(v108 + 16))(v58, v60, v59);
      swift_storeEnumTagMultiPayload();
      sub_3C7F8();
      v63 = sub_1D648(&qword_7BD08, &qword_53998);
      v64 = sub_3C3A0();
      v135 = v63;
      v136 = v64;
      swift_getOpaqueTypeConformance2();
      sub_4AE7C();
      (*(v61 + 8))(v60, v62);
      v56 = 0;
    }
  }

  v65 = sub_14628(&qword_7BDA8, &qword_539F0);
  (*(*(v65 - 8) + 56))(v57, v56, 1, v65);
  v66 = v123;
  v67 = v121;
  v121(v32, v123, v28);
  sub_4B46C();
  v68 = v120;
  v120(v32, v28);
  v69 = v132;
  sub_3DEC4(v135, 0, 0, 70.0, 70.0);
  sub_4B4CC();
  sub_4AABC();
  v70 = (v69 + *(sub_14628(&qword_7BDB0, &qword_539F8) + 36));
  v71 = v146[5];
  *v70 = v146[4];
  v70[1] = v71;
  v70[2] = v146[6];
  v67(v32, v66, v28);
  sub_4B46C();
  v72 = v68(v32, v28);
  v73 = v135;
  v74 = (*(&stru_68.size + (swift_isaMask & *v135)))(v72);

  *(v69 + *(v125 + 52)) = v74;
  sub_4B4CC();
  sub_4AABC();
  v123 = v149;
  v124 = v147;
  v121 = v152;
  v122 = v151;
  v145 = 1;
  v144 = v148;
  v143 = v150;
  v128 = sub_4AD8C();
  LOBYTE(v135) = 1;
  sub_30A94(v146);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  *&v142[7] = v146[0];
  *&v142[23] = v146[1];
  *&v142[39] = v146[2];
  *&v142[55] = v146[3];
  LODWORD(v125) = v135;
  if (v126)
  {
    v75 = sub_4B2DC();
    v80 = sub_4B05C();
    v81 = v114;
    (*(*(v80 - 8) + 56))(v114, 1, 1, v80);
    v77 = sub_4B07C();
    sub_1E284(v81, &qword_7B660, &qword_52F80);
    v76 = swift_getKeyPath();
    v79 = sub_4B26C();
    v78 = swift_getKeyPath();
  }

  v118 = v78;
  v119 = v79;
  v120 = v75;
  v126 = v77;
  v82 = v129;
  sub_2BC3C(v131, v129, &qword_7BD68, &qword_539D8);
  v83 = v130;
  sub_2BC3C(v132, v130, &qword_7BD48, &qword_539B8);
  v84 = v145;
  v85 = v144;
  v86 = v143;
  v87 = v127;
  sub_2BC3C(v82, v127, &qword_7BD68, &qword_539D8);
  v88 = sub_14628(&qword_7BDB8, &qword_53A00);
  sub_2BC3C(v83, v87 + v88[12], &qword_7BD48, &qword_539B8);
  v89 = v87 + v88[16];
  *v89 = 0;
  *(v89 + 8) = v84;
  v90 = v123;
  *(v89 + 16) = v124;
  *(v89 + 24) = v85;
  *(v89 + 32) = v90;
  *(v89 + 40) = v86;
  v91 = v121;
  *(v89 + 48) = v122;
  *(v89 + 56) = v91;
  v92 = v87 + v88[20];
  v93 = v128;
  v133[0] = v128;
  v133[1] = 0;
  v94 = v125;
  v134[0] = v125;
  *&v134[1] = *v142;
  *&v134[33] = *&v142[32];
  *&v134[17] = *&v142[16];
  *&v134[49] = *&v142[48];
  *&v134[64] = *&v142[63];
  v95 = *v134;
  *v92 = v128;
  *(v92 + 16) = v95;
  v96 = *&v134[16];
  v97 = *&v134[32];
  v98 = *&v134[48];
  *(v92 + 80) = *&v134[64];
  *(v92 + 48) = v97;
  *(v92 + 64) = v98;
  *(v92 + 32) = v96;
  v99 = v87 + v88[24];
  *v99 = 0;
  *(v99 + 8) = 1;
  v100 = (v87 + v88[28]);
  sub_2BC3C(v133, &v135, &qword_7BDC0, &qword_53A08);
  v102 = v119;
  v101 = v120;
  v103 = v126;
  v104 = v118;
  sub_3CA28(v120);
  sub_3CA98(v101);
  *v100 = v101;
  v100[1] = v76;
  v100[2] = v103;
  v100[3] = v104;
  v100[4] = v102;
  sub_1E284(v132, &qword_7BD48, &qword_539B8);
  sub_1E284(v131, &qword_7BD68, &qword_539D8);
  sub_3CA98(v101);
  v135 = v93;
  v136 = 0;
  v137 = v94;
  v139 = *&v142[16];
  v140 = *&v142[32];
  *v141 = *&v142[48];
  *&v141[15] = *&v142[63];
  v138 = *v142;
  sub_1E284(&v135, &qword_7BDC0, &qword_53A08);
  sub_1E284(v130, &qword_7BD48, &qword_539B8);
  return sub_1E284(v129, &qword_7BD68, &qword_539D8);
}

void sub_305D0()
{
  v0 = sub_14628(&qword_7B7C0, &qword_531F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_4B46C();
  (*(v1 + 8))(v4, v0);
  v6 = v8;
  (*&stru_B8.segname[swift_isaMask & *v8])(0);
}

uint64_t sub_3070C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_14628(&qword_7BCD8, &qword_538C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - v5;
  sub_308A0(1);
  v7 = *(type metadata accessor for CRWidgetStackView(0) + 24);
  sub_14628(&qword_7B798, &qword_531D8);
  v8 = sub_4B46C();
  LOBYTE(v7) = (*(*v13[1] + 160))(v8);

  if (v7)
  {
    v9 = [objc_opt_self() tertiaryLabelColor];
    v10 = sub_4B2BC();
  }

  else
  {
    v10 = sub_4B28C();
  }

  v11 = v10;
  (*(v3 + 32))(a1, v6, v2);
  result = sub_14628(&qword_7BDC8, &qword_53A10);
  *(a1 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_308A0(char a1)
{
  v2 = sub_14628(&qword_7B660, &qword_52F80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_4B2DC();
  sub_2D7D4();
  v7 = sub_4B05C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_4B07C();
  sub_1E284(v5, &qword_7B660, &qword_52F80);
  KeyPath = swift_getKeyPath();
  v10 = sub_4B01C();
  sub_4AA1C();
  v23 = 0;
  v15 = 0.0;
  *&v17 = v6;
  *(&v17 + 1) = KeyPath;
  *&v18 = v8;
  if (a1)
  {
    v15 = 1.0;
  }

  BYTE8(v18) = v10;
  *&v19 = v11;
  *(&v19 + 1) = v12;
  *&v20 = v13;
  *(&v20 + 1) = v14;
  LOBYTE(v21) = 0;
  *(&v21 + 1) = v15;
  sub_4B00C();
  sub_14628(&qword_7BD08, &qword_53998);
  sub_3C3A0();
  sub_4B1AC();
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v21;
  v22[0] = v17;
  v22[1] = v18;
  return sub_1E284(v22, &qword_7BD08, &qword_53998);
}

uint64_t sub_30A94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_14628(&qword_7B7C0, &qword_531F0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v38 - v5;
  v7 = swift_projectBox();
  v40 = v3[2];
  v41 = v7;
  v40(v6, v7, v2);
  sub_4B46C();
  v39 = v3[1];
  v8 = v39(v6, v2);
  v9 = v44;
  (*(&stru_B8.reloff + (swift_isaMask & *v44)))(v8);

  sub_4B04C();
  v10 = sub_4B0DC();
  v42 = v11;
  v43 = v10;
  v13 = v12;
  v15 = v14;

  v40(v6, v41, v2);
  sub_4B46C();
  v16 = v39(v6, v2);
  v17 = v44;
  (*(&stru_B8.flags + (swift_isaMask & *v44)))(v16);
  v19 = v18;

  if (v19)
  {
    sub_4B03C();
    v20 = sub_4B0DC();
    v22 = v21;
    LODWORD(v40) = v13;
    v24 = v23;
    v41 = v15;

    sub_4B2AC();
    v25 = sub_4B0BC();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = v24 & 1;
    LOBYTE(v13) = v40;
    sub_2BCB4(v20, v22, v32);
    v15 = v41;

    v33 = v29 & 1;
    sub_2BCA4(v25, v27, v29 & 1);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v33 = 0;
    v31 = 0;
  }

  v34 = v13 & 1;
  v36 = v42;
  v35 = v43;
  sub_2BCA4(v43, v42, v34);

  sub_3CC08(v25, v27, v33, v31);
  sub_3CC4C(v25, v27, v33, v31);
  LOBYTE(v44) = v34;
  *a1 = v35;
  *(a1 + 8) = v36;
  *(a1 + 16) = v34;
  *(a1 + 24) = v15;
  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = v33;
  *(a1 + 56) = v31;
  sub_3CC4C(v25, v27, v33, v31);
  sub_2BCB4(v35, v36, v34);
}

uint64_t sub_30E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRWidgetStackView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_14628(&qword_7B768, &qword_53120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  sub_4A9EC();
  v11 = sub_4AA0C();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_39744(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRWidgetStackView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_397AC(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CRWidgetStackView);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_4B34C();
}

void sub_3102C()
{
  v0 = sub_14628(&qword_7B7C0, &qword_531F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  v5 = *(type metadata accessor for CRWidgetStackView(0) + 24);
  sub_14628(&qword_7B798, &qword_531D8);
  sub_4B46C();
  v6 = v10;
  v7 = swift_projectBox();
  (*(v1 + 16))(v4, v7, v0);
  sub_4B46C();
  (*(v1 + 8))(v4, v0);
  v8 = v10;
  (*(*v6 + 216))(v10);
}

uint64_t sub_311A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4B2DC();
  *a1 = result;
  return result;
}

void sub_311DC(char a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7B7C0, &qword_531F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  if (a1)
  {
    v9 = a2 + *(type metadata accessor for CRWidgetStackView(0) + 32);
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = swift_projectBox();
    (*(v5 + 16))(v8, v12, v4);
    sub_4B46C();
    (*(v5 + 8))(v8, v4);
    v13 = v15;
    v11(v15);
  }
}

uint64_t sub_3131C@<X0>(char *a1@<X8>)
{
  v73 = a1;
  v1 = sub_14628(&qword_7BCD0, &qword_538C0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1);
  v75 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v63 - v6;
  v74 = sub_14628(&qword_7BCD8, &qword_538C8);
  v72 = *(v74 - 8);
  v8 = *(v72 + 64);
  v9 = __chkstk_darwin(v74);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v63 - v11;
  sub_308A0(0);
  sub_3C354();
  v12 = sub_4B82C();
  [v12 _effectiveCornerRadius];
  v14 = v13;

  v15 = *(sub_4AB7C() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = sub_4AD7C();
  (*(*(v17 - 8) + 104))(v7 + v15, v16, v17);
  *v7 = v14;
  *(v7 + 8) = v14;
  sub_4B27C();
  v18 = sub_4B29C();

  v19 = sub_14628(&qword_7BCE8, &qword_538D0);
  *(v7 + *(v19 + 52)) = v18;
  *(v7 + *(v19 + 56)) = 256;
  v20 = sub_4B4CC();
  v22 = v21;
  v23 = v7 + *(sub_14628(&qword_7BCF0, &qword_538D8) + 36);
  sub_31A08(v23);
  v24 = (v23 + *(sub_14628(&qword_7BCF8, &qword_538E0) + 36));
  *v24 = v20;
  v24[1] = v22;
  sub_4B4CC();
  sub_4AABC();
  v25 = *(v2 + 44);
  v78 = v7;
  v26 = (v7 + v25);
  v27 = v82;
  *v26 = v81;
  v26[1] = v27;
  v26[2] = v83;
  sub_4B4CC();
  sub_4AABC();
  v71 = v84;
  v70 = v86;
  v69 = v88;
  v68 = v89;
  v92 = 1;
  v91 = v85;
  v90 = v87;
  v79 = sub_3E584(0xD00000000000001BLL, 0x800000000005B930);
  v80 = v28;
  sub_2A3CC();
  v29 = sub_4B0FC();
  v31 = v30;
  LOBYTE(v7) = v32;
  sub_4B08C();
  v33 = sub_4B0DC();
  v35 = v34;
  v37 = v36;

  sub_2BCB4(v29, v31, v7 & 1);

  LODWORD(v29) = *(type metadata accessor for CRWidgetStackView(0) + 24);
  sub_14628(&qword_7B798, &qword_531D8);
  v38 = sub_4B46C();
  LOBYTE(v31) = (*(*v79 + 160))(v38);

  if (v31)
  {
    v39 = [objc_opt_self() tertiaryLabelColor];
    sub_4B2BC();
  }

  else
  {
    sub_4B26C();
  }

  v65 = sub_4B0BC();
  v64 = v40;
  v66 = v41;
  v67 = v42;

  sub_2BCB4(v33, v35, v37 & 1);

  v43 = v72;
  v44 = *(v72 + 16);
  v45 = v77;
  v46 = v74;
  v44(v77, v76, v74);
  v47 = v75;
  sub_2BC3C(v78, v75, &qword_7BCD0, &qword_538C0);
  v48 = v92;
  v49 = v91;
  v50 = v90;
  v51 = v73;
  v44(v73, v45, v46);
  v52 = sub_14628(&qword_7BD00, &qword_538E8);
  sub_2BC3C(v47, &v51[v52[12]], &qword_7BCD0, &qword_538C0);
  v53 = &v51[v52[16]];
  *v53 = 0;
  v53[8] = v48;
  *(v53 + 2) = v71;
  v53[24] = v49;
  *(v53 + 4) = v70;
  v53[40] = v50;
  v54 = v68;
  *(v53 + 6) = v69;
  *(v53 + 7) = v54;
  v55 = &v51[v52[20]];
  v56 = v65;
  v57 = v64;
  *v55 = v65;
  *(v55 + 1) = v57;
  v58 = v66 & 1;
  v55[16] = v66 & 1;
  *(v55 + 3) = v67;
  v59 = &v51[v52[24]];
  *v59 = 0;
  v59[8] = 1;
  v60 = v56;
  sub_2BCA4(v56, v57, v58);

  sub_1E284(v78, &qword_7BCD0, &qword_538C0);
  v61 = *(v43 + 8);
  v61(v76, v46);
  sub_2BCB4(v60, v57, v58);

  sub_1E284(v47, &qword_7BCD0, &qword_538C0);
  return (v61)(v77, v46);
}

uint64_t sub_31A08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_14628(&qword_7B660, &qword_52F80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v25 - v4;
  v6 = sub_14628(&qword_7B670, &unk_52FC0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = (v25 - v9);
  v11 = sub_4B2DC();
  v12 = sub_4B05C();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_4B07C();
  sub_1E284(v5, &qword_7B660, &qword_52F80);
  KeyPath = swift_getKeyPath();
  v15 = (v10 + *(v7 + 44));
  v16 = *(sub_14628(&qword_7B678, &qword_53920) + 28);
  sub_4AD9C();
  v17 = sub_4ADAC();
  (*(*(v17 - 8) + 56))(v15 + v16, 0, 1, v17);
  *v15 = swift_getKeyPath();
  *v10 = v11;
  v10[1] = KeyPath;
  v10[2] = v13;
  LODWORD(v11) = *(type metadata accessor for CRWidgetStackView(0) + 24);
  sub_14628(&qword_7B798, &qword_531D8);
  v18 = sub_4B46C();
  LOBYTE(v11) = (*(*v25[1] + 160))(v18);

  if (v11)
  {
    v19 = [objc_opt_self() tertiaryLabelColor];
    v20 = sub_4B2BC();
  }

  else
  {
    v20 = sub_4B26C();
  }

  v21 = v20;
  v22 = swift_getKeyPath();
  sub_3C23C(v10, a1, &qword_7B670, &unk_52FC0);
  result = sub_14628(&qword_7B680, &qword_53030);
  v24 = (a1 + *(result + 36));
  *v24 = v22;
  v24[1] = v21;
  return result;
}

uint64_t sub_31CE4(uint64_t a1)
{
  v2 = type metadata accessor for CRWidgetStackView(0);
  v3 = *(v2 + 24);
  sub_14628(&qword_7B798, &qword_531D8);
  v4 = sub_4B46C();
  v5 = (*(*v9 + 160))(v4);

  if ((v5 & 1) == 0)
  {
    v7 = a1 + *(v2 + 28);
    v8 = *(v7 + 8);
    return (*v7)(result);
  }

  return result;
}

uint64_t sub_31D90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_14628(&qword_7B790, &qword_531D0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for CRWidgetStackView(0);
  v11 = a5 + v10[5];
  type metadata accessor for CRWidgetSettingsModel();
  sub_3CE84(&qword_7ACD0, type metadata accessor for CRWidgetSettingsModel);
  *v11 = sub_4AA6C();
  v11[8] = v12 & 1;
  v13 = v10[6];
  type metadata accessor for CRWidgetStackModel(0);
  sub_3CE84(&qword_7B048, type metadata accessor for CRWidgetStackModel);
  sub_4B49C();
  v14 = (a5 + v10[7]);
  *v14 = a1;
  v14[1] = a2;
  v15 = (a5 + v10[8]);
  *v15 = a3;
  v15[1] = a4;
  v16 = v10[9];
  sub_14628(&qword_7B7A0, &qword_531E0);
  sub_4B30C();
  *(a5 + v16) = v19;
  v17 = v10[10];
  sub_2D778();
  return sub_4AA8C();
}

uint64_t sub_31F5C()
{
  sub_14628(&qword_7B7B0, &qword_531E8);
  sub_2C958(&qword_7B7B8, &qword_7B7B0, &qword_531E8);
  return sub_4B43C();
}

uint64_t sub_32048(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(0);
  sub_3CE84(a3, a4);

  return sub_4B49C();
}

uint64_t sub_320C8()
{
  sub_14628(&qword_7B898, &qword_532A0);
  sub_4B46C();
  return v1;
}

uint64_t (*sub_32144(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_14628(&qword_7B898, &qword_532A0);
  *(v3 + 32) = sub_4B45C();
  return sub_3D3CC;
}

void sub_321D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_3221C()
{
  sub_14628(&qword_7B898, &qword_532A0);

  return sub_4B48C();
}

uint64_t sub_32264()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackRowView(0) + 20));
  v4 = *v1;
  v5 = *(v1 + 2);
  sub_14628(&qword_7B8A0, &qword_532A8);
  sub_4B3BC();
  return v3;
}

uint64_t sub_322CC()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackRowView(0) + 20));
  v3 = *v1;
  v4 = *(v1 + 2);
  sub_14628(&qword_7B8A0, &qword_532A8);
  return sub_4B3CC();
}

void (*sub_3233C(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CRWidgetStackRowView(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = sub_14628(&qword_7B8A0, &qword_532A8);
  sub_4B3BC();
  return sub_32400;
}

void sub_32400(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 72);
  *(*a1 + 24) = *(*a1 + 64);
  v5 = v1[10];
  v4 = v1[11];
  v1[4] = v3;
  v1[5] = v5;
  v1[7] = v2;
  sub_4B3CC();

  free(v1);
}

uint64_t sub_32470()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackRowView(0) + 20));
  v4 = *v1;
  v5 = *(v1 + 2);
  sub_14628(&qword_7B8A0, &qword_532A8);
  sub_4B3EC();
  return v3;
}

uint64_t sub_324DC()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackRowView(0) + 24));
  v4 = *v1;
  v5 = *(v1 + 2);
  sub_14628(&qword_7B8A8, &qword_532B0);
  sub_4B3BC();
  return v3;
}

uint64_t sub_32544()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackRowView(0) + 24));
  v3 = *v1;
  v4 = *(v1 + 2);
  sub_14628(&qword_7B8A8, &qword_532B0);
  return sub_4B3CC();
}

void (*sub_325B4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CRWidgetStackRowView(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v9 = v8;

  v4[11] = sub_14628(&qword_7B8A8, &qword_532B0);
  sub_4B3BC();
  return sub_32680;
}

void sub_32680(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  *(v2 + 32) = v3;
  *(v2 + 40) = v6;
  if (a2)
  {
    v7 = v4;
    sub_4B3CC();
  }

  else
  {
    sub_4B3CC();
  }

  free(v2);
}

uint64_t sub_32744()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackRowView(0) + 24));
  v4 = *v1;
  v5 = *(v1 + 2);
  sub_14628(&qword_7B8A8, &qword_532B0);
  sub_4B3EC();
  return v3;
}

uint64_t sub_327B0()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackRowView(0) + 28));
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  sub_14628(&qword_7B8B0, &qword_532B8);
  sub_4B3BC();
  return v3;
}

uint64_t sub_32818()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackRowView(0) + 28));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_14628(&qword_7B8B0, &qword_532B8);
  return sub_4B3CC();
}

void (*sub_32888(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CRWidgetStackRowView(0) + 28));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = sub_14628(&qword_7B8B0, &qword_532B8);
  sub_4B3BC();
  return sub_3294C;
}

void sub_3294C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 48);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  sub_4B3CC();

  free(v1);
}

uint64_t sub_329C4()
{
  v1 = (v0 + *(type metadata accessor for CRWidgetStackRowView(0) + 28));
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  sub_14628(&qword_7B8B0, &qword_532B8);
  sub_4B3EC();
  return v3;
}

uint64_t sub_32A30@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v65 = type metadata accessor for CRWidgetStackRowView(0);
  v67 = *(v65 - 8);
  v2 = *(v67 + 64);
  v3 = __chkstk_darwin(v65);
  v68 = v4;
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v62 - v5;
  v6 = sub_14628(&qword_7B898, &qword_532A0);
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v9 = &v62 - v8;
  v71 = type metadata accessor for CRWidgetStackView(0);
  v10 = *(*(v71 - 8) + 64);
  v11 = __chkstk_darwin(v71);
  v73 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v62 - v13);
  v63 = sub_14628(&qword_7B8B8, &qword_532C0);
  v15 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v17 = &v62 - v16;
  v18 = sub_14628(&qword_7B8C0, &qword_532C8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v62 - v21;
  v23 = sub_14628(&qword_7B8C8, &qword_532D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v72 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v70 = &v62 - v27;
  v28 = v1;
  v29 = sub_4B46C();
  v30 = (*(*v79 + 120))(v29);

  if (v30 >> 62)
  {
    v31 = sub_4BA5C();
  }

  else
  {
    v31 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
  }

  if (v31 < 2)
  {
    v33 = 1;
    v32 = v70;
  }

  else
  {
    sub_33288(v28, v17);
    sub_39AFC();
    sub_4B44C();
    v32 = v70;
    (*(v19 + 32))(v70, v22, v18);
    v33 = 0;
  }

  (*(v19 + 56))(v32, v33, 1, v18);
  v34 = v32;
  sub_4B48C();
  swift_getKeyPath();
  sub_4B4AC();

  (*(v64 + 8))(v9, v6);
  v35 = v79;
  v36 = v80;
  v37 = v81;
  v38 = v28 + *(v65 + 20);
  v39 = *v38;
  v40 = *(v38 + 16);
  v77 = v39;
  v78 = v40;
  sub_14628(&qword_7B8A0, &qword_532A8);
  v41 = sub_4B3BC();
  __chkstk_darwin(v41);
  *(&v62 - 2) = v42;
  swift_getKeyPath();
  *&v77 = v35;
  *(&v77 + 1) = v36;
  v78 = v37;
  sub_14628(&qword_7B8D0, &qword_53340);
  sub_4B3AC();

  v43 = v66;
  sub_39744(v28, v66, type metadata accessor for CRWidgetStackRowView);
  v44 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v45 = swift_allocObject();
  sub_397AC(v43, v45 + v44, type metadata accessor for CRWidgetStackRowView);
  v46 = v28;
  v47 = v69;
  sub_39744(v46, v69, type metadata accessor for CRWidgetStackRowView);
  v48 = swift_allocObject();
  sub_397AC(v47, v48 + v44, type metadata accessor for CRWidgetStackRowView);
  *v14 = swift_getKeyPath();
  sub_14628(&qword_7B790, &qword_531D0);
  swift_storeEnumTagMultiPayload();
  v49 = v71;
  v50 = v14 + *(v71 + 20);
  type metadata accessor for CRWidgetSettingsModel();
  sub_3CE84(&qword_7ACD0, type metadata accessor for CRWidgetSettingsModel);
  *v50 = sub_4AA6C();
  v50[8] = v51 & 1;
  v52 = v49[6];
  type metadata accessor for CRWidgetStackModel(0);
  sub_3CE84(&qword_7B048, type metadata accessor for CRWidgetStackModel);
  sub_4B49C();
  v53 = (v14 + v49[7]);
  *v53 = sub_39814;
  v53[1] = v45;
  v54 = (v14 + v49[8]);
  *v54 = sub_399F8;
  v54[1] = v48;
  v55 = v49[9];
  v75 = 0;
  sub_14628(&qword_7B7A0, &qword_531E0);
  sub_4B30C();
  *(v14 + v55) = v76;
  v56 = v49[10];
  *&v76 = 0x4036000000000000;
  sub_2D778();
  sub_4AA8C();
  v57 = v72;
  sub_2BC3C(v34, v72, &qword_7B8C8, &qword_532D0);
  v58 = v73;
  sub_39744(v14, v73, type metadata accessor for CRWidgetStackView);
  v59 = v74;
  sub_2BC3C(v57, v74, &qword_7B8C8, &qword_532D0);
  v60 = sub_14628(&qword_7B8D8, &qword_53348);
  sub_39744(v58, v59 + *(v60 + 48), type metadata accessor for CRWidgetStackView);
  sub_39AA0(v14);
  sub_1E284(v34, &qword_7B8C8, &qword_532D0);
  sub_39AA0(v58);
  return sub_1E284(v57, &qword_7B8C8, &qword_532D0);
}

double sub_33288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v33 = sub_4AE9C();
  v35 = *(v33 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v33);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_14628(&qword_7B8F8, &qword_53358);
  v31 = *(v30 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v30);
  v8 = &v29 - v7;
  v34 = sub_14628(&qword_7BC90, &qword_53878);
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  __chkstk_darwin(v34);
  v29 = &v29 - v10;
  v11 = sub_14628(&qword_7B8F0, &qword_53350);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  sub_4AD5C();
  v16 = (a1 + *(type metadata accessor for CRWidgetStackRowView(0) + 20));
  v17 = *v16;
  v18 = *(v16 + 2);
  v40 = v17;
  *&v41 = v18;
  sub_14628(&qword_7B8A0, &qword_532A8);
  sub_4B3EC();
  v40 = v38;
  *&v41 = v39;
  v37 = a1;
  sub_14628(&qword_7BC98, &qword_53880);
  sub_3C174();
  sub_4B38C();
  sub_4AE8C();
  sub_2C958(&qword_7B900, &qword_7B8F8, &qword_53358);
  v19 = v29;
  v20 = v30;
  v21 = v33;
  sub_4B17C();
  (*(v35 + 8))(v5, v21);
  (*(v31 + 8))(v8, v20);
  sub_4B4CC();
  sub_4AB9C();
  (*(v32 + 32))(v15, v19, v34);
  v22 = &v15[*(v12 + 44)];
  v23 = v45;
  *(v22 + 4) = v44;
  *(v22 + 5) = v23;
  *(v22 + 6) = v46;
  v24 = v41;
  *v22 = v40;
  *(v22 + 1) = v24;
  v25 = v43;
  *(v22 + 2) = v42;
  *(v22 + 3) = v25;
  v26 = v36;
  sub_3C23C(v15, v36, &qword_7B8F0, &qword_53350);
  v27 = v26 + *(sub_14628(&qword_7B8B8, &qword_532C0) + 36);
  *(v27 + 32) = 0;
  result = 0.0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  return result;
}

uint64_t sub_33748(uint64_t a1)
{
  v2 = type metadata accessor for CRWidgetStackRowView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14628(&qword_7B898, &qword_532A0);
  v6 = sub_4B46C();
  v7 = (*(*v14 + 120))(v6);

  v8 = sub_3A238(v7);

  v18 = v8;
  swift_getKeyPath();
  sub_39744(a1, v5, type metadata accessor for CRWidgetStackRowView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_397AC(v5, v10 + v9, type metadata accessor for CRWidgetStackRowView);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_3C2A8;
  *(v11 + 24) = v10;
  sub_14628(&qword_7BCA8, &qword_538A8);
  sub_14628(&qword_7BCB0, &qword_538B0);
  sub_2C958(&qword_7BCB8, &qword_7BCA8, &qword_538A8);
  sub_3CE84(&qword_7BCC0, type metadata accessor for CRWidgetStackModel);
  v14 = &type metadata for Text;
  v15 = &type metadata for Int;
  v16 = &protocol witness table for Text;
  v17 = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  return sub_4B41C();
}

void sub_33A20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4AD4C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_4AD3C();
  v11._object = 0x800000000005B900;
  v11._countAndFlagsBits = 0xD000000000000017;
  sub_4AD2C(v11);
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_4AD1C();
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    sub_4AD2C(v12);
    sub_4AD6C();
    _s5DummyCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    *a2 = sub_4B0EC();
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
    *(a2 + 32) = a1;
    *(a2 + 40) = 1;
  }
}

uint64_t sub_33BCC@<X0>(uint64_t a1@<X8>)
{
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();

  v4 = [v3 bundleForClass:ObjCClassFromMetadata];
  result = sub_4B0EC();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

unint64_t sub_33CEC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  result = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = sub_4B9AC();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
  {
    v7 = *(v5 + 8 * result + 32);

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_33D54(uint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = *a2;

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_21A94(v6);
    v6 = result;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    v8 = *(&stru_20.cmd + 8 * v4 + (v6 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v4 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;

    *a2 = v6;
    return result;
  }

  __break(1u);
  return result;
}

int *sub_33DE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, char a10)
{
  type metadata accessor for CRWidgetStackRowModel(0);
  sub_3CE84(&qword_7B080, type metadata accessor for CRWidgetStackRowModel);
  sub_4B49C();
  result = type metadata accessor for CRWidgetStackRowView(0);
  v17 = (a8 + result[5]);
  *v17 = a1;
  v17[1] = a2;
  v17[2] = a3;
  v18 = (a8 + result[6]);
  *v18 = a4;
  v18[1] = a5;
  v18[2] = a6;
  v19 = a8 + result[7];
  *v19 = a7;
  *(v19 + 8) = a9;
  *(v19 + 16) = a10;
  return result;
}

uint64_t sub_33EE0()
{
  type metadata accessor for CRWidgetSettingsModel();
  sub_4B30C();
  return v1;
}

uint64_t sub_33F20()
{
  sub_14628(&qword_7B7A0, &qword_531E0);
  sub_4B30C();
  return v1;
}

uint64_t sub_33FA0()
{
  v1 = v0;
  v9 = *v0;
  sub_14628(&qword_7B918, &qword_53370);
  v2 = sub_4B31C();
  v3 = (*(*v8 + 560))(v2);

  if (!v3)
  {
    return 0;
  }

  v5 = (*(*v3 + 120))(v4);

  v10 = v1[4];
  sub_14628(&qword_7B920, &qword_53378);
  sub_4B31C();
  if (v5 >> 62)
  {
    if (v8 < sub_4BA5C())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v8 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_10:

    return 0;
  }

LABEL_4:
  v11 = v1[4];
  sub_4B31C();
  result = v8;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_4B9AC();
    goto LABEL_8;
  }

  if (v8 < 0)
  {
    __break(1u);
  }

  else if (v8 < *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
  {
    v7 = *(v5 + 8 * v8 + 32);

LABEL_8:

    return v7;
  }

  __break(1u);
  return result;
}

__n128 sub_34154@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_3A428(a1, v5);
  v3 = v5[3];
  a2[2] = v5[2];
  a2[3] = v3;
  a2[4] = v5[4];
  result = v5[1];
  *a2 = v5[0];
  a2[1] = result;
  return result;
}

uint64_t sub_3419C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_14628(&qword_7B928, &qword_53380);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v28 - v5);
  v7 = sub_14628(&qword_7B930, &qword_53388);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  *v6 = sub_4B4CC();
  v6[1] = v12;
  v13 = sub_14628(&qword_7B938, &unk_53390);
  sub_34540(v2, v6 + *(v13 + 44));
  v33 = sub_3E584(0xD000000000000017, 0x800000000005B760);
  v34 = v14;
  v15 = sub_2C958(&qword_7B940, &qword_7B928, &qword_53380);
  v16 = sub_2A3CC();
  sub_4B1CC();

  sub_1E284(v6, &qword_7B928, &qword_53380);
  v32 = v2;
  sub_14628(&qword_7B3E8, &unk_52BF0);
  v33 = v3;
  v34 = &type metadata for String;
  v35 = v15;
  v36 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_1D648(&qword_7B3F0, &unk_533A0);
  v18 = sub_1D648(&qword_7B3F8, &unk_52C00);
  v19 = sub_2A2E8();
  v20 = sub_2C958(&qword_7B430, &qword_7B3F8, &unk_52C00);
  v33 = v17;
  v34 = &type metadata for String;
  v35 = v18;
  v36 = v19;
  v37 = v16;
  v38 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v31;
  v22 = v29;
  sub_4B23C();
  (*(v30 + 8))(v11, v22);
  v23 = swift_allocObject();
  v24 = v2[3];
  v23[3] = v2[2];
  v23[4] = v24;
  v23[5] = v2[4];
  v25 = v2[1];
  v23[1] = *v2;
  v23[2] = v25;
  v26 = (v21 + *(sub_14628(&qword_7B948, &qword_533C8) + 36));
  LODWORD(v22) = *(sub_4AACC() + 20);
  sub_3A5B0(v2, &v33);
  result = sub_4B70C();
  *v26 = &unk_533C0;
  v26[1] = v23;
  return result;
}

uint64_t sub_34540@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a2;
  v3 = sub_14628(&qword_7BA18, &unk_53470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v19 - v5;
  v7 = sub_14628(&qword_7BC78, &qword_53868);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = sub_14628(&qword_7BC80, &qword_53870);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  v20 = *a1;
  sub_14628(&qword_7B918, &qword_53370);
  v16 = sub_4B31C();
  v17 = (*(*v19[1] + 440))(v16);

  if (v17)
  {
    sub_4AA7C();
    (*(v12 + 16))(v10, v15, v11);
    swift_storeEnumTagMultiPayload();
    sub_2C958(&qword_7BC88, &qword_7BC80, &qword_53870);
    sub_3BA54();
    sub_4AE7C();
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    sub_34874(v6);
    sub_2BC3C(v6, v10, &qword_7BA18, &unk_53470);
    swift_storeEnumTagMultiPayload();
    sub_2C958(&qword_7BC88, &qword_7BC80, &qword_53870);
    sub_3BA54();
    sub_4AE7C();
    return sub_1E284(v6, &qword_7BA18, &unk_53470);
  }
}

uint64_t sub_34874@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v53 = sub_4B4BC();
  v52 = *(v53 - 8);
  v3 = *(v52 + 64);
  __chkstk_darwin(v53);
  v51 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_14628(&qword_7B950, &qword_533D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v43 - v7;
  v46 = sub_14628(&qword_7B958, &qword_533D8);
  v47 = *(v46 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v46);
  v54 = v43 - v10;
  v48 = sub_14628(&qword_7B960, &qword_533E0);
  v49 = *(v48 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v48);
  v45 = v43 - v12;
  v55 = v1;
  sub_14628(&qword_7B968, &qword_533E8);
  sub_2C958(&qword_7B970, &qword_7B968, &qword_533E8);
  sub_4B09C();
  v13 = *(v5 + 36);
  v43[0] = v5;
  v14 = &v8[v13];
  *v14 = sub_37D68;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
  v56 = v1[3];
  sub_14628(&qword_7B760, &qword_533F0);
  sub_4B33C();
  v15 = swift_allocObject();
  v16 = v1[3];
  v15[3] = v1[2];
  v15[4] = v16;
  v15[5] = v1[4];
  v17 = v1[1];
  v15[1] = *v1;
  v15[2] = v17;
  sub_3A5B0(v1, &v58);
  v18 = sub_14628(&qword_7B978, &qword_533F8);
  v19 = sub_3A654();
  v20 = sub_3A70C();
  sub_4B21C();

  sub_1E284(v8, &qword_7B950, &qword_533D0);
  v56 = v1[1];
  sub_14628(&qword_7B9A8, &qword_53408);
  sub_4B33C();
  v43[1] = *(&v58 + 1);
  v43[2] = v58;
  v44 = v59;
  v56 = v58;
  v57 = v59;
  v21 = swift_allocObject();
  v22 = v1[3];
  v21[3] = v1[2];
  v21[4] = v22;
  v21[5] = v1[4];
  v23 = v1[1];
  v21[1] = *v1;
  v21[2] = v23;
  sub_3A5B0(v1, &v58);
  v24 = type metadata accessor for CRWidgetModel();
  v25 = sub_14628(&qword_7B9B0, &qword_53410);
  *&v58 = v43[0];
  *(&v58 + 1) = v18;
  v59 = v19;
  v60 = v20;
  v43[0] = swift_getOpaqueTypeConformance2();
  v26 = sub_3CE84(&qword_7B9B8, type metadata accessor for CRWidgetModel);
  v27 = sub_1D648(&qword_7B9C0, &qword_53418);
  v28 = sub_3A7D0();
  *&v58 = v27;
  *(&v58 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v45;
  v30 = v46;
  v31 = v54;
  sub_4B22C();

  (*(v47 + 8))(v31, v30);
  v58 = *v2;
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B31C();
  type metadata accessor for CRWidgetSettingsModel();
  *&v58 = v30;
  *(&v58 + 1) = v24;
  v59 = v25;
  v60 = v43[0];
  v61 = v26;
  v62 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_3CE84(&qword_7ACD0, type metadata accessor for CRWidgetSettingsModel);
  v32 = v50;
  v33 = v48;
  sub_4B16C();

  (*(v49 + 8))(v29, v33);
  KeyPath = swift_getKeyPath();
  v35 = (v32 + *(sub_14628(&qword_7BA18, &unk_53470) + 36));
  v36 = *(sub_14628(&qword_7B378, &unk_52BD0) + 28);
  v37 = v52;
  v38 = v51;
  v39 = v53;
  (*(v52 + 104))(v51, enum case for EditMode.active(_:), v53);
  sub_4B3FC();
  (*(v37 + 8))(v38, v39);
  v40 = sub_14628(&qword_7B380, &qword_53480);
  result = (*(*(v40 - 8) + 56))(v35 + v36, 0, 1, v40);
  *v35 = KeyPath;
  return result;
}

uint64_t sub_35070@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_14628(&qword_7B410, &qword_533B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v26 - v6;
  v8 = sub_14628(&qword_7B3F0, &unk_533A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v26 - v10;
  *&v35 = sub_3E584(0xD000000000000013, 0x800000000005B8A0);
  *(&v35 + 1) = v12;
  v13 = swift_allocObject();
  v14 = a1[3];
  v13[3] = a1[2];
  v13[4] = v14;
  v13[5] = a1[4];
  v15 = a1[1];
  v13[1] = *a1;
  v13[2] = v15;
  sub_3A5B0(a1, &v33);
  v28 = sub_2A3CC();
  sub_4B37C();
  v35 = *a1;
  v33 = *a1;
  sub_14628(&qword_7B918, &qword_53370);
  v16 = sub_4B31C();
  v17 = (*(*v31 + 248))(v16);

  if (v17)
  {
    v33 = v35;
    v18 = sub_4B31C();
    v19 = (*(*v31 + 440))(v18);
  }

  else
  {
    v19 = 1;
  }

  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19 & 1;
  (*(v4 + 32))(v11, v7, v3);
  v22 = &v11[*(v8 + 36)];
  *v22 = KeyPath;
  v22[1] = sub_3D3D0;
  v22[2] = v21;
  v31 = sub_3E584(0xD00000000000001BLL, 0x800000000005B8C0);
  v32 = v23;
  v30 = a1[2];
  sub_14628(&qword_7B760, &qword_533F0);
  v24 = sub_4B33C();
  v27 = v26;
  v26[1] = v34;
  __chkstk_darwin(v24);
  sub_14628(&qword_7B3F8, &unk_52C00);
  sub_2A2E8();
  sub_2C958(&qword_7B430, &qword_7B3F8, &unk_52C00);
  sub_4B1DC();

  return sub_1E284(v11, &qword_7B3F0, &unk_533A0);
}

uint64_t sub_354DC@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = sub_14628(&qword_7B768, &qword_53120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_14628(&qword_7B410, &qword_533B0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v34 = &v33 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - v15;
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v37[10] = sub_3E584(0xD000000000000013, 0x800000000005B8A0);
  v37[11] = v19;
  sub_4A9EC();
  v20 = sub_4AA0C();
  v21 = *(*(v20 - 8) + 56);
  v21(v6, 0, 1, v20);
  v22 = swift_allocObject();
  v23 = a1[3];
  v22[3] = a1[2];
  v22[4] = v23;
  v22[5] = a1[4];
  v24 = a1[1];
  v22[1] = *a1;
  v22[2] = v24;
  sub_3A5B0(a1, v37);
  sub_2A3CC();
  sub_4B36C();
  v37[0] = sub_3E584(0xD00000000000001ALL, 0x800000000005B8E0);
  v37[1] = v25;
  sub_4A9FC();
  v21(v6, 0, 1, v20);
  sub_4B36C();
  v26 = v8[2];
  v27 = v34;
  v26(v34, v18, v7);
  v28 = v35;
  v26(v35, v16, v7);
  v29 = v36;
  v26(v36, v27, v7);
  v30 = sub_14628(&qword_7B770, &qword_53860);
  v26(&v29[*(v30 + 48)], v28, v7);
  v31 = v8[1];
  v31(v16, v7);
  v31(v18, v7);
  v31(v28, v7);
  return (v31)(v27, v7);
}

uint64_t sub_358A0(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_4A93C();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  v5 = sub_4BA2C();
  v1[25] = v5;
  v6 = *(v5 - 8);
  v1[26] = v6;
  v7 = *(v6 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v8 = sub_4BA3C();
  v1[29] = v8;
  v9 = *(v8 - 8);
  v1[30] = v9;
  v10 = *(v9 + 64) + 15;
  v1[31] = swift_task_alloc();
  sub_4B6FC();
  v1[32] = sub_4B6EC();
  v12 = sub_4B6DC();
  v1[33] = v12;
  v1[34] = v11;

  return _swift_task_switch(sub_35A58, v12, v11);
}

uint64_t sub_35A58()
{
  v1 = *(v0 + 168);
  v2 = *v1;
  *(v0 + 40) = *v1;
  *(v0 + 56) = v2;
  *(v0 + 280) = sub_14628(&qword_7B918, &qword_53370);
  v3 = sub_4B31C();
  v4 = (*(**(v0 + 136) + 440))(v3);

  if ((v4 & 1) != 0 && (sub_4B73C() & 1) == 0)
  {
    *(v0 + 88) = *(v0 + 40);
    sub_4B31C();
    v19 = *(v0 + 152);
    *(v0 + 288) = v19;
    v24 = (*v19 + 584);
    v26 = (*v24 + **v24);
    v20 = (*v24)[1];
    v21 = swift_task_alloc();
    *(v0 + 296) = v21;
    *v21 = v0;
    v21[1] = sub_35E10;
    v18 = v26;
  }

  else
  {
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = sub_49558();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_4A91C();
    v10 = sub_4B80C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Finished loading task", v11, 2u);
    }

    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);

    (*(v13 + 8))(v12, v14);
    *(v0 + 72) = *(v0 + 40);
    sub_4B31C();
    v15 = *(v0 + 144);
    *(v0 + 328) = v15;
    v23 = (*v15 + 600);
    v25 = (*v23 + **v23);
    v16 = (*v23)[1];
    v17 = swift_task_alloc();
    *(v0 + 336) = v17;
    *v17 = v0;
    v17[1] = sub_36AE4;
    v18 = v25;
  }

  return v18();
}

uint64_t sub_35E10()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v7 = *v0;

  v4 = *(v1 + 272);
  v5 = *(v1 + 264);

  return _swift_task_switch(sub_35F54, v5, v4);
}

uint64_t sub_35F54()
{
  v1 = *(v0 + 280);
  *(v0 + 104) = *(v0 + 40);
  v2 = sub_4B31C();
  v3 = (*(**(v0 + 160) + 440))(v2);

  if (v3)
  {
    v4 = *(v0 + 248);
    sub_4BABC();
    *(v0 + 120) = xmmword_53190;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return _swift_task_switch(sub_363C8, 0, 0);
  }

  else
  {
    *(v0 + 56) = *(v0 + 40);
    *(v0 + 280) = sub_14628(&qword_7B918, &qword_53370);
    v5 = sub_4B31C();
    v6 = (*(**(v0 + 136) + 440))(v5);

    if ((v6 & 1) != 0 && (sub_4B73C() & 1) == 0)
    {
      *(v0 + 88) = *(v0 + 40);
      sub_4B31C();
      v21 = *(v0 + 152);
      *(v0 + 288) = v21;
      v26 = (*v21 + 584);
      v28 = (*v26 + **v26);
      v22 = (*v26)[1];
      v23 = swift_task_alloc();
      *(v0 + 296) = v23;
      *v23 = v0;
      v23[1] = sub_35E10;
      v20 = v28;
    }

    else
    {
      v8 = *(v0 + 184);
      v7 = *(v0 + 192);
      v9 = *(v0 + 176);
      v10 = sub_49558();
      (*(v8 + 16))(v7, v10, v9);
      v11 = sub_4A91C();
      v12 = sub_4B80C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_0, v11, v12, "Finished loading task", v13, 2u);
      }

      v15 = *(v0 + 184);
      v14 = *(v0 + 192);
      v16 = *(v0 + 176);

      (*(v15 + 8))(v14, v16);
      *(v0 + 72) = *(v0 + 40);
      sub_4B31C();
      v17 = *(v0 + 144);
      *(v0 + 328) = v17;
      v25 = (*v17 + 600);
      v27 = (*v25 + **v25);
      v18 = (*v25)[1];
      v19 = swift_task_alloc();
      *(v0 + 336) = v19;
      *v19 = v0;
      v19[1] = sub_36AE4;
      v20 = v27;
    }

    return v20();
  }
}

uint64_t sub_363C8()
{
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = sub_3CE84(&qword_7BC68, &type metadata accessor for ContinuousClock);
  sub_4BA9C();
  sub_3CE84(&qword_7BC70, &type metadata accessor for ContinuousClock.Instant);
  sub_4BA4C();
  v8 = *(v5 + 8);
  v0[38] = v8;
  v0[39] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[40] = v10;
  *v10 = v0;
  v10[1] = sub_3654C;
  v11 = v0[31];
  v13 = v0[28];
  v12 = v0[29];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 2, v12, v7);
}

uint64_t sub_3654C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v16 = *v1;

  if (v0)
  {
    v5 = v2[38];
    v4 = v2[39];
    v6 = v2[28];
    v7 = v2[25];

    v5(v6, v7);
    v8 = sub_36A70;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = v2[39];
    v13 = v2[30];
    v12 = v2[31];
    v14 = v2[29];
    (v2[38])(v2[28], v2[25]);
    (*(v13 + 8))(v12, v14);
    v9 = v2[33];
    v10 = v2[34];
    v8 = sub_366C0;
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_366C0()
{
  *(v0 + 56) = *(v0 + 40);
  *(v0 + 280) = sub_14628(&qword_7B918, &qword_53370);
  v1 = sub_4B31C();
  v2 = (*(**(v0 + 136) + 440))(v1);

  if ((v2 & 1) != 0 && (sub_4B73C() & 1) == 0)
  {
    *(v0 + 88) = *(v0 + 40);
    sub_4B31C();
    v17 = *(v0 + 152);
    *(v0 + 288) = v17;
    v22 = (*v17 + 584);
    v24 = (*v22 + **v22);
    v18 = (*v22)[1];
    v19 = swift_task_alloc();
    *(v0 + 296) = v19;
    *v19 = v0;
    v19[1] = sub_35E10;
    v16 = v24;
  }

  else
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 176);
    v6 = sub_49558();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_4A91C();
    v8 = sub_4B80C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Finished loading task", v9, 2u);
    }

    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);

    (*(v11 + 8))(v10, v12);
    *(v0 + 72) = *(v0 + 40);
    sub_4B31C();
    v13 = *(v0 + 144);
    *(v0 + 328) = v13;
    v21 = (*v13 + 600);
    v23 = (*v21 + **v21);
    v14 = (*v21)[1];
    v15 = swift_task_alloc();
    *(v0 + 336) = v15;
    *v15 = v0;
    v15[1] = sub_36AE4;
    v16 = v23;
  }

  return v16();
}

uint64_t sub_36A70()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  v1 = v0[33];
  v2 = v0[34];

  return _swift_task_switch(sub_3D3C8, v1, v2);
}

uint64_t sub_36AE4()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v7 = *v0;

  v4 = *(v1 + 272);
  v5 = *(v1 + 264);

  return _swift_task_switch(sub_36C28, v5, v4);
}

uint64_t sub_36C28()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[24];

  v6 = v0[1];

  return v6();
}

uint64_t sub_36CB8@<X0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v110 = a2;
  v3 = sub_14628(&qword_7BBF8, &qword_53758);
  v109 = *(v3 - 8);
  v4 = *(v109 + 64);
  __chkstk_darwin(v3);
  v97 = &v83[-v5];
  v96 = sub_14628(&qword_7BC00, &qword_53760);
  v95 = *(v96 - 8);
  v6 = *(v95 + 64);
  v7 = __chkstk_darwin(v96);
  v108 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v102 = &v83[-v9];
  v94 = sub_14628(&qword_7BC08, &qword_53768);
  v93 = *(v94 - 8);
  v10 = *(v93 + 64);
  v11 = __chkstk_darwin(v94);
  v100 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v99 = &v83[-v13];
  v91 = type metadata accessor for CRWidgetStackRowView(0);
  v92 = *(v91 - 8);
  v14 = *(v92 + 64);
  __chkstk_darwin(v91);
  v90 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_14628(&qword_7BC10, &qword_53770);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v98 = &v83[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v83[-v20];
  v22 = sub_14628(&qword_7BC18, &qword_53778);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v107 = &v83[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v104 = &v83[-v26];
  v27 = sub_14628(&qword_7BC20, &qword_53780);
  v105 = *(v27 - 8);
  v106 = v27;
  v28 = *(v105 + 64);
  v29 = __chkstk_darwin(v27);
  v103 = &v83[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v32 = &v83[-v31];
  v111 = a1;
  sub_4AD5C();
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *&v113 = sub_4B0EC();
  *(&v113 + 1) = v35;
  LOBYTE(v114) = v36 & 1;
  v115 = v37;
  sub_14628(&qword_7BC28, &qword_53788);
  v38 = sub_2C958(&qword_7BC30, &qword_7BC28, &qword_53788);
  v101 = v32;
  sub_4B44C();
  v116 = *a1;
  v113 = *a1;
  sub_14628(&qword_7B918, &qword_53370);
  v39 = sub_4B31C();
  LOBYTE(ObjCClassFromMetadata) = (*(*v112 + 248))(v39);

  if (ObjCClassFromMetadata)
  {
    v113 = v116;
    v40 = sub_4B31C();
    v41 = (*(*v112 + 560))(v40);

    v89 = v3;
    v88 = v38;
    if (v41)
    {
      v43 = (*(*v41 + 120))(v42);
      if (v43 >> 62)
      {
        v44 = sub_4BA5C();
      }

      else
      {
        v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
      }

      v45 = v21;

      if (v44 >= 1)
      {
        v112 = a1[4];
        sub_14628(&qword_7B920, &qword_53378);
        sub_4B33C();
        v86 = v113;
        v46 = v114;
        v112 = a1[1];
        sub_14628(&qword_7B9A8, &qword_53408);
        sub_4B33C();
        v85 = v113;
        v47 = v114;
        v112 = a1[3];
        sub_14628(&qword_7B760, &qword_533F0);
        sub_4B33C();
        v48 = v113;
        v84 = v114;
        type metadata accessor for CRWidgetStackRowModel(0);
        sub_3CE84(&qword_7B080, type metadata accessor for CRWidgetStackRowModel);
        v49 = v90;
        sub_4B49C();
        v50 = v91;
        v51 = v49 + *(v91 + 20);
        *v51 = v86;
        *(v51 + 16) = v46;
        v52 = v49 + *(v50 + 24);
        *v52 = v85;
        *(v52 + 16) = v47;
        v53 = v49 + *(v50 + 28);
        *v53 = v48;
        *(v53 + 16) = v84;
        sub_397AC(v49, v45, type metadata accessor for CRWidgetStackRowView);
        v54 = 0;
LABEL_11:
        v87 = v45;
        v57 = (*(v92 + 56))(v45, v54, 1, v50);
        __chkstk_darwin(v57);
        sub_14628(&qword_7BC40, &qword_53798);
        sub_2C958(&qword_7BC48, &qword_7BC40, &qword_53798);
        v58 = v99;
        v59 = sub_4B43C();
        __chkstk_darwin(v59);
        v60 = v102;
        sub_4B43C();
        v61 = v98;
        sub_2BC3C(v45, v98, &qword_7BC10, &qword_53770);
        v62 = v93;
        v92 = *(v93 + 16);
        v63 = v100;
        v64 = v94;
        (v92)(v100, v58, v94);
        v65 = v95;
        v66 = *(v95 + 16);
        v67 = v96;
        v66(v108, v60, v96);
        v68 = v97;
        sub_2BC3C(v61, v97, &qword_7BC10, &qword_53770);
        v69 = sub_14628(&qword_7BC50, &qword_537A0);
        (v92)(&v68[*(v69 + 48)], v63, v64);
        v70 = v108;
        v66(&v68[*(v69 + 64)], v108, v67);
        v71 = *(v65 + 8);
        v71(v102, v67);
        v72 = *(v62 + 8);
        v72(v99, v64);
        sub_1E284(v87, &qword_7BC10, &qword_53770);
        v71(v70, v67);
        v72(v100, v64);
        sub_1E284(v98, &qword_7BC10, &qword_53770);
        v56 = v104;
        sub_3C23C(v68, v104, &qword_7BBF8, &qword_53758);
        v55 = 0;
        v3 = v89;
        goto LABEL_12;
      }

      v54 = 1;
    }

    else
    {
      v54 = 1;
      v45 = v21;
    }

    v50 = v91;
    goto LABEL_11;
  }

  v55 = 1;
  v56 = v104;
LABEL_12:
  (*(v109 + 56))(v56, v55, 1, v3);
  v74 = v105;
  v73 = v106;
  v75 = *(v105 + 16);
  v76 = v103;
  v77 = v101;
  v75(v103, v101, v106);
  v78 = v107;
  sub_2BC3C(v56, v107, &qword_7BC18, &qword_53778);
  v79 = v110;
  v75(v110, v76, v73);
  v80 = sub_14628(&qword_7BC38, &qword_53790);
  sub_2BC3C(v78, &v79[*(v80 + 48)], &qword_7BC18, &qword_53778);
  sub_1E284(v56, &qword_7BC18, &qword_53778);
  v81 = *(v74 + 8);
  v81(v77, v73);
  sub_1E284(v78, &qword_7BC18, &qword_53778);
  return (v81)(v76, v73);
}

uint64_t sub_37990@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v31 = a1;
  v35 = a2;
  v3 = sub_14628(&qword_7BC28, &qword_53788);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v33 = &v31 - v9;
  v10 = __chkstk_darwin(v8);
  v32 = &v31 - v11;
  __chkstk_darwin(v10);
  v36 = &v31 - v12;
  v41 = sub_3E584(0xD000000000000016, 0x800000000005B840);
  v42 = v13;
  v37 = *a1;
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B33C();
  v14 = v38;
  v15 = v39;
  v16 = v40;
  swift_getKeyPath();
  v38 = v14;
  v39 = v15;
  v40 = v16;
  sub_14628(&qword_7BC58, &qword_537D0);
  sub_4B3DC();

  sub_2A3CC();
  sub_4B39C();
  v41 = sub_3E584(0xD00000000000001CLL, 0x800000000005B860);
  v42 = v17;
  v37 = *v31;
  sub_4B33C();
  v18 = v38;
  v19 = v39;
  v20 = v40;
  swift_getKeyPath();
  v38 = v18;
  v39 = v19;
  v40 = v20;
  sub_4B3DC();

  v21 = v32;
  sub_4B39C();
  v22 = v4[2];
  v23 = v33;
  v24 = v36;
  v22(v33, v36, v3);
  v25 = v34;
  v26 = v21;
  v22(v34, v21, v3);
  v27 = v35;
  v22(v35, v23, v3);
  v28 = sub_14628(&qword_7BC60, &qword_53828);
  v22(&v27[*(v28 + 48)], v25, v3);
  v29 = v4[1];
  v29(v26, v3);
  v29(v24, v3);
  v29(v25, v3);
  return (v29)(v23, v3);
}

id sub_37D68()
{
  v0 = objc_opt_self();

  return [v0 setHasShownEditWidgetsNotification:1];
}

uint64_t sub_37DA4()
{
  v15 = *v0;
  v13 = *v0;
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B31C();
  v1 = v14[6];

  v13 = v15;
  v2 = sub_4B31C();
  (*(*v14 + 71))(v2);

  v3 = [objc_allocWithZone(CRCarPlayWidgetDenyList) init];
  v4 = [v3 denyListExtensions];

  v5 = sub_4B74C();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_38FF0(*(v5 + 16), 0);
  v8 = sub_3A0E0(&v13, v7 + 4, v6, v5);
  sub_3AA5C();
  if (v8 != v6)
  {
    __break(1u);
LABEL_4:
  }

  v9 = swift_allocObject();
  v10 = v0[3];
  v9[3] = v0[2];
  v9[4] = v10;
  v9[5] = v0[4];
  v11 = v0[1];
  v9[1] = *v0;
  v9[2] = v11;
  sub_3A5B0(v0, &v13);
  return sub_4A77C();
}

uint64_t sub_37FB4(void **a1)
{
  v2 = sub_14628(&qword_7B9C0, &qword_53418);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_380A8(*a1, &v9 - v4);
  LOBYTE(a1) = sub_4AFFC();
  v6 = sub_4AB4C();
  v7 = &v5[*(v2 + 36)];
  *v7 = v6;
  v7[8] = a1;
  sub_3A7D0();
  sub_4B1FC();
  return sub_1E284(v5, &qword_7B9C0, &qword_53418);
}

uint64_t sub_380A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v37 = sub_14628(&qword_7BA20, &qword_53488);
  v5 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v38 = &v36 - v6;
  v7 = sub_14628(&qword_7BA10, &qword_53438);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = &v36 - v13;
  v15 = (*(&stru_68.size + (swift_isaMask & *a1)))(v12);
  v16 = [v15 intentReference];

  if (v16)
  {
    v17 = [v16 intent];
  }

  else
  {
    v17 = 0;
  }

  result = (*&stru_B8.segname[(swift_isaMask & *a1) + 16])();
  if (result)
  {
    v19 = result;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    v21 = *v3;
    *(v20 + 40) = v3[1];
    v22 = v3[3];
    *(v20 + 56) = v3[2];
    *(v20 + 72) = v22;
    *(v20 + 88) = v3[4];
    *(v20 + 24) = v21;
    v23 = a1;
    sub_3A5B0(v3, v40);
    v24 = nullsub_2(v17, v19, sub_3AAFC, v20);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_id;
    v32 = *(v7 + 52);
    v33 = sub_4A6AC();
    (*(*(v33 - 8) + 16))(v11 + v32, &v23[v31], v33);
    *v11 = v24;
    v11[1] = v26;
    v11[2] = v28;
    v11[3] = v30;
    sub_3C23C(v11, v14, &qword_7BA10, &qword_53438);
    sub_2BC3C(v14, v38, &qword_7BA10, &qword_53438);
    swift_storeEnumTagMultiPayload();
    sub_14628(&qword_7BA28, qword_53490);
    v34 = sub_1D648(&qword_7B9E0, &qword_53428);
    v35 = sub_3A950();
    v40[0] = v34;
    v40[1] = v35;
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7BA08, &qword_7BA10, &qword_53438);
    sub_4AE7C();
    return sub_1E284(v14, &qword_7BA10, &qword_53438);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_38454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  v32 = a1;
  v33 = a2;
  v9 = sub_14628(&qword_7BBD8, &unk_54520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_14628(&qword_7BBE0, &unk_53740);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_4B8BC();

  sub_4A7FC();

  sub_4A7FC();
  v15 = sub_14628(&qword_7BBE8, &unk_54530);
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  v16 = sub_4B8AC();
  v17 = objc_allocWithZone(CHSWidget);
  v18 = sub_4B5EC();
  v19 = [v17 initWithExtensionIdentity:v16 kind:v18 family:1 intent:0 activityIdentifier:0];

  v20 = sub_33FA0();
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = v20;
  v36 = *a9;
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B31C();
  v22 = *(v38 + 48);

  v23 = (*(*v21 + 192))(v32, v33, v19, v22, 0, 1);

  if (v23)
  {
    v36 = *a9;
    v24 = v23;
    sub_4B31C();
    v25 = *(v38 + 48);

    v26 = sub_4017C(v24);

    if (v26 && (v27 = (*&stru_B8.segname[(swift_isaMask & *v24) + 16])()) != 0 && (v28 = v27, v29 = [v27 promptsForUserConfiguration], v28, (v29 & 1) != 0))
    {
      v30 = *(a9 + 2);
      v37 = *(a9 + 3);
      v38 = v30;
      *&v36 = v30;
      *(&v36 + 1) = v37;
      v35 = v23;
      v31 = v24;
      sub_2BC3C(&v38, v34, &qword_7B7A0, &qword_531E0);
      sub_2BC3C(&v37, v34, &qword_7BBF0, &qword_53750);
      sub_14628(&qword_7B9A8, &qword_53408);
      sub_4B32C();

      sub_1E284(&v38, &qword_7B7A0, &qword_531E0);
      sub_1E284(&v37, &qword_7BBF0, &qword_53750);
    }

    else
    {
    }
  }

  else
  {
LABEL_7:
  }
}

uint64_t sub_38870(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_14628(&qword_7B7C0, &qword_531F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v22 - v10;
  v12 = (*(&stru_68.size + (swift_isaMask & *a2)))(v9);
  v13 = [v12 intentReference];

  if (v13)
  {
    v14 = [v13 intent];

    v15 = [v14 _indexingHash];
  }

  else
  {
    v15 = 0;
  }

  v16 = [a1 _indexingHash];
  if (v13)
  {
    v17 = v15 == v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    type metadata accessor for CRWidgetModel();
    sub_3CE84(&qword_7B7F8, type metadata accessor for CRWidgetModel);
    v18 = a2;
    sub_4B49C();
    sub_4B46C();
    v19 = v23;
    v20 = [objc_allocWithZone(CHSIntentReference) initWithIntent:a1];
    (*&stru_108.sectname[swift_isaMask & *v19])();

    (*(v7 + 8))(v11, v6);
  }

  v23 = *(a3 + 16);
  v22[1] = 0;
  sub_14628(&qword_7B9A8, &qword_53408);
  return sub_4B32C();
}

uint64_t sub_38B14@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_3419C(a1);
}

uint64_t sub_38BE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_4AB0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  a1[3] = type metadata accessor for $s14CarKitSettings0031CRWidgetSettingsViewswift_yFFIifMX387_0_33_B5659505F23A2A00E14031F4658893577PreviewfMf_15PreviewRegistryfMu_.__P_Previewable_Transform_Wrapper(0);
  a1[4] = sub_3BD6C();
  sub_2B2C0(a1);
  sub_4AAFC();
  (*(v3 + 16))(v7, v9, v2);
  sub_4B30C();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_38D20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4ACFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRWidgetSettingsModel();
  type metadata accessor for CRWidgetTestStore();
  v7 = sub_3E574();
  v8 = sub_19E1C(v7, &off_6FA48);
  v9 = sub_3A428(v8, v16);
  (*(v3 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v2, v9);
  sub_14800();
  sub_4B20C();
  (*(v3 + 8))(v6, v2);
  v17[2] = v16[2];
  v17[3] = v16[3];
  v17[4] = v16[4];
  v17[0] = v16[0];
  v17[1] = v16[1];
  sub_3D308(v17);
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(sub_14628(&qword_7BEC0, &qword_53B10) + 36));
  v12 = *(sub_14628(&qword_7BED8, &qword_53B18) + 28);
  v13 = enum case for DynamicTypeSize.accessibility5(_:);
  v14 = sub_4AB1C();
  result = (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  return result;
}

uint64_t sub_38F14()
{
  v0 = sub_14628(&qword_7BEB8, &qword_53B08);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_14628(&qword_7BE28, &unk_53A80);
  sub_4B33C();
  sub_14628(&qword_7BEC0, &qword_53B10);
  sub_3D224();
  return sub_4AB3C();
}

void *sub_38FF0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_14628(&qword_7B6F8, &qword_54180);
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

unint64_t sub_39084()
{
  result = qword_7B808;
  if (!qword_7B808)
  {
    sub_1D648(&qword_7B7E0, &qword_53210);
    sub_3913C();
    sub_2C958(&qword_7B848, &qword_7B850, &qword_53270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B808);
  }

  return result;
}

unint64_t sub_3913C()
{
  result = qword_7B810;
  if (!qword_7B810)
  {
    sub_1D648(&qword_7B7D8, &qword_53208);
    sub_391F4();
    sub_2C958(&qword_7B488, &qword_7B490, &qword_52C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B810);
  }

  return result;
}

unint64_t sub_391F4()
{
  result = qword_7B818;
  if (!qword_7B818)
  {
    sub_1D648(&qword_7B7D0, &qword_53200);
    sub_392AC();
    sub_2C958(&qword_7B418, &qword_7B420, &qword_52C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B818);
  }

  return result;
}

unint64_t sub_392AC()
{
  result = qword_7B820;
  if (!qword_7B820)
  {
    sub_1D648(&qword_7B7C8, &qword_531F8);
    sub_2C958(&qword_7B828, &qword_7B830, &qword_53260);
    sub_2C958(&qword_7B838, &qword_7B840, &qword_53268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B820);
  }

  return result;
}

uint64_t sub_39398()
{
  v1 = type metadata accessor for CRWidgetStackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_14628(&qword_7B790, &qword_531D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AB1C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *&v5[v1[5]];

  v10 = v1[6];
  v11 = sub_14628(&qword_7B798, &qword_531D8);
  (*(*(v11 - 8) + 8))(&v5[v10], v11);
  v12 = *&v5[v1[7] + 8];

  v13 = *&v5[v1[8] + 8];

  v14 = &v5[v1[9]];

  v15 = *(v14 + 1);

  v16 = v1[10];
  v17 = sub_14628(&qword_7B868, &qword_53280);
  (*(*(v17 - 8) + 8))(&v5[v16], v17);
  v18 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

void sub_39594()
{
  v1 = *(type metadata accessor for CRWidgetStackView(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_311DC(v3, v0 + v2);
}

unint64_t sub_39628()
{
  result = qword_7B880;
  if (!qword_7B880)
  {
    sub_1D648(&qword_7B870, &qword_53288);
    sub_2C958(&qword_7B888, &qword_7B890, &qword_53298);
    sub_2C958(&qword_7B838, &qword_7B840, &qword_53268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B880);
  }

  return result;
}

uint64_t sub_39744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_397AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_39814()
{
  v1 = type metadata accessor for CRWidgetStackRowView(0);
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  sub_14628(&qword_7B8B0, &qword_532B8);
  return sub_4B3CC();
}

uint64_t sub_398B8()
{
  v1 = (type metadata accessor for CRWidgetStackRowView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_14628(&qword_7B898, &qword_532A0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = v6[1];

  v9 = v0 + v3 + v1[8];
  v10 = *v9;

  v11 = *(v9 + 8);

  v12 = (v0 + v3 + v1[9]);
  v13 = *v12;

  v14 = v12[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_399F8(void *a1)
{
  v3 = type metadata accessor for CRWidgetStackRowView(0);
  v4 = v1 + *(v3 + 24) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));
  v7 = *v4;
  v8 = *(v4 + 16);
  v5 = a1;
  sub_14628(&qword_7B8A8, &qword_532B0);
  return sub_4B3CC();
}

uint64_t sub_39AA0(uint64_t a1)
{
  v2 = type metadata accessor for CRWidgetStackView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_39AFC()
{
  result = qword_7B8E0;
  if (!qword_7B8E0)
  {
    sub_1D648(&qword_7B8B8, &qword_532C0);
    sub_39BB4();
    sub_2C958(&qword_7B908, &qword_7B910, &unk_53360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B8E0);
  }

  return result;
}

unint64_t sub_39BB4()
{
  result = qword_7B8E8;
  if (!qword_7B8E8)
  {
    sub_1D648(&qword_7B8F0, &qword_53350);
    sub_1D648(&qword_7B8F8, &qword_53358);
    sub_4AE9C();
    sub_2C958(&qword_7B900, &qword_7B8F8, &qword_53358);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B8E8);
  }

  return result;
}

uint64_t sub_39CD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_49C9C(2, 26, 0, 0))
  {
    sub_4AF1C();

    return sub_4AB2C();
  }

  else
  {
    sub_4AB8C();
    swift_getWitnessTable();
    sub_4AECC();
    sub_4AB2C();
    sub_4B92C();
    swift_getWitnessTable();
    sub_4AB8C();
    swift_getWitnessTable();
    sub_4AECC();
    return sub_4AB2C();
  }
}

uint64_t sub_39E34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_49C9C(2, 26, 0, 0))
  {
    sub_4AF1C();
    sub_4AB2C();
  }

  else
  {
    sub_4AB8C();
    swift_getWitnessTable();
    sub_4AECC();
    sub_4AB2C();
    sub_4B92C();
    swift_getWitnessTable();
    sub_4AB8C();
    swift_getWitnessTable();
    sub_4AECC();
    sub_4AB2C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_3A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_14628(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v16 - v13;
  sub_2BC3C(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

void *sub_3A0E0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_3A238(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = sub_4B9AC();
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_4BA5C();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_14628(&qword_7BCC8, &qword_538B8);
        v15 = swift_allocObject();
        v16 = j__malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

__n128 sub_3A428@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_14628(&qword_7B7A0, &qword_531E0);
  sub_4B30C();
  sub_4B30C();
  sub_4B30C();
  sub_4B30C();
  result = v5;
  a2->n128_u64[0] = a1;
  a2->n128_u64[1] = 0;
  a2[1] = v5;
  a2[2].n128_u8[0] = v5.n128_u8[0];
  a2[2].n128_u64[1] = v5.n128_u64[1];
  a2[3].n128_u8[0] = v5.n128_u8[0];
  a2[3].n128_u64[1] = v5.n128_u64[1];
  a2[4] = v5;
  return result;
}

uint64_t sub_3A51C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DB38;

  return sub_358A0(v0 + 16);
}

uint64_t sub_3A5F0@<X0>(uint64_t a1@<X8>)
{
  sub_37DA4();
  v2 = sub_4AFFC();
  v3 = sub_4AB4C();
  result = sub_14628(&qword_7B978, &qword_533F8);
  v5 = a1 + *(result + 36);
  *v5 = v3;
  *(v5 + 8) = v2;
  return result;
}

unint64_t sub_3A654()
{
  result = qword_7B980;
  if (!qword_7B980)
  {
    sub_1D648(&qword_7B950, &qword_533D0);
    sub_2C958(&qword_7B988, &qword_7B990, &qword_53400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B980);
  }

  return result;
}

unint64_t sub_3A70C()
{
  result = qword_7B998;
  if (!qword_7B998)
  {
    sub_1D648(&qword_7B978, &qword_533F8);
    sub_3CE84(&qword_7B9A0, &type metadata accessor for WidgetGallery);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B998);
  }

  return result;
}

unint64_t sub_3A7D0()
{
  result = qword_7B9C8;
  if (!qword_7B9C8)
  {
    sub_1D648(&qword_7B9C0, &qword_53418);
    sub_3A85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B9C8);
  }

  return result;
}

unint64_t sub_3A85C()
{
  result = qword_7B9D0;
  if (!qword_7B9D0)
  {
    sub_1D648(&qword_7B9D8, &qword_53420);
    sub_1D648(&qword_7B9E0, &qword_53428);
    sub_3A950();
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7BA08, &qword_7BA10, &qword_53438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B9D0);
  }

  return result;
}

unint64_t sub_3A950()
{
  result = qword_7B9E8;
  if (!qword_7B9E8)
  {
    sub_1D648(&qword_7B9E0, &qword_53428);
    sub_3AA08();
    sub_2C958(&qword_7B9F8, &qword_7BA00, &qword_53430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B9E8);
  }

  return result;
}

unint64_t sub_3AA08()
{
  result = qword_7B9F0;
  if (!qword_7B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B9F0);
  }

  return result;
}

uint64_t sub_3AA8C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_3AB70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_14628(&qword_7BA30, qword_535D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_14628(&qword_7B798, &qword_531D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_14628(&qword_7B868, &qword_53280);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_3AD1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_14628(&qword_7BA30, qword_535D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_14628(&qword_7B798, &qword_531D8);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = sub_14628(&qword_7B868, &qword_53280);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_3AEB4()
{
  sub_3D1A4(319, &qword_7BA90, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_3D1A4(319, &qword_7BA98, type metadata accessor for CRWidgetSettingsModel, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_3D1A4(319, &qword_7BAA0, type metadata accessor for CRWidgetStackModel, &type metadata accessor for Bindable);
      if (v2 <= 0x3F)
      {
        sub_3B044();
        if (v3 <= 0x3F)
        {
          sub_3B3CC(319, &qword_7BAB0, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_3B094();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_3B044()
{
  result = qword_7BAA8;
  if (!qword_7BAA8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_7BAA8);
  }

  return result;
}

void sub_3B094()
{
  if (!qword_7BAB8)
  {
    sub_2D778();
    v0 = sub_4AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_7BAB8);
    }
  }
}

uint64_t sub_3B104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14628(&qword_7B898, &qword_532A0);
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

uint64_t sub_3B1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_14628(&qword_7B898, &qword_532A0);
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

void sub_3B2AC()
{
  sub_3D1A4(319, &qword_7BB58, type metadata accessor for CRWidgetStackRowModel, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    sub_3B438(319, &qword_7BB60);
    if (v1 <= 0x3F)
    {
      sub_3B3CC(319, &qword_7BB68, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_3B438(319, &unk_7BB70);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_3B3CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D648(&qword_7B7A0, &qword_531E0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_3B438(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_4B40C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 sub_3B484(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_3B4A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3B4E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3B560()
{
  result = qword_7BBA8;
  if (!qword_7BBA8)
  {
    sub_1D648(&qword_7BBB0, &qword_53728);
    sub_2C958(&qword_7B7B8, &qword_7B7B0, &qword_531E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BBA8);
  }

  return result;
}

uint64_t sub_3B61C()
{
  sub_1D648(&qword_7B7F0, &qword_53220);
  sub_1D648(&qword_7B7E8, &qword_53218);
  sub_1D648(&qword_7B858, &qword_53278);
  sub_1D648(&qword_7B7E0, &qword_53210);
  sub_39084();
  swift_getOpaqueTypeConformance2();
  sub_2C958(&qword_7B860, &qword_7B858, &qword_53278);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3B758()
{
  sub_1D648(&qword_7B870, &qword_53288);
  sub_39628();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_3B804()
{
  result = qword_7BBC8;
  if (!qword_7BBC8)
  {
    sub_1D648(&qword_7B948, &qword_533C8);
    sub_1D648(&qword_7B930, &qword_53388);
    sub_1D648(&qword_7B3E8, &unk_52BF0);
    sub_1D648(&qword_7B928, &qword_53380);
    sub_2C958(&qword_7B940, &qword_7B928, &qword_53380);
    sub_2A3CC();
    swift_getOpaqueTypeConformance2();
    sub_1D648(&qword_7B3F0, &unk_533A0);
    sub_1D648(&qword_7B3F8, &unk_52C00);
    sub_2A2E8();
    sub_2C958(&qword_7B430, &qword_7B3F8, &unk_52C00);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_3CE84(&qword_7B3C0, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BBC8);
  }

  return result;
}

unint64_t sub_3BA54()
{
  result = qword_7BBD0;
  if (!qword_7BBD0)
  {
    sub_1D648(&qword_7BA18, &unk_53470);
    sub_1D648(&qword_7B960, &qword_533E0);
    type metadata accessor for CRWidgetSettingsModel();
    sub_1D648(&qword_7B958, &qword_533D8);
    type metadata accessor for CRWidgetModel();
    sub_1D648(&qword_7B9B0, &qword_53410);
    sub_1D648(&qword_7B950, &qword_533D0);
    sub_1D648(&qword_7B978, &qword_533F8);
    sub_3A654();
    sub_3A70C();
    swift_getOpaqueTypeConformance2();
    sub_3CE84(&qword_7B9B8, type metadata accessor for CRWidgetModel);
    sub_1D648(&qword_7B9C0, &qword_53418);
    sub_3A7D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_3CE84(&qword_7ACD0, type metadata accessor for CRWidgetSettingsModel);
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7B3D8, &qword_7B378, &unk_52BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BBD0);
  }

  return result;
}

unint64_t sub_3BD6C()
{
  result = qword_7CF50[0];
  if (!qword_7CF50[0])
  {
    type metadata accessor for $s14CarKitSettings0031CRWidgetSettingsViewswift_yFFIifMX387_0_33_B5659505F23A2A00E14031F4658893577PreviewfMf_15PreviewRegistryfMu_.__P_Previewable_Transform_Wrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_7CF50);
  }

  return result;
}

uint64_t sub_3BDC4()
{
  v1 = *(v0 + 16);
  sub_3E584(0xD000000000000019, 0x800000000005B880);
  v3 = *v1;
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B33C();
  swift_getKeyPath();
  sub_14628(&qword_7BC58, &qword_537D0);
  sub_4B3DC();

  sub_2A3CC();
  return sub_4B39C();
}

uint64_t sub_3BEF0()
{
  v1 = *(v0 + 16);
  sub_3E584(0xD000000000000018, 0x800000000005B820);
  v3 = *v1;
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B33C();
  swift_getKeyPath();
  sub_14628(&qword_7BC58, &qword_537D0);
  sub_4B3DC();

  sub_2A3CC();
  return sub_4B39C();
}

uint64_t sub_3C014()
{
  v2 = *(v0 + 48);
  sub_14628(&qword_7B760, &qword_533F0);
  return sub_4B32C();
}

uint64_t sub_3C074()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_3C0DC()
{
  v4 = *(v0 + 16);
  sub_14628(&qword_7B918, &qword_53370);
  v1 = sub_4B31C();
  (*(*v3 + 592))(v1);
}

unint64_t sub_3C174()
{
  result = qword_7BCA0;
  if (!qword_7BCA0)
  {
    sub_1D648(&qword_7BC98, &qword_53880);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BCA0);
  }

  return result;
}

uint64_t sub_3C23C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_14628(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_3C2A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CRWidgetStackRowView(0);

  sub_33A20(a1, a2);
}

uint64_t sub_3C2EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3C324(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_3C354()
{
  result = qword_7BCE0;
  if (!qword_7BCE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7BCE0);
  }

  return result;
}

unint64_t sub_3C3A0()
{
  result = qword_7BD10;
  if (!qword_7BD10)
  {
    sub_1D648(&qword_7BD08, &qword_53998);
    sub_3C42C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BD10);
  }

  return result;
}

unint64_t sub_3C42C()
{
  result = qword_7BD18;
  if (!qword_7BD18)
  {
    sub_1D648(&qword_7BD20, &qword_539A0);
    sub_3C4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BD18);
  }

  return result;
}

unint64_t sub_3C4B8()
{
  result = qword_7BD28;
  if (!qword_7BD28)
  {
    sub_1D648(&qword_7BD30, &qword_539A8);
    sub_2C958(&qword_7BD38, &qword_7BD40, &qword_539B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BD28);
  }

  return result;
}

uint64_t sub_3C570()
{
  v1 = type metadata accessor for CRWidgetStackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_14628(&qword_7B790, &qword_531D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AB1C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *&v5[v1[5]];

  v10 = v1[6];
  v11 = sub_14628(&qword_7B798, &qword_531D8);
  (*(*(v11 - 8) + 8))(&v5[v10], v11);
  v12 = *&v5[v1[7] + 8];

  v13 = *&v5[v1[8] + 8];

  v14 = &v5[v1[9]];

  v15 = *(v14 + 1);

  v16 = v1[10];
  v17 = sub_14628(&qword_7B868, &qword_53280);
  (*(*(v17 - 8) + 8))(&v5[v16], v17);
  v18 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

void sub_3C76C()
{
  v1 = *(type metadata accessor for CRWidgetStackView(0) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_3102C();
}

unint64_t sub_3C7F8()
{
  result = qword_7BD70;
  if (!qword_7BD70)
  {
    sub_1D648(&qword_7BD60, &qword_539D0);
    sub_3C8B0();
    sub_2C958(&qword_7B418, &qword_7B420, &qword_52C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BD70);
  }

  return result;
}

unint64_t sub_3C8B0()
{
  result = qword_7BD78;
  if (!qword_7BD78)
  {
    sub_1D648(&qword_7BD80, &qword_539E0);
    sub_1D648(&qword_7BD58, &qword_539C8);
    sub_4AEBC();
    sub_2C958(&qword_7BD88, &qword_7BD58, &qword_539C8);
    sub_3CE84(&qword_7BD90, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7BD98, &qword_7BDA0, &qword_539E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BD78);
  }

  return result;
}

uint64_t sub_3CA28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3CA98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_3CB14()
{
  result = qword_7BDD0;
  if (!qword_7BDD0)
  {
    sub_1D648(&qword_7BDC8, &qword_53A10);
    sub_1D648(&qword_7BD08, &qword_53998);
    sub_3C3A0();
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7BDD8, &qword_7BDE0, &qword_53A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BDD0);
  }

  return result;
}

uint64_t sub_3CC08(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2BCA4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_3CC4C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2BCB4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_3CC94()
{
  v1 = type metadata accessor for CRWidgetStackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_14628(&qword_7B790, &qword_531D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AB1C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[v1[5]];

  v9 = v1[6];
  v10 = sub_14628(&qword_7B798, &qword_531D8);
  (*(*(v10 - 8) + 8))(&v5[v9], v10);
  v11 = *&v5[v1[7] + 8];

  v12 = *&v5[v1[8] + 8];

  v13 = &v5[v1[9]];

  v14 = *(v13 + 1);

  v15 = v1[10];
  v16 = sub_14628(&qword_7B868, &qword_53280);
  (*(*(v16 - 8) + 8))(&v5[v15], v16);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3CE84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3CF14()
{
  v1 = *(type metadata accessor for CRWidgetStackView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_31CE4(v2);
}

uint64_t sub_3CF78@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CRWidgetStackView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_2E918(*a1, a2);
}

uint64_t sub_3D000(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7BE28, &unk_53A80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_3D08C(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7BE28, &unk_53A80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_3D108()
{
  sub_3D1A4(319, &unk_7BE88, &type metadata accessor for NavigationPath, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_3D1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_3D224()
{
  result = qword_7BEC8;
  if (!qword_7BEC8)
  {
    sub_1D648(&qword_7BEC0, &qword_53B10);
    sub_14800();
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7BED0, &qword_7BED8, &qword_53B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BEC8);
  }

  return result;
}

void *sub_3D3DC()
{
  v1 = v0 + OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = v2;
  v7 = v3;

  return v2;
}

void sub_3D450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 24);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

id sub_3D538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_3D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView];
  *v5 = a1;
  *(v5 + 1) = a2;
  *(v5 + 2) = a3;
  *(v5 + 3) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for CRWidgetConfigurationView.Coordinator();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_3D618(uint64_t a1, uint64_t a2)
{
  v4 = (*(&stru_20.maxprot + (swift_isaMask & *v2)))();
  v6 = v5;

  v6(a2);
}

id sub_3D7D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRWidgetConfigurationView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_3D8BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = sub_3DC64(a2, a3);
  v4 = [objc_allocWithZone(WFWidgetConfigurationViewController) initWithOptions:v3];

  sub_14628(&qword_7BEF8, &qword_53B60);
  sub_4AFCC();
  [v4 setDelegate:v6];

  return v4;
}

id sub_3D960(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRWidgetConfigurationView.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v14.receiver = v9;
  v14.super_class = v8;
  v11 = a1;
  v12 = a2;

  return objc_msgSendSuper2(&v14, "init");
}

id sub_3D9EC()
{
  v1 = sub_3DC64(*v0, *(v0 + 8));
  v2 = [objc_allocWithZone(WFWidgetConfigurationViewController) initWithOptions:v1];

  sub_14628(&qword_7BEF8, &qword_53B60);
  sub_4AFCC();
  [v2 setDelegate:v4];

  return v2;
}

id sub_3DA94@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v5 = type metadata accessor for CRWidgetConfigurationView.Coordinator();
  v11 = *(v1 + 8);
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView];
  *v7 = v3;
  *(v7 + 8) = v11;
  *(v7 + 3) = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v8 = v3;
  v9 = v11;

  result = objc_msgSendSuper2(&v12, "init");
  *a1 = result;
  return result;
}

uint64_t sub_3DB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3DE70();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_3DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3DE70();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_3DC3C()
{
  sub_3DE70();
  sub_4AFAC();
  __break(1u);
}

id sub_3DC64(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(WFWidgetConfigurationOptions) init];
  v5 = [a2 displayName];
  [v4 setWidgetDisplayName:v5];

  v6 = [a2 widgetDescription];
  [v4 setWidgetDescription:v6];

  [v4 setWidgetConfigurationType:0];
  [v4 setFamily:1];
  [v4 setIntent:a1];
  [v4 setWidgetConfigurationStyle:2];
  return v4;
}

unint64_t sub_3DD6C()
{
  result = qword_7BF00;
  if (!qword_7BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BF00);
  }

  return result;
}

__n128 sub_3DDCC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3DDD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_3DE20(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_3DE70()
{
  result = qword_7BF90;
  if (!qword_7BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BF90);
  }

  return result;
}

uint64_t sub_3DEC4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  v11 = sub_4A7BC();

  return WrapViewController.init(_:updater:)(sub_3DFCC, v10, sub_3E3A4, 0, v11);
}

uint64_t sub_3DF84()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 48);
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_3DFCC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_3C354();
  v6 = sub_4B82C();
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [v6 _effectiveCornerRadius];
  v11 = (*(&stru_68.size + (swift_isaMask & *v3)))(v10);
  v12 = [objc_allocWithZone(CHUISWidgetHostViewController) initWithWidget:v11 metrics:v6 widgetConfigurationIdentifier:0];

  [v12 setInteractionDisabled:1];
  [v12 setContentType:1];
  [v12 setColorScheme:2];
  v13 = [objc_allocWithZone(CHSWidgetRenderScheme) initWithRenderingMode:0 backgroundViewPolicy:1];
  [v12 setRenderScheme:v13];

  [v12 setVisibility:2];
  [v12 setShowsWidgetLabel:0];
  [v12 setPresentationMode:2];
  [v12 setVisibleEntryShouldSnapshot:1];
  v14 = v12;
  v15 = [v14 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v15;
  [v6 _effectiveSizePixelAlignedForDisplayScale:v9];
  [v16 setFrame:{0.0, 0.0, v17, v18}];

  v19 = [v14 view];
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v19;
  v21 = [v19 layer];

  [v21 setCornerCurve:kCACornerCurveContinuous];
  v22 = [v14 view];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v22 layer];

  [v6 _effectiveCornerRadius];
  [v24 setCornerRadius:?];

  v25 = [v14 view];
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 layer];

  [v27 setAllowsHitTesting:0];
  v28 = [v14 view];

  if (!v28)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v28 setAutoresizingMask:18];

  if (v4)
  {
    v4(v14);
  }

  v29 = objc_allocWithZone(sub_4A7BC());
  sub_4A7AC();
}

void sub_3E3A4(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v2 superview];

  if (!v4)
  {
    return;
  }

  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a1 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 setFrame:{v6, v8, v10, v12}];
}

__n128 sub_3E4B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3E4C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E4E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_7C000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_7C000);
    }
  }
}

uint64_t sub_3E584(uint64_t a1, void *a2)
{
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._countAndFlagsBits = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v7 = sub_4A5FC(v10, v11, v6, v12, v9);

  return v7;
}

unint64_t sub_3E664(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

Swift::Int sub_3E690()
{
  v1 = *v0;
  sub_4BACC();
  sub_4BADC(v1);
  return sub_4BAEC();
}

Swift::Int sub_3E704()
{
  v1 = *v0;
  sub_4BACC();
  sub_4BADC(v1);
  return sub_4BAEC();
}

uint64_t *sub_3E748@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_3E76C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_id;
  v4 = sub_4A6AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_3E844()
{
  swift_getKeyPath();
  (*&stru_108.segname[(swift_isaMask & *v0) - 8])();

  v1 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__chsWidget;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_3E8EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(&stru_68.size + (swift_isaMask & **a1)))();
  *a2 = result;
  return result;
}

void sub_3E9AC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__chsWidget;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_3EAF8();
  v6 = v5;
  v7 = sub_4B8FC();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11 = v2;
    v12 = a1;
    (*&stru_108.segname[swift_isaMask & *v2])(v10, sub_3EB44);
  }
}

unint64_t sub_3EAF8()
{
  result = qword_7C0A0;
  if (!qword_7C0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7C0A0);
  }

  return result;
}

void sub_3EB44()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__chsWidget;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

void (*sub_3EBB0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*&stru_108.segname[(swift_isaMask & *v1) - 8])(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_40324(&qword_7B7F8, type metadata accessor for CRWidgetModel);
  sub_4A70C();

  v4[7] = sub_3E7E4();
  return sub_3ED10;
}

uint64_t type metadata accessor for CRWidgetModel()
{
  result = qword_7D3E0;
  if (!qword_7D3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3EDC8()
{
  swift_getKeyPath();
  (*&stru_108.segname[(swift_isaMask & *v0) - 8])();

  v1 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__suggestionSource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_3EE60@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*&stru_B8.segname[(swift_isaMask & **a1) - 8])();
  *a2 = result;
  return result;
}

uint64_t sub_3EF14(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__suggestionSource;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    v6 = __chkstk_darwin(KeyPath);
    v7 = v1;
    v8 = a1;
    (*&stru_108.segname[swift_isaMask & *v1])(v6, sub_3F028);
  }

  return result;
}

uint64_t sub_3F028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__suggestionSource;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*sub_3F084(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*&stru_108.segname[(swift_isaMask & *v1) - 8])(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_40324(&qword_7B7F8, type metadata accessor for CRWidgetModel);
  sub_4A70C();

  v4[7] = sub_3ED68();
  return sub_3F1E4;
}

void *sub_3F1F0()
{
  v1 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_descriptor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_3F23C(void *a1)
{
  v3 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_descriptor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    v6 = [v5 intentType];
    if (v6)
    {

      v7 = (*(&stru_68.size + (swift_isaMask & *v1)))();
      v8 = [v7 intentReference];

      if (v8)
      {
LABEL_6:

        v5 = v8;
        goto LABEL_7;
      }

      v9 = [v5 defaultIntentReference];
      if (v9)
      {
        v10 = *&stru_108.sectname[swift_isaMask & *v1];
        v11 = v9;
        v8 = v9;
        v10(v11);

        v5 = v8;
        goto LABEL_6;
      }
    }

LABEL_7:
  }
}

void (*sub_3F394(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_descriptor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_3F41C;
}

void sub_3F41C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      v6 = [v5 intentType];
      if (v6)
      {
        v7 = v3[3];

        v8 = (*(&stru_68.size + (swift_isaMask & *v7)))();
        v9 = [v8 intentReference];

        if (v9)
        {
LABEL_7:

          v5 = v9;
          goto LABEL_8;
        }

        v10 = [v5 defaultIntentReference];
        if (v10)
        {
          v11 = *&stru_108.sectname[swift_isaMask & *v3[3]];
          v12 = v10;
          v9 = v10;
          v11(v12);

          v5 = v9;
          goto LABEL_7;
        }
      }

LABEL_8:
    }
  }

  free(v3);
}

uint64_t sub_3F580()
{
  v1 = (*(&stru_68.size + (swift_isaMask & *v0)))();
  v2 = [v1 extensionIdentity];

  swift_beginAccess();
  sub_14628(&qword_7BBE0, &unk_53740);
  sub_4A80C();
  swift_endAccess();

  v3 = objc_allocWithZone(LSApplicationExtensionRecord);
  v5 = sub_4020C();
  v6 = [v5 containingBundleRecord];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 localizedName];
  v8 = sub_4B5FC();

  return v8;
}

void *sub_3F6E8()
{
  if ((*&stru_B8.segname[(swift_isaMask & *v0) - 8])() == 1)
  {
    return sub_3E584(0xD000000000000011, 0x800000000005BA50);
  }

  result = (*&stru_B8.segname[(swift_isaMask & *v0) + 16])();
  if (result)
  {
    v2 = result;
    v3 = [result displayName];

    if (v3)
    {
      v4 = sub_4B5FC();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_3F7E8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_descriptor] = 0;
  sub_4A71C();
  v8 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_id;
  v9 = sub_4A6AC();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  *&v7[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__chsWidget] = a2;
  v7[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__suggestionSource] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

id sub_3F900(uint64_t a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_descriptor] = 0;
  sub_4A71C();
  v7 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_id;
  v8 = sub_4A6AC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  *&v3[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__chsWidget] = a2;
  v3[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__suggestionSource] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for CRWidgetModel();
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t sub_3FA14(uint64_t a1)
{
  v3 = *(&stru_68.size + (swift_isaMask & *v1));
  v4 = v3();
  v5 = [v4 extensionIdentity];

  v6 = v3();
  v7 = [v6 kind];

  if (!v7)
  {
    sub_4B5FC();
    v7 = sub_4B5EC();
  }

  v9 = (v3)(v8);
  v10 = [v9 family];

  v11 = v3();
  v12 = [v11 activityIdentifier];

  if (v12)
  {
    sub_4B5FC();

    v12 = sub_4B5EC();
  }

  v13 = [objc_allocWithZone(CHSWidget) initWithExtensionIdentity:v5 kind:v7 family:v10 intentReference:a1 activityIdentifier:v12];

  v14 = *(&stru_68.offset + (swift_isaMask & *v1));

  return v14(v13);
}

id sub_3FD8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRWidgetModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3FE90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_id;
  v5 = sub_4A6AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_3FF0C(void *a1)
{
  v3 = sub_4A6AC();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 id];
  sub_4A68C();

  v8 = [a1 chsWidget];
  v9 = [a1 suggestionSource];
  if (v9 == &dword_0 + 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == &dword_0 + 1;
  }

  v11 = (*(v1 + 256))(v6, v8, v10);

  return v11;
}

id sub_4000C(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_4A66C().super.isa;
  v4 = (*(&stru_68.size + (swift_isaMask & *a1)))();
  v5 = [v2 initWithID:isa chsWidget:v4 suggestionSource:(*&stru_B8.segname[(swift_isaMask & *a1) - 8])()];

  return v5;
}

id sub_400F8(void *a1)
{
  v2 = v1;
  v3 = (*(&stru_68.size + (swift_isaMask & *a1)))();
  v4 = [v2 widgetDescriptorForWidget:v3];

  return v4;
}

BOOL sub_4017C(void *a1)
{
  v1 = (*&stru_B8.segname[(swift_isaMask & *a1) + 16])();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 intentType];
  v4 = v3 != 0;
  if (v3)
  {
  }

  return v4;
}

id sub_4020C()
{
  v1 = sub_4B5EC();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_4A60C();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_40324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_40374()
{
  result = sub_4A6AC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_4A72C();
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

uint64_t getEnumTagSinglePayload for CRWidgetModel.SuggestionSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRWidgetModel.SuggestionSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CARSpinnerHeaderView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t CARSpinnerHeaderView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title];
  swift_beginAccess();
  result = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7)
  {
    if (a2)
    {
      v8 = result == a1 && v7 == a2;
      if (v8 || (sub_4BA8C() & 1) != 0)
      {
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  [v2 setNeedsUpdateConfiguration];
}

void (*CARSpinnerHeaderView.title.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_40880;
}

void sub_40880(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = *(v2 + 40);
    v6 = *(*a1 + 32);

    CARSpinnerHeaderView.title.setter(v3, v4);
    v7 = *(v2 + 32);
  }

  else
  {
    v8 = (*(v2 + 40) + *(v2 + 48));
    v9 = *v8;
    v10 = v8[1];
    *v8 = v3;
    v8[1] = v4;
    if (v10)
    {
      if (v4)
      {
        v11 = v9 == v3 && v10 == v4;
        if (v11 || (sub_4BA8C() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v4)
    {
      goto LABEL_14;
    }

    [*(v2 + 40) setNeedsUpdateConfiguration];
  }

LABEL_13:

LABEL_14:

  free(v2);
}

uint64_t CARSpinnerHeaderView.isSpinning.getter()
{
  v1 = OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning;
  swift_beginAccess();
  return *(v0 + v1);
}

id CARSpinnerHeaderView.isSpinning.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

void (*CARSpinnerHeaderView.isSpinning.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_40B48;
}

void sub_40B48(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsUpdateConfiguration];
  }

  free(v1);
}

uint64_t CARSpinnerHeaderView.updateConfiguration(using:)()
{
  v1 = v0;
  v2 = sub_14628(&qword_7C0E0, &qword_53EA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17[-v4];
  v6 = sub_14628(&qword_7C0E8, &qword_53EA8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v17[-v12];
  v18 = v1;
  sub_14628(&qword_7C0F0, &qword_53EB0);
  sub_2C958(&qword_7C0F8, &qword_7C0F0, &qword_53EB0);
  sub_4AF0C();
  sub_4AFEC();
  sub_4AEFC();
  v14 = *(v7 + 8);
  v14(v11, v6);
  sub_4B02C();
  v19[3] = v6;
  v19[4] = sub_2C958(&qword_7C100, &qword_7C0E8, &qword_53EA8);
  sub_2B2C0(v19);
  sub_4AEFC();
  v14(v13, v6);
  sub_4B7BC();
  sub_4A9CC();
  v15 = sub_4A9DC();
  (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  return sub_4B7CC();
}

id sub_40E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_4AD0C();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v4 = sub_14628(&qword_7C130, &unk_53EE8);
  return sub_40EA4(v3, (a1 + *(v4 + 44)));
}

id sub_40EA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v3 = sub_4AF3C();
  v75 = *(v3 - 8);
  v4 = *(v75 + 64);
  __chkstk_darwin(v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_14628(&qword_7BC80, &qword_53870);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  __chkstk_darwin(v7);
  v10 = &v67 - v9;
  v79 = sub_14628(&qword_7C138, &qword_53EF8);
  v11 = *(v79 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v79);
  v74 = &v67 - v13;
  v14 = sub_14628(&qword_7C140, &qword_53F00);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v67 - v20;
  v22 = (*(&stru_20.nsects + (swift_isaMask & *a1)))(v19);
  v24 = v23;
  if (v23)
  {
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v67 = v10;
      v68 = v6;
      v69 = v3;
      v70 = v11;
      v76 = v21;
      v71 = v18;
      v80 = v22;
      v81 = v23;
      sub_2A3CC();

      v26 = sub_4B0FC();
      v28 = v27;
      v30 = v29;
      sub_4B08C();
      v31 = sub_4B0DC();
      v33 = v32;
      v35 = v34;
      v77 = v36;

      sub_2BCB4(v26, v28, v30 & 1);

      sub_4B06C();
      v37 = sub_4B0AC();
      v39 = v38;
      v41 = v40;
      sub_2BCB4(v31, v33, v35 & 1);

      result = [objc_opt_self() _defaultTextColorForTableViewStyle:1 isSectionHeader:1];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v80 = sub_4B25C();
      v43 = sub_4B0CC();
      v45 = v44;
      v47 = v46;
      v24 = v48;
      v49 = v37;
      v50 = v43;
      sub_2BCB4(v49, v39, v41 & 1);

      v51 = v47 & 1;
      v77 = v45;
      sub_2BCA4(v50, v45, v47 & 1);

      v11 = v70;
      v18 = v71;
      v21 = v76;
      v6 = v68;
      v3 = v69;
      v10 = v67;
    }

    else
    {

      v50 = 0;
      v77 = 0;
      v51 = 0;
      v24 = 0;
    }
  }

  else
  {
    v50 = 0;
    v77 = 0;
    v51 = 0;
  }

  if ((*&stru_68.segname[swift_isaMask & *a1])(v22))
  {
    sub_4AA7C();
    sub_4AF2C();
    sub_2C958(&qword_7BC88, &qword_7BC80, &qword_53870);
    v76 = v21;
    sub_41A94();
    v52 = v10;
    v53 = v74;
    v71 = v50;
    v54 = v73;
    sub_4B14C();
    (*(v75 + 8))(v6, v3);
    (*(v72 + 8))(v52, v54);
    v55 = sub_4AEEC();
    *(v53 + *(sub_14628(&qword_7C158, &qword_53F10) + 36)) = v55;
    v56 = (v53 + *(v79 + 36));
    v57 = v11;
    v58 = *(sub_14628(&qword_7C160, &qword_53F18) + 28);
    v59 = enum case for ControlSize.regular(_:);
    v60 = sub_4AA4C();
    v61 = v56 + v58;
    v11 = v57;
    v50 = v71;
    v62 = v59;
    v21 = v76;
    (*(*(v60 - 8) + 104))(v61, v62, v60);
    *v56 = swift_getKeyPath();
    sub_41BD8(v53, v21);
    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  (*(v11 + 56))(v21, v63, 1, v79);
  sub_419BC(v21, v18);
  v65 = v77;
  v64 = v78;
  *v78 = v50;
  v64[1] = v65;
  v64[2] = v51;
  v64[3] = v24;
  v66 = sub_14628(&qword_7C148, &qword_53F08);
  sub_419BC(v18, v64 + *(v66 + 48));
  sub_3CC08(v50, v65, v51, v24);
  sub_3CC4C(v50, v65, v51, v24);
  sub_41A2C(v21);
  sub_41A2C(v18);
  return sub_3CC4C(v50, v65, v51, v24);
}

id CARSpinnerHeaderView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_4B5EC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithReuseIdentifier:v3];

  return v4;
}

id CARSpinnerHeaderView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title];
  *v3 = 0;
  v3[1] = 0;
  v2[OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning] = 0;
  if (a2)
  {
    v4 = sub_4B5EC();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v2;
  v7.super_class = type metadata accessor for CARSpinnerHeaderView();
  v5 = objc_msgSendSuper2(&v7, "initWithReuseIdentifier:", v4);

  return v5;
}

id CRSettingsHeaderCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id CARSpinnerHeaderView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CARSpinnerHeaderView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id CARSpinnerHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARSpinnerHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_419BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7C140, &qword_53F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_41A2C(uint64_t a1)
{
  v2 = sub_14628(&qword_7C140, &qword_53F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_41A94()
{
  result = qword_7C150;
  if (!qword_7C150)
  {
    sub_4AF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C150);
  }

  return result;
}

uint64_t sub_41B10(uint64_t a1)
{
  v2 = sub_4AA4C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_4ABDC();
}

uint64_t sub_41BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7C138, &qword_53EF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_41C84(uint64_t a1, unsigned __int8 a2)
{
  sub_4BACC();
  sub_4BADC(a2);
  sub_4B90C();
  return sub_4BAEC();
}

Swift::Int sub_41CE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_4BACC();
  sub_4BADC(v2);
  sub_4B90C();
  return sub_4BAEC();
}

uint64_t sub_41D44()
{
  v1 = *v0;
  sub_4BADC(*(v0 + 8));
  return sub_4B90C();
}

Swift::Int sub_41D88()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_4BACC();
  sub_4BADC(v2);
  sub_4B90C();
  return sub_4BAEC();
}

id sub_41DFC()
{
  v0 = objc_allocWithZone(CRPairedVehicleManager);

  return [v0 init];
}

uint64_t sub_41E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_14628(&qword_7C168, &qword_53F70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  *(swift_allocObject() + 16) = a1;
  v8 = a1;
  sub_14628(&qword_7C170, &qword_53F78);
  v9 = sub_4A83C();
  v10 = sub_1D648(&qword_7C178, &qword_53F80);
  v11 = sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView);
  v12 = sub_14854();
  v13 = sub_445AC();
  v16[2] = v9;
  v16[3] = &type metadata for Route;
  v16[4] = v10;
  v16[5] = v11;
  v16[6] = v12;
  v16[7] = v13;
  swift_getOpaqueTypeConformance2();
  sub_4B59C();
  *(swift_allocObject() + 16) = v8;
  sub_44858();
  v14 = v8;
  sub_4B55C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_42070(void *a1)
{
  v2 = sub_4B8DC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_4A86C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_4A83C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B8CC();
  sub_4A84C();
  sub_4A82C();
  *(swift_allocObject() + 16) = a1;
  v11 = a1;
  sub_14628(&qword_7C178, &qword_53F80);
  sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView);
  sub_14854();
  sub_445AC();
  sub_4B1EC();

  return (*(v7 + 8))(v10, v6);
}

void sub_422DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v58 = a3;
  v4 = sub_4A86C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v55 = sub_4A83C();
  v51 = *(v55 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin(v55);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_14628(&qword_7C270, &qword_54188);
  v9 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v11 = (&v51 - v10);
  v53 = sub_14628(&qword_7C278, &qword_54190);
  v12 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v14 = &v51 - v13;
  v57 = sub_14628(&qword_7C198, &qword_53F88);
  v15 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v54 = &v51 - v16;
  v17 = sub_4A6AC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CRHomeScreenLayoutView();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *a1;
  if (!*(a1 + 8))
  {
    v33 = [*a1 identifier];
    if (v33)
    {
      v34 = v33;
      sub_4A68C();

      sub_4A65C();
      (*(v18 + 8))(v21, v17);
      v35 = [v26 certificateSerialNumber];
      if (v35)
      {
        v36 = v35;
        v37 = sub_4A64C();
        v39 = v38;

        v40 = objc_allocWithZone(CRHomeScreenPersistenceManager);
        v41 = sub_4B5EC();

        isa = sub_4A63C().super.isa;
        v43 = [v40 initWithVehicleId:v41 certificateSerial:isa];

        sub_1475C(v37, v39);
        sub_288FC(v43, v25);
        sub_24718(v25, v14);
        swift_storeEnumTagMultiPayload();
        sub_44E10(&qword_7AC30, type metadata accessor for CRHomeScreenLayoutView);
        sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView);
        v44 = v54;
        sub_4AE7C();
        sub_44EC4(v44, v11);
        swift_storeEnumTagMultiPayload();
        sub_14628(&qword_7C1A8, &qword_53F90);
        sub_44638();
        sub_44724();
        sub_4AE7C();
        sub_1E284(v44, &qword_7C198, &qword_53F88);
        sub_44F34(v25);
        return;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (*(a1 + 8) == 1)
  {
    v27 = objc_opt_self();
    v28 = [objc_allocWithZone(CRFeatureAvailability) init];
    v29 = [v27 specifierForStoredVehicle:v26 vehicleManager:v52 featureAvailability:v28];

    if (v29)
    {
      sub_4A85C();
      sub_4A82C();
      v30 = v51;
      v31 = v55;
      (*(v51 + 16))(v14, v8, v55);
      swift_storeEnumTagMultiPayload();
      sub_44E10(&qword_7AC30, type metadata accessor for CRHomeScreenLayoutView);
      sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView);
      v32 = v54;
      sub_4AE7C();
      sub_44EC4(v32, v11);
      swift_storeEnumTagMultiPayload();
      sub_14628(&qword_7C1A8, &qword_53F90);
      sub_44638();
      sub_44724();
      sub_4AE7C();
      sub_1E284(v32, &qword_7C198, &qword_53F88);
      (*(v30 + 8))(v8, v31);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v45 = sub_44B94(*a1);
  if (v45)
  {
    sub_34154(v45, v59);
    v46 = v59[0];
    v47 = v59[1];
    v48 = v59[2];
    v49 = v59[3];
    v50 = v59[4];
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
  }

  *v11 = v46;
  v11[1] = v47;
  v11[2] = v48;
  v11[3] = v49;
  v11[4] = v50;
  swift_storeEnumTagMultiPayload();
  sub_14628(&qword_7C1A8, &qword_53F90);
  sub_44638();
  sub_44724();
  sub_4AE7C();
}

uint64_t sub_42A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = sub_4AB0C();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = sub_4A93C();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v10 = sub_4A62C();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  sub_4B6FC();
  v3[31] = sub_4B6EC();
  v14 = sub_4B6DC();

  return _swift_task_switch(sub_42C18, v14, v13);
}

uint64_t sub_42C18()
{
  v114 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[16];

  sub_4B57C();
  v101 = sub_49558();
  v102 = *(v8 + 16);
  v102(v6);
  v99 = *(v5 + 16);
  v99(v3, v2, v4);
  v10 = sub_4A91C();
  v11 = sub_4B7DC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[29];
  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[25];
  v18 = v0[21];
  v17 = v0[22];
  if (v12)
  {
    v111 = v0[21];
    v19 = swift_slowAlloc();
    v106 = v11;
    v20 = swift_slowAlloc();
    v113 = v20;
    *v19 = 136446210;
    sub_44E10(&qword_7C260, &type metadata accessor for URL);
    v21 = sub_4BA6C();
    v109 = v16;
    v23 = v22;
    v105 = *(v14 + 8);
    v105(v13, v15);
    v24 = sub_43F34(v21, v23, &v113);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_0, v10, v106, "Received deep link url %{public}s", v19, 0xCu);
    sub_14710(v20);

    v25 = *(v17 + 8);
    v26 = v109;
    v27 = v111;
  }

  else
  {

    v105 = *(v14 + 8);
    v105(v13, v15);
    v25 = *(v17 + 8);
    v26 = v16;
    v27 = v18;
  }

  v100 = v25;
  v25(v26, v27);
  v28 = v0[30];
  v29 = v0[20];
  v30 = v0[16];
  sub_4B56C();
  v31 = sub_4A61C();
  v32 = v31;
  if (*(v31 + 2) >= 3uLL && (*(v31 + 4) == 47 && *(v31 + 5) == 0xE100000000000000 || (sub_4BA8C() & 1) != 0) && ((result = *(v32 + 6), result == 0x59414C50524143) && *(v32 + 7) == 0xE700000000000000 || (result = sub_4BA8C(), (result & 1) != 0)))
  {
    v34 = *(v32 + 2);
    if (v34 < 2)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v34 - 2 > *(v32 + 3) >> 1)
    {
      v32 = sub_43E28(isUniquelyReferenced_nonNull_native, v34, 1, v32);
    }

    result = sub_44D50(0, 2, 0);
    v36 = 0;
    v112 = v32;
    v37 = *(v32 + 2);
    if (v37 != 1)
    {
      if (v37)
      {
        v36 = 0;
        v38 = (v32 + 56);
        v39 = 1;
        while (1)
        {
          if (v37 == v39)
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (v39 >= *(v32 + 2))
          {
            goto LABEL_47;
          }

          v40 = *(v38 - 1);
          v41 = *v38;
          v42 = *(v38 - 3) == 0x656C6369686576 && *(v38 - 2) == 0xE700000000000000;
          if (v42 || (sub_4BA8C() & 1) != 0)
          {
            v107 = v0[17];
            v110 = v36;
            v43 = swift_allocObject();
            *(v43 + 16) = 0;
            v44 = swift_allocObject();
            v44[2] = v43;
            v44[3] = v40;
            v44[4] = v41;
            v0[6] = sub_44E98;
            v0[7] = v44;
            v0[2] = _NSConcreteStackBlock;
            v0[3] = 1107296256;
            v0[4] = sub_43B10;
            v0[5] = &unk_6F8E0;
            v45 = _Block_copy(v0 + 2);
            v46 = v0[7];
            swift_bridgeObjectRetain_n();

            [v107 syncFetchAllVehiclesWithCompletion:v45];
            _Block_release(v45);
            swift_beginAccess();
            v47 = *(v43 + 16);
            v48 = v47;

            if (!v47)
            {
              v53 = v40;
              (v102)(v0[24], v101, v0[21]);

              v54 = sub_4A91C();
              v55 = sub_4B7EC();

              v56 = os_log_type_enabled(v54, v55);
              v57 = v0[24];
              v59 = v0[21];
              v58 = v0[22];
              v60 = v41;
              if (v56)
              {
                v61 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                v113 = v62;
                *v61 = 136315138;
                v63 = sub_43F34(v53, v60, &v113);

                *(v61 + 4) = v63;
                _os_log_impl(&dword_0, v54, v55, "Invalid vehicle identifier: %s", v61, 0xCu);
                sub_14710(v62);
              }

              else
              {
              }

              v100(v57, v59);
              v64 = v0[20];
              v65 = v0[15];
              sub_4B58C();

              goto LABEL_43;
            }

            v49 = v0[20];

            v0[13] = v47;
            *(v0 + 112) = 1;
            sub_14854();
            result = sub_4AAEC();
            v36 = v47;
            v32 = v112;
          }

          else
          {
            if ((v40 != 0x73746567646977 || v41 != 0xE700000000000000) && (sub_4BA8C() & 1) == 0 || !v36)
            {
              v66 = v0[30];
              v67 = v0[28];
              v68 = v0[26];
              (v102)(v0[23], v101, v0[21]);
              v99(v67, v66, v68);
              v69 = sub_4A91C();
              v70 = sub_4B7EC();
              v71 = os_log_type_enabled(v69, v70);
              v72 = v0[27];
              v73 = v0[28];
              v74 = v0[26];
              v75 = v0[23];
              v108 = v0[22];
              v76 = v0[21];
              if (v71)
              {
                v77 = swift_slowAlloc();
                v113 = swift_slowAlloc();
                *v77 = 136315394;
                sub_44E10(&qword_7C260, &type metadata accessor for URL);
                v103 = v76;
                v104 = v75;
                v78 = sub_4BA6C();
                v80 = v79;
                v105(v73, v74);
                v81 = sub_43F34(v78, v80, &v113);

                *(v77 + 4) = v81;
                *(v77 + 12) = 2080;

                v82 = sub_4B6AC();
                v84 = v83;

                v85 = sub_43F34(v82, v84, &v113);

                *(v77 + 14) = v85;
                _os_log_impl(&dword_0, v69, v70, "Unable to parse deeplink url %s with components: %s", v77, 0x16u);
                swift_arrayDestroy();

                v87 = v103;
                v86 = v104;
              }

              else
              {

                v105(v73, v74);
                v86 = v75;
                v87 = v76;
              }

              v100(v86, v87);
              goto LABEL_42;
            }

            v50 = v0[20];
            v0[11] = v36;
            *(v0 + 96) = 2;
            sub_14854();
            result = sub_4AAEC();
          }

          ++v39;
          v38 += 2;
          if (v37 == v39)
          {
            goto LABEL_42;
          }
        }
      }

      goto LABEL_49;
    }

LABEL_42:
    v88 = v0[20];
    v89 = v0[15];
    sub_4B58C();
  }

  else
  {
    v51 = v0[20];
    v52 = v0[15];
    sub_4B58C();
  }

LABEL_43:
  v91 = v0[29];
  v90 = v0[30];
  v92 = v0[27];
  v93 = v0[28];
  v95 = v0[25];
  v94 = v0[26];
  v97 = v0[23];
  v96 = v0[24];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v105(v90, v94);

  v98 = v0[1];

  return v98();
}

void sub_43620(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v8 = sub_4A6AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_4A93C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v48 - v19;
  if (a2)
  {
    swift_errorRetain();
    v21 = sub_49558();
    (*(v14 + 16))(v20, v21, v13);
    swift_errorRetain();
    v22 = sub_4A91C();
    v23 = sub_4B7EC();

    v24 = v14;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = v13;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_0, v22, v23, "Error fetching all vehicles: %@", v26, 0xCu);
      sub_1E284(v27, &qword_7AD38, &qword_52780);

      v13 = v25;
    }

    else
    {
    }

    (*(v24 + 8))(v20, v13);
  }

  else
  {
    v48 = a3;
    if (a1)
    {
      v29 = a1 & 0xFFFFFFFFFFFFFF8;
      v50 = a1;
      if (a1 >> 62)
      {
        goto LABEL_29;
      }

      v30 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      for (i = v48; v30; i = v48)
      {
        v32 = 0;
        v49 = v50 & 0xC000000000000001;
        v33 = (v9 + 8);
        while (1)
        {
          if (v49)
          {
            v34 = sub_4B9AC();
          }

          else
          {
            if (v32 >= *(v29 + 16))
            {
              goto LABEL_28;
            }

            v34 = *(v50 + 8 * v32 + 32);
          }

          v35 = v34;
          v36 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          v9 = v30;
          v37 = [v34 identifier];
          if (!v37)
          {
            __break(1u);
            return;
          }

          v38 = v37;
          sub_4A68C();

          v39 = sub_4A65C();
          v41 = v40;
          (*v33)(v12, v8);
          if (v39 == v51 && v41 == v52)
          {

            goto LABEL_26;
          }

          v42 = sub_4BA8C();

          if (v42)
          {
            goto LABEL_26;
          }

          ++v32;
          v30 = v9;
          if (v36 == v9)
          {
            v35 = 0;
LABEL_26:
            i = v48;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v30 = sub_4BA5C();
      }

      v35 = 0;
LABEL_31:
      swift_beginAccess();
      v47 = *(i + 16);
      *(i + 16) = v35;
    }

    else
    {
      v43 = sub_49558();
      (*(v14 + 16))(v18, v43, v13);
      v44 = sub_4A91C();
      v45 = sub_4B7EC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_0, v44, v45, "No vehicles found", v46, 2u);
      }

      (*(v14 + 8))(v18, v13);
    }
  }
}

uint64_t sub_43B10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_16F40(0, &qword_7AC08, CRVehicle_ptr);
    v4 = sub_4B69C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_43BB4@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_14628(&qword_7C168, &qword_53F70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - v5;
  v7 = *v1;
  *(swift_allocObject() + 16) = v7;
  v8 = v7;
  sub_14628(&qword_7C170, &qword_53F78);
  v9 = sub_4A83C();
  v10 = sub_1D648(&qword_7C178, &qword_53F80);
  v11 = sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView);
  v12 = sub_14854();
  v13 = sub_445AC();
  v16[2] = v9;
  v16[3] = &type metadata for Route;
  v16[4] = v10;
  v16[5] = v11;
  v16[6] = v12;
  v16[7] = v13;
  swift_getOpaqueTypeConformance2();
  sub_4B59C();
  *(swift_allocObject() + 16) = v8;
  sub_44858();
  v14 = v8;
  sub_4B55C();
  return (*(v3 + 8))(v6, v2);
}

id sub_43DEC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(CRPairedVehicleManager) init];
  *a1 = result;
  return result;
}

char *sub_43E28(char *result, int64_t a2, char a3, char *a4)
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
    sub_14628(&qword_7B6F8, &qword_54180);
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

uint64_t sub_43F34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_44000(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_16250(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_14710(v11);
  return v7;
}

unint64_t sub_44000(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_4410C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_4B9CC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_4410C(uint64_t a1, unint64_t a2)
{
  v4 = sub_44158(a1, a2);
  sub_44288(&off_6F710);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_44158(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_44374(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_4B9CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_4B63C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_44374(v10, 0);
        result = sub_4B98C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_44288(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_443E8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_44374(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_14628(&qword_7C268, &qword_54178);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_443E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_14628(&qword_7C268, &qword_54178);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_444DC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
LABEL_4:
        sub_16F40(0, &qword_7C280, NSObject_ptr);
        return sub_4B8FC() & 1;
      }
    }

    else if (a4 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_4456C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_445AC()
{
  result = qword_7C188;
  if (!qword_7C188)
  {
    sub_1D648(&qword_7C178, &qword_53F80);
    sub_44638();
    sub_44724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C188);
  }

  return result;
}

unint64_t sub_44638()
{
  result = qword_7C190;
  if (!qword_7C190)
  {
    sub_1D648(&qword_7C198, &qword_53F88);
    sub_44E10(&qword_7AC30, type metadata accessor for CRHomeScreenLayoutView);
    sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C190);
  }

  return result;
}

unint64_t sub_44724()
{
  result = qword_7C1A0;
  if (!qword_7C1A0)
  {
    sub_1D648(&qword_7C1A8, &qword_53F90);
    sub_14800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C1A0);
  }

  return result;
}

uint64_t sub_447A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E76C;

  return sub_42A38(a1, a2, v6);
}

unint64_t sub_44858()
{
  result = qword_7C1B0;
  if (!qword_7C1B0)
  {
    sub_1D648(&qword_7C168, &qword_53F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C1B0);
  }

  return result;
}

unint64_t sub_448C0()
{
  result = qword_7C1B8;
  if (!qword_7C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C1B8);
  }

  return result;
}

unint64_t sub_44918()
{
  result = qword_7C1C0;
  if (!qword_7C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C1C0);
  }

  return result;
}

uint64_t sub_44994(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_449A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}