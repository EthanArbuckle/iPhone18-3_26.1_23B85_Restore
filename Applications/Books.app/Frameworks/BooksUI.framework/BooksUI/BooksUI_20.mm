uint64_t sub_209524@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickLockupView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1F98F8(v4, a1);
}

unint64_t sub_2095A4()
{
  result = qword_325BE0;
  if (!qword_325BE0)
  {
    sub_2F9C(&qword_325BA0, &qword_288C40);
    sub_209630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325BE0);
  }

  return result;
}

unint64_t sub_209630()
{
  result = qword_325BE8;
  if (!qword_325BE8)
  {
    sub_2F9C(&qword_325B98, &qword_288C38);
    sub_2096E8();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325BE8);
  }

  return result;
}

unint64_t sub_2096E8()
{
  result = qword_325BF0;
  if (!qword_325BF0)
  {
    sub_2F9C(&qword_325BF8, &qword_288C68);
    sub_8E38(&qword_325C00, &qword_325C08, &qword_288C70);
    sub_8E38(&qword_318EB8, &qword_318EC0, &unk_26C3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325BF0);
  }

  return result;
}

unint64_t sub_2097CC()
{
  result = qword_325C10;
  if (!qword_325C10)
  {
    sub_2F9C(&qword_325BB0, &qword_288C50);
    sub_2F9C(&qword_325BA0, &qword_288C40);
    sub_261FA0();
    sub_2095A4();
    sub_20DBBC(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3224A8, &qword_318978, &qword_26BEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325C10);
  }

  return result;
}

uint64_t sub_209940(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_2EF0(&qword_319858, &unk_2725D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_2EF0(&qword_325C18, &qword_288CD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = type metadata accessor for BrickLockupModel(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_209B78(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
    return result;
  }

  v8 = sub_2EF0(&qword_319858, &unk_2725D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_2EF0(&qword_325C18, &qword_288CD0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = type metadata accessor for BrickLockupModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

void sub_209DA0()
{
  sub_5027C();
  if (v0 <= 0x3F)
  {
    sub_14C14();
    if (v1 <= 0x3F)
    {
      sub_209F0C(319, &qword_3198C8, &type metadata accessor for DynamicTypeSize);
      if (v2 <= 0x3F)
      {
        sub_209F0C(319, &qword_317C68, type metadata accessor for SizeConstants);
        if (v3 <= 0x3F)
        {
          sub_209F0C(319, &qword_316FE8, type metadata accessor for ColorConstants);
          if (v4 <= 0x3F)
          {
            sub_209F0C(319, &unk_325C88, type metadata accessor for FontConstants.Brick);
            if (v5 <= 0x3F)
            {
              type metadata accessor for BrickLockupModel(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_209F0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_209F60()
{
  sub_2F9C(&qword_325BB0, &qword_288C50);
  sub_2F9C(&qword_3174E8, &qword_269970);
  sub_2097CC();
  sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20A02C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    sub_20A0B0();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20A0B0()
{
  result = qword_325E68;
  if (!qword_325E68)
  {
    sub_2F9C(&qword_325DE0, &qword_288DF8);
    sub_20A13C();
    sub_20A224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325E68);
  }

  return result;
}

unint64_t sub_20A13C()
{
  result = qword_325E70;
  if (!qword_325E70)
  {
    sub_2F9C(&qword_325DF0, &qword_288E08);
    sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0);
    sub_20DBBC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325E70);
  }

  return result;
}

unint64_t sub_20A224()
{
  result = qword_325E78;
  if (!qword_325E78)
  {
    sub_2F9C(&qword_325DC0, &qword_288DD8);
    sub_8E38(&qword_325E80, &qword_325E88, &qword_288E60);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325E78);
  }

  return result;
}

unint64_t sub_20A308()
{
  result = qword_325E90;
  if (!qword_325E90)
  {
    sub_2F9C(&qword_325DA0, &qword_288DB8);
    sub_20DB28(&qword_325E98, &qword_325DB0, &qword_288DC8, sub_20A3EC);
    sub_8E38(&qword_325EB8, &qword_325D90, &qword_288DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325E90);
  }

  return result;
}

unint64_t sub_20A3EC()
{
  result = qword_325EA0;
  if (!qword_325EA0)
  {
    sub_2F9C(&qword_325E28, &qword_288E38);
    sub_8E38(&qword_325EA8, &qword_325EB0, &qword_288E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325EA0);
  }

  return result;
}

unint64_t sub_20A4A4()
{
  result = qword_325EC0;
  if (!qword_325EC0)
  {
    sub_2F9C(&qword_325D70, &qword_288D88);
    sub_8E38(&qword_325E50, &qword_325D80, &qword_288D98);
    sub_8E38(&qword_325E58, &qword_325D60, &qword_288D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325EC0);
  }

  return result;
}

unint64_t sub_20A584()
{
  result = qword_325EC8;
  if (!qword_325EC8)
  {
    sub_2F9C(&qword_325DF8, &qword_288E10);
    sub_20A02C(&qword_325E60, &qword_325DE8, &qword_288E00, sub_20A308);
    sub_20A4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325EC8);
  }

  return result;
}

unint64_t sub_20A63C()
{
  result = qword_325ED0;
  if (!qword_325ED0)
  {
    sub_2F9C(&qword_325D48, &qword_288D60);
    sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
    sub_20A8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325ED0);
  }

  return result;
}

unint64_t sub_20A6F4()
{
  result = qword_325EE0;
  if (!qword_325EE0)
  {
    sub_2F9C(&qword_325D18, &qword_288D30);
    sub_2F9C(&qword_325D20, &qword_288D38);
    sub_2F9C(&qword_3174E8, &qword_269970);
    sub_8E38(&qword_325EE8, &qword_325D20, &qword_288D38);
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_325D00, &qword_288D18);
    sub_8E38(&qword_325EF0, &qword_325D00, &qword_288D18);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325EE0);
  }

  return result;
}

unint64_t sub_20A8B0()
{
  result = qword_325EF8;
  if (!qword_325EF8)
  {
    sub_2F9C(&qword_325CE8, &qword_288D00);
    sub_2F9C(&qword_325CF0, &qword_288D08);
    sub_2F9C(&qword_3174E8, &qword_269970);
    sub_8E38(&qword_325F00, &qword_325CF0, &qword_288D08);
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_325CD0, &qword_288CE8);
    sub_8E38(&qword_325F08, &qword_325CD0, &qword_288CE8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325EF8);
  }

  return result;
}

uint64_t sub_20AA6C()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for BrickLockupView();
  v55 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v55) & ~v55;
  v53 = *(*(v5 - 1) + 64);
  v7 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v54 = *(v2 + 8);
  v54(v0 + v3, v1);
  v56 = v0;
  v10 = (v0 + v6);
  if (*(v0 + v6 + 40))
  {
    sub_3080((v0 + v6));
  }

  else
  {
    v11 = *v10;
  }

  sub_3074(v10[6], *(v10 + 56));
  v12 = v5[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
    v14 = *(v10 + v12);
  }

  v15 = v10 + v5[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v17 = sub_261690();
    (*(*(v17 - 8) + 8))(&v15[v16], v17);
  }

  else
  {
    v18 = *v15;
  }

  v19 = v8;
  v20 = v53 + v8;
  v21 = v5[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_261180();
    (*(*(v22 - 8) + 8))(v10 + v21, v22);
  }

  else
  {
    v23 = *(v10 + v21);
  }

  v24 = v6 + v20;
  v25 = v10 + v5[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v27 = sub_261690();
    (*(*(v27 - 8) + 8))(&v25[v26], v27);
  }

  else
  {
    v28 = *v25;
  }

  v29 = v24 & ~v19;
  v30 = v10 + v5[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v32 = v54;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v54(v30, v1);
        v33 = &qword_325BB8;
        v34 = &qword_2891B0;
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_38;
        }

        v54(v30, v1);
        v33 = &qword_325BC0;
        v34 = &qword_288C58;
      }

      v42 = sub_2EF0(v33, v34);
      v43 = *(v42 + 48);
      if (!(*(v2 + 48))(v30 + v43, 1, v1))
      {
        v54(v30 + v43, v1);
      }

      v44 = *(v30 + *(v42 + 64) + 8);
    }

    else
    {
      v37 = *(v30 + 8);
    }

LABEL_37:

    goto LABEL_38;
  }

  v32 = v54;
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v54(v30, v1);
      v35 = &qword_325BD0;
      v36 = &qword_288C60;
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_38;
      }

      v54(v30, v1);
      v35 = &qword_325BD8;
      v36 = &unk_289180;
    }

    v45 = sub_2EF0(v35, v36);
    v46 = v45[12];
    if (!(*(v2 + 48))(v30 + v46, 1, v1))
    {
      v54(v30 + v46, v1);
    }

    v47 = *(v30 + v45[16] + 8);

    v48 = *(v30 + v45[20]);
    goto LABEL_37;
  }

  v54(v30, v1);
  v38 = sub_2EF0(&qword_325BC8, &unk_2891A0);
  v39 = v38[12];
  if (!(*(v2 + 48))(v30 + v39, 1, v1))
  {
    v54(v30 + v39, v1);
  }

  v40 = *(v30 + v38[16] + 8);

  v41 = (v30 + v38[20]);
  v52 = v41[15];
  sub_57200(*v41, v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v41[11], v41[12], v41[13], v41[14]);
LABEL_38:
  v49 = *(v30 + *(type metadata accessor for BrickLockupModel(0) + 24) + 8);

  if (!(*(v2 + 48))(v56 + v29, 1, v1))
  {
    v32(v56 + v29, v1);
  }

  v50 = *(v56 + ((v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_20B130@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  return sub_204698(a1, v2 + v6, v2 + v9, v2 + v12, v14, v15, a2);
}

double sub_20B2C0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for BrickLockupView() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_201258(v7, v8, a1, v5);
}

uint64_t sub_20B374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v2 + v13);
  return sub_201480(a1, (v2 + v6), v2 + v9, v2 + v12, *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, &qword_326098, &qword_289050, &qword_3260A0, &qword_289058, &qword_3260A8, &qword_289060, &qword_3260B0, &qword_289068, &qword_3260B8, &qword_289070);
}

uint64_t sub_20B56C()
{
  v1 = type metadata accessor for BrickLockupView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
    v5 = *v4;
  }

  sub_3074(v4[6], *(v4 + 56));
  v6 = v1[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = v4 + v1[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v11 = sub_261690();
    (*(*(v11 - 8) + 8))(&v9[v10], v11);
  }

  else
  {
    v12 = *v9;
  }

  v13 = v1[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_261180();
    (*(*(v14 - 8) + 8))(v4 + v13, v14);
  }

  else
  {
    v15 = *(v4 + v13);
  }

  v16 = v4 + v1[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v18 = sub_261690();
    (*(*(v18 - 8) + 8))(&v16[v17], v18);
  }

  else
  {
    v19 = *v16;
  }

  v20 = v4 + v1[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v51 = v3;
        v33 = sub_260BD0();
        v34 = *(v33 - 8);
        v35 = *(v34 + 8);
        v35(v20, v33);
        v36 = sub_2EF0(&qword_325BC8, &unk_2891A0);
        v37 = v36[12];
        if (!(*(v34 + 48))(v20 + v37, 1, v33))
        {
          v35(v20 + v37, v33);
        }

        v38 = *(v20 + v36[16] + 8);

        v39 = (v20 + v36[20]);
        v50 = v39[15];
        sub_57200(*v39, v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], v39[13], v39[14]);
        goto LABEL_38;
      case 4:
        v51 = v3;
        v27 = sub_260BD0();
        v28 = *(v27 - 8);
        v29 = *(v28 + 8);
        v29(v20, v27);
        v30 = &qword_325BD0;
        v31 = &qword_288C60;
        break;
      case 5:
        v51 = v3;
        v27 = sub_260BD0();
        v28 = *(v27 - 8);
        v29 = *(v28 + 8);
        v29(v20, v27);
        v30 = &qword_325BD8;
        v31 = &unk_289180;
        break;
      default:
        goto LABEL_39;
    }

    v43 = sub_2EF0(v30, v31);
    v44 = v43[12];
    if (!(*(v28 + 48))(v20 + v44, 1, v27))
    {
      v29(v20 + v44, v27);
    }

    v45 = *(v20 + v43[16] + 8);

    v46 = *(v20 + v43[20]);
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v32 = *(v20 + 8);

        goto LABEL_39;
      case 1:
        v51 = v3;
        v22 = sub_260BD0();
        v23 = *(v22 - 8);
        v24 = *(v23 + 8);
        v24(v20, v22);
        v25 = &qword_325BB8;
        v26 = &qword_2891B0;
        break;
      case 2:
        v51 = v3;
        v22 = sub_260BD0();
        v23 = *(v22 - 8);
        v24 = *(v23 + 8);
        v24(v20, v22);
        v25 = &qword_325BC0;
        v26 = &qword_288C58;
        break;
      default:
        goto LABEL_39;
    }

    v40 = sub_2EF0(v25, v26);
    v41 = *(v40 + 48);
    if (!(*(v23 + 48))(v20 + v41, 1, v22))
    {
      v24(v20 + v41, v22);
    }

    v42 = *(v20 + *(v40 + 64) + 8);
  }

LABEL_38:
  v3 = v51;
LABEL_39:
  v47 = *(v20 + *(type metadata accessor for BrickLockupModel(0) + 24) + 8);

  v48 = *(v0 + ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

double sub_20BC70@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for BrickLockupView() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_201030(v7, v8, a1, v5);
}

uint64_t sub_20BD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v2 + v13);
  return sub_201480(a1, (v2 + v6), v2 + v9, v2 + v12, *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, &qword_326070, &qword_289028, &qword_326078, &qword_289030, &qword_326080, &qword_289038, &qword_326088, &qword_289040, &qword_326090, &qword_289048);
}

uint64_t sub_20BF18()
{
  v1 = type metadata accessor for BrickLockupView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
    v5 = *v4;
  }

  sub_3074(v4[6], *(v4 + 56));
  v6 = v1[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = v4 + v1[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v11 = sub_261690();
    (*(*(v11 - 8) + 8))(&v9[v10], v11);
  }

  else
  {
    v12 = *v9;
  }

  v13 = v1[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_261180();
    (*(*(v14 - 8) + 8))(v4 + v13, v14);
  }

  else
  {
    v15 = *(v4 + v13);
  }

  v16 = v4 + v1[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v18 = sub_261690();
    (*(*(v18 - 8) + 8))(&v16[v17], v18);
  }

  else
  {
    v19 = *v16;
  }

  v20 = v4 + v1[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v52 = v3;
        v33 = sub_260BD0();
        v34 = *(v33 - 8);
        v35 = *(v34 + 8);
        v35(v20, v33);
        v36 = sub_2EF0(&qword_325BC8, &unk_2891A0);
        v37 = v36[12];
        if (!(*(v34 + 48))(v20 + v37, 1, v33))
        {
          v35(v20 + v37, v33);
        }

        v38 = *(v20 + v36[16] + 8);

        v39 = (v20 + v36[20]);
        v50 = v39[15];
        sub_57200(*v39, v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], v39[13], v39[14]);
        goto LABEL_38;
      case 4:
        v52 = v3;
        v27 = sub_260BD0();
        v28 = *(v27 - 8);
        v29 = *(v28 + 8);
        v29(v20, v27);
        v30 = &qword_325BD0;
        v31 = &qword_288C60;
        break;
      case 5:
        v52 = v3;
        v27 = sub_260BD0();
        v28 = *(v27 - 8);
        v29 = *(v28 + 8);
        v29(v20, v27);
        v30 = &qword_325BD8;
        v31 = &unk_289180;
        break;
      default:
        goto LABEL_39;
    }

    v43 = sub_2EF0(v30, v31);
    v44 = v43[12];
    if (!(*(v28 + 48))(v20 + v44, 1, v27))
    {
      v29(v20 + v44, v27);
    }

    v45 = *(v20 + v43[16] + 8);

    v46 = *(v20 + v43[20]);
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v32 = *(v20 + 8);

        goto LABEL_39;
      case 1:
        v52 = v3;
        v22 = sub_260BD0();
        v23 = *(v22 - 8);
        v24 = *(v23 + 8);
        v24(v20, v22);
        v25 = &qword_325BB8;
        v26 = &qword_2891B0;
        break;
      case 2:
        v52 = v3;
        v22 = sub_260BD0();
        v23 = *(v22 - 8);
        v24 = *(v23 + 8);
        v24(v20, v22);
        v25 = &qword_325BC0;
        v26 = &qword_288C58;
        break;
      default:
        goto LABEL_39;
    }

    v40 = sub_2EF0(v25, v26);
    v41 = *(v40 + 48);
    if (!(*(v23 + 48))(v20 + v41, 1, v22))
    {
      v24(v20 + v41, v22);
    }

    v42 = *(v20 + *(v40 + 64) + 8);
  }

LABEL_38:
  v3 = v52;
LABEL_39:
  v47 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = *(v20 + *(type metadata accessor for BrickLockupModel(0) + 24) + 8);

  v51 = *(v0 + v47 + 120);
  sub_57200(*(v0 + v47), *(v0 + v47 + 8), *(v0 + v47 + 16), *(v0 + v47 + 24), *(v0 + v47 + 32), *(v0 + v47 + 40), *(v0 + v47 + 48), *(v0 + v47 + 56), *(v0 + v47 + 64), *(v0 + v47 + 72), *(v0 + v47 + 80), *(v0 + v47 + 88), *(v0 + v47 + 96), *(v0 + v47 + 104), *(v0 + v47 + 112));

  return swift_deallocObject();
}

double sub_20C644@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for BrickLockupView() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);

  return sub_200E2C((v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), a1, v5);
}

uint64_t sub_20C6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v2 + v13);
  return sub_201480(a1, (v2 + v6), v2 + v9, v2 + v12, *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, &qword_326048, &qword_289000, &qword_326050, &qword_289008, &qword_326058, &qword_289010, &qword_326060, &qword_289018, &qword_326068, &qword_289020);
}

