unint64_t sub_2DFCCC()
{
  result = qword_500130;
  if (!qword_500130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500128);
    sub_2DFD84();
    sub_2DFEE4(&qword_500168, &qword_500170, &unk_416DA8, sub_2DFF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500130);
  }

  return result;
}

unint64_t sub_2DFD84()
{
  result = qword_500138;
  if (!qword_500138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500140);
    sub_2DFEE4(&qword_500148, &qword_500150, &unk_416DA0, sub_2DFE3C);
    sub_2DFE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500138);
  }

  return result;
}

unint64_t sub_2DFE3C()
{
  result = qword_500158;
  if (!qword_500158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500158);
  }

  return result;
}

unint64_t sub_2DFE90()
{
  result = qword_500160;
  if (!qword_500160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500160);
  }

  return result;
}

uint64_t sub_2DFEE4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2DFF60()
{
  result = qword_500178;
  if (!qword_500178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500178);
  }

  return result;
}

uint64_t sub_2E0064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2E015C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2E01C8()
{
  result = qword_500188;
  if (!qword_500188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500120);
    sub_886BC(&qword_500190, &qword_500118);
    sub_2E0280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500188);
  }

  return result;
}

unint64_t sub_2E0280()
{
  result = qword_500198;
  if (!qword_500198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500198);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2E0318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_2E0360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2E03E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3EAAF4();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v38 = &v33 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001A8);
  __chkstk_darwin(v37);
  v11 = &v33 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = objc_allocWithZone(LSApplicationRecord);

  v15 = sub_15BB64(v13, v12, 0);
  if (v15)
  {
  }

  v16 = objc_allocWithZone(ISIcon);
  v17 = sub_3ED204();

  [v16 initWithBundleIdentifier:v17];

  v18 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v19 = v2[9];
  if (*(v2 + 80) == 1)
  {
    v20 = *(v2 + 9);
  }

  else
  {

    sub_3ED9E4();
    v21 = sub_3EB034();
    v34 = v2;
    v22 = v8;
    v23 = v7;
    v24 = a1;
    v25 = v21;
    sub_3E9754();

    a1 = v24;
    v7 = v23;
    v8 = v22;
    v2 = v34;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v19, 0);
    (*(v35 + 8))(v6, v36);
    v20 = v39;
  }

  [v18 setScale:v20];
  [v18 setDrawBorder:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001B0);
  sub_2E0F4C();
  v26 = v38;
  sub_3E96F4();
  v27 = &v11[*(v37 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBE0) + 28);
  v29 = enum case for ColorScheme.light(_:);
  v30 = sub_3EA304();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  (*(v8 + 32))(v11, v26, v7);
  v31 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500200) + 36);
  sub_FBD0((v2 + 2), v31, &qword_4EDE00);
  *(v31 + 40) = swift_getKeyPath();
  *(v31 + 48) = 0;
  *(v31 + 56) = swift_getKeyPath();
  *(v31 + 64) = 0;
  return sub_2E1334(v11, a1);
}

uint64_t sub_2E08AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500208);
  __chkstk_darwin(v44);
  v43 = &v41 - v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500210);
  __chkstk_darwin(v42);
  v4 = &v41 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001C8);
  __chkstk_darwin(v46);
  v6 = &v41 - v5;
  v7 = sub_3EB844();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001D8);
  __chkstk_darwin(v11);
  v13 = (&v41 - v12);
  v14 = sub_3E96E4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v41, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for AsyncIconImagePhase.success(_:))
  {
    (*(v15 + 96))(v18, v14);
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v20 = sub_3EB894();
    (*(v8 + 8))(v10, v7);
    v21 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001F8) + 36);
    v22 = *(sub_3EA7F4() + 20);
    v23 = enum case for RoundedCornerStyle.continuous(_:);
    v24 = sub_3EABE4();
    (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
    __asm { FMOV            V0.2D, #5.0 }

    *v21 = _Q0;
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCD8) + 36)] = 256;
    *v13 = v20;
    sub_3EBA74();
    sub_3EA434();
    v30 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001E8) + 36));
    v31 = v48;
    *v30 = v47;
    v30[1] = v31;
    v30[2] = v49;
    LOBYTE(v23) = sub_3EB084();
    sub_3EA264();
    v32 = v13 + *(v11 + 36);
    *v32 = v23;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    sub_FBD0(v13, v4, &qword_5001D8);
    swift_storeEnumTagMultiPayload();
    sub_2E1064();
    sub_3EADE4();
    sub_FBD0(v6, v43, &qword_5001C8);
    swift_storeEnumTagMultiPayload();
    sub_2E0FD8();
    sub_3EADE4();

    sub_FCF8(v6, &qword_5001C8);
    v37 = v13;
    v38 = &qword_5001D8;
  }

  else
  {
    v39 = v43;
    if (v19 == enum case for AsyncIconImagePhase.failure(_:))
    {
      (*(v15 + 8))(v18, v14);
    }

    else if (v19 != enum case for AsyncIconImagePhase.unfetched(_:))
    {
      swift_storeEnumTagMultiPayload();
      sub_2E0FD8();
      sub_3EADE4();
      return (*(v15 + 8))(v18, v14);
    }

    swift_storeEnumTagMultiPayload();
    sub_2E1064();
    sub_3EADE4();
    sub_FBD0(v6, v39, &qword_5001C8);
    swift_storeEnumTagMultiPayload();
    sub_2E0FD8();
    sub_3EADE4();
    v37 = v6;
    v38 = &qword_5001C8;
  }

  return sub_FCF8(v37, v38);
}

unint64_t sub_2E0F4C()
{
  result = qword_5001B8;
  if (!qword_5001B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001B0);
    sub_2E0FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5001B8);
  }

  return result;
}

unint64_t sub_2E0FD8()
{
  result = qword_5001C0;
  if (!qword_5001C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001C8);
    sub_2E1064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5001C0);
  }

  return result;
}

unint64_t sub_2E1064()
{
  result = qword_5001D0;
  if (!qword_5001D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001D8);
    sub_2E10F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5001D0);
  }

  return result;
}

unint64_t sub_2E10F0()
{
  result = qword_5001E0;
  if (!qword_5001E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001E8);
    sub_2E117C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5001E0);
  }

  return result;
}

unint64_t sub_2E117C()
{
  result = qword_5001F0;
  if (!qword_5001F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001F8);
    sub_886BC(&qword_4FBD20, &qword_4FBCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5001F0);
  }

  return result;
}

uint64_t sub_2E1258(uint64_t a1)
{
  v2 = sub_3EA304();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3EA8E4();
}

uint64_t sub_2E1334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2E13A8()
{
  result = qword_500218;
  if (!qword_500218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500200);
    sub_2E1434();
    sub_2E0280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500218);
  }

  return result;
}

unint64_t sub_2E1434()
{
  result = qword_500220;
  if (!qword_500220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001A8);
    sub_886BC(qword_500228, &qword_5001A0);
    sub_886BC(&qword_4FEC00, &qword_4FEBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500220);
  }

  return result;
}

void sub_2E1518()
{
  sub_3E7784();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_2DC100();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2E15B8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_3E7624() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((((v13 + ((v12 + 130) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + v14 + 16;
  if (v15 >= a2)
  {
    goto LABEL_31;
  }

  v17 = ((*(v10 + 64) + (v16 & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 <= 3)
  {
    v18 = ((a2 - v15 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v23 = (v21 - 1) << (8 * v17);
    if (v17 <= 3)
    {
      v24 = *a1;
    }

    else
    {
      v23 = 0;
      v24 = *a1;
    }

    return v15 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v9 >= v11)
  {
    if ((v8 & 0x80000000) != 0)
    {
      v27 = *(v7 + 48);

      return v27((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v12 + 58) & ~v12);
    }

    else
    {
      v26 = *(a1 + 1);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }

  else
  {
    v25 = *(v10 + 48);

    return v25(&a1[v16] & ~v14, v11);
  }
}

void sub_2E1838(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_3E7624() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((((v15 + ((v14 + 130) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = ((*(v12 + 64) + ((v18 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 >= a3)
  {
    v22 = 0;
    if (v17 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v17 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v17 >= a2)
    {
LABEL_20:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *(a1 + v19) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v19) = 0;
      }

      else if (v22)
      {
        *(a1 + v19) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v11 >= v13)
      {
        if (v11 >= a2)
        {
          if ((v10 & 0x80000000) != 0)
          {
            v27 = *(v9 + 56);

            v27((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v14 + 58) & ~v14, a2);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = (a2 - 1);
          }
        }

        else if (v18)
        {
          v26 = ~v11 + a2;
          bzero(a1, v18);
          *a1 = v26;
        }
      }

      else
      {
        v25 = *(v12 + 56);

        v25((a1 + v18 + v16) & ~v16, a2, v13);
      }

      return;
    }
  }

  v23 = ~v17 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_30:
      if (v22 == 2)
      {
        *(a1 + v19) = v24;
      }

      else
      {
        *(a1 + v19) = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v22)
  {
    *(a1 + v19) = v24;
  }
}

uint64_t sub_2E1B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC020);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v59 = sub_3EA384();
  v6 = sub_3EA744();
  v83 = v4;
  v84 = &type metadata for ForegroundStyle;
  v85 = &type metadata for EmptyView;
  v86 = v5;
  v87 = &protocol witness table for ForegroundStyle;
  v88 = &protocol witness table for EmptyView;
  sub_3EAE64();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F0);
  sub_3EA744();
  WitnessTable = swift_getWitnessTable();
  v82 = sub_2E2FEC();
  swift_getWitnessTable();
  v7 = sub_3EA814();
  v60 = v6;
  v8 = sub_3EA744();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v49 = &v48 - v9;
  v58 = v10;
  v11 = sub_3EA744();
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v51 = &v48 - v15;
  v16 = sub_3EAAF4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_3EADF4();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v48 - v20;
  v21 = v2 + *(a1 + 40);
  v22 = *v21;
  v23 = *(v21 + 8) == 1;
  v56 = v7;
  if (v23)
  {
    v25 = v22;
    LOBYTE(v83) = v22;
  }

  else
  {

    sub_3ED9E4();
    v24 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v22, 0);
    (*(v17 + 8))(v19, v16);
    v25 = v83;
  }

  v26 = v49;
  if (v25 > 1)
  {
    sub_2E249C(a1, v49);
    sub_3EBA74();
    v36 = sub_250100();
    v37 = swift_getWitnessTable();
    v79 = v36;
    v80 = v37;
    v38 = swift_getWitnessTable();
    v39 = swift_getWitnessTable();
    v77 = v38;
    v78 = v39;
    v40 = v58;
    v41 = swift_getWitnessTable();
    sub_3EB634();
    (*(v50 + 8))(v26, v40);
    v75 = v41;
    v76 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    v33 = v51;
    sub_E63BC(v13);
    v34 = *(v52 + 8);
    v34(v13, v11);
    sub_E63BC(v33);
    v35 = v53;
    sub_E51C0(v13, v11, v11);
  }

  else
  {
    sub_2E249C(a1, v49);
    sub_3EBA74();
    v27 = sub_250100();
    v28 = swift_getWitnessTable();
    v65 = v27;
    v66 = v28;
    v29 = swift_getWitnessTable();
    v30 = swift_getWitnessTable();
    v63 = v29;
    v64 = v30;
    v31 = v58;
    v32 = swift_getWitnessTable();
    sub_3EB634();
    (*(v50 + 8))(v26, v31);
    v61 = v32;
    v62 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    v33 = v51;
    sub_E63BC(v13);
    v34 = *(v52 + 8);
    v34(v13, v11);
    sub_E63BC(v33);
    v35 = v53;
    sub_E50C8(v13, v11);
  }

  v34(v13, v11);
  v34(v33, v11);
  v42 = sub_250100();
  v43 = swift_getWitnessTable();
  v73 = v42;
  v74 = v43;
  v44 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v71 = v44;
  v72 = v45;
  v69 = swift_getWitnessTable();
  v70 = &protocol witness table for _FrameLayout;
  v67 = swift_getWitnessTable();
  v68 = v67;
  v46 = v55;
  swift_getWitnessTable();
  sub_E63BC(v35);
  return (*(v54 + 8))(v35, v46);
}

uint64_t sub_2E249C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC020);
  __chkstk_darwin(v58);
  v12 = &v47 - v11;
  v60 = a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v61 = *(v14 + 8);
  v15 = v14;
  v57 = v14;
  v16 = v13;
  v54 = v13;
  v62 = sub_3EA384();
  v49 = sub_3EA744();
  v63 = *(v49 - 8);
  __chkstk_darwin(v49);
  v55 = &v47 - v17;
  *&v76 = v16;
  *(&v76 + 1) = &type metadata for ForegroundStyle;
  *&v77 = &type metadata for EmptyView;
  *(&v77 + 1) = v15;
  v78 = &protocol witness table for ForegroundStyle;
  v79 = &protocol witness table for EmptyView;
  sub_3EAE64();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F0);
  v18 = sub_3EA744();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_2E2FEC();
  v74 = WitnessTable;
  v75 = v20;
  v50 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v52 = v18;
  v53 = swift_getWitnessTable();
  v56 = sub_3EA814();
  v21 = sub_3EA744();
  v59 = *(v21 - 8);
  __chkstk_darwin(v21);
  v48 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v51 = &v47 - v24;
  sub_A18FC(v3, v10);
  v25 = sub_3E7784();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  v26 = sub_3E94E4();
  (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v27 = sub_3EBA54();
  v29 = v28;
  sub_FBD0(v10, v12, &qword_4F1D50);
  v30 = type metadata accessor for Artwork.Configuration(0);
  sub_FBD0(v7, &v12[v30[7]], &qword_4FAE68);
  sub_FBD0(&v76, v73, &qword_4EE870);
  v31 = &v12[v30[5]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = 2;
  v32 = &v12[v30[6]];
  *v32 = v27;
  v32[1] = v29;
  v12[v30[8]] = 1;
  *&v12[v30[9]] = 0;
  sub_FBD0(v73, v72, &qword_4EE870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE870);
  sub_3E8314();
  sub_FCF8(v73, &qword_4EE870);
  sub_FCF8(&v76, &qword_4EE870);
  sub_FCF8(v7, &qword_4FAE68);
  sub_FCF8(v10, &qword_4F1D50);
  v33 = &v12[*(type metadata accessor for Artwork(0) + 20)];
  *v33 = sub_231DEC;
  *(v33 + 1) = 0;
  v33[16] = 0;
  v34 = &v12[*(v58 + 36)];
  *v34 = 0;
  *(v34 + 4) = 1;
  v35 = sub_250100();
  v36 = v47;
  v37 = v55;
  v38 = v54;
  sub_3EB714();
  sub_FCF8(v12, &qword_4FC020);
  v65 = v38;
  v66 = v57;
  v67 = v36;
  sub_3EBA74();
  v39 = swift_getWitnessTable();
  v70 = v35;
  v71 = v39;
  v40 = v49;
  v41 = swift_getWitnessTable();
  v42 = v48;
  sub_3EB684();
  (*(v63 + 8))(v37, v40);
  v43 = swift_getWitnessTable();
  v68 = v41;
  v69 = v43;
  swift_getWitnessTable();
  v44 = v51;
  sub_E63BC(v42);
  v45 = *(v59 + 8);
  v45(v42, v21);
  sub_E63BC(v44);
  return (v45)(v44, v21);
}

uint64_t sub_2E2C4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v22 = a1;
  v23 = &type metadata for ForegroundStyle;
  v24 = &type metadata for EmptyView;
  v25 = a2;
  v26 = &protocol witness table for ForegroundStyle;
  v27 = &protocol witness table for EmptyView;
  v5 = sub_3EAE64();
  v21[0] = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F0);
  v8 = sub_3EA744();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v21 - v13;
  v15 = type metadata accessor for ReferenceLinkArtworkView();
  sub_2E2F44(v15, 1, a1, &type metadata for ForegroundStyle, a2, &protocol witness table for ForegroundStyle, v7);
  sub_3EB764();
  v16 = sub_3EB794();

  v22 = v16;
  WitnessTable = swift_getWitnessTable();
  sub_3EB574();

  (*(v21[0] + 8))(v7, v5);
  v18 = sub_2E2FEC();
  v21[2] = WitnessTable;
  v21[3] = v18;
  swift_getWitnessTable();
  sub_E63BC(v11);
  v19 = *(v9 + 8);
  v19(v11, v8);
  sub_E63BC(v14);
  return (v19)(v14, v8);
}

uint64_t sub_2E2F44@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_3EA354();
  sub_2E30B4(a1, a2, a3, a4, a5, a6, a7);
  return sub_23D2F0(v15);
}

unint64_t sub_2E2FEC()
{
  result = qword_4FC0E8;
  if (!qword_4FC0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC0E8);
  }

  return result;
}

unint64_t sub_2E3050()
{
  result = qword_4FC190;
  if (!qword_4FC190)
  {
    type metadata accessor for Artwork(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC190);
  }

  return result;
}

uint64_t sub_2E30B4@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a2;
  v13 = *(a4 - 8);
  __chkstk_darwin(a1);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v16);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v19, v22, v21, v17);
  (*(v13 + 16))(v15, a1, a4);

  return sub_2E3274(v19, v15, v26, v23, a3, a4, &type metadata for EmptyView, a7, a5, a6, &protocol witness table for EmptyView);
}

uint64_t sub_2E3274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53 = a4;
  LODWORD(v51) = a3;
  v49 = a2;
  v43 = a8;
  v56 = a10;
  v57 = a1;
  v47 = a7;
  v50 = *(a7 - 8);
  v54 = a11;
  __chkstk_darwin(a1);
  v48 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_3EADC4();
  __chkstk_darwin(v55);
  v52 = &v37 - v15;
  v37 = a6;
  v46 = *(a6 - 8);
  __chkstk_darwin(v16);
  v44 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v42 = a9;
  v40 = *(swift_getAssociatedConformanceWitness() + 8);
  v19 = sub_3EA514();
  __chkstk_darwin(v19);
  WitnessTable = swift_getWitnessTable();
  v58 = v19;
  v59 = a6;
  v60 = WitnessTable;
  v61 = v56;
  v45 = sub_3EA2D4();
  v20.n128_f64[0] = __chkstk_darwin(v45);
  v39 = &v37 - v21;
  v22 = a5;
  v23 = *(a5 - 8);
  v24 = *(v23 + 16);
  v38 = v22;
  v24(a8, v57, v22, v20);
  sub_3EA6D4();
  sub_3EA504();
  v25 = v46;
  v26 = v49;
  v27 = v37;
  (*(v46 + 16))(v44, v49, v37);
  v28 = v27;
  v29 = v56;
  sub_3EA2C4();
  v30 = v50;
  v31 = v47;
  v32 = v53;
  (*(v50 + 16))(v48, v53, v47);
  sub_3EBA74();
  v51 = v33;
  (*(v30 + 8))(v32, v31);
  (*(v25 + 8))(v26, v27);
  v34 = v38;
  (*(v23 + 8))(v57, v38);
  v35 = v54;
  sub_3EADB4();
  v58 = v34;
  v59 = v28;
  v60 = v31;
  v61 = v42;
  v62 = v29;
  v63 = v35;
  sub_3EAE64();
  return sub_3EA704();
}

uint64_t sub_2E3774()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC020);
  sub_3EA384();
  sub_3EA744();
  sub_3EAE64();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F0);
  sub_3EA744();
  swift_getWitnessTable();
  sub_2E2FEC();
  swift_getWitnessTable();
  sub_3EA814();
  sub_3EA744();
  sub_3EA744();
  sub_3EADF4();
  sub_250100();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2E39B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2E3A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ReferenceLinkButtonStyle()
{
  result = qword_500310;
  if (!qword_500310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2E3B78()
{
  sub_27800C(319, &qword_4FD498);
  if (v0 <= 0x3F)
  {
    sub_2E3C34();
    if (v1 <= 0x3F)
    {
      sub_27800C(319, &qword_4FFE70);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2E3C34()
{
  if (!qword_500320)
  {
    sub_3EAC64();
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_500320);
    }
  }
}

uint64_t sub_2E3CA8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500358);
  __chkstk_darwin(v62);
  v56 = &v48 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500360);
  __chkstk_darwin(v60);
  v61 = &v48 - v4;
  v5 = sub_3EA7A4();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_3EB014();
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v57);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500368);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v48 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500370);
  __chkstk_darwin(v59);
  v52 = &v48 - v10;
  v11 = sub_3EAAF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for ReferenceLinkButtonStyle() + 24);
  v55 = v2;
  v16 = v2 + v15;
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v64 = *v16;
    if (v17 != 1)
    {
LABEL_3:
      v18 = v57;
      v19 = v58;
      (*(v7 + 16))(&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v57);
      v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v21 = swift_allocObject();
      v22 = (*(v7 + 32))(v21 + v20, &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      __chkstk_darwin(v22);
      *(&v48 - 2) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500378);
      sub_2E4D60();
      v23 = v56;
      sub_3EB904();
      KeyPath = swift_getKeyPath();
      v25 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003C0) + 36);
      *v25 = KeyPath;
      *(v25 + 8) = 0;
      v26 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003C8) + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003D0);
      sub_3EA824();
      *v26 = swift_getKeyPath();
      sub_3EBA74();
      sub_3EA434();
      v27 = v61;
      v28 = (v23 + *(v62 + 36));
      v29 = v65[1];
      *v28 = v65[0];
      v28[1] = v29;
      v28[2] = v65[2];
      sub_2E57FC(v23, v27);
      swift_storeEnumTagMultiPayload();
      sub_2E586C();
      sub_2E5DB4(&qword_500418, &qword_500358, &unk_417178, sub_2E5A9C);
      sub_3EADE4();
      return sub_2E5C60(v23);
    }
  }

  else
  {

    sub_3ED9E4();
    v31 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v17, 0);
    (*(v12 + 8))(v14, v11);
    if (v64 != 1)
    {
      goto LABEL_3;
    }
  }

  v32 = v57;
  v33 = v58;
  (*(v7 + 16))(&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v57);
  v34 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v35 = swift_allocObject();
  v36 = (*(v7 + 32))(v35 + v34, &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  __chkstk_darwin(v36);
  v37 = v55;
  *(&v48 - 2) = v33;
  *(&v48 - 1) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500450);
  sub_2E5DB4(&qword_500458, &qword_500450, &unk_417250, sub_2E5E38);
  v38 = v48;
  sub_3EB904();
  v39 = v51;
  sub_3EA794();
  sub_886BC(&qword_5003F0, &qword_500368);
  sub_2E60CC(&qword_4FED68, &type metadata accessor for PlainButtonStyle);
  v40 = v52;
  v41 = v50;
  v42 = v54;
  sub_3EB4A4();
  (*(v53 + 8))(v39, v42);
  (*(v49 + 8))(v38, v41);
  v43 = sub_3EBA74();
  v45 = v44;
  sub_2E4928(v37, v65);
  v46 = *&v65[0];
  v47 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003E8) + 36));
  *v47 = v46;
  v47[1] = v43;
  v47[2] = v45;
  *(v40 + *(v59 + 36)) = 256;
  sub_2E5EF0(v40, v61);
  swift_storeEnumTagMultiPayload();
  sub_2E586C();
  sub_2E5DB4(&qword_500418, &qword_500358, &unk_417178, sub_2E5A9C);
  sub_3EADE4();
  return sub_2E5F60(v40);
}

