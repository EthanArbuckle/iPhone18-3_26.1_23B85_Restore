void sub_BDC14(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = sqrt(a1);
  v4 = (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  if ((v2 & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = v3 <= -2;
  if (__OFADD__(v3, 2))
  {
    __break(1u);
LABEL_9:
    if (!v4)
    {
      goto LABEL_15;
    }

    if (v3 <= -9.22337204e18)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v3 >= 9.22337204e18)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (__OFADD__(v3, 1))
    {
LABEL_20:
      __break(1u);
    }
  }
}

unint64_t *sub_BDCD8(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 16);
  v4 = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v6 = a3 / a2 * 1.5 + -4.0;
    v37 = &_swiftEmptyArrayStorage;
    sub_2DAC4(0, v3, 0);
    v4 = &_swiftEmptyArrayStorage;
    v7 = a1 + 32;
    do
    {
      sub_30CC(v7, &v19);
      sub_30CC(&v19, &v29);
      CoverViewModel.CoverImageInfo.init(assetInfo:)(&v29, v27);
      sub_2E18(&v19, *(&v20 + 1));
      sub_260950();
      v33 = v27[4];
      v34 = v27[5];
      v35 = v27[6];
      *&v36 = v28;
      v29 = v27[0];
      v30 = v27[1];
      v31 = v27[2];
      v32 = v27[3];
      *(&v36 + 1) = v6 / v8;
      sub_230A8(&v29);
      sub_3080(&v19);
      v37 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_2DAC4((v9 > 1), v10 + 1, 1);
        v4 = v37;
      }

      v23 = v33;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v21 = v31;
      v22 = v32;
      v19 = v29;
      v11 = v29;
      v20 = v30;
      v4[2] = v10 + 1;
      v12 = &v4[16 * v10];
      v13 = v20;
      v14 = v22;
      *(v12 + 4) = v21;
      *(v12 + 5) = v14;
      *(v12 + 3) = v13;
      v15 = v23;
      v16 = v24;
      v17 = v26;
      *(v12 + 8) = v25;
      *(v12 + 9) = v17;
      *(v12 + 6) = v15;
      *(v12 + 7) = v16;
      v7 += 40;
      *(v12 + 2) = v11;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_BDE88(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (a2)
    {
      sub_2EF0(&qword_31BEF0, &unk_289190);
      v4 = sub_2646C0();
      v4[2] = a2;
      memset_pattern16(v4 + 4, &off_306DA0, 8 * a2);
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    v42 = *(v3 + 16);
    if (!v42)
    {
      return v4;
    }

    v5 = 0;
    v41 = v3 + 32;
    v6 = (v4 + 4);
    while (1)
    {
      v7 = (v41 + (v5 << 7));
      v8 = v7[3];
      v47 = v7[2];
      v48 = v8;
      v9 = v7[7];
      v51 = v7[6];
      v52 = v9;
      v10 = v7[5];
      v49 = v7[4];
      v50 = v10;
      v11 = v7[1];
      v45 = *v7;
      v46 = v11;
      v12 = v4[2];
      if (v12)
      {
        break;
      }

      sub_5757C(&v45, __dst);
      v23 = *(&_swiftEmptyArrayStorage + 2);
      if (v23)
      {
        v14 = &_swiftEmptyArrayStorage;
LABEL_26:
        v24 = *(v14 + 4);
        v25 = v23 - 1;
        if (v23 != 1)
        {
          v26 = (v14 + 40);
          do
          {
            v27 = *v26++;
            v28 = v27;
            if (v27 < v24)
            {
              v24 = v28;
            }

            --v25;
          }

          while (v25);
        }

        v29 = 0;
        while (*&v14[8 * v29 + 32] != v24)
        {
          if (v23 == ++v29)
          {

            sub_2F8C4(&v45);
            goto LABEL_8;
          }
        }

        if (v29 >= v4[2])
        {
          goto LABEL_43;
        }

        v30 = *&v6[8 * v29];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v6[8 * v29] = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_E8F8C(0, *(v30 + 2) + 1, 1, v30);
          *&v6[8 * v29] = v30;
        }

        v33 = *(v30 + 2);
        v32 = *(v30 + 3);
        if (v33 >= v32 >> 1)
        {
          v30 = sub_E8F8C((v32 > 1), v33 + 1, 1, v30);
          *&v6[8 * v29] = v30;
        }

        *(v30 + 2) = v33 + 1;
        v34 = &v30[128 * v33];
        v35 = v45;
        v36 = v46;
        v37 = v48;
        *(v34 + 4) = v47;
        *(v34 + 5) = v37;
        *(v34 + 2) = v35;
        *(v34 + 3) = v36;
        v38 = v49;
        v39 = v50;
        v40 = v52;
        *(v34 + 8) = v51;
        *(v34 + 9) = v40;
        *(v34 + 6) = v38;
        *(v34 + 7) = v39;
      }

      else
      {
        sub_2F8C4(&v45);
      }

LABEL_8:
      if (++v5 == v42)
      {
        return v4;
      }
    }

    sub_5757C(&v45, __dst);
    v44 = &_swiftEmptyArrayStorage;
    result = sub_2DAE4(0, v12, 0);
    v13 = 0;
    v14 = v44;
    while (v13 < v4[2])
    {
      v15 = *&v6[8 * v13];
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = (v15 + 32);
        v18 = 0.0;
        do
        {
          memmove(__dst, v17, 0x80uLL);
          v20 = sub_2F8B8(__dst);
          result = sub_2F950(__dst);
          if (v20)
          {
            v19 = 1.0;
            if (v20 != 1)
            {
              v19 = 0.641025641;
            }
          }

          else
          {
            v19 = *(result + 16);
          }

          v18 = v18 + 1.0 / v19;
          v17 += 128;
          --v16;
        }

        while (v16);
      }

      else
      {
        v18 = 0.0;
      }

      v44 = v14;
      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        result = sub_2DAE4((v21 > 1), v22 + 1, 1);
        v14 = v44;
      }

      ++v13;
      *(v14 + 2) = v23;
      *&v14[8 * v22 + 32] = v18;
      if (v13 == v12)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_BE218(uint64_t a1, uint64_t a2, char a3)
{

  if (a3 < 0)
  {
  }

  return result;
}

uint64_t sub_BE2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_BE320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_BE388()
{
  result = qword_31BBB8;
  if (!qword_31BBB8)
  {
    sub_2F9C(&qword_31BBB0, &qword_271AD0);
    sub_BE440();
    sub_8E38(&qword_317598, &qword_3175A0, &qword_269A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBB8);
  }

  return result;
}

unint64_t sub_BE440()
{
  result = qword_31BBC0;
  if (!qword_31BBC0)
  {
    sub_2F9C(&qword_31BBC8, &unk_271AD8);
    sub_BE4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBC0);
  }

  return result;
}

unint64_t sub_BE4CC()
{
  result = qword_31BBD0;
  if (!qword_31BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBD0);
  }

  return result;
}

unint64_t sub_BE520()
{
  result = qword_31BBE0;
  if (!qword_31BBE0)
  {
    sub_2F9C(&qword_31BBD8, &qword_271AE8);
    sub_2F9C(&qword_31BBE8, &qword_271AF0);
    sub_BE5E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBE0);
  }

  return result;
}

unint64_t sub_BE5E8()
{
  result = qword_31BBF0;
  if (!qword_31BBF0)
  {
    sub_2F9C(&qword_31BBE8, &qword_271AF0);
    sub_BE674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBF0);
  }

  return result;
}

unint64_t sub_BE674()
{
  result = qword_31BBF8;
  if (!qword_31BBF8)
  {
    sub_2F9C(&qword_31BC00, &qword_271AF8);
    sub_8E38(&qword_31BC08, &qword_31BC10, &unk_271B00);
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBF8);
  }

  return result;
}

unint64_t sub_BE774()
{
  result = qword_31BC30;
  if (!qword_31BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BC30);
  }

  return result;
}

uint64_t sub_BE82C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_BE868(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_BE8A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_BE934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_BE97C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_BE9F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_316F68, &unk_269C50);
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
      v13 = sub_2EF0(&qword_316F78, &unk_269C60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_BEB40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_316F68, &unk_269C50);
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
      v13 = sub_2EF0(&qword_316F78, &unk_269C60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_BEC7C()
{
  sub_BED48(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_BED48(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_BED48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_BEDB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260550();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_BEE70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_260550();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_BEF14()
{
  result = sub_260550();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_BEF90(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = sub_2601E0();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_BF044(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v35 = *(a3 + 24);
  v8 = *(v35 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = sub_2601E0();
  v12 = *(v11 - 8);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v8 + 80);
  v16 = *(v12 + 80);
  if (v10 <= *(v12 + 84))
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v8 + 64) + v16;
  if (a2 <= v18)
  {
    goto LABEL_34;
  }

  v20 = ((v19 + ((v14 + v15 + ((v13 + 57) & ~v13)) & ~v15)) & ~v16) + *(*(v11 - 8) + 64);
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_13;
  }

  v24 = ((a2 - v18 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v24))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v24 <= 0xFF)
    {
      if (v24 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

LABEL_21:
      v25 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v25 = 0;
      }

      if (v20)
      {
        if (v20 <= 3)
        {
          v26 = v20;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      else
      {
        v27 = 0;
      }

      return v18 + (v27 | v25) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if ((v17 & 0x80000000) == 0)
  {
    v28 = *(a1 + 1);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }

  v29 = (a1 + v13 + 57) & ~v13;
  if (v7 == v18)
  {
    v30 = *(v6 + 48);
    v31 = v7;
    v32 = v5;

    return v30(v29, v31, v32);
  }

  v29 = (v29 + v14 + v15) & ~v15;
  if (v9 == v18)
  {
    v30 = *(v8 + 48);
    v31 = v9;
    v32 = v35;

    return v30(v29, v31, v32);
  }

  v33 = *(v12 + 48);
  v34 = (v19 + v29) & ~v16;

  return v33(v34);
}

void sub_BF3C4(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v35 = *(a4 + 24);
  v36 = *(a4 + 16);
  v7 = *(v36 - 8);
  v37 = v7;
  v8 = *(v7 + 84);
  v9 = *(v35 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = *(sub_2601E0() - 8);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v18 = *(v12 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = v16 + v17;
  v21 = ((v16 + v17 + ((v14 + v15 + ((v13 + 57) & ~v13)) & ~v15)) & ~v17) + *(v12 + 64);
  if (a3 <= v19)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v19 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v19 < a2)
  {
    v23 = ~v19 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_57:
              if (v22 == 2)
              {
                *(a1 + v21) = v24;
              }

              else
              {
                *(a1 + v21) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v22)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v21) = 0;
  }

  else if (v22)
  {
    *(a1 + v21) = 0;
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
  if ((v18 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 20) = 0u;
      *(a1 + 12) = 0u;
      *(a1 + 4) = 0u;
      *(a1 + 56) = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

  v28 = (a1 + v13 + 57) & ~v13;
  if (v8 == v19)
  {
    v29 = *(v37 + 56);
    v30 = a2;
    v31 = v8;
    v32 = v36;

LABEL_46:
    v29(v28, v30, v31, v32);
    return;
  }

  v28 = (v28 + v14 + v15) & ~v15;
  if (v10 == v19)
  {
    v29 = *(v9 + 56);
    v30 = a2;
    v31 = v10;
    v32 = v35;

    goto LABEL_46;
  }

  v33 = *(v12 + 56);
  v34 = (v20 + v28) & ~v17;

  v33(v34, a2);
}

void sub_BF7DC(uint64_t a1)
{
  type metadata accessor for PageBackground(319);
  if (v2 <= 0x3F)
  {
    sub_BED48(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
    if (v3 <= 0x3F)
    {
      type metadata accessor for SummaryFrameViewModel(319);
      if (v4 <= 0x3F)
      {
        v8 = *(a1 + 16);
        v9 = *(a1 + 32);
        type metadata accessor for SharableAsset();
        sub_2646F0();
        if (v5 <= 0x3F)
        {
          sub_BFCE8();
          if (v6 <= 0x3F)
          {
            sub_BFD38();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_BF92C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PageBackground(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[13];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for SummaryFrameViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[14];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[15]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_2EF0(qword_31BDE8, &qword_271EC8);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[23];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_BFB14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PageBackground(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[13];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for SummaryFrameViewModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[14];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[15]) = (a2 - 1);
  }

  else
  {
    v17 = sub_2EF0(qword_31BDE8, &qword_271EC8);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[23];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void sub_BFCE8()
{
  if (!qword_317910)
  {
    v0 = sub_263210();
    if (!v1)
    {
      atomic_store(v0, &qword_317910);
    }
  }
}

void sub_BFD38()
{
  if (!qword_31BE70)
  {
    sub_2F9C(&qword_31A0C8, &qword_26E2C0);
    v0 = sub_263210();
    if (!v1)
    {
      atomic_store(v0, &qword_31BE70);
    }
  }
}

uint64_t sub_BFDE0(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1[1];
  v2 = a1[2];
  v5 = a1[3];
  sub_2F9C(&qword_31BBA8, &unk_271AC0);
  type metadata accessor for SharableAsset();
  sub_2646F0();
  sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  sub_261730();
  swift_getWitnessTable();
  sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_6EBA4();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_263300();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_C26FC(qword_318EE0, &type metadata accessor for UUID);
  sub_2633D0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_2610F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_261120();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_262490();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  sub_261730();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_261560();
  sub_2F9C(&qword_31BBB0, &qword_271AD0);
  sub_2633D0();
  sub_BE388();
  swift_getWitnessTable();
  sub_263260();
  sub_264C30();
  sub_2F9C(&qword_31BBD8, &qword_271AE8);
  swift_getWitnessTable();
  sub_BE520();
  sub_2636A0();
  sub_2623C0();
  swift_getWitnessTable();
  sub_C26FC(&qword_31BC18, &type metadata accessor for BorderedProminentButtonStyle);
  swift_getOpaqueTypeMetadata2();
  sub_2F9C(&qword_31BC20, &unk_271B10);
  sub_261730();
  sub_2F9C(&qword_3183D0, &qword_26B240);
  sub_261730();
  sub_2F9C(&qword_317960, &qword_269CF0);
  swift_getOpaqueTypeConformance2();
  sub_8E38(&qword_31BC28, &qword_31BC20, &unk_271B10);
  swift_getWitnessTable();
  sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
  swift_getWitnessTable();
  sub_8E38(&qword_317AB8, &qword_317960, &qword_269CF0);
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  sub_264A60();
  swift_getTupleTypeMetadata();
  sub_2636B0();
  swift_getWitnessTable();
  sub_2632E0();
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  sub_261730();
  swift_getWitnessTable();
  sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C0828(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_C0874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_C08E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_C0920@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_B138C(a1, *(v2 + 16), a2);
}

unint64_t sub_C092C()
{
  result = qword_31BEB8;
  if (!qword_31BEB8)
  {
    sub_2F9C(&qword_31BEA8, &qword_271FD0);
    sub_C09B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BEB8);
  }

  return result;
}

unint64_t sub_C09B8()
{
  result = qword_31BEC0;
  if (!qword_31BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BEC0);
  }

  return result;
}

unint64_t sub_C0A0C()
{
  result = qword_31BEC8;
  if (!qword_31BEC8)
  {
    sub_2F9C(&qword_31BEB0, &qword_271FD8);
    sub_8E38(&qword_31BED0, &qword_31BED8, &qword_271FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BEC8);
  }

  return result;
}

unint64_t sub_C0AC8()
{
  result = qword_31BF08;
  if (!qword_31BF08)
  {
    sub_2F9C(&qword_31BEF8, &qword_272020);
    sub_C0B84();
    sub_C26FC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF08);
  }

  return result;
}

unint64_t sub_C0B84()
{
  result = qword_31BF10;
  if (!qword_31BF10)
  {
    sub_2F9C(&qword_31BF18, &qword_272028);
    sub_C0C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF10);
  }

  return result;
}

unint64_t sub_C0C10()
{
  result = qword_31BF20;
  if (!qword_31BF20)
  {
    sub_2F9C(&qword_31BF28, &qword_272030);
    sub_C26FC(&qword_317D60, type metadata accessor for CoverView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF20);
  }

  return result;
}

uint64_t sub_C0CE4()
{
  v1 = type metadata accessor for ShareableAsset(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 8);

  sub_BE218(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  v5 = *(v1 + 20);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_261180();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  v8 = (v3 + *(v1 + 24));
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v10 = sub_261690();
    (*(*(v10 - 8) + 8))(&v8[v9], v10);
  }

  else
  {
    v11 = *v8;
  }

  return swift_deallocObject();
}

uint64_t sub_C0E98(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareableAsset(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_B2600(a1, v4);
}

uint64_t sub_C0F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for SummaryFrame() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_B80B8(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_C0FF4()
{
  result = qword_31BF40;
  if (!qword_31BF40)
  {
    sub_2F9C(&qword_31BBA8, &unk_271AC0);
    sub_C1080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF40);
  }

  return result;
}

unint64_t sub_C1080()
{
  result = qword_31BF48;
  if (!qword_31BF48)
  {
    sub_2F9C(&qword_31BF38, &unk_272170);
    sub_C26FC(&qword_31BF50, type metadata accessor for TextLockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF48);
  }

  return result;
}

unint64_t sub_C113C()
{
  result = qword_31BF58;
  if (!qword_31BF58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_31BF58);
  }

  return result;
}

uint64_t sub_C11C0()
{
  v1 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);
  v2 = (type metadata accessor for SharableAsset() - 8);
  v3 = *(*v2 + 64);
  v4 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  v5 = *(v4 + 8);

  sub_BE218(*(v4 + 16), *(v4 + 24), *(v4 + 32));
  (*(*(v1 - 8) + 8))(v4 + v2[15], v1);
  (*(*(v9 - 8) + 8))(v4 + v2[16]);
  v6 = v2[17];
  v7 = sub_2601E0();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  return swift_deallocObject();
}

uint64_t sub_C1344@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(type metadata accessor for SharableAsset() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = type metadata accessor for SharableAsset();
  return (*(*(v3 - 8) + 16))(a1, &v1[*(v9 + 56) + v8], v3);
}

uint64_t sub_C1454()
{
  v33 = *(v0 + 16);
  v34 = *(v0 + 32);
  v1 = type metadata accessor for SummaryFrame();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80)));
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9 = v3[1];

      v10 = sub_2EF0(&qword_316DA0, &unk_277640);
      v11 = *(v10 + 48);
      v12 = sub_261180();
      (*(*(v12 - 8) + 8))(v3 + v11, v12);
      v13 = *(v3 + *(v10 + 64));

      break;
    case 1:
      v32 = v3[15];
      sub_57200(*v3, v3[1], v3[2], v3[3], v3[4], v3[5], v3[6], v3[7], v3[8], v3[9], v3[10], v3[11], v3[12], v3[13], v3[14]);
      break;
    case 0:
      v5 = *v3;

      v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v7 = sub_261180();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }

      break;
  }

  v14 = v3 + v1[13];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v16 = sub_261690();
    (*(*(v16 - 8) + 8))(&v14[v15], v16);
  }

  else
  {
    v17 = *v14;
  }

  v18 = v3 + v1[14];
  v19 = *(v18 + 1);

  v20 = type metadata accessor for SummaryFrameViewModel(0);
  v21 = *(v20 + 20);
  v22 = sub_260550();
  (*(*(v22 - 8) + 8))(&v18[v21], v22);
  v23 = *&v18[*(v20 + 24) + 8];

  v24 = *(v3 + v1[15]);

  v25 = *(v3 + v1[21]);

  v26 = *(v3 + v1[22] + 8);

  v27 = v3 + v1[23];
  v28 = sub_2601E0();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  v30 = *&v27[*(sub_2EF0(qword_31BDE8, &qword_271EC8) + 28)];

  return swift_deallocObject();
}

uint64_t sub_C1810@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for SummaryFrame() - 8);
  v10 = v2[6];
  v11 = v2 + ((*(v9 + 80) + 56) & ~*(v9 + 80));

  return sub_BD3F8(a1, v11, v5, v6, v7, v8, a2);
}

uint64_t sub_C18E8()
{
  v33 = *(v0 + 16);
  v34 = *(v0 + 32);
  v1 = type metadata accessor for SummaryFrame();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80)));
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9 = v3[1];

      v10 = sub_2EF0(&qword_316DA0, &unk_277640);
      v11 = *(v10 + 48);
      v12 = sub_261180();
      (*(*(v12 - 8) + 8))(v3 + v11, v12);
      v13 = *(v3 + *(v10 + 64));

      break;
    case 1:
      v32 = v3[15];
      sub_57200(*v3, v3[1], v3[2], v3[3], v3[4], v3[5], v3[6], v3[7], v3[8], v3[9], v3[10], v3[11], v3[12], v3[13], v3[14]);
      break;
    case 0:
      v5 = *v3;

      v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v7 = sub_261180();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }

      break;
  }

  v14 = v3 + v1[13];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v16 = sub_261690();
    (*(*(v16 - 8) + 8))(&v14[v15], v16);
  }

  else
  {
    v17 = *v14;
  }

  v18 = v3 + v1[14];
  v19 = *(v18 + 1);

  v20 = type metadata accessor for SummaryFrameViewModel(0);
  v21 = *(v20 + 20);
  v22 = sub_260550();
  (*(*(v22 - 8) + 8))(&v18[v21], v22);
  v23 = *&v18[*(v20 + 24) + 8];

  v24 = *(v3 + v1[15]);

  v25 = *(v3 + v1[21]);

  v26 = *(v3 + v1[22] + 8);

  v27 = v3 + v1[23];
  v28 = sub_2601E0();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  v30 = *&v27[*(sub_2EF0(qword_31BDE8, &qword_271EC8) + 28)];

  return swift_deallocObject();
}