uint64_t sub_20C8E4()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for BrickLockupView();
  v56 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v56) & ~v56;
  v55 = *(*(v5 - 1) + 64);
  v7 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v57 = *(v2 + 8);
  v57(v0 + v3, v1);
  v10 = (v0 + v6);
  if (*(v0 + v6 + 40))
  {
    sub_3080((v0 + v6));
  }

  else
  {
    v11 = *v10;
  }

  sub_3074(v10[6], *(v10 + 56));
  v12 = v5[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
    v14 = *(v10 + v12);
  }

  v15 = v10 + v5[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v17 = sub_261690();
    (*(*(v17 - 8) + 8))(&v15[v16], v17);
  }

  else
  {
    v18 = *v15;
  }

  v19 = v8;
  v20 = v55 + v8;
  v21 = v5[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_261180();
    (*(*(v22 - 8) + 8))(v10 + v21, v22);
  }

  else
  {
    v23 = *(v10 + v21);
  }

  v24 = v6 + v20;
  v25 = v10 + v5[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v27 = sub_261690();
    (*(*(v27 - 8) + 8))(&v25[v26], v27);
  }

  else
  {
    v28 = *v25;
  }

  v29 = v24 & ~v19;
  v30 = v10 + v5[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v57(v30, v1);
        v32 = &qword_325BB8;
        v33 = &qword_2891B0;
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_38;
        }

        v57(v30, v1);
        v32 = &qword_325BC0;
        v33 = &qword_288C58;
      }

      v41 = sub_2EF0(v32, v33);
      v42 = *(v41 + 48);
      if (!(*(v2 + 48))(v30 + v42, 1, v1))
      {
        v57(v30 + v42, v1);
      }

      v43 = *(v30 + *(v41 + 64) + 8);
    }

    else
    {
      v36 = *(v30 + 8);
    }

LABEL_37:

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v57(v30, v1);
      v34 = &qword_325BD0;
      v35 = &qword_288C60;
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_38;
      }

      v57(v30, v1);
      v34 = &qword_325BD8;
      v35 = &unk_289180;
    }

    v44 = sub_2EF0(v34, v35);
    v45 = v44[12];
    if (!(*(v2 + 48))(v30 + v45, 1, v1))
    {
      v57(v30 + v45, v1);
    }

    v46 = *(v30 + v44[16] + 8);

    v47 = *(v30 + v44[20]);
    goto LABEL_37;
  }

  v57(v30, v1);
  v37 = sub_2EF0(&qword_325BC8, &unk_2891A0);
  v38 = v37[12];
  if (!(*(v2 + 48))(v30 + v38, 1, v1))
  {
    v57(v30 + v38, v1);
  }

  v39 = *(v30 + v37[16] + 8);

  v40 = (v30 + v37[20]);
  v54 = v40[15];
  sub_57200(*v40, v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14]);
LABEL_38:
  v48 = *(v30 + *(type metadata accessor for BrickLockupModel(0) + 24) + 8);

  if (!(*(v2 + 48))(v0 + v29, 1, v1))
  {
    v57(v0 + v29, v1);
  }

  v49 = (((v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
  v51 = *(v0 + v49 + 8);

  v52 = *(v0 + v50 + 8);

  return swift_deallocObject();
}

uint64_t sub_20CFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v2 + v13);
  v16 = *(v2 + v14);
  v17 = *(v2 + v14 + 8);
  v18 = v2 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;
  v20 = *(v18 + 8);

  return sub_202904(a1, v2 + v6, v2 + v9, v2 + v12, v16, v17, v19, v20, a2);
}

uint64_t sub_20D170()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for BrickLockupView();
  v54 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v54) & ~v54;
  v7 = *(*(v5 - 1) + 64) + v6;
  v8 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v55 = *(v8 + 80);
  v53 = *(v8 + 64);
  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  v10 = (v0 + v6);
  if (*(v0 + v6 + 40))
  {
    sub_3080((v0 + v6));
  }

  else
  {
    v11 = *v10;
  }

  v12 = v7 + 7;
  sub_3074(v10[6], *(v10 + 56));
  v13 = v5[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_261690();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
    v15 = *(v10 + v13);
  }

  v16 = v12 & 0xFFFFFFFFFFFFFFF8;
  v17 = v10 + v5[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v19 = sub_261690();
    (*(*(v19 - 8) + 8))(&v17[v18], v19);
  }

  else
  {
    v20 = *v17;
  }

  v21 = v16 + v55;
  v22 = v5[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_261180();
    (*(*(v23 - 8) + 8))(v10 + v22, v23);
  }

  else
  {
    v24 = *(v10 + v22);
  }

  v25 = v21 + 8;
  v26 = v10 + v5[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v28 = sub_261690();
    (*(*(v28 - 8) + 8))(&v26[v27], v28);
  }

  else
  {
    v29 = *v26;
  }

  v30 = v25 & ~v55;
  v31 = v10 + v5[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9(v31, v1);
        v33 = &qword_325BB8;
        v34 = &qword_2891B0;
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_38;
        }

        v9(v31, v1);
        v33 = &qword_325BC0;
        v34 = &qword_288C58;
      }

      v42 = sub_2EF0(v33, v34);
      v43 = *(v42 + 48);
      if (!(*(v2 + 48))(v31 + v43, 1, v1))
      {
        v9(v31 + v43, v1);
      }

      v44 = *(v31 + *(v42 + 64) + 8);
    }

    else
    {
      v37 = *(v31 + 8);
    }

LABEL_37:

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v9(v31, v1);
      v35 = &qword_325BD0;
      v36 = &qword_288C60;
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_38;
      }

      v9(v31, v1);
      v35 = &qword_325BD8;
      v36 = &unk_289180;
    }

    v45 = sub_2EF0(v35, v36);
    v46 = v45[12];
    if (!(*(v2 + 48))(v31 + v46, 1, v1))
    {
      v9(v31 + v46, v1);
    }

    v47 = *(v31 + v45[16] + 8);

    v48 = *(v31 + v45[20]);
    goto LABEL_37;
  }

  v9(v31, v1);
  v38 = sub_2EF0(&qword_325BC8, &unk_2891A0);
  v39 = v38[12];
  if (!(*(v2 + 48))(v31 + v39, 1, v1))
  {
    v9(v31 + v39, v1);
  }

  v40 = *(v31 + v38[16] + 8);

  v41 = (v31 + v38[20]);
  v52 = v41[15];
  sub_57200(*v41, v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v41[11], v41[12], v41[13], v41[14]);
LABEL_38:
  v49 = *(v31 + *(type metadata accessor for BrickLockupModel(0) + 24) + 8);

  if (!(*(v2 + 48))(v0 + v30, 1, v1))
  {
    v9(v0 + v30, v1);
  }

  v50 = *(v0 + ((v53 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_20D804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v2 + v10);
  v14 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  v16 = *(v14 + 8);

  return sub_2057F8(a1, v2 + v9, v2 + v12, v15, v16, a2, v13);
}

uint64_t sub_20D990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_20D9F8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = -1;
  return result;
}

unint64_t sub_20DA30()
{
  result = qword_326030;
  if (!qword_326030)
  {
    sub_2F9C(&qword_326020, &qword_288FB8);
    sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326030);
  }

  return result;
}

double sub_20DAF8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = -256;
  return result;
}

uint64_t sub_20DB28(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DBBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20DC04()
{
  result = qword_326130;
  if (!qword_326130)
  {
    sub_2F9C(&qword_318A08, &qword_26BF58);
    sub_58070();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326130);
  }

  return result;
}