double sub_2E45AC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500390);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500468);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  sub_3EAFF4();
  sub_3EB0F4();
  v14 = sub_3EB114();

  KeyPath = swift_getKeyPath();
  v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003A0) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = &v10[*(v8 + 44)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828) + 28);
  v19 = enum case for Image.Scale.small(_:);
  v20 = sub_3EB874();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  v21 = *a1;
  if (*(a1 + 8) != 1)
  {

    sub_3ED9E4();
    v23 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v21, 0);
    (*(v4 + 8))(v6, v3);
    if (v31 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = sub_3EB784();
    goto LABEL_6;
  }

  if (v21)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = sub_3EB7A4();
LABEL_6:
  v24 = v22;
  sub_FACC(v10, v13, &qword_500390);
  *&v13[*(v11 + 36)] = v24;
  sub_3EBA74();
  sub_3EA434();
  v25 = v30;
  sub_FACC(v13, v30, &qword_500468);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500450) + 36));
  v27 = v32;
  *v26 = v31;
  v26[1] = v27;
  result = *&v33;
  v26[2] = v33;
  return result;
}

uint64_t sub_2E4928@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_3EAC64();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_3EAAF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (*(a1 + 8) == 1)
  {
    if ((v16 & 1) == 0)
    {
LABEL_3:
      result = sub_3EB774();
      goto LABEL_8;
    }
  }

  else
  {
    v26 = v13;

    sub_3ED9E4();
    v18 = sub_3EB034();
    v27 = v7;
    v19 = v5;
    v20 = v18;
    sub_3E9754();

    v5 = v19;
    v7 = v27;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v16, 0);
    (*(v12 + 8))(v15, v26);
    if (v28 != 1)
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for ReferenceLinkButtonStyle();
  sub_2830E8(v10);
  (*(v5 + 104))(v7, enum case for ColorSchemeContrast.increased(_:), v4);
  v21 = sub_3EAC54();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  if (v21)
  {
    v23 = [objc_opt_self() tertiaryLabelColor];
    result = sub_3EB7D4();
  }

  else
  {
    sub_3EB784();
    v24 = sub_3EB794();

    result = v24;
  }

LABEL_8:
  *a2 = result;
  return result;
}

uint64_t sub_2E4C28@<X0>(uint64_t a1@<X8>)
{
  sub_3EAFF4();
  sub_3EB0F4();
  v2 = sub_3EB114();

  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003A0) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500390) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828) + 28);
  v7 = enum case for Image.Scale.small(_:);
  v8 = sub_3EB874();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500378);
  return sub_3EA634();
}

unint64_t sub_2E4D60()
{
  result = qword_500380;
  if (!qword_500380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500378);
    sub_2E4E18();
    sub_886BC(&qword_5003B0, &qword_5003B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500380);
  }

  return result;
}

unint64_t sub_2E4E18()
{
  result = qword_500388;
  if (!qword_500388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500390);
    sub_2E4ED0();
    sub_886BC(&qword_4FB920, &qword_4FB828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500388);
  }

  return result;
}

unint64_t sub_2E4ED0()
{
  result = qword_500398;
  if (!qword_500398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5003A0);
    sub_2E60CC(&qword_5003A8, &type metadata accessor for PrimitiveButtonStyleConfiguration.Label);
    sub_886BC(&qword_4FC0D8, &qword_4FC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500398);
  }

  return result;
}

uint64_t sub_2E4FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v52 = a4;
  v50 = sub_3EAE54();
  v6 = *(v50 - 8);
  __chkstk_darwin(v50);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500480);
  v44 = *(v51 - 8);
  __chkstk_darwin(v51);
  v43 = &v41 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500488);
  __chkstk_darwin(v47);
  v46 = &v41 - v9;
  v45 = sub_3EAC44();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500490);
  v42 = *(v49 - 8);
  __chkstk_darwin(v49);
  v14 = &v41 - v13;
  v15 = sub_3EAAF4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      v19 = v41;
      sub_3EAE44();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500498);
      v21 = sub_886BC(&qword_5004A0, &qword_500498);
      v22 = sub_2E60CC(&qword_5004A8, &type metadata accessor for BorderlessButtonStyle);
      v23 = v43;
      v24 = v50;
      sub_3EB4A4();
      (*(v6 + 8))(v19, v24);
      v25 = v44;
      v26 = v51;
      (*(v44 + 16))(v46, v23, v51);
      swift_storeEnumTagMultiPayload();
      v27 = sub_2E60CC(&qword_5004B0, &type metadata accessor for BorderedButtonStyle);
      v53 = v20;
      v54 = v45;
      v55 = v21;
      v56 = v27;
      swift_getOpaqueTypeConformance2();
      v53 = v20;
      v54 = v24;
      v55 = v21;
      v56 = v22;
      swift_getOpaqueTypeConformance2();
      sub_3EADE4();
      return (*(v25 + 8))(v23, v26);
    }
  }

  else
  {

    sub_3ED9E4();
    v29 = v6;
    v30 = v10;
    v31 = a2;
    v32 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    v33 = v31;
    v10 = v30;
    v6 = v29;
    sub_23968C(v33, 0);
    (*(v16 + 8))(v18, v15);
    if (v53 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_3EAC34();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500498);
  v35 = sub_886BC(&qword_5004A0, &qword_500498);
  v36 = sub_2E60CC(&qword_5004B0, &type metadata accessor for BorderedButtonStyle);
  v37 = v45;
  sub_3EB4A4();
  (*(v10 + 8))(v12, v37);
  v38 = v42;
  v39 = v49;
  (*(v42 + 16))(v46, v14, v49);
  swift_storeEnumTagMultiPayload();
  v53 = v34;
  v54 = v37;
  v55 = v35;
  v56 = v36;
  swift_getOpaqueTypeConformance2();
  v40 = sub_2E60CC(&qword_5004A8, &type metadata accessor for BorderlessButtonStyle);
  v53 = v34;
  v54 = v50;
  v55 = v35;
  v56 = v40;
  swift_getOpaqueTypeConformance2();
  sub_3EADE4();
  return (*(v38 + 8))(v14, v39);
}

uint64_t sub_2E5730(uint64_t a1)
{
  v2 = sub_3EA834();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3EA9B4();
}

uint64_t sub_2E57FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2E586C()
{
  result = qword_5003D8;
  if (!qword_5003D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500370);
    sub_2E5924();
    sub_886BC(&qword_500408, &qword_500410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5003D8);
  }

  return result;
}

unint64_t sub_2E5924()
{
  result = qword_5003E0;
  if (!qword_5003E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5003E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500368);
    sub_3EA7A4();
    sub_886BC(&qword_5003F0, &qword_500368);
    sub_2E60CC(&qword_4FED68, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_886BC(&qword_5003F8, &qword_500400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5003E0);
  }

  return result;
}

unint64_t sub_2E5A9C()
{
  result = qword_500420;
  if (!qword_500420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5003C8);
    sub_2E5B54();
    sub_886BC(&qword_500448, &qword_5003D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500420);
  }

  return result;
}

unint64_t sub_2E5B54()
{
  result = qword_500428;
  if (!qword_500428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5003C0);
    sub_886BC(&qword_500430, &qword_500438);
    sub_2E5C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500428);
  }

  return result;
}

unint64_t sub_2E5C0C()
{
  result = qword_500440;
  if (!qword_500440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500440);
  }

  return result;
}

uint64_t sub_2E5C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_10()
{
  v1 = sub_3EB014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2E5DB4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2E5E38()
{
  result = qword_500460;
  if (!qword_500460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500468);
    sub_2E4E18();
    sub_886BC(&qword_4FC0E8, &qword_4FC0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500460);
  }

  return result;
}

uint64_t sub_2E5EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E5F60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2E5FF8()
{
  result = qword_500470;
  if (!qword_500470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500478);
    sub_2E586C();
    sub_2E5DB4(&qword_500418, &qword_500358, &unk_417178, sub_2E5A9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500470);
  }

  return result;
}

uint64_t sub_2E60CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2E6118()
{
  result = qword_5004B8;
  if (!qword_5004B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5004C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500498);
    sub_3EAC44();
    sub_886BC(&qword_5004A0, &qword_500498);
    sub_2E60CC(&qword_5004B0, &type metadata accessor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_3EAE54();
    sub_2E60CC(&qword_5004A8, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5004B8);
  }

  return result;
}

uint64_t static ReferenceLinkContainer.contextMenuPreviewEdgeInsets(with:)(uint64_t a1)
{
  if (a1 <= 3)
  {
    v1 = -12.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  v4.n128_u64[0] = 0;
  v5.n128_u64[0] = -12.0;
  v6.n128_u64[0] = 0;
  v7.n128_f64[0] = v1;

  return UIEdgeInsets.init(top:leading:bottom:trailing:layoutDirection:)(v3, v4, v5, v6, v7);
}

uint64_t sub_2E63CC@<X0>(void *a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  if ((v8 & 1) == 0)
  {
    sub_3ED9E4();
    v9 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v7 = v12[1];
  }

  a1[4] = &type metadata for AnyReferenceLink;
  a1[5] = sub_112C60();
  v10 = swift_allocObject();
  a1[1] = v10;
  result = sub_BD054(v1, v10 + 16);
  *a1 = v7;
  return result;
}

double sub_2E6550@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v2 = sub_3EA644();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5004C8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC0B0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5004D0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v30 = sub_3EB834();
  sub_3EB0F4();
  v16 = sub_3EB114();

  KeyPath = swift_getKeyPath();
  v18 = (v11 + *(v9 + 44));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828) + 28);
  v20 = enum case for Image.Scale.small(_:);
  v21 = sub_3EB874();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  v22 = v31;
  *v11 = v30;
  v11[1] = KeyPath;
  v11[2] = v16;
  sub_3EA634();
  v23 = *(v32 + 48);
  LOBYTE(v37) = *(v32 + 40);
  *(&v37 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB960);
  sub_3EB8C4();
  if (v36)
  {
    v24 = 0.75;
  }

  else
  {
    v24 = 1.0;
  }

  (*(v33 + 32))(v7, v22, v34);
  *&v7[*(v5 + 44)] = v24;
  sub_FACC(v7, &v15[*(v13 + 44)], &qword_5004C8);
  sub_FACC(v11, v15, &qword_4FC0B0);
  sub_3EBA74();
  sub_3EA434();
  v25 = v35;
  sub_FACC(v15, v35, &qword_5004D0);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5004D8) + 36));
  v27 = v38;
  *v26 = v37;
  v26[1] = v27;
  result = *&v39;
  v26[2] = v39;
  return result;
}

uint64_t sub_2E68F4()
{
  sub_3EBAE4();
  sub_3EA554();
}

__n128 sub_2E6964@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for PodcastsContextMenuProvider;
  *(a1 + 32) = sub_2DBBC4();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_2E63CC((v3 + 16));
  sub_2E00AC(v1, &v10);
  v4 = swift_allocObject();
  v5 = v13;
  *(v4 + 48) = v12;
  *(v4 + 64) = v5;
  *(v4 + 80) = v14;
  v6 = v11;
  *(v4 + 16) = v10;
  *(v4 + 32) = v6;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = sub_2E6ABC;
  *(a1 + 88) = v4;
  sub_2E00AC(v1, &v10);
  v7 = swift_allocObject();
  v8 = v13;
  *(v7 + 48) = v12;
  *(v7 + 64) = v8;
  *(v7 + 80) = v14;
  result = v11;
  *(v7 + 16) = v10;
  *(v7 + 32) = result;
  *(a1 + 96) = sub_2E6B0C;
  *(a1 + 104) = v7;
  return result;
}

uint64_t sub_2E6A78()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_2E6B90()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_2E6BCC()
{
  result = qword_5004E0;
  if (!qword_5004E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5004E8);
    sub_2E6C58();
    sub_2E6CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5004E0);
  }

  return result;
}

unint64_t sub_2E6C58()
{
  result = qword_5004F0;
  if (!qword_5004F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5004F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5004F0);
  }

  return result;
}

unint64_t sub_2E6CBC()
{
  result = qword_500500;
  if (!qword_500500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500500);
  }

  return result;
}

void sub_2E6D14(id a1)
{
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_style) == 1)
  {
    v3 = [objc_opt_self() mt_rootViewController];
    if (v3)
    {
      v8 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4 && [v4 selectedViewController])
      {
        v5 = [a1 view];
        v6 = [a1 view];
        [a1 locationInView:v6];

        sub_3E6484();

        return;
      }
    }
  }

  v7 = [a1 view];

  sub_3E64B4();
}

uint64_t sub_2E702C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_3E6434();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3E64E4();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_objectGraph);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B8);
  v22 = v14;
  sub_3EC394();
  v15 = v26;
  v21 = v27;
  v20 = __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_1F958(v2 + OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_model, v24);
  sub_2E6D14(a1);
  v16 = [a1 view];
  if (v16)
  {
    v17 = v16;
    sub_3EDE34();

    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_3E63F4();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_2E74C0(v6);
    }
  }

  v18 = EpisodeControllerProtocol.contextMenuConfiguration(asPartOf:for:selectedModels:presentationSource:interactionContext:)(v22, v24, _swiftEmptyArrayStorage, v13, v10, v15, v21);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v18;
}

id sub_2E735C(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(UIPreviewParameters) init];
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_style) == 1)
  {
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];
  }

  [v3 bounds];
  v10 = [objc_opt_self() bezierPathWithRoundedRect:v6 cornerRadius:{v7, v8, v9, 16.0}];
  [v4 setVisiblePath:v10];

  v11 = [objc_allocWithZone(UITargetedPreview) initWithView:v3 parameters:v4];
  return v11;
}

uint64_t sub_2E74C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2E753C()
{
  result = qword_5005C0;
  if (!qword_5005C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5005C0);
  }

  return result;
}

uint64_t sub_2E7590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2E75D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2E7654@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v75 = type metadata accessor for ReferenceLinkButtonStyle();
  __chkstk_darwin(v75);
  v74 = (&v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_3EAAF4();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005C8);
  __chkstk_darwin(v73);
  v68 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005D0);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v72 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for FollowButtonPresenter.Data(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = &v64 - v15;
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  v20 = *v1;
  v19 = *(v1 + 8);
  v79 = *(v1 + 40);
  v21 = *(v1 + 48);
  v22 = *(v1 + 49);
  v71 = *(v1 + 64);
  v23 = *(v1 + 16);
  sub_3DE90(v20, v19, v23);
  v24 = v20;
  v25 = v12;
  FollowButtonPresenter.Data.init(_:isExplicit:)(v24, v19, v23, v22, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_FCF8(v10, &qword_5005D8);
    v26 = 1;
    v28 = v77;
    v27 = v78;
    v29 = v76;
  }

  else
  {
    sub_2E7E90(v10, v18);

    if ((v21 & 1) == 0)
    {
      sub_3ED9E4();
      v30 = sub_3EB034();
      sub_3E9754();

      v31 = v65;
      sub_3EAAE4();
      swift_getAtKeyPath();

      (*(v66 + 8))(v31, v67);
      v79 = v80[0];
    }

    v32 = v70;
    sub_2E7EF4(v18, v70);
    v33 = type metadata accessor for FollowShowButton();
    v34 = v68;
    v35 = &v68[v33[5]];
    *v35 = swift_getKeyPath();
    *(v35 + 1) = 0;
    *(v35 + 8) = 0;
    v36 = v34 + v33[6];
    *v36 = swift_getKeyPath();
    *(v36 + 8) = 0;
    v37 = v33[7];
    *(v34 + v37) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1848);
    swift_storeEnumTagMultiPayload();
    v38 = v33[8];
    *(v34 + v38) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v39 = (v34 + v33[9]);
    sub_3E8A44();
    sub_2E85E8(&qword_4F1850, &type metadata accessor for PodcastStateMachine);
    *v39 = sub_3EA894();
    v39[1] = v40;
    sub_2E7EF4(v32, v34);
    v67 = v18;
    v41 = v69;
    sub_2E7EF4(v32, v69);
    v42 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v43 = swift_allocObject();
    sub_2E7E90(v41, v43 + v42);
    *(v43 + ((v13 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v79;
    type metadata accessor for FollowButtonPresenter(0);
    sub_3EA274();
    sub_2E8630(v32, type metadata accessor for FollowButtonPresenter.Data);
    v44 = v71;

    v45 = sub_3E9CD4();
    v46 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005E0) + 36));
    *v46 = v45;
    v46[1] = v44;
    sub_3E8A34();
    LOBYTE(v45) = sub_3E7984();
    sub_F3B84(v80);
    KeyPath = swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = v45 & 1;
    v49 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005E8) + 36));
    *v49 = KeyPath;
    v49[1] = sub_2E8364;
    v49[2] = v48;
    v50 = swift_getKeyPath();
    v51 = v34 + *(v73 + 36);
    *v51 = v50;
    __asm { FMOV            V0.2D, #28.0 }

    *(v51 + 8) = _Q0;
    *(v51 + 24) = 0;
    v57 = swift_getKeyPath();
    v59 = v74;
    v58 = v75;
    *v74 = v57;
    *(v59 + 8) = 0;
    v60 = *(v58 + 20);
    *(v59 + v60) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0);
    swift_storeEnumTagMultiPayload();
    v61 = v59 + *(v58 + 24);
    *v61 = swift_getKeyPath();
    *(v61 + 8) = 0;
    sub_2E8390();
    sub_2E85E8(&qword_500630, type metadata accessor for ReferenceLinkButtonStyle);
    v62 = v72;
    sub_3EB4A4();
    sub_2E8630(v59, type metadata accessor for ReferenceLinkButtonStyle);
    sub_FCF8(v34, &qword_5005C8);
    sub_2E8630(v67, type metadata accessor for FollowButtonPresenter.Data);
    v29 = v76;
    v28 = v77;
    v27 = v78;
    (*(v76 + 32))(v78, v62, v77);
    v26 = 0;
  }

  return (*(v29 + 56))(v27, v26, 1, v28);
}