uint64_t sub_C1CA4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for SummaryFrame() - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_BCD4C(v6, v1, v2, v3, v4);
}

uint64_t sub_C1D80()
{
  v33 = *(v0 + 16);
  v34 = *(v0 + 32);
  v1 = type metadata accessor for SummaryFrame();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80)));
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9 = v3[1];

      v10 = sub_2EF0(&qword_316DA0, &unk_277640);
      v11 = *(v10 + 48);
      v12 = sub_261180();
      (*(*(v12 - 8) + 8))(v3 + v11, v12);
      v13 = *(v3 + *(v10 + 64));

      break;
    case 1:
      v32 = v3[15];
      sub_57200(*v3, v3[1], v3[2], v3[3], v3[4], v3[5], v3[6], v3[7], v3[8], v3[9], v3[10], v3[11], v3[12], v3[13], v3[14]);
      break;
    case 0:
      v5 = *v3;

      v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v7 = sub_261180();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }

      break;
  }

  v14 = v3 + v1[13];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v16 = sub_261690();
    (*(*(v16 - 8) + 8))(&v14[v15], v16);
  }

  else
  {
    v17 = *v14;
  }

  v18 = v3 + v1[14];
  v19 = *(v18 + 1);

  v20 = type metadata accessor for SummaryFrameViewModel(0);
  v21 = *(v20 + 20);
  v22 = sub_260550();
  (*(*(v22 - 8) + 8))(&v18[v21], v22);
  v23 = *&v18[*(v20 + 24) + 8];

  v24 = *(v3 + v1[15]);

  v25 = *(v3 + v1[21]);

  v26 = *(v3 + v1[22] + 8);

  v27 = v3 + v1[23];
  v28 = sub_2601E0();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  v30 = *&v27[*(sub_2EF0(qword_31BDE8, &qword_271EC8) + 28)];

  return swift_deallocObject();
}

uint64_t sub_C2150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for SummaryFrame() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + v11);
  v13 = (v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_BBB44(a1, v2 + v10, v5, v6, v7, v8, a2, v12, v14, v15);
}

uint64_t sub_C2248@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  return sub_BC040(*(v1 + 48), *(v1 + 56), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), a1, *(v1 + 64));
}

uint64_t sub_C2260()
{
  v33 = *(v0 + 16);
  v34 = *(v0 + 32);
  v1 = type metadata accessor for SummaryFrame();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80)));
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9 = v3[1];

      v10 = sub_2EF0(&qword_316DA0, &unk_277640);
      v11 = *(v10 + 48);
      v12 = sub_261180();
      (*(*(v12 - 8) + 8))(v3 + v11, v12);
      v13 = *(v3 + *(v10 + 64));

      break;
    case 1:
      v32 = v3[15];
      sub_57200(*v3, v3[1], v3[2], v3[3], v3[4], v3[5], v3[6], v3[7], v3[8], v3[9], v3[10], v3[11], v3[12], v3[13], v3[14]);
      break;
    case 0:
      v5 = *v3;

      v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v7 = sub_261180();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }

      break;
  }

  v14 = v3 + v1[13];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v16 = sub_261690();
    (*(*(v16 - 8) + 8))(&v14[v15], v16);
  }

  else
  {
    v17 = *v14;
  }

  v18 = v3 + v1[14];
  v19 = *(v18 + 1);

  v20 = type metadata accessor for SummaryFrameViewModel(0);
  v21 = *(v20 + 20);
  v22 = sub_260550();
  (*(*(v22 - 8) + 8))(&v18[v21], v22);
  v23 = *&v18[*(v20 + 24) + 8];

  v24 = *(v3 + v1[15]);

  v25 = *(v3 + v1[21]);

  v26 = *(v3 + v1[22] + 8);

  v27 = v3 + v1[23];
  v28 = sub_2601E0();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  v30 = *&v27[*(sub_2EF0(qword_31BDE8, &qword_271EC8) + 28)];

  return swift_deallocObject();
}

uint64_t sub_C2628()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for SummaryFrame() - 8);
  v6 = *(v0 + ((*(v5 + 64) + ((*(v5 + 80) + 48) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = type metadata accessor for SummaryFrame();
  return sub_B530C(v7);
}

uint64_t sub_C26FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_C274C()
{
  result = qword_31BF88;
  if (!qword_31BF88)
  {
    sub_2F9C(&qword_31BF80, &qword_2721D8);
    sub_C2804();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF88);
  }

  return result;
}

unint64_t sub_C2804()
{
  result = qword_31BF90;
  if (!qword_31BF90)
  {
    sub_2F9C(&qword_31BF98, &qword_272210);
    sub_C2888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF90);
  }

  return result;
}

unint64_t sub_C2888()
{
  result = qword_31BFA0;
  if (!qword_31BFA0)
  {
    sub_2F9C(&qword_31BFA8, &qword_272218);
    sub_8E38(&qword_31BFB0, &qword_31BFB8, &qword_272220);
    sub_8E38(&qword_31BFC0, &qword_31BFC8, &qword_272228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BFA0);
  }

  return result;
}

uint64_t sub_C2968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_C29D0()
{
  result = qword_31C008;
  if (!qword_31C008)
  {
    sub_2F9C(&qword_31C000, &qword_272290);
    sub_C2A88();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C008);
  }

  return result;
}

unint64_t sub_C2A88()
{
  result = qword_31C010;
  if (!qword_31C010)
  {
    sub_2F9C(&qword_3186C0, &qword_26B830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C010);
  }

  return result;
}

unint64_t sub_C2B20()
{
  result = qword_31C030;
  if (!qword_31C030)
  {
    sub_2F9C(&qword_31C020, &qword_2722D0);
    sub_C2BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C030);
  }

  return result;
}

unint64_t sub_C2BA4()
{
  result = qword_31C038;
  if (!qword_31C038)
  {
    sub_2F9C(&qword_31C040, &unk_2722E0);
    sub_8E38(&qword_31C048, &qword_31C050, &qword_28CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C038);
  }

  return result;
}

unint64_t sub_C2C5C()
{
  result = qword_31C058;
  if (!qword_31C058)
  {
    sub_2F9C(&qword_31C028, &qword_2722D8);
    sub_C2CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C058);
  }

  return result;
}

unint64_t sub_C2CE8()
{
  result = qword_31C060;
  if (!qword_31C060)
  {
    sub_2F9C(&qword_31C068, &qword_2722F0);
    sub_C2D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C060);
  }

  return result;
}

unint64_t sub_C2D74()
{
  result = qword_31C070;
  if (!qword_31C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C070);
  }

  return result;
}

unint64_t sub_C2DD4()
{
  result = qword_31C098;
  if (!qword_31C098)
  {
    sub_2F9C(&qword_31BE98, &qword_271FA0);
    sub_2F9C(&qword_31BE88, &qword_271F90);
    sub_8E38(&qword_31BEE0, &qword_31BE88, &qword_271F90);
    swift_getOpaqueTypeConformance2();
    sub_C26FC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C098);
  }

  return result;
}

uint64_t View.useDarkColorSchemeWhenInVibrantContext(isEnabled:)(char a1)
{
  v2 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = *(v2 + 20);
  *&v5[v6] = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v5[*(v2 + 24)] = a1;
  sub_262E30();
  return sub_C3078(v5);
}

uint64_t type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier()
{
  result = qword_31C0F8;
  if (!qword_31C0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C3078(uint64_t a1)
{
  v2 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C30D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier();
  sub_261730();
  sub_C3140();
  return swift_getWitnessTable();
}

unint64_t sub_C3140()
{
  result = qword_319450;
  if (!qword_319450)
  {
    type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319450);
  }

  return result;
}

uint64_t sub_C31AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_316F70, &unk_2693C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C3274(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C3320()
{
  sub_3E7AC();
  if (v0 <= 0x3F)
  {
    sub_50224();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_C33C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v32 - v6);
  v8 = sub_261C90();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261180();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier();
  if (*(v2 + *(v17 + 24)) != 1)
  {
    goto LABEL_4;
  }

  v18 = *v2;
  if (*(v2 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(v13 + 104))(v16, enum case for ColorScheme.dark(_:), v12);
    goto LABEL_9;
  }

  v34 = v17;

  sub_264900();
  v32 = v8;
  v23 = sub_2624B0();
  v33 = a1;
  v24 = v23;
  v8 = v32;
  sub_260D10();

  a1 = v33;
  sub_261C80();
  swift_getAtKeyPath();
  sub_4054(v18, 0);
  (*(v35 + 8))(v11, v8);
  v17 = v34;
  if (v37 == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_C37E4(v2 + *(v17 + 20), v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v16, v7, v12);
  }

  else
  {
    v19 = v8;
    v20 = *v7;
    sub_264900();
    v21 = a1;
    v22 = sub_2624B0();
    sub_260D10();

    a1 = v21;
    sub_261C80();
    swift_getAtKeyPath();

    (*(v35 + 8))(v11, v19);
  }

LABEL_9:
  KeyPath = swift_getKeyPath();
  v26 = sub_2EF0(&qword_31C138, &unk_272438);
  v27 = v36;
  v28 = (v36 + *(v26 + 36));
  v29 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  (*(v13 + 32))(v28 + *(v29 + 28), v16, v12);
  *v28 = KeyPath;
  v30 = sub_2EF0(&qword_31C140, &qword_272448);
  return (*(*(v30 - 8) + 16))(v27, a1, v30);
}

uint64_t sub_C37E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_C3860()
{
  result = qword_31C148;
  if (!qword_31C148)
  {
    sub_2F9C(&qword_31C138, &unk_272438);
    sub_8E38(&qword_31C150, &qword_31C140, &qword_272448);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C148);
  }

  return result;
}

uint64_t sub_C3944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v2, v11, &qword_3173E0, &qword_26B890);
  if (v12 == 1)
  {
    return sub_F7CC(v11, a1);
  }

  sub_264900();
  v10 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