uint64_t sub_20DCBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20DD24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t BrickLockupModel.init(brickType:aspectRatio:axBrickTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for BrickLockupModel(0);
  v11 = (a4 + *(v10 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = sub_20DE4C(a1, a4);
  *(a4 + *(v10 + 20)) = a5;
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t sub_20DE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickLockupModel.BrickType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DED4()
{
  v1 = 0x6169726F74696465;
  v2 = *v0;
  v3 = 0x6F43656C676E6973;
  v4 = 0x7265766F436F7774;
  if (v2 != 4)
  {
    v4 = 0x766F436565726874;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x737265766F436F6ELL;
  if (v2 == 1)
  {
    v5 = 0x6169726F74696465;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFD0(uint64_t a1)
{
  v2 = sub_212F04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E00C(uint64_t a1)
{
  v2 = sub_212F04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E048()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_20E098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E0C0(uint64_t a1)
{
  v2 = sub_2131D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E0FC(uint64_t a1)
{
  v2 = sub_2131D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E138(uint64_t a1)
{
  v2 = sub_213228();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E174(uint64_t a1)
{
  v2 = sub_213228();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E1B0()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 0x6C72556E6F6369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_20E208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E230(uint64_t a1)
{
  v2 = sub_213180();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E26C(uint64_t a1)
{
  v2 = sub_213180();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E2A8()
{
  v1 = 0x656C746974;
  v2 = 0x6C72556E6F6369;
  if (*v0 != 2)
  {
    v2 = 0x6569567265766F63;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20E32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E354(uint64_t a1)
{
  v2 = sub_21312C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E390(uint64_t a1)
{
  v2 = sub_21312C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E3CC(uint64_t a1)
{
  v2 = sub_212F58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E408(uint64_t a1)
{
  v2 = sub_212F58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E444()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6C72556E6F6369;
  v4 = 0x6569567265766F63;
  if (v1 != 3)
  {
    v4 = 0x746E6169726176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214AE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E510(uint64_t a1)
{
  v2 = sub_213084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E54C(uint64_t a1)
{
  v2 = sub_213084();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrickLockupModel.BrickType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v147 = sub_2EF0(&qword_326138, &qword_289140);
  v149 = *(v147 - 8);
  v3 = *(v149 + 64);
  __chkstk_darwin(v147);
  v160 = &v132 - v4;
  v151 = sub_2EF0(&qword_326140, &qword_289148);
  v146 = *(v151 - 8);
  v5 = *(v146 + 64);
  __chkstk_darwin(v151);
  v159 = &v132 - v6;
  v145 = sub_2EF0(&qword_326148, &qword_289150);
  v148 = *(v145 - 8);
  v7 = *(v148 + 64);
  __chkstk_darwin(v145);
  v158 = &v132 - v8;
  v144 = sub_2EF0(&qword_326150, &qword_289158);
  v143 = *(v144 - 8);
  v9 = *(v143 + 64);
  __chkstk_darwin(v144);
  v154 = &v132 - v10;
  v142 = sub_2EF0(&qword_326158, &qword_289160);
  v141 = *(v142 - 8);
  v11 = *(v141 + 64);
  __chkstk_darwin(v142);
  v153 = &v132 - v12;
  v140 = sub_2EF0(&qword_326160, &qword_289168);
  v139 = *(v140 - 8);
  v13 = *(v139 + 64);
  __chkstk_darwin(v140);
  v157 = &v132 - v14;
  v162 = sub_2EF0(&qword_326168, &unk_289170);
  v156 = *(v162 - 8);
  v15 = *(v156 + 64);
  __chkstk_darwin(v162);
  v17 = &v132 - v16;
  v155 = type metadata accessor for BrickLockupModel.BrickType(0);
  v18 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v150 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v152 = &v132 - v21;
  __chkstk_darwin(v22);
  v24 = &v132 - v23;
  __chkstk_darwin(v25);
  v27 = &v132 - v26;
  __chkstk_darwin(v28);
  v30 = &v132 - v29;
  __chkstk_darwin(v31);
  v33 = (&v132 - v32);
  __chkstk_darwin(v34);
  v36 = &v132 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v164 = a1;
  sub_2E18(a1, v37);
  sub_212F04();
  v161 = v17;
  v39 = v163;
  sub_265120();
  if (v39)
  {
    goto LABEL_12;
  }

  v133 = v33;
  v40 = v157;
  v136 = v27;
  v135 = v30;
  v137 = v24;
  v41 = v158;
  v42 = v159;
  v43 = v160;
  v163 = 0;
  v134 = v36;
  v44 = v156;
  v46 = v161;
  v45 = v162;
  v47 = sub_264E00();
  v48 = (2 * *(v47 + 16)) | 1;
  v165 = v47;
  v166 = v47 + 32;
  v167 = 0;
  v168 = v48;
  v49 = sub_6E64();
  if (v49 == 6 || v167 != v168 >> 1)
  {
    v54 = sub_264C10();
    swift_allocError();
    v56 = v55;
    v57 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
    *v56 = v155;
    sub_264D60();
    sub_264BF0();
    (*(*(v54 - 8) + 104))(v56, enum case for DecodingError.typeMismatch(_:), v54);
    swift_willThrow();
  }

  else
  {
    if (v49 <= 2u)
    {
      if (!v49)
      {
        v169 = 0;
        sub_213228();
        v63 = v163;
        sub_264D50();
        if (!v63)
        {
          v64 = v140;
          v78 = sub_264DC0();
          v80 = v79;
          (*(v139 + 8))(v40, v64);
          (*(v44 + 8))(v46, v45);
          swift_unknownObjectRelease();
          v118 = v133;
          *v133 = v78;
          *(v118 + 8) = v80;
          goto LABEL_28;
        }

        goto LABEL_10;
      }

      v50 = v163;
      if (v49 == 1)
      {
        v169 = 1;
        sub_2131D4();
        v51 = v153;
        sub_264D50();
        if (!v50)
        {
          sub_260BD0();
          v169 = 0;
          v52 = sub_2132D0(&qword_315D90, &type metadata accessor for LocalizerRequest);
          v53 = v142;
          v163 = v52;
          sub_264DF0();
          v87 = v51;
          v160 = sub_2EF0(&qword_325BB8, &qword_2891B0);
          v88 = *(v160 + 12);
          v169 = 1;
          sub_264DB0();
          v100 = v160;
          v163 = v88;
          v169 = 2;
          v101 = sub_264DC0();
          v159 = v102;
          v114 = v101;
          v115 = v135;
          v116 = &v135[*(v100 + 16)];
          (*(v141 + 8))(v87, v53);
          v117 = v46;
          v118 = v115;
          (*(v44 + 8))(v117, v45);
          swift_unknownObjectRelease();
          v119 = v159;
          *v116 = v114;
          v116[1] = v119;
LABEL_28:
          swift_storeEnumTagMultiPayload();
          goto LABEL_29;
        }

        goto LABEL_10;
      }

      v169 = 2;
      sub_213180();
      v71 = v154;
      sub_264D50();
      v67 = v45;
      v68 = v44;
      if (v50)
      {
LABEL_23:
        (*(v68 + 8))(v46, v67);
        goto LABEL_11;
      }

      sub_260BD0();
      v169 = 0;
      sub_2132D0(&qword_315D90, &type metadata accessor for LocalizerRequest);
      v73 = v144;
      sub_264DF0();
      v91 = v71;
      v92 = sub_2EF0(&qword_325BC0, &qword_288C58);
      v93 = *(v92 + 48);
      v169 = 1;
      sub_264DB0();
      v169 = 2;
      v163 = sub_264D70();
      v107 = v106;
      v108 = v73;
      v124 = v136;
      v125 = &v136[*(v92 + 64)];
      (*(v143 + 8))(v91, v108);
      (*(v68 + 8))(v46, v162);
      swift_unknownObjectRelease();
      *v125 = v163;
      v125[1] = v107;
      swift_storeEnumTagMultiPayload();
      v118 = v124;
LABEL_29:
      v81 = v164;
      v82 = v138;
      v83 = v134;
      sub_20DE4C(v118, v134);
      sub_20DE4C(v83, v82);
      v58 = v81;
      return sub_3080(v58);
    }

    if (v49 == 3)
    {
      v169 = 3;
      sub_21312C();
      v65 = v41;
      v66 = v163;
      sub_264D50();
      v67 = v45;
      v68 = v44;
      if (!v66)
      {
        v69 = sub_260BD0();
        v169 = 0;
        sub_2132D0(&qword_315D90, &type metadata accessor for LocalizerRequest);
        v70 = v145;
        sub_264DF0();
        v84 = v65;
        v85 = sub_2EF0(&qword_325BC8, &unk_2891A0);
        v86 = v85[12];
        v169 = 1;
        sub_264DB0();
        v163 = v69;
        v169 = 2;
        v99 = sub_264D70();
        v110 = v84;
        v111 = &v137[v85[16]];
        v112 = v85[20];
        *v111 = v99;
        v111[1] = v113;
        v169 = 3;
        sub_EAB10();
        sub_264DF0();
        (*(v148 + 8))(v110, v70);
        (*(v68 + 8))(v46, v162);
        swift_unknownObjectRelease();
        v118 = v137;
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if (v49 == 4)
    {
      v169 = 4;
      sub_213084();
      v60 = v163;
      sub_264D50();
      if (!v60)
      {
        v61 = sub_260BD0();
        v169 = 0;
        sub_2132D0(&qword_315D90, &type metadata accessor for LocalizerRequest);
        v62 = v42;
        sub_264DF0();
        v89 = sub_2EF0(&qword_325BD0, &qword_288C60);
        v90 = v89[12];
        v169 = 1;
        sub_264DB0();
        v160 = v90;
        v163 = v61;
        v169 = 2;
        v103 = v151;
        v104 = sub_264D70();
        v105 = v146;
        v120 = &v152[v89[16]];
        v121 = v89[20];
        *v120 = v104;
        v120[1] = v122;
        v158 = v122;
        sub_2EF0(&qword_31BEF0, &unk_289190);
        v169 = 3;
        sub_212FAC();
        v157 = v121;
        v123 = v62;
        sub_264DF0();
        v129 = v89[24];
        v169 = 4;
        sub_2130D8();
        v130 = v152;
        sub_264DF0();
        (*(v105 + 8))(v123, v103);
        (*(v44 + 8))(v161, v162);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v118 = v130;
        goto LABEL_29;
      }
    }

    else
    {
      v169 = 5;
      sub_212F58();
      v72 = v163;
      sub_264D50();
      if (!v72)
      {
        v74 = sub_260BD0();
        v169 = 0;
        v75 = sub_2132D0(&qword_315D90, &type metadata accessor for LocalizerRequest);
        v76 = v43;
        v77 = v147;
        v163 = v75;
        sub_264DF0();
        v94 = sub_2EF0(&qword_325BD8, &unk_289180);
        v95 = v77;
        v96 = v94;
        v97 = *(v94 + 48);
        v169 = 1;
        v98 = v95;
        sub_264DB0();
        v159 = v97;
        v163 = v74;
        v169 = 2;
        v109 = sub_264D70();
        v118 = v150;
        v126 = &v150[v96[16]];
        v127 = v96[20];
        *v126 = v109;
        v126[1] = v128;
        v158 = v128;
        sub_2EF0(&qword_31BEF0, &unk_289190);
        v169 = 3;
        sub_212FAC();
        sub_264DF0();
        v131 = v96[24];
        v169 = 4;
        sub_213030();
        sub_264DF0();
        (*(v149 + 8))(v76, v98);
        (*(v44 + 8))(v161, v162);
        swift_unknownObjectRelease();
        goto LABEL_28;
      }
    }
  }

LABEL_10:
  (*(v44 + 8))(v46, v45);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v58 = v164;
  return sub_3080(v58);
}

BooksUI::BrickLockupModel::TwoArtCoverVariant_optional __swiftcall BrickLockupModel.TwoArtCoverVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_3018E8;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t BrickLockupModel.TwoArtCoverVariant.rawValue.getter()
{
  if (*v0)
  {
    return 0x42726F76616C66;
  }

  else
  {
    return 0x41726F76616C66;
  }
}

Swift::Int sub_20FF30()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_20FFA8()
{
  *v0;
  sub_264500();
}

Swift::Int sub_210004()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_210078@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_3018E8;
  v8._object = v3;
  v5 = sub_264D40(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2100D8(uint64_t *a1@<X8>)
{
  v2 = 0x41726F76616C66;
  if (*v1)
  {
    v2 = 0x42726F76616C66;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_2101C0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x42726F76616C66;
  }

  else
  {
    v2 = 0x41726F76616C66;
  }

  if (*a2)
  {
    v3 = 0x42726F76616C66;
  }

  else
  {
    v3 = 0x41726F76616C66;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_264F10();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

BooksUI::BrickLockupModel::ThreeArtCoverVariant_optional __swiftcall BrickLockupModel.ThreeArtCoverVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_301938;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_2102C4()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_210328()
{
  v1 = *v0;
  sub_264500();
}

Swift::Int sub_210370()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_2104B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 << 48 == *a2 << 48)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_264F10();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_210528()
{
  v1 = 0x6152746365707361;
  if (*v0 != 1)
  {
    v1 = 0x546B636972427861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7079546B63697262;
  }
}

uint64_t sub_210598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214C94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2105C0(uint64_t a1)
{
  v2 = sub_21327C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2105FC(uint64_t a1)
{
  v2 = sub_21327C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrickLockupModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for BrickLockupModel.BrickType(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3261C0, &qword_2891B8);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for BrickLockupModel(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_21327C();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v16 = v22;
  v17 = v14;
  LOBYTE(v25) = 0;
  sub_2132D0(&qword_3261D0, type metadata accessor for BrickLockupModel.BrickType);
  v18 = v23;
  sub_264DF0();
  sub_20DE4C(v24, v17);
  v26 = 1;
  sub_6E08();
  sub_264DF0();
  *(v17 + *(v11 + 20)) = v25;
  sub_2EF0(&qword_321868, &unk_2891C0);
  v26 = 2;
  sub_1895E0();
  sub_264DF0();
  v20 = *(v11 + 24);
  (*(v16 + 8))(v10, v18);
  *(v17 + v20) = v25;
  sub_214E64(v17, v21, type metadata accessor for BrickLockupModel);
  sub_3080(a1);
  return sub_213318(v17, type metadata accessor for BrickLockupModel);
}

uint64_t _s7BooksUI16BrickLockupModelV0C4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, char *a2)
{
  v304 = a1;
  v305 = a2;
  v301 = sub_2EF0(&qword_326438, &qword_289DF8);
  v2 = *(*(v301 - 8) + 64);
  __chkstk_darwin(v301);
  v281 = &v273 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v284 = &v273 - v5;
  __chkstk_darwin(v6);
  v282 = &v273 - v7;
  __chkstk_darwin(v8);
  v280 = &v273 - v9;
  __chkstk_darwin(v10);
  v279 = &v273 - v11;
  v12 = sub_2EF0(&qword_316208, &qword_268BD0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v278 = &v273 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v285 = &v273 - v16;
  __chkstk_darwin(v17);
  v299 = &v273 - v18;
  __chkstk_darwin(v19);
  v276 = &v273 - v20;
  __chkstk_darwin(v21);
  v291 = &v273 - v22;
  __chkstk_darwin(v23);
  v298 = &v273 - v24;
  __chkstk_darwin(v25);
  v277 = &v273 - v26;
  __chkstk_darwin(v27);
  v292 = (&v273 - v28);
  __chkstk_darwin(v29);
  v288 = &v273 - v30;
  __chkstk_darwin(v31);
  v275 = &v273 - v32;
  __chkstk_darwin(v33);
  v286 = &v273 - v34;
  __chkstk_darwin(v35);
  v296 = &v273 - v36;
  __chkstk_darwin(v37);
  v274 = &v273 - v38;
  __chkstk_darwin(v39);
  v289 = &v273 - v40;
  __chkstk_darwin(v41);
  v294 = &v273 - v42;
  v306 = sub_260BD0();
  v303 = *(v306 - 8);
  v43 = *(v303 + 64);
  __chkstk_darwin(v306);
  v297 = &v273 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v290 = &v273 - v46;
  __chkstk_darwin(v47);
  v287 = &v273 - v48;
  __chkstk_darwin(v49);
  v295 = &v273 - v50;
  __chkstk_darwin(v51);
  v283 = &v273 - v52;
  __chkstk_darwin(v53);
  v293 = &v273 - v54;
  v55 = type metadata accessor for BrickLockupModel.BrickType(0);
  v56 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v58 = &v273 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = &v273 - v60;
  __chkstk_darwin(v62);
  v300 = &v273 - v63;
  __chkstk_darwin(v64);
  v66 = &v273 - v65;
  __chkstk_darwin(v67);
  v69 = &v273 - v68;
  __chkstk_darwin(v70);
  v72 = (&v273 - v71);
  v73 = sub_2EF0(&qword_326440, &unk_289E00);
  v74 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73 - 8);
  v76 = &v273 - v75;
  v78 = &v273 + *(v77 + 56) - v75;
  sub_214E64(v304, &v273 - v75, type metadata accessor for BrickLockupModel.BrickType);
  v79 = v305;
  v305 = v78;
  sub_214E64(v79, v78, type metadata accessor for BrickLockupModel.BrickType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v302 = v76;
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_214E64(v76, v61, type metadata accessor for BrickLockupModel.BrickType);
        v110 = sub_2EF0(&qword_325BD0, &qword_288C60);
        v111 = v110[12];
        v112 = v110[16];
        v113 = *&v61[v112 + 8];
        v300 = *&v61[v112];
        v114 = v110[20];
        v115 = *&v61[v114];
        v116 = v110[24];
        LODWORD(v299) = v61[v116];
        v117 = v305;
        if (swift_getEnumCaseMultiPayload() != 4)
        {

          sub_8E80(&v61[v111], &qword_316208, &qword_268BD0);
          (*(v303 + 8))(v61, v306);
          goto LABEL_39;
        }

        v304 = v113;
        v118 = *&v117[v114];
        v119 = *&v117[v112];
        v296 = *&v117[v112 + 8];
        v297 = v115;
        LODWORD(v293) = v117[v116];
        v120 = v303;
        v121 = *(v303 + 32);
        v122 = v290;
        v123 = v111;
        v124 = v306;
        v294 = v119;
        v295 = v121;
        (v121)(v290, v117, v306);
        v125 = v298;
        sub_A96C8(&v61[v123], v298);
        v126 = &v117[v123];
        v127 = v291;
        sub_A96C8(v126, v291);
        v128 = sub_260B60();
        v129 = v61;
        v130 = *(v120 + 8);
        (v130)(v129, v124);
        if ((v128 & 1) == 0)
        {

          sub_8E80(v127, &qword_316208, &qword_268BD0);
          sub_8E80(v125, &qword_316208, &qword_268BD0);
          (v130)(v122, v306);
          goto LABEL_50;
        }

        v131 = v118;
        v132 = v130;
        v133 = *(v301 + 48);
        v134 = v125;
        v135 = v284;
        sub_104B0(v134, v284);
        sub_104B0(v127, v135 + v133);
        v136 = *(v120 + 48);
        if (v136(v135, 1, v306) == 1)
        {
          v137 = v135 + v133;
          v138 = v306;
          if (v136(v137, 1, v306) == 1)
          {
            sub_8E80(v135, &qword_316208, &qword_268BD0);
            v139 = v132;
            v141 = v296;
            v140 = v297;
            v142 = v138;
LABEL_97:
            if (v304)
            {
              v233 = v290;
              if (v141)
              {
                if (v300 == v294 && v304 == v141)
                {

                  goto LABEL_136;
                }

                v261 = sub_264F10();

                if (v261)
                {
LABEL_136:
                  v262 = sub_C851C(v140, v131);

                  v173 = v302;
                  if (v262)
                  {
                    if (v299)
                    {
                      v263 = 0x42726F76616C66;
                    }

                    else
                    {
                      v263 = 0x41726F76616C66;
                    }

                    if (v293)
                    {
                      v264 = 0x42726F76616C66;
                    }

                    else
                    {
                      v264 = 0x41726F76616C66;
                    }

                    if (v263 == v264)
                    {
                      swift_bridgeObjectRelease_n();
                      sub_8E80(v291, &qword_316208, &qword_268BD0);
                      sub_8E80(v298, &qword_316208, &qword_268BD0);
                      (v139)(v233, v142);
LABEL_160:
                      v225 = v173;
                      goto LABEL_53;
                    }

                    v271 = sub_264F10();
                    swift_bridgeObjectRelease_n();
                    sub_8E80(v291, &qword_316208, &qword_268BD0);
                    sub_8E80(v298, &qword_316208, &qword_268BD0);
                    (v139)(v233, v142);
                    if (v271)
                    {
                      goto LABEL_160;
                    }
                  }

                  else
                  {
                    sub_8E80(v291, &qword_316208, &qword_268BD0);
                    sub_8E80(v298, &qword_316208, &qword_268BD0);
                    (v139)(v233, v142);
                  }

LABEL_67:
                  v223 = v173;
                  goto LABEL_89;
                }
              }

              else
              {
              }
            }

            else
            {
              v233 = v290;
              if (!v141)
              {
                goto LABEL_136;
              }
            }

            v106 = v302;
            sub_8E80(v291, &qword_316208, &qword_268BD0);
            v243 = v298;
LABEL_87:
            sub_8E80(v243, &qword_316208, &qword_268BD0);
            (v139)(v233, v142);
            goto LABEL_88;
          }

          v233 = v290;
          v139 = v132;
          v142 = v138;
        }

        else
        {
          v231 = v276;
          sub_104B0(v135, v276);
          if (v136(v135 + v133, 1, v306) != 1)
          {
            v249 = v283;
            v250 = v306;
            (v295)(v283, v135 + v133, v306);
            sub_2132D0(&qword_321BA8, &type metadata accessor for LocalizerRequest);
            v251 = sub_264390();
            v252 = v249;
            v139 = v132;
            (v132)(v252, v250);
            (v132)(v231, v250);
            sub_8E80(v135, &qword_316208, &qword_268BD0);
            v142 = v250;
            v141 = v296;
            v140 = v297;
            if (v251)
            {
              goto LABEL_97;
            }

            v106 = v302;
            v240 = v298;
            v233 = v290;
            goto LABEL_79;
          }

          v232 = v306;
          v139 = v132;
          (v132)(v231, v306);
          v142 = v232;
          v233 = v290;
        }

        sub_8E80(v284, &qword_326438, &qword_289DF8);
        v106 = v302;
        v240 = v298;
LABEL_79:
        v241 = v291;
LABEL_86:
        sub_8E80(v241, &qword_316208, &qword_268BD0);
        v243 = v240;
        goto LABEL_87;
      }

      sub_214E64(v76, v58, type metadata accessor for BrickLockupModel.BrickType);
      v201 = sub_2EF0(&qword_325BD8, &unk_289180);
      v202 = v201[12];
      v203 = v201[16];
      v204 = *&v58[v203 + 8];
      v298 = *&v58[v203];
      v205 = v201[20];
      v206 = *&v58[v205];
      v207 = v201[24];
      v296 = v58[v207];
      v208 = v305;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        sub_8E80(&v58[v202], &qword_316208, &qword_268BD0);
        (*(v303 + 8))(v58, v306);
        goto LABEL_39;
      }

      v304 = v204;
      v300 = *&v208[v205];
      v209 = *&v208[v203];
      v294 = *&v208[v203 + 8];
      v295 = v206;
      v290 = v208[v207];
      v291 = v209;
      v210 = v303;
      v211 = v297;
      v142 = v306;
      v292 = *(v303 + 32);
      v293 = (v303 + 32);
      (v292)(v297, v208, v306);
      v212 = v299;
      sub_A96C8(&v58[v202], v299);
      v213 = v285;
      sub_A96C8(&v208[v202], v285);
      v214 = sub_260B60();
      v98 = *(v210 + 8);
      (v98)(v58, v142);
      if ((v214 & 1) == 0)
      {

        sub_8E80(v213, &qword_316208, &qword_268BD0);
        sub_8E80(v212, &qword_316208, &qword_268BD0);
        v221 = v211;
        v222 = v142;
LABEL_49:
        (v98)(v221, v222);
        goto LABEL_50;
      }

      v305 = v98;
      v215 = *(v301 + 48);
      v216 = v281;
      sub_104B0(v212, v281);
      sub_104B0(v213, v216 + v215);
      v217 = *(v210 + 48);
      if (v217(v216, 1, v142) == 1)
      {
        if (v217(v216 + v215, 1, v142) == 1)
        {
          sub_8E80(v216, &qword_316208, &qword_268BD0);
          v139 = v305;
          v218 = v300;
          goto LABEL_109;
        }

        v106 = v302;
        v139 = v305;
      }

      else
      {
        v236 = v278;
        sub_104B0(v216, v278);
        if (v217(v216 + v215, 1, v142) != 1)
        {
          v256 = v283;
          (v292)(v283, v216 + v215, v142);
          sub_2132D0(&qword_321BA8, &type metadata accessor for LocalizerRequest);
          v257 = sub_264390();
          v139 = v305;
          (v305)(v256, v142);
          (v139)(v236, v142);
          sub_8E80(v216, &qword_316208, &qword_268BD0);
          v218 = v300;
          if (v257)
          {
LABEL_109:
            v258 = v295;
            if (v304)
            {
              v76 = v302;
              if (v294)
              {
                if (v298 == v291 && v304 == v294)
                {

                  v218 = v300;
LABEL_151:
                  v267 = sub_C851C(v258, v218);

                  v268 = v299;
                  if (v267)
                  {
                    if (v296 << 48 == v290 << 48)
                    {
                      swift_bridgeObjectRelease_n();
                      sub_8E80(v213, &qword_316208, &qword_268BD0);
                      sub_8E80(v268, &qword_316208, &qword_268BD0);
                      (v139)(v297, v142);
                      goto LABEL_52;
                    }

                    v272 = sub_264F10();
                    swift_bridgeObjectRelease_n();
                    sub_8E80(v213, &qword_316208, &qword_268BD0);
                    sub_8E80(v268, &qword_316208, &qword_268BD0);
                    (v139)(v297, v142);
                    if (v272)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_158;
                  }

                  sub_8E80(v213, &qword_316208, &qword_268BD0);
                  v270 = v268;
LABEL_157:
                  sub_8E80(v270, &qword_316208, &qword_268BD0);
                  (v139)(v297, v142);
                  goto LABEL_158;
                }

                v266 = sub_264F10();

                v218 = v300;
                if (v266)
                {
                  goto LABEL_151;
                }
              }

              else
              {
              }
            }

            else
            {
              v76 = v302;
              if (!v294)
              {
                goto LABEL_151;
              }
            }

            v269 = v299;
            sub_8E80(v213, &qword_316208, &qword_268BD0);
            v270 = v269;
            goto LABEL_157;
          }

          v106 = v302;
LABEL_85:
          v240 = v299;
          v233 = v297;
          v241 = v213;
          goto LABEL_86;
        }

        v139 = v305;
        (v305)(v236, v142);
        v106 = v302;
      }

      sub_8E80(v216, &qword_326438, &qword_289DF8);
      goto LABEL_85;
    }

    v146 = v300;
    sub_214E64(v76, v300, type metadata accessor for BrickLockupModel.BrickType);
    v147 = sub_2EF0(&qword_325BC8, &unk_2891A0);
    v148 = v147[12];
    v149 = v147[16];
    v151 = *&v146[v149];
    v150 = *&v146[v149 + 8];
    v152 = v147[20];
    v153 = *&v146[v152 + 112];
    v339 = *&v146[v152 + 96];
    v340 = v153;
    v154 = *&v146[v152 + 80];
    v337 = *&v146[v152 + 64];
    v338 = v154;
    v155 = *&v146[v152 + 16];
    v333 = *&v146[v152];
    v334 = v155;
    v156 = *&v146[v152 + 48];
    v335 = *&v146[v152 + 32];
    v336 = v156;
    v157 = v305;
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_2F8C4(&v333);

      sub_8E80(&v146[v148], &qword_316208, &qword_268BD0);
      (*(v303 + 8))(v146, v306);
      goto LABEL_39;
    }

    v304 = v150;
    v158 = *&v157[v149 + 8];
    v296 = *&v157[v149];
    v297 = v151;
    v299 = v158;
    v159 = *&v157[v152 + 80];
    v329 = *&v157[v152 + 64];
    v330 = v159;
    v160 = *&v157[v152 + 112];
    v331 = *&v157[v152 + 96];
    v332 = v160;
    v161 = *&v157[v152 + 16];
    v325 = *&v157[v152];
    v326 = v161;
    v162 = *&v157[v152 + 48];
    v327 = *&v157[v152 + 32];
    v328 = v162;
    v163 = v303;
    v164 = v287;
    v165 = v306;
    v298 = *(v303 + 32);
    (v298)(v287, v157, v306);
    v166 = v288;
    sub_A96C8(&v146[v148], v288);
    v167 = v292;
    sub_A96C8(&v157[v148], v292);
    v168 = sub_260B60();
    v169 = *(v163 + 8);
    (v169)(v146, v165);
    if ((v168 & 1) == 0)
    {
      sub_2F8C4(&v325);
      sub_2F8C4(&v333);

      sub_8E80(v167, &qword_316208, &qword_268BD0);
      sub_8E80(v166, &qword_316208, &qword_268BD0);
      (v169)(v164, v165);
      goto LABEL_50;
    }

    v300 = v169;
    v305 = (v163 + 8);
    v170 = *(v301 + 48);
    v171 = v282;
    sub_104B0(v166, v282);
    sub_104B0(v167, v171 + v170);
    v172 = *(v163 + 48);
    if (v172(v171, 1, v165) == 1)
    {
      if (v172(v171 + v170, 1, v165) == 1)
      {
        sub_8E80(v171, &qword_316208, &qword_268BD0);
        v173 = v302;
        v174 = v287;
        v175 = v288;
        v176 = v300;
LABEL_69:
        if (v304)
        {
          if (v299)
          {
            if (v297 == v296 && v304 == v299)
            {

LABEL_134:
              v319 = v337;
              v320 = v338;
              v321 = v339;
              v322 = v340;
              v315 = v333;
              v316 = v334;
              v317 = v335;
              v318 = v336;
              v311 = v329;
              v312 = v330;
              v313 = v331;
              v314 = v332;
              v307 = v325;
              v308 = v326;
              v309 = v327;
              v310 = v328;
              v226 = _s7BooksUI14CoverViewModelV0C5StyleO2eeoiySbAE_AEtFZ_0(&v315, &v307);
              sub_8E80(v292, &qword_316208, &qword_268BD0);
              sub_8E80(v175, &qword_316208, &qword_268BD0);
              (v176)(v174, v306);
              v323[4] = v311;
              v323[5] = v312;
              v323[6] = v313;
              v323[7] = v314;
              v323[0] = v307;
              v323[1] = v308;
              v323[2] = v309;
              v323[3] = v310;
              sub_EA998(v323);
              v324[4] = v319;
              v324[5] = v320;
              v324[6] = v321;
              v324[7] = v322;
              v324[0] = v315;
              v324[1] = v316;
              v324[2] = v317;
              v324[3] = v318;
              sub_EA998(v324);
              sub_213318(v173, type metadata accessor for BrickLockupModel.BrickType);
              return v226 & 1;
            }

            v260 = sub_264F10();

            if (v260)
            {
              goto LABEL_134;
            }

            sub_2F8C4(&v325);
            sub_2F8C4(&v333);
          }

          else
          {

            sub_2F8C4(&v325);
            sub_2F8C4(&v333);
            swift_bridgeObjectRelease_n();
          }
        }

        else
        {
          if (!v299)
          {
            goto LABEL_134;
          }

          sub_2F8C4(&v325);
          sub_2F8C4(&v333);
        }

LABEL_66:
        sub_8E80(v292, &qword_316208, &qword_268BD0);
        sub_8E80(v175, &qword_316208, &qword_268BD0);
        (v176)(v174, v306);
        goto LABEL_67;
      }

      sub_2F8C4(&v325);
      sub_2F8C4(&v333);

      v173 = v302;
      v174 = v287;
      v175 = v288;
      v176 = v300;
    }

    else
    {
      v227 = v277;
      sub_104B0(v171, v277);
      if (v172(v171 + v170, 1, v165) != 1)
      {
        v237 = v283;
        (v298)(v283, v171 + v170, v165);
        sub_2132D0(&qword_321BA8, &type metadata accessor for LocalizerRequest);
        v238 = sub_264390();
        v176 = v300;
        (v300)(v237, v165);
        (v176)(v227, v165);
        sub_8E80(v171, &qword_316208, &qword_268BD0);
        v173 = v302;
        v174 = v287;
        v175 = v288;
        if ((v238 & 1) == 0)
        {
          sub_2F8C4(&v325);
          sub_2F8C4(&v333);

          goto LABEL_66;
        }

        goto LABEL_69;
      }

      sub_2F8C4(&v325);
      sub_2F8C4(&v333);

      v176 = v300;
      (v300)(v227, v165);
      v173 = v302;
      v174 = v287;
      v175 = v288;
    }

    sub_8E80(v171, &qword_326438, &qword_289DF8);
    goto LABEL_66;
  }

  if (EnumCaseMultiPayload)
  {
    v81 = v305;
    v302 = v76;
    if (EnumCaseMultiPayload == 1)
    {
      sub_214E64(v76, v69, type metadata accessor for BrickLockupModel.BrickType);
      v82 = sub_2EF0(&qword_325BB8, &qword_2891B0);
      v83 = *(v82 + 48);
      v84 = *(v82 + 64);
      v86 = *&v69[v84];
      v85 = *&v69[v84 + 8];
      v87 = swift_getEnumCaseMultiPayload();
      v88 = v303;
      if (v87 == 1)
      {
        v304 = v85;
        v89 = *&v81[v84 + 8];
        v298 = *&v81[v84];
        v299 = v86;
        v300 = v89;
        v90 = v303;
        v91 = v293;
        v92 = v306;
        v297 = *(v303 + 32);
        (v297)(v293, v81, v306);
        v93 = v294;
        sub_A96C8(&v69[v83], v294);
        v94 = &v81[v83];
        v95 = v289;
        sub_A96C8(v94, v289);
        v96 = sub_260B60();
        v97 = v69;
        v98 = *(v88 + 8);
        (v98)(v97, v92);
        if (v96)
        {
          v305 = v98;
          v99 = *(v301 + 48);
          v100 = v93;
          v101 = v279;
          sub_104B0(v100, v279);
          sub_104B0(v95, v101 + v99);
          v102 = *(v90 + 48);
          v103 = v306;
          if (v102(v101, 1, v306) == 1)
          {
            v104 = v102(v101 + v99, 1, v103);
            v105 = v293;
            if (v104 == 1)
            {
              sub_8E80(v101, &qword_316208, &qword_268BD0);
              v106 = v302;
              v107 = v304;
              v108 = v305;
              v109 = v300;
              goto LABEL_93;
            }

            v106 = v302;
            v230 = v289;
            v108 = v305;
          }

          else
          {
            v228 = v274;
            sub_104B0(v101, v274);
            v229 = v102(v101 + v99, 1, v103);
            v105 = v293;
            if (v229 != 1)
            {
              v245 = v283;
              (v297)(v283, v101 + v99, v103);
              sub_2132D0(&qword_321BA8, &type metadata accessor for LocalizerRequest);
              v246 = sub_264390();
              v247 = v245;
              v108 = v305;
              (v305)(v247, v103);
              (v108)(v228, v103);
              sub_8E80(v101, &qword_316208, &qword_268BD0);
              v106 = v302;
              v107 = v304;
              v109 = v300;
              if (v246)
              {
LABEL_93:
                v248 = v294;
                if (v299 == v298 && v107 == v109)
                {

                  sub_8E80(v289, &qword_316208, &qword_268BD0);
                  sub_8E80(v248, &qword_316208, &qword_268BD0);
                  (v108)(v105, v306);
LABEL_115:
                  v225 = v106;
                  goto LABEL_53;
                }

                v259 = sub_264F10();

                sub_8E80(v289, &qword_316208, &qword_268BD0);
                sub_8E80(v248, &qword_316208, &qword_268BD0);
                (v108)(v105, v306);
                if (v259)
                {
                  goto LABEL_115;
                }

                goto LABEL_88;
              }

              v239 = v294;
              v230 = v289;
              goto LABEL_76;
            }

            v108 = v305;
            (v305)(v228, v103);
            v106 = v302;
            v230 = v289;
          }

          sub_8E80(v101, &qword_326438, &qword_289DF8);
          v239 = v294;
LABEL_76:
          sub_8E80(v230, &qword_316208, &qword_268BD0);
          sub_8E80(v239, &qword_316208, &qword_268BD0);
          (v108)(v105, v306);
LABEL_88:
          v223 = v106;
          goto LABEL_89;
        }

        sub_8E80(v95, &qword_316208, &qword_268BD0);
        sub_8E80(v93, &qword_316208, &qword_268BD0);
        v221 = v91;
        v222 = v306;
        goto LABEL_49;
      }

      sub_8E80(&v69[v83], &qword_316208, &qword_268BD0);
      (*(v88 + 8))(v69, v306);
      goto LABEL_39;
    }

    sub_214E64(v76, v66, type metadata accessor for BrickLockupModel.BrickType);
    v177 = sub_2EF0(&qword_325BC0, &qword_288C58);
    v178 = *(v177 + 48);
    v179 = *(v177 + 64);
    v181 = *&v66[v179];
    v180 = *&v66[v179 + 8];
    v182 = swift_getEnumCaseMultiPayload();
    v183 = v303;
    if (v182 == 2)
    {
      v304 = v180;
      v184 = *&v81[v179 + 8];
      v294 = *&v81[v179];
      v185 = *(v303 + 32);
      v186 = v295;
      v187 = v306;
      v299 = (v303 + 32);
      v300 = v184;
      v297 = v181;
      v298 = v185;
      (v185)(v295, v81, v306);
      v188 = v296;
      sub_A96C8(&v66[v178], v296);
      v189 = v286;
      sub_A96C8(&v81[v178], v286);
      v190 = sub_260B60();
      v191 = *(v183 + 8);
      (v191)(v66, v187);
      if (v190)
      {
        v305 = v191;
        v192 = *(v301 + 48);
        v193 = v280;
        sub_104B0(v188, v280);
        sub_104B0(v189, v193 + v192);
        v194 = *(v183 + 48);
        v195 = v306;
        if (v194(v193, 1, v306) == 1)
        {
          v196 = v194(v193 + v192, 1, v195);
          v197 = v195;
          v198 = v295;
          if (v196 == 1)
          {
            sub_8E80(v193, &qword_316208, &qword_268BD0);
            v199 = v305;
            v200 = v300;
            goto LABEL_103;
          }

          v106 = v302;
          v199 = v305;
        }

        else
        {
          v234 = v275;
          sub_104B0(v193, v275);
          v235 = v194(v193 + v192, 1, v195);
          v198 = v295;
          if (v235 != 1)
          {
            v253 = v283;
            v254 = v306;
            (v298)(v283, v193 + v192, v306);
            sub_2132D0(&qword_321BA8, &type metadata accessor for LocalizerRequest);
            v255 = sub_264390();
            v199 = v305;
            (v305)(v253, v254);
            (v199)(v234, v254);
            sub_8E80(v193, &qword_316208, &qword_268BD0);
            v197 = v254;
            v200 = v300;
            if (v255)
            {
LABEL_103:
              if (v304)
              {
                if (!v200)
                {

                  sub_8E80(v189, &qword_316208, &qword_268BD0);
                  sub_8E80(v296, &qword_316208, &qword_268BD0);
                  (v199)(v198, v197);
                  goto LABEL_50;
                }

                if (v297 == v294 && v304 == v200)
                {

                  sub_8E80(v189, &qword_316208, &qword_268BD0);
                  sub_8E80(v296, &qword_316208, &qword_268BD0);
                  (v199)(v198, v197);
                }

                else
                {
                  v265 = sub_264F10();

                  sub_8E80(v189, &qword_316208, &qword_268BD0);
                  sub_8E80(v296, &qword_316208, &qword_268BD0);
                  (v199)(v198, v197);
                  if ((v265 & 1) == 0)
                  {
                    goto LABEL_50;
                  }
                }
              }

              else
              {
                sub_8E80(v189, &qword_316208, &qword_268BD0);
                sub_8E80(v296, &qword_316208, &qword_268BD0);
                (v199)(v198, v197);
                if (v200)
                {

                  goto LABEL_50;
                }
              }

              v225 = v302;
              goto LABEL_53;
            }

            v106 = v302;
LABEL_82:
            v242 = v296;
            sub_8E80(v286, &qword_316208, &qword_268BD0);
            sub_8E80(v242, &qword_316208, &qword_268BD0);
            (v199)(v198, v197);
            goto LABEL_88;
          }

          v199 = v305;
          v197 = v306;
          (v305)(v234, v306);
          v106 = v302;
        }

        sub_8E80(v193, &qword_326438, &qword_289DF8);
        goto LABEL_82;
      }

      sub_8E80(v189, &qword_316208, &qword_268BD0);
      sub_8E80(v188, &qword_316208, &qword_268BD0);
      (v191)(v186, v306);
LABEL_50:
      v223 = v302;
LABEL_89:
      sub_213318(v223, type metadata accessor for BrickLockupModel.BrickType);
      goto LABEL_90;
    }

    sub_8E80(&v66[v178], &qword_316208, &qword_268BD0);
    (*(v183 + 8))(v66, v306);
LABEL_39:
    v76 = v302;
    goto LABEL_40;
  }

  sub_214E64(v76, v72, type metadata accessor for BrickLockupModel.BrickType);
  v144 = *v72;
  v143 = v72[1];
  v145 = v305;
  if (swift_getEnumCaseMultiPayload())
  {

LABEL_40:
    sub_8E80(v76, &qword_326440, &unk_289E00);
LABEL_90:
    v226 = 0;
    return v226 & 1;
  }

  v219 = *v145;
  v220 = v145[1];
  if (v144 != v219 || v143 != v220)
  {
    v224 = sub_264F10();

    if (v224)
    {
      goto LABEL_52;
    }

LABEL_158:
    v223 = v76;
    goto LABEL_89;
  }

LABEL_52:
  v225 = v76;
LABEL_53:
  sub_213318(v225, type metadata accessor for BrickLockupModel.BrickType);
  v226 = 1;
  return v226 & 1;
}

unint64_t sub_212F04()
{
  result = qword_326170;
  if (!qword_326170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326170);
  }

  return result;
}

unint64_t sub_212F58()
{
  result = qword_326178;
  if (!qword_326178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326178);
  }

  return result;
}

unint64_t sub_212FAC()
{
  result = qword_326180;
  if (!qword_326180)
  {
    sub_2F9C(&qword_31BEF0, &unk_289190);
    sub_EAB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326180);
  }

  return result;
}

unint64_t sub_213030()
{
  result = qword_326188;
  if (!qword_326188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326188);
  }

  return result;
}

unint64_t sub_213084()
{
  result = qword_326190;
  if (!qword_326190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326190);
  }

  return result;
}

unint64_t sub_2130D8()
{
  result = qword_326198;
  if (!qword_326198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326198);
  }

  return result;
}

unint64_t sub_21312C()
{
  result = qword_3261A0;
  if (!qword_3261A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261A0);
  }

  return result;
}

unint64_t sub_213180()
{
  result = qword_3261A8;
  if (!qword_3261A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261A8);
  }

  return result;
}

unint64_t sub_2131D4()
{
  result = qword_3261B0;
  if (!qword_3261B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261B0);
  }

  return result;
}

unint64_t sub_213228()
{
  result = qword_3261B8;
  if (!qword_3261B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261B8);
  }

  return result;
}

unint64_t sub_21327C()
{
  result = qword_3261C8;
  if (!qword_3261C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261C8);
  }

  return result;
}

uint64_t sub_2132D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213378(uint64_t a1)
{
  result = sub_2132D0(&qword_3261D0, type metadata accessor for BrickLockupModel.BrickType);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2133D4()
{
  result = qword_3261D8;
  if (!qword_3261D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261D8);
  }

  return result;
}

unint64_t sub_21342C()
{
  result = qword_3261E0;
  if (!qword_3261E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261E0);
  }

  return result;
}

uint64_t sub_213480(uint64_t a1)
{
  result = sub_2132D0(&qword_3261E8, type metadata accessor for BrickLockupModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2134EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BrickLockupModel.BrickType(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2135CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BrickLockupModel.BrickType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_213688()
{
  type metadata accessor for BrickLockupModel.BrickType(319);
  if (v0 <= 0x3F)
  {
    sub_213714();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213714()
{
  if (!qword_326258)
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    v0 = sub_263BF0();
    if (!v1)
    {
      atomic_store(v0, &qword_326258);
    }
  }
}

void sub_213778()
{
  sub_21385C();
  if (v0 <= 0x3F)
  {
    sub_21388C();
    if (v1 <= 0x3F)
    {
      sub_213914();
      if (v2 <= 0x3F)
      {
        sub_2139B8(319);
        if (v3 <= 0x3F)
        {
          sub_213AF8(319, &qword_326330);
          if (v4 <= 0x3F)
          {
            sub_213AF8(319, &unk_326338);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void *sub_21385C()
{
  result = qword_326310;
  if (!qword_326310)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_326310);
  }

  return result;
}

void sub_21388C()
{
  if (!qword_326318)
  {
    sub_260BD0();
    sub_2F9C(&qword_316208, &qword_268BD0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_326318);
    }
  }
}

void sub_213914()
{
  if (!qword_326320)
  {
    sub_260BD0();
    sub_2F9C(&qword_316208, &qword_268BD0);
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_326320);
    }
  }
}

void sub_2139B8(uint64_t a1)
{
  if (!qword_326328)
  {
    __chkstk_darwin(a1);
    sub_260BD0();
    sub_2F9C(&qword_316208, &qword_268BD0);
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_326328);
    }
  }
}

void sub_213AF8(uint64_t a1, unint64_t *a2)
{
  if (*a2)
  {
    v2 = *a2;
  }

  else
  {
    __chkstk_darwin(a1);
    sub_260BD0();
    sub_2F9C(&qword_316208, &qword_268BD0);
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    sub_2F9C(&qword_31BEF0, &unk_289190);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

unint64_t sub_213D04()
{
  result = qword_326368;
  if (!qword_326368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326368);
  }

  return result;
}

unint64_t sub_213D5C()
{
  result = qword_326370;
  if (!qword_326370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326370);
  }

  return result;
}

unint64_t sub_213DB4()
{
  result = qword_326378;
  if (!qword_326378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326378);
  }

  return result;
}

unint64_t sub_213E0C()
{
  result = qword_326380;
  if (!qword_326380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326380);
  }

  return result;
}

unint64_t sub_213E64()
{
  result = qword_326388;
  if (!qword_326388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326388);
  }

  return result;
}

unint64_t sub_213EBC()
{
  result = qword_326390;
  if (!qword_326390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326390);
  }

  return result;
}

unint64_t sub_213F14()
{
  result = qword_326398;
  if (!qword_326398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326398);
  }

  return result;
}

unint64_t sub_213F6C()
{
  result = qword_3263A0;
  if (!qword_3263A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263A0);
  }

  return result;
}

unint64_t sub_213FC4()
{
  result = qword_3263A8;
  if (!qword_3263A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263A8);
  }

  return result;
}

unint64_t sub_21401C()
{
  result = qword_3263B0;
  if (!qword_3263B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263B0);
  }

  return result;
}

unint64_t sub_214074()
{
  result = qword_3263B8;
  if (!qword_3263B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263B8);
  }

  return result;
}

unint64_t sub_2140CC()
{
  result = qword_3263C0;
  if (!qword_3263C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263C0);
  }

  return result;
}

unint64_t sub_214124()
{
  result = qword_3263C8;
  if (!qword_3263C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263C8);
  }

  return result;
}

unint64_t sub_21417C()
{
  result = qword_3263D0;
  if (!qword_3263D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263D0);
  }

  return result;
}

unint64_t sub_2141D4()
{
  result = qword_3263D8;
  if (!qword_3263D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263D8);
  }

  return result;
}

unint64_t sub_21422C()
{
  result = qword_3263E0;
  if (!qword_3263E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263E0);
  }

  return result;
}