uint64_t sub_2E7E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowButtonPresenter.Data(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E7EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowButtonPresenter.Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E7F78()
{
  v1 = *(type metadata accessor for FollowButtonPresenter.Data(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v4;

    v7 = type metadata accessor for ShowOffer();
    v8 = v5 + v7[7];
    v9 = sub_3E7784();
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {

      v10 = *(v8 + 32);
      if (v10 != 255)
      {
        sub_F2248(*(v8 + 16), *(v8 + 24), v10);
      }

      v11 = *(v8 + 64);
      if (v11 != 255)
      {
        sub_F2260(*(v8 + 56), v11);
      }

      v12 = *(v8 + 80);
      if (v12 != 255)
      {
        sub_F2260(*(v8 + 72), v12);
      }

      v13 = *(v8 + 96);
      if (v13 != 255)
      {
        sub_F2260(*(v8 + 88), v13);
      }

      v14 = *(v8 + 112);
      if (v14 != 255)
      {
        sub_F2260(*(v8 + 104), v14);
      }

      v15 = *(v8 + 128);
      if (v15 != 255)
      {
        sub_F2260(*(v8 + 120), v15);
      }

      v16 = *(v9 + 44);
      v17 = sub_3E7624();
      (*(*(v17 - 8) + 8))(v8 + v16, v17);
    }

    v18 = v7[13];
    v19 = sub_3E5DC4();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(v5 + v18, 1, v19))
    {
      (*(v20 + 8))(v5 + v18, v19);
    }

    v22 = v7[16];
    if (!v21(v5 + v22, 1, v19))
    {
      (*(v20 + 8))(v5 + v22, v19);
    }

    v23 = v7[17];
    v4 = v25;
    if (!v21(v5 + v23, 1, v19))
    {
      (*(v20 + 8))(v5 + v23, v19);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2E82FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3EAAA4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2E8390()
{
  result = qword_5005F0;
  if (!qword_5005F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5005C8);
    sub_2E8448();
    sub_886BC(&qword_4F1708, &qword_4F1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5005F0);
  }

  return result;
}

unint64_t sub_2E8448()
{
  result = qword_5005F8;
  if (!qword_5005F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5005E8);
    sub_2E8500();
    sub_886BC(&qword_500620, &qword_500628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5005F8);
  }

  return result;
}

unint64_t sub_2E8500()
{
  result = qword_500600;
  if (!qword_500600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5005E0);
    sub_2E85E8(&qword_500608, type metadata accessor for FollowShowButton);
    sub_886BC(&qword_500610, &qword_500618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500600);
  }

  return result;
}

uint64_t sub_2E85E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2E8630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2E8694()
{
  result = qword_500638;
  if (!qword_500638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5005C8);
    type metadata accessor for ReferenceLinkButtonStyle();
    sub_2E8390();
    sub_2E85E8(&qword_500630, type metadata accessor for ReferenceLinkButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500638);
  }

  return result;
}

uint64_t sub_2E87A4@<X0>(void *a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500648);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for BookmarkButtonPresenter.Data(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  KeyPath = swift_getKeyPath();
  v29 = 0;
  sub_3DE90(a1, a2, a3);
  sub_1634B4(a1, a2, a3, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_2E8A90(v10);
    sub_3DEF8(a1, a2, a3);
    result = sub_23968C(KeyPath, 0);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    sub_2E8AF8(v10, v17);
    sub_165950(v17, v14);
    type metadata accessor for BookmarkButtonPresenter(0);
    swift_allocObject();

    v23 = sub_165000(v14);

    v26 = v23;
    sub_3EB8B4();

    sub_2E9590(v17, type metadata accessor for BookmarkButtonPresenter.Data);
    v21 = v27;
    v22 = v28;
    v20 = v29;
    *a4 = a1;
    a4[1] = a2;
    a4[2] = a3;
    sub_3DE90(a1, a2, a3);
    v19 = KeyPath;
    sub_27FA88(KeyPath, v20);

    sub_3DEF8(a1, a2, a3);
    sub_23968C(v19, v20);
  }

  a4[3] = v19;
  a4[4] = v20;
  a4[5] = v21;
  a4[6] = v22;
  return result;
}

uint64_t sub_2E8A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2E8AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookmarkButtonPresenter.Data(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E8B5C()
{
  v1 = type metadata accessor for ReferenceLinkButtonStyle();
  __chkstk_darwin(v1);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500650);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-v6];
  v8 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v8;
  v17[2] = *(v0 + 32);
  v18 = *(v0 + 48);
  v9 = swift_allocObject();
  v10 = *(v0 + 16);
  *(v9 + 16) = *v0;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v0 + 32);
  *(v9 + 64) = *(v0 + 48);
  v15 = v17;
  sub_2E9444(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500658);
  sub_2E947C();
  sub_3EB904();
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v11 = *(v1 + 20);
  *&v3[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0);
  swift_storeEnumTagMultiPayload();
  v12 = &v3[*(v1 + 24)];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  sub_886BC(&qword_500668, &qword_500650);
  sub_2E95F8(&qword_500630, type metadata accessor for ReferenceLinkButtonStyle);
  sub_3EB4A4();
  sub_2E9590(v3, type metadata accessor for ReferenceLinkButtonStyle);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2E8E4C()
{
  v0 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  [v0 impactOccurred];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500670);
  sub_3EB8C4();
  sub_1646F0();
}

uint64_t sub_2E8EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_3EBBB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBB94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500670);
  sub_3EB8C4();
  v12 = v16[1];
  swift_getKeyPath();
  *&v17 = v12;
  sub_2E95F8(&qword_4F48C0, type metadata accessor for BookmarkButtonPresenter);
  sub_3E6BC4();

  sub_3E8A94();
  v13 = sub_3EB834();
  sub_3EBB84();
  sub_3EBBA4();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500658) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD380);
  sub_2E95F8(&qword_500678, &type metadata accessor for ReplaceSymbolEffect);
  sub_3EA854();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  result = swift_getKeyPath();
  *v14 = result;
  *a2 = v13;
  return result;
}

uint64_t sub_2E91D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3EAAA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2E9254(uint64_t a1)
{
  v2 = sub_3EA874();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3EA994();
}

uint64_t sub_2E931C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2E9364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2E93DC()
{
  sub_3DEF8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_23968C(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_2E947C()
{
  result = qword_500660;
  if (!qword_500660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500658);
    sub_886BC(&qword_4FD418, &qword_4FD380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500660);
  }

  return result;
}

uint64_t sub_2E9534@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3EAAA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2E9590(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2E95F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2E9668()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500650);
  type metadata accessor for ReferenceLinkButtonStyle();
  sub_886BC(&qword_500668, &qword_500650);
  sub_2E95F8(&qword_500630, type metadata accessor for ReferenceLinkButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2E975C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_2E9838(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for ReferenceLinkSubtitleViewModifier()
{
  result = qword_5006D8;
  if (!qword_5006D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2E994C()
{
  sub_2E3C34();
  if (v0 <= 0x3F)
  {
    sub_2DC100();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2E99EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v69 = a2;
  v55[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500710);
  __chkstk_darwin(v55[0]);
  v55[1] = v55 - v3;
  v4 = sub_3EAC64();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500718);
  __chkstk_darwin(v8);
  v66 = v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500720);
  __chkstk_darwin(v10);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = v55 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500728);
  __chkstk_darwin(v71);
  v16 = v55 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500730);
  __chkstk_darwin(v64);
  v67 = v55 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500738);
  __chkstk_darwin(v70);
  v19 = v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500740);
  __chkstk_darwin(v20);
  v65 = v55 - v21;
  v63 = sub_3EAAF4();
  v22 = *(v63 - 8);
  __chkstk_darwin(v63);
  v24 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for ReferenceLinkSubtitleViewModifier() + 20);
  v61 = v2;
  v26 = v2 + v25;
  v27 = *v26;
  LODWORD(v26) = *(v26 + 8);
  v56 = v12;
  if (v26 == 1)
  {
    v73 = v27;
  }

  else
  {

    sub_3ED9E4();
    v28 = v19;
    v29 = v10;
    v30 = v16;
    v31 = v20;
    v32 = sub_3EB034();
    sub_3E9754();

    v20 = v31;
    v16 = v30;
    v10 = v29;
    v19 = v28;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v27, 0);
    (*(v22 + 8))(v24, v63);
    LOBYTE(v27) = v73;
  }

  v33 = sub_3EB0F4();
  KeyPath = swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500748);
  v36 = *(*(v35 - 8) + 16);
  if (v27)
  {
    if (v27 == 1)
    {
      v37 = v66;
      v36(v66, v68, v35);
      v38 = (v37 + *(v8 + 36));
      *v38 = KeyPath;
      v38[1] = v33;
      v39 = v57;
      sub_2830E8(v57);
      v41 = v58;
      v40 = v59;
      v42 = v60;
      (*(v59 + 104))(v58, enum case for ColorSchemeContrast.standard(_:), v60);
      LOBYTE(v37) = sub_3EAC54();
      v43 = *(v40 + 8);
      v43(v41, v42);
      v43(v39, v42);
      if (v37)
      {
        sub_3EA2A4();
        swift_getOpaqueTypeConformance2();
      }

      else
      {
        v72 = sub_3EAEE4();
      }

      v51 = sub_3EA444();
      v52 = v56;
      sub_FACC(v66, v56, &qword_500718);
      *(v52 + *(v10 + 36)) = v51;
      v50 = &qword_500720;
      v53 = v62;
      sub_FACC(v52, v62, &qword_500720);
      sub_FBD0(v53, v67, &qword_500720);
      swift_storeEnumTagMultiPayload();
      sub_2EA34C();
      sub_2EA4E8();
      sub_3EADE4();
      sub_FBD0(v19, v16, &qword_500738);
      swift_storeEnumTagMultiPayload();
      sub_2EA2C0();
      sub_3EADE4();
      sub_FCF8(v19, &qword_500738);
      v46 = v53;
    }

    else
    {
      v48 = v65;
      v36(v65, v68, v35);
      v49 = (v48 + *(v8 + 36));
      *v49 = KeyPath;
      v49[1] = v33;
      *(v48 + *(v20 + 36)) = sub_3EAEE4();
      v50 = &qword_500740;
      sub_FBD0(v48, v16, &qword_500740);
      swift_storeEnumTagMultiPayload();
      sub_2EA2C0();
      sub_2EA34C();
      sub_3EADE4();
      v46 = v48;
    }

    v47 = v50;
  }

  else
  {
    v44 = v65;
    v36(v65, v68, v35);
    v45 = (v44 + *(v8 + 36));
    *v45 = KeyPath;
    v45[1] = v33;
    *(v44 + *(v20 + 36)) = sub_3EAEE4();
    sub_FBD0(v44, v67, &qword_500740);
    swift_storeEnumTagMultiPayload();
    sub_2EA34C();
    sub_2EA4E8();
    sub_3EADE4();
    sub_FBD0(v19, v16, &qword_500738);
    swift_storeEnumTagMultiPayload();
    sub_2EA2C0();
    sub_3EADE4();
    sub_FCF8(v19, &qword_500738);
    v46 = v44;
    v47 = &qword_500740;
  }

  return sub_FCF8(v46, v47);
}

unint64_t sub_2EA2C0()
{
  result = qword_500750;
  if (!qword_500750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500738);
    sub_2EA34C();
    sub_2EA4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500750);
  }

  return result;
}

unint64_t sub_2EA34C()
{
  result = qword_500758;
  if (!qword_500758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500740);
    sub_2EA404();
    sub_886BC(&qword_4FEE50, &qword_4FEE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500758);
  }

  return result;
}

unint64_t sub_2EA404()
{
  result = qword_500760;
  if (!qword_500760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500718);
    sub_886BC(&qword_500768, &qword_500748);
    sub_886BC(&qword_4FC0D8, &qword_4FC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500760);
  }

  return result;
}

unint64_t sub_2EA4E8()
{
  result = qword_500770;
  if (!qword_500770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500720);
    sub_2EA404();
    sub_886BC(&qword_4FB158, &qword_4FB160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500770);
  }

  return result;
}

unint64_t sub_2EA5A4()
{
  result = qword_500778;
  if (!qword_500778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500780);
    sub_2EA2C0();
    sub_2EA34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500778);
  }

  return result;
}

uint64_t sub_2EA630(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2EA68C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2EA720@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_7A45C(v2, &v40);
  if (v41)
  {
    v37 = v13;
    sub_1D4F0(&v40, v42);
    sub_1F958(v42, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
    v17 = type metadata accessor for FlowAction(0);
    if (swift_dynamicCast())
    {
      v18 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E28);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_3F5630;
      *(v19 + 56) = v17;
      *(v19 + 64) = sub_2EB448(&qword_4F8A40, type metadata accessor for FlowAction);
      v36 = v18;
      *(v19 + 32) = v18;
      v34 = v4;
      v35 = a1;
      v20 = *(v11 + 16);
      v20(v16, v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v10);
      v21 = type metadata accessor for TabChangeAction();
      v22 = v38;
      v33 = v9;
      v23 = v21;
      v24 = swift_allocObject();
      *(v24 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = 10;
      *(v24 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = v19;
      *(v24 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = 0;
      *(v24 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = 0;
      *(v24 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = 1;
      v20(v37, v16, v10);
      v25 = sub_3EC634();
      v26 = v33;
      (*(*(v25 - 8) + 56))(v33, 1, 1, v25);

      sub_3E5FB4();
      v27 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v29 = v28;
      (*(v22 + 8))(v6, v34);
      (*(v11 + 8))(v16, v10);
      *(v24 + 16) = v27;
      *(v24 + 24) = v29;
      *(v24 + 32) = 0;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      (*(v11 + 32))(v24 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v37, v10);
      sub_14A10(v26, v24 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
      v30 = v35;
      v35[3] = v23;
      v30[4] = sub_2EB448(&unk_501110, type metadata accessor for TabChangeAction);

      *v30 = v24;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    else
    {
      sub_1D4F0(v42, a1);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  }

  else
  {
    result = sub_EF85C(&v40);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2EABB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500788);
  __chkstk_darwin(v26);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500790);
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_3EAAF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 56);
  if (*(v2 + 64) == 1)
  {
    v30 = *(v2 + 56);
    if (v12 > 1u)
    {
LABEL_3:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500798);
      (*(*(v13 - 8) + 16))(v4, v25, v13);
      swift_storeEnumTagMultiPayload();
      v14 = sub_2EB2C8();
      *&v28[0] = v13;
      *(&v28[0] + 1) = v14;
      swift_getOpaqueTypeConformance2();
      return sub_3EADE4();
    }
  }

  else
  {

    sub_3ED9E4();
    v16 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v12, 0);
    (*(v9 + 8))(v11, v8);
    if (v30 > 1u)
    {
      goto LABEL_3;
    }
  }

  sub_2EB32C(v2, v28);
  v17 = swift_allocObject();
  v18 = v28[3];
  *(v17 + 48) = v28[2];
  *(v17 + 64) = v18;
  *(v17 + 80) = v29;
  v19 = v28[1];
  *(v17 + 16) = v28[0];
  *(v17 + 32) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500798);
  v21 = sub_2EB2C8();
  sub_3EB4F4();

  v22 = v24;
  (*(v24 + 16))(v4, v7, v5);
  swift_storeEnumTagMultiPayload();
  *&v28[0] = v20;
  *(&v28[0] + 1) = v21;
  swift_getOpaqueTypeConformance2();
  sub_3EADE4();
  return (*(v22 + 8))(v7, v5);
}

uint64_t sub_2EAFC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_3EAAF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2EA720(&v20);
  if (!v21)
  {
    return sub_EF85C(&v20);
  }

  sub_1D4F0(&v20, v23);
  sub_1F958(v23, &v20);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);

  if ((v10 & 1) == 0)
  {
    sub_3ED9E4();
    v11 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v9 = *&v19[0];
  }

  v22 = v9;
  sub_E69A0(&v20, v19);
  v12 = swift_allocObject();
  v13 = v19[1];
  v12[1] = v19[0];
  v12[2] = v13;
  v12[3] = v19[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v14 = sub_3ECE04();
  v15 = sub_3ED6F4();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_4072F0;
  v16[5] = v12;
  v16[6] = v14;

  sub_E8ECC(0, 0, v4, &unk_407300, v16);

  sub_E91B8(&v20);
  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

unint64_t sub_2EB2C8()
{
  result = qword_5007A0;
  if (!qword_5007A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5007A0);
  }

  return result;
}

uint64_t sub_2EB364()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  sub_23968C(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_2EB3C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2EB400()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2EB448(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2EB4A0()
{
  result = qword_5007A8;
  if (!qword_5007A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5007B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500798);
    sub_2EB2C8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5007A8);
  }

  return result;
}

uint64_t sub_2EB56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PodcastsReferenceLink();
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = sub_3E7D54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[10];
  v16 = (a1 + v5[9]);
  v17 = v16[1];
  v52 = *v16;
  v18 = *(a1 + v15 + 8);
  v49 = *(a1 + v15);
  v44 = v18;
  v19 = v5[12];
  v20 = (a1 + v5[11]);
  v21 = v20[1];
  v47 = *v20;
  sub_FBD0(a1 + v19, v53, &qword_4F00B0);
  v22 = v5[14];
  v45 = v12;
  v46 = v14;
  v23 = v12;
  v24 = v7;
  v25 = *(v23 + 16);
  v48 = v11;
  v25(v14, a1 + v22, v11);
  v26 = a1 + v5[15];
  v50 = v10;
  sub_FBD0(v26, v10, &qword_4F00B8);
  sub_2EDE38(a1, v7, type metadata accessor for PodcastsReferenceLink);
  LODWORD(v10) = v7[v5[13]];
  v51 = v17;
  if (v10 == 2)
  {

    v27 = v44;

    sub_2EE254(a1, type metadata accessor for PodcastsReferenceLink);
LABEL_3:
    sub_2EE254(v24, type metadata accessor for PodcastsReferenceLink);
    v28 = 0;
    goto LABEL_14;
  }

  v27 = v44;

  v29 = sub_3E79D4();
  v31 = v30;
  if (v29 == sub_3E79D4() && v31 == v32)
  {

    sub_2EE254(a1, type metadata accessor for PodcastsReferenceLink);
  }

  else
  {
    v34 = sub_3EE804();

    sub_2EE254(a1, type metadata accessor for PodcastsReferenceLink);
    if ((v34 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v35 = *(v24 + 16);
  sub_2EE254(v24, type metadata accessor for PodcastsReferenceLink);
  if (v35 == 3)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2 * (v35 == 2);
  }

LABEL_14:
  v36 = type metadata accessor for ReferenceLinkTextStackView();
  v37 = a2 + v36[11];
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  v38 = v36[12];
  *(a2 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  swift_storeEnumTagMultiPayload();
  v39 = v51;
  *a2 = v52;
  *(a2 + 8) = v39;
  v40 = v48;
  *(a2 + 16) = v49;
  *(a2 + 24) = v27;
  v41 = v46;
  *(a2 + 32) = v47;
  *(a2 + 40) = v21;
  v42 = v53[1];
  *(a2 + 48) = v53[0];
  *(a2 + 64) = v42;
  *(a2 + 80) = v54;
  (*(v45 + 32))(a2 + v36[8], v41, v40);
  result = sub_FACC(v50, a2 + v36[9], &qword_4F00B8);
  *(a2 + v36[10]) = v28;
  return result;
}

uint64_t type metadata accessor for ReferenceLinkTextStackView()
{
  result = qword_500810;
  if (!qword_500810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2EBA24(uint64_t a1, uint64_t a2, int *a3)
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

  v9 = sub_3E7D54();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[8];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_2EBBC8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = sub_3E7D54();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_2EBD4C()
{
  sub_23CED4(319, &qword_4E9978, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_C30B0();
    if (v1 <= 0x3F)
    {
      sub_3E7D54();
      if (v2 <= 0x3F)
      {
        sub_2EBEE8(319, &qword_4F0220, type metadata accessor for ReferenceLinkTimeframe, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_23CED4(319, &qword_4FFE70, &type metadata for ReferenceLinkViewStyle, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_2EBEE8(319, &qword_4EEC80, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
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

void sub_2EBEE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2EBF68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500870);
  v142 = *(v3 - 8);
  v143 = v3;
  __chkstk_darwin(v3);
  v121 = &v116 - v4;
  v5 = sub_3E7D54();
  v138 = *(v5 - 8);
  v139 = v5;
  __chkstk_darwin(v5);
  v136 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_3EAAF4();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500878);
  __chkstk_darwin(v8 - 8);
  v141 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v140 = &v116 - v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500880);
  __chkstk_darwin(v128);
  v131 = &v116 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500888);
  v132 = *(v13 - 8);
  v133 = v13;
  __chkstk_darwin(v13);
  v130 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v129 = &v116 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500890);
  __chkstk_darwin(v17 - 8);
  v137 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v135 = &v116 - v20;
  v21 = sub_3E6044();
  __chkstk_darwin(v21 - 8);
  v126 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3ED1F4();
  __chkstk_darwin(v23 - 8);
  v125 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ExplicitAppendingView();
  v145 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v116 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB800);
  __chkstk_darwin(v31 - 8);
  v127 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v116 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500898);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v116 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008A0);
  __chkstk_darwin(v40 - 8);
  v134 = &v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v45 = &v116 - v43;
  v46 = a1[1];
  v146 = &v116 - v43;
  v147 = v25;
  if (v46)
  {
    v119 = v36;
    v47 = a1;
    v48 = *a1;
    v49 = *(type metadata accessor for ReferenceLinkTextStackView() + 40);
    v120 = v47;
    LODWORD(v47) = *(v47 + v49);
    v150 = v48;
    v151 = v46;
    sub_68DC4();

    v50 = sub_3EB394();
    v118 = v51;
    v53 = v52;
    v117 = v54;
    *(v30 + 8) = swift_getKeyPath();
    v30[72] = 0;
    v55 = *(v25 + 28);
    *&v30[v55] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
    swift_storeEnumTagMultiPayload();
    if (v47 == 1)
    {
      sub_3ED184();
      sub_3E6034();
      v56 = sub_3ED2A4();
      v58 = v53 & 1 | 0x4000000000000000;
    }

    else
    {
      v56 = 0;
      v58 = v53 & 1;
      v57 = 0xE000000000000000;
    }

    *(v30 + 6) = v56;
    *(v30 + 7) = v57;
    v60 = v118;
    *v30 = v50;
    *(v30 + 1) = v60;
    *(v30 + 2) = v58;
    *(v30 + 3) = v117;
    *(v30 + 4) = 0;
    *(v30 + 5) = 0;
    sub_2EDE38(v30, v35, type metadata accessor for ExplicitAppendingView);
    v61 = v145;
    v62 = *(v145 + 56);
    v63 = v147;
    v62(v35, 0, 1, v147);
    sub_2EE254(v30, type metadata accessor for ExplicitAppendingView);
    v64 = (*(v61 + 48))(v35, 1, v63);
    v45 = v146;
    if (v64)
    {
      sub_FCF8(v35, &qword_4FB800);
      v65 = 1;
    }

    else
    {
      sub_2EE1F0(v35, v39);
      v65 = 0;
    }

    v59 = v143;
    v62(v39, v65, 1, v63);
    v66 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008B0) + 36)];
    *v66 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0);
    swift_storeEnumTagMultiPayload();
    v67 = v66 + *(type metadata accessor for ReferenceLinkTitleViewModifier() + 20);
    *v67 = swift_getKeyPath();
    v67[8] = 0;
    KeyPath = swift_getKeyPath();
    v69 = v119;
    v70 = &v39[*(v119 + 36)];
    *v70 = KeyPath;
    *(v70 + 1) = 2;
    v70[16] = 0;
    sub_FACC(v39, v45, &qword_500898);
    (*(v37 + 56))(v45, 0, 1, v69);
    a1 = v120;
  }

  else
  {
    (*(v37 + 56))(&v116 - v43, 1, 1, v36, v44);
    v59 = v143;
  }

  v71 = sub_2ECF88();
  if (v74)
  {
    v75 = v71;
    v76 = v72;
    v77 = v73;
    v78 = v74;
    v79 = a1;
    v80 = *(a1 + *(type metadata accessor for ReferenceLinkTextStackView() + 40));
    *(v27 + 8) = swift_getKeyPath();
    v27[72] = 0;
    v81 = *(v147 + 28);
    *&v27[v81] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
    swift_storeEnumTagMultiPayload();
    if (v80 == 2)
    {
      sub_243E88(v75, v76, v77 & 1);

      sub_3ED184();
      sub_3E6034();
      v82 = sub_3ED2A4();
      v84 = v83;
      sub_94D30(v75, v76, v77 & 1);

      v85 = v77 & 1 | 0x4000000000000000;
      v86 = 1;
    }

    else
    {
      v82 = 0;
      v86 = 0;
      v85 = v77 & 1;
      v84 = 0xE000000000000000;
    }

    *(v27 + 6) = v82;
    *(v27 + 7) = v84;
    *v27 = v75;
    *(v27 + 1) = v76;
    *(v27 + 2) = v85;
    *(v27 + 3) = v78;
    *(v27 + 4) = 0;
    *(v27 + 5) = v86;
    v91 = v127;
    sub_2EDE38(v27, v127, type metadata accessor for ExplicitAppendingView);
    (*(v145 + 56))(v91, 0, 1, v147);
    sub_2EE254(v27, type metadata accessor for ExplicitAppendingView);
    v92 = v131;
    v93 = &v131[*(v128 + 36)];
    *v93 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0);
    swift_storeEnumTagMultiPayload();
    v94 = v93 + *(type metadata accessor for ReferenceLinkSubtitleViewModifier() + 20);
    *v94 = swift_getKeyPath();
    v94[8] = 0;
    sub_FACC(v91, v92, &qword_4FB800);
    v95 = swift_getKeyPath();
    v96 = v130;
    sub_FACC(v92, v130, &qword_500880);
    v90 = v133;
    v97 = v96 + *(v133 + 36);
    *v97 = v95;
    *(v97 + 8) = 1;
    *(v97 + 16) = 0;
    v98 = v96;
    v99 = v129;
    sub_FACC(v98, v129, &qword_500888);
    v89 = v135;
    sub_FACC(v99, v135, &qword_500888);
    v87 = 0;
    a1 = v79;
    v88 = v140;
  }

  else
  {
    v87 = 1;
    v88 = v140;
    v89 = v135;
    v90 = v133;
  }

  (*(v132 + 56))(v89, v87, 1, v90);
  v100 = a1 + *(type metadata accessor for ReferenceLinkTextStackView() + 44);
  v101 = *v100;
  if (v100[8] == 1)
  {
    if (*v100 != 2)
    {
      goto LABEL_25;
    }
  }

  else
  {

    sub_3ED9E4();
    v102 = sub_3EB034();
    sub_3E9754();

    v103 = v122;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v101, 0);
    (*(v123 + 8))(v103, v124);
    if (v150 != 2)
    {
      goto LABEL_25;
    }
  }

  (*(v138 + 104))(v136, enum case for MetadataSource.apple(_:), v139);
  sub_2EE2B4(&qword_4F4588, &type metadata accessor for MetadataSource);
  sub_3ED514();
  sub_3ED514();
  if (v150 != v148 || v151 != v149)
  {
    v104 = sub_3EE804();
    (*(v138 + 8))(v136, v139);

    if (v104)
    {
      goto LABEL_24;
    }

LABEL_25:
    v106 = 1;
    goto LABEL_26;
  }

  (*(v138 + 8))(v136, v139);