double sub_C3AB4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    return *(v0 + 48);
  }

  v8 = *(v0 + 48);

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_C3C00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for FlatCoverView();
  sub_8198(v1 + *(v12 + 28), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_C51FC(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t FlatCoverView.init(assetInfo:intrinsicSize:cornerRadius:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  type metadata accessor for ProfileRestrictions();
  sub_C51B4(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *(a2 + 64) = sub_261900();
  *(a2 + 72) = v10;
  v11 = type metadata accessor for FlatCoverView();
  v12 = v11[7];
  *(a2 + v12) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  result = sub_F7CC(a1, a2 + v11[8]);
  v14 = (a2 + v11[9]);
  *v14 = a3;
  v14[1] = a4;
  *(a2 + v11[10]) = a5;
  return result;
}

uint64_t FlatCoverView.body.getter@<X0>(void (**a1)(void *a1)@<X8>)
{
  v3 = type metadata accessor for FlatCoverView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_C40E4();
  sub_C514C(v1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FlatCoverView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_C51FC(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FlatCoverView);
  v9 = type metadata accessor for ImageResourceLoader();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  sub_2EF0(&qword_318728, &qword_26DBF0);
  v13 = swift_allocObject();
  *(v13 + 28) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v12 + 24) = v13;

  sub_2603B0();
  v17[1] = v12;

  sub_2631D0();

  v15 = v17[2];
  v16 = v17[3];
  *a1 = sub_C4BEC;
  a1[1] = v8;
  a1[2] = v6;
  a1[3] = v15;
  a1[4] = v16;
  return result;
}

uint64_t sub_C40E4()
{
  v1 = type metadata accessor for FlatCoverView();
  v2 = (v0 + *(v1 + 32));
  v3 = v2[4];
  sub_2E18(v2, v2[3]);
  v4 = sub_260900();
  v6 = v5;
  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v9 = v2[4];
    sub_2E18(v2, v2[3]);
    v10 = *(v9 + 8);
    v7 = sub_2606E0();
  }

  v8 = v5;
  sub_C3944(v22);
  v11 = v23;
  v12 = v24;
  sub_2E18(v22, v23);
  v20[0] = v7;
  v20[1] = v8;
  v21 = v6 != 0;
  v13 = (v0 + *(v1 + 36));
  v14 = *v13;
  v15 = v13[1];
  v16 = sub_C3AB4();
  sub_C4548(&v19);
  v17 = (*(v12 + 16))(v20, &v19, v11, v12, v14, v15, v16);
  sub_6204();
  sub_3080(v22);
  return v17;
}

void sub_C4254(void *a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31C210, &qword_272540);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v25[-v6];
  v8 = sub_2EF0(&qword_31C218, &qword_272548);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v25[-v10];
  if (a1)
  {
    v12 = *(a2 + *(type metadata accessor for FlatCoverView() + 40));
    v13 = a1;
    UIImage.cornerRadius(_:)(v12);
    *v7 = sub_2630A0();
    swift_storeEnumTagMultiPayload();
    sub_C4FD4();

    sub_261F80();
  }

  else
  {
    v14 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    v15 = type metadata accessor for FlatCoverView();
    v16 = (a2 + *(v15 + 36));
    v17 = *v16;
    v18 = v16[1];
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    *&v26[22] = v28;
    *&v26[38] = v29;
    *&v26[6] = v27;
    v19 = *(a2 + *(v15 + 40));
    v20 = &v11[*(v8 + 36)];
    v21 = *(sub_2617E0() + 20);
    v22 = enum case for RoundedCornerStyle.continuous(_:);
    v23 = sub_261DD0();
    (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
    *v20 = v19;
    *(v20 + 1) = v19;
    *&v20[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
    *v11 = v14;
    *(v11 + 4) = 256;
    v24 = *&v26[16];
    *(v11 + 10) = *v26;
    *(v11 + 26) = v24;
    *(v11 + 42) = *&v26[32];
    *(v11 + 7) = *&v26[46];
    sub_8198(v11, v7, &qword_31C218, &qword_272548);
    swift_storeEnumTagMultiPayload();
    sub_C4FD4();
    sub_261F80();
    sub_8E80(v11, &qword_31C218, &qword_272548);
  }
}

void sub_C4548(_WORD *a1@<X8>)
{
  v41 = a1;
  v2 = sub_2EF0(&qword_31C238, &qword_274960);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v40 = &v39 - v4;
  v5 = sub_261180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ColorConstants(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 64);
  if (v18)
  {
    v19 = 16710908;
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v18;
    sub_260FF0();

    if ((v42[0] & 1) == 0)
    {
      v21 = type metadata accessor for FlatCoverView();
      v22 = (v1 + *(v21 + 32));
      v23 = v22[4];
      sub_2E18(v22, v22[3]);
      if (sub_260870())
      {
        sub_C3C00(v17);
        sub_C514C(v17, v13, type metadata accessor for ColorConstants.Environment);
        (*(v6 + 104))(v9, enum case for ColorScheme.dark(_:), v5);
        sub_C51B4(&qword_3183A0, &type metadata accessor for ColorScheme);
        v24 = sub_264390();
        v25 = *(v6 + 8);
        v25(v9, v5);
        sub_60B08(v17);
        v25(v13, v5);
        v26 = v24 ^ 1;
        v27 = (v1 + *(v21 + 32));
        v28 = v27[4];
        sub_2E18(v27, v27[3]);
        v29 = sub_260860();
        if (v29)
        {
          if (v29 == 1)
          {
            sub_30CC(v27, v42);
            sub_2EF0(&qword_31AEE8, &qword_28CD40);
            v30 = sub_260680();
            v31 = v40;
            v32 = swift_dynamicCast();
            v33 = *(*(v30 - 8) + 56);
            if (v32)
            {
              v34 = *(v30 - 8);
              v33(v31, 0, 1, v30);
              v35 = sub_260670();
              (*(v34 + 8))(v31, v30);
            }

            else
            {
              v33(v31, 1, 1, v30);
              sub_8E80(v31, &qword_31C238, &qword_274960);
              v35 = 0;
            }

            if (v24)
            {
              v36 = 0x10000;
            }

            else
            {
              v36 = 65792;
            }

            v19 = v36 & 0xFFFFFFFE | v35 & 1;
          }

          else
          {
            v19 = v26 & 1 | 0xFF800000;
          }
        }

        else
        {
          v19 = (v26 & 1 | 0x10100) + 4128768;
        }
      }
    }

    v37 = v41;
    *v41 = v19;
    *(v37 + 2) = BYTE2(v19);
  }

  else
  {
    v38 = *(v1 + 72);
    type metadata accessor for ProfileRestrictions();
    sub_C51B4(&qword_326DC0, type metadata accessor for ProfileRestrictions);
    sub_2618F0();
    __break(1u);
  }
}

uint64_t type metadata accessor for FlatCoverView()
{
  result = qword_31C1B0;
  if (!qword_31C1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C4A90()
{
  v1 = type metadata accessor for FlatCoverView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
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

  v6 = *(v1 + 28);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_261180();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  sub_3080((v4 + *(v1 + 32)));

  return swift_deallocObject();
}

void sub_C4BEC(void *a1)
{
  v3 = *(type metadata accessor for FlatCoverView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_C4254(a1, v4);
}

uint64_t sub_C4C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_C4D80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }

  return result;
}

void sub_C4E4C()
{
  sub_5027C();
  if (v0 <= 0x3F)
  {
    sub_14C14();
    if (v1 <= 0x3F)
    {
      sub_95884();
      if (v2 <= 0x3F)
      {
        sub_C4F38();
        if (v3 <= 0x3F)
        {
          sub_44744();
          if (v4 <= 0x3F)
          {
            type metadata accessor for CGSize(319);
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

void sub_C4F38()
{
  if (!qword_316FE8)
  {
    type metadata accessor for ColorConstants(255);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_316FE8);
    }
  }
}

unint64_t sub_C4FD4()
{
  result = qword_31C220;
  if (!qword_31C220)
  {
    sub_2F9C(&qword_31C218, &qword_272548);
    sub_C508C();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C220);
  }

  return result;
}

unint64_t sub_C508C()
{
  result = qword_31C228;
  if (!qword_31C228)
  {
    sub_2F9C(&qword_31C230, &qword_272550);
    sub_8E38(&qword_3188D8, &qword_3188C8, &qword_26BDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C228);
  }

  return result;
}

uint64_t sub_C514C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_C51B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C51FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_C5264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = sub_261690();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v43 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v42 = &v40 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v40 - v19;
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v44 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier();
  v23 = v1 + *(v44 + 24);
  v24 = a1;
  sub_40CF0(a1);
  v45 = v2;
  sub_C5F44(v2, v10);
  v25 = v12[6];
  if (v25(v10, 1, v11) == 1)
  {
    v26 = v12;
    sub_8E80(v10, &qword_316890, &qword_2725A0);
  }

  else
  {
    v41 = v8;
    v40 = v12[4];
    v40(v22, v10, v11);
    sub_C6CF0(&qword_317538, &type metadata accessor for DynamicTypeSize);
    v27 = sub_264370();
    v26 = v12;
    v28 = v12[1];
    if (v27)
    {
      v28(v22, v11);
      v29 = v20;
      v30 = v24;
    }

    else
    {
      v28(v24, v11);
      v29 = v20;
      v30 = v22;
    }

    v31 = v40;
    v40(v29, v30, v11);
    v31(v24, v20, v11);
    v8 = v41;
  }

  sub_C5F44(v45 + *(v44 + 20), v8);
  if (v25(v8, 1, v11) == 1)
  {
    return sub_8E80(v8, &qword_316890, &qword_2725A0);
  }

  v33 = v26[4];
  v34 = v42;
  v33(v42, v8, v11);
  sub_C6CF0(&qword_317538, &type metadata accessor for DynamicTypeSize);
  v35 = sub_264360();
  v36 = v26[1];
  if (v35)
  {
    v36(v34, v11);
    v37 = v43;
    v38 = v43;
    v39 = v24;
  }

  else
  {
    v36(v24, v11);
    v37 = v43;
    v38 = v43;
    v39 = v34;
  }

  v33(v38, v39, v11);
  return (v33)(v24, v37, v11);
}

uint64_t sub_C569C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_C69EC();
  sub_261CB0();
  v6 = sub_261690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_261A60();
  result = (v8)(v5, 1, v6);
  if (result != 1)
  {
    return sub_8E80(v5, &qword_316890, &qword_2725A0);
  }

  return result;
}

uint64_t sub_C57FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_C69EC();
  sub_261CB0();
  v6 = sub_261690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_261A60();
  result = (v8)(v5, 1, v6);
  if (result != 1)
  {
    return sub_8E80(v5, &qword_316890, &qword_2725A0);
  }

  return result;
}

uint64_t sub_C5960(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_261690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(v10, a1, v6);
  v11(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_C69EC();
  sub_261CC0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_C5AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = sub_261690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_31C300, &qword_272658);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  KeyPath = swift_getKeyPath();
  v15 = *(a2 + 24);
  v16 = &v13[*(v10 + 36)];
  v17 = sub_2EF0(&qword_31C308, &qword_272660);
  sub_40CF0(v16 + *(v17 + 28));
  *v16 = KeyPath;
  v18 = sub_2EF0(&qword_31C310, &qword_272668);
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  sub_C5264(v9);
  sub_C6908();
  sub_262B60();
  (*(v6 + 8))(v9, v5);
  return sub_8E80(v13, &qword_31C300, &qword_272658);
}

uint64_t View.restrictedDynamicTypeSize(min:max:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v6 = sub_2EF0(&qword_316890, &qword_2725A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C5F44(a1, v12);
  sub_C5F44(a2, v9);
  v17 = sub_261690();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v19 = *(v13 + 20);
  v18(&v16[v19], 1, 1, v17);
  v20 = *(v13 + 24);
  *&v16[v20] = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  sub_C5FBC(v12, v16);
  sub_C5FBC(v9, &v16[v19]);
  sub_262E30();
  return sub_C602C(v16);
}

uint64_t type metadata accessor for RestrictedDynamicTypeSizeViewModifier()
{
  result = qword_31C2B8;
  if (!qword_31C2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C5F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C5FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_C602C(uint64_t a1)
{
  v2 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.nonAXDynamicTypeSize()(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261690();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v8, 1, 1, v13);
  (*(v14 + 104))(v6, enum case for DynamicTypeSize.xxxLarge(_:), v13);
  v15(v6, 0, 1, v13);
  v15(v12, 1, 1, v13);
  v16 = *(v9 + 20);
  v15(&v12[v16], 1, 1, v13);
  v17 = *(v9 + 24);
  *&v12[v17] = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  sub_C5FBC(v8, v12);
  sub_C5FBC(v6, &v12[v16]);
  sub_262E30();
  return sub_C602C(v12);
}

uint64_t View.unrestrictedDynamicTypeSize()(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261690();
  v14 = *(*(v13 - 8) + 56);
  v14(v8, 1, 1, v13);
  v14(v5, 1, 1, v13);
  v14(v12, 1, 1, v13);
  v15 = *(v9 + 20);
  v14(&v12[v15], 1, 1, v13);
  v16 = *(v9 + 24);
  *&v12[v16] = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  sub_C5FBC(v8, v12);
  sub_C5FBC(v5, &v12[v15]);
  sub_262E30();
  return sub_C602C(v12);
}

uint64_t sub_C64F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for RestrictedDynamicTypeSizeViewModifier();
  sub_261730();
  sub_C6CF0(&qword_31C258, type metadata accessor for RestrictedDynamicTypeSizeViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_C65A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316890, &qword_2725A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_319858, &unk_2725D0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_C66BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316890, &qword_2725A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_319858, &unk_2725D0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_C67D0()
{
  sub_C688C(319, &qword_31C2C8, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_C688C(319, &qword_3198C8, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C688C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_261690();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_C6908()
{
  result = qword_31C318;
  if (!qword_31C318)
  {
    sub_2F9C(&qword_31C300, &qword_272658);
    sub_8E38(&qword_31C320, &qword_31C310, &qword_272668);
    sub_8E38(&qword_31C328, &qword_31C308, &qword_272660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C318);
  }

  return result;
}

unint64_t sub_C69EC()
{
  result = qword_31C330;
  if (!qword_31C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C330);
  }

  return result;
}

uint64_t sub_C6A50()
{
  sub_2F9C(&qword_31C300, &qword_272658);
  sub_C6908();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C6AB4()
{
  v0 = sub_2EF0(&qword_316890, &qword_2725A0);
  sub_B600(v0, qword_31C240);
  v1 = sub_B080(v0, qword_31C240);
  v2 = sub_261690();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_C6B54@<X0>(uint64_t a1@<X8>)
{
  if (qword_315928 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  v3 = sub_B080(v2, qword_31C240);

  return sub_C5F44(v3, a1);
}

uint64_t sub_C6BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_C6C3C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_C6C3C()
{
  result = qword_31C338;
  if (!qword_31C338)
  {
    sub_2F9C(&qword_316890, &qword_2725A0);
    sub_C6CF0(&qword_317AB0, &type metadata accessor for DynamicTypeSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C338);
  }

  return result;
}

uint64_t sub_C6CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ListItemMetadataTitleWithSubtitle.init(title:subtitle:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

uint64_t ListItemMetadataTitleWithSubtitle.title(localizer:)()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ListItemMetadataTitleWithSubtitle.subtitle(localizer:)()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_C6DF8()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 1702521203;
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

uint64_t sub_C6E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C7540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C6E70(uint64_t a1)
{
  v2 = sub_C7144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C6EAC(uint64_t a1)
{
  v2 = sub_C7144();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListItemMetadataTitleWithSubtitle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_31C340, &qword_2726D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_C7144();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v25 = 0;
  v11 = sub_264DC0();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  v14 = sub_264D70();
  v16 = v15;
  v20 = v14;
  v22 = 2;
  sub_C7198();
  sub_264DF0();
  (*(v6 + 8))(v9, v5);
  v17 = v23;
  v18 = v20;
  *a2 = v21;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;

  sub_3080(a1);
}

unint64_t sub_C7144()
{
  result = qword_31C348;
  if (!qword_31C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C348);
  }

  return result;
}

unint64_t sub_C7198()
{
  result = qword_31C350;
  if (!qword_31C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C350);
  }

  return result;
}

unint64_t sub_C71EC(uint64_t a1)
{
  result = sub_C7214();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C7214()
{
  result = qword_31C358;
  if (!qword_31C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C358);
  }

  return result;
}

unint64_t sub_C7268(uint64_t a1)
{
  result = sub_C7290();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C7290()
{
  result = qword_31C360;
  if (!qword_31C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C360);
  }

  return result;
}

unint64_t sub_C72FC(uint64_t a1)
{
  result = sub_C7324();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C7324()
{
  result = qword_31C368;
  if (!qword_31C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C368);
  }

  return result;
}

__n128 sub_C7378(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_C738C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_C73D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_C743C()
{
  result = qword_31C370;
  if (!qword_31C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C370);
  }

  return result;
}

unint64_t sub_C7494()
{
  result = qword_31C378;
  if (!qword_31C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C378);
  }

  return result;
}

unint64_t sub_C74EC()
{
  result = qword_31C380;
  if (!qword_31C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C380);
  }

  return result;
}

uint64_t sub_C7540(uint64_t a1, uint64_t a2)
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

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
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

uint64_t SeriesHeaderCoverStackLayout.init(covers:pageWidth:heroWidthScale:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  v7 = *a2;
  v8 = *(a1 + 16);
  if (v8 >= 6)
  {
    sub_C8914(a1, a1 + 32, 0, 0xBuLL);
    v10 = v9;

    v8 = *(v10 + 16);
    v5 = v10;
  }

  if (v8)
  {
    memmove(v19, (v5 + 32), 0x80uLL);
    v11 = sub_2F8B8(v19);
    v12 = sub_2F950(v19);
    if (v11)
    {
      v13 = 1.0;
      if (v11 != 1)
      {
        v13 = 0.641025641;
      }
    }

    else
    {
      v13 = *(v12 + 16);
    }

    v15 = sub_C8DDC(v5, a4, dbl_272A80[v7] * a4, v13);
    v17 = v16;
    v18 = v15;

    *a3 = v18;
    *(a3 + 1) = v17;
    a3[2] = v13;
  }

  else
  {

    *a3 = 0.0;
    a3[1] = 0.0;
    a3[2] = 0.0;
  }

  return result;
}

void SeriesHeaderCoverStackLayout.HeroWidthScale.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 0.27)
  {
    *a1 = 0;
  }

  else if (a2 == 0.51)
  {
    *a1 = 1;
  }

  else if (a2 == 0.78)
  {
    *a1 = 2;
  }

  else
  {
    if (a2 == 1.0)
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }

    *a1 = v2;
  }
}

double sub_C7858@<D0>(double *a1@<X8>)
{
  result = dbl_272A80[*v1];
  *a1 = result;
  return result;
}

uint64_t SeriesHeaderCoverStackLayout.axIsSeries.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 < 2)
  {
    return 0;
  }

  memmove(__dst, (v1 + 96), 0x80uLL);
  v3 = sub_2F8B8(__dst);
  v4 = sub_2F950(__dst);
  if (v3)
  {
    return 0;
  }

  v6 = v4;
  result = *(v4 + 64);
  if (result)
  {
    v7 = v6[12];
    v8 = v6[13];
    v9 = v6[10];

    v10 = 0;
    v11 = (v1 + 96);
    while (v10 < *(v1 + 16))
    {
      v12 = *(v11 - 4);
      v13 = *(v11 - 3);
      v14 = *(v11 - 1);
      v30[2] = *(v11 - 2);
      v30[3] = v14;
      v30[0] = v12;
      v30[1] = v13;
      v15 = *v11;
      v16 = v11[1];
      v17 = v11[3];
      v30[6] = v11[2];
      v30[7] = v17;
      v30[4] = v15;
      v30[5] = v16;
      v18 = v11[4];
      v19 = v11[5];
      v20 = v11[7];
      v30[10] = v11[6];
      v30[11] = v20;
      v30[8] = v18;
      v30[9] = v19;
      v21 = *v11;
      v22 = v11[1];
      v23 = v11[3];
      v31[2] = v11[2];
      v31[3] = v23;
      v31[0] = v21;
      v31[1] = v22;
      v24 = v11[4];
      v25 = v11[5];
      v26 = v11[7];
      v31[6] = v11[6];
      v31[7] = v26;
      v31[4] = v24;
      v31[5] = v25;
      v27 = sub_2F8B8(v31);
      v28 = sub_2F950(v31);
      if (v27)
      {
        sub_8E80((v6 + 7), &qword_31C388, &qword_2728F0);
        sub_C9340(v30);
        return 0;
      }

      if (!v28[8] || !v8 || (v29 = v28[13]) == 0 || ((result = v28[12], result != v7) || v29 != v8) && (result = sub_264F10(), (result & 1) == 0))
      {
        sub_8E80((v6 + 7), &qword_31C388, &qword_2728F0);
        return 0;
      }

      ++v10;
      v11 += 12;
      if (v2 == v10)
      {
        sub_8E80((v6 + 7), &qword_31C388, &qword_2728F0);
        return 1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SeriesHeaderCoverStackLayout.axLabel.getter()
{
  v1 = *v0;
  *v21 = *v0;
  *&v21[8] = *(v0 + 1);
  result = SeriesHeaderCoverStackLayout.axIsSeries.getter();
  if (result)
  {
    if (!*(v1 + 16))
    {
      __break(1u);
      return result;
    }

    v4 = *(v1 + 96);
    v3 = *(v1 + 112);
    v5 = *(v1 + 144);
    v26 = *(v1 + 128);
    v27 = v5;
    v6 = *(v1 + 160);
    v7 = *(v1 + 176);
    v8 = *(v1 + 208);
    v30 = *(v1 + 192);
    v31 = v8;
    v28 = v6;
    v29 = v7;
    v24 = v4;
    v25 = v3;
    v9 = *(v1 + 48);
    *v21 = *(v1 + 32);
    *&v21[16] = v9;
    v10 = *(v1 + 80);
    v22 = *(v1 + 64);
    v23 = v10;
    v11 = *(v1 + 176);
    v12 = *(v1 + 192);
    v32[4] = *(v1 + 160);
    v32[5] = v11;
    v13 = *(v1 + 208);
    v32[6] = v12;
    v32[7] = v13;
    v14 = *(v1 + 112);
    v32[0] = *(v1 + 96);
    v32[1] = v14;
    v15 = *(v1 + 144);
    v32[2] = *(v1 + 128);
    v32[3] = v15;
    v16 = sub_2F8B8(v32);
    v17 = sub_2F950(v32);
    if (!v16)
    {
      if (v17[8] && v17[13])
      {
        v18 = v17[12];
        v19 = v17[13];

        return v18;
      }

      sub_C9394(v21, &v20);
    }

    sub_C9340(v21);
  }

  return 0;
}

double SeriesHeaderCoverStackLayout.intrinsicSize.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8) * *(v0 + 16);
  v3 = v2 + sub_C8D20(*v0);
  return v3 + sub_C8D7C(v1);
}

double SeriesHeaderCoverStackLayout.centeringOffset.getter()
{
  v1 = *v0;
  v2 = sub_C8D20(*v0);
  return (v2 - sub_C8D7C(v1)) * 0.5;
}

BOOL static SeriesHeaderCoverStackLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = sub_C7C54(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t sub_C7C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 176);
    v89 = *(a1 + 160);
    v90 = v3;
    v4 = *(a1 + 208);
    v91 = *(a1 + 192);
    v92 = v4;
    v5 = *(a1 + 112);
    v85 = *(a1 + 96);
    v86 = v5;
    v6 = *(a1 + 144);
    v87 = *(a1 + 128);
    v88 = v6;
    v7 = *(a1 + 48);
    v81 = *(a1 + 32);
    v82 = v7;
    v8 = *(a1 + 80);
    v83 = *(a1 + 64);
    v84 = v8;
    v9 = *(a2 + 160);
    v102 = *(a2 + 176);
    v10 = *(a2 + 208);
    v103 = *(a2 + 192);
    v104 = v10;
    v11 = *(a2 + 112);
    v97 = *(a2 + 96);
    v98 = v11;
    v12 = *(a2 + 144);
    v99 = *(a2 + 128);
    v100 = v12;
    v101 = v9;
    v13 = *(a2 + 48);
    v93 = *(a2 + 32);
    v94 = v13;
    v14 = *(a2 + 80);
    v95 = *(a2 + 64);
    v96 = v14;
    if (v81 == v93)
    {
      v15 = (a2 + 224);
      v16 = (a1 + 224);
      while (1)
      {
        if (*(&v81 + 1) != *(&v93 + 1) || *&v82 != *&v94 || *(&v82 + 1) != *(&v94 + 1) || v83 != v95 || *(&v83 + 1) != *(&v95 + 1) || *&v84 != *&v96 || *(&v84 + 1) != *(&v96 + 1))
        {
          return 0;
        }

        v17 = *(v16 - 5);
        v18 = *(v16 - 3);
        v68 = *(v16 - 4);
        v69 = v18;
        v19 = *(v16 - 3);
        v20 = *(v16 - 1);
        v70 = *(v16 - 2);
        v71 = v20;
        v21 = *(v16 - 7);
        v65[0] = *(v16 - 8);
        v65[1] = v21;
        v22 = *(v16 - 5);
        v24 = *(v16 - 8);
        v23 = *(v16 - 7);
        v66 = *(v16 - 6);
        v67 = v22;
        v25 = *(v15 - 5);
        v74 = *(v15 - 6);
        v75 = v25;
        v26 = *(v15 - 7);
        v72 = *(v15 - 8);
        v73 = v26;
        v27 = *(v15 - 1);
        v78 = *(v15 - 2);
        v79 = v27;
        v28 = *(v15 - 3);
        v76 = *(v15 - 4);
        v77 = v28;
        v80[2] = v66;
        v80[3] = v17;
        v80[0] = v24;
        v80[1] = v23;
        v29 = *(v16 - 1);
        v80[6] = v70;
        v80[7] = v29;
        v80[4] = v68;
        v80[5] = v19;
        v30 = sub_2F8B8(v80);
        if (!v30)
        {
          break;
        }

        if (v30 == 1)
        {
          v31 = *sub_2F950(v80);
          v56[2] = v99;
          v56[3] = v100;
          v56[0] = v97;
          v56[1] = v98;
          v56[6] = v103;
          v56[7] = v104;
          v56[4] = v101;
          v56[5] = v102;
          if (sub_2F8B8(v56) != 1)
          {
            goto LABEL_32;
          }

          v32 = *sub_2F950(v56);
          sub_8E80(v65, &qword_31C3F0, &unk_272A40);
          sub_C9340(&v81);
LABEL_26:
          if (v31 != v32)
          {
            return 0;
          }

          goto LABEL_27;
        }

        v35 = sub_2F950(v80);
        v36 = *v35;
        v37 = *(v35 + 8);
        v61 = v101;
        v62 = v102;
        v63 = v103;
        v64 = v104;
        v57 = v97;
        v58 = v98;
        v59 = v99;
        v60 = v100;
        if (sub_2F8B8(&v57) != 2)
        {
          goto LABEL_32;
        }

        v38 = sub_2F950(&v57);
        v39 = *v38;
        v40 = *(v38 + 8);
        sub_C9394(&v93, v56);
        sub_8E80(v65, &qword_31C3F0, &unk_272A40);
        if (v36 != v39)
        {
          return 0;
        }

        sub_C9340(&v93);
        sub_C9340(&v81);
        if (v37 != v40)
        {
          return 0;
        }

LABEL_27:
        if (!--v2)
        {
          return 1;
        }

        v42 = v16[9];
        v89 = v16[8];
        v90 = v42;
        v43 = v16[11];
        v91 = v16[10];
        v92 = v43;
        v44 = v16[5];
        v85 = v16[4];
        v86 = v44;
        v45 = v16[7];
        v87 = v16[6];
        v88 = v45;
        v46 = v16[1];
        v81 = *v16;
        v82 = v46;
        v47 = v16[3];
        v83 = v16[2];
        v84 = v47;
        v48 = v15[8];
        v102 = v15[9];
        v49 = v15[11];
        v103 = v15[10];
        v104 = v49;
        v50 = v15[5];
        v97 = v15[4];
        v98 = v50;
        v51 = v15[7];
        v99 = v15[6];
        v100 = v51;
        v101 = v48;
        v52 = v15[1];
        v93 = *v15;
        v94 = v52;
        v53 = v15[2];
        v54 = v15[3];
        v15 += 12;
        v16 += 12;
        v95 = v53;
        v96 = v54;
        if (v81 != v93)
        {
          return 0;
        }
      }

      v33 = sub_2F950(v80);
      v61 = v101;
      v62 = v102;
      v63 = v103;
      v64 = v104;
      v57 = v97;
      v58 = v98;
      v59 = v99;
      v60 = v100;
      if (sub_2F8B8(&v57))
      {
        sub_C9394(&v81, v56);
        sub_C9394(&v81, v56);
LABEL_32:
        sub_C9394(&v93, v56);
        sub_8E80(v65, &qword_31C3F0, &unk_272A40);
        sub_C9340(&v81);
        return 0;
      }

      v34 = sub_2F950(&v57);
      v31 = *(v33 + 120);
      v32 = *(v34 + 120);
      if (*v33 == *v34 && *(v33 + 8) == *(v34 + 8))
      {
        sub_C9394(&v81, v56);
        sub_C9394(&v93, v56);
        sub_8E80(v65, &qword_31C3F0, &unk_272A40);
      }

      else
      {
        v41 = sub_264F10();
        sub_C9394(&v81, v56);
        sub_C9394(&v93, v56);
        sub_8E80(v65, &qword_31C3F0, &unk_272A40);
        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_C80DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 176);
    v87 = *(a1 + 160);
    v88 = v3;
    v89 = *(a1 + 192);
    v4 = *(a1 + 112);
    v83 = *(a1 + 96);
    v84 = v4;
    v5 = *(a1 + 144);
    v85 = *(a1 + 128);
    v86 = v5;
    v6 = *(a1 + 48);
    v79 = *(a1 + 32);
    v80 = v6;
    v7 = *(a1 + 80);
    v81 = *(a1 + 64);
    v82 = v7;
    v8 = *(a2 + 176);
    *&v92[96] = *(a2 + 160);
    *&v92[112] = v8;
    *&v92[128] = *(a2 + 192);
    v9 = *(a2 + 112);
    *&v92[32] = *(a2 + 96);
    *&v92[48] = v9;
    v10 = *(a2 + 144);
    *&v92[64] = *(a2 + 128);
    *&v92[80] = v10;
    v11 = *(a2 + 48);
    v90 = *(a2 + 32);
    v91 = v11;
    v12 = *(a2 + 80);
    *v92 = *(a2 + 64);
    *&v92[16] = v12;
    if (v79 == v90)
    {
      v13 = (a2 + 200);
      v14 = (a1 + 200);
      while (1)
      {
        if (*(&v79 + 1) != *(&v90 + 1) || *&v80 != *&v91 || *(&v80 + 1) != *(&v91 + 1) || *&v81 != *v92)
        {
          return 0;
        }

        v15 = *(v14 - 5);
        v16 = *(v14 - 3);
        v66 = *(v14 - 4);
        v67 = v16;
        v17 = *(v14 - 3);
        v18 = *(v14 - 1);
        v68 = *(v14 - 2);
        v69 = v18;
        v19 = *(v14 - 7);
        v63[0] = *(v14 - 8);
        v63[1] = v19;
        v20 = *(v14 - 5);
        v22 = *(v14 - 8);
        v21 = *(v14 - 7);
        v64 = *(v14 - 6);
        v65 = v20;
        v23 = *(v13 - 5);
        v72 = *(v13 - 6);
        v73 = v23;
        v24 = *(v13 - 7);
        v70 = *(v13 - 8);
        v71 = v24;
        v25 = *(v13 - 1);
        v76 = *(v13 - 2);
        v77 = v25;
        v26 = *(v13 - 3);
        v74 = *(v13 - 4);
        v75 = v26;
        v78[2] = v64;
        v78[3] = v15;
        v78[0] = v22;
        v78[1] = v21;
        v27 = *(v14 - 1);
        v78[6] = v68;
        v78[7] = v27;
        v78[4] = v66;
        v78[5] = v17;
        v28 = sub_2F8B8(v78);
        if (!v28)
        {
          break;
        }

        if (v28 == 1)
        {
          v29 = *sub_2F950(v78);
          v57 = *&v92[40];
          v58 = *&v92[56];
          v55 = *&v92[8];
          v56 = *&v92[24];
          v61 = *&v92[104];
          v62 = *&v92[120];
          v59 = *&v92[72];
          v60 = *&v92[88];
          if (sub_2F8B8(&v55) != 1)
          {
            goto LABEL_30;
          }

          v30 = *sub_2F950(&v55);
LABEL_18:
          sub_C95C4(&v90, v54);
          sub_8E80(v63, &qword_31C3F0, &unk_272A40);
          goto LABEL_24;
        }

        v33 = sub_2F950(v78);
        v34 = *v33;
        v35 = *(v33 + 8);
        v59 = *&v92[72];
        v60 = *&v92[88];
        v61 = *&v92[104];
        v62 = *&v92[120];
        v55 = *&v92[8];
        v56 = *&v92[24];
        v57 = *&v92[40];
        v58 = *&v92[56];
        if (sub_2F8B8(&v55) != 2)
        {
          goto LABEL_30;
        }

        v36 = sub_2F950(&v55);
        v37 = *v36;
        v38 = *(v36 + 8);
        sub_C95C4(&v90, v54);
        sub_8E80(v63, &qword_31C3F0, &unk_272A40);
        if (v34 != v37 || v35 != v38)
        {
          return 0;
        }

LABEL_25:
        if (!--v2)
        {
          return 1;
        }

        v40 = v14[9];
        v87 = v14[8];
        v88 = v40;
        v41 = v14[5];
        v83 = v14[4];
        v84 = v41;
        v42 = v14[7];
        v85 = v14[6];
        v86 = v42;
        v43 = v14[1];
        v79 = *v14;
        v80 = v43;
        v44 = v14[3];
        v81 = v14[2];
        v82 = v44;
        v45 = v13[9];
        *&v92[96] = v13[8];
        *&v92[112] = v45;
        v46 = *(v13 + 20);
        v47 = v13[5];
        *&v92[32] = v13[4];
        *&v92[48] = v47;
        v48 = v13[7];
        *&v92[64] = v13[6];
        *&v92[80] = v48;
        v49 = v13[1];
        v90 = *v13;
        v91 = v49;
        v51 = v13[2];
        v50 = v13[3];
        v13 = (v13 + 168);
        v52 = *(v14 + 20);
        v14 = (v14 + 168);
        v89 = v52;
        *&v92[128] = v46;
        *v92 = v51;
        *&v92[16] = v50;
        if (v79 != v90)
        {
          return 0;
        }
      }

      v31 = sub_2F950(v78);
      v59 = *&v92[72];
      v60 = *&v92[88];
      v61 = *&v92[104];
      v62 = *&v92[120];
      v55 = *&v92[8];
      v56 = *&v92[24];
      v57 = *&v92[40];
      v58 = *&v92[56];
      if (sub_2F8B8(&v55))
      {
        sub_C95C4(&v79, v54);
LABEL_30:
        sub_C95C4(&v90, v54);
        sub_8E80(v63, &qword_31C3F0, &unk_272A40);
        return 0;
      }

      v32 = sub_2F950(&v55);
      v29 = *(v31 + 120);
      v30 = *(v32 + 120);
      if (*v31 == *v32 && *(v31 + 8) == *(v32 + 8))
      {
        sub_C95C4(&v79, v54);
        goto LABEL_18;
      }

      v39 = sub_264F10();
      sub_C95C4(&v79, v54);
      sub_C95C4(&v90, v54);
      sub_8E80(v63, &qword_31C3F0, &unk_272A40);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      if (v29 != v30)
      {
        return 0;
      }

      goto LABEL_25;
    }
  }

  return 0;
}

uint64_t sub_C851C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  if (!v6 || a1 == a2)
  {
    return 1;
  }

  v74 = v5;
  v75 = v4;
  v76 = v2;
  v77 = v3;
  v7 = (a1 + 32);
  v8 = (a2 + 32);
  for (i = v6 - 1; ; --i)
  {
    v10 = v7[3];
    v11 = v7[5];
    v60 = v7[4];
    v61 = v11;
    v12 = v7[5];
    v13 = v7[7];
    v62 = v7[6];
    v63 = v13;
    v14 = v7[1];
    v57[0] = *v7;
    v57[1] = v14;
    v15 = v7[3];
    v17 = *v7;
    v16 = v7[1];
    v58 = v7[2];
    v59 = v15;
    v18 = *v8;
    v19 = v8[1];
    v20 = v8[3];
    v66 = v8[2];
    v67 = v20;
    v21 = v8[1];
    v22 = v8[2];
    v23 = *v8;
    v64 = v18;
    v65 = v21;
    v24 = v8[5];
    v25 = v8[7];
    v70 = v8[6];
    v71 = v25;
    v26 = v8[3];
    v27 = v8[5];
    v68 = v8[4];
    v69 = v27;
    v28 = *v7;
    v29 = v7[1];
    v30 = v7[3];
    v72[2] = v7[2];
    v72[3] = v30;
    v72[0] = v28;
    v72[1] = v29;
    v31 = v7[7];
    v72[6] = v7[6];
    v72[7] = v31;
    v32 = v7[5];
    v72[4] = v7[4];
    v72[5] = v32;
    v72[10] = v22;
    v72[11] = v26;
    v72[8] = v23;
    v72[9] = v19;
    v33 = v8[7];
    v72[14] = v70;
    v72[15] = v33;
    v72[12] = v68;
    v72[13] = v24;
    v73[2] = v58;
    v73[3] = v10;
    v73[0] = v17;
    v73[1] = v16;
    v34 = v7[7];
    v73[6] = v62;
    v73[7] = v34;
    v73[4] = v60;
    v73[5] = v12;
    v35 = sub_2F8B8(v73);
    if (!v35)
    {
      break;
    }

    if (v35 == 1)
    {
      v36 = *sub_2F950(v73);
      sub_5757C(&v64, v48);
      sub_2F8C4(v57);
      v53 = v68;
      v54 = v69;
      v55 = v70;
      v56 = v71;
      v49 = v64;
      v50 = v65;
      v51 = v66;
      v52 = v67;
      if (sub_2F8B8(&v49) != 1)
      {
        goto LABEL_26;
      }

      v37 = *sub_2F950(&v49);
LABEL_13:
      sub_8E80(v72, &qword_31C3F0, &unk_272A40);
      goto LABEL_19;
    }

    v40 = sub_2F950(v73);
    v41 = *v40;
    v42 = *(v40 + 8);
    sub_5757C(&v64, v48);
    sub_2F8C4(v57);
    v53 = v68;
    v54 = v69;
    v55 = v70;
    v56 = v71;
    v49 = v64;
    v50 = v65;
    v51 = v66;
    v52 = v67;
    if (sub_2F8B8(&v49) != 2)
    {
      goto LABEL_26;
    }

    v43 = sub_2F950(&v49);
    v44 = *v43;
    v45 = *(v43 + 8);
    sub_8E80(v72, &qword_31C3F0, &unk_272A40);
    if (v41 != v44 || v42 != v45)
    {
      return 0;
    }

LABEL_20:
    if (!i)
    {
      return 1;
    }

    v8 += 8;
    v7 += 8;
  }

  v38 = sub_2F950(v73);
  v53 = v68;
  v54 = v69;
  v55 = v70;
  v56 = v71;
  v49 = v64;
  v50 = v65;
  v51 = v66;
  v52 = v67;
  if (!sub_2F8B8(&v49))
  {
    v39 = sub_2F950(&v49);
    v36 = *(v38 + 120);
    v37 = *(v39 + 120);
    if (*v38 == *v39 && *(v38 + 8) == *(v39 + 8))
    {
      sub_5757C(&v64, v48);
      sub_5757C(v57, v48);
      goto LABEL_13;
    }

    v46 = sub_264F10();
    sub_5757C(&v64, v48);
    sub_5757C(v57, v48);
    sub_8E80(v72, &qword_31C3F0, &unk_272A40);
    if ((v46 & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    if (v36 != v37)
    {
      return 0;
    }

    goto LABEL_20;
  }

  sub_5757C(&v64, v48);
  sub_5757C(v57, v48);
LABEL_26:
  sub_8E80(v72, &qword_31C3F0, &unk_272A40);
  return 0;
}

uint64_t sub_C887C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_264F10() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_C8914(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2EF0(&qword_317290, &qword_2697F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 + 95;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 7);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_C89EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_2EF0(&qword_31C3F8, &unk_272A50);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_2EF0(&qword_31AEE8, &qword_28CD40);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_C8AE8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = result[2];
    if (v5 % a2)
    {
      v6 = v5 / a2 + 1;
    }

    else
    {
      v6 = v5 / a2;
    }

    if (v6)
    {
      v8 = sub_E9C1C(v6, 0);
      v9 = sub_C8BA4(v10, v8 + 4, v6, v4, a2, a3);

      if (v9 == v6)
      {
        return v8;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_C8BA4(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 0)
  {
    goto LABEL_33;
  }

  v8 = a2;
  v9 = result;
  if (!a2)
  {
LABEL_22:
    v12 = 0;
    v10 = 0;
    v15 = a6;
LABEL_27:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v12;
    v9[4] = v15;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    v15 = a6;
    goto LABEL_27;
  }

  if (a3 < 0)
  {
    goto LABEL_34;
  }

  v11 = 0;
  v12 = *(a4 + 16);
  v13 = 1;
  v18 = a6;
  v14 = a6;
  while (1)
  {
    v15 = v14;
    if (v11 == v12)
    {
      v10 = v13 - 1;
LABEL_26:
      a6 = v18;
      goto LABEL_27;
    }

    v14 = *(a4 + 16);
    if (v11 == v14)
    {
      break;
    }

    if (v14 < v11)
    {
      goto LABEL_29;
    }

    v16 = v14 - v15;
    if (v14 < v15)
    {
      goto LABEL_30;
    }

    if (a5 < 1)
    {
      if (v16 <= 0 && v16 > a5)
      {
        goto LABEL_17;
      }
    }

    else if ((v16 & 0x8000000000000000) == 0 && v16 < a5)
    {
      goto LABEL_17;
    }

    v14 = v15 + a5;
    if (__OFADD__(v15, a5))
    {
      goto LABEL_32;
    }

LABEL_17:
    if (v14 < v15)
    {
      goto LABEL_31;
    }

    *v8 = a4;
    v8[1] = a4 + 32;
    v8[2] = v11;
    v8[3] = (2 * v15) | 1;
    if (v10 == v13)
    {

      v12 = v15;
      v15 = v14;
      goto LABEL_26;
    }

    v8 += 4;

    v11 = v15;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

double sub_C8D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = 0.0;
  if (v1 >= 2)
  {
    v3 = a1 + 192 * (v1 & 0x3FFFFFFFFFFFFFELL);
    v4 = *(v3 - 160);
    if ((v4 - 1) < 2)
    {
      v5 = 0.25;
    }

    else
    {
      if ((v4 - 3) >= 2)
      {
        return result;
      }

      v5 = 0.45;
    }

    return *(v3 - 136) * *(v3 - 104) * v5;
  }

  return result;
}

double sub_C8D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (v1 & 1) == 0;
  result = 0.0;
  v4 = v1 > v2;
  v5 = v1 - v2;
  if (v4)
  {
    v6 = a1 + 192 * v5;
    v7 = *(v6 - 160);
    if ((v7 - 1) < 2)
    {
      v8 = 0.25;
    }

    else
    {
      if ((v7 - 3) >= 2)
      {
        return result;
      }

      v8 = 0.45;
    }

    return *(v6 - 136) * *(v6 - 104) * v8;
  }

  return result;
}

uint64_t sub_C8DDC(uint64_t result, double a2, double a3, double a4)
{
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = result + 32;
    v11 = &_swiftEmptyArrayStorage;
    do
    {
      v12 = (v10 + (v9 << 7));
      v13 = v9;
      while (1)
      {
        if (v13 >= v8)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v14 = v12[5];
        v105 = v12[4];
        v106 = v14;
        v15 = v12[7];
        v107 = v12[6];
        v108 = v15;
        v16 = v12[1];
        v101 = *v12;
        v102 = v16;
        v17 = v12[3];
        v103 = v12[2];
        v104 = v17;
        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_42;
        }

        v18 = v12[5];
        v114 = v12[4];
        v115 = v18;
        v19 = v12[7];
        v116 = v12[6];
        v117 = v19;
        v20 = v12[1];
        v110 = *v12;
        v111 = v20;
        v21 = v12[3];
        v112 = v12[2];
        v113 = v21;
        v109 = v13;
        if (v13 <= 4)
        {
          break;
        }

        sub_5757C(&v101, &v85);
        result = sub_8E80(&v109, &qword_31C400, &qword_287460);
        ++v13;
        v12 += 8;
        if (v9 == v8)
        {
          goto LABEL_20;
        }
      }

      v22 = v12[5];
      v97 = v12[4];
      v98 = v22;
      v23 = v12[7];
      v99 = v12[6];
      v100 = v23;
      v24 = v12[1];
      v93 = *v12;
      v94 = v24;
      v25 = v12[3];
      v95 = v12[2];
      v96 = v25;
      v85 = v93;
      v86 = v24;
      v87 = v95;
      v88 = v25;
      v89 = v97;
      v90 = v22;
      v91 = v99;
      v92 = v23;
      v26 = sub_2F8B8(&v85);
      v27 = sub_2F950(&v85);
      if (v26)
      {
        v28 = 1.0;
        if (v26 != 1)
        {
          v28 = 0.641025641;
        }
      }

      else
      {
        v28 = *(v27 + 16);
      }

      v74 = v7;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      v84 = v100;
      v77 = v93;
      v78 = v94;
      v79 = v95;
      v80 = v96;
      sub_5757C(&v101, v76);
      result = swift_isUniquelyReferenced_nonNull_native();
      v29 = v10;
      if ((result & 1) == 0)
      {
        result = sub_E8E6C(0, *(v11 + 2) + 1, 1, v11);
        v11 = result;
      }

      v31 = *(v11 + 2);
      v30 = *(v11 + 3);
      if (v31 >= v30 >> 1)
      {
        result = sub_E8E6C((v30 > 1), v31 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 2) = v31 + 1;
      v32 = &v11[192 * v31];
      v32[32] = v13;
      v33 = *&v76[3];
      *(v32 + 33) = *v76;
      *(v32 + 9) = v33;
      *(v32 + 5) = v28;
      *(v32 + 6) = a4;
      *(v32 + 7) = a3;
      *(v32 + 8) = v8;
      *(v32 + 72) = xmmword_2728E0;
      *(v32 + 11) = 0x3FE4834834834834;
      v34 = v77;
      v35 = v78;
      v36 = v80;
      *(v32 + 8) = v79;
      *(v32 + 9) = v36;
      *(v32 + 6) = v34;
      *(v32 + 7) = v35;
      v37 = v81;
      v38 = v82;
      v39 = v84;
      *(v32 + 12) = v83;
      *(v32 + 13) = v39;
      *(v32 + 10) = v37;
      *(v32 + 11) = v38;
      v10 = v29;
      v7 = v74;
    }

    while (v9 != v8);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

LABEL_20:
  v40 = a3 * a4 + sub_C8D20(v11);
  v41 = v40 + sub_C8D7C(v11);
  if (v41 <= a2)
  {
    return v11;
  }

  v42 = a2 / v41 * a3;
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v43 = 0;
  v44 = v7 + 32;
  v11 = &_swiftEmptyArrayStorage;
  v45 = 0x3FE4834834834834;
LABEL_23:
  v46 = (v44 + (v43 << 7));
  for (i = v43; i < v8; ++i)
  {
    v48 = v46[5];
    v105 = v46[4];
    v106 = v48;
    v49 = v46[7];
    v107 = v46[6];
    v108 = v49;
    v50 = v46[1];
    v101 = *v46;
    v102 = v50;
    v51 = v46[3];
    v103 = v46[2];
    v104 = v51;
    v43 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_44;
    }

    v52 = v46[5];
    v114 = v46[4];
    v115 = v52;
    v53 = v46[7];
    v116 = v46[6];
    v117 = v53;
    v54 = v46[1];
    v110 = *v46;
    v111 = v54;
    v55 = v46[3];
    v112 = v46[2];
    v113 = v55;
    v109 = i;
    if (i <= 4)
    {
      v56 = v46[5];
      v97 = v46[4];
      v98 = v56;
      v57 = v46[7];
      v99 = v46[6];
      v100 = v57;
      v58 = v46[1];
      v93 = *v46;
      v94 = v58;
      v59 = v46[3];
      v95 = v46[2];
      v96 = v59;
      v85 = v93;
      v86 = v58;
      v87 = v95;
      v88 = v59;
      v89 = v97;
      v90 = v56;
      v91 = v99;
      v92 = v57;
      v60 = sub_2F8B8(&v85);
      v61 = sub_2F950(&v85);
      if (v60)
      {
        v62 = 1.0;
        if (v60 != 1)
        {
          v62 = 0.641025641;
        }
      }

      else
      {
        v62 = *(v61 + 16);
      }

      v75 = v44;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      v84 = v100;
      v77 = v93;
      v78 = v94;
      v79 = v95;
      v80 = v96;
      sub_5757C(&v101, v76);
      result = swift_isUniquelyReferenced_nonNull_native();
      v63 = v45;
      if ((result & 1) == 0)
      {
        result = sub_E8E6C(0, *(v11 + 2) + 1, 1, v11);
        v11 = result;
      }

      v65 = *(v11 + 2);
      v64 = *(v11 + 3);
      if (v65 >= v64 >> 1)
      {
        result = sub_E8E6C((v64 > 1), v65 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 2) = v65 + 1;
      v66 = &v11[192 * v65];
      v66[32] = i;
      v67 = *&v76[3];
      *(v66 + 33) = *v76;
      *(v66 + 9) = v67;
      *(v66 + 5) = v62;
      *(v66 + 6) = a4;
      *(v66 + 7) = v42;
      *(v66 + 8) = v8;
      *(v66 + 72) = xmmword_2728E0;
      v45 = v63;
      *(v66 + 11) = v63;
      v68 = v77;
      v69 = v78;
      v70 = v80;
      *(v66 + 8) = v79;
      *(v66 + 9) = v70;
      *(v66 + 6) = v68;
      *(v66 + 7) = v69;
      v71 = v81;
      v72 = v82;
      v73 = v84;
      *(v66 + 12) = v83;
      *(v66 + 13) = v73;
      *(v66 + 10) = v71;
      *(v66 + 11) = v72;
      v44 = v75;
      if (v43 != v8)
      {
        goto LABEL_23;
      }

      return v11;
    }

    sub_5757C(&v101, &v85);
    result = sub_8E80(&v109, &qword_31C400, &qword_287460);
    v46 += 8;
    if (v43 == v8)
    {
      return v11;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t sub_C93F4()
{
  result = qword_31C390;
  if (!qword_31C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C390);
  }

  return result;
}

unint64_t sub_C944C()
{
  result = qword_31C398;
  if (!qword_31C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C398);
  }

  return result;
}

unint64_t sub_C94A0(uint64_t a1)
{
  result = sub_C94C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C94C8()
{
  result = qword_31C3E8;
  if (!qword_31C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C3E8);
  }

  return result;
}

uint64_t sub_C951C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_C9564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_C9620@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void static ListItemViewModel.perfHacks.getter(void *a1@<X8>)
{
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408 == 1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_264420();
    v4 = [v2 integerForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

__n128 ListItemViewModel.init(layout:thumbnailModel:metadataModel:accessoryModel:showOrdinal:assetInfo:cardInfo:origin:)@<Q0>(void *__src@<X2>, char *a2@<X0>, __int128 *a3@<X1>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = a9 + 360;
  *(a9 + 360) = 0u;
  *(a9 + 376) = 0u;
  v16 = *a3;
  *(a9 + 24) = a3[1];
  v17 = a3[3];
  *(a9 + 40) = a3[2];
  *(a9 + 56) = v17;
  v18 = *a2;
  *(a9 + 392) = 0;
  *a9 = v18;
  *(a9 + 72) = *(a3 + 32);
  *(a9 + 8) = v16;
  memcpy((a9 + 80), __src, 0x118uLL);
  sub_82704(a4, v15);
  *(a9 + 400) = a5;
  sub_F7CC(a6, a9 + 408);
  v19 = type metadata accessor for ListItemViewModel();
  sub_22148(a7, a9 + *(v19 + 40), &qword_31A480, &qword_273520);
  v20 = a9 + *(v19 + 44);
  v21 = *(a8 + 112);
  *(v20 + 96) = *(a8 + 96);
  *(v20 + 112) = v21;
  *(v20 + 128) = *(a8 + 128);
  *(v20 + 144) = *(a8 + 144);
  v22 = *(a8 + 48);
  *(v20 + 32) = *(a8 + 32);
  *(v20 + 48) = v22;
  v23 = *(a8 + 80);
  *(v20 + 64) = *(a8 + 64);
  *(v20 + 80) = v23;
  result = *a8;
  v25 = *(a8 + 16);
  *v20 = *a8;
  *(v20 + 16) = v25;
  return result;
}

uint64_t sub_C9864()
{
  v1 = 0x656E6961746E6F63;
  if (*v0 != 1)
  {
    v1 = 1819042164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_C98BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CC7EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C98E4(uint64_t a1)
{
  v2 = sub_CA7C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C9920(uint64_t a1)
{
  v2 = sub_CA7C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_C9968(uint64_t a1)
{
  v2 = sub_CA868();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C99A4(uint64_t a1)
{
  v2 = sub_CA868();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_C99E0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_C9A10(uint64_t a1)
{
  v2 = sub_CA8BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C9A4C(uint64_t a1)
{
  v2 = sub_CA8BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_C9A88(uint64_t a1)
{
  v2 = sub_CA814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C9AC4(uint64_t a1)
{
  v2 = sub_CA814();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListItemViewModel.Layout.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = sub_2EF0(&qword_31C410, &qword_272AB0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v41 = &v35 - v5;
  v40 = sub_2EF0(&qword_31C418, &qword_272AB8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v40);
  v8 = &v35 - v7;
  v9 = sub_2EF0(&qword_31C420, &qword_272AC0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = sub_2EF0(&qword_31C428, &qword_272AC8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  sub_2E18(a1, v18);
  sub_CA7C0();
  v20 = v43;
  sub_265120();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_264E00();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_AFAC();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_264C10();
      swift_allocError();
      v30 = v29;
      v31 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
      *v30 = &type metadata for ListItemViewModel.Layout;
      sub_264D60();
      sub_264BF0();
      (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_CA868();
          sub_264D50();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_CA814();
          v33 = v22;
          sub_264D50();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_CA8BC();
        sub_264D50();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return sub_3080(v44);
}

uint64_t ListItemViewModel.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ListItemViewModel() + 44);
  v4 = *(v3 + 112);
  v5 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v4;
  v6 = *(v3 + 112);
  v24 = *(v3 + 128);
  v7 = *(v3 + 48);
  v9 = *(v3 + 16);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v20 = *(v3 + 64);
  v12 = v20;
  v21 = v11;
  v13 = *(v3 + 16);
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  *(a1 + 96) = v22;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v5;
  v25 = *(v3 + 144);
  *(a1 + 144) = *(v3 + 144);
  *a1 = v14;
  *(a1 + 16) = v9;
  return sub_547C(v17, v16);
}

uint64_t ListItemViewModel.assetID.getter()
{
  v1 = v0[55];
  sub_2E18(v0 + 51, v0[54]);
  v2 = *(v1 + 8);
  return sub_2606E0();
}

uint64_t sub_CA2BC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[54];
  v4 = v1[55];
  sub_2E18(v1 + 51, v3);
  return a1(v3, v4);
}

uint64_t ListItemViewModel.isPurchased.getter()
{
  v1 = v0[55];
  sub_2E18(v0 + 51, v0[54]);
  v2 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_264A60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-1] - v7;
  sub_2606D0();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 2;
  }

  else
  {
    v13[3] = AssociatedTypeWitness;
    v13[4] = swift_getAssociatedConformanceWitness();
    sub_10934(v13);
    (*(v9 + 32))();
    v10 = sub_2607F0() & 1;
    sub_3080(v13);
  }

  return v10;
}

BOOL sub_CA580(void *a1, uint64_t *a2)
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

void *sub_CA5B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_CA5DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_CA6CC()
{
  if (sub_260770())
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_264420();
    v2 = [v0 integerForKey:v1];

    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  byte_31C408 = v3;
}

uint64_t type metadata accessor for ListItemViewModel()
{
  result = qword_31C4E0;
  if (!qword_31C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_CA7C0()
{
  result = qword_31C430;
  if (!qword_31C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C430);
  }

  return result;
}

unint64_t sub_CA814()
{
  result = qword_31C438;
  if (!qword_31C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C438);
  }

  return result;
}

unint64_t sub_CA868()
{
  result = qword_31C440;
  if (!qword_31C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C440);
  }

  return result;
}

unint64_t sub_CA8BC()
{
  result = qword_31C448;
  if (!qword_31C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C448);
  }

  return result;
}

void ListItemViewModel.unscaledDividerInset(isCompact:isAX:)(char a1, char a2)
{
  if ((a1 & 1) == 0 || (a2 & 1) == 0)
  {
    ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(a1 & 1);
    ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(a1 & 1);
  }
}

uint64_t ListItemViewModel.actionForListItem()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v180 = a1;
  v183 = type metadata accessor for AssetAction(0);
  v3 = *(*(v183 - 8) + 64);
  __chkstk_darwin(v183);
  v182 = (&v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = sub_260560();
  v181 = *(v185 - 8);
  v5 = *(v181 + 64);
  __chkstk_darwin(v185);
  v189 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_260600();
  v178 = *(v7 - 8);
  v179 = v7;
  v8 = *(v178 + 64);
  __chkstk_darwin(v7);
  v184 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316B98, &unk_275840);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v165 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v166 = &v162 - v15;
  __chkstk_darwin(v14);
  v164 = &v162 - v16;
  v163 = type metadata accessor for AssetAction.Kind(0);
  v17 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v177 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2601E0();
  v168 = *(v19 - 8);
  v169 = v19;
  v20 = *(v168 + 64);
  __chkstk_darwin(v19);
  v167 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2EF0(&qword_31A480, &qword_273520);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v162 = &v162 - v24;
  v25 = sub_263DD0();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v175 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_263A10();
  v28 = *(v176 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v176);
  v174 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v162 - v33;
  v191 = sub_263AF0();
  v187 = *(v191 - 8);
  v35 = *(v187 + 64);
  v36 = __chkstk_darwin(v191);
  v186 = &v162 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v188 = &v162 - v38;
  v39 = ListItemViewModel.isPurchased.getter();
  v40 = v1[55];
  sub_2E18(v1 + 51, v1[54]);
  v41 = *(v40 + 8);
  v171 = sub_2606E0();
  v172 = v42;
  LODWORD(v173) = v39;
  v43 = v39 & 1;
  if (v39)
  {
    v44 = 20;
  }

  else
  {
    v44 = 18;
  }

  LODWORD(v170) = v44;
  sub_2EF0(&qword_3160C0, &qword_267D48);
  v45 = swift_allocObject();
  v190 = xmmword_267D30;
  *(v45 + 16) = xmmword_267D30;
  *(v45 + 32) = 0x5050557369;
  *(v45 + 40) = 0xE500000000000000;
  v46 = v1[55];
  sub_2E18(v1 + 51, v1[54]);
  v47 = sub_260990();
  *(v45 + 72) = &type metadata for Bool;
  *(v45 + 48) = v47 & 1;
  v48 = sub_E678(v45);
  swift_setDeallocating();
  sub_8E80(v45 + 32, &qword_3160C8, &unk_267D50);
  swift_deallocClassInstance();
  v49 = 0;
  v50 = 0;
  if (!v43)
  {
    v51 = v1[55];
    sub_2E18(v1 + 51, v1[54]);
    sub_2608C0();
    v52 = sub_260060();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v34, 1, v52) == 1)
    {
      sub_8E80(v34, &qword_322C70, &qword_272AD0);
      v49 = 0;
      v50 = 0;
    }

    else
    {
      v49 = sub_260020();
      v50 = v54;
      (*(v53 + 8))(v34, v52);
    }
  }

  sub_30CC((v1 + 51), &v202);
  v55 = v1[55];
  sub_2E18(v1 + 51, v1[54]);
  v56 = sub_2609A0();
  sub_97050(&v202, v56, v57, 0, v213);
  *(&v203 + 1) = sub_2EF0(&qword_3160D0, &unk_270CF0);
  *&v202 = v48;
  sub_FBD8(&v202, v193);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v192 = &_swiftEmptyDictionarySingleton;
  sub_DC90(v193, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
  v59 = v192;
  if (v50)
  {
    *(&v203 + 1) = &type metadata for String;
    *&v202 = v49;
    *(&v202 + 1) = v50;
    sub_FBD8(&v202, v193);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v192 = v59;
    sub_DC90(v193, 0x72556E6F69746361, 0xE90000000000006CLL, v60);
    v59 = v192;
  }

  v212 = v170;
  v61 = Metrics.ClickActionType.rawValue.getter();
  *(&v203 + 1) = &type metadata for String;
  *&v202 = v61;
  *(&v202 + 1) = v62;
  sub_FBD8(&v202, v193);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v192 = v59;
  sub_DC90(v193, 0x79546E6F69746361, 0xEA00000000006570, v63);
  v64 = v192;
  sub_2EF0(&qword_317218, &unk_269760);
  v65 = swift_allocObject();
  *(v65 + 16) = v190;
  *(v65 + 32) = sub_1694E0();
  *(&v203 + 1) = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v202 = v65;
  sub_FBD8(&v202, v193);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v192 = v64;
  sub_DC90(v193, 0x6E6F697461636F6CLL, 0xE800000000000000, v66);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v67 = sub_2639E0();
  sub_B080(v67, qword_353F10);
  v68 = v174;
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v69 = *(v28 + 72);
  v70 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v190;
  v72 = v176;
  (*(v28 + 16))(v71 + v70, v68, v176);
  sub_263DC0();
  v73 = v188;
  sub_263AD0();
  sub_98D34(v213);
  (*(v28 + 8))(v68, v72);
  v74 = v189;
  v75 = v186;
  if (v173)
  {
    *&v202 = 0;
    *(&v202 + 1) = 0xE000000000000000;
    sub_264BC0(32);

    *&v202 = 0xD00000000000001ELL;
    *(&v202 + 1) = 0x8000000000291C70;
    v76 = v1[55];
    sub_2E18(v1 + 51, v1[54]);
    v77 = *(v76 + 8);
    v214._countAndFlagsBits = sub_2606E0();
    sub_264530(v214);

    v176 = *(&v202 + 1);
    *&v190 = v202;
    v78 = v1[55];
    sub_2E18(v1 + 51, v1[54]);
    v79 = *(v78 + 8);
    v80 = sub_2606E0();
    v174 = v81;
    v175 = v80;
    v82 = type metadata accessor for ListItemViewModel();
    v83 = v162;
    sub_8198(v1 + *(v82 + 40), v162, &qword_31A480, &qword_273520);
    v84 = type metadata accessor for CardInfo();
    if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
    {
      sub_8E80(v83, &qword_31A480, &qword_273520);
      v172 = 0;
      v173 = 0;
    }

    else
    {
      v126 = *(v84 + 20);
      v127 = v167;
      v128 = v168;
      v129 = v169;
      (*(v168 + 16))(v167, v83 + v126, v169);
      sub_CBE74(v83, type metadata accessor for CardInfo);
      v130 = sub_2601C0();
      v172 = v131;
      v173 = v130;
      (*(v128 + 8))(v127, v129);
    }

    v132 = v187;
    v133 = v2[55];
    sub_2E18(v2 + 51, v2[54]);
    LODWORD(v171) = sub_260870();
    v170 = *(v132 + 16);
    v134 = v191;
    v170(v75, v73, v191);
    swift_storeEnumTagMultiPayload();
    (*(v178 + 104))(v184, enum case for ClickData.TargetType.navigate(_:), v179);
    v135 = *(v181 + 104);
    LODWORD(v178) = enum case for LinkActionType.click(_:);
    v169 = v135;
    v135(v189);
    v136 = v75;
    v137 = v164;
    sub_260610();
    v138 = sub_260620();
    v139 = *(v138 - 8);
    v140 = *(v139 + 56);
    v181 = v139 + 56;
    v179 = v140;
    v140(v137, 0, 1, v138);
    v141 = v183;
    v142 = v180;
    v180[3] = v183;
    v142[4] = sub_CBDC8(&qword_319B08, type metadata accessor for AssetAction);
    v180 = sub_10934(v142);
    v143 = v182;
    v145 = v175;
    v144 = v176;
    *v182 = v190;
    v143[1] = v144;
    v147 = v173;
    v146 = v174;
    v143[2] = v145;
    v143[3] = v146;
    v148 = v172;
    v143[4] = v147;
    v143[5] = v148;
    *(v143 + 48) = v171 & 1;
    v170(v143 + *(v141 + 32), v136, v134);
    v149 = *(v141 + 40);
    v150 = v177;
    v151 = v143 + v149;
    v152 = v137;
    sub_72428(v177, v151);
    v153 = v137;
    v154 = v165;
    sub_8198(v153, v165, &qword_316B98, &unk_275840);
    v155 = *(v139 + 48);
    if (v155(v154, 1, v138) == 1)
    {
      AssetAction.Kind.appAnalyticsClickTargetType.getter(v184);
      *&v190 = v155;
      v169(v189, v178, v185);
      v156 = v166;
      sub_260610();
      sub_8E80(v152, &qword_316B98, &unk_275840);
      sub_CBE74(v150, type metadata accessor for AssetAction.Kind);
      v157 = *(v187 + 8);
      v158 = v191;
      v157(v186, v191);
      v159 = v158;
      if ((v190)(v154, 1, v138) != 1)
      {
        sub_8E80(v154, &qword_316B98, &unk_275840);
      }
    }

    else
    {
      sub_8E80(v152, &qword_316B98, &unk_275840);
      sub_CBE74(v150, type metadata accessor for AssetAction.Kind);
      v157 = *(v187 + 8);
      v159 = v191;
      v157(v186, v191);
      v160 = v166;
      (*(v139 + 32))(v166, v154, v138);
      v156 = v160;
    }

    v179(v156, 0, 1, v138);
    v161 = v182;
    sub_22148(v156, v182 + *(v183 + 36), &qword_316B98, &unk_275840);
    sub_CBE10(v161, v180);
    return (v157)(v188, v159);
  }

  else
  {
    *&v202 = 0;
    *(&v202 + 1) = 0xE000000000000000;
    sub_264BC0(31);

    *&v202 = 0xD00000000000001DLL;
    *(&v202 + 1) = 0x8000000000291C50;
    v85 = v1[55];
    sub_2E18(v1 + 51, v1[54]);
    v86 = *(v85 + 8);
    v215._countAndFlagsBits = sub_2606E0();
    sub_264530(v215);

    v186 = *(&v202 + 1);
    *&v190 = v202;
    v87 = type metadata accessor for FlowAction();
    v88 = v180;
    v180[3] = v87;
    v88[4] = sub_CBDC8(&qword_31C450, type metadata accessor for FlowAction);
    v89 = sub_10934(v88);
    v90 = v187;
    (*(v187 + 16))(v89 + v87[5], v73, v191);
    v91 = v87[6];
    (*(v178 + 104))(v184, enum case for ClickData.TargetType.navigate(_:), v179);
    (*(v181 + 104))(v74, enum case for LinkActionType.click(_:), v185);
    sub_260610();
    v92 = sub_260620();
    (*(*(v92 - 8) + 56))(v89 + v91, 0, 1, v92);
    v93 = v73;
    v94 = v2[55];
    sub_2E18(v2 + 51, v2[54]);
    v95 = *(v94 + 8);
    v96 = sub_2606E0();
    v97 = (v89 + v87[7]);
    v97[3] = &type metadata for FlowAction.NewCardSetDestination;
    v97[4] = &protocol witness table for FlowAction.NewCardSetDestination;
    *v97 = v96;
    v97[1] = v98;
    v99 = v2 + *(type metadata accessor for ListItemViewModel() + 44);
    v100 = *(v99 + 7);
    v101 = *(v99 + 5);
    v198 = *(v99 + 6);
    v199 = v100;
    v102 = *(v99 + 7);
    v200 = *(v99 + 8);
    v103 = *(v99 + 3);
    v104 = *(v99 + 1);
    v194 = *(v99 + 2);
    v195 = v103;
    v105 = *(v99 + 3);
    v106 = *(v99 + 5);
    v196 = *(v99 + 4);
    v197 = v106;
    v107 = *(v99 + 1);
    v193[0] = *v99;
    v193[1] = v107;
    v208 = v198;
    v209 = v102;
    v210 = *(v99 + 8);
    v204 = v194;
    v205 = v105;
    v206 = v196;
    v207 = v101;
    v201 = v99[144];
    v211 = v99[144];
    v202 = v193[0];
    v203 = v104;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v202);
    sub_547C(v193, &v192);
    v108 = v167;
    sub_2601D0();
    v109 = sub_2601C0();
    v111 = v110;
    (*(v168 + 8))(v108, v169);
    *v89 = v109;
    v89[1] = v111;
    v112 = v87[11];
    *(v89 + v112) = 0;
    v113 = v89[1];

    v114 = v186;
    *v89 = v190;
    v89[1] = v114;
    v115 = v89 + v87[8];
    v116 = v203;
    *v115 = v202;
    *(v115 + 1) = v116;
    v117 = v204;
    v118 = v205;
    v119 = v207;
    *(v115 + 4) = v206;
    *(v115 + 5) = v119;
    *(v115 + 2) = v117;
    *(v115 + 3) = v118;
    v120 = v208;
    v121 = v209;
    v122 = v210;
    v115[144] = v211;
    *(v115 + 7) = v121;
    *(v115 + 8) = v122;
    *(v115 + 6) = v120;
    v123 = (v89 + v87[9]);
    *v123 = 0;
    v123[1] = 0;
    v124 = v89 + v87[10];
    strcpy(v124, "cardsPresent");
    v124[13] = 0;
    *(v124 + 7) = -5120;
    *(v89 + v112) = 0;
    return (*(v90 + 8))(v93, v191);
  }
}

uint64_t sub_CBDC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CBE10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CBE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_CBED8()
{
  result = qword_31C458;
  if (!qword_31C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C458);
  }

  return result;
}

unint64_t sub_CBF2C(uint64_t a1)
{
  result = sub_CBF54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_CBF54()
{
  result = qword_31C460;
  if (!qword_31C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C460);
  }

  return result;
}

unint64_t sub_CBFAC()
{
  result = qword_31C468;
  if (!qword_31C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C468);
  }

  return result;
}

unint64_t sub_CC004()
{
  result = qword_31C470;
  if (!qword_31C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C470);
  }

  return result;
}

unint64_t sub_CC05C()
{
  result = qword_31C478;
  if (!qword_31C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C478);
  }

  return result;
}

unint64_t sub_CC0B4()
{
  result = qword_31C480;
  if (!qword_31C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C480);
  }

  return result;
}

uint64_t sub_CC11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 432);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_31A480, &qword_273520);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CC1EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 432) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_31A480, &qword_273520);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_CC29C()
{
  sub_CC370();
  if (v0 <= 0x3F)
  {
    sub_44744();
    if (v1 <= 0x3F)
    {
      sub_CC3D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_CC370()
{
  if (!qword_31C4F0)
  {
    sub_2F9C(&qword_31C4F8, &qword_272D68);
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_31C4F0);
    }
  }
}

void sub_CC3D4()
{
  if (!qword_31C500)
  {
    type metadata accessor for CardInfo();
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_31C500);
    }
  }
}

uint64_t getEnumTagSinglePayload for ListItemViewModel.PerfHacks(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ListItemViewModel.PerfHacks(uint64_t result, int a2, int a3)
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

unint64_t sub_CC4D8()
{
  result = qword_31C548;
  if (!qword_31C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C548);
  }

  return result;
}

unint64_t sub_CC530()
{
  result = qword_31C550;
  if (!qword_31C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C550);
  }

  return result;
}

unint64_t sub_CC588()
{
  result = qword_31C558;
  if (!qword_31C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C558);
  }

  return result;
}

unint64_t sub_CC5E0()
{
  result = qword_31C560;
  if (!qword_31C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C560);
  }

  return result;
}

unint64_t sub_CC638()
{
  result = qword_31C568;
  if (!qword_31C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C568);
  }

  return result;
}

unint64_t sub_CC690()
{
  result = qword_31C570;
  if (!qword_31C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C570);
  }

  return result;
}

unint64_t sub_CC6E8()
{
  result = qword_31C578;
  if (!qword_31C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C578);
  }

  return result;
}