unint64_t sub_214284()
{
  result = qword_3263E8;
  if (!qword_3263E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263E8);
  }

  return result;
}

unint64_t sub_2142DC()
{
  result = qword_3263F0;
  if (!qword_3263F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263F0);
  }

  return result;
}

unint64_t sub_214334()
{
  result = qword_3263F8;
  if (!qword_3263F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263F8);
  }

  return result;
}

unint64_t sub_21438C()
{
  result = qword_326400;
  if (!qword_326400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326400);
  }

  return result;
}

unint64_t sub_2143E4()
{
  result = qword_326408;
  if (!qword_326408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326408);
  }

  return result;
}

unint64_t sub_21443C()
{
  result = qword_326410;
  if (!qword_326410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326410);
  }

  return result;
}

unint64_t sub_214494()
{
  result = qword_326418;
  if (!qword_326418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326418);
  }

  return result;
}

unint64_t sub_2144EC()
{
  result = qword_326420;
  if (!qword_326420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326420);
  }

  return result;
}

uint64_t sub_214540(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6169726F74696465 && a2 == 0xED0000796C6E4F6CLL;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737265766F436F6ELL && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43656C676E6973 && a2 == 0xEB00000000726576 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265766F436F7774 && a2 == 0xE900000000000073 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x766F436565726874 && a2 == 0xEB00000000737265)
  {

    return 5;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_214750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_214864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_214978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6569567265766F63 && a2 == 0xEE006C65646F4D77)
  {

    return 3;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_214AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6569567265766F63 && a2 == 0xEF736C65646F4D77 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_214C94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546B63697262 && a2 == 0xE900000000000065;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546B636972427861 && a2 == 0xEC000000656C7469)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_214DBC()
{
  result = qword_326428;
  if (!qword_326428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326428);
  }

  return result;
}