LABEL_24:
  v105 = v121;
  sub_2ED5B8(v121);
  sub_2EDDC0(v105, v88);
  v106 = 0;
LABEL_26:
  (*(v142 + 56))(v88, v106, 1, v59);
  v107 = v45;
  v108 = v134;
  sub_FBD0(v107, v134, &qword_5008A0);
  v109 = v137;
  sub_FBD0(v89, v137, &qword_500890);
  v110 = v89;
  v111 = v141;
  sub_2EDCE8(v88, v141);
  v112 = v88;
  v113 = v144;
  sub_FBD0(v108, v144, &qword_5008A0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008A8);
  sub_FBD0(v109, v113 + *(v114 + 48), &qword_500890);
  sub_2EDCE8(v111, v113 + *(v114 + 64));
  sub_2EDD58(v112);
  sub_FCF8(v110, &qword_500890);
  sub_FCF8(v146, &qword_5008A0);
  sub_2EDD58(v111);
  sub_FCF8(v109, &qword_500890);
  return sub_FCF8(v108, &qword_5008A0);
}

uint64_t sub_2ECF88()
{
  v1 = v0;
  v2 = sub_3EA6F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v67 - v7;
  v9 = v0[3];
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v11 = v3;
    v12 = v2;
    v13 = v1[2];

    v14 = sub_E0CD0(0, 1, 1, _swiftEmptyArrayStorage);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v10 = v14;
    if (v16 >= v15 >> 1)
    {
      v10 = sub_E0CD0((v15 > 1), v16 + 1, 1, v14);
    }

    *(v10 + 2) = v16 + 1;
    v17 = &v10[32 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v9;
    v17[48] = 0;
    *(v17 + 7) = _swiftEmptyArrayStorage;
    v2 = v12;
    v3 = v11;
  }

  v18 = v1[5];
  if (v18)
  {
    v19 = v1[4];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_E0CD0(0, *(v10 + 2) + 1, 1, v10);
    }

    v21 = *(v10 + 2);
    v20 = *(v10 + 3);
    if (v21 >= v20 >> 1)
    {
      v10 = sub_E0CD0((v20 > 1), v21 + 1, 1, v10);
    }

    *(v10 + 2) = v21 + 1;
    v22 = &v10[32 * v21];
    *(v22 + 4) = v19;
    *(v22 + 5) = v18;
    v22[48] = 0;
    *(v22 + 7) = _swiftEmptyArrayStorage;
  }

  v78 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500908);
  sub_886BC(&qword_500910, &qword_500908);
  if (sub_3ED894())
  {
    type metadata accessor for ReferenceLinkTextStackView();
    sub_282B94(v8);
    (*(v3 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v2);
    v23 = sub_3EA6E4();
    v24 = *(v3 + 8);
    v24(v5, v2);
    v24(v8, v2);
    v67[1] = sub_3ED304();
    v67[2] = v25;
    v26 = *(v10 + 2);
    v67[0] = v10;
    if (v23)
    {
      if (v26)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = (v67[0] + 32 * v26 + 16);
        do
        {
          v33 = *(v31 - 2);
          v34 = *(v31 - 1);
          v35 = *v31;
          v36 = *(v31 + 1);
          sub_243E88(v33, v34, *v31);

          if (v27)
          {
            v68 = v36;
            v76 = v34;

            v37 = sub_3EB284();
            v69 = v28;
            v74 = v29;
            v75 = v38;
            v77 = v26;
            v40 = v39;

            v41 = v76;
            v42 = sub_3EB284();
            v72 = v43;
            v73 = v42;
            v70 = v44;
            v71 = v45;
            sub_94D30(v33, v41, v35);

            sub_94D30(v30, v74, v69 & 1);

            v26 = v77;
            sub_94D30(v37, v75, v40 & 1);

            v34 = v72;
            v33 = v73;
            v32 = v70;
            v36 = v71;
          }

          else
          {
            v32 = v35;
          }

          v31 -= 32;
          v27 = v36;
          v28 = v32;
          v29 = v34;
          v30 = v33;
          --v26;
        }

        while (v26);
        goto LABEL_27;
      }
    }

    else if (v26)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = (v67[0] + 56);
      do
      {
        v33 = *(v50 - 3);
        v62 = *(v50 - 2);
        v65 = *(v50 - 8);
        v64 = *v50;
        if (v46)
        {
          v51 = *(v50 - 8);
          v68 = v51;
          sub_243E88(v33, v62, v51);

          v76 = v62;

          v52 = sub_3EB284();
          v77 = v26;
          v69 = v47;
          v74 = v48;
          v75 = v53;
          v55 = v54;

          v56 = v76;
          v57 = v68;
          v58 = sub_3EB284();
          v72 = v59;
          v73 = v58;
          v70 = v60;
          v71 = v61;
          sub_94D30(v33, v56, v57);

          sub_94D30(v49, v74, v69 & 1);

          v26 = v77;
          sub_94D30(v52, v75, v55 & 1);

          v62 = v72;
          v33 = v73;
          v63 = v70;
          v64 = v71;
        }

        else
        {
          sub_243E88(v33, v62, *(v50 - 8));

          v63 = v65;
        }

        v50 += 4;
        v46 = v64;
        v47 = v63;
        v48 = v62;
        v49 = v33;
        --v26;
      }

      while (v26);
      goto LABEL_27;
    }

    v33 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v33 = 0;
LABEL_28:

  return v33;
}

uint64_t sub_2ED5B8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008B8);
  __chkstk_darwin(v31);
  v3 = &v29 - v2;
  v4 = sub_3EEA54();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EEA44();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for ReferenceLinkTextStackView();
  sub_FBD0(v1 + *(v14 + 36), v13, &qword_4F00B8);
  v15 = type metadata accessor for ReferenceLinkTimeframe();
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {
    sub_FCF8(v13, &qword_4F00B8);
LABEL_4:
    v19 = 1;
    v20 = v32;
    goto LABEL_9;
  }

  v16 = &v13[*(v15 + 20)];
  v17 = *v16;
  v18 = v16[8];
  sub_2EE254(v13, type metadata accessor for ReferenceLinkTimeframe);
  if (v18)
  {
    goto LABEL_4;
  }

  sub_3EEB04();
  if (v17 >= 3600.0)
  {
    sub_3EEA34();
  }

  else
  {
    sub_3EEA24();
  }

  sub_3E5824();
  sub_2EE2B4(&qword_4FE478, &type metadata accessor for Duration.TimeFormatStyle);
  sub_3EEAE4();
  (*(v30 + 8))(v6, v4);
  v21 = (*(v8 + 8))(v10, v7);
  v22 = v33;
  __chkstk_darwin(v21);
  *(&v29 - 2) = v23;
  *(&v29 - 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008C8);
  sub_2EE304();
  sub_3EB8A4();

  v24 = sub_3EB1B4();
  KeyPath = swift_getKeyPath();
  v26 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008D8) + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  *&v3[*(v31 + 36)] = sub_3EAEE4();
  sub_2EE3C4();
  sub_2EE560();
  v20 = v32;
  sub_3EB464();
  sub_FCF8(v3, &qword_5008B8);
  v19 = 0;
LABEL_9:
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008C0);
  return (*(*(v27 - 8) + 56))(v20, v19, 1, v27);
}

uint64_t sub_2EDAA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3EABB4();
  __chkstk_darwin(v6 - 8);
  sub_3EABA4();
  v11._object = 0x800000000042D080;
  v11._countAndFlagsBits = 0xD000000000000011;
  sub_3EAB94(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  sub_3EAB84(v12);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_3EAB94(v13);
  sub_3EABD4();
  result = sub_3EB374();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_2EDBB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_3EB854();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008C8) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828) + 28);
  v5 = enum case for Image.Scale.small(_:);
  v6 = sub_3EB874();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_2EDC94@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_3EAC84();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500868);
  return sub_2EBF68(v1, a1 + *(v3 + 44));
}

uint64_t sub_2EDCE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2EDD58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2EDDC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2EDE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2EDEA0@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500930);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_3EAF14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  sub_3EAF24();
  sub_3EAF34();
  KeyPath = swift_getKeyPath();
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500938) + 36)];
  *v17 = KeyPath;
  *(v17 + 1) = 1;
  v17[16] = 0;
  v18 = &v8[*(v3 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500940) + 28);
  v20 = enum case for Text.TruncationMode.middle(_:);
  v21 = sub_3EB234();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  v22 = *(v10 + 16);
  v22(v12, v15, v9);
  sub_FBD0(v8, v5, &qword_500930);
  v22(a1, v12, v9);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500948);
  sub_FBD0(v5, &a1[*(v23 + 48)], &qword_500930);
  sub_FCF8(v8, &qword_500930);
  v24 = *(v10 + 8);
  v24(v15, v9);
  sub_FCF8(v5, &qword_500930);
  return (v24)(v12, v9);
}

uint64_t sub_2EE18C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_3EAB44();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500928);
  return sub_2EDEA0((a1 + *(v2 + 44)));
}

uint64_t sub_2EE1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExplicitAppendingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2EE254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2EE2B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2EE304()
{
  result = qword_5008D0;
  if (!qword_5008D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5008C8);
    sub_886BC(&qword_4FB920, &qword_4FB828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5008D0);
  }

  return result;
}

unint64_t sub_2EE3C4()
{
  result = qword_5008E0;
  if (!qword_5008E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5008B8);
    sub_2EE47C();
    sub_886BC(&qword_4FEE50, &qword_4FEE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5008E0);
  }

  return result;
}

unint64_t sub_2EE47C()
{
  result = qword_5008E8;
  if (!qword_5008E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5008D8);
    sub_886BC(&qword_5008F0, &qword_5008F8);
    sub_886BC(&qword_4FC0D8, &qword_4FC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5008E8);
  }

  return result;
}

unint64_t sub_2EE560()
{
  result = qword_500900;
  if (!qword_500900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500900);
  }

  return result;
}

uint64_t sub_2EE650(uint64_t a1)
{
  v2 = sub_3EB234();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3EA934();
}

uint64_t sub_2EE774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_2EE850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for ReferenceLinkTitleViewModifier()
{
  result = qword_5009B8;
  if (!qword_5009B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2EE980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v82 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5009F0);
  __chkstk_darwin(v80);
  v70 = &v60 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5009F8);
  __chkstk_darwin(v61);
  v62 = &v60 - v4;
  v5 = sub_3EAC64();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A00);
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin(v9);
  v71 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A08);
  __chkstk_darwin(v11);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A10);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A18);
  __chkstk_darwin(v18);
  v77 = &v60 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A20);
  __chkstk_darwin(v83);
  v78 = &v60 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A28);
  __chkstk_darwin(v79);
  v75 = &v60 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A30);
  __chkstk_darwin(v76);
  v23 = &v60 - v22;
  v24 = sub_3EAAF4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(type metadata accessor for ReferenceLinkTitleViewModifier() + 20);
  v72 = v2;
  v29 = v2 + v28;
  v30 = *v29;
  LODWORD(v29) = *(v29 + 8);
  v74 = v18;
  if (v29 == 1)
  {
    v85 = v30;
  }

  else
  {

    sub_3ED9E4();
    v31 = v11;
    v32 = sub_3EB034();
    sub_3E9754();

    v11 = v31;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v30, 0);
    (*(v25 + 8))(v27, v24);
    LOBYTE(v30) = v85;
  }

  v33 = sub_3EB0F4();
  KeyPath = swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A38);
  v36 = *(*(v35 - 8) + 16);
  if (v30)
  {
    if (v30 != 1)
    {
      v53 = v70;
      v36(v70, v81, v35);
      v54 = (v53 + *(v79 + 36));
      *v54 = KeyPath;
      v54[1] = v33;
      *(v53 + *(v80 + 36)) = sub_3EAEC4();
      sub_2EF3D0(v53, v17);
      swift_storeEnumTagMultiPayload();
      sub_2EF440();
      sub_2EF798();
      sub_3EADE4();
      return sub_FCF8(v53, &qword_5009F0);
    }

    v37 = v75;
    v36(v75, v81, v35);
    v38 = (v37 + *(v79 + 36));
    *v38 = KeyPath;
    v38[1] = v33;
    sub_3EB144();
    sub_2EF5C0();
    v39 = v71;
    sub_3EB454();
    sub_FCF8(v37, &qword_500A28);
    v40 = v66;
    sub_2830E8(v66);
    v41 = v67;
    v42 = v68;
    v43 = v69;
    (*(v68 + 104))(v67, enum case for ColorSchemeContrast.standard(_:), v69);
    v44 = sub_3EAC54();
    v45 = *(v42 + 8);
    v45(v41, v43);
    v45(v40, v43);
    if (v44)
    {
      sub_3EA294();
      swift_getOpaqueTypeConformance2();
    }

    else
    {
      v84 = sub_3EAEC4();
    }

    v56 = sub_3EA444();
    v57 = v63;
    (*(v64 + 32))(v63, v39, v65);
    *(v57 + *(v11 + 36)) = v56;
    v58 = v73;
    sub_2EF850(v57, v73);
    v50 = &qword_500A08;
    sub_FBD0(v58, v77, &qword_500A08);
    swift_storeEnumTagMultiPayload();
    sub_2EF4CC();
    sub_2EF6A4();
    v59 = v78;
    sub_3EADE4();
    sub_FBD0(v59, v17, &qword_500A20);
    swift_storeEnumTagMultiPayload();
    sub_2EF440();
    sub_2EF798();
    sub_3EADE4();
    sub_FCF8(v59, &qword_500A20);
    v52 = v58;
  }

  else
  {
    v46 = v75;
    v36(v75, v81, v35);
    v47 = (v46 + *(v79 + 36));
    *v47 = KeyPath;
    v47[1] = v33;
    sub_3EB144();
    sub_2EF5C0();
    sub_3EB454();
    sub_FCF8(v46, &qword_500A28);
    v48 = sub_3EAEC4();
    v49 = v77;
    *&v23[*(v76 + 36)] = v48;
    v50 = &qword_500A30;
    sub_FBD0(v23, v49, &qword_500A30);
    swift_storeEnumTagMultiPayload();
    sub_2EF4CC();
    sub_2EF6A4();
    v51 = v78;
    sub_3EADE4();
    sub_FBD0(v51, v17, &qword_500A20);
    swift_storeEnumTagMultiPayload();
    sub_2EF440();
    sub_2EF798();
    sub_3EADE4();
    sub_FCF8(v51, &qword_500A20);
    v52 = v23;
  }

  return sub_FCF8(v52, v50);
}