unint64_t sub_CC740()
{
  result = qword_31C580;
  if (!qword_31C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C580);
  }

  return result;
}

unint64_t sub_CC798()
{
  result = qword_31C588;
  if (!qword_31C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C588);
  }

  return result;
}

uint64_t sub_CC7EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C75676572 && a2 == 0xE700000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xE900000000000064 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819042164 && a2 == 0xE400000000000000)
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

uint64_t PageUpdateAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_263AF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BooksAlertAction.title.getter()
{
  v1 = (v0 + *(type metadata accessor for BooksAlertAction(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BooksAlertAction.message.getter()
{
  v1 = (v0 + *(type metadata accessor for BooksAlertAction(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BooksAlertAction.buttons.getter()
{
  v1 = *(v0 + *(type metadata accessor for BooksAlertAction(0) + 28));
}

uint64_t BooksAlertAction.dialogData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BooksAlertAction(0) + 32);
  v4 = sub_260470();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BooksAlertAction.actionOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BooksAlertAction(0) + 36);
  v4 = *(v3 + 112);
  v5 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v4;
  v6 = *(v3 + 112);
  v24 = *(v3 + 128);
  v7 = *(v3 + 48);
  v9 = *(v3 + 16);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v20 = *(v3 + 64);
  v12 = v20;
  v21 = v11;
  v13 = *(v3 + 16);
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  *(a1 + 96) = v22;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v5;
  v25 = *(v3 + 144);
  *(a1 + 144) = *(v3 + 144);
  *a1 = v14;
  *(a1 + 16) = v9;
  return sub_547C(v17, v16);
}

double BooksAlertAction.init(actionMetrics:title:message:buttons:dialogType:actionOrigin:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v38 = a3;
  v14 = sub_260480();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a8[7];
  v48 = a8[6];
  v49 = v19;
  v50 = a8[8];
  v51 = *(a8 + 144);
  v20 = a8[3];
  v44 = a8[2];
  v45 = v20;
  v21 = a8[5];
  v46 = a8[4];
  v47 = v21;
  v22 = a8[1];
  v42 = *a8;
  v43 = v22;
  v23 = sub_263AF0();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a9, a1, v23);
  v25 = type metadata accessor for BooksAlertAction(0);
  v26 = (a9 + v25[5]);
  v27 = v38;
  *v26 = a2;
  v26[1] = v27;
  v28 = (a9 + v25[6]);
  v30 = v40;
  v29 = v41;
  *v28 = v39;
  v28[1] = v30;
  *(a9 + v25[7]) = v29;
  (*(v15 + 16))(v18, a7, v14);
  v31 = a9 + v25[8];
  sub_260460();
  (*(v15 + 8))(a7, v14);
  (*(v24 + 8))(a1, v23);
  v32 = a9 + v25[9];
  v33 = v49;
  *(v32 + 96) = v48;
  *(v32 + 112) = v33;
  *(v32 + 128) = v50;
  *(v32 + 144) = v51;
  v34 = v45;
  *(v32 + 32) = v44;
  *(v32 + 48) = v34;
  v35 = v47;
  *(v32 + 64) = v46;
  *(v32 + 80) = v35;
  result = *&v42;
  v37 = v43;
  *v32 = v42;
  *(v32 + 16) = v37;
  return result;
}

uint64_t sub_CCDBC()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x736E6F74747562;
  v4 = 0x6144676F6C616964;
  if (v1 != 4)
  {
    v4 = 0x724F6E6F69746361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_CCE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CEDA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_CCEC0(uint64_t a1)
{
  v2 = sub_CD680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CCEFC(uint64_t a1)
{
  v2 = sub_CD680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BooksAlertAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v38 = sub_260470();
  v37 = *(v38 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v38);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_263AF0();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2EF0(&qword_31C590, &qword_2730F0);
  v41 = *(v43 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v43);
  v11 = &v35 - v10;
  v12 = type metadata accessor for BooksAlertAction(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_CD680();
  v42 = v11;
  v17 = v44;
  sub_265120();
  if (v17)
  {
    return sub_3080(a1);
  }

  v18 = v5;
  v44 = v12;
  LOBYTE(v45) = 0;
  sub_CD788(&qword_31C5A0, &type metadata accessor for ActionMetrics);
  v19 = v40;
  sub_264DF0();
  (*(v39 + 32))(v15, v19, v6);
  LOBYTE(v45) = 1;
  v20 = sub_264D70();
  v21 = v44;
  v22 = &v15[v44[5]];
  *v22 = v20;
  v22[1] = v23;
  LOBYTE(v45) = 2;
  v40 = 0;
  v24 = sub_264D70();
  v25 = v41;
  v26 = &v15[v21[6]];
  *v26 = v24;
  v26[1] = v27;
  sub_2EF0(&qword_31C5A8, &unk_2730F8);
  v55 = 3;
  sub_CD6D4();
  sub_264DF0();
  *&v15[v21[7]] = v45;
  LOBYTE(v45) = 4;
  sub_CD788(&qword_31C5C0, &type metadata accessor for DialogData);
  v28 = v38;
  sub_264DF0();
  (*(v37 + 32))(&v15[v21[8]], v18, v28);
  v55 = 5;
  sub_CD7F0();
  sub_264DF0();
  (*(v25 + 8))(v42, v43);
  v29 = &v15[v21[9]];
  v30 = v52;
  *(v29 + 6) = v51;
  *(v29 + 7) = v30;
  *(v29 + 8) = v53;
  v29[144] = v54;
  v31 = v48;
  *(v29 + 2) = v47;
  *(v29 + 3) = v31;
  v32 = v50;
  *(v29 + 4) = v49;
  *(v29 + 5) = v32;
  v33 = v46;
  *v29 = v45;
  *(v29 + 1) = v33;
  sub_CE0A0(v15, v36, type metadata accessor for BooksAlertAction);
  sub_3080(a1);
  return sub_CE108(v15, type metadata accessor for BooksAlertAction);
}

unint64_t sub_CD680()
{
  result = qword_31C598;
  if (!qword_31C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C598);
  }

  return result;
}

unint64_t sub_CD6D4()
{
  result = qword_31C5B0;
  if (!qword_31C5B0)
  {
    sub_2F9C(&qword_31C5A8, &unk_2730F8);
    sub_CD788(&qword_31C5B8, type metadata accessor for BooksAlertAction.Button);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C5B0);
  }

  return result;
}

uint64_t sub_CD788(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_CD7F0()
{
  result = qword_31C5C8;
  if (!qword_31C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C5C8);
  }

  return result;
}

double BooksAlertAction.Button.action.getter@<D0>(uint64_t a1@<X8>)
{
  sub_811F0(v1 + 32, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t BooksAlertAction.Button.dialogActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BooksAlertAction.Button(0) + 28);
  v4 = sub_260590();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BooksAlertAction.Button.init(title:role:action:dialogActionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0;
  *(a7 + 32) = 0u;
  v14 = (a7 + 32);
  sub_3F990(v18, a7 + 32);
  *a7 = a1;
  *(a7 + 8) = a2;
  sub_3FA0C(a5, v18);
  sub_3FC70(v14);
  *v14 = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0;
  sub_3F990(v18, v14);
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  sub_2605A0();
  v15 = a7 + *(type metadata accessor for BooksAlertAction.Button(0) + 28);
  sub_260580();
  v16 = sub_2605B0();
  (*(*(v16 - 8) + 8))(a6, v16);
  return sub_CDA48(a5);
}

uint64_t sub_CDA48(uint64_t a1)
{
  v2 = sub_2EF0(&qword_315D38, &unk_266E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_CDAB0()
{
  v1 = 0x656C746974;
  v2 = 0x6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1701605234;
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

uint64_t sub_CDB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CEFAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_CDB54(uint64_t a1)
{
  v2 = sub_CDFF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CDB90(uint64_t a1)
{
  v2 = sub_CDFF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BooksAlertAction.Button.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_260590();
  v21 = *(v24 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v24);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2EF0(&qword_31C5D0, &qword_273108);
  v23 = *(v26 - 8);
  v6 = *(v23 + 64);
  __chkstk_darwin(v26);
  v8 = v20 - v7;
  v9 = type metadata accessor for BooksAlertAction.Button(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 2) = 0u;
  v13 = (v12 + 32);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  *(v12 + 3) = 0u;
  *(v12 + 8) = 0;
  sub_3F990(v28, (v12 + 32));
  v14 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_CDFF8();
  v25 = v8;
  v15 = v27;
  sub_265120();
  if (v15)
  {
    sub_3080(a1);
    return sub_3FC70(v13);
  }

  else
  {
    v27 = v9;
    v16 = v23;
    v17 = v24;
    LOBYTE(v28[0]) = 0;
    *v12 = sub_264DC0();
    *(v12 + 1) = v18;
    v20[2] = v18;
    v30 = 1;
    sub_CE04C();
    sub_264DB0();
    *(v12 + 1) = v28[0];
    v30 = 2;
    sub_8127C();
    v20[1] = 0;
    sub_264DF0();
    sub_812D0(v28, v13);
    LOBYTE(v28[0]) = 3;
    sub_CD788(&qword_31C5E8, &type metadata accessor for DialogActionData);
    sub_264DF0();
    (*(v16 + 8))(v25, v26);
    (*(v21 + 32))(&v12[*(v27 + 28)], v5, v17);
    sub_CE0A0(v12, v22, type metadata accessor for BooksAlertAction.Button);
    sub_3080(a1);
    return sub_CE108(v12, type metadata accessor for BooksAlertAction.Button);
  }
}

unint64_t sub_CDFF8()
{
  result = qword_31C5D8;
  if (!qword_31C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C5D8);
  }

  return result;
}

unint64_t sub_CE04C()
{
  result = qword_31C5E0;
  if (!qword_31C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C5E0);
  }

  return result;
}

uint64_t sub_CE0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_CE108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_CE1E8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_CE1F8()
{
  result = qword_31C5F0;
  if (!qword_31C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C5F0);
  }

  return result;
}

Swift::Int sub_CE24C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_265050();
  sub_264500();
  return sub_265080();
}

uint64_t sub_CE298()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_264500();
}

Swift::Int sub_CE2A0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_265050();
  sub_264500();
  return sub_265080();
}

double sub_CE348@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_811F0(a1 + 32, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_CE3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_263AF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_260470();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_CE4E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_263AF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = sub_260470();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_CE608()
{
  sub_263AF0();
  if (v0 <= 0x3F)
  {
    sub_CE950(319, &qword_316CB8);
    if (v1 <= 0x3F)
    {
      sub_CE6D4();
      if (v2 <= 0x3F)
      {
        sub_260470();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_CE6D4()
{
  if (!qword_31C660)
  {
    type metadata accessor for BooksAlertAction.Button(255);
    v0 = sub_2646F0();
    if (!v1)
    {
      atomic_store(v0, &qword_31C660);
    }
  }
}

uint64_t sub_CE740(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260590();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CE800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_260590();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_CE8A4()
{
  sub_CE950(319, &unk_31C708);
  if (v0 <= 0x3F)
  {
    sub_260590();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_CE950(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_264A60();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_CE99C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_CE9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryAssetState.Ownership(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryAssetState.Ownership(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_CEB94()
{
  result = qword_31C740;
  if (!qword_31C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C740);
  }

  return result;
}

unint64_t sub_CEBEC()
{
  result = qword_31C748;
  if (!qword_31C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C748);
  }

  return result;
}

unint64_t sub_CEC44()
{
  result = qword_31C750;
  if (!qword_31C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C750);
  }

  return result;
}

unint64_t sub_CEC9C()
{
  result = qword_31C758;
  if (!qword_31C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C758);
  }

  return result;
}

unint64_t sub_CECF4()
{
  result = qword_31C760;
  if (!qword_31C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C760);
  }

  return result;
}

unint64_t sub_CED4C()
{
  result = qword_31C768;
  if (!qword_31C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C768);
  }

  return result;
}

uint64_t sub_CEDA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F74747562 && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6144676F6C616964 && a2 == 0xEA00000000006174 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x724F6E6F69746361 && a2 == 0xEC0000006E696769)
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

uint64_t sub_CEFAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000291C90 == a2)
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

uint64_t sub_CF110(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_315D38, &unk_266E30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_CF180()
{
  result = qword_31C770;
  if (!qword_31C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C770);
  }

  return result;
}

uint64_t SeriesQuickActionButtonViewModel.init(style:seriesInfo:seriesData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_D0984(a1, a4, type metadata accessor for SeriesQuickActionButtonViewModel.Style);
  v7 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v8 = *(v7 + 20);
  v9 = sub_2604A0();
  (*(*(v9 - 8) + 32))(a4 + v8, a3, v9);
  v10 = a4 + *(v7 + 24);

  return sub_F7CC(a2, v10);
}

uint64_t static SeriesQuickActionButtonViewModel.actionModelForOpenProductPage(for:cardInfo:seriesTitle:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *(&v65 + 1) = a4;
  *&v65 = a3;
  v68 = a2;
  v63 = a1;
  v6 = sub_263AF0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v67 = sub_2601E0();
  v66 = *(v67 - 8);
  v8 = *(v66 + 64);
  __chkstk_darwin(v67);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_260560();
  v62 = *(v64 - 8);
  v11 = *(v62 + 64);
  __chkstk_darwin(v64);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_260600();
  v59 = *(v60 - 8);
  v13 = *(v59 + 64);
  __chkstk_darwin(v60);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2EF0(&qword_31A480, &qword_273520);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v58 - v18;
  v20 = type metadata accessor for CardInfo();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v68, v19, &qword_31A480, &qword_273520);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_8E80(v19, &qword_31A480, &qword_273520);
    sub_263AC0();
    a5[3] = sub_263890();
    a5[4] = &protocol witness table for EmptyAction;
    sub_10934(a5);
    return sub_263880();
  }

  else
  {
    sub_D0984(v19, v24, type metadata accessor for CardInfo);
    v26 = v63[4];
    sub_2E18(v63, v63[3]);
    v27 = *(v26 + 8);
    v28 = sub_2606E0();
    v30 = v29;
    v31 = type metadata accessor for FlowAction();
    a5[3] = v31;
    a5[4] = sub_D09EC();
    v32 = sub_10934(a5);
    v33 = v32 + v31[5];
    sub_263AC0();
    v34 = v31[6];
    (*(v59 + 104))(v15, enum case for ClickData.TargetType.navigate(_:), v60);
    (*(v62 + 104))(v61, enum case for LinkActionType.click(_:), v64);
    sub_260610();
    v35 = sub_260620();
    (*(*(v35 - 8) + 56))(v32 + v34, 0, 1, v35);
    v36 = (v32 + v31[7]);
    v36[3] = type metadata accessor for FlowAction.NewSingleCardDestination();
    v36[4] = &protocol witness table for FlowAction.NewSingleCardDestination;
    v37 = sub_10934(v36);
    sub_D0A44(v24, v37);
    v69 = xmmword_273500;
    v70 = v65;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    *&v77 = v28;
    *(&v77 + 1) = v30;
    v78 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v69);

    sub_2601D0();
    v38 = sub_2601C0();
    v40 = v39;
    v41 = *(v66 + 8);
    v42 = v67;
    v41(v10, v67);
    *v32 = v38;
    v32[1] = v40;
    v43 = v31[11];
    *(v32 + v43) = 0;
    sub_2601D0();
    v44 = sub_2601C0();
    v46 = v45;
    v41(v10, v42);
    v47 = v32[1];

    *v32 = v44;
    v32[1] = v46;
    v48 = v32 + v31[8];
    v49 = v70;
    *v48 = v69;
    *(v48 + 1) = v49;
    v50 = v71;
    v51 = v72;
    v52 = v74;
    *(v48 + 4) = v73;
    *(v48 + 5) = v52;
    *(v48 + 2) = v50;
    *(v48 + 3) = v51;
    v53 = v75;
    v54 = v76;
    v55 = v77;
    v48[144] = v78;
    *(v48 + 7) = v54;
    *(v48 + 8) = v55;
    *(v48 + 6) = v53;
    v56 = (v32 + v31[9]);
    *v56 = 0;
    v56[1] = 0;
    v57 = v32 + v31[10];
    strcpy(v57, "cardsPresent");
    v57[13] = 0;
    *(v57 + 7) = -5120;
    *(v32 + v43) = 0;
    return sub_D0AA8(v24);
  }
}

uint64_t static SeriesQuickActionButtonViewModel.impressionMetricsForSamples(for:in:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_263DD0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_2601E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_263E10();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  if (*(a2 + 8) && *(a2 + 16) == 5)
  {
    v44 = a3;
    v45 = a4;
    v39 = v13;
    v40 = v12;
    v46 = a5;
    v19 = 0xE90000000000006BLL;
    v20 = 0x6F6F626F69647561;
    v21 = a1[4];
    sub_2E18(a1, a1[3]);
    v42 = sub_2609B0();
    v41 = v22;
    v23 = a1[4];
    sub_2E18(a1, a1[3]);
    v24 = *(v23 + 8);
    v43 = sub_2606E0();
    v26 = v25;
    v27 = a1[4];
    sub_2E18(a1, a1[3]);
    sub_260860();
    v28 = sub_2609D0();
    v30 = v29;
    if (v28 == sub_2609D0() && v30 == v31)
    {
    }

    else
    {
      v35 = sub_264F10();

      if ((v35 & 1) == 0)
      {
        v20 = 0x6B6F6F6265;
        v19 = 0xE500000000000000;
      }
    }

    v48[0] = v42;
    v48[1] = v41;
    v48[2] = v43;
    v48[3] = v26;
    v48[4] = 0x64695F737469;
    v48[5] = 0xE600000000000000;
    v49 = xmmword_273510;
    v50 = 0xE700000000000000;
    v51 = v20;
    v52 = v19;
    v53 = v44;
    v54 = v45;
    v57 = 0u;
    v55 = 0u;
    v56 = 0u;
    v58 = 0u;

    sub_8198(&v58, v47, &qword_31C778, &qword_273528);
    if (!v26)
    {
      sub_2601D0();
      sub_2601C0();
      (*(v39 + 8))(v16, v40);
    }

    sub_263E00();
    sub_169820();
    sub_263DC0();
    sub_D0B04(_swiftEmptyArrayStorage);
    sub_D0B04(_swiftEmptyArrayStorage);
    v36 = v46;
    sub_263E20();
    sub_D0C34(v48);
    v37 = sub_263E50();
    return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  }

  else
  {
    v32 = sub_263E50();
    v33 = *(*(v32 - 8) + 56);

    return v33(a5, 1, 1, v32);
  }
}

uint64_t static SeriesQuickActionButtonViewModel.preheader(for:seriesOrdering:isAudiobook:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a3;
  v64 = a1;
  v65 = a2;
  v74 = a4;
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v63 - v9;
  v68 = sub_260BD0();
  v70 = *(v68 - 8);
  v11 = *(v70 + 64);
  __chkstk_darwin(v68);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = &v63 - v14;
  v15 = sub_264010();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_263FA0();
  v20 = *(v69 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v69);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2607D0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v29, v67, v24, v27);
  v30 = (*(v25 + 88))(v29, v24);
  v31 = v30 == enum case for SeriesOrdering.notAvailable(_:) || v30 == enum case for SeriesOrdering.nonSeries(_:);
  v71 = v7;
  v72 = v10;
  if (v31)
  {
    goto LABEL_8;
  }

  v67 = v20;
  if (v30 == enum case for SeriesOrdering.orderedSeries(_:))
  {
    v32 = swift_allocObject();
    *(v32 + 16) = v64;
    *(v32 + 24) = v65;

    sub_260B70();

    sub_263F90();
    LODWORD(v65) = enum case for LocalizerLookupStrategy.default(_:);
    v33 = v70;
    v34 = v16[13];
    v34(v19);
    sub_260B80();
    v64 = v16[1];
    v64(v19, v15);
    v67 = *(v67 + 8);
    v35 = v69;
    (v67)(v23, v69);
    v63 = "on.NextInSeries";
    sub_263F90();
    (v34)(v19, v65, v15);
    v36 = v71;
    v37 = v72;
    v38 = v66;
    sub_260B80();
    v64(v19, v15);
    v39 = v23;
    v40 = v36;
    (v67)(v39, v35);
    v41 = *(v33 + 32);
    v42 = v68;
    v41(v37, v73, v68);
    v43 = *(v33 + 56);
    v43(v37, 0, 1, v42);
    v41(v36, v38, v42);
    v44 = v42;
    v43(v36, 0, 1, v42);
    v45 = type metadata accessor for ShrinkableText();
    v46 = v74;
    v47 = v74 + *(v45 + 20);
    v43(v47, 1, 1, v44);
    v48 = v46 + *(v45 + 24);
    v43(v48, 1, 1, v44);
LABEL_9:
    sub_D0CC8(v37, v47);
    return sub_D0CC8(v40, v48);
  }

  v20 = v67;
  if (v30 == enum case for SeriesOrdering.unorderedSeries(_:))
  {
LABEL_8:
    sub_263F90();
    v49 = enum case for LocalizerLookupStrategy.default(_:);
    v67 = v16[13];
    (v67)(v19, enum case for LocalizerLookupStrategy.default(_:), v15);
    sub_260B80();
    v50 = v16[1];
    v64 = (v16 + 1);
    v66 = v50;
    (v50)(v19, v15);
    v65 = *(v20 + 8);
    v51 = v69;
    v65(v23, v69);
    v52 = v15;
    v53 = v70;
    v54 = v68;
    sub_263F90();
    (v67)(v19, v49, v52);
    v56 = v71;
    v55 = v72;
    v57 = v73;
    sub_260B80();
    (v66)(v19, v52);
    v58 = v23;
    v40 = v56;
    v37 = v55;
    v65(v58, v51);
    (*(v53 + 32))(v55, v57, v54);
    v59 = *(v53 + 56);
    v59(v55, 0, 1, v54);
    v59(v40, 1, 1, v54);
    v60 = type metadata accessor for ShrinkableText();
    v61 = v74;
    v47 = v74 + *(v60 + 20);
    v59(v47, 1, 1, v54);
    v48 = v61 + *(v60 + 24);
    v59(v48, 1, 1, v54);
    goto LABEL_9;
  }

  result = sub_264CD0();
  __break(1u);
  return result;
}

uint64_t sub_D064C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316220, &unk_273570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v26 - v8;
  v10 = sub_263FA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = a1[3];
    v26[3] = a1[4];
    v16 = sub_2E18(a1, v15);
    v26[1] = "fo exposureData ";
    v26[2] = v16;
    sub_2EF0(&qword_31ACF0, &unk_26FF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267D30;
    strcpy((inited + 32), "sequenceLabel");
    *(inited + 46) = -4864;
    v26[4] = a2;
    v26[5] = a3;
    v18 = a1[4];
    sub_2E18(a1, a1[3]);
    sub_2641F0();
    v19 = sub_260290();
    (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
    sub_10A84();
    v20 = sub_264A90();
    v22 = v21;
    sub_8E80(v9, &qword_316220, &unk_273570);
    *(inited + 48) = v20;
    *(inited + 56) = v22;
    sub_F13C(inited);
    swift_setDeallocating();
    sub_8E80(inited + 32, &qword_31ACF8, &qword_273580);
    sub_263F90();
    v23 = sub_264250();
  }

  else
  {
    v24 = a1[4];
    sub_2E18(a1, a1[3]);
    sub_263F90();
    v23 = sub_264240();
  }

  (*(v11 + 8))(v14, v10);
  return v23;
}

uint64_t sub_D0984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_D09EC()
{
  result = qword_31C450;
  if (!qword_31C450)
  {
    type metadata accessor for FlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C450);
  }

  return result;
}

uint64_t sub_D0A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D0AA8(uint64_t a1)
{
  v2 = type metadata accessor for CardInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_D0B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_3161F8, &qword_267FC8);
    v3 = sub_264D10();
    v4 = a1 + 32;

    while (1)
    {
      sub_8198(v4, &v13, &qword_3160C8, &unk_267D50);
      v5 = v13;
      v6 = v14;
      result = sub_D410(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_FBD8(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_D0C88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_D0CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_D0D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SeriesQuickActionButtonViewModel.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2604A0();
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

  return (v14 + 1);
}

uint64_t sub_D0E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SeriesQuickActionButtonViewModel.Style(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2604A0();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_D0F7C()
{
  result = type metadata accessor for SeriesQuickActionButtonViewModel.Style(319);
  if (v1 <= 0x3F)
  {
    result = sub_2604A0();
    if (v2 <= 0x3F)
    {
      result = sub_D1174(319, &qword_31C7E8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_D1028()
{
  sub_D1174(319, &qword_31C7E8);
  if (v0 <= 0x3F)
  {
    sub_D10D0();
    if (v1 <= 0x3F)
    {
      sub_D1174(319, &qword_3180B0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_D10D0()
{
  if (!qword_31C8A0)
  {
    sub_2F9C(&qword_31AEE8, &qword_28CD40);
    sub_2F9C(&qword_31A480, &qword_273520);
    sub_2605E0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_31C8A0);
    }
  }
}

uint64_t sub_D1174(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_D11D0(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_3002F8;
  v7._object = a2;
  v4 = sub_264D40(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D1224(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_D1244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D12B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D1324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D1394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D1404@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  result = sub_D11D0(*a1, *(a1 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_D1444@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  result = sub_D1224(*v2);
  *a2 = result;
  a2[1] = v10;
  return result;
}

uint64_t sub_D1480(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_D1224(*v1);
}

uint64_t sub_D1498@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  result = sub_D11D0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_D14D0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  result = sub_448FC();
  *a2 = result;
  return result;
}

uint64_t sub_D1508(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_D155C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PageUpdateInstruction<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a7;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  v79 = a4;
  v80 = a5;
  v65 = a6;
  v81 = a6;
  _s10CodingKeysOMa_2();
  swift_getWitnessTable();
  v66 = sub_264E20();
  v63 = *(v66 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v66);
  v14 = &v56 - v13;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  v64 = a3;
  v59 = a4;
  v79 = a4;
  v80 = a5;
  v60 = a5;
  updated = type metadata accessor for PageUpdateInstruction();
  v62 = *(updated - 8);
  v16 = *(v62 + 64);
  __chkstk_darwin(updated);
  v18 = (&v56 - v17);
  v19 = a1[3];
  v20 = a1[4];
  v67 = a1;
  sub_2E18(a1, v19);
  v21 = v68;
  sub_265120();
  if (!v21)
  {
    v23 = v64;
    v22 = v65;
    v58 = v18;
    v68 = updated;
    LOBYTE(v78) = 0;
    v24 = v66;
    v25 = v14;
    v27 = sub_264DC0();
    v28 = v26;
    if (v27 == 0x506563616C706572 && v26 == 0xEB00000000656761)
    {

      v31 = v62;
      goto LABEL_9;
    }

    v30 = sub_264F10();
    v31 = v62;
    if (v30)
    {

LABEL_9:
      type metadata accessor for CodeAnyIntentModel();
      LOBYTE(v76) = 1;
      swift_getWitnessTable();
      sub_264DF0();
      (*(v63 + 8))(v25, v24);
      v34 = v58;
      sub_F7CC(&v78, v58);
      v35 = v68;
LABEL_12:
      swift_storeEnumTagMultiPayload();
      v36 = v67;
      v37 = v61;
LABEL_23:
      (*(v31 + 32))(v37, v34, v35);
      v32 = v36;
      return sub_3080(v32);
    }

    if (v27 == 0x6853646E65707061 && v28 == 0xED00007365766C65)
    {

      v40 = v22;
      goto LABEL_20;
    }

    v39 = v27;
    v40 = v22;
    if (sub_264F10())
    {

LABEL_20:
      sub_2646F0();
      LOBYTE(v76) = 1;
      v69 = v40;
      swift_getWitnessTable();
      sub_264DF0();
      v36 = v67;
      v41 = v61;
      (*(v63 + 8))(v25, v24);
      v34 = v58;
      *v58 = v78;
      v35 = v68;
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v37 = v41;
LABEL_22:
      v31 = v62;
      goto LABEL_23;
    }

    v42 = v39 == 0x536563616C706572 && v28 == 0xEE007365766C6568;
    if (v42 || (sub_264F10() & 1) != 0)
    {

      sub_2646F0();
      LOBYTE(v76) = 1;
      v70 = v22;
      swift_getWitnessTable();
      sub_264DF0();
      v36 = v67;
      v41 = v61;
      (*(v63 + 8))(v25, v24);
      v34 = v58;
      *v58 = v78;
      v35 = v68;
      goto LABEL_21;
    }

    v43 = v39 == 0x685365766F6D6572 && v28 == 0xED00007365766C65;
    if (v43 || (v44 = v39, (sub_264F10() & 1) != 0))
    {

      sub_2EF0(&qword_3160B0, &qword_267D40);
      LOBYTE(v76) = 1;
      sub_D2868();
      sub_264DF0();
      v36 = v67;
      v41 = v61;
      (*(v63 + 8))(v25, v24);
      v34 = v58;
      *v58 = v78;
      v35 = v68;
      goto LABEL_21;
    }

    v31 = v62;
    if (v44 == 0xD000000000000012 && 0x8000000000291ED0 == v28 || (sub_264F10() & 1) != 0)
    {

      LOBYTE(v78) = 1;
      v45 = v66;
      v46 = sub_264DC0();
      v48 = v47;
      (*(v63 + 8))(v25, v45);
      v34 = v58;
      *v58 = v46;
      v34[1] = v48;
      v35 = v68;
      goto LABEL_12;
    }

    if (v44 == 0x7449646E65707061 && v28 == 0xEB00000000736D65)
    {
    }

    else
    {
      v57 = v25;
      if ((sub_264F10() & 1) == 0)
      {
        if (v44 == 0x744965766F6D6572 && v28 == 0xEB00000000736D65 || (sub_264F10() & 1) != 0)
        {

          *&v78 = a2;
          *(&v78 + 1) = v23;
          v79 = v59;
          v80 = v60;
          type metadata accessor for PageUpdateInstruction.ShelfItemRemovalDescriptor();
          sub_2646F0();
          LOBYTE(v78) = 1;
          WitnessTable = swift_getWitnessTable();
          swift_getWitnessTable();
          sub_264DF0();
          (*(v63 + 8))(v57, v66);
          v34 = v58;
          *v58 = v76;
          v35 = v68;
        }

        else if (v44 == 0x496563616C706572 && v28 == 0xEC000000736D6574 || (sub_264F10() & 1) != 0)
        {

          *&v78 = a2;
          *(&v78 + 1) = v23;
          v79 = v59;
          v80 = v60;
          type metadata accessor for PageUpdateInstruction.ShelfItemUpdateDescriptor();
          sub_2646F0();
          LOBYTE(v78) = 1;
          v73 = swift_getWitnessTable();
          swift_getWitnessTable();
          sub_264DF0();
          (*(v63 + 8))(v57, v66);
          v34 = v58;
          *v58 = v76;
          v35 = v68;
        }

        else if (v44 == 0xD00000000000001BLL && 0x8000000000291EF0 == v28 || (sub_264F10() & 1) != 0)
        {

          sub_2EF0(&qword_31C8D0, &qword_273588);
          LOBYTE(v76) = 1;
          sub_D278C();
          sub_264DF0();
          (*(v63 + 8))(v57, v66);
          v34 = v58;
          *v58 = v78;
          v35 = v68;
        }

        else if (v44 == 0xD000000000000013 && 0x8000000000291F10 == v28 || (sub_264F10() & 1) != 0)
        {

          *&v78 = a2;
          *(&v78 + 1) = v23;
          v79 = v59;
          v80 = v60;
          type metadata accessor for PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor();
          sub_2646F0();
          LOBYTE(v78) = 1;
          v74 = swift_getWitnessTable();
          swift_getWitnessTable();
          sub_264DF0();
          (*(v63 + 8))(v57, v66);
          v34 = v58;
          *v58 = v76;
          v35 = v68;
        }

        else if (v44 == 0xD000000000000013 && 0x8000000000291F30 == v28 || (sub_264F10() & 1) != 0)
        {

          *&v78 = a2;
          *(&v78 + 1) = v23;
          v79 = v59;
          v80 = v60;
          type metadata accessor for PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor();
          sub_2646F0();
          LOBYTE(v78) = 1;
          v75 = swift_getWitnessTable();
          swift_getWitnessTable();
          sub_264DF0();
          (*(v63 + 8))(v57, v66);
          v34 = v58;
          *v58 = v76;
          v35 = v68;
        }

        else if (v44 == 0x646E756F706D6F63 && v28 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
        {

          sub_2646F0();
          LOBYTE(v76) = 1;
          v82 = v22;
          v77 = swift_getWitnessTable();
          swift_getWitnessTable();
          sub_264DF0();
          (*(v63 + 8))(v57, v66);
          v34 = v58;
          *v58 = v78;
          v35 = v68;
        }

        else if (v44 == 0xD000000000000010 && 0x8000000000291F50 == v28 || (sub_264F10() & 1) != 0)
        {
          (*(v63 + 8))(v57, v66);

          v34 = v58;
          v35 = v68;
        }

        else
        {
          if (v44 == 0x646E6550706F7473 && v28 == 0xEF61746144676E69)
          {
          }

          else
          {
            v50 = sub_264F10();

            if ((v50 & 1) == 0)
            {
              v51 = sub_264C10();
              swift_allocError();
              v53 = v52;
              v54 = v67;
              v55 = v67[4];
              sub_2E18(v67, v67[3]);
              sub_2650E0();
              sub_264BF0();
              (*(*(v51 - 8) + 104))(v53, enum case for DecodingError.dataCorrupted(_:), v51);
              swift_willThrow();
              (*(v63 + 8))(v57, v66);
              v32 = v54;
              return sub_3080(v32);
            }
          }

          (*(v63 + 8))(v57, v66);
          v34 = v58;
          v35 = v68;
        }

        goto LABEL_46;
      }

      v25 = v57;
    }

    *&v78 = a2;
    *(&v78 + 1) = v23;
    v79 = v59;
    v80 = v60;
    type metadata accessor for PageUpdateInstruction.ShelfItemUpdateDescriptor();
    sub_2646F0();
    LOBYTE(v78) = 1;
    v71 = swift_getWitnessTable();
    swift_getWitnessTable();
    v49 = v66;
    sub_264DF0();
    (*(v63 + 8))(v25, v49);
    v34 = v58;
    *v58 = v76;
    v35 = v68;
LABEL_46:
    swift_storeEnumTagMultiPayload();
    v36 = v67;
    v37 = v61;
    goto LABEL_22;
  }

  v32 = v67;
  return sub_3080(v32);
}

unint64_t sub_D278C()
{
  result = qword_31C8D8;
  if (!qword_31C8D8)
  {
    sub_2F9C(&qword_31C8D0, &qword_273588);
    sub_D2810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C8D8);
  }

  return result;
}

unint64_t sub_D2810()
{
  result = qword_31C8E0;
  if (!qword_31C8E0)
  {
    type metadata accessor for ToolbarItemType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C8E0);
  }

  return result;
}

unint64_t sub_D2868()
{
  result = qword_31C8E8;
  if (!qword_31C8E8)
  {
    sub_2F9C(&qword_3160B0, &qword_267D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C8E8);
  }

  return result;
}

uint64_t sub_D28E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_300348;
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

unint64_t sub_D2934(unsigned __int8 a1)
{
  v1 = 0x736D657469;
  v2 = 0xD000000000000010;
  if (a1 != 2)
  {
    v2 = 0x657075646564;
  }

  if (a1)
  {
    v1 = 0x4449666C656873;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_D29D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D2A48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D2AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D2B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D2B94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  result = sub_D28E4(*a1, *(a1 + 8));
  *a3 = result;
  return result;
}

unint64_t sub_D2BD0@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  result = sub_D2934(*v2);
  *a2 = result;
  a2[1] = v9;
  return result;
}

unint64_t sub_D2C04(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_D2934(*v1);
}

uint64_t sub_D2C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_D2930(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a4 = result;
  return result;
}

uint64_t sub_D2C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_D2CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PageUpdateInstruction.ShelfItemUpdateDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v32 = a4;
  *&v37 = a2;
  *(&v37 + 1) = a3;
  *&v38 = a4;
  *(&v38 + 1) = a5;
  v29 = a5;
  _s10CodingKeysOMa_1();
  swift_getWitnessTable();
  v34 = sub_264E20();
  v30 = *(v34 - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin(v34);
  v10 = &v25 - v9;
  v11 = a1[4];
  sub_2E18(a1, a1[3]);
  v33 = v10;
  v12 = v53;
  sub_265120();
  if (v12)
  {
    v19 = a1;
  }

  else
  {
    v13 = v30;
    v53 = a3;
    v14 = a1;
    v15 = v31;
    LOBYTE(v49) = 0;
    sub_D30E4();
    sub_264DF0();
    v16 = v37;
    LOBYTE(v37) = 1;
    v26 = sub_264DC0();
    v27 = v17;
    v28 = v16;
    v48 = 2;
    sub_D3138();
    v18 = v33;
    sub_264DB0();
    v46 = v51;
    *v47 = v52[0];
    *&v47[9] = *(v52 + 9);
    v44 = v49;
    v45 = v50;
    sub_2EF0(&qword_31C900, &qword_273590);
    LOBYTE(v35[0]) = 3;
    sub_D318C();
    sub_264DB0();
    (*(v13 + 8))(v18, v34);
    if (v37 == 3)
    {
      v21 = 1;
    }

    else
    {
      v21 = (v37 == 2) | v37;
    }

    v35[2] = v46;
    v36[0] = *v47;
    *(v36 + 9) = *&v47[9];
    v35[0] = v44;
    v35[1] = v45;
    PageUpdateInstruction.ShelfItemUpdateDescriptor.init(items:shelfID:paginationUpdate:dedupe:)(v28, v26, v27, v35, v21 & 1, &v37);
    v22 = v40;
    v23 = v42;
    *(v15 + 64) = v41;
    *(v15 + 80) = v23;
    *(v15 + 96) = v43;
    v24 = v38;
    *v15 = v37;
    *(v15 + 16) = v24;
    *(v15 + 32) = v39;
    *(v15 + 48) = v22;
    v19 = v14;
  }

  return sub_3080(v19);
}

unint64_t sub_D30E4()
{
  result = qword_31C8F0;
  if (!qword_31C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C8F0);
  }

  return result;
}

unint64_t sub_D3138()
{
  result = qword_31C8F8;
  if (!qword_31C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C8F8);
  }

  return result;
}

unint64_t sub_D318C()
{
  result = qword_31C908;
  if (!qword_31C908)
  {
    sub_2F9C(&qword_31C900, &qword_273590);
    sub_D3210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C908);
  }

  return result;
}

unint64_t sub_D3210()
{
  result = qword_31C910;
  if (!qword_31C910)
  {
    sub_2F9C(&qword_31A0B8, &unk_279D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C910);
  }

  return result;
}

uint64_t sub_D328C(uint64_t a1)
{
  v2 = sub_2EF0(qword_31C918, &qword_273598);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D32F4(char a1)
{
  if (a1)
  {
    return 0x4449666C656873;
  }

  else
  {
    return 0x7344496D657469;
  }
}

uint64_t sub_D3348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D33BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3514@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, Swift::OpaquePointer a3@<X3>, _BYTE *a4@<X8>)
{
  result = sub_D3918(*a1, *(a1 + 8), a2[2], a2[3], a2[4], a2[5], a3);
  *a4 = result;
  return result;
}

uint64_t sub_D3590@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, Swift::OpaquePointer a4@<X4>, _BYTE *a5@<X8>)
{
  result = sub_D3918(a1, a2, a3[2], a3[3], a3[4], a3[5], a4);
  *a5 = result;
  return result;
}

uint64_t sub_D35E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_D3634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PageUpdateInstruction.ShelfItemRemovalDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v21 = a6;
  *&v26 = a2;
  *(&v26 + 1) = a3;
  v23 = a4;
  v24 = a5;
  v27 = a4;
  v28 = a5;
  _s10CodingKeysOMa_0();
  swift_getWitnessTable();
  v25 = sub_264E20();
  v22 = *(v25 - 8);
  v8 = *(v22 + 64);
  __chkstk_darwin(v25);
  v10 = &v20 - v9;
  v11 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_265120();
  if (!v6)
  {
    v12 = v22;
    sub_2EF0(&qword_3160B0, &qword_267D40);
    v29 = 0;
    sub_D2868();
    sub_264DF0();
    v20 = v26;
    LOBYTE(v26) = 1;
    v13 = sub_264DC0();
    v14 = v10;
    v16 = v15;
    (*(v12 + 8))(v14, v25);
    PageUpdateInstruction.ShelfItemRemovalDescriptor.init(itemIDs:shelfID:)(v20, v13, v16, &v26);
    v17 = v27;
    v18 = v21;
    *v21 = v26;
    *(v18 + 2) = v17;
  }

  return sub_3080(a1);
}

uint64_t sub_D3918(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Swift::OpaquePointer a7)
{
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  v9 = sub_264D40(a7, v12);

  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D3968(char a1)
{
  if (a1)
  {
    return 0x4449666C656873;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

uint64_t sub_D39C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3A34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3BA4@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_D3C24@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_D3C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_D3CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a6;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  v19[0] = a4;
  v19[1] = a5;
  v24 = a4;
  v25 = a5;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v26 = sub_264E20();
  v20 = *(v26 - 8);
  v8 = *(v20 + 64);
  __chkstk_darwin(v26);
  v10 = v19 - v9;
  v11 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_265120();
  if (!v6)
  {
    v13 = v20;
    v12 = v21;
    LOBYTE(v22[0]) = 0;
    sub_752E8();
    sub_264DF0();
    LOBYTE(v22[0]) = 1;
    v14 = (v13 + 8);
    v15 = sub_264DC0();
    v17 = v16;
    (*v14)(v10, v26);
    sub_F7CC(&v23, v22);
    PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor.init(model:shelfID:)(v22, v15, v17, v12);
  }

  return sub_3080(a1);
}