unint64_t sub_214E10()
{
  result = qword_326430;
  if (!qword_326430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326430);
  }

  return result;
}

uint64_t sub_214E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptorBase.init<>(assetInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = sub_260960();
  v7 = v6;
  KeyPath = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  sub_39D6C(KeyPath, 0);

  sub_3080(a1);
  sub_4054(KeyPath, 0);
}

uint64_t ListItemMetadataRecommendationCreatorDescriptionExternals.isCompact.getter()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptionExternals.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptionExternals.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_3080(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptorBase.description.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptorBase.description.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptorBase.text(localizer:font:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25FF40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(KeyPath);

  if (v19)
  {
    return 0;
  }

  v12 = (v3 + *(a3 + 36));
  v13 = v12[1];
  if (!v13)
  {
    return 0;
  }

  v14 = *v12;
  objc_allocWithZone(type metadata accessor for BooksHTMLConverter());

  v15 = sub_19C6C8(v14, v13, a2);
  [*&v15[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v16 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (*(v7 + 16))(v10, &v15[v16], v6);

  return sub_2628D0();
}

uint64_t sub_2153A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265747865 && a2 == 0xE900000000000073;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_215478(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

BOOL sub_2154BC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static HostingViewBarType.== infix(_:_:)(*a1, *a2);
}

Swift::Int sub_2154D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return HostingViewBarType.hashValue.getter(*v1);
}

void sub_2154E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  HostingViewBarType.hash(into:)(a1, *v2);
}

Swift::Int sub_2154F0(uint64_t a1, uint64_t a2)
{
  sub_265050();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  HostingViewBarType.hash(into:)(v7, *v2);
  return sub_265080();
}

uint64_t sub_215538(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_215478(*v1);
}

uint64_t sub_215548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2153A0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_215578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_2155CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t ListItemMetadataRecommendationCreatorDescriptorBase.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v34 = *(a2 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(a1);
  v36 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListItemMetadataRecommendationCreatorDescriptorBase.CodingKeys();
  swift_getWitnessTable();
  v37 = sub_264E20();
  v33 = *(v37 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v37);
  v11 = &v29 - v10;
  v35 = a3;
  v12 = type metadata accessor for ListItemMetadataRecommendationCreatorDescriptorBase();
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v16 = a1[4];
  sub_2E18(a1, a1[3]);
  v17 = v38;
  sub_265120();
  if (v17)
  {
    return sub_3080(a1);
  }

  v38 = a1;
  v30 = v12;
  v18 = v33;
  v19 = v34;
  v40 = 0;
  v20 = *(v35 + 8);
  sub_264DF0();
  v21 = v15;
  (*(v19 + 32))(v15, v36, a2);
  v39 = 1;
  v22 = sub_264D70();
  v24 = v23;
  v25 = v30;
  v26 = &v21[*(v30 + 36)];
  (*(v18 + 8))(v11, v37);
  *v26 = v22;
  v26[1] = v24;
  v27 = v31;
  (*(v31 + 16))(v32, v21, v25);
  sub_3080(v38);
  return (*(v27 + 8))(v21, v25);
}

uint64_t sub_2159D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 24))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

__n128 sub_215A30(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_215A6C(uint64_t a1)
{
  *(a1 + 8) = sub_215A9C();
  result = sub_215AF0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_215A9C()
{
  result = qword_326448;
  if (!qword_326448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326448);
  }

  return result;
}

unint64_t sub_215AF0()
{
  result = qword_326450;
  if (!qword_326450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326450);
  }

  return result;
}

uint64_t sub_215B44(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215B80(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215BBC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215BF8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_215C58(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_22944();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_215CE0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_215E24(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t ColorConstants.booksKey.getter()
{
  v1 = v0;
  v2 = sub_261180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants.Environment(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v10);
  (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
  sub_60AB0();
  LOBYTE(v1) = sub_264390();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v10, v2);
  if (v1)
  {
    return _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  }

  else
  {
    return sub_262F80();
  }
}

uint64_t sub_21623C(void (*a1)(void))
{
  a1();
  v1 = sub_263000();

  return v1;
}

uint64_t ColorConstants.booksButtonBackground.getter()
{
  v1 = v0;
  v2 = sub_261180();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants.Environment(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  sub_4BD3C(v1, v10);
  v11 = enum case for ColorScheme.dark(_:);
  v12 = v3[13];
  v12(v6, enum case for ColorScheme.dark(_:), v2);
  sub_60AB0();
  v13 = sub_264390();
  v14 = v3[1];
  v14(v6, v2);
  v14(v10, v2);
  if (v13)
  {
    v15 = [objc_opt_self() tertiarySystemBackgroundColor];
    return sub_263070();
  }

  else
  {
    sub_4BD3C(v19, v10);
    v12(v6, v11, v2);
    v17 = sub_264390();
    v14(v6, v2);
    v14(v10, v2);
    if (v17)
    {
      return _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      return sub_262F80();
    }
  }
}

uint64_t sub_2164E8(SEL *a1, SEL *a2)
{
  v5 = v2;
  v6 = sub_261180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorConstants.Environment(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v5, v14);
  (*(v7 + 104))(v10, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  LOBYTE(v5) = sub_264390();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v14, v6);
  v16 = objc_opt_self();
  if (v5)
  {
    v17 = a1;
  }

  else
  {
    v17 = a2;
  }

  v18 = [v16 *v17];
  return sub_263070();
}

uint64_t ColorConstants.booksRed.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v15);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksOrange.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v15);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksGreen.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v15);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksTeal.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v15);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksBlue.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v15);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksPurple.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v15);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksMagenta.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v15);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksIconBackground.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v15);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  LOBYTE(v1) = sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  if ((v1 & 1) == 0)
  {
    return sub_262F80();
  }

  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  sub_263060();
  v17 = sub_263000();

  return v17;
}

uint64_t ColorConstants.booksAXSeparator.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v15);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  sub_263060();
  v17 = sub_263000();

  return v17;
}

uint64_t sub_217C64(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return sub_263070();
}

uint64_t ColorConstants.booksTableSelection.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v15);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  sub_263060();
  v17 = sub_263000();

  return v17;
}

uint64_t sub_217F54(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  sub_263070();
  v2 = sub_263000();

  return v2;
}

unint64_t SynchronousNativeIntentDispatcher.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  sub_19E5C4(a1 + 8);
  *v2 = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  result = sub_F484(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

uint64_t SynchronousNativeIntentDispatcher.register(contentsOf:)(uint64_t *a1)
{
  v2 = *a1;

  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  sub_14FA98(v2, sub_14F8D4, 0, isUniquelyReferenced_nonNull_native, &v6);

  *v1 = v6;
  return result;
}

uint64_t SynchronousNativeIntentDispatcher.withNext(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for SynchronousNativeIntentDispatcher;
  a2[4] = &protocol witness table for SynchronousNativeIntentDispatcher;
  v5 = swift_allocObject();
  *a2 = v5;
  sub_14FE2C(v2, v5 + 16);

  return sub_219540(a1, v5 + 24);
}

uint64_t SynchronousNativeIntentDispatcher.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 24))(a2, a3);
  v8 = v7;
  v11[3] = a2;
  v11[4] = a3;
  v9 = sub_10934(v11);
  (*(*(a2 - 8) + 16))(v9, a1, a2);
  return sub_D23C(v11, v6, v8);
}

uint64_t SynchronousNativeIntentDispatcher.registering(contentsOf:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_14FE2C(v2, a2);
  v5 = *a1;

  v6 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a2;
  sub_14FA98(v5, sub_14F8D4, 0, isUniquelyReferenced_nonNull_native, &v9);

  *a2 = v9;
  return result;
}

uint64_t SynchronousNativeIntentDispatcher.perform<A>(_:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a2;
  v35 = a5;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_263B40();
  v37 = *(v33 - 8);
  v10 = *(v37 + 64);
  __chkstk_darwin(v33);
  v36 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = v15[8];
  __chkstk_darwin(v17);
  v31 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  v34 = a1;
  sub_2185C8(a4, v14);
  v22 = v15[6];
  if (v22(v14, 1, AssociatedTypeWitness) == 1)
  {
    v23 = *(v37 + 8);
    v37 += 8;
    v23(v14, v33);
    v24 = v32;
    v25 = v38;
    result = sub_218898(a4, v36);
    if (!v25)
    {
      v38 = 0;
      if (v22(v36, 1, AssociatedTypeWitness) == 1)
      {
        v23(v36, v33);
        return sub_218A64(v34, v24, a3, a4);
      }

      else
      {
        v28 = v15[4];
        v29 = v31;
        v28(v31, v36, AssociatedTypeWitness);
        return (v28)(v35, v29, AssociatedTypeWitness);
      }
    }
  }

  else
  {
    v27 = v15[4];
    v27(v21, v14, AssociatedTypeWitness);
    return (v27)(v35, v21, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_2185C8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v23 = a2;
  v2 = *(a1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for SynchronousStaticIntent();
  v5 = sub_264A60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_2638A0();
  v24 = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata();
  v15 = swift_dynamicCast();
  v16 = *(v10 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v4);
    (*(v10 + 32))(v14, v9, v4);
    v17 = *(AssociatedTypeWitness - 8);
    v18 = v23;
    (*(v17 + 32))(v23, v14, AssociatedTypeWitness);
    v19 = 0;
    v20 = v18;
  }

  else
  {
    v19 = 1;
    v16(v9, 1, 1, v4);
    (*(v6 + 8))(v9, v5);
    v17 = *(AssociatedTypeWitness - 8);
    v20 = v23;
  }

  return (*(v17 + 56))(v20, v19, 1, AssociatedTypeWitness);
}

uint64_t sub_218898@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 8);
  v6 = sub_2638C0();
  if (*(v4 + 16))
  {
    v8 = sub_D410(v6, v7);
    v10 = v9;

    if (v10)
    {
      sub_30CC(*(v4 + 56) + 40 * v8, v14);
      v11 = sub_F7CC(v14, v15);
      __chkstk_darwin(v11);
      swift_getAssociatedTypeWitness();
      sub_263B40();
      sub_263C50();
      return sub_3080(v15);
    }
  }

  else
  {
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_218A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2196A8(v4 + 8, &v14);
  if (v15)
  {
    sub_F7CC(&v14, v16);
    v9 = v17;
    v10 = v18;
    sub_2E18(v16, v17);
    (*(v10 + 8))(a1, a2, a3, a4, v9, v10);
    return sub_3080(v16);
  }

  else
  {
    sub_19E5C4(&v14);
    v12 = sub_263F80();
    sub_219718();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for IntentDispatcherError.unsupported(_:), v12);
    return swift_willThrow();
  }
}

uint64_t sub_218BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v74 = a6;
  v67 = a2;
  v73 = a7;
  v71 = *(a4 - 8);
  v11 = *(v71 + 64);
  __chkstk_darwin(a1);
  v70 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = sub_263B40();
  v60 = sub_264A60();
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  __chkstk_darwin(v60);
  v64 = &v59 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v69 = a5;
  v68 = a3;
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getAssociatedTypeWitness();
  v18 = sub_263B40();
  v62 = *(v18 - 8);
  v63 = v18;
  v19 = *(v62 + 64);
  __chkstk_darwin(v18);
  v61 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v66 = &v59 - v22;
  v23 = sub_264A60();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v59 - v26;
  v28 = *(v16 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  v32 = &v59 - v31;
  v72 = a4;
  sub_2638A0();
  v74 = AssociatedTypeWitness;
  v76[7] = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata();
  v33 = swift_dynamicCast();
  v34 = *(v28 + 56);
  if (v33)
  {
    v34(v27, 0, 1, v16);
    (*(v28 + 32))(v32, v27, v16);
    v35 = v66;
    v36 = v75;
    (*(v69 + 32))(v32, v67, v68);
    if (v36)
    {
      return (*(v28 + 8))(v32, v16);
    }

    else
    {
      v54 = v62;
      v55 = v63;
      (*(v62 + 16))(v61, v35, v63);
      v56 = v64;
      v57 = v65;
      if (swift_dynamicCast())
      {
        (*(v54 + 8))(v35, v55);
        (*(v28 + 8))(v32, v16);
        v58 = *(v57 - 8);
        (*(v58 + 56))(v56, 0, 1, v57);
        return (*(v58 + 32))(v73, v56, v57);
      }

      else
      {
        (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
        (*(v59 + 8))(v56, v60);
        v76[0] = 0;
        v76[1] = 0xE000000000000000;
        sub_264BC0(73);
        v77._object = 0x8000000000294C00;
        v77._countAndFlagsBits = 0xD00000000000001BLL;
        sub_264530(v77);
        v78._countAndFlagsBits = sub_265260();
        sub_264530(v78);

        v79._countAndFlagsBits = 0xD000000000000029;
        v79._object = 0x8000000000294C20;
        sub_264530(v79);
        v80._countAndFlagsBits = sub_265260();
        sub_264530(v80);

        v81._countAndFlagsBits = 96;
        v81._object = 0xE100000000000000;
        sub_264530(v81);
        result = sub_264CD0();
        __break(1u);
      }
    }
  }

  else
  {
    v34(v27, 1, 1, v16);
    (*(v24 + 8))(v27, v23);
    if (qword_315858 != -1)
    {
      swift_once();
    }

    v38 = sub_260D50();
    sub_B080(v38, qword_315FB8);
    v40 = v70;
    v39 = v71;
    v41 = v72;
    (*(v71 + 16))(v70, a1, v72);
    v42 = sub_260D30();
    v43 = sub_2648F0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v44 = 136315394;
      swift_getDynamicType();
      v45 = sub_265260();
      v46 = v40;
      v47 = v45;
      v49 = v48;
      (*(v39 + 8))(v46, v41);
      v50 = sub_191368(v47, v49, v76);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      v51 = sub_265260();
      v53 = sub_191368(v51, v52, v76);

      *(v44 + 14) = v53;
      swift_arrayDestroy();
    }

    else
    {

      (*(v39 + 8))(v40, v41);
    }

    return (*(*(v74 - 8) + 56))(v73, 1, 1);
  }

  return result;
}

uint64_t sub_219488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v7 = swift_allocObject();
  *a4 = v7;
  sub_14FE2C(v4, v7 + 16);

  return sub_219540(a1, v7 + 24);
}

uint64_t sub_2194F8()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_3080(v0 + 3);
  }

  return swift_deallocObject();
}

uint64_t sub_219540(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320378, &qword_28A310);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195EC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21964C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2196A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320378, &qword_28A310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219718()
{
  result = qword_326580;
  if (!qword_326580)
  {
    sub_263F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326580);
  }

  return result;
}

uint64_t sub_219770@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v5[3];
  v9 = v5[4];
  sub_2E18(v5, v8);
  return sub_218BB0(v6, v7, v8, v3, v9, *(v4 + 8), a1);
}

double static ListItemViewModel.topChartsSwoosh(assetInfo:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = *(v4 + 8);
  v6 = sub_2606E0();
  v8 = v7;
  sub_30CC(a1, v15);
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 255;
  sub_3E840(v15, a2 + 8);
  static ListItemMetadata.topChartsSwooshPage(assetInfo:)(a1, a2 + 80);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_30CC(a1, a2 + 408);
  sub_30CC(a1, v12);
  v9 = type metadata accessor for ListItemViewModel();
  CardInfo.init(with:alwaysPresentNewCardSet:)(v12, 1, a2 + *(v9 + 40));
  sub_82640(v15);
  *a2 = 0;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0;
  sub_82704(v13, a2 + 360);
  *(a2 + 400) = 1;
  v10 = a2 + *(v9 + 44);
  *v10 = 0xD000000000000011;
  *(v10 + 8) = 0x8000000000294C50;
  result = 0.0;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 128) = v6;
  *(v10 + 136) = v8;
  *(v10 + 144) = 2;
  return result;
}

double static ListItemViewModel.topChartsGroupingSwoosh(assetInfo:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = *(v4 + 8);
  v6 = sub_2606E0();
  v8 = v7;
  sub_30CC(a1, v15);
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 255;
  sub_3E840(v15, a2 + 8);
  static ListItemMetadata.topChartsGroupingSwoosh(assetInfo:)(a1, a2 + 80);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_30CC(a1, a2 + 408);
  sub_30CC(a1, v12);
  v9 = type metadata accessor for ListItemViewModel();
  CardInfo.init(with:alwaysPresentNewCardSet:)(v12, 1, a2 + *(v9 + 40));
  sub_82640(v15);
  *a2 = 0;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0;
  sub_82704(v13, a2 + 360);
  *(a2 + 400) = 1;
  v10 = a2 + *(v9 + 44);
  *v10 = 0xD00000000000001ALL;
  *(v10 + 8) = 0x8000000000294C70;
  result = 0.0;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 128) = v6;
  *(v10 + 136) = v8;
  *(v10 + 144) = 2;
  return result;
}