uint64_t sub_2EF3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5009F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2EF440()
{
  result = qword_500A40;
  if (!qword_500A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A20);
    sub_2EF4CC();
    sub_2EF6A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500A40);
  }

  return result;
}

unint64_t sub_2EF4CC()
{
  result = qword_500A48;
  if (!qword_500A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A28);
    sub_2EF5C0();
    swift_getOpaqueTypeConformance2();
    sub_886BC(&qword_4FEE50, &qword_4FEE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500A48);
  }

  return result;
}

unint64_t sub_2EF5C0()
{
  result = qword_500A50;
  if (!qword_500A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A28);
    sub_886BC(&qword_500A58, &qword_500A38);
    sub_886BC(&qword_4FC0D8, &qword_4FC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500A50);
  }

  return result;
}

unint64_t sub_2EF6A4()
{
  result = qword_500A60;
  if (!qword_500A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A28);
    sub_2EF5C0();
    swift_getOpaqueTypeConformance2();
    sub_886BC(&qword_4FB158, &qword_4FB160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500A60);
  }

  return result;
}

unint64_t sub_2EF798()
{
  result = qword_500A68;
  if (!qword_500A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5009F0);
    sub_2EF5C0();
    sub_886BC(&qword_4FEE50, &qword_4FEE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500A68);
  }

  return result;
}

uint64_t sub_2EF850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2EF8C4()
{
  result = qword_500A70;
  if (!qword_500A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_500A78);
    sub_2EF440();
    sub_2EF798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500A70);
  }

  return result;
}

uint64_t sub_2EF968(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v37 = a3[2];
  v4 = *(v37 - 8);
  v36 = a3[3];
  v5 = *(v4 + 84);
  v6 = *(v36 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a3[4] - 8);
  v35 = *(v9 + 84);
  if (v35 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = *(sub_3EAC64() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v10 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v4 + 64) + v13;
  v19 = *(v11 + 80) & 0xF8 | 7;
  v20 = a1;
  if (v17 >= a2)
  {
    goto LABEL_36;
  }

  v21 = ((v12 + ((v16 + v19 + ((v14 + v15 + (v18 & ~v13)) & ~v15)) & ~v19) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v21 <= 3)
  {
    v22 = ((a2 - v17 + 255) >> 8) + 1;
  }

  else
  {
    v22 = 2;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= 1)
  {
    if (!v24)
    {
      goto LABEL_36;
    }

    v25 = a1[v21];
    if (!a1[v21])
    {
      goto LABEL_36;
    }

LABEL_32:
    v27 = (v25 - 1) << (8 * v21);
    if (v21 <= 3)
    {
      v28 = *a1;
    }

    else
    {
      v27 = 0;
      v28 = *a1;
    }

    return v17 + (v28 | v27) + 1;
  }

  if (v24 == 2)
  {
    v25 = *&a1[v21];
    if (*&a1[v21])
    {
      goto LABEL_32;
    }
  }

  else
  {
    v25 = *&a1[v21];
    if (v25)
    {
      goto LABEL_32;
    }
  }

LABEL_36:
  if (v5 == v17)
  {
    v29 = v37;
    v30 = *(v4 + 48);
    v31 = v5;
LABEL_40:

    return v30(v20, v31, v29);
  }

  v20 = (&a1[v18] & ~v13);
  if (v7 == v17)
  {
    v30 = *(v6 + 48);
    v31 = v7;
    v29 = v36;
    goto LABEL_40;
  }

  v32 = &v20[v14 + v15] & ~v15;
  if (v35 == v17)
  {
    v33 = *(v9 + 48);

    return v33(v32);
  }

  else
  {
    v34 = *(((v32 + v16 + v19) & ~v19) + v12);
    if (v34 >= 2)
    {
      return (v34 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2EFCE4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v43 = a4[2];
  v5 = *(v43 - 8);
  v41 = a4[3];
  v42 = v5;
  v6 = *(v5 + 84);
  v7 = *(v41 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(a4[4] - 8);
  v44 = v10;
  v40 = *(v10 + 84);
  if (v40 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = *(sub_3EAC64() - 8);
  v13 = *(v12 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(v7 + 80);
  v16 = *(v5 + 64) + v15;
  v17 = *(v7 + 64);
  v18 = *(v10 + 80);
  v19 = *(v10 + 64);
  v20 = *(v12 + 80) & 0xF8 | 7;
  v21 = ((v13 + ((v19 + v20 + ((v17 + v18 + (v16 & ~v15)) & ~v18)) & ~v20) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v24 = 0;
  }

  else
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  if (v14 >= a2)
  {
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

LABEL_43:
        if (v6 == v14)
        {
          v27 = v43;
          v28 = *(v42 + 56);
          v29 = a1;
          v30 = a2;
          v31 = v6;
        }

        else
        {
          v29 = (&a1[v16] & ~v15);
          if (v8 != v14)
          {
            v32 = &v29[v17 + v18] & ~v18;
            if (v40 == v14)
            {
              v33 = *(v44 + 56);

              v33(v32, a2);
            }

            else
            {
              v34 = ((v32 + v19 + v20) & ~v20);
              if (a2 > 0xFE)
              {
                v35 = (v13 + 1);
                v36 = -1 << (8 * (v13 + 1));
                if (v35 <= 3)
                {
                  v37 = ~v36;
                }

                else
                {
                  v37 = -1;
                }

                if (v35)
                {
                  v38 = v37 & (a2 - 255);
                  if (v35 <= 3)
                  {
                    v39 = v35;
                  }

                  else
                  {
                    v39 = 4;
                  }

                  bzero(v34, v35);
                  if (v39 > 2)
                  {
                    if (v39 == 3)
                    {
                      *v34 = v38;
                      v34[2] = BYTE2(v38);
                    }

                    else
                    {
                      *v34 = v38;
                    }
                  }

                  else if (v39 == 1)
                  {
                    *v34 = v38;
                  }

                  else
                  {
                    *v34 = v38;
                  }
                }
              }

              else
              {
                v34[v13] = -a2;
              }
            }

            return;
          }

          v28 = *(v7 + 56);
          v30 = a2;
          v31 = v8;
          v27 = v41;
        }

        v28(v29, v30, v31, v27);
        return;
      }

      *&a1[v21] = 0;
    }

    else if (v24)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  v25 = ~v14 + a2;
  bzero(a1, v21);
  if (v21 <= 3)
  {
    v26 = (v25 >> 8) + 1;
  }

  else
  {
    v26 = 1;
  }

  if (v21 <= 3)
  {
    *a1 = v25;
    if (v24 > 1)
    {
LABEL_31:
      if (v24 == 2)
      {
        *&a1[v21] = v26;
      }

      else
      {
        *&a1[v21] = v26;
      }

      return;
    }
  }

  else
  {
    *a1 = v25;
    if (v24 > 1)
    {
      goto LABEL_31;
    }
  }

  if (v24)
  {
    a1[v21] = v26;
  }
}

uint64_t sub_2F0158@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v196 = a2;
  v3 = a1[3];
  v185 = a1[2];
  v186 = a1;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v188 = a1[6];
  v189 = v5;
  v187 = v6;
  v262 = v185;
  v263 = v3;
  v264 = v4;
  v265 = v5;
  v7 = v4;
  v184 = v4;
  v266 = v188;
  v267 = v6;
  v8 = type metadata accessor for ReferenceLinkView.StackView();
  v9 = sub_3EA744();
  v161 = *(v9 - 8);
  __chkstk_darwin(v9);
  v158 = &v153 - v10;
  v203 = v11;
  v12 = sub_3EA744();
  v167 = *(v12 - 8);
  __chkstk_darwin(v12);
  v166 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v179 = &v153 - v15;
  v16 = sub_3EAC64();
  v162 = *(v16 - 8);
  v163 = v16;
  __chkstk_darwin(v16);
  v160 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v159 = &v153 - v19;
  v177 = sub_3EA7F4();
  __chkstk_darwin(v177);
  v164 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3EA744();
  v22 = sub_3EA744();
  v154 = *(v22 - 8);
  __chkstk_darwin(v22);
  v178 = &v153 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500B00);
  v201 = v22;
  v24 = sub_3EA744();
  v169 = *(v24 - 8);
  __chkstk_darwin(v24);
  v168 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v165 = &v153 - v27;
  __chkstk_darwin(v28);
  v180 = &v153 - v29;
  v30 = sub_3EA744();
  v200 = v24;
  v31 = sub_3EADF4();
  v182 = *(v31 - 8);
  __chkstk_darwin(v31);
  v181 = &v153 - v32;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC460);
  __chkstk_darwin(v173);
  v153 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v155 = &v153 - v35;
  v197 = v21;
  v175 = *(v21 - 8);
  __chkstk_darwin(v36);
  v174 = &v153 - v37;
  v194 = v30;
  v157 = *(v30 - 8);
  __chkstk_darwin(v38);
  v156 = &v153 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v176 = &v153 - v41;
  v42 = sub_3EAAF4();
  v171 = *(v42 - 8);
  v172 = v42;
  __chkstk_darwin(v42);
  v170 = &v153 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = v31;
  v202 = v12;
  v44 = sub_3EADF4();
  v192 = *(v44 - 8);
  v193 = v44;
  __chkstk_darwin(v44);
  v191 = &v153 - v45;
  v183 = *(v7 - 8);
  __chkstk_darwin(v46);
  v48 = &v153 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v3 - 8);
  __chkstk_darwin(v50);
  v52 = &v153 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v185;
  __chkstk_darwin(v54);
  v56 = &v153 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = v8;
  v190 = *(v8 - 8);
  v58 = __chkstk_darwin(v57);
  v60 = &v153 - v59;
  (*(v61 + 16))(v56, v2, v53, v58);
  v62 = v186;
  (*(v49 + 16))(v52, &v2[*(v186 + 17)], v3);
  v63 = v184;
  (*(v183 + 16))(v48, &v2[*(v62 + 18)], v184);
  v198 = v60;
  sub_2F17F4(v56, v52, v48, v53, v3, v63, v60);
  v64 = *(v62 + 20);
  v189 = v2;
  v65 = &v2[v64];
  v66 = *v65;
  if (v65[8] == 1)
  {
    LOBYTE(v262) = *v65;
  }

  else
  {

    sub_3ED9E4();
    v67 = sub_3EB034();
    sub_3E9754();

    v68 = v170;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v66, 0);
    (*(v171 + 8))(v68, v172);
    LOBYTE(v66) = v262;
  }

  v69 = v203;
  v70 = v197;
  if (v66)
  {
    if (v66 == 1)
    {
      WitnessTable = swift_getWitnessTable();
      v72 = v174;
      sub_3EB6B4();
      sub_3EBA74();
      v230 = WitnessTable;
      v231 = &protocol witness table for _PaddingLayout;
      v188 = swift_getWitnessTable();
      sub_3EB634();
      (*(v175 + 8))(v72, v70);
      v73 = *(v177 + 20);
      v74 = enum case for RoundedCornerStyle.continuous(_:);
      v75 = sub_3EABE4();
      v76 = v164;
      (*(*(v75 - 8) + 104))(&v164[v73], v74, v75);
      __asm { FMOV            V0.2D, #16.0 }

      *v76 = _Q0;
      v82 = v159;
      sub_2830E8(v159);
      v84 = v162;
      v83 = v163;
      v85 = v160;
      (*(v162 + 104))(v160, enum case for ColorSchemeContrast.increased(_:), v163);
      LOBYTE(v74) = sub_3EAC54();
      v86 = *(v84 + 8);
      v86(v85, v83);
      v86(v82, v83);
      v187 = WitnessTable;
      if (v74)
      {
        v87 = [objc_opt_self() quaternarySystemFillColor];
        v88 = sub_3EB7D4();
      }

      else
      {
        sub_3EB784();
        v88 = sub_3EB794();
      }

      v127 = v201;
      v128 = v173;
      v129 = v153;
      v130 = v154;
      sub_2F1970(v76, v153);
      *(v129 + *(v128 + 52)) = v88;
      *(v129 + *(v128 + 56)) = 256;
      sub_3EBA74();
      v228 = v188;
      v229 = &protocol witness table for _FrameLayout;
      v131 = swift_getWitnessTable();
      sub_886BC(qword_500B10, &qword_4FC460);
      v132 = v165;
      v133 = v178;
      sub_3EB444();
      sub_2F19D4(v129);
      (*(v130 + 8))(v133, v127);
      v134 = sub_886BC(&qword_500B08, &qword_500B00);
      v226 = v131;
      v227 = v134;
      v135 = v200;
      v136 = swift_getWitnessTable();
      v137 = v180;
      sub_E63BC(v132);
      v189 = *(v169 + 8);
      v189(v132, v135);
      v138 = v168;
      sub_E63BC(v137);
      v224 = v188;
      v225 = v134;
      v139 = v194;
      v140 = swift_getWitnessTable();
      v141 = v181;
      sub_E51C0(v138, v139, v135);
      v222 = v140;
      v223 = v136;
      v142 = v195;
      swift_getWitnessTable();
      v220 = v187;
      v221 = &protocol witness table for _FrameLayout;
      v218 = swift_getWitnessTable();
      v219 = &protocol witness table for _PaddingLayout;
      swift_getWitnessTable();
      v111 = v191;
      sub_E50C8(v141, v142);
      (*(v182 + 8))(v141, v142);
      v143 = v189;
      v189(v138, v135);
      v143(v180, v135);
    }

    else
    {
      sub_3EBA74();
      v114 = swift_getWitnessTable();
      v115 = v158;
      sub_3EB634();
      v260 = v114;
      v261 = &protocol witness table for _FrameLayout;
      v116 = swift_getWitnessTable();
      v117 = v166;
      sub_3EB6B4();
      (*(v161 + 8))(v115, v69);
      v258 = v116;
      v259 = &protocol witness table for _PaddingLayout;
      v118 = v202;
      v119 = swift_getWitnessTable();
      v120 = v179;
      v188 = v119;
      sub_E63BC(v117);
      v189 = *(v167 + 8);
      v189(v117, v118);
      sub_E63BC(v120);
      v256 = v114;
      v257 = &protocol witness table for _PaddingLayout;
      v121 = swift_getWitnessTable();
      v122 = sub_886BC(&qword_500B08, &qword_500B00);
      v254 = v121;
      v255 = v122;
      v123 = swift_getWitnessTable();
      v252 = v121;
      v253 = &protocol witness table for _FrameLayout;
      v250 = swift_getWitnessTable();
      v251 = v122;
      v124 = swift_getWitnessTable();
      v248 = v123;
      v249 = v124;
      v125 = v195;
      swift_getWitnessTable();
      v111 = v191;
      sub_E51C0(v117, v125, v118);
      v126 = v189;
      v189(v117, v118);
      v126(v179, v118);
    }

    v113 = v198;
    v108 = v199;
  }

  else
  {
    v89 = swift_getWitnessTable();
    v90 = v174;
    v91 = v89;
    v189 = v89;
    sub_3EB6B4();
    v92 = *(v177 + 20);
    v93 = enum case for RoundedCornerStyle.continuous(_:);
    v94 = sub_3EABE4();
    v95 = v155;
    (*(*(v94 - 8) + 104))(&v155[v92], v93, v94);
    __asm { FMOV            V0.2D, #16.0 }

    *v95 = _Q0;
    v97 = [objc_opt_self() quaternarySystemFillColor];
    v98 = sub_3EB7D4();
    v99 = v173;
    *(v95 + *(v173 + 52)) = v98;
    *(v95 + *(v99 + 56)) = 256;
    sub_3EBA74();
    v216 = v91;
    v217 = &protocol witness table for _PaddingLayout;
    v100 = swift_getWitnessTable();
    sub_886BC(qword_500B10, &qword_4FC460);
    v101 = v156;
    sub_3EB444();
    sub_2F19D4(v95);
    (*(v175 + 8))(v90, v70);
    v102 = sub_886BC(&qword_500B08, &qword_500B00);
    v214 = v100;
    v215 = v102;
    v103 = v194;
    v104 = swift_getWitnessTable();
    v105 = v176;
    sub_E63BC(v101);
    v188 = *(v157 + 8);
    v188(v101, v103);
    sub_E63BC(v105);
    v212 = v100;
    v213 = &protocol witness table for _FrameLayout;
    v210 = swift_getWitnessTable();
    v211 = v102;
    v106 = swift_getWitnessTable();
    v107 = v181;
    sub_E50C8(v101, v103);
    v208 = v104;
    v209 = v106;
    v108 = v199;
    v109 = v103;
    v110 = v195;
    swift_getWitnessTable();
    v206 = v189;
    v207 = &protocol witness table for _FrameLayout;
    v204 = swift_getWitnessTable();
    v205 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
    v111 = v191;
    sub_E50C8(v107, v110);
    (*(v182 + 8))(v107, v110);
    v112 = v188;
    v188(v101, v109);
    v112(v176, v109);
    v113 = v198;
  }

  (*(v190 + 8))(v113, v108);
  v144 = swift_getWitnessTable();
  v246 = v144;
  v247 = &protocol witness table for _PaddingLayout;
  v145 = swift_getWitnessTable();
  v146 = sub_886BC(&qword_500B08, &qword_500B00);
  v244 = v145;
  v245 = v146;
  v147 = swift_getWitnessTable();
  v242 = v145;
  v243 = &protocol witness table for _FrameLayout;
  v240 = swift_getWitnessTable();
  v241 = v146;
  v148 = swift_getWitnessTable();
  v238 = v147;
  v239 = v148;
  v149 = swift_getWitnessTable();
  v236 = v144;
  v237 = &protocol witness table for _FrameLayout;
  v234 = swift_getWitnessTable();
  v235 = &protocol witness table for _PaddingLayout;
  v150 = swift_getWitnessTable();
  v232 = v149;
  v233 = v150;
  v151 = v193;
  swift_getWitnessTable();
  sub_E63BC(v111);
  return (*(v192 + 8))(v111, v151);
}

uint64_t sub_2F17F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for ReferenceLinkView.StackView();
  (*(*(a5 - 8) + 32))(a7 + v12[17], a2, a5);
  (*(*(a6 - 8) + 32))(a7 + v12[18], a3, a6);
  v13 = a7 + v12[19];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a7 + v12[20];
  result = swift_getKeyPath();
  *v14 = result;
  *(v14 + 8) = 0;
  return result;
}

uint64_t sub_2F1970(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EA7F4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2F19D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2F1A6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        a4(319);
        if (v8 <= 0x3F)
        {
          sub_2DC100();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2F1B4C(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = a3[4];
  v7 = *(v5 + 84);
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(*(a3[3] - 8) + 64);
  v15 = *(v11 + 80);
  if (v12 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[2] - 8) + 64) + v13;
  v18 = *(*(v6 - 8) + 64) + 7;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v19 = ((((v18 + ((v14 + v15 + (v17 & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9;
  v20 = (a2 - v16 + 255) >> 8;
  if (v19 <= 3)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *&a1[v19];
      if (!*&a1[v19])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = *&a1[v19];
      if (!v24)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    v26 = (v24 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v27 = *a1;
    }

    else
    {
      v26 = 0;
      v27 = *a1;
    }

    return v16 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = a1[v19];
    if (a1[v19])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  if (v7 == v16)
  {
    v28 = *(v5 + 48);

    return v28(a1, v7);
  }

  else
  {
    v29 = &a1[v17] & ~v13;
    if (v9 == v16)
    {
      v30 = *(v8 + 48);

      return v30(v29);
    }

    else
    {
      v31 = (v29 + v14 + v15) & ~v15;
      if (v12 == v16)
      {
        v32 = *(v11 + 48);

        return v32(v31, v12, v6);
      }

      else
      {
        v33 = *(((v18 + v31) & 0xFFFFFFFFFFFFFFF8) + 9);
        if (v33 > 1)
        {
          return (v33 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

void sub_2F1E0C(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = a4[3];
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(a4[4] - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v9 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (v13 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = *(v12 + 84);
  }

  if (v19 <= 0xFE)
  {
    v19 = 254;
  }

  v20 = v18 + 7;
  v21 = ((((v18 + 7 + ((v16 + v17 + ((v14 + v15) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 >= a3)
  {
    v25 = 0;
    if (v19 >= a2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v26 = ~v19 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v27 = (v26 >> 8) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v21 <= 3)
    {
      *a1 = v26;
      if (v25 > 1)
      {
LABEL_32:
        if (v25 == 2)
        {
          *&a1[v21] = v27;
        }

        else
        {
          *&a1[v21] = v27;
        }

        return;
      }
    }

    else
    {
      *a1 = v26;
      if (v25 > 1)
      {
        goto LABEL_32;
      }
    }

    if (v25)
    {
      a1[v21] = v27;
    }

    return;
  }

  v22 = (a3 - v19 + 255) >> 8;
  if (v21 <= 3)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a2)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
  }

  else if (v25)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 != v19)
  {
    v29 = &a1[v14 + v15] & ~v15;
    if (v10 == v19)
    {
      v30 = *(v9 + 56);
    }

    else
    {
      v29 = (v29 + v16 + v17) & ~v17;
      if (v13 != v19)
      {
        v31 = (v20 + v29) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v31 + 8) = 0;
          *v31 = a2 - 255;
        }

        else
        {
          *(v31 + 9) = -a2;
        }

        return;
      }

      v30 = *(v12 + 56);
    }

    v30(v29);
    return;
  }

  v28 = *(v6 + 56);

  v28(a1);
}

void sub_2F215C()
{
  if (!qword_500B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1720);
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_500B98);
    }
  }
}

uint64_t sub_2F21C0()
{
  type metadata accessor for ReferenceLinkView.StackView();
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500B00);
  sub_3EA744();
  sub_3EA744();
  sub_3EA744();
  sub_3EADF4();
  sub_3EA744();
  sub_3EA744();
  sub_3EADF4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_886BC(&qword_500B08, &qword_500B00);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2F2484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = *(a1 + 24);
  v4 = sub_3EA744();
  v5 = *(a1 + 16);
  v20 = v4;
  v21 = v5;
  v22 = &type metadata for Spacer;
  v6 = *(a1 + 32);
  v23 = sub_3EA744();
  swift_getTupleTypeMetadata();
  sub_3EBB04();
  swift_getWitnessTable();
  v7 = sub_3EB934();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v16 - v12;
  sub_3EAB64();
  v16[4] = v5;
  v16[5] = v3;
  v16[6] = v6;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = v16[0];
  sub_3EB924();
  swift_getWitnessTable();
  sub_E63BC(v10);
  v14 = *(v8 + 8);
  v14(v10, v7);
  sub_E63BC(v13);
  return (v14)(v13, v7);
}

uint64_t sub_2F26C4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v95 = a6;
  v97 = a5;
  v74 = a1;
  v90 = a8;
  v78 = sub_3EAAF4();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a4 - 8);
  __chkstk_darwin(v14);
  v91 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16;
  v73 = v16;
  v86 = sub_3EA744();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v82 = &v72 - v20;
  __chkstk_darwin(v21);
  v83 = &v72 - v22;
  v23 = a2;
  v98 = a2;
  v88 = *(a2 - 1);
  __chkstk_darwin(v24);
  v96 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v72 - v27;
  v29 = sub_3EA744();
  v92 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v72 - v33;
  v110 = v23;
  v111 = a3;
  v112 = v17;
  v113 = a5;
  v35 = v95;
  v114 = v95;
  v115 = a7;
  v87 = a7;
  v36 = type metadata accessor for ReferenceLinkView.StackView();
  v37 = v74;
  sub_2F2FE8(v36);
  sub_3EB6B4();
  v108 = v35;
  v109 = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  v93 = v34;
  v79 = WitnessTable;
  sub_E63BC(v31);
  v39 = *(v92 + 8);
  v94 = v31;
  v40 = v31;
  v41 = v37;
  v84 = v29;
  v42 = v29;
  v43 = v75;
  v81 = v92 + 8;
  v80 = v39;
  v39(v40, v42);
  v95 = v28;
  v44 = v73;
  sub_E63BC(v41);
  (*(v43 + 16))(v91, v41 + v36[18], v44);
  v45 = v41 + v36[20];
  v46 = *v45;
  if (*(v45 + 8) == 1)
  {
    LOBYTE(v103[0]) = *v45;
    v47 = v78;
    v48 = v77;
    v49 = v76;
  }

  else
  {

    sub_3ED9E4();
    v50 = sub_3EB034();
    sub_3E9754();

    v49 = v76;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v46, 0);
    v48 = v77;
    v47 = v78;
    (*(v77 + 8))(v49, v78);
  }

  v51 = v41 + v36[19];
  v52 = *v51;
  v53 = *(v51 + 8);
  if (*(v51 + 9) != 1)
  {

    sub_3ED9E4();
    v54 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_2F3178(v52, v53, 0);
    (*(v48 + 8))(v49, v47);
  }

  v55 = v82;
  v56 = v87;
  v57 = v91;
  sub_3EB6B4();
  (*(v43 + 8))(v57, v44);
  v106 = v56;
  v107 = &protocol witness table for _PaddingLayout;
  v58 = v86;
  v59 = swift_getWitnessTable();
  v60 = v83;
  sub_E63BC(v55);
  v61 = v85;
  v91 = *(v85 + 8);
  (v91)(v55, v58);
  v62 = v94;
  v63 = v84;
  (*(v92 + 16))(v94, v93, v84);
  v110 = v62;
  v64 = v88;
  v65 = v96;
  v66 = v98;
  (*(v88 + 16))();
  v104 = 0;
  v105 = 1;
  v111 = v65;
  v112 = &v104;
  v67 = v89;
  (*(v61 + 16))(v89, v60, v58);
  v113 = v67;
  v103[0] = v63;
  v103[1] = v66;
  v103[2] = &type metadata for Spacer;
  v103[3] = v58;
  v99 = v79;
  v100 = v97;
  v101 = &protocol witness table for Spacer;
  v102 = v59;
  sub_25192C(&v110, 4uLL, v103);
  v68 = v91;
  (v91)(v60, v58);
  v69 = *(v64 + 8);
  v69(v95, v66);
  v70 = v80;
  v80(v93, v63);
  (v68)(v67, v58);
  v69(v96, v66);
  return v70(v94, v63);
}

double sub_2F2FE8(uint64_t a1)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 80);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_3ED9E4();
    v9 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v8, 0);
    (*(v4 + 8))(v6, v3);
  }

  return 0.0;
}

uint64_t sub_2F3178(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2F3184()
{
  sub_3EA744();
  sub_3EA744();
  swift_getTupleTypeMetadata();
  sub_3EBB04();
  swift_getWitnessTable();
  sub_3EB934();
  return swift_getWitnessTable();
}

unint64_t sub_2F3298()
{
  result = type metadata accessor for ReferenceLinkMetadata();
  if (v1 <= 0x3F)
  {
    result = sub_2F330C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2F330C()
{
  result = qword_4E9C48;
  if (!qword_4E9C48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_4E9C48);
  }

  return result;
}

uint64_t sub_2F3384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLReferenceLink();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2F34C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URLReferenceLink();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2F3614()
{
  type metadata accessor for URLReferenceLink();
  if (v0 <= 0x3F)
  {
    sub_2DC100();
    if (v1 <= 0x3F)
    {
      sub_2F3728(319, &qword_4FB3B0, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_2F3728(319, &unk_500CB8, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2F3728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2F37CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URLReferenceLinkView(0);
  v37 = *(v4 - 8);
  v36 = *(v37 + 64);
  __chkstk_darwin(v4);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2F3B94();
  v34 = v7;
  v8 = sub_2F3D70();
  v10 = v9;
  v11 = type metadata accessor for URLReferenceLink();
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v12 = v11[7];
  v13 = type metadata accessor for ReferenceLinkTextStackView();
  v14 = v13[8];
  v15 = sub_3E7D54();
  (*(*(v15 - 8) + 16))(a1 + v14, v2 + v12, v15);
  sub_FBD0(v2 + v11[9], a1 + v13[9], &qword_4F00B8);
  v16 = a1 + v13[11];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v13[12];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  swift_storeEnumTagMultiPayload();
  v18 = v34;
  *a1 = v6;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + v13[10]) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500CF0);
  v20 = a1 + v19[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48);
  sub_3EB8E4();
  v21 = v20 + *(type metadata accessor for URLReferenceLinkView.IconView(0) + 20);
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a1 + v19[18];
  v24 = *(v2 + 16);
  v23 = *(v2 + 24);
  sub_FBD0(v2 + v11[10], v38, &qword_4F00B0);
  v25 = v38[1];
  *(v22 + 16) = v38[0];
  *(v22 + 32) = v25;
  *(v22 + 48) = v39;
  *v22 = v24;
  *(v22 + 8) = v23;
  *(v22 + 56) = swift_getKeyPath();
  *(v22 + 64) = 0;
  *(v22 + 72) = swift_getKeyPath();
  *(v22 + 80) = 0;
  *(v22 + 88) = swift_getKeyPath();
  *(v22 + 96) = 0;
  v26 = v19[19];
  *(a1 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0);
  swift_storeEnumTagMultiPayload();
  v27 = a1 + v19[20];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = v35;
  sub_2F5A00(v2, v35, type metadata accessor for URLReferenceLinkView);
  v29 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v30 = swift_allocObject();
  sub_2F6E08(v28, v30 + v29, type metadata accessor for URLReferenceLinkView);
  v31 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500CF8) + 36));
  sub_3EA524();

  result = sub_3ED6C4();
  *v31 = &unk_418728;
  v31[1] = v30;
  return result;
}

uint64_t sub_2F3B94()
{
  v0 = type metadata accessor for ReferenceLinkMetadata();
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URLReferenceLinkView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48);
  sub_3EB8C4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2F5A68(v5, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
    }

    type metadata accessor for URLReferenceLink();
    v7 = sub_3E5D54(1);
    if (v8)
    {
      v11._countAndFlagsBits = 779581303;
      v11._object = 0xE400000000000000;
      v7 = sub_3ED2F4(v11);
    }
  }

  else
  {
    sub_2F6E08(v5, v2, type metadata accessor for ReferenceLinkMetadata);
    v7 = *&v2[*(v0 + 20)];

    sub_2F5A68(v2, type metadata accessor for ReferenceLinkMetadata);
  }

  return v7;
}

uint64_t sub_2F3D70()
{
  v0 = type metadata accessor for ReferenceLinkMetadata();
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URLReferenceLinkView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48);
  sub_3EB8C4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2F5A68(v5, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
    }

    type metadata accessor for URLReferenceLink();
    return sub_3E5CD4();
  }

  else
  {
    sub_2F6E08(v5, v2, type metadata accessor for ReferenceLinkMetadata);
    v8 = sub_3E5D54(1);
    if (v9)
    {
      v11._countAndFlagsBits = 779581303;
      v11._object = 0xE400000000000000;
      v8 = sub_3ED2F4(v11);
    }

    sub_2F5A68(v2, type metadata accessor for ReferenceLinkMetadata);
    return v8;
  }
}

uint64_t sub_2F3F38(uint64_t a1)
{
  v1[2] = a1;
  sub_3ED6B4();
  v1[3] = sub_3ED6A4();
  v3 = sub_3ED684();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_2F3FD0, v3, v2);
}

uint64_t sub_2F3FD0()
{
  v1 = v0[2];
  if (*(v1 + *(type metadata accessor for URLReferenceLink() + 32)))
  {
    v2 = sub_3EE804();

    if ((v2 & 1) == 0)
    {

      v3 = v0[1];

      return v3();
    }
  }

  else
  {
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2F40F0;

  return sub_2F4270();
}

uint64_t sub_2F40F0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_2F4210, v3, v2);
}

uint64_t sub_2F4210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2F4270()
{
  v1[9] = v0;
  v1[10] = type metadata accessor for URLReferenceLinkView(0);
  v1[11] = swift_task_alloc();
  v2 = sub_3E9A04();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  type metadata accessor for ReferenceLinkMetadata();
  v1[18] = swift_task_alloc();
  v3 = sub_3EC6C4();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_3EC7C4();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = type metadata accessor for ReferenceLinkMetadataIntent();
  v1[26] = swift_task_alloc();
  v5 = sub_3EAAF4();
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  sub_3ED6B4();
  v1[30] = sub_3ED6A4();
  v7 = sub_3ED684();
  v1[31] = v7;
  v1[32] = v6;

  return _swift_task_switch(sub_2F4540, v7, v6);
}

uint64_t sub_2F4540()
{
  v1 = (*(v0 + 72) + *(*(v0 + 80) + 24));
  v2 = *v1;
  *(v0 + 264) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 320) = v3;

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 216);
    sub_3ED9E4();
    v7 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v2 = *(v0 + 56);
  }

  *(v0 + 272) = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_2F46B8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v8, v8);
}