__n128 ShelfItemKind.init(componentType:gridType:itemsPerColumn:isCollage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  v7 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v7;
  result = *(a3 + 32);
  *(a7 + 48) = result;
  *(a7 + 64) = a4;
  *(a7 + 72) = a5 & 1;
  *(a7 + 73) = a6;
  return result;
}

uint64_t ShelfItemKind.shelfGridLayout(context:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    return (*(v6 + 8))(a1, v5, v6);
  }

  *a2 = 1;
  v8 = enum case for ShelfGridLayout.vertical(_:);
  v9 = sub_260B40();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

uint64_t ShelfItemKind.shelfGridType.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  if (v2)
  {
    *a1 = v3;
    a1[1] = v2;
    a1[2] = v4;
    a1[3] = v5;
    a1[4] = v6;
    a1[5] = v7;
  }

  else
  {
    v9 = *v1;
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = a1;
      if (qword_3159B8 != -1)
      {
        swift_once();
        v12 = a1;
      }

      v13 = *algn_31E7F8;
      v14 = qword_31E800;
      v15 = unk_31E808;
      v16 = qword_31E810;
      v17 = unk_31E818;
      *v12 = qword_31E7F0;
      v12[1] = v13;
      v12[2] = v14;
      v12[3] = v15;
      v12[4] = v16;
      v12[5] = v17;
    }

    else
    {
      (*(v10 + 16))(v9, v10);
    }
  }

  return sub_219CF8(v3, v2);
}

uint64_t sub_219CF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ShelfItemKind.itemsPerColumn.getter()
{
  if (*(v0 + 72))
  {
    return 1;
  }

  else
  {
    return *(v0 + 64);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShelfItemKind.validateItems(_:)(Swift::OpaquePointer a1)
{
  v2 = v1[1];
  v3 = *v1;
  sub_219DB0();
}

uint64_t sub_219DB0()
{
  sub_2EF0(&qword_317250, &unk_2697A0);
  if (sub_264D30())
  {
  }

  sub_21AE1C();
  swift_allocError();
  return swift_willThrow();
}

Swift::Int sub_219E48()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_219F28()
{
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_219FF4()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_21A0D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21ADD0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_21A100(uint64_t *a1@<X8>)
{
  v2 = 0xED00006570795474;
  v3 = 0x6E656E6F706D6F63;
  v4 = 0xEE006E6D756C6F43;
  v5 = 0x726550736D657469;
  if (*v1 != 2)
  {
    v5 = 0x67616C6C6F437369;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x697247666C656873;
    v2 = 0xED00006570795464;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_21A19C()
{
  v1 = 0x6E656E6F706D6F63;
  v2 = 0x726550736D657469;
  if (*v0 != 2)
  {
    v2 = 0x67616C6C6F437369;
  }

  if (*v0)
  {
    v1 = 0x697247666C656873;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21A234@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21ADD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A25C(uint64_t a1)
{
  v2 = sub_21A96C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_21A298(uint64_t a1)
{
  v2 = sub_21A96C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfItemKind.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_326588, &qword_28A3C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v50 - v8;
  sub_30CC(a1, &v60);
  v10 = sub_2644F0();
  if (v2)
  {

    v12 = a1[4];
    sub_2E18(a1, a1[3]);
    sub_21A96C();
    sub_265120();
    LOBYTE(v60) = 0;
    v13 = sub_264DC0();
    v15 = v14;
    v54 = a2;
    v16 = a1[4];
    sub_2E18(a1, a1[3]);
    Decoder.componentKindTable.getter();
    v17 = sub_263E90();
    if (*(v17 + 16))
    {
      v18 = sub_D410(v13, v15);
      if (v19)
      {
        v20 = v18;

        v55 = *(*(v17 + 56) + 16 * v20);

        LOBYTE(v56) = 1;
        sub_21AAAC();
        sub_264DB0();
        v52 = v60;
        v21 = v62;
        v51 = v61;
        v23 = v63;
        v22 = v64;
        LOBYTE(v60) = 2;
        v53 = sub_264D90();
        v70 = v24 & 1;
        LOBYTE(v60) = 3;
        v45 = sub_264D80();
        (*(v6 + 8))(v9, v5);
        v46 = *(&v52 + 1);
        v47 = v52;
        v48 = v51;
        v49 = v53;
LABEL_8:
        DWORD2(v52) = v45;
        v53 = v49;
        v56 = v55;
        *&v57 = v47;
        *(&v57 + 1) = v46;
        *&v58 = v48;
        *(&v58 + 1) = v21;
        *v59 = v23;
        *&v59[8] = v22;
        *&v59[16] = v49;
        v32 = v70;
        v59[24] = v70;
        v59[25] = v45;
        v33 = *v59;
        v34 = v54;
        v54[2] = v58;
        v34[3] = v33;
        *(v34 + 58) = *&v59[10];
        v35 = v57;
        *v34 = v56;
        v34[1] = v35;
        v36 = v22;
        v37 = v23;
        v38 = v21;
        v39 = v48;
        sub_21AB00(&v56, &v60);
        sub_3080(a1);
        v60 = v55;
        v61 = v47;
        v62 = v46;
        v63 = v39;
        v64 = v38;
        v65 = v37;
        v66 = v36;
        v67 = v53;
        v68 = v32;
        v69 = BYTE8(v52);
        return sub_21AB38(&v60);
      }
    }

    LOBYTE(v56) = 0;
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_264BC0(34);

    *&v60 = 0x6E656E6F706D6F43;
    *(&v60 + 1) = 0xEF20657079742074;
    v73._countAndFlagsBits = v13;
    v73._object = v15;
    sub_264530(v73);

    v74._object = 0x8000000000294C90;
    v74._countAndFlagsBits = 0xD000000000000011;
    sub_264530(v74);
    sub_264C10();
    swift_allocError();
    sub_21AA48();
    sub_264BE0();

    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v25 = v10;
    v26 = v11;
    v27 = a1[4];
    sub_2E18(a1, a1[3]);
    Decoder.componentKindTable.getter();
    v28 = sub_263E90();
    if (*(v28 + 16))
    {
      v29 = sub_D410(v25, v26);
      if (v30)
      {
        v31 = v29;
        v54 = a2;

        v55 = *(*(v28 + 56) + 16 * v31);

        v46 = 0;
        v47 = 0;
        v48 = 0;
        v21 = 0;
        v23 = 0;
        v22 = 0;
        v49 = 0;
        v70 = 1;
        v45 = 2;
        goto LABEL_8;
      }
    }

    v41 = sub_264C10();
    swift_allocError();
    v43 = v42;
    v44 = a1[4];
    sub_2E18(a1, a1[3]);
    sub_2650E0();
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_264BC0(34);

    *&v60 = 0x6E656E6F706D6F43;
    *(&v60 + 1) = 0xEF20657079742074;
    v71._countAndFlagsBits = v25;
    v71._object = v26;
    sub_264530(v71);

    v72._object = 0x8000000000294C90;
    v72._countAndFlagsBits = 0xD000000000000011;
    sub_264530(v72);
    sub_264BF0();
    (*(*(v41 - 8) + 104))(v43, enum case for DecodingError.dataCorrupted(_:), v41);
    swift_willThrow();
  }

  return sub_3080(a1);
}

unint64_t sub_21A96C()
{
  result = qword_326590;
  if (!qword_326590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326590);
  }

  return result;
}

uint64_t sub_21A9C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21AA48()
{
  result = qword_326598;
  if (!qword_326598)
  {
    sub_2F9C(&qword_326588, &qword_28A3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326598);
  }

  return result;
}

unint64_t sub_21AAAC()
{
  result = qword_3265A0;
  if (!qword_3265A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265A0);
  }

  return result;
}

unint64_t sub_21AB6C()
{
  result = qword_3265A8;
  if (!qword_3265A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265A8);
  }

  return result;
}

uint64_t sub_21ABC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_21ABD8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21ABFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_21AC44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21ACCC()
{
  result = qword_3265B0;
  if (!qword_3265B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265B0);
  }

  return result;
}

unint64_t sub_21AD24()
{
  result = qword_3265B8;
  if (!qword_3265B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265B8);
  }

  return result;
}

unint64_t sub_21AD7C()
{
  result = qword_3265C0;
  if (!qword_3265C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265C0);
  }

  return result;
}

uint64_t sub_21ADD0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3019A0;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_21AE1C()
{
  result = qword_3265C8;
  if (!qword_3265C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265C8);
  }

  return result;
}

unsigned __int8 *ColorConstants.subscript.getter(uint64_t a1, unint64_t a2)
{
  if (qword_315AD8 != -1)
  {
    swift_once();
  }

  v4 = qword_354040;
  if (*(qword_354040 + 16) && (v5 = sub_D410(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return Color.init(hexString:)(a1, a2);
  }
}

uint64_t sub_21AF58()
{
  sub_2EF0(&qword_3265E8, &qword_28A6B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_28A680;
  *(inited + 32) = 0x79654B736B6F6F62;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = 0x636142736B6F6F62;
  *(inited + 64) = 0xEF646E756F72676BLL;
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x8000000000294CB0;
  *(inited + 96) = swift_getKeyPath();
  *(inited + 104) = 0xD000000000000017;
  *(inited + 112) = 0x8000000000294CD0;
  *(inited + 120) = swift_getKeyPath();
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x8000000000294CF0;
  *(inited + 144) = swift_getKeyPath();
  *(inited + 152) = 0xD00000000000001FLL;
  *(inited + 160) = 0x8000000000294D10;
  *(inited + 168) = swift_getKeyPath();
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x8000000000294D30;
  *(inited + 192) = swift_getKeyPath();
  *(inited + 200) = 0x646552736B6F6F62;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 216) = swift_getKeyPath();
  *(inited + 224) = 0x61724F736B6F6F62;
  *(inited + 232) = 0xEB0000000065676ELL;
  *(inited + 240) = swift_getKeyPath();
  *(inited + 248) = 0x617247736B6F6F62;
  *(inited + 256) = 0xE900000000000079;
  *(inited + 264) = swift_getKeyPath();
  *(inited + 272) = 0x657247736B6F6F62;
  *(inited + 280) = 0xEA00000000006E65;
  *(inited + 288) = swift_getKeyPath();
  *(inited + 296) = 0x616554736B6F6F62;
  *(inited + 304) = 0xE90000000000006CLL;
  *(inited + 312) = swift_getKeyPath();
  *(inited + 320) = 0x756C42736B6F6F62;
  *(inited + 328) = 0xE900000000000065;
  *(inited + 336) = swift_getKeyPath();
  *(inited + 344) = 0x727550736B6F6F62;
  *(inited + 352) = 0xEB00000000656C70;
  *(inited + 360) = swift_getKeyPath();
  strcpy((inited + 368), "booksMagenta");
  *(inited + 381) = 0;
  *(inited + 382) = -5120;
  *(inited + 384) = swift_getKeyPath();
  *(inited + 392) = 0xD000000000000013;
  *(inited + 400) = 0x8000000000294DB0;
  *(inited + 408) = swift_getKeyPath();
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x8000000000294DD0;
  *(inited + 432) = swift_getKeyPath();
  strcpy((inited + 440), "booksSeparator");
  *(inited + 455) = -18;
  *(inited + 456) = swift_getKeyPath();
  *(inited + 464) = 0xD000000000000013;
  *(inited + 472) = 0x8000000000294DF0;
  *(inited + 480) = swift_getKeyPath();
  *(inited + 488) = 0xD000000000000015;
  *(inited + 496) = 0x8000000000294E10;
  *(inited + 504) = swift_getKeyPath();
  *(inited + 512) = 0xD00000000000001ELL;
  *(inited + 520) = 0x8000000000294E30;
  *(inited + 528) = swift_getKeyPath();
  *(inited + 536) = 0x62614C736B6F6F62;
  *(inited + 544) = 0xEA00000000006C65;
  *(inited + 552) = swift_getKeyPath();
  *(inited + 560) = 0xD000000000000013;
  *(inited + 568) = 0x8000000000294D50;
  *(inited + 576) = swift_getKeyPath();
  *(inited + 584) = 0xD000000000000012;
  *(inited + 592) = 0x8000000000294D70;
  *(inited + 600) = swift_getKeyPath();
  *(inited + 608) = 0xD000000000000014;
  *(inited + 616) = 0x8000000000294D90;
  *(inited + 624) = swift_getKeyPath();
  *(inited + 632) = 0x696857736B6F6F62;
  *(inited + 640) = 0xEF6C6562614C6574;
  *(inited + 648) = swift_getKeyPath();
  strcpy((inited + 656), "vibrantPrimary");
  *(inited + 671) = -18;
  *(inited + 672) = swift_getKeyPath();
  *(inited + 680) = 0xD000000000000010;
  *(inited + 688) = 0x8000000000294E50;
  *(inited + 696) = swift_getKeyPath();
  *(inited + 704) = 0x54746E6172626976;
  *(inited + 712) = 0xEF79726169747265;
  *(inited + 720) = swift_getKeyPath();
  *(inited + 728) = 0xD000000000000011;
  *(inited + 736) = 0x8000000000294E70;
  *(inited + 744) = swift_getKeyPath();
  *(inited + 752) = 0xD000000000000017;
  *(inited + 760) = 0x8000000000294E90;
  *(inited + 768) = swift_getKeyPath();
  *(inited + 776) = 0xD000000000000019;
  *(inited + 784) = 0x8000000000294EB0;
  *(inited + 792) = swift_getKeyPath();
  *(inited + 800) = 0xD00000000000001BLL;
  *(inited + 808) = 0x8000000000294ED0;
  *(inited + 816) = swift_getKeyPath();
  v1 = sub_F038(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_3265F0, &qword_28ABE8);
  result = swift_arrayDestroy();
  qword_354040 = v1;
  return result;
}

uint64_t sub_21B5A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_261180();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorConstants.Environment(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(a1, v12);
  (*(v5 + 104))(v8, enum case for ColorScheme.dark(_:), v4);
  sub_60AB0();
  LOBYTE(a1) = sub_264390();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v12, v4);
  if (a1)
  {
    result = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  }

  else
  {
    result = sub_262F80();
  }

  *a2 = result;
  return result;
}

uint64_t sub_21B734@<X0>(SEL *a1@<X3>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() *a1];
  result = sub_263070();
  *a2 = result;
  return result;
}

uint64_t sub_21B77C@<X0>(SEL *a1@<X3>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() *a1];
  sub_263070();
  v4 = sub_263000();

  *a2 = v4;
  return result;
}

uint64_t sub_21B7F0()
{
  sub_2EF0(&qword_3265D8, &qword_28A6A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_28A690;
  *(inited + 32) = 0x79654B736B6F6F62;
  *(inited + 40) = 0xE800000000000000;
  v1 = objc_opt_self();
  *(inited + 48) = [v1 labelColor];
  *(inited + 56) = 0x636142736B6F6F62;
  *(inited + 64) = 0xEF646E756F72676BLL;
  *(inited + 72) = [v1 systemBackgroundColor];
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x8000000000294CB0;
  *(inited + 96) = [v1 secondarySystemBackgroundColor];
  *(inited + 104) = 0xD000000000000017;
  *(inited + 112) = 0x8000000000294CD0;
  *(inited + 120) = [v1 tertiarySystemBackgroundColor];
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x8000000000294CF0;
  *(inited + 144) = [v1 systemGroupedBackgroundColor];
  *(inited + 152) = 0xD00000000000001FLL;
  *(inited + 160) = 0x8000000000294D10;
  *(inited + 168) = [v1 secondarySystemGroupedBackgroundColor];
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x8000000000294D30;
  *(inited + 192) = [v1 tertiarySystemGroupedBackgroundColor];
  *(inited + 200) = 0x646552736B6F6F62;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 216) = [v1 systemRedColor];
  *(inited + 224) = 0x61724F736B6F6F62;
  *(inited + 232) = 0xEB0000000065676ELL;
  *(inited + 240) = [v1 systemRedColor];
  *(inited + 248) = 0x657247736B6F6F62;
  *(inited + 256) = 0xEA00000000006E65;
  *(inited + 264) = [v1 systemGreenColor];
  *(inited + 272) = 0x616554736B6F6F62;
  *(inited + 280) = 0xE90000000000006CLL;
  *(inited + 288) = [v1 systemTealColor];
  *(inited + 296) = 0x756C42736B6F6F62;
  *(inited + 304) = 0xE900000000000065;
  *(inited + 312) = [v1 systemBlueColor];
  *(inited + 320) = 0x727550736B6F6F62;
  *(inited + 328) = 0xEB00000000656C70;
  *(inited + 336) = [v1 systemPurpleColor];
  strcpy((inited + 344), "booksMagenta");
  *(inited + 357) = 0;
  *(inited + 358) = -5120;
  *(inited + 360) = [v1 magentaColor];
  *(inited + 368) = 0x62614C736B6F6F62;
  *(inited + 376) = 0xEA00000000006C65;
  *(inited + 384) = [v1 labelColor];
  *(inited + 392) = 0xD000000000000013;
  *(inited + 400) = 0x8000000000294D50;
  *(inited + 408) = [v1 secondaryLabelColor];
  *(inited + 416) = 0xD000000000000012;
  *(inited + 424) = 0x8000000000294D70;
  *(inited + 432) = [v1 tertiaryLabelColor];
  *(inited + 440) = 0xD000000000000014;
  *(inited + 448) = 0x8000000000294D90;
  *(inited + 456) = [v1 quaternaryLabelColor];
  *(inited + 464) = 0x696857736B6F6F62;
  *(inited + 472) = 0xEF6C6562614C6574;
  *(inited + 480) = [v1 systemWhiteColor];
  v2 = sub_F954(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_3265E0, &qword_28A6B0);
  result = swift_arrayDestroy();
  off_3265D0[0] = v2;
  return result;
}

UIColor_optional __swiftcall ColorConstants.uiColor(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_315AE0 != -1)
  {
    swift_once();
  }

  v3 = off_3265D0[0];
  if (*(off_3265D0[0] + &dword_10) && (v4 = sub_D410(countAndFlagsBits, object), (v5 & 1) != 0))
  {
    v6 = *(*&stru_20.segname[v3 + 16] + 8 * v4);
    v7 = v6;
    v9 = v6;
  }

  else
  {

    v9 = Color.init(hexString:)(countAndFlagsBits, object);
    if (v9)
    {
      sub_B0654();
      v9 = sub_2649F0();
    }
  }

  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