uint64_t sub_2F46B8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_2F4D5C;
  }

  else
  {

    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_2F47D4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_2F47D4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);
  v3 = *(v0 + 208);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 72);
  v8 = *(type metadata accessor for URLReferenceLink() + 24);
  v9 = sub_3E5DC4();
  (*(*(v9 - 8) + 16))(v3, v7 + v8, v9);
  (*(v5 + 104))(v4, enum case for IntentCacheUsePolicy.useCachedResultPreferringOngoingDispatch(_:), v6);
  sub_3EC7B4();
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v10);

  if ((v1 & 1) == 0)
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 216);
    sub_3ED9E4();
    v15 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v13 + 8))(v12, v14);
    v2 = *(v0 + 64);
  }

  *(v0 + 296) = v2;
  v16 = swift_task_alloc();
  *(v0 + 304) = v16;
  v17 = sub_2F71C8(&qword_4F1DC8, type metadata accessor for ReferenceLinkMetadataIntent);
  *v16 = v0;
  v16[1] = sub_2F4A18;
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 192);
  v21 = *(v0 + 144);

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(v21, v18, v2, v20, v19, v17, v10, v11);
}

uint64_t sub_2F4A18()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_2F5118;
  }

  else
  {
    v5 = sub_2F4B70;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2F4B70()
{
  v9 = v0[26];
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];

  sub_2F5A00(v4, v5, type metadata accessor for ReferenceLinkMetadata);
  swift_storeEnumTagMultiPayload();
  sub_2F5A00(v5, v6, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48);
  sub_3EB8D4();
  sub_2F5A68(v5, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
  sub_2F5A68(v4, type metadata accessor for ReferenceLinkMetadata);
  (*(v2 + 8))(v1, v3);
  sub_2F5A68(v9, type metadata accessor for ReferenceLinkMetadataIntent);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v7 = v0[1];

  return v7();
}

uint64_t sub_2F4D5C()
{
  v26 = v0;

  v1 = v0[36];
  v2 = v0[11];
  v3 = v0[9];
  sub_3E9964();
  sub_2F5A00(v3, v2, type metadata accessor for URLReferenceLinkView);
  swift_errorRetain();
  v4 = sub_3E99F4();
  v5 = sub_3ED9D4();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    type metadata accessor for URLReferenceLink();
    v24 = v7;
    sub_3E5DC4();
    v23 = v10;
    sub_2F71C8(&qword_500D00, &type metadata accessor for URL);
    v13 = sub_3EE7A4();
    v15 = v14;
    sub_2F5A68(v9, type metadata accessor for URLReferenceLinkView);
    v16 = sub_2EDD0(v13, v15, &v25);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&dword_0, v4, v5, "Unable to fetch metadata for URL %{private,mask.hash}s with error %{public}@.", v11, 0x20u);
    sub_FCF8(v12, &unk_502160);

    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    (*(v8 + 8))(v24, v23);
  }

  else
  {

    sub_2F5A68(v9, type metadata accessor for URLReferenceLinkView);
    (*(v8 + 8))(v7, v10);
  }

  v19 = v0[16];
  v18 = v0[17];
  *v18 = v1;
  swift_storeEnumTagMultiPayload();
  sub_2F5A00(v18, v19, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48);
  sub_3EB8D4();
  sub_2F5A68(v18, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);

  v20 = v0[1];

  return v20();
}

uint64_t sub_2F5118()
{
  v30 = v0;
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  (*(v3 + 8))(v2, v4);
  sub_2F5A68(v1, type metadata accessor for ReferenceLinkMetadataIntent);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v5 = v0[39];
  v6 = v0[11];
  v7 = v0[9];
  sub_3E9964();
  sub_2F5A00(v7, v6, type metadata accessor for URLReferenceLinkView);
  swift_errorRetain();
  v8 = sub_3E99F4();
  v9 = sub_3ED9D4();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[11];
  v14 = v0[12];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    type metadata accessor for URLReferenceLink();
    v28 = v11;
    sub_3E5DC4();
    v27 = v14;
    sub_2F71C8(&qword_500D00, &type metadata accessor for URL);
    v17 = sub_3EE7A4();
    v19 = v18;
    sub_2F5A68(v13, type metadata accessor for URLReferenceLinkView);
    v20 = sub_2EDD0(v17, v19, &v29);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v21;
    *v16 = v21;
    _os_log_impl(&dword_0, v8, v9, "Unable to fetch metadata for URL %{private,mask.hash}s with error %{public}@.", v15, 0x20u);
    sub_FCF8(v16, &unk_502160);

    __swift_destroy_boxed_opaque_existential_1Tm(v26);

    (*(v12 + 8))(v28, v27);
  }

  else
  {

    sub_2F5A68(v13, type metadata accessor for URLReferenceLinkView);
    (*(v12 + 8))(v11, v14);
  }

  v23 = v0[16];
  v22 = v0[17];
  *v22 = v5;
  swift_storeEnumTagMultiPayload();
  sub_2F5A00(v22, v23, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48);
  sub_3EB8D4();
  sub_2F5A68(v22, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);

  v24 = v0[1];

  return v24();
}

uint64_t sub_2F5578()
{
  v1 = type metadata accessor for URLReferenceLinkView(0);
  v2 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);
  v25 = (v2 + 16) & ~v2;
  v26 = v0;
  v3 = v0 + v25;

  v4 = type metadata accessor for URLReferenceLink();
  v5 = v4[6];
  v6 = sub_3E5DC4();
  v7 = *(*(v6 - 8) + 8);
  v7(v3 + v5, v6);
  v8 = v4[7];
  v9 = sub_3E7D54();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v4[9];
  v11 = type metadata accessor for ReferenceLinkTimeframe();
  if (!(*(*(v11 - 8) + 48))(v3 + v10, 1, v11))
  {
    v12 = sub_3E9604();
    (*(*(v12 - 8) + 8))(v3 + v10, v12);
  }

  v13 = v3 + v4[10];
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  v14 = v4[11];
  v15 = sub_3ECC84();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v3 + v14, 1, v15))
  {
    (*(v16 + 8))(v3 + v14, v15);
  }

  v17 = v4[12];
  v18 = sub_3EC634();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v3 + v17, 1, v18))
  {
    (*(v19 + 8))(v3 + v17, v18);
  }

  sub_23968C(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));

  v20 = v3 + *(v1 + 28);
  type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v7(v20, v6);
    v22 = type metadata accessor for ReferenceLinkMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48);

  return _swift_deallocObject(v26, v25 + v24, v2 | 7);
}

uint64_t sub_2F5934()
{
  v2 = *(type metadata accessor for URLReferenceLinkView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2368C;

  return sub_2F3F38(v0 + v3);
}

uint64_t sub_2F5A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2F5A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2F5AC8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_3EA7F4();
  __chkstk_darwin(v4);
  v6 = (v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_3EAAF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(type metadata accessor for URLReferenceLinkView.IconView(0) + 20);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v13 = *v11;
    v43 = v12;
  }

  else
  {
    v40[0] = v4;
    v40[1] = v2;

    sub_3ED9E4();
    v14 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v12, 0);
    v15 = *(v8 + 8);
    v15(v10, v7);
    v16 = *v11;
    if (*(v11 + 8) == 1)
    {
      v13 = *v11;
      v43 = v16;
    }

    else
    {

      sub_3ED9E4();
      v17 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();
      sub_23968C(v16, 0);
      v15(v10, v7);
      v13 = v43;
    }

    v4 = v40[0];
  }

  v18 = *(v4 + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = sub_3EABE4();
  (*(*(v20 - 8) + 104))(v6 + v18, v19, v20);
  v21 = 5.0;
  if (v13 < 2)
  {
    v21 = 6.0;
  }

  *v6 = v21;
  v6[1] = v21;
  sub_2F5FE4(v41);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DC0) + 36);
  sub_2F5A00(v6, v22, &type metadata accessor for RoundedRectangle);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCD8) + 36)) = 256;
  v23 = *v42;
  a1[2] = v41[2];
  a1[3] = v23;
  *(a1 + 57) = *&v42[9];
  v24 = v41[1];
  *a1 = v41[0];
  a1[1] = v24;
  v25 = sub_3EBA74();
  v27 = v26;
  v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DC8) + 36);
  sub_3EA354();
  sub_2F5A00(v6, v28, &type metadata accessor for RoundedRectangle);
  v29 = *&v44 * 0.5;
  v30 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DD0) + 68);
  sub_2F5A00(v6, v30, &type metadata accessor for RoundedRectangle);
  *(v30 + *(sub_3EA7E4() + 20)) = v29;
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DD8) + 36);
  v32 = v45;
  *v31 = v44;
  *(v31 + 16) = v32;
  *(v31 + 32) = v46;
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DE0) + 56)) = 256;
  v33 = sub_3EBA74();
  v35 = v34;
  v36 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DE8) + 36));
  *v36 = v33;
  v36[1] = v35;
  sub_3EB764();
  v37 = sub_3EB794();

  *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DF0) + 36)) = v37;
  v38 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DF8) + 36));
  *v38 = v25;
  v38[1] = v27;
  return sub_2F5A68(v6, &type metadata accessor for RoundedRectangle);
}

__n128 sub_2F5FE4@<Q0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_3EB844();
  v24 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReferenceLinkMetadata();
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500D08);
  sub_3EB9B4();
  sub_2F6E08(v12, v9, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2F5A68(v9, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
    }

    goto LABEL_6;
  }

  v14 = v24;
  sub_2F6E08(v9, v6, type metadata accessor for ReferenceLinkMetadata);
  v15 = *&v6[*(v4 + 24)];
  v16 = v15;
  sub_2F5A68(v6, type metadata accessor for ReferenceLinkMetadata);
  if (!v15)
  {
LABEL_6:
    KeyPath = swift_getKeyPath();
    sub_3EBA74();
    sub_3EA434();
    *&v26[39] = *&v29[16];
    *&v26[23] = *v29;
    *&v26[7] = v28;
    *(v27 + 9) = *v26;
    v34[0] = 0;
    LOBYTE(v31) = 0;
    *&v27[0] = KeyPath;
    BYTE8(v27[0]) = 0;
    *(&v27[1] + 9) = *&v26[16];
    *(&v27[2] + 9) = *&v26[32];
    *(&v27[3] + 1) = *&v29[24];
    BYTE8(v27[4]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E00);
    sub_2F7280(&qword_500E10, &qword_500E08, &unk_4187F8, sub_2F722C);
    sub_2F7280(&qword_500E20, &qword_500E00, &unk_4187F0, sub_234B04);
    sub_3EADE4();
    goto LABEL_7;
  }

  v17 = v16;
  sub_3EB814();
  (*(v14 + 104))(v3, enum case for Image.ResizingMode.stretch(_:), v1);
  v18 = sub_3EB894();

  (*(v14 + 8))(v3, v1);
  sub_2F6584(v17);
  sub_3EBA74();
  sub_3EA434();
  LOBYTE(v27[0]) = 1;
  *&v34[6] = v31;
  *&v34[22] = v32;
  *&v34[38] = v33;
  v28 = v18;
  *v29 = 257;
  *&v29[2] = *v34;
  *&v29[18] = *&v34[16];
  *&v29[34] = *&v34[32];
  *&v29[48] = *(&v33 + 1);
  *v34 = v18;
  *&v34[16] = *v29;
  *&v34[32] = *&v29[16];
  *&v34[48] = *&v29[32];
  *&v34[64] = *(&v33 + 1);
  v30 = 1;
  v34[72] = 1;
  sub_FBD0(&v28, v27, &qword_500E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E00);
  sub_2F7280(&qword_500E10, &qword_500E08, &unk_4187F8, sub_2F722C);
  sub_2F7280(&qword_500E20, &qword_500E00, &unk_4187F0, sub_234B04);
  sub_3EADE4();

  sub_FCF8(&v28, &qword_500E00);
  *&v34[32] = v27[2];
  *&v34[48] = v27[3];
  *&v34[57] = *(&v27[3] + 9);
  *v34 = v27[0];
  *&v34[16] = v27[1];
LABEL_7:
  v20 = *&v34[48];
  v21 = v25;
  *(v25 + 32) = *&v34[32];
  *(v21 + 48) = v20;
  *(v21 + 57) = *&v34[57];
  result = *&v34[16];
  *v21 = *v34;
  *(v21 + 16) = result;
  return result;
}

id sub_2F6584(void *a1)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(type metadata accessor for URLReferenceLinkView.IconView(0) + 20);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_3ED9E4();
    v10 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v15[15];
  }

  if (v9 >= 2)
  {
    v11 = 68.0;
  }

  else
  {
    v11 = 40.0;
  }

  result = [a1 size];
  if (vabdd_f64(v13, v14) >= 2.22044605e-16 && v13 > 0.0 && v14 > 0.0 && v11 * 0.75 > v11 * 1.77777778)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2F6784@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC098);
  __chkstk_darwin(v2 - 8);
  v58 = &v53 - v3;
  v4 = sub_3EAAF4();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EA7F4();
  __chkstk_darwin(v7);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC460);
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E60);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E68);
  __chkstk_darwin(v56);
  v57 = &v53 - v16;
  v17 = *v1;
  if (*(v1 + 8) == 1)
  {
    v18 = *v1;
    LOBYTE(v60) = v17;
  }

  else
  {

    sub_3ED9E4();
    v19 = sub_3EB034();
    v54 = v4;
    v20 = v13;
    v21 = v19;
    sub_3E9754();

    v13 = v20;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v17, 0);
    (*(v55 + 8))(v6, v54);
    v18 = v60;
  }

  v22 = *(v7 + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_3EABE4();
  (*(*(v24 - 8) + 104))(v9 + v22, v23, v24);
  v25 = 5.0;
  if (v18 < 2)
  {
    v25 = 6.0;
  }

  *v9 = v25;
  v9[1] = v25;
  v26 = objc_opt_self();
  v27 = [v26 quaternarySystemFillColor];
  v28 = sub_3EB7D4();
  sub_2F6E08(v9, v12, &type metadata accessor for RoundedRectangle);
  *&v12[*(v10 + 52)] = v28;
  *&v12[*(v10 + 56)] = 256;
  sub_3EA354();
  sub_2F5A00(v12, v15, &type metadata accessor for RoundedRectangle);
  v29 = *&v60 * 0.5;
  v30 = &v15[*(v13 + 68)];
  sub_2F5A00(v12, v30, &type metadata accessor for RoundedRectangle);
  *(v30 + *(sub_3EA7E4() + 20)) = v29;
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DD8) + 36);
  v32 = v61;
  *v31 = v60;
  *(v31 + 16) = v32;
  *(v31 + 32) = v62;
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DE0) + 56)) = 256;
  v33 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E70) + 36);
  sub_FBD0(v12, v33, &qword_4FC460);
  v34 = sub_3EBA74();
  v36 = v35;
  sub_FCF8(v12, &qword_4FC460);
  v37 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500B00) + 36));
  *v37 = v34;
  v37[1] = v36;
  sub_3EB764();
  v38 = sub_3EB794();

  v39 = v57;
  sub_FACC(v15, v57, &qword_500E60);
  *(v39 + *(v56 + 36)) = v38;
  v40 = sub_3EBA74();
  v42 = v41;
  v43 = sub_3EB834();
  sub_3EB134();
  v44 = sub_3EB124();
  v45 = v58;
  (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
  v46 = sub_3EB154();
  sub_FCF8(v45, &qword_4FC098);
  KeyPath = swift_getKeyPath();
  v48 = [v26 tertiaryLabelColor];
  v49 = sub_3EB7D4();
  v50 = v59;
  sub_FACC(v39, v59, &qword_500E68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E78);
  v52 = (v50 + *(result + 36));
  *v52 = v43;
  v52[1] = KeyPath;
  v52[2] = v46;
  v52[3] = v49;
  v52[4] = v40;
  v52[5] = v42;
  return result;
}

uint64_t sub_2F6E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2F6E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500D08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_2F6F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500D08);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_2F7028()
{
  sub_2F3728(319, &unk_500D78, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_2DC100();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2F70E0()
{
  result = qword_500DA8;
  if (!qword_500DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500CF8);
    sub_886BC(&qword_500DB0, &qword_500CF0);
    sub_2F71C8(&qword_500DB8, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500DA8);
  }

  return result;
}

uint64_t sub_2F71C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2F722C()
{
  result = qword_500E18;
  if (!qword_500E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500E18);
  }

  return result;
}

uint64_t sub_2F7280(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2F7318()
{
  result = qword_500E28;
  if (!qword_500E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500DC8);
    sub_2F73D0();
    sub_886BC(&qword_500E58, &qword_500DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500E28);
  }

  return result;
}

unint64_t sub_2F73D0()
{
  result = qword_500E30;
  if (!qword_500E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500DC0);
    sub_2F7488();
    sub_886BC(&qword_4FBD20, &qword_4FBCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500E30);
  }

  return result;
}

unint64_t sub_2F7488()
{
  result = qword_500E38;
  if (!qword_500E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500E40);
    sub_2F750C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500E38);
  }

  return result;
}

unint64_t sub_2F750C()
{
  result = qword_500E48;
  if (!qword_500E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500E50);
    sub_2F7280(&qword_500E10, &qword_500E08, &unk_4187F8, sub_2F722C);
    sub_2F7280(&qword_500E20, &qword_500E00, &unk_4187F0, sub_234B04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500E48);
  }

  return result;
}

unint64_t sub_2F7618()
{
  result = qword_500E80;
  if (!qword_500E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500E78);
    sub_2F76D0();
    sub_886BC(&qword_500E98, &unk_500EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500E80);
  }

  return result;
}

unint64_t sub_2F76D0()
{
  result = qword_500E88;
  if (!qword_500E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500E68);
    sub_886BC(&qword_500E90, &qword_500E60);
    sub_886BC(&qword_4FC0E8, &qword_4FC0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500E88);
  }

  return result;
}

void sub_2F77D0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_2F7830()
{
  v1 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2F7884(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id LibraryTabGroupManager.__allocating_init(asPartOf:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2FCD88(a1);

  return v4;
}

id LibraryTabGroupManager.init(asPartOf:)(uint64_t a1)
{
  v1 = sub_2FCD88(a1);

  return v1;
}

id LibraryTabGroupManager.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EB0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - v5;
  (*(v3 + 16))(&v9 - v5, v1 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabsContinuation, v2, v4);
  sub_3ED724();
  (*(v3 + 8))(v6, v2);
  v7 = type metadata accessor for LibraryTabGroupManager();
  v9.receiver = v1;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t sub_2F7D64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  v10 = (v3 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider);
  v11 = *(v3 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider);
  *v10 = a1;
  v10[1] = a2;

  sub_16AC0(v11);
  sub_2F86EC();
  v12 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_subscription;
  if (*(v3 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_subscription))
  {

    sub_3E9CA4();
  }

  v15[1] = sub_30B588();
  v15[0] = sub_30CE0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_500EE0);
  sub_886BC(&qword_4F9A28, &unk_500EE0);
  sub_3E9FE4();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_886BC(&qword_500EF0, &qword_500EC0);
  v13 = sub_3EA1A4();

  (*(v7 + 8))(v9, v6);
  *(v3 + v12) = v13;
}

void sub_2F7FD0(char *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = a1[16];
  v4 = *(a1 + 3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v9[0] = v1;
    v10 = v2;
    v7[0] = v3;
    v8 = v4;
    sub_2F8E0C(v9, v7);
  }
}

uint64_t sub_2F805C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EF8);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = sub_3ED6B4();
  v3[13] = sub_3ED6A4();
  v6 = sub_3ED684();
  v3[14] = v6;
  v3[15] = v5;

  return _swift_task_switch(sub_2F8164, v6, v5);
}

uint64_t sub_2F8164()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_3ED204();
  v5 = [v3 tabForIdentifier:v4];

  if (v5)
  {

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500F08);
    sub_3ED734();
    v0[16] = 0;
    v8 = sub_3ED6A4();
    v0[17] = v8;
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_2F8318;
    v10 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v0 + 5, v8, &protocol witness table for MainActor, v10);
  }
}

uint64_t sub_2F8318()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_2F845C, v3, v2);
}

uint64_t sub_2F845C()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    sub_2FD398();
    swift_allocError();
    swift_willThrow();
    goto LABEL_10;
  }

  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = [*(v0 + 40) identifier];
  v5 = sub_3ED244();
  v7 = v6;

  if (v5 == v3 && v7 == v2)
  {

    goto LABEL_14;
  }

  v9 = sub_3EE804();

  if (v9)
  {
LABEL_14:
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v13 = *(v0 + 8);

    return v13(v1);
  }

  v10 = *(v0 + 128);
  sub_3ED774();
  if (v10)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

LABEL_10:

    v11 = *(v0 + 8);

    return v11();
  }

  *(v0 + 128) = 0;
  v14 = sub_3ED6A4();
  *(v0 + 136) = v14;
  v15 = swift_task_alloc();
  *(v0 + 144) = v15;
  *v15 = v0;
  v15[1] = sub_2F8318;
  v16 = *(v0 + 72);

  return AsyncStream.Iterator.next(isolation:)(v0 + 40, v14, &protocol witness table for MainActor, v16);
}

void sub_2F86EC()
{
  v1 = v0;
  v2 = sub_3E6AE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TabMenu.Item(0);
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider];
  if (v9)
  {
    v30 = v3;
    v31 = v2;
    v10 = *&v1[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider + 8];
    sub_36174(0, &unk_501080);
    v11 = qword_4E8AD8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v6, qword_5398C8);
    sub_301180(v12, v8, type metadata accessor for TabMenu.Item);
    sub_7A6C8(v9);
    v13 = sub_30A674(v8, v9, v10);
    sub_16AC0(v9);
    v14 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
    swift_beginAccess();
    v15 = *&v1[v14];
    *&v1[v14] = v13;
    v16 = v13;

    [v16 setSidebarAppearance:2];
    [*&v1[v14] setPreferredPlacement:6];
    [*&v1[v14] setAllowsReordering:1];
    v17 = *&v1[v14];
    v18 = (v9)(18);
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
    }

    [v17 setManagingNavigationController:v19];

    v20 = *&v1[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsTabGroup];
    [v20 setSidebarAppearance:2];
    [v20 setPreferredPlacement:6];
    [v20 setAllowsReordering:1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E18);
    v32[3] = type metadata accessor for LibraryTabGroupManager();
    v32[4] = &protocol witness table for LibraryTabGroupManager;
    v32[0] = v1;
    v21 = v1;
    sub_3EC3A4();
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_36174(0, &qword_4EA880);
    v22 = [objc_opt_self() mainBundle];
    v29._countAndFlagsBits = 0xE000000000000000;
    v33._countAndFlagsBits = 0x544154535F57454ELL;
    v33._object = 0xEB000000004E4F49;
    v34.value._countAndFlagsBits = 0;
    v34.value._object = 0;
    v23.super.isa = v22;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_3E5A74(v33, v34, v23, v35, v29);

    sub_3E6A04();
    sub_3E69A4();
    (*(v30 + 8))(v5, v31);

    v24 = sub_3EDEF4();
    v25 = sub_3ED204();
    [v24 setAccessibilityIdentifier:v25];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_3F7950;
    *(v26 + 32) = v24;
    v27 = v24;
    isa = sub_3ED574().super.isa;

    [v20 setSidebarActions:isa];

    sub_16AC0(v9);
  }
}

uint64_t sub_2F8C00(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v14[3] = type metadata accessor for TextFieldAlertAction();
  v14[4] = sub_301280(&qword_501120, type metadata accessor for TextFieldAlertAction);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v14);
  static TextFieldAlertAction.newStation(then:)(0, 0, boxed_opaque_existential_0Tm);
  v14[5] = a2;
  sub_E69A0(v14, v13);
  v7 = swift_allocObject();
  v8 = v13[1];
  v7[1] = v13[0];
  v7[2] = v8;
  v7[3] = v13[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);

  v9 = sub_3ECE04();
  v10 = sub_3ED6F4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_418B98;
  v11[5] = v7;
  v11[6] = v9;

  sub_E8ECC(0, 0, v5, &unk_418BA0, v11);

  return sub_E91B8(v14);
}

uint64_t sub_2F8E0C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection;
  v8 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection);
  v9 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection + 8);
  v10 = v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsSection;
  v11 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsSection);
  v12 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsSection + 8);
  *v7 = *a1;
  *(v7 + 8) = v4;
  *v10 = v5;
  *(v10 + 8) = v6;

  v20[0] = v8;
  v21 = v9;
  v18[0] = v3;
  v19 = v4;
  v16[0] = v11;
  v17 = v12;
  v14[0] = v5;
  v15 = v6;
  sub_2F8F0C(v20, v18, v16, v14);
}

void sub_2F8F0C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070);
  __chkstk_darwin(v9 - 8);
  v11 = &v156 - v10;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501078);
  v165 = *(v179 - 8);
  __chkstk_darwin(v179);
  v178 = &v156 - v12;
  v177 = type metadata accessor for TabMenu.Item(0);
  v170 = *(v177 - 8);
  __chkstk_darwin(v177);
  v159 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v176 = &v156 - v15;
  __chkstk_darwin(v16);
  v18 = &v156 - v17;
  __chkstk_darwin(v19);
  v181 = &v156 - v20;
  __chkstk_darwin(v21);
  v23 = &v156 - v22;
  v169 = sub_3EC6A4();
  v183 = *(v169 - 8);
  __chkstk_darwin(v169);
  __chkstk_darwin(v24);
  v27 = &v156 - v26;
  v28 = *(v4 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider);
  if (!v28)
  {
    return;
  }

  v162 = v25;
  v173 = v18;
  v156 = v11;
  v158 = *(a1 + 8);
  v161 = *a2;
  v163 = *(a2 + 1);
  v172 = *(a3 + 8);
  v29 = *(a4 + 1);
  v30 = *(v4 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider + 8);
  v31 = *a4;
  v32 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v171 = v32;
  v33 = *(v4 + v32);
  v167 = v30;
  sub_7A6C8(v28);
  v34 = [v33 children];
  v175 = sub_36174(0, &qword_4EA748);
  v35 = sub_3ED584();

  v180 = sub_3083C8(v35);
  v164 = 0;

  v36 = *(v4 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsTabGroup);
  TabMenu.Group.title.getter(v31);
  v37 = sub_3ED204();

  v174 = v36;
  [v36 setTitle:v37];

  v38 = v4;
  v166 = v28;
  if (v31 > 1)
  {
    v39 = v183;
    if (v31 == 2)
    {
      v41 = 0x74732E70756F7267;
      v40 = 0xEE00736E6F697461;
    }

    else
    {
      v41 = 0x65732E70756F7267;
      v40 = 0xEC00000068637261;
    }
  }

  else
  {
    v39 = v183;
    if (v31)
    {
      v41 = 0x696C2E70756F7267;
      v40 = 0xED00007972617262;
    }

    else
    {
      v40 = 0x800000000042D280;
      v41 = 0xD000000000000013;
    }
  }

  v42 = v169;
  *(&v191 + 1) = &type metadata for String;
  *&v190 = v41;
  *(&v190 + 1) = v40;
  sub_3EC684();
  __swift_destroy_boxed_opaque_existential_1Tm(&v190);
  v160 = sub_36174(0, &unk_501080);
  sub_3EDDD4();
  v45 = v39[1];
  v44 = v39 + 1;
  v43 = v45;
  v45(v27, v42);
  v46 = sub_2FA598(v29, v172);
  v47 = &selRef_setDefaultTabInterval_;
  v182 = v4;
  v168 = v29;
  if ((v46 & 1) == 0 || ((v48 = [v174 children], v49 = sub_3ED584(), v48, v49 >> 62) ? (v50 = sub_3EE5A4()) : (v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8))), , !v50))
  {
    v157 = v43;
    v51 = *(v29 + 16);
    if (v51)
    {
      v183 = v44;
      *&v190 = _swiftEmptyArrayStorage;
      sub_3EE4C4();
      v52 = *(v38 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_objectGraph);
      v53 = v29 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
      v54 = *(v170 + 72);
      v55 = v166;
      v56 = v167;
      do
      {
        sub_301180(v53, v23, type metadata accessor for TabMenu.Item);
        v57 = swift_allocObject();
        *(v57 + 16) = v55;
        *(v57 + 24) = v56;
        sub_7A6C8(v55);
        TabMenu.Item.tab(asPartOf:viewControllerProvider:)(v52, sub_3012EC, v57);

        sub_3011F8(v23, type metadata accessor for TabMenu.Item);
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
        v53 += v54;
        --v51;
      }

      while (v51);
      v38 = v182;
      v29 = v168;
      v42 = v169;
      v47 = &selRef_setDefaultTabInterval_;
    }

    isa = sub_3ED574().super.isa;

    [v174 v47[265]];

    v43 = v157;
  }

  v59 = *(v38 + v171);
  if (v161 > 1)
  {
    if (v161 == 2)
    {
      v61 = 0x74732E70756F7267;
      v60 = 0xEE00736E6F697461;
    }

    else
    {
      v61 = 0x65732E70756F7267;
      v60 = 0xEC00000068637261;
    }
  }

  else if (v161)
  {
    v61 = 0x696C2E70756F7267;
    v60 = 0xED00007972617262;
  }

  else
  {
    v60 = 0x800000000042D280;
    v61 = 0xD000000000000013;
  }

  *(&v191 + 1) = &type metadata for String;
  *&v190 = v61;
  *(&v190 + 1) = v60;
  v62 = v59;
  v63 = v162;
  sub_3EC684();
  __swift_destroy_boxed_opaque_existential_1Tm(&v190);
  sub_3EDDD4();

  v43(v63, v42);
  v64 = sub_2FA598(v29, v172);
  v65 = v163;
  if ((v64 & 1) == 0 || (sub_2FA598(v163, v158) & 1) == 0)
  {
    v66 = *(v38 + v171);
    v67 = *(v65 + 16);
    if (v67)
    {
      *&v190 = _swiftEmptyArrayStorage;
      v183 = v66;
      v68 = v66;
      sub_3EE4C4();
      v69 = *(v38 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_objectGraph);
      v70 = v65 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
      v71 = *(v170 + 72);
      v72 = v166;
      v73 = v167;
      do
      {
        sub_301180(v70, v23, type metadata accessor for TabMenu.Item);
        v74 = swift_allocObject();
        *(v74 + 16) = v72;
        *(v74 + 24) = v73;
        sub_7A6C8(v72);
        v75 = TabMenu.Item.tab(asPartOf:viewControllerProvider:)(v69, sub_300EF0, v74);

        [v75 setAllowsHiding:1];
        sub_3011F8(v23, type metadata accessor for TabMenu.Item);
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
        v70 += v71;
        --v67;
      }

      while (v67);
      v76 = v190;
      v38 = v182;
      v47 = &selRef_setDefaultTabInterval_;
      v66 = v183;
    }

    else
    {
      v77 = v66;
      v76 = _swiftEmptyArrayStorage;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3F7950;
    v79 = v174;
    *(inited + 32) = v174;
    *&v190 = v76;
    v80 = v79;
    sub_41620(inited);
    v81 = sub_3ED574().super.isa;

    [v66 v47[265]];
  }

  v82 = *(v38 + v171);
  v83 = [v82 children];
  v84 = sub_3ED584();

  v85 = v164;
  v86 = sub_3083C8(v84);
  v183 = v85;

  *&v190 = _swiftEmptyArrayStorage;
  if (v86 >> 62)
  {
    goto LABEL_63;
  }

  v87 = *(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8));