uint64_t sub_21BE28@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksRed.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BE54@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksOrange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BE80@<X0>(uint64_t *a1@<X8>)
{
  result = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
  *a1 = result;
  return result;
}

uint64_t sub_21BEA8@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksGreen.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BED4@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksTeal.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BF00@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksBlue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BF2C@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksPurple.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BF58@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksMagenta.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BF84@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksIconBackground.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BFB0@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksAXSeparator.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BFFC@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksTableSelection.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21C028@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksButtonBackground.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21C054@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksSecondaryButtonBackground.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21C080@<X0>(uint64_t *a1@<X8>)
{
  result = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  *a1 = result;
  return result;
}

uint64_t sub_21C0A8@<X0>(uint64_t *a1@<X8>)
{
  result = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  *a1 = result;
  return result;
}

uint64_t sub_21C110@<X0>(uint64_t *a1@<X8>)
{
  result = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  *a1 = result;
  return result;
}

uint64_t sub_21C1A4@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.vibrantButtonBackground.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21C1F4@<X0>(void (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  a1();
  v3 = sub_263000();

  *a2 = v3;
  return result;
}

uint64_t UITraitCollection.isInCard.getter()
{
  sub_21C364();

  return sub_264980();
}

unint64_t sub_21C364()
{
  result = qword_3265F8;
  if (!qword_3265F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265F8);
  }

  return result;
}

uint64_t UITraitCollection.isInactiveCard.getter()
{
  sub_21C444();

  return sub_264980();
}

unint64_t sub_21C444()
{
  result = qword_326600;
  if (!qword_326600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326600);
  }

  return result;
}

uint64_t UIMutableTraits.isInCard.getter()
{
  sub_21C364();

  return sub_260D60();
}

uint64_t UIMutableTraits.isInCard.setter()
{
  sub_21C364();

  return sub_260D70();
}

uint64_t (*UIMutableTraits.isInCard.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_21C364();
  *(a1 + 24) = sub_260D60() & 1;
  return sub_21C5CC;
}

uint64_t UIMutableTraits.isInactiveCard.getter()
{
  sub_21C444();

  return sub_260D60();
}

uint64_t UIMutableTraits.isInactiveCard.setter()
{
  sub_21C444();

  return sub_260D70();
}

uint64_t (*UIMutableTraits.isInactiveCard.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_21C444();
  *(a1 + 24) = sub_260D60() & 1;
  return sub_21C720;
}

uint64_t sub_21C740(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  v6 = *(a1 + 24);
  a3();
  return sub_260D70();
}

uint64_t sub_21C7A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  result = UIMutableTraits.isInCard.getter();
  *a3 = result & 1;
  return result;
}

uint64_t sub_21C7D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  return UIMutableTraits.isInCard.setter();
}

__n128 sub_21C814(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21C820@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  result = UIMutableTraits.isInactiveCard.getter();
  *a3 = result & 1;
  return result;
}

uint64_t sub_21C858(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  return UIMutableTraits.isInactiveCard.setter();
}

uint64_t sub_21C90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShrinkableText();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ListItemMetadataEyebrow.text(localizer:)(uint64_t a1)
{
  v3 = sub_260BD0();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v1, v5);
  sub_30CC(a1, v10);
  return sub_2627B0();
}

uint64_t ListItemMetadataEyebrow.shorterText(localizer:)(uint64_t a1)
{
  v3 = sub_260BD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v10 = &v20[-v9 - 8];
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v20[-v13 - 8];
  v15 = type metadata accessor for ShrinkableText();
  sub_104B0(v1 + *(v15 + 20), v14);
  v16 = (*(v4 + 48))(v14, 1, v3);
  result = 0;
  if (v16 != 1)
  {
    (*(v4 + 32))(v10, v14, v3, 0);
    (*(v4 + 16))(v7, v10, v3);
    sub_30CC(a1, v20);
    v18 = sub_2627B0();
    (*(v4 + 8))(v10, v3);
    return v18;
  }

  return result;
}

uint64_t ListItemMetadataEyebrow.shortestText(localizer:)(uint64_t a1)
{
  v3 = sub_260BD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v10 = &v20[-v9 - 8];
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v20[-v13 - 8];
  v15 = type metadata accessor for ShrinkableText();
  sub_104B0(v1 + *(v15 + 24), v14);
  v16 = (*(v4 + 48))(v14, 1, v3);
  result = 0;
  if (v16 != 1)
  {
    (*(v4 + 32))(v10, v14, v3, 0);
    (*(v4 + 16))(v7, v10, v3);
    sub_30CC(a1, v20);
    v18 = sub_2627B0();
    (*(v4 + 8))(v10, v3);
    return v18;
  }

  return result;
}

uint64_t sub_21CE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x62616B6E69726873 && a2 == 0xEE0074786554656CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CF10(uint64_t a1)
{
  v2 = sub_21D248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_21CF4C(uint64_t a1)
{
  v2 = sub_21D248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListItemMetadataEyebrow.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ShrinkableText();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_326608, &qword_28ACD8);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ListItemMetadataEyebrow();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_21D248();
  sub_265120();
  if (!v2)
  {
    v16 = v19;
    sub_21D42C(&qword_326618, type metadata accessor for ShrinkableText);
    v17 = v21;
    sub_264DF0();
    (*(v20 + 8))(v10, v7);
    sub_21D29C(v17, v14, type metadata accessor for ShrinkableText);
    sub_21D29C(v14, v16, type metadata accessor for ListItemMetadataEyebrow);
  }

  return sub_3080(a1);
}

uint64_t type metadata accessor for ListItemMetadataEyebrow()
{
  result = qword_326690;
  if (!qword_326690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D248()
{
  result = qword_326610;
  if (!qword_326610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326610);
  }

  return result;
}

uint64_t sub_21D29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D304(uint64_t a1)
{
  result = sub_21D42C(&qword_326620, type metadata accessor for ListItemMetadataEyebrow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D364(uint64_t a1)
{
  result = sub_21D42C(&qword_326628, type metadata accessor for ListItemMetadataEyebrow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D3D4(uint64_t a1)
{
  result = sub_21D42C(&qword_326630, type metadata accessor for ListItemMetadataEyebrow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D42C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShrinkableText();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShrinkableText();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D578()
{
  result = type metadata accessor for ShrinkableText();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21D5F8()
{
  result = qword_3266C8;
  if (!qword_3266C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3266C8);
  }

  return result;
}

unint64_t sub_21D650()
{
  result = qword_3266D0;
  if (!qword_3266D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3266D0);
  }

  return result;
}

unint64_t sub_21D6A8()
{
  result = qword_3266D8[0];
  if (!qword_3266D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3266D8);
  }

  return result;
}

uint64_t sub_21D6FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21D794()
{
  sub_262080();
  sub_21E928();
  return sub_265250();
}

uint64_t sub_21D7E4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_21D800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_2610F0();
  v103 = *(v5 - 8);
  v6 = *(v103 + 64);
  __chkstk_darwin(v5);
  v102 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v108 = &v99 - v9;
  v10 = sub_261110();
  v120 = v5;
  v11 = sub_261F90();
  v109 = *(v11 - 8);
  v12 = *(v109 + 64);
  __chkstk_darwin(v11);
  v112 = (&v99 - v13);
  v14 = sub_262080();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v118 = v10;
  v101 = *(v10 - 8);
  v16 = *(v101 + 64);
  __chkstk_darwin(v17);
  v100 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v106 = &v99 - v20;
  v21 = sub_263260();
  v99 = *(v21 - 8);
  v22 = *(v99 + 64);
  __chkstk_darwin(v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v105 = &v99 - v26;
  v27 = sub_2632E0();
  v117 = v21;
  v28 = sub_261F90();
  v107 = *(v28 - 8);
  v29 = *(v107 + 64);
  __chkstk_darwin(v28);
  v111 = (&v99 - v30);
  v122 = v27;
  v31 = *(v27 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v33);
  v35 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v104 = &v99 - v37;
  v115 = v38;
  v119 = v11;
  v116 = sub_261F90();
  v114 = *(v116 - 8);
  v39 = *(v114 + 64);
  __chkstk_darwin(v116);
  v113 = &v99 - v40;
  v110 = &v99;
  v41 = *v2;
  v42 = *(v2 + 8);
  v43 = v2[2];
  v44 = *(v2 + 24);
  v123 = v3;
  v124 = v4;
  v125 = v2;
  if (v42 > 1)
  {
    if (v42 == 2)
    {
      sub_21D794();
      v57 = v100;
      sub_261100();
      v58 = v118;
      WitnessTable = swift_getWitnessTable();
      v60 = v106;
      sub_1609C(v57, v58, WitnessTable);
      v111 = *(v101 + 8);
      v111(v57, v58);
      sub_1609C(v60, v58, WitnessTable);
      v110 = swift_getWitnessTable();
      sub_1D738(v57, v58);
      v61 = swift_getWitnessTable();
      v62 = swift_getWitnessTable();
      v136 = v61;
      v137 = v62;
      v63 = v115;
      swift_getWitnessTable();
      v134 = WitnessTable;
      v135 = v110;
      v64 = v119;
      swift_getWitnessTable();
      v65 = v112;
      v54 = v113;
      sub_1D830(v112, v63, v64);
      (*(v109 + 8))(v65, v64);
      v66 = v111;
      v111(v57, v58);
      v66(v106, v58);
    }

    else
    {
      sub_19E724();
      v79 = v102;
      sub_2610E0();
      v80 = v120;
      v81 = swift_getWitnessTable();
      v82 = v108;
      sub_1609C(v79, v80, v81);
      v111 = *(v103 + 8);
      v111(v79, v80);
      sub_1609C(v82, v80, v81);
      v83 = v118;
      v110 = swift_getWitnessTable();
      sub_1D830(v79, v83, v80);
      v84 = swift_getWitnessTable();
      v85 = swift_getWitnessTable();
      v146 = v84;
      v147 = v85;
      v86 = v115;
      swift_getWitnessTable();
      v144 = v110;
      v145 = v81;
      v87 = v119;
      swift_getWitnessTable();
      v88 = v112;
      v54 = v113;
      sub_1D830(v112, v86, v87);
      (*(v109 + 8))(v88, v87);
      v89 = v111;
      v111(v79, v80);
      v89(v108, v80);
    }
  }

  else if (v42)
  {
    sub_263250();
    v67 = v117;
    v68 = swift_getWitnessTable();
    v69 = v105;
    sub_1609C(v24, v67, v68);
    v112 = *(v99 + 8);
    (v112)(v24, v67);
    sub_1609C(v69, v67, v68);
    v70 = v122;
    v71 = swift_getWitnessTable();
    sub_1D830(v24, v70, v67);
    v132 = v71;
    v133 = v68;
    v72 = v115;
    swift_getWitnessTable();
    v73 = swift_getWitnessTable();
    v74 = swift_getWitnessTable();
    v130 = v73;
    v131 = v74;
    swift_getWitnessTable();
    v75 = v113;
    v76 = v111;
    sub_1D738(v111, v72);
    (*(v107 + 8))(v76, v72);
    v77 = v24;
    v54 = v75;
    v78 = v112;
    (v112)(v77, v67);
    v78(v105, v67);
  }

  else
  {
    sub_2632D0();
    v45 = v31;
    v46 = v122;
    v47 = swift_getWitnessTable();
    v48 = v104;
    sub_1609C(v35, v46, v47);
    v49 = *(v45 + 8);
    v110 = (v45 + 8);
    v112 = v49;
    (v49)(v35, v46);
    sub_1609C(v48, v46, v47);
    v50 = swift_getWitnessTable();
    sub_1D738(v35, v46);
    v128 = v47;
    v129 = v50;
    v51 = v115;
    swift_getWitnessTable();
    v52 = swift_getWitnessTable();
    v53 = swift_getWitnessTable();
    v126 = v52;
    v127 = v53;
    swift_getWitnessTable();
    v54 = v113;
    v55 = v111;
    sub_1D738(v111, v51);
    (*(v107 + 8))(v55, v51);
    v56 = v112;
    (v112)(v35, v46);
    v56(v104, v46);
  }

  v90 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v142 = v90;
  v143 = v91;
  v92 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  v94 = swift_getWitnessTable();
  v140 = v93;
  v141 = v94;
  v95 = swift_getWitnessTable();
  v138 = v92;
  v139 = v95;
  v96 = v116;
  v97 = swift_getWitnessTable();
  sub_1609C(v54, v96, v97);
  return (*(v114 + 8))(v54, v96);
}

uint64_t sub_21E76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v17 - v11;
  v13 = *(v10 + 40);
  (*(v10 + 32))(v14);
  sub_1609C(v9, a2, a3);
  v15 = *(v5 + 8);
  v15(v9, a2);
  sub_1609C(v12, a2, a3);
  return (v15)(v12, a2);
}

uint64_t sub_21E8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_21D800(a1, a2);
}

unint64_t sub_21E928()
{
  result = qword_317430;
  if (!qword_317430)
  {
    sub_262080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317430);
  }

  return result;
}

uint64_t sub_21E9A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2632E0();
  sub_263260();
  sub_261F90();
  sub_261110();
  sub_2610F0();
  sub_261F90();
  sub_261F90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

double SizeConstants.scaledValue(_:relativeTo:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for SizeConstants.Environment(0);
  v9 = *(v8 - 8);
  v42 = v8 - 8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_262730();
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v40);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2EF0(&qword_326760, &qword_28AF50);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = (&v39 - v19);
  v21 = sub_2EF0(&qword_326768, &qword_28AF58);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = (&v39 - v27);
  sub_21EEDC(v4, &v39 + *(v22 + 36) - v27);
  *v28 = a2;
  v28[1] = a3;
  sub_8198(v28, v26, &qword_326768, &qword_28AF58);
  v29 = a1;
  v30 = v40;
  (*(v12 + 16))(v15, v29, v40);
  sub_8198(v26, v20, &qword_326768, &qword_28AF58);
  v31 = v41;
  sub_21EEDC(&v26[*(v22 + 36)], v41);
  v32 = *(v42 + 32);
  v33 = sub_1CF30(v15, v31 + v32);
  (*(v12 + 8))(v15, v30);
  sub_8E80(v26, &qword_326768, &qword_28AF58);
  v34 = sub_261690();
  (*(*(v34 - 8) + 8))(v31 + v32, v34);
  v35 = 1.0;
  if ((*&v33 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v35 = v33;
  }

  if ((~*&v33 & 0x7FF0000000000000) != 0)
  {
    v35 = v33;
  }

  *(v20 + *(v17 + 44)) = v35;
  v36 = v20[1];
  v37 = sub_21FBC4(&qword_326760, &qword_28AF50, &qword_326768, &qword_28AF58, *v20);
  sub_21FBC4(&qword_326760, &qword_28AF50, &qword_326768, &qword_28AF58, v36);
  sub_8E80(v20, &qword_326760, &qword_28AF50);
  sub_8E80(v28, &qword_326768, &qword_28AF58);
  return v37;
}

uint64_t sub_21EEDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.sizes.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v1, v5);
  return sub_21F65C(v7, a1);
}

uint64_t SizeConstants.Scaled.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*a1 + class metadata base offset for KeyPath + 8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v13 - v10;
  swift_getAtKeyPath();
  sub_21FD54(v11, a2, v7, a3, a4);
  return (*(v8 + 8))(v11, v7);
}

uint64_t SizeConstants.Scaled.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v13 - v9;
  swift_getAtKeyPath();
  v11 = *(v3 + *(a2 + 36));
  (*(v7 + 32))(a3, v10, v6);
  result = type metadata accessor for SizeConstants.Scaled();
  *(a3 + *(result + 36)) = v11;
  return result;
}

uint64_t ScalableSizeConstants.scaled(relativeTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_262730();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a2 - 8) + 64);
  v17 = __chkstk_darwin(v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v5, a2, v17);
  (*(v11 + 16))(v14, a1, v10);
  return SizeConstants.Scaled.init(base:relativeTo:)(v19, v14, a2, a3, a4);
}

uint64_t ScalableSizeConstants.scaled.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, enum case for Font.TextStyle.body(_:), v6, v9);
  ScalableSizeConstants.scaled(relativeTo:)(v11, a1, a2, a3);
  return (*(v7 + 8))(v11, v6);
}

uint64_t SizeConstants.Environment.viewSizeConditions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SizeConstants.Environment(0);
  v4 = *(v1 + *(result + 32)) | (*(v1 + *(result + 32) + 2) << 16);
  if (*(v1 + *(result + 32)) == 2)
  {
    result = sub_264CD0();
    __break(1u);
  }

  else
  {
    *(v1 + *(result + 32) + 2);
    *a1 = *(v1 + *(result + 32)) & 1;
    a1[1] = BYTE1(v4) & 1;
    a1[2] = BYTE2(v4) & 1;
  }

  return result;
}

uint64_t SizeConstants.Environment.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
  v4 = sub_261690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21F65C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  *a2 = EnvironmentValues.isCompact.getter() & 1;
  sub_6E2E0();
  sub_261CA0();
  a2[1] = v18;
  v9 = type metadata accessor for SizeConstants.Environment(0);
  v10 = &a2[v9[6]];
  sub_261A60();
  sub_2619D0();
  *&a2[v9[7]] = v11;
  sub_B7C8();
  sub_261CB0();
  v12 = *(v5 + 8);
  v12(a1, v4);
  result = (v12)(v8, v4);
  v14 = v16[6];
  v15 = &a2[v9[8]];
  v15[2] = v17;
  *v15 = v14;
  return result;
}

uint64_t SizeConstants.Scaled.init(base:relativeTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = type metadata accessor for SizeConstants.Environment(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SizeConstants.Scaled();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v27 - v18;
  v20 = *(a3 - 8);
  (*(v20 + 16))(&v27 - v18, a1, a3, v17);
  (*(a4 + 8))(a3, a4);
  v21 = *(v10 + 32);
  v22 = sub_1CF30(a2, &v13[v21]);
  (*(v20 + 8))(a1, a3);
  v23 = sub_261690();
  (*(*(v23 - 8) + 8))(&v13[v21], v23);
  v24 = 1.0;
  if ((*&v22 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v24 = v22;
  }

  if ((~*&v22 & 0x7FF0000000000000) != 0)
  {
    v24 = v22;
  }

  *&v19[*(v14 + 36)] = v24;
  (*(v15 + 32))(v28, v19, v14);
  v25 = sub_262730();
  return (*(*(v25 - 8) + 8))(a2, v25);
}

double sub_21FA7C(uint64_t *a1, uint64_t *a2, double a3)
{
  v7 = sub_264ED0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + *(sub_2EF0(a1, a2) + 36));
  v13 = *(v3 + *(type metadata accessor for SizeConstants.Environment(0) + 28));
  (*(v8 + 104))(v11, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v7);
  v16 = v12 * a3;
  sub_24A294(v11, v13);
  (*(v8 + 8))(v11, v7);
  return v16;
}

double sub_21FBC4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, double a5)
{
  v11 = sub_264ED0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + *(sub_2EF0(a1, a2) + 36));
  v17 = v5 + *(sub_2EF0(a3, a4) + 28);
  v18 = *(v17 + *(type metadata accessor for SizeConstants.Environment(0) + 28));
  (*(v12 + 104))(v15, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v11);
  v21 = v16 * a5;
  sub_24A294(v15, v18);
  (*(v12 + 8))(v15, v11);
  return v21;
}