LABEL_35:
  if (v87)
  {
    v88 = 0;
    do
    {
      if ((v86 & 0xC000000000000001) != 0)
      {
        v89 = sub_3EE3F4();
      }

      else
      {
        if (v88 >= *(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_61;
        }

        v89 = *(v86 + 8 * v88 + 32);
      }

      v90 = v89;
      v91 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        goto LABEL_60;
      }

      *&v186 = v89;
      __chkstk_darwin(v89);
      *(&v156 - 2) = &v186;
      v92 = v183;
      v93 = sub_9102C(sub_300F18, (&v156 - 4), v180);
      v183 = v92;
      if (v93)
      {
      }

      else
      {
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
      }

      ++v88;
    }

    while (v91 != v87);
    v94 = v190;
  }

  else
  {
    v94 = _swiftEmptyArrayStorage;
  }

  if ((v94 & 0x8000000000000000) != 0 || (v94 & 0x4000000000000000) != 0)
  {
    v86 = sub_3EE5A4();
    if (v86)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v86 = *(v94 + 16);
    if (v86)
    {
LABEL_51:
      v95 = 0;
      v96 = (v165 + 8);
      v97 = v178;
      do
      {
        if ((v94 & 0xC000000000000001) != 0)
        {
          v98 = sub_3EE3F4();
          v99 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v95 >= *(v94 + 16))
          {
            goto LABEL_62;
          }

          v98 = *(v94 + 8 * v95 + 32);
          v99 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            v87 = sub_3EE5A4();
            goto LABEL_35;
          }
        }

        *&v190 = v98;
        v100 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EB0);
        sub_3ED714();

        (*v96)(v97, v179);
        ++v95;
      }

      while (v99 != v86);
    }
  }

  v101 = v168;
  v102 = *(v168 + 16);
  if (v102 == *(v172 + 16))
  {
    if (v102)
    {
      v189 = _swiftEmptyArrayStorage;
      sub_41BA8(0, v102, 0);
      v103 = v189;
      v179 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v104 = v172 + v179;
      v105 = *(v170 + 72);
      v106 = v181;
      v180 = v105;
      do
      {
        sub_301180(v104, v106, type metadata accessor for TabMenu.Item);
        v107 = sub_304A84();
        v106 = v181;
        v108 = v107;
        v110 = v109;
        v187 = v107;
        v188 = v109;
        v111 = *(v181 + *(v177 + 28));
        if ((v111 - 1) >= 0x12)
        {
          if (v111)
          {
            v112 = *(v111 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount);
            *(&v191 + 1) = &type metadata for Int;
            *&v190 = v112;
          }

          else
          {
            v190 = 0u;
            v191 = 0u;
          }

          sub_FBD0(&v190, &v184, &unk_501090);
          if (v185)
          {
            sub_1FB90(&v184, &v186);
            sub_2F4AC(&v186, &v184);

            v192._countAndFlagsBits = sub_3ED2B4();
            sub_3ED3D4(v192);
            v106 = v181;

            sub_29EB8(v111);
            __swift_destroy_boxed_opaque_existential_1Tm(&v186);
            sub_3011F8(v106, type metadata accessor for TabMenu.Item);
            v108 = v187;
            v110 = v188;
          }

          else
          {
            sub_3011F8(v106, type metadata accessor for TabMenu.Item);
            sub_FCF8(&v184, &unk_501090);
          }

          sub_FCF8(&v190, &unk_501090);
          v105 = v180;
        }

        else
        {
          sub_3011F8(v181, type metadata accessor for TabMenu.Item);
        }

        v189 = v103;
        v114 = v103[2];
        v113 = v103[3];
        if (v114 >= v113 >> 1)
        {
          sub_41BA8((v113 > 1), v114 + 1, 1);
          v106 = v181;
          v103 = v189;
        }

        v103[2] = v114 + 1;
        v115 = &v103[2 * v114];
        v115[4] = v108;
        v115[5] = v110;
        v104 += v105;
        --v102;
      }

      while (v102);
      v101 = v168;
      v181 = *(v168 + 16);
      if (v181)
      {
        v116 = 0;
        v117 = v168 + v179;
        v118 = _swiftEmptyArrayStorage;
        v119 = v159;
        v120 = v173;
        while (v116 < *(v101 + 16))
        {
          v121 = sub_301180(v117, v120, type metadata accessor for TabMenu.Item);
          __chkstk_darwin(v121);
          *(&v156 - 2) = v120;
          v114 = v183;
          v122 = sub_90F80(sub_300F90, (&v156 - 4), v103);
          v183 = v114;
          if (v122)
          {
            sub_3011F8(v120, type metadata accessor for TabMenu.Item);
          }

          else
          {
            sub_300FB0(v120, v119);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v190 = v118;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_41D74(0, v118[2] + 1, 1);
              v118 = v190;
            }

            v114 = v118[2];
            v124 = v118[3];
            if (v114 >= v124 >> 1)
            {
              sub_41D74(v124 > 1, v114 + 1, 1);
              v118 = v190;
            }

            v118[2] = v114 + 1;
            sub_300FB0(v119, v118 + v179 + v114 * v105);
          }

          ++v116;
          v117 += v105;
          if (v181 == v116)
          {
            goto LABEL_93;
          }
        }

        __break(1u);
LABEL_127:
        sub_16AC0(v166);

        sub_300F80(v117);
        sub_300F80(v117);

        sub_FCF8(v118, &qword_501070);
        return;
      }

      v118 = _swiftEmptyArrayStorage;
    }

    else
    {
      v118 = _swiftEmptyArrayStorage;
    }

LABEL_93:

    v125 = v118[2];
    v126 = v176;
    if (v125)
    {
      v127 = *(v177 + 28);
      v128 = v118 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
      v129 = *(v170 + 72);
      do
      {
        sub_301180(v128, v126, type metadata accessor for TabMenu.Item);
        v130 = *(v126 + v127);
        if (v130 >= 0x13)
        {
          v131 = *(v130 + 16);
          v132 = *(v130 + 24);

          v133 = [v174 children];
          v134 = sub_3ED584();

          v135 = sub_2FAEA4(v131, v132, v134);

          v126 = v176;

          if (v135)
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v137 = Strong;
              v138 = [Strong sidebar];

              v126 = v176;
              [v138 reconfigureItemForTab:v135];
            }
          }
        }

        sub_3011F8(v126, type metadata accessor for TabMenu.Item);
        v128 += v129;
        --v125;
      }

      while (v125);

      v101 = v168;
    }

    else
    {
    }
  }

  v139 = v182;
  v140 = swift_unknownObjectWeakLoadStrong();
  if (!v140 || (v141 = v140, v103 = [v140 selectedViewController], v141, !v103))
  {
LABEL_117:
    sub_16AC0(v166);
    return;
  }

  objc_opt_self();
  v142 = swift_dynamicCastObjCClass();
  if (!v142)
  {

    goto LABEL_117;
  }

  v143 = [v142 viewControllers];
  sub_36174(0, &qword_502180);
  v144 = sub_3ED584();

  if (v144 >> 62)
  {
    if (sub_3EE5A4())
    {
      goto LABEL_108;
    }

LABEL_130:

LABEL_131:
    sub_16AC0(v166);

    return;
  }

  if (!*(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_130;
  }

LABEL_108:
  if ((v144 & 0xC000000000000001) != 0)
  {
    v145 = sub_3EE3F4();
LABEL_111:
    v114 = v145;

    swift_getObjectType();
    v146 = swift_conformsToProtocol2();
    if (v146 && v114)
    {
      v147 = v146;
      ObjectType = swift_getObjectType();
      v149 = (*(v147 + 8))(ObjectType, v147);
      v117 = v149;
      if ((v149 - 1) >= 0x12)
      {
        if (v149)
        {
          if (v149 == 19)
          {
            sub_16AC0(v166);

            return;
          }

          v151 = *(v149 + 16);
          v152 = *(v149 + 24);
          sub_29EA4(v149);
          v153 = v151;
          v118 = v156;
          sub_2FB258(v153, v152, v101, v156);
          if ((*(v170 + 48))(v118, 1, v177) == 1)
          {
            sub_FCF8(v118, &qword_501070);
            v154 = *(v139 + v171);
            v155 = UITab.tab(matching:)(8uLL);
            [v154 setSelectedChild:v155];
            sub_16AC0(v166);

            sub_300F80(v117);
            sub_300F80(v117);
            return;
          }

          goto LABEL_127;
        }

        sub_16AC0(v166);

        v150 = 0;
      }

      else
      {
        sub_16AC0(v166);

        v150 = v117;
      }

      sub_300F80(v150);

      return;
    }

    goto LABEL_131;
  }

  if (*(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8)))
  {
    v145 = *(v144 + 32);
    goto LABEL_111;
  }

  __break(1u);
}

uint64_t sub_2FA598(uint64_t a1, uint64_t a2)
{
  v41 = sub_3E5FC4();
  v4 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TabMenu.Item(0);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = *(a2 + 16);
  if (v14 != *(a1 + 16))
  {
    return 0;
  }

  if (!v14)
  {
    return 1;
  }

  v15 = 0;
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = *(v11 + 72);
  v18 = a2 + v16;
  v19 = a1 + v16;
  v40 = (v4 + 8);
  v33 = 0x80000000004258E0;
  v34 = a1 + v16;
  v42 = v17;
  v37 = v7;
  v38 = &v32 - v12;
  v35 = v18;
  v36 = v14;
LABEL_4:
  v39 = v15 + 1;
  sub_301180(v18 + v17 * v15, v13, type metadata accessor for TabMenu.Item);
  v43 = *(v7 + 28);
  v20 = *&v13[v43];
  v21 = v20 - 1;
  while (2)
  {
    if (!v14)
    {
      __break(1u);
      JUMPOUT(0x2FADA0);
    }

    sub_301180(v19, v9, type metadata accessor for TabMenu.Item);
    v22 = *&v9[v43];
    v23 = 0xE500000000000000;
    v24 = 0x73776F6873;
    switch(v22)
    {
      case 1:
        goto LABEL_43;
      case 2:
        v23 = 0xE800000000000000;
        v24 = 0x736C656E6E616863;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 3:
        v23 = 0xEA00000000007365;
        v24 = 0x69726F6765746163;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 4:
        v24 = 0x64616F6C6E776F64;
        v23 = 0xEA00000000006465;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 5:
        v24 = 0x7472616843706F74;
        goto LABEL_20;
      case 6:
        v24 = 0x6F546E7265646F6DLL;
        v23 = 0xEF73747261684370;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 7:
        v23 = 0xE700000000000000;
        v24 = 0x7972617262696CLL;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 8:
        v23 = 0xE600000000000000;
        v24 = 0x6E657473696CLL;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 9:
        v23 = 0xE700000000000000;
        v24 = 0x676F6C61746163;
        if (v21 >= 0x12)
        {
          goto LABEL_62;
        }

        goto LABEL_43;
      case 10:
        v24 = 0x7265666E69;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 11:
        v23 = 0xE800000000000000;
        v24 = 0x64657463656C6573;
        goto LABEL_43;
      case 12:
        v23 = 0xE600000000000000;
        v24 = 0x686372616573;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 13:
        v23 = 0xE700000000000000;
        v24 = 0x676E6964616F6CLL;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 14:
        v23 = 0xEA00000000007265;
        v24 = 0x79616C50696E696DLL;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 15:
        v24 = 0x6B72616D6B6F6F62;
LABEL_20:
        v23 = 0xE900000000000073;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 16:
        v24 = 0x704574736574616CLL;
        v23 = 0xEE007365646F7369;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 17:
        v24 = 0x796C746E65636572;
        v23 = 0xEF64657461647055;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      case 18:
        v24 = 0xD000000000000014;
        v23 = v33;
        if (v21 < 0x12)
        {
          goto LABEL_43;
        }

        goto LABEL_62;
      default:
        if (v22)
        {
          v24 = *(v22 + 16);
          v23 = *(v22 + 24);

          if (v21 >= 0x12)
          {
            goto LABEL_62;
          }
        }

        else
        {
          sub_3E5FB4();
          v24 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
          v23 = v25;
          (*v40)(v6, v41);
          if (v21 >= 0x12)
          {
LABEL_62:
            if (v20)
            {
              v27 = *(v20 + 16);
              v26 = *(v20 + 24);
            }

            else
            {
              sub_3E5FB4();
              v27 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
              v26 = v28;
              (*v40)(v6, v41);
            }

            goto LABEL_65;
          }
        }

LABEL_43:
        v26 = 0xE500000000000000;
        v27 = 0x73776F6873;
        switch(v20)
        {
          case 1:
            break;
          case 2:
            v26 = 0xE800000000000000;
            v27 = 0x736C656E6E616863;
            break;
          case 3:
            v26 = 0xEA00000000007365;
            v27 = 0x69726F6765746163;
            break;
          case 4:
            v27 = 0x64616F6C6E776F64;
            v26 = 0xEA00000000006465;
            break;
          case 5:
            v27 = 0x7472616843706F74;
            goto LABEL_49;
          case 6:
            v27 = 0x6F546E7265646F6DLL;
            v26 = 0xEF73747261684370;
            break;
          case 7:
            v26 = 0xE700000000000000;
            v27 = 0x7972617262696CLL;
            break;
          case 8:
            v26 = 0xE600000000000000;
            v27 = 0x6E657473696CLL;
            break;
          case 9:
            v26 = 0xE700000000000000;
            v27 = 0x676F6C61746163;
            break;
          case 10:
            v27 = 0x7265666E69;
            break;
          case 11:
            v26 = 0xE800000000000000;
            v27 = 0x64657463656C6573;
            break;
          case 12:
            v26 = 0xE600000000000000;
            v27 = 0x686372616573;
            break;
          case 13:
            v26 = 0xE700000000000000;
            v27 = 0x676E6964616F6CLL;
            break;
          case 14:
            v26 = 0xEA00000000007265;
            v27 = 0x79616C50696E696DLL;
            break;
          case 15:
            v27 = 0x6B72616D6B6F6F62;
LABEL_49:
            v26 = 0xE900000000000073;
            break;
          case 16:
            v27 = 0x704574736574616CLL;
            v26 = 0xEE007365646F7369;
            break;
          case 17:
            v27 = 0x796C746E65636572;
            v26 = 0xEF64657461647055;
            break;
          case 18:
            v27 = 0xD000000000000014;
            v26 = v33;
            break;
          default:
            goto LABEL_62;
        }

LABEL_65:
        if (v24 != v27 || v23 != v26)
        {
          v30 = sub_3EE804();

          sub_3011F8(v9, type metadata accessor for TabMenu.Item);
          if (v30)
          {
            goto LABEL_74;
          }

          v19 += v42;
          if (!--v14)
          {
            sub_3011F8(v38, type metadata accessor for TabMenu.Item);
            return 0;
          }

          continue;
        }

        sub_3011F8(v9, type metadata accessor for TabMenu.Item);
LABEL_74:
        v13 = v38;
        sub_3011F8(v38, type metadata accessor for TabMenu.Item);
        result = 1;
        v14 = v36;
        v7 = v37;
        v15 = v39;
        v17 = v42;
        v19 = v34;
        v18 = v35;
        if (v39 != v36)
        {
          goto LABEL_4;
        }

        return result;
    }
  }
}

uint64_t sub_2FAE30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (TabMenu.Item.shelfUniqueID.getter() == v1 && v3 == v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_3EE804();
  }

  return v5 & 1;
}

char *sub_2FAEA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v29 = a2;
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for TabMenu.Item(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    v11 = 0;
    v33 = a3 & 0xFFFFFFFFFFFFFF8;
    v34 = a3 & 0xC000000000000001;
    v12 = (v8 + 56);
    v13 = (v8 + 48);
    v31 = i;
    v32 = a3;
    while (1)
    {
      if (v34)
      {
        v14 = sub_3EE3F4();
      }

      else
      {
        if (v11 >= *(v33 + 16))
        {
          goto LABEL_27;
        }

        v14 = *(a3 + 8 * v11 + 32);
      }

      v8 = v14;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ([v14 userInfo])
      {
        sub_3EE204();
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
      }

      v37[0] = v35;
      v37[1] = v36;
      if (*(&v36 + 1))
      {
        v16 = swift_dynamicCast();
        (*v12)(v6, v16 ^ 1u, 1, v7);
        if ((*v13)(v6, 1, v7) != 1)
        {
          v17 = v28;
          sub_300FB0(v6, v28);
          v18 = *(v17 + *(v7 + 28));
          sub_29EA4(v18);
          sub_3011F8(v17, type metadata accessor for TabMenu.Item);
          goto LABEL_18;
        }
      }

      else
      {
        sub_FCF8(v37, &unk_501090);
        (*v12)(v6, 1, 1, v7);
      }

      sub_FCF8(v6, &qword_501070);
      v19 = [v8 identifier];
      v20 = sub_3ED244();
      v22 = v21;

      v18 = _s8ShelfKit13NavigationTabO11stringValueACSS_tcfC_0(v20, v22);
LABEL_18:
      if ((v18 - 1) < 0x12)
      {
        sub_29EB8(v18);
      }

      else if (v18)
      {
        v24 = *(v18 + 16);
        v23 = *(v18 + 24);

        sub_29EB8(v18);
        if (v24 == v30 && v23 == v29)
        {

          return v8;
        }

        v25 = sub_3EE804();

        if (v25)
        {
          return v8;
        }
      }

      ++v11;
      a3 = v32;
      if (v15 == v31)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return 0;
}

uint64_t sub_2FB258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TabMenu.Item(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_301180(v13, v11, type metadata accessor for TabMenu.Item);
      v15 = *&v11[*(v8 + 28)];
      if (v15 >= 0x13)
      {
        v16 = *(v15 + 16) == a1 && *(v15 + 24) == a2;
        if (v16 || (sub_3EE804() & 1) != 0)
        {
          break;
        }
      }

      sub_3011F8(v11, type metadata accessor for TabMenu.Item);
      v13 += v14;
      if (!--v12)
      {
        goto LABEL_11;
      }
    }

    sub_300FB0(v11, a4);
    v17 = 0;
  }

  else
  {
LABEL_11:
    v17 = 1;
  }

  return (*(v9 + 56))(a4, v17, 1, v8);
}

id sub_2FB450()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

uint64_t sub_2FB4A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2FB550;

  return sub_2F805C(a1, a2);
}