uint64_t sub_21FD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v36 = a1;
  v40 = a5;
  v9 = sub_264ED0();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  __chkstk_darwin(v9);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SizeConstants.Environment(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v33 - v23;
  v41 = *(v5 + *(a2 + 36));
  sub_78E78();
  v35 = a4;
  sub_264260();
  v25 = *(a4 + 16);
  v26 = *(*(v25 + 16) + 8);
  sub_2647F0();
  v27 = *(v17 + 8);
  v27(v21, a3);
  (*(*(v34 + 24) + 8))(*(v34 + 16));
  v28 = *&v16[*(v13 + 36)];
  sub_221768(v16);
  v41 = v28;
  sub_264260();
  v30 = v37;
  v29 = v38;
  v31 = v39;
  (*(v38 + 104))(v37, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v39);
  sub_1B7BC8(v30, v21, a3, v25, v40);
  (*(v29 + 8))(v30, v31);
  v27(v21, a3);
  return (v27)(v24, a3);
}

double SizeConstants.Scaled.subscript.getter(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  v6 = v7[1];
  v3 = sub_78E78();
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  v4 = *v7;
  v6 = v7[2];
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  return v4;
}

{
  swift_getAtKeyPath();
  v6 = v7[1];
  v3 = sub_78E78();
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  v4 = *v7;
  v6 = v7[3];
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  v6 = v7[2];
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  v6 = v7[4];
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  return v4;
}

uint64_t sub_220200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for SizeConstants.SingleScalableValueContainer() + 28);

  return sub_221704(a2, v6);
}

uint64_t SizeConstants.scaledValue<A>(_:relativeTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38[0] = a1;
  v42 = a2;
  v43 = a4;
  v44 = a5;
  v41 = sub_262730();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v41);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SizeConstants.SingleScalableValueContainer();
  v11 = type metadata accessor for SizeConstants.Scaled();
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v38 - v14;
  v16 = type metadata accessor for SizeConstants.Environment(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(a3 - 8) + 64);
  __chkstk_darwin(v21);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v10 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v26);
  v28 = v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v29);
  v32 = v38 - v31;
  (*(v33 + 16))(v23, v38[0], a3, v30);
  sub_21EEDC(v38[1], v19);
  sub_220200(v23, v19, a3, v32);
  (*(v24 + 16))(v28, v32, v10);
  (*(v6 + 16))(v9, v42, v41);
  SizeConstants.Scaled.init(base:relativeTo:)(v28, v9, v10, &off_311808, v15);
  v34 = v43;
  v45 = a3;
  v46 = v43;
  KeyPath = swift_getKeyPath();
  v36 = v39;
  SizeConstants.Scaled.subscript.getter(KeyPath, v39, v34, v44);

  (*(v40 + 8))(v15, v36);
  return (*(v24 + 8))(v32, v10);
}

double SizeConstants.scaledValue(_:relativeTo:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v46 = a1;
  v11 = type metadata accessor for SizeConstants.Environment(0);
  v12 = *(v11 - 8);
  v45 = v11 - 8;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_262730();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2EF0(&qword_326770, &qword_28AF80);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = (&v43 - v23);
  v25 = sub_2EF0(&qword_326778, &qword_28AF88);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = (&v43 - v31);
  sub_21EEDC(v6, &v43 + *(v26 + 36) - v31);
  *v32 = a2;
  v32[1] = a3;
  v32[2] = a4;
  v32[3] = a5;
  sub_8198(v32, v29, &qword_326778, &qword_28AF88);
  (*(v16 + 16))(v19, v46, v15);
  sub_8198(v29, v24, &qword_326778, &qword_28AF88);
  v33 = v44;
  sub_21EEDC(&v29[*(v26 + 36)], v44);
  v34 = *(v45 + 32);
  v35 = sub_1CF30(v19, v33 + v34);
  (*(v16 + 8))(v19, v15);
  sub_8E80(v29, &qword_326778, &qword_28AF88);
  v36 = sub_261690();
  (*(*(v36 - 8) + 8))(v33 + v34, v36);
  v37 = 1.0;
  if ((*&v35 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v37 = v35;
  }

  if ((~*&v35 & 0x7FF0000000000000) != 0)
  {
    v37 = v35;
  }

  *(v24 + *(v21 + 44)) = v37;
  v38 = v24[1];
  v39 = v24[2];
  v40 = v24[3];
  v41 = sub_21FBC4(&qword_326770, &qword_28AF80, &qword_326778, &qword_28AF88, *v24);
  sub_21FBC4(&qword_326770, &qword_28AF80, &qword_326778, &qword_28AF88, v39);
  sub_21FBC4(&qword_326770, &qword_28AF80, &qword_326778, &qword_28AF88, v38);
  sub_21FBC4(&qword_326770, &qword_28AF80, &qword_326778, &qword_28AF88, v40);
  sub_8E80(v24, &qword_326770, &qword_28AF80);
  sub_8E80(v32, &qword_326778, &qword_28AF88);
  return v41;
}

uint64_t sub_220A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220B50()
{
  result = type metadata accessor for SizeConstants.Environment(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220BD0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_261690();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_220C90(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_261690();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_220D30()
{
  sub_261690();
  if (v0 <= 0x3F)
  {
    sub_220DCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220DCC()
{
  if (!qword_326878)
  {
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_326878);
    }
  }
}

uint64_t sub_220E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220E94(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_220F98(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_221130(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for SizeConstants.Environment(319);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2211B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_261690() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v10 | 7;
  v15 = (v10 | 7) + *(v6 + 64);
  v16 = v10 + 2;
  if (v13 < a2)
  {
    v17 = (v15 & ~v14) + ((v11 + (v16 & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 11;
    v18 = ((v15 & ~v14) + ((v11 + (v16 & ~v10) + 7) & 0xFFFFFFF8) + 11) & 0xFFFFFFFB;
    v19 = v18 == 3 ? ((a2 - v13 + 0xFFFFFF) >> 24) + 1 : 2;
    v20 = v19 < 0x100 ? 1 : 2;
    v21 = v19 >= 2 ? v20 : 0;
    if (v21)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v17);
        if (v22)
        {
LABEL_21:
          v23 = (v22 << 24) - 0x1000000;
          if (v18 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v23 = 0;
            v29 = *a1;
          }

          v30 = v13 + (v29 | v23);
          return (v30 + 1);
        }
      }

      else
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_21;
        }
      }
    }
  }

  if (v7 >= v12)
  {
    v27 = *(v6 + 48);

    return v27(a1, v7, v5);
  }

  else
  {
    v24 = ((a1 + v15) & ~v14);
    if (v9 <= 0xFE)
    {
      v25 = *v24;
      if (v25 >= 2)
      {
        v30 = (v25 + 2147483646) & 0x7FFFFFFF;
        return (v30 + 1);
      }

      return 0;
    }

    v28 = *(v8 + 48);

    return v28(&v24[v16] & ~v10);
  }
}

void sub_22142C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_261690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = (v13 | 7) + *(v8 + 64);
  v17 = ((*(*(v10 - 8) + 64) + ((v13 + 2) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 11;
  v18 = v17 + (v16 & ~(v13 | 7));
  if (v18 == 3)
  {
    v19 = ((a3 - v15 + 0xFFFFFF) >> 24) + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v15 < a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v15 >= a2)
  {
    if (v22)
    {
      if (v22 != 2)
      {
        a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      *&a1[v18] = 0;
    }

    if (!a2)
    {
      return;
    }

LABEL_35:
    if (v9 >= v14)
    {
      v27 = *(v29 + 56);

      v27(a1, a2, v9, v7);
    }

    else
    {
      v25 = (&a1[v16] & ~(v13 | 7));
      if (v14 >= a2)
      {
        if (v12 > 0xFE)
        {
          v28 = *(v11 + 56);

          v28(&v25[v13 + 2] & ~v13, a2);
        }

        else
        {
          *v25 = a2 + 1;
        }
      }

      else
      {
        v26 = ~v14 + a2;
        bzero(v25, v17);
        if (v17 == 3)
        {
          *v25 = v26;
          v25[2] = BYTE2(v26);
        }

        else
        {
          *v25 = v26;
        }
      }
    }

    return;
  }

  v23 = ~v15 + a2;
  bzero(a1, v18);
  if (v18 == 3)
  {
    v24 = HIBYTE(v23) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    if (!v22)
    {
      return;
    }
  }

  else
  {
    *a1 = v23;
    if (!v22)
    {
      return;
    }
  }

  if (v22 == 2)
  {
    *&a1[v18] = v24;
  }

  else
  {
    a1[v18] = v24;
  }
}

uint64_t sub_221704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221768(uint64_t a1)
{
  v2 = type metadata accessor for SizeConstants.Environment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FlowAction.FeedDestination.preferredContentSize.getter()
{
  v1 = *v0;
  if (*(v1 + 16))
  {
    v2 = sub_D410(0x6572726566657270, 0xED0000657A695364);
    if (v3)
    {
      sub_A7C18(*(v1 + 56) + 32 * v2, v12);
      sub_2EF0(&unk_3165C0, &qword_28B080);
      sub_2EF0(&qword_3269C8, &unk_28B088);
      if (swift_dynamicCast())
      {
        if (*(v11 + 16))
        {
          v4 = sub_D410(0x6874646977, 0xE500000000000000);
          if (v5)
          {
            if (*(v11 + 16))
            {
              v6 = *(*(v11 + 56) + 8 * v4);
              v7 = sub_D410(0x746867696568, 0xE600000000000000);
              if (v8)
              {
                v9 = *(*(v11 + 56) + 8 * v7);

                return v6;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2218FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736E6F6974706FLL;
  }

  else
  {
    v4 = 1684366694;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x736E6F6974706FLL;
  }

  else
  {
    v6 = 1684366694;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264F10();
  }

  return v9 & 1;
}

Swift::Int sub_22199C()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_221A18()
{
  *v0;
  sub_264500();
}

Swift::Int sub_221A80()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_221AF8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_301A20;
  v8._object = v3;
  v5 = sub_264D40(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_221B58(uint64_t *a1@<X8>)
{
  v2 = 1684366694;
  if (*v1)
  {
    v2 = 0x736E6F6974706FLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_221B90()
{
  if (*v0)
  {
    result = 0x736E6F6974706FLL;
  }

  else
  {
    result = 1684366694;
  }

  *v0;
  return result;
}

uint64_t sub_221BC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_301A20;
  v9._object = a2;
  v6 = sub_264D40(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_221C28(uint64_t a1)
{
  v2 = sub_2225F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_221C64(uint64_t a1)
{
  v2 = sub_2225F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_221CA0()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_221CF4()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

uint64_t sub_221D38@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_301A70;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_221D9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_301AA8;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_221DF4(uint64_t a1)
{
  v2 = sub_2226A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_221E30(uint64_t a1)
{
  v2 = sub_2226A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowAction.FeedDestination.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_263840();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v52 - v7;
  v8 = sub_2EF0(&qword_3229A8, &qword_281B60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_2EF0(&qword_3269D0, &qword_28B098);
  v57 = *(v14 - 8);
  v15 = *(v57 + 64);
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v18 = sub_2EF0(&qword_3269D8, &qword_28B0A0);
  v61 = *(v18 - 8);
  v19 = *(v61 + 64);
  __chkstk_darwin(v18);
  v21 = &v52 - v20;
  v22 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_2225F4();
  v23 = v63;
  sub_265120();
  if (v23)
  {
    goto LABEL_5;
  }

  v24 = v60;
  v53 = v13;
  v54 = v17;
  v25 = v14;
  v26 = v62;
  v63 = a1;
  v66 = 0;
  v27 = v18;
  if (sub_264E10())
  {
    v64 = 0;
    sub_2226A0();
    sub_264D50();
    sub_222648();
    v28 = v55;
    v29 = v59;
    v30 = v25;
    sub_264DF0();
    v45 = v53;
    sub_263800();
    (*(v58 + 8))(v28, v29);
    v46 = sub_263C10();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v45, 1, v46) == 1)
    {
      sub_19A3E8(v45);
      v40 = v61;
LABEL_16:
      v48 = sub_264C10();
      swift_allocError();
      v50 = v49;
      v51 = v54;
      sub_264D60();
      sub_264BF0();
      (*(*(v48 - 8) + 104))(v50, enum case for DecodingError.dataCorrupted(_:), v48);
      swift_willThrow();
      (*(v57 + 8))(v51, v30);
      goto LABEL_17;
    }

    sub_2EF0(&unk_3165C0, &qword_28B080);
    v41 = sub_263C00();
    (*(v47 + 8))(v45, v46);
    v40 = v61;
    if (!v41)
    {
      goto LABEL_16;
    }

    (*(v57 + 8))(v54, v30);
    v34 = v62;
LABEL_15:
    (*(v40 + 8))(v21, v27);
    *v34 = v41;
    v32 = v63;
    return sub_3080(v32);
  }

  v65 = 1;
  sub_222648();
  v31 = v59;
  sub_264DF0();
  v34 = v26;
  v35 = v21;
  v36 = v56;
  sub_263800();
  (*(v58 + 8))(v24, v31);
  v37 = sub_263C10();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 48))(v36, 1, v37);
  v40 = v61;
  if (v39 == 1)
  {
    sub_19A3E8(v36);
    v21 = v35;
  }

  else
  {
    sub_2EF0(&unk_3165C0, &qword_28B080);
    v41 = sub_263C00();
    (*(v38 + 8))(v36, v37);
    v21 = v35;
    if (v41)
    {
      goto LABEL_15;
    }
  }

  v42 = sub_264C10();
  swift_allocError();
  v44 = v43;
  sub_264D60();
  sub_264BF0();
  (*(*(v42 - 8) + 104))(v44, enum case for DecodingError.dataCorrupted(_:), v42);
  swift_willThrow();
LABEL_17:
  (*(v40 + 8))(v21, v27);
  a1 = v63;
LABEL_5:
  v32 = a1;
  return sub_3080(v32);
}

unint64_t sub_2225F4()
{
  result = qword_3269E0;
  if (!qword_3269E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3269E0);
  }

  return result;
}

unint64_t sub_222648()
{
  result = qword_3229C8;
  if (!qword_3229C8)
  {
    sub_263840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3229C8);
  }

  return result;
}

unint64_t sub_2226A0()
{
  result = qword_3269E8;
  if (!qword_3269E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3269E8);
  }

  return result;
}

unint64_t sub_2226F4(uint64_t a1)
{
  result = sub_22271C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22271C()
{
  result = qword_3269F0;
  if (!qword_3269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3269F0);
  }

  return result;
}

unint64_t sub_2227A4()
{
  result = qword_3269F8;
  if (!qword_3269F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3269F8);
  }

  return result;
}

unint64_t sub_2227FC()
{
  result = qword_326A00;
  if (!qword_326A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326A00);
  }

  return result;
}

unint64_t sub_222854()
{
  result = qword_326A08;
  if (!qword_326A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326A08);
  }

  return result;
}

unint64_t sub_2228AC()
{
  result = qword_326A10;
  if (!qword_326A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326A10);
  }

  return result;
}

unint64_t sub_222904()
{
  result = qword_326A18;
  if (!qword_326A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326A18);
  }

  return result;
}

unint64_t sub_22295C()
{
  result = qword_326A20;
  if (!qword_326A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326A20);
  }

  return result;
}

uint64_t sub_2229B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C00, &qword_26A520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_223A5C(v12, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_222B94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318170, &unk_26AF40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ListItemAccessoryDrillInChevron();
  sub_8198(v1 + *(v12 + 20), v11, &qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_223A5C(v11, a1, type metadata accessor for FontConstants.ListItem);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ListItemAccessoryDrillInChevron.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v2 = *(type metadata accessor for ListItemAccessoryDrillInChevron() + 20);
  *(a1 + v2) = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for ListItemAccessoryDrillInChevron()
{
  result = qword_326AB8;
  if (!qword_326AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListItemAccessoryDrillInChevron.content(contextActionMenuView:)@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v47 = &v41 - v3;
  v4 = sub_262730();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontConstants.ListItem(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v41 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261FA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_326A28, &qword_28B458);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v48 = sub_2630B0();
  sub_2618C0();
  v23 = sub_2233A4();
  sub_262AA0();
  (*(v14 + 8))(v17, v13);

  sub_262650();
  v48 = &type metadata for Image;
  v49 = v13;
  v50 = &protocol witness table for Image;
  v51 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v42;
  sub_262A20();
  (*(v19 + 8))(v22, v18);
  v25 = v41;
  sub_2229B0(v41);
  v26 = [objc_opt_self() tertiaryLabelColor];
  v27 = sub_263070();
  sub_2234B0(v25, type metadata accessor for ColorConstants);
  KeyPath = swift_getKeyPath();
  v29 = (v24 + *(sub_2EF0(&qword_326A30, &qword_28B490) + 36));
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = v43;
  sub_222B94(v43);
  v32 = v44;
  v31 = v45;
  v33 = v46;
  (*(v45 + 104))(v44, enum case for Font.TextStyle.body(_:), v46);
  v34 = sub_2625C0();
  v35 = v47;
  (*(*(v34 - 8) + 56))(v47, 1, 1, v34);
  sub_262650();
  v36 = v35;
  v37 = sub_262680();
  sub_179B10(v36);
  (*(v31 + 8))(v32, v33);
  sub_2234B0(v30, type metadata accessor for FontConstants.ListItem);
  v38 = swift_getKeyPath();
  result = sub_2EF0(&qword_326A38, &qword_28B4C8);
  v40 = (v24 + *(result + 36));
  *v40 = v38;
  v40[1] = v37;
  return result;
}