unint64_t sub_98EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBB88);
    v3 = sub_ABB0C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_90090(v7, v8);
      result = sub_2EBF88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_99008(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2EBF88(v6, v7);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99118(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2EBF88(v6, v7);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99214(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDD8);
    v3 = sub_ABB0C0();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v21 = *v4;
      v22 = v6;
      v7 = v4[3];
      *v23 = v4[2];
      *&v23[16] = v7;
      v8 = v4[5];
      *&v23[32] = v4[4];
      *&v23[48] = v8;
      *&v23[64] = *(v4 + 12);
      v24 = v21;
      v25 = v22;
      v26 = *v23;
      sub_15F84(&v21, v20, &qword_DEBDE0);
      result = sub_2EC31C(&v24);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 40 * result;
      v12 = v25;
      *v11 = v24;
      *(v11 + 16) = v12;
      *(v11 + 32) = v26;
      v13 = (v3[7] + (result << 6));
      v14 = *&v23[40];
      v15 = *&v23[24];
      v16 = *&v23[56];
      *v13 = *&v23[8];
      v13[1] = v15;
      v13[2] = v14;
      v13[3] = v16;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_11;
      }

      v3[2] = v19;
      if (!i)
      {

        return v3;
      }

      v4 = (v4 + 104);
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBD90);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_DEBD98);
      v5 = v11;
      result = sub_2ECB8C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9B098(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_994C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF070);
    v3 = sub_ABB0C0();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_2F5A90(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_995A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDD0);
    v7 = sub_ABB0C0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_DEBDC8);
      result = sub_2EC048(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_AB3820();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF080);
    v7 = sub_ABB0C0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_DEBDC0);
      result = sub_2EC048(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_AB3820();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 48 * v13);
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      *v16 = *v8;
      v16[1] = v17;
      v16[2] = v18;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99994(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFB0);
  v3 = sub_ABB0C0();

  v4 = *(a1 + 240);
  v56 = *(a1 + 224);
  v57 = v4;
  v5 = *(a1 + 272);
  v58 = *(a1 + 256);
  v59 = v5;
  v6 = *(a1 + 176);
  v52 = *(a1 + 160);
  v53 = v6;
  v7 = *(a1 + 208);
  v54 = *(a1 + 192);
  v55 = v7;
  v8 = *(a1 + 112);
  v48 = *(a1 + 96);
  v49 = v8;
  v9 = *(a1 + 144);
  v50 = *(a1 + 128);
  v51 = v9;
  v10 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v10;
  v11 = *(a1 + 80);
  v46 = *(a1 + 64);
  v47 = v11;
  v13 = *(&v44 + 1);
  v12 = v44;
  sub_15F84(&v44, v43, &qword_DEBCD8);
  result = sub_2EBF88(v12, v13);
  if (v15)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v16 = (a1 + 288);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v3[6] + 16 * result);
    *v17 = v12;
    v17[1] = v13;
    v18 = (v3[7] + 240 * result);
    v19 = v45;
    v20 = v47;
    v18[1] = v46;
    v18[2] = v20;
    *v18 = v19;
    v21 = v48;
    v22 = v49;
    v23 = v51;
    v18[5] = v50;
    v18[6] = v23;
    v18[3] = v21;
    v18[4] = v22;
    v24 = v52;
    v25 = v53;
    v26 = v55;
    v18[9] = v54;
    v18[10] = v26;
    v18[7] = v24;
    v18[8] = v25;
    v27 = v56;
    v28 = v57;
    v29 = v59;
    v18[13] = v58;
    v18[14] = v29;
    v18[11] = v27;
    v18[12] = v28;
    v30 = v3[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      break;
    }

    v3[2] = v32;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v33 = v16 + 16;
    v34 = v16[13];
    v56 = v16[12];
    v57 = v34;
    v35 = v16[15];
    v58 = v16[14];
    v59 = v35;
    v36 = v16[9];
    v52 = v16[8];
    v53 = v36;
    v37 = v16[11];
    v54 = v16[10];
    v55 = v37;
    v38 = v16[5];
    v48 = v16[4];
    v49 = v38;
    v39 = v16[7];
    v50 = v16[6];
    v51 = v39;
    v40 = v16[1];
    v44 = *v16;
    v45 = v40;
    v41 = v16[3];
    v46 = v16[2];
    v47 = v41;
    v13 = *(&v44 + 1);
    v12 = v44;
    sub_15F84(&v44, v43, &qword_DEBCD8);
    result = sub_2EBF88(v12, v13);
    v16 = v33;
    if (v42)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_99BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF50);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_15F84(v9, v5, &qword_DEBC48);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2EC75C(*v5, v12);
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
      v18 = sub_AB31C0();
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

unint64_t sub_99DBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEB0);
    v3 = sub_ABB0C0();

    v4 = a1 + 48;
    while (1)
    {
      v21 = v1;
      v5 = *(v4 - 16);
      v6 = *(v4 - 8);
      v7 = *v4;
      v8 = *(v4 + 8);
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      v11 = *(v4 + 32);
      v12 = *(v4 + 40);

      v13 = v7;

      result = sub_2EBF88(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = v3[7] + 48 * result;
      *v17 = v13;
      *(v17 + 8) = v8;
      *(v17 + 16) = v10;
      *(v17 + 24) = v9;
      *(v17 + 32) = v11;
      *(v17 + 40) = v12;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v4 += 64;
      v3[2] = v20;
      v1 = v21 - 1;
      if (v21 == 1)
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

unint64_t sub_9A004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC20);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = *(v3 + 72);
    v21 = v8;

    while (1)
    {
      sub_15F84(v9, v5, &qword_DEBC18);
      result = sub_2ECD38(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20);
      sub_36B0C(v5, v13 + *(*(v14 - 8) + 72) * v12, &unk_DFEF20);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
      result = sub_36B0C(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &unk_E00040);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v20;
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

unint64_t sub_9A238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF30);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2ECCE8(v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_9A330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC40);
  v3 = sub_ABB0C0();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2EC514(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_2EC514(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_9A440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC30);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_DEBC38);
      v5 = v11;
      result = sub_2F5AD8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9ACFC(&v12, (v3[7] + 32 * result));
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

uint64_t _sSo15NSTextAlignmentV16MusicApplicationE012advancedTextB6PolicyAbC0fB0O_tcfC_0(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    v4 = 2;
    if (a1 == 4)
    {
      v4 = 0;
    }

    if (a1 == 3)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = [objc_opt_self() sharedApplication];
      v2 = [v1 userInterfaceLayoutDirection] != &dword_0 + 1;

      return 2 * v2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 4;
  }
}

unint64_t _s16MusicApplication13TextAlignmentO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_9A67C()
{
  result = qword_DEBB60;
  if (!qword_DEBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBB60);
  }

  return result;
}

unint64_t sub_9A6D4()
{
  result = qword_DEBB68;
  if (!qword_DEBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBB68);
  }

  return result;
}

unint64_t sub_9A72C()
{
  result = qword_DEBB70;
  if (!qword_DEBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBB70);
  }

  return result;
}

unint64_t sub_9A784()
{
  result = qword_DEBB78;
  if (!qword_DEBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBB78);
  }

  return result;
}

unint64_t sub_9A7DC()
{
  result = qword_DEBB80;
  if (!qword_DEBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBB80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextAlignment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextAlignment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TextCapitalization(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextCapitalization(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_9AAF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_9AB44(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 4 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_9ABF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_9AC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

_OWORD *sub_9ACFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_9AE20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    v6 = a5;
  }

  else
  {
    v7 = a3;
  }
}

uint64_t sub_9AE98(uint64_t result)
{
  if ((result - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_9AEAC(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

id sub_9AEC0(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {

    return swift_errorRetain();
  }

  else
  {

    return a2;
  }
}

uint64_t sub_9AF20(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double TextLabelProperties.init(textAttributes:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = 1;
  result = 16.0;
  *(a2 + 64) = xmmword_AF9C80;
  return result;
}

double TextLabelProperties.init(identifier:attributedTextProvider:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = xmmword_AFA860;
  *(a5 + 48) = xmmword_AF82C0;
  result = 16.0;
  *(a5 + 64) = xmmword_AF9C80;
  return result;
}

double TextLabelProperties.init(textAttributor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = 1;
  result = 16.0;
  *(a2 + 64) = xmmword_AF9C80;
  return result;
}

void TextLabelProperties.scaledValue(forValue:text:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  if ((*(v3 + 40) & 0x8000000000000000) != 0)
  {
    v9 = *(v3 + 16);
    sub_2F118(v3, aBlock);
    v12 = v9(a1, a2);
    v13 = [v12 length];
    if (v13 < 1)
    {
    }

    else
    {
      v14 = v13;
      v19 = 0;
      v20 = 0;
      v15 = swift_allocObject();
      *(v15 + 16) = &v19;
      *(v15 + 24) = &v20;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_9B94C;
      *(v16 + 24) = v15;
      aBlock[4] = sub_9B954;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_9B8A0;
      aBlock[3] = &block_descriptor_13;
      v17 = _Block_copy(aBlock);

      [v12 enumerateAttribute:NSFontAttributeName inRange:0 options:v14 usingBlock:{0, v17, v19}];
      _Block_release(v17);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }

      else
      {
        v18 = v20;

        if (v18)
        {
          [v18 _scaledValueForValue:a3];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v6 = *(v3 + 48);
    sub_2F118(v3, aBlock);
    v7 = [v6 _fontAdjustedForCurrentContentSizeCategory];
    if (v7)
    {
      v8 = v7;

      v6 = v8;
    }

    [v6 _scaledValueForValue:a3];

    sub_2F174(v4);
  }
}

void TextLabelProperties.hash(into:)()
{
  if ((*(v0 + 40) & 0x8000000000000000) != 0)
  {
    v1 = sub_AB9540();
    sub_ABB5D0(~v1);
  }

  else
  {
    TextAttributes.hash(into:)();
  }

  sub_ABB5D0(*(v0 + 56));
  v2 = *(v0 + 64);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_ABB600(*&v2);
  v3 = *(v0 + 72);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_ABB600(*&v3);
}

Swift::Int TextLabelProperties.hashValue.getter()
{
  sub_ABB5C0();
  TextLabelProperties.hash(into:)();
  return sub_ABB610();
}

Swift::Int sub_9B7E0()
{
  sub_ABB5C0();
  TextLabelProperties.hash(into:)();
  return sub_ABB610();
}

uint64_t sub_9B81C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s16MusicApplication19TextLabelPropertiesV2eeoiySbAC_ACtFZ_0(v8, v9) & 1;
}

uint64_t sub_9B8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_9ACFC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_9BC10(v13);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s16MusicApplication19TextLabelPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[5];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 40);
  if (v6 < 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    v13 = v4 == v7 && v5 == v8;
    if (!v13 && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(a2 + 24);
    v11 = a1[6];
    v12 = a1[4];
    v16[0] = v4;
    v16[1] = v5;
    v17 = *(a1 + 1);
    v18 = v12;
    v19 = v6;
    v20 = v11;
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    v21 = v7;
    v22 = v8;
    v23 = v10;
    v24 = v9;
    if (!_s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v16, &v21))
    {
      goto LABEL_14;
    }
  }

  if (a1[7] != *(a2 + 56) || (sub_7FD28(), (sub_AB38E0() & 1) == 0))
  {
LABEL_14:
    v14 = 0;
    return v14 & 1;
  }

  v14 = sub_AB38E0();
  return v14 & 1;
}

unint64_t sub_9BADC()
{
  result = qword_DEBE00;
  if (!qword_DEBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBE00);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_9BB4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_9BB9C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 4 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9BC10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_9BD38()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  *&v0[qword_DEBE90] = 0;
  *&v0[qword_DEBE98] = 0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ComposersViewController();
  v3 = objc_msgSendSuper2(&v13, "init");
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v4 = sub_AB9260();

  [v3 setTitle:v4];

  v5 = sub_AB9260();
  [v3 setPlayActivityFeatureName:v5];

  v6 = objc_opt_self();
  v7 = [v6 currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (!v8)
  {
    v9 = sub_AB9260();
    [v3 setRestorationIdentifier:v9];
  }

  v10 = [v6 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (!v11)
  {
    type metadata accessor for RestorationClass();
    [v3 setRestorationClass:swift_getObjCClassFromMetadata()];
  }

  return v3;
}

void sub_9BFD0(uint64_t a1)
{
  *(a1 + qword_DEBE90) = 0;
  *(a1 + qword_DEBE98) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_9C044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  v2 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;

  v4 = [v2 initWithProperties:isa relationships:0];

  qword_E70C40 = v4;
}

uint64_t sub_9C100()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = qword_DEBE90;
  if (*&v0[qword_DEBE90])
  {
    v4 = *&v0[qword_DEBE90];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v5 = sub_AB9320();
    v7 = v6;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v8 = v0;
    v4 = sub_4309D4(v5, v7);

    *&v0[v3] = v4;
  }

  return v4;
}

void sub_9C28C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ComposersViewController();
  v12.receiver = a1;
  v12.super_class = v8;
  v9 = a1;
  objc_msgSendSuper2(&v12, "viewDidAppear:", a3);
  v10 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v11 = MetricsEvent.Page.libraryComposersList.unsafeMutableAddressor();
  sub_9D330(v11, v7);
  (*(&stru_68.reloff + (swift_isaMask & *v10)))(v7, 0, 0, 0, 0, 0);
  sub_9D394(v7);
}

void sub_9C3A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_9C5D0();
  }
}

uint64_t sub_9C3FC(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for ComposersViewController();
  v1 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v2 = sub_9C100();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = *(v2 + 88);
  *(v2 + 88) = sub_9D328;
  *(v2 + 96) = v3;

  sub_17654(v4);
}

uint64_t sub_9C4CC()
{
  v1 = v0;
  sub_9CB28();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_9C100();
  v5 = *(v1 + v2);
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v13 = *(v4 + 64);
    *(v4 + 64) = 1;
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_430320();
    goto LABEL_11;
  }

  v6 = (*(*(v1 + qword_DEBE90) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 != 0;
    v11 = *(v4 + 64);
    *(v4 + 64) = v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:
}

void sub_9C5D0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v3 = objc_opt_self();
  sub_13C80(0, &qword_DE8E90);
  v4 = v2;
  v5 = static MPModelAlbum.defaultMusicKind.getter();
  v6 = [v3 kindWithAlbumKind:v5];

  [v4 setItemKind:v6];
  v7 = sub_AB9260();
  [v4 setLabel:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF4EC0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  isa = sub_AB9740().super.isa;
  v11 = [objc_opt_self() propertySetWithProperties:isa];

  [v4 setSectionProperties:v11];
  if (qword_DE6788 != -1)
  {
    swift_once();
  }

  [v4 setItemProperties:qword_E70C40];

  if (*(*(sub_9C100() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
  {

    v12 = sub_AB9260();
  }

  else
  {
    v12 = 0;
  }

  [v4 setFilterText:v12];

  v13 = [v1 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v4);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = sub_9D2C0;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_151E0;
  v16[3] = &block_descriptor_14;
  v15 = _Block_copy(v16);

  [v4 performWithResponseHandler:v15];
  _Block_release(v15);
}

uint64_t sub_9C91C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9D320, v5);
}

void sub_9C9C0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    sub_3B4724(a2);
  }
}

void sub_9CA28(void *a1)
{
  v2 = v1;
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB92A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  objc_allocWithZone(type metadata accessor for AlbumsViewController());
  v9 = a1;
  v13 = sub_13B3E0(3, a1, 1, v6, v8);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 pushViewController:v13 animated:1];

    v12 = v11;
  }

  else
  {
    v12 = v13;
  }
}

void *sub_9CB28()
{
  v1 = qword_DEBE98;
  if (*&v0[qword_DEBE98])
  {
    v2 = *&v0[qword_DEBE98];
  }

  else
  {
    v2 = sub_9CB90(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_9CB90(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v3[27];
    v3[27] = sub_9D2B8;
    v3[28] = v6;

    sub_17654(v7);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_9CCCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!(_swiftEmptyArrayStorage >> 62) || !sub_ABB060())
    {
      return &_swiftEmptySetSingleton;
    }

    sub_118B4(_swiftEmptyArrayStorage);
    return v9;
  }

  v1 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  v3 = v1;
  result = [v3 loadViewIfNeeded];
  v5 = *&v3[qword_DFE2F8];
  if (v5)
  {
    v6 = v5;

    *(inited + 32) = v6;
    sub_118B4(inited);
    v8 = v7;
    swift_setDeallocating();
    swift_arrayDestroy();

    return v8;
  }

  __break(1u);
  return result;
}

__n128 sub_9CDFC@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v5 = Strong;
  v6 = sub_9C100();

  v7 = (*(v6 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v8 = v7[1];
  if (!v8)
  {

LABEL_10:
    v13 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = *(a1 + 64);
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v17 = *a1;
    v18 = *(a1 + 16);
    v15 = v22;
    v14 = a1;
    goto LABEL_11;
  }

  v9 = *v7;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  if (qword_DE6BD0 != -1)
  {
    swift_once();
  }

  v22[3] = xmmword_E717A8;
  v22[4] = xmmword_E717B8;
  v22[1] = xmmword_E71788;
  v22[2] = xmmword_E71798;
  v22[0] = xmmword_E71778;
  v11 = qword_E717C8;
  v23 = qword_E717C8;
  v13 = *(&xmmword_E717B8 + 1);
  v12 = xmmword_E717B8;
  v19 = xmmword_E71798;
  v20 = xmmword_E717A8;
  v17 = xmmword_E71778;
  v18 = xmmword_E71788;
  v14 = v22;
  v15 = &v21;
LABEL_11:
  sub_576EC(v14, v15);
  *a2 = v17;
  *(a2 + 16) = v18;
  result = v20;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v11;
  return result;
}

uint64_t sub_9CF64()
{
}

id sub_9CFBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_9CFFC()
{
}

uint64_t type metadata accessor for ComposersViewController()
{
  result = qword_DEBEC8;
  if (!qword_DEBEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9D114(char *a1, id a2)
{
  v3 = [a2 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_personName];
  *v8 = v5;
  v8[1] = v7;

  v9 = *&a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents];

  v10 = String.trim()();

  swift_beginAccess();
  v9[7] = v10;

  sub_2EB704();
  [a1 setNeedsLayout];
  v11 = &a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkSize];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_42A2EC();
  v12 = &a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkSize];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_42A2EC();
  v13 = &a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkEdgeInsets];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_42A2EC();
  v14 = &a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkEdgeInsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  return sub_42A2EC();
}

uint64_t sub_9D278()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_9D2E0()
{

  return swift_deallocObject();
}

uint64_t sub_9D330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9D394(uint64_t a1)
{
  v2 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id JSSocialOnboardingWelcomeViewController.__allocating_init(socialOnboardingWelcomeViewModel:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v3[v4] = TextDrawing.Cache.init()();
  *&v3[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView] = 0;
  v5 = &v3[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_socialOnboardingWelcomeViewModel] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

id JSSocialOnboardingWelcomeViewController.init(socialOnboardingWelcomeViewModel:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v1[v4] = TextDrawing.Cache.init()();
  *&v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView] = 0;
  v5 = &v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_socialOnboardingWelcomeViewModel] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void JSSocialOnboardingWelcomeViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v1) = TextDrawing.Cache.init()();
  *(v0 + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize);
  *v2 = 0;
  v2[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

Swift::Void __swiftcall JSSocialOnboardingWelcomeViewController.loadView()()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [objc_allocWithZone(type metadata accessor for TintColorObservingView()) initWithFrame:{v4, v6, v8, v10}];
  [v11 setAutoresizingMask:18];
  v12 = *&v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache];
  v13 = [v11 tintColor];
  swift_beginAccess();
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;
  v15 = v13;

  sub_10710C();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v11[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v18 = *v17;
  *v17 = sub_9E5A8;
  v17[1] = v16;

  sub_17654(v18);

  [v1 setView:v11];
}

void sub_9D870(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache);
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v3 + 24);
    *(v3 + 24) = a1;
    v6 = a1;

    sub_10710C();
  }
}

Swift::Void __swiftcall JSSocialOnboardingWelcomeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewWillAppear:", a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setPrefersLargeTitles:0];
  }
}

Swift::Void __swiftcall JSSocialOnboardingWelcomeViewController.viewDidLoad()()
{
  v1 = v0;
  v64.receiver = v0;
  v64.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v64, "viewDidLoad");
  v2 = sub_9E06C();
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache];
  v4 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textDrawingCache;
  swift_beginAccess();
  *&v2[v4] = v3;
  swift_retain_n();

  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView];
  v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v7 = *&v5[v6];
  *&v5[v6] = v3;

  v8 = v5;
  sub_2E6210(v7);

  v9 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView;
  v10 = *&v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView];
  v11 = *&v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_socialOnboardingWelcomeViewModel];
  v12 = (v11 + OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_headlineText);
  swift_beginAccess();
  if (v12[1])
  {
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = &v10[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline];
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = v13;
  v15[1] = v14;
  v18 = v10;

  sub_138C60(v16, v17);

  v19 = *&v1[v9];
  v20 = (v11 + OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_titleText);
  swift_beginAccess();
  if (v20[1])
  {
    v21 = *v20;
    v22 = v20[1];
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = &v19[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title];
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = v21;
  v23[1] = v22;
  v26 = v19;

  sub_138E18(v24, v25);

  v27 = *&v1[v9];
  v28 = (v11 + OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_subtitleText);
  swift_beginAccess();
  if (v28[1])
  {
    v29 = *v28;
    v30 = v28[1];
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = &v27[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle];
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  *v31 = v29;
  v31[1] = v30;
  v34 = v27;

  sub_138FD4(v32, v33);

  v35 = OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_textAlignment;
  swift_beginAccess();
  v36 = *(v11 + v35);
  if (v36 != 6)
  {
    v37 = *&v1[v9];
    v38 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment;
    swift_beginAccess();
    v39 = v37[v38];
    v37[v38] = v36;
    if (v39 != v36)
    {
      v40 = *&v37[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents];
      v41 = *&v37[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 8];
      v42 = *&v37[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 16];
      v43 = v37;
      sub_13AE14(v36, v40, v41, v42);
      [v43 setNeedsLayout];
    }
  }

  v44 = *&v1[v9];
  v45 = OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_artwork;
  swift_beginAccess();
  v46 = *(v11 + v45);
  v47 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork;
  swift_beginAccess();
  v48 = *&v44[v47];
  *&v44[v47] = v46;
  v49 = v46;
  v50 = v44;

  sub_13938C();
  v51 = OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_artworkScaleMode;
  swift_beginAccess();
  v52 = *(v11 + v51);
  if (v52 != 3)
  {
    v53 = 0xEE00746946746365;
    v54 = 0x707341656C616373;
    v55 = *&v1[v9];
    v56 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode;
    swift_beginAccess();
    v57 = v55[v56];
    v55[v56] = v52;
    if (v57)
    {
      if (v57 == 1)
      {
        v58 = 0xD000000000000014;
        v59 = 0x8000000000B4DD30;
        if (!v52)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v59 = 0xEF6C6C6946746365;
        v58 = 0x707341656C616373;
        if (!v52)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v58 = 0x707341656C616373;
      v59 = 0xEE00746946746365;
      if (!v52)
      {
        goto LABEL_23;
      }
    }

    if (v52 != 1)
    {
      v53 = 0xEF6C6C6946746365;
      if (v58 != 0x707341656C616373)
      {
LABEL_28:
        v60 = sub_ABB3C0();
        v61 = v55;

        if ((v60 & 1) == 0)
        {
          [v61 setNeedsLayout];
        }

        goto LABEL_31;
      }

LABEL_26:
      if (v59 == v53)
      {

        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v54 = 0xD000000000000014;
    v53 = 0x8000000000B4DD30;
LABEL_23:
    if (v58 != v54)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_31:
  v62 = [v1 view];
  if (v62)
  {
    v63 = v62;
    [v62 addSubview:*&v1[v9]];

    sub_9E0E4();
  }

  else
  {
    __break(1u);
  }
}

id sub_9E06C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView);
  }

  else
  {
    type metadata accessor for JSSocialOnboardingWelcomeView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_9E0E4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize];
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize];
  v4 = sub_9E06C();
  v5 = *v2;
  v6 = [v4 traitCollection];
  [v6 displayScale];
  [v4 bounds];
  v8 = v7;
  v10 = v9;
  [v4 music_inheritedLayoutInsets];
  v15 = UIEdgeInsetsInsetRect_1(v8, v10, v5, 0.0, v11, v12, v13, v14);
  v17 = v16;
  v18 = *&v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView];
  v19 = [v18 traitCollection];
  [v19 displayScale];
  v21 = v20;

  if (v17 <= 5.99231045e307)
  {
    v22 = v17;
  }

  else
  {
    v22 = 5.99231045e307;
  }

  sub_2E94A4(v30, 0.0, 0.0, v15, v22, v21);
  sub_3F250(v30);

  sub_AB39F0();
  v24 = v23;

  if (v2[1] > v24)
  {
    v24 = v2[1];
  }

  type metadata accessor for CGSize(0);
  [v1 preferredContentSize];
  v28 = v25;
  v29 = v26;
  result = sub_AB38D0();
  if (result)
  {
    return [v1 setPreferredContentSize:{v3, v24, *&v3, *&v24, v28, v29}];
  }

  return result;
}

Swift::Void __swiftcall JSSocialOnboardingWelcomeViewController.viewWillLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = sub_9E06C();
    [v11 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    __break(1u);
  }
}

uint64_t JSSocialOnboardingWelcomeViewController.socialOnboardingVerticalStackVisibleBoundsDidChange(_:)(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize);
  *v5 = a3;
  v5[1] = a4;
  return sub_9E0E4();
}

uint64_t sub_9E570()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_9E5E8()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  __chkstk_darwin(v4);
  v6 = v46 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v46[1] = v3;
  v47 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v6;
  v49 = v2;
  v50 = v1;
  v9 = *(v0 + 224);
  v10 = sub_13C80(0, &qword_DE7500);

  v54 = v10;
  v11 = WeakArray.allElements.getter();

  v12 = v8;
  v52 = v11;
  v53 = sub_4DE4FC(v11, v12, v0);
  v51 = v12;

  v55 = v0;
  v13 = sub_17DB8();
  sub_185CC(v13);
  v15 = v14;

  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (v15 + 40);
    while (v17 < *(v15 + 16))
    {
      v21 = *v18;
      ObjectType = swift_getObjectType();
      v23 = *(v21 + 8);
      swift_unknownObjectRetain();
      v23(ObjectType, v21);
      type metadata accessor for ImpressionTracker();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        *(v24 + 40) = 1;
      }

      ++v17;
      swift_unknownObjectRelease();
      v23(ObjectType, v21);
      v9 = v19;
      v20 = swift_getObjectType();
      (*(v9 + 96))(v20, v9);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v18 += 2;
      if (v16 == v17)
      {
        goto LABEL_8;
      }
    }

LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_8:

    v9 = v55;
    v25 = *(v55 + 208);
    v26 = v53;
    if (*(v25 + 16) <= v53[2] >> 3)
    {
      v56 = v53;

      sub_1C4DBC(v25);

      v27 = v56;
    }

    else
    {

      v27 = sub_1C5C2C(v25, v26);
    }

    swift_weakInit();
    v28 = 1 << v27[32];
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v27 + 7);

    swift_beginAccess();
    v31 = 0;
    v32 = (v28 + 63) >> 6;
    while (v30)
    {
LABEL_19:
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v35 = *(*(v27 + 6) + ((v31 << 9) | (8 * v34)));

      v9 = WeakArray.subscript.getter();

      if (v9)
      {
        if (swift_weakLoadStrong())
        {
          sub_9F014(v9, v35);
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v33 >= v32)
      {
        break;
      }

      v30 = *&v27[8 * v33 + 56];
      ++v31;
      if (v30)
      {
        v31 = v33;
        goto LABEL_19;
      }
    }

    swift_weakDestroy();
    v9 = v55;
    v36 = *(v55 + 208);
    v37 = v53;
    if (v53[2] <= *(v36 + 16) >> 3)
    {
      v57 = *(v55 + 208);

      sub_1C4DBC(v37);
      v38 = v57;
    }

    else
    {

      v38 = sub_1C5C2C(v37, v36);
    }

    sub_9EBF0(v38);
    *(v9 + 208) = v37;

    if (qword_DE6D68 == -1)
    {
      goto LABEL_27;
    }
  }

  swift_once();
LABEL_27:
  if (byte_E71A90 != 1 && *(v9 + 145) == 1 && (sub_472A68() & 1) != 0)
  {
    v39 = v48;
    sub_AB3420();
    v40 = swift_allocObject();
    swift_weakInit();
    v42 = v49;
    v41 = v50;
    v43 = v47;
    (*(v49 + 16))(v47, v39, v50);
    v44 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v40;
    (*(v42 + 32))(v45 + v44, v43, v41);

    sub_48C6A0(sub_A97D0, v45);
    (*(v42 + 8))(v39, v41);
  }

  else
  {
  }
}

void sub_9EBF0(uint64_t a1)
{
  v41 = sub_AB3430();
  v3 = *(v41 - 8);
  v4 = __chkstk_darwin(v41);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v5;
  __chkstk_darwin(v4);
  v46 = &v35 - v6;
  v48 = v1;
  swift_weakInit();
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);

  swift_beginAccess();
  v11 = 0;
  v12 = (v8 + 63) >> 6;
  v36 = v3 + 32;
  v37 = v3 + 16;
  v40 = v3;
  v35 = v3 + 8;
  v42 = a1;
  while (v10)
  {
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(a1 + 48) + ((v11 << 9) | (8 * v14)));
    sub_13C80(0, &qword_DE7500);

    v49 = v15;
    v16 = WeakArray.subscript.getter();

    if (v16)
    {
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        v19 = v16;
        ObjectType = swift_getObjectType();
        v21 = swift_conformsToProtocol2();
        v47 = v19;
        if (v21)
        {
          v45 = *(v21 + 8);
          v22 = v21;
          v23 = v19;
          v45(ObjectType, v22);
          v25 = v24;
          v26 = swift_getObjectType();
          (*(v25 + 16))(0, v26, v25);

          v19 = v47;
          swift_unknownObjectRelease();
        }

        v45 = [v19 view];
        if (!v45)
        {
          goto LABEL_18;
        }

        v27 = v46;
        sub_AB3420();
        v43 = *(v18 + 88);
        v44 = v18;
        v28 = swift_allocObject();
        swift_weakInit();
        v30 = v40;
        v29 = v41;
        v31 = v38;
        (*(v40 + 16))(v38, v27, v41);
        v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = swift_allocObject();
        v34 = v49;
        *(v33 + 16) = v28;
        *(v33 + 24) = v34;
        (*(v30 + 32))(v33 + v32, v31, v29);

        sub_48C6A0(sub_A9908, v33);
        (*(v30 + 8))(v46, v29);

        a1 = v42;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      swift_weakDestroy();
      return;
    }

    v10 = *(v7 + 8 * v13);
    ++v11;
    if (v10)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_9F014(void *a1, uint64_t a2)
{
  v3 = v2;
  v81 = a2;
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  __chkstk_darwin(v8);
  v10 = &v69 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v79 = v10;
  v80 = Strong;
  v78 = v5;
  swift_getObjectType();
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = a1 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  v75 = v14;
  v15 = &selRef__authenticateReturningError_;
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v6;
  if (v13)
  {
    v74 = 0;
  }

  else
  {
    v16 = v12;
    v73 = v7;
    swift_beginAccess();
    v17 = v3[31];
    ObjectType = swift_getObjectType();
    v19 = a1;

    v20 = sub_472FF8(v19, v17);

    v21 = *(v16 + 8);
    if ((v20 & 1) == 0)
    {
      v21(ObjectType, v16);
      v23 = v22;
      v24 = swift_getObjectType();
      v25 = (*(v23 + 32))(v24, v23);
      swift_unknownObjectRelease();
      if (v25)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v21(ObjectType, v16);
        v27 = v26;
        v28 = swift_getObjectType();
        v74 = ObjectType;
        v71 = *(v27 + 40);
        v72 = v28;
        v29 = swift_unknownObjectRetain();
        v71(v29, &off_CFADC8, v72, v27);
        swift_unknownObjectRelease();
        v71 = v19;
        v72 = v21;
        v30 = (v21)(v74, v16);
        v70 = v31;
        v32 = v3[4];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_6AB8C(0, v32[2] + 1, 1, v32);
        }

        v34 = v32[2];
        v33 = v32[3];
        v19 = v71;
        if (v34 >= v33 >> 1)
        {
          v32 = sub_6AB8C((v33 > 1), v34 + 1, 1, v32);
        }

        v32[2] = v34 + 1;
        v35 = &v32[2 * v34];
        v36 = v70;
        v35[4] = v30;
        v35[5] = v36;
        v37 = v3[4];
        v3[4] = v32;
        sub_12E05C(v37);

        swift_beginAccess();
        sub_1A338(&v85, v19);
        swift_endAccess();

        ObjectType = v74;
        v21 = v72;
      }
    }

    v21(ObjectType, v16);
    v39 = v38;
    v40 = swift_getObjectType();
    v74 = (*(v39 + 80))(v40, v39);
    swift_unknownObjectRelease();
    v21(ObjectType, v16);
    v42 = v41;
    v43 = [v80 view];
    if (!v43)
    {
      goto LABEL_31;
    }

    v44 = v43;
    v45 = swift_getObjectType();
    v46 = [v44 isHidden];

    (*(v42 + 16))(v46 ^ 1, v45, v42);
    swift_unknownObjectRelease();
    v15 = &selRef__authenticateReturningError_;
  }

  v47 = sub_17DB8();
  v48 = sub_472FF8(a1, v47);

  if (v48)
  {
    v49 = 2;
  }

  else
  {
    v49 = 0;
  }

  v50 = [a1 v15[342]];
  v51 = v79;
  if (!v50)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v52 = v50;
  sub_AB3420();
  v53 = swift_unknownObjectWeakLoadStrong();
  if (v53 && (v54 = v53, sub_A0C94(v81, v83), v54, v91 = v83[6], v92 = v83[7], v93[0] = v84[0], *(v93 + 9) = *(v84 + 9), v87 = v83[2], v88 = v83[3], v89 = v83[4], v90 = v83[5], v85 = v83[0], v86 = v83[1], sub_A996C(&v85) != 1))
  {
    v100 = v91;
    v101 = v92;
    v102[0] = v93[0];
    *(v102 + 9) = *(v93 + 9);
    v96 = v87;
    v97 = v88;
    v98 = v89;
    v99 = v90;
    v94 = v85;
    v95 = v86;
    v73 = v3[11];
    v55 = v51;
    v56 = swift_allocObject();
    swift_weakInit();
    v58 = v77;
    v57 = v78;
    v59 = v49;
    v60 = v76;
    (*(v77 + 16))(v76, v55, v78);
    v61 = (*(v58 + 80) + 210) & ~*(v58 + 80);
    v62 = swift_allocObject();
    v63 = v101;
    *(v62 + 136) = v100;
    *(v62 + 152) = v63;
    *(v62 + 168) = v102[0];
    *(v62 + 177) = *(v102 + 9);
    v64 = v97;
    *(v62 + 72) = v96;
    *(v62 + 88) = v64;
    v65 = v99;
    *(v62 + 104) = v98;
    *(v62 + 120) = v65;
    v66 = v95;
    *(v62 + 40) = v94;
    v67 = v81;
    *(v62 + 16) = v56;
    *(v62 + 24) = v67;
    *(v62 + 32) = v52;
    *(v62 + 56) = v66;
    *(v62 + 200) = v74;
    *(v62 + 208) = v75;
    *(v62 + 209) = v59;
    (*(v58 + 32))(v62 + v61, v60, v57);

    v68 = v52;
    sub_15F84(v83, &v82, qword_DF1340);
    sub_48C6A0(sub_A9AAC, v62);
    sub_12E1C(v83, qword_DF1340);
    (*(v58 + 8))(v79, v57);
  }

  else
  {
    (*(v77 + 8))(v51, v78);
  }
}

void *sub_9F704(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_impressionTrackingIsEnabledOverride) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController____lazy_storage___impressionsTracker) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isInsidePopover) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  v5 = type metadata accessor for MetricsPageProperties();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wantsTopStackItemHairline) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isPageHeaderContentBottomHairlineVisible) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pendingStackItemUpdateRequests) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wasUnderlappingStatusBar) = 2;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipRequest) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_shouldIgnoreStackItemUpdates) = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController;
  *(v1 + v6) = sub_96934(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds) = a1;
  v7 = sub_4D3A88(_swiftEmptyArrayStorage);
  v8 = [v7 navigationItem];
  v9 = sub_387998();
  if (v9 > 2)
  {
    if (v9 == 3)
    {

      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v10 = sub_ABB3C0();

  if ((v10 & 1) == 0)
  {
LABEL_5:
    if (qword_DE6B20 != -1)
    {
      swift_once();
    }

    v11 = qword_E01290;
    v12 = sub_AB9260();
    objc_setAssociatedObject(v8, v11, v12, &dword_0 + 1);

    [v8 _setManualScrollEdgeAppearanceEnabled:0];
    [v8 _setAutoScrollEdgeTransitionDistance:16.0];
    [v8 _setManualScrollEdgeAppearanceEnabled:1];
  }

LABEL_9:
  v24 = v7;
  v13 = sub_A0BB4();
  *(v13 + 145) = 0;
  v14 = *(v13 + 32);
  v15 = *(v14 + 16);

  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 40);
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_23:
        swift_once();
        if ((byte_E71A90 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_21:

        v22 = v24;
        goto LABEL_27;
      }

      v20 = *v17;
      v21 = qword_DE6D68;
      swift_unknownObjectRetain();
      if (v21 == -1)
      {
        if (byte_E71A90)
        {
          goto LABEL_16;
        }
      }

      else
      {
        swift_once();
        if (byte_E71A90)
        {
LABEL_16:
          v18 = 0;
          goto LABEL_12;
        }
      }

      v18 = *(v13 + 145);
LABEL_12:
      ++v16;
      ObjectType = swift_getObjectType();
      (*(v20 + 16))(v18, ObjectType, v20);
      swift_unknownObjectRelease();
      v17 += 2;
    }

    while (v15 != v16);
  }

  if (qword_DE6D68 != -1)
  {
    goto LABEL_23;
  }

  if (byte_E71A90)
  {
    goto LABEL_21;
  }

LABEL_24:
  v22 = v24;
  if (*(v13 + 145))
  {
    sub_9E5E8();
  }

LABEL_27:
  sub_A363C();

  return v22;
}

void sub_9FE04(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for JSVerticalStackViewController();
  v6 = *a4;
  v7 = v11.receiver;
  v8 = objc_msgSendSuper2(&v11, v6, a3);
  v9 = (*&stru_388.segname[(swift_isaMask & *v7) - 8])(v8);
  if (v9)
  {
    v10 = v9;
    [v9 endAppearanceTransition];

    v7 = v10;
  }
}

void sub_9FECC()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for JSVerticalStackViewController();
  objc_msgSendSuper2(&v25, "viewDidLayoutSubviews");
  sub_A737C();
  v2 = (*&stru_388.segname[(swift_isaMask & *v0) - 8])();
  if (v2)
  {
    goto LABEL_2;
  }

  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem];
    if (v4)
    {
      v5 = *&stru_298.segname[(swift_isaMask & *v4) + 8];
      v6 = v4;
      v7 = v3;
      v24 = v6;
      if (v5() > 1u)
      {
      }

      else
      {
        v8 = sub_ABB3C0();

        if ((v8 & 1) == 0)
        {
LABEL_24:

          v2 = v24;
LABEL_2:

          return;
        }
      }

      v9 = sub_4D3DD0();
      UIView.statusBarFrame.getter(v26);

      if ((v27 & 1) == 0)
      {
        v11 = *&v26[2];
        v10 = *&v26[3];
        v13 = *v26;
        v12 = *&v26[1];
        [*&v7[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView] frame];
        CGRectGetMinY(v28);
        [*&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] contentOffset];
        v29.origin.x = v13;
        v29.origin.y = v12;
        v29.size.width = v11;
        v29.size.height = v10;
        CGRectGetMidY(v29);
        sub_471A4();
        v14 = sub_AB38F0();
        v15 = v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wasUnderlappingStatusBar];
        if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
        {
          v23 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wasUnderlappingStatusBar;
          v22 = v14 & 1;
          v16 = [v1 navigationItem];
          v17 = [v1 parentViewController];
          if (v17)
          {
            v18 = v17;
            while (1)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              v19 = v18;
              v20 = [v19 navigationItem];

              v18 = [v19 parentViewController];
              v16 = v20;
              if (!v18)
              {
                goto LABEL_20;
              }
            }
          }

          v20 = v16;
LABEL_20:
          if (v22)
          {
            (*(&stru_158.reloff + (swift_isaMask & *v24)))();
            v21 = sub_AB9260();
          }

          else
          {
            v21 = 0;
          }

          [v20 _setTitle:v21 animated:1];

          v1[v23] = v22;
        }
      }

      goto LABEL_24;
    }
  }
}

void sub_A02D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5E0);
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v29 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5E8);
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for JSVerticalStackViewController();
  v33.receiver = v0;
  v33.super_class = v10;
  objc_msgSendSuper2(&v33, "viewDidLoad");
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = [v0 viewBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = (*&stru_388.segname[(swift_isaMask & *v1) - 8])();
  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = v14;
  v28 = v5;
  v16 = v7;
  v17 = sub_4D3DD0();
  v18 = *&v15[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView];
  *&v15[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView] = v17;
  v19 = v17;
  sub_3714A4(v18);

  v20 = [v15 view];
  if (!v20)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v21 = v20;
  [v12 addSubview:v20];

  v7 = v16;
  v5 = v28;
LABEL_5:
  static ApplicationCapabilities.shared.getter(v34);
  v22 = v35;

  sub_70C54(v34);
  v23 = sub_472A84(10, v22);

  if (v23)
  {
    if (qword_DE6800 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5F0);
    v24 = v29;
    sub_AB54E0();
    swift_endAccess();
    sub_13C80(0, &qword_DE8ED0);
    v25 = sub_ABA150();
    v32 = v25;
    v26 = sub_ABA130();
    (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
    sub_36A00(&qword_DEC5F8, &qword_DEC5E0);
    sub_60090();
    sub_AB5590();
    sub_12E1C(v4, &unk_DFA9F0);
    (*(v31 + 8))(v24, v5);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_36A00(&unk_DEC600, &qword_DEC5E8);
    v27 = sub_AB55C0();
    (*(v30 + 8))(v9, v7);

    *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipSubscription) = v27;
  }

  else
  {
  }
}

void sub_A086C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem);
    if (!v4)
    {
      goto LABEL_13;
    }

    v5 = *(&stru_388.reserved2 + (swift_isaMask & *v4));
    v6 = v4;
    v7 = v5();
    v9 = v8;

    if (!v9)
    {
      goto LABEL_13;
    }

    v10._rawValue = &off_CEFEC8;
    v17._countAndFlagsBits = v7;
    v17._object = v9;
    v11 = sub_ABB140(v10, v17);

    if (v11)
    {
      if (v11 != 1)
      {
LABEL_13:

        return;
      }

      v12 = 1;
      if (!*(v1 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
      if (!*(v1 + 16))
      {
        goto LABEL_11;
      }
    }

    v13 = sub_2EC5A8(v12);
    if (v14)
    {
      v15 = *(*(v1 + 56) + 8 * v13);
      v16 = v15;
LABEL_12:
      sub_A7F78(v15);

      v3 = v15;
      goto LABEL_13;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }
}

id sub_A0ACC()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider];
  if (!v1 || (v2 = , v3 = v1(v2), sub_17654(v1), (result = v3) == 0))
  {
    result = [v0 parentViewController];
    if (result)
    {
      v5 = result;
      type metadata accessor for JSDrivenViewController();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
        v8 = v6;
        swift_beginAccess();
        v9 = *(v8 + v7);
        v10 = v9;

        return v9;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_A0BB4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController____lazy_storage___impressionsTracker];
  }

  else
  {
    v3 = v0;
    v4 = sub_4D3DD0();
    sub_A9124();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = type metadata accessor for PageHeaderContentViewController();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC590);
    swift_allocObject();
    v2 = sub_2BE654(v3, v4, inited, 1);
    *&v3[v1] = v2;
  }

  return v2;
}

double sub_A0C94@<D0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = a2;
  v5 = &v66;
  v6 = &v42;
  if (a1 == -2)
  {
    v42 = xmmword_AFAA50;
    v43 = xmmword_AFAA50;
    v44 = xmmword_AFAA60;
    *v45 = 512;
    v45[2] = 20;
    memset(&v45[8], 0, 72);
    v46[0] = 1;
    *&v46[8] = 0;
    *&v46[16] = 0;
    v46[24] = 2;
    v47 = xmmword_AFAA50;
    v48 = xmmword_AFAA50;
    v49 = xmmword_AFAA60;
    *v50 = 512;
    v50[2] = 20;
    memset(v52, 0, sizeof(v52));
    v51 = 0u;
    v53 = 1;
    v54 = 0;
    v55 = 0;
    v56 = 2;
    goto LABEL_5;
  }

  if (a1 == -1)
  {
    *&v42 = 0xD000000000000019;
    *(&v42 + 1) = 0x8000000000B4E290;
    *&v43 = 0xD000000000000019;
    *(&v43 + 1) = 0x8000000000B4E290;
    v44 = xmmword_AFAA70;
    *v45 = 512;
    v45[2] = 20;
    memset(&v45[8], 0, 72);
    v46[0] = 1;
    *&v46[8] = 0;
    *&v46[16] = 0;
    v46[24] = 2;
    *&v47 = 0xD000000000000019;
    *(&v47 + 1) = 0x8000000000B4E290;
    *&v48 = 0xD000000000000019;
    *(&v48 + 1) = 0x8000000000B4E290;
    v49 = xmmword_AFAA70;
    *v50 = 512;
    v50[2] = 20;
    memset(v52, 0, sizeof(v52));
    v51 = 0u;
    v53 = 1;
    v54 = 0;
    v55 = 0;
    v56 = 2;
LABEL_5:
    sub_465F4(&v42, &v66);
    sub_46650(&v47);
    v63 = *&v45[48];
    v64 = *&v45[64];
    v65[0] = *v46;
    *(v65 + 9) = *&v46[9];
    v59 = v44;
    v60 = *v45;
    v61 = *&v45[16];
    v62 = *&v45[32];
    v57 = v42;
    v58 = v43;
    UIScreen.Dimensions.size.getter(*&v42);
    v72 = v63;
    v73 = v64;
    v74[0] = v65[0];
    *(v74 + 9) = *(v65 + 9);
    v68 = v59;
    v69 = v60;
    v70 = v61;
    v71 = v62;
    v66 = v57;
    v67 = v58;
    goto LABEL_21;
  }

  v7 = *(v2 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController);
  v8 = (v7 + 64);
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v5 = ((v9 + 63) >> 6);
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v5)
        {

          sub_465CC(&v66);
          v4 = a2;
          v5 = &v66;
          goto LABEL_21;
        }

        v11 = v8[v13];
        ++v12;
        if (v11)
        {
          v12 = v13;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_30:
      v38 = 0;
      goto LABEL_33;
    }

LABEL_15:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v11)));
    v15 = *(*(v7 + 48) + v14);
    v16 = *(*(v7 + 56) + v14);
    v41 = (v15 & 0xFFFFFFFFFFFFFF9);
    v3 = v16;
    v6 = *(sub_A0BB4() + 224);

    sub_13C80(0, &qword_DE7500);
    v17 = WeakArray.subscript.getter();

    if (v17)
    {

      if (v3 == v17)
      {
        break;
      }
    }

    v11 &= v11 - 1;
  }

  v8 = JSViewModelKind.innerViewModel.getter(v15);

  type metadata accessor for JSParagraphViewModel();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = *(&stru_298.flags + (swift_isaMask & *v18));
    v21 = v8;
    if (v20())
    {
      v22 = sub_27F09C();
      v24 = v23;

      v42 = xmmword_AFAA80;
      *&v43 = v22;
      *(&v43 + 1) = v24;
      *&v44 = 8;
      *(&v44 + 1) = a1;
      *v45 = 512;
      v45[2] = 20;
      *&v45[8] = 0;
      *&v45[16] = 0;
      *&v45[24] = v19;
      memset(&v45[32], 0, 48);
      v46[0] = 0;
      *&v46[8] = 0;
      *&v46[16] = 0;
      v46[24] = 2;
      v47 = xmmword_AFAA80;
      *&v48 = v22;
      *(&v48 + 1) = v24;
      *&v49 = 8;
      *(&v49 + 1) = a1;
      *v50 = 512;
      v50[2] = 20;
      v51 = 0uLL;
      v52[0] = v19;
      memset(&v52[1], 0, 48);
      v53 = 0;
LABEL_25:
      v54 = 0;
      v55 = 0;
      v56 = 2;
      sub_465F4(&v42, &v66);
      sub_46650(&v47);
      v63 = *&v45[48];
      v64 = *&v45[64];
      v65[0] = *v46;
      *(v65 + 9) = *&v46[9];
      v59 = v44;
      v60 = *v45;
      v61 = *&v45[16];
      v62 = *&v45[32];
      v57 = v42;
      v58 = v43;
      UIScreen.Dimensions.size.getter(*&v42);
      v72 = v63;
      v73 = v64;
      v74[0] = v65[0];
      v30 = *(v65 + 9);
      v5 = &v66;
      goto LABEL_34;
    }
  }

  type metadata accessor for JSInterstellarViewModel();
  if (swift_dynamicCastClass())
  {

    v42 = xmmword_AFAA90;
    v43 = xmmword_AFAAA0;
    v44 = xmmword_AF8610;
    *v45 = 512;
    v45[2] = 20;
    memset(&v45[8], 0, 72);
    v46[0] = 1;
    *&v46[8] = 0;
    *&v46[16] = 0;
    v46[24] = 2;
    v47 = xmmword_AFAA90;
    v48 = xmmword_AFAAA0;
    v49 = xmmword_AF8610;
    *v50 = 512;
    v50[2] = 20;
    memset(v52, 0, sizeof(v52));
    v51 = 0u;
    v53 = 1;
    goto LABEL_25;
  }

  v6 = (*(&stru_68.reserved2 + (swift_isaMask & *v8)))();
  v7 = v31;
  v11 = sub_27F09C();
  v3 = v32;
  type metadata accessor for JSSearchLandingUpsell();
  v33 = swift_dynamicCastClass();
  v34 = v8;
  v5 = &v66;
  if (!v33)
  {
    goto LABEL_30;
  }

  v35 = v34;
  v36 = JSSearchLandingUpsell.tallVideoArtwork.getter();
  if (v36)
  {
    v37 = v36;

    v38 = 1;
  }

  else
  {
    v37 = JSSearchLandingUpsell.wideArtwork.getter();

    v38 = v37 != 0;
  }

LABEL_33:
  *&v42 = v6;
  *(&v42 + 1) = v7;
  *&v43 = v11;
  *(&v43 + 1) = v3;
  *&v44 = v8;
  *(&v44 + 1) = a1;
  v45[0] = v38;
  *&v45[1] = 5122;
  *&v45[8] = 0;
  *&v45[16] = 0;
  *&v45[24] = v8;
  memset(&v45[32], 0, 48);
  v46[0] = 1;
  *&v46[8] = 0;
  *&v46[16] = 0;
  v46[24] = 2;
  *&v47 = v6;
  *(&v47 + 1) = v7;
  *&v48 = v11;
  *(&v48 + 1) = v3;
  *&v49 = v8;
  *(&v49 + 1) = a1;
  v50[0] = v38;
  *&v50[1] = 5122;
  v51 = 0uLL;
  v52[0] = v8;
  memset(&v52[1], 0, 48);
  v53 = 1;
  v54 = 0;
  v55 = 0;
  v56 = 2;
  sub_465F4(&v42, &v66);
  sub_46650(&v47);
  v63 = *&v45[48];
  v64 = *&v45[64];
  v65[0] = *v46;
  *(v65 + 9) = *&v46[9];
  v59 = v44;
  v60 = *v45;
  v61 = *&v45[16];
  v62 = *&v45[32];
  v57 = v42;
  v58 = v43;
  UIScreen.Dimensions.size.getter(*&v42);
  v72 = v63;
  v73 = v64;
  v74[0] = v65[0];
  v30 = *(v65 + 9);
LABEL_34:
  *(v5 + 137) = v30;
  v68 = v59;
  v69 = v60;
  v70 = v61;
  v71 = v62;
  v66 = v57;
  v67 = v58;
  v4 = a2;
LABEL_21:
  v25 = v73;
  v4[6] = v72;
  v4[7] = v25;
  v4[8] = v74[0];
  *(v4 + 137) = *(v5 + 137);
  v26 = v69;
  v4[2] = v68;
  v4[3] = v26;
  v27 = v71;
  v4[4] = v70;
  v4[5] = v27;
  result = *&v66;
  v29 = v67;
  *v4 = v66;
  v4[1] = v29;
  return result;
}

uint64_t sub_A1414(char a1)
{
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_impressionTrackingIsEnabledOverride) & a1;
    (*(result + 8))(ObjectType, result);
    v7 = v6;
    v8 = swift_getObjectType();
    (*(v7 + 16))(v5 & 1, v8, v7);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_A14D4(void *a1)
{
  v3 = sub_4D3DD0();
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;

    v14 = (v1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds);
    *v14 = v5;
    v14[1] = v7;
    v14[2] = v11;
    v14[3] = v13;
    sub_4DB494();
    sub_4D7AA8();
    v15 = [a1 contentSize];
    if (v16 != 0.0)
    {
      v17 = (*&stru_388.segname[(swift_isaMask & *v1) - 8])(v15);
      if (v17)
      {
        v18 = v17;
        sub_375B00();
        if (*&v18[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController])
        {

          sub_38D1A8();
        }

        else
        {
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_A17E4(void *a1)
{
  v2 = v1;
  v4 = sub_AB7C10();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController;
  v11 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController];
  if (a1)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    type metadata accessor for PageHeaderContentViewController();
    v12 = v11;
    v13 = a1;
    v14 = sub_ABA790();

    if (v14)
    {
      return;
    }

    v11 = *&v2[v10];
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else if (!v11)
  {
    return;
  }

  v15 = v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isPageHeaderContentBottomHairlineVisible];
  v11[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBottomHairlineVisible] = v15;
  v16 = *&v11[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
  v17 = v16[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible];
  v16[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible] = v15;
  if (v15 != v17)
  {
    [v16 setNeedsLayout];
  }

LABEL_9:
  if ((v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] & 1) == 0)
  {
    v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] = 1;
    sub_13C80(0, &qword_DE8ED0);
    v18 = sub_ABA150();
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    aBlock[4] = sub_A91D4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_15;
    v20 = _Block_copy(aBlock);
    v21 = v2;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_36A00(&qword_DF06D0, &unk_DE9C30);
    sub_ABABB0();
    sub_ABA160();
    (*(v23 + 8))(v6, v4);
    (*(v22 + 8))(v9, v7);
    _Block_release(v20);
  }
}

void (*sub_A1BA8(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_A1C00;
}

void sub_A1C18(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController;
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = a1;
  if (!v4 || (type metadata accessor for PromotionalParallaxViewController(), v6 = v4, v5 = v5, v7 = sub_ABA790(), v5, v6, (v7 & 1) == 0))
  {
    v8 = v5;
    v70.value.super.super.isa = 0;
    PromotionalParallaxViewController.willMove(toParent:)(v70);
    v9 = sub_4D3DD0();
    v10 = *&v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView];
    *&v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView] = 0;
    sub_4DDD94(v10);

    [v8 removeFromParentViewController];
    v4 = *&v2[v3];
    if (!v4)
    {
LABEL_44:
      [v2 setNeedsStatusBarAppearanceUpdate];
      return;
    }

LABEL_7:
    v11 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem;
    v12 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem];
    if (!v12)
    {
      v16 = v4;
      goto LABEL_15;
    }

    v13 = *&stru_298.segname[(swift_isaMask & *v12) + 8];
    v14 = v4;
    v15 = v12;
    if (v13())
    {
      v17 = sub_ABB3C0();

      v19 = 0;
      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v20 = (*(&stru_2E8.size + (swift_isaMask & *v15)))(v18);
    v19 = v20 != 0;

LABEL_14:
    v14[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_prefersAnimatedBannerDisplay] = v19;

LABEL_15:
    v21 = &selRef__authenticateReturningError_;
    v22 = [v2 view];
    if (v22)
    {
      v23 = v22;
      [v22 safeAreaInsets];

      v24 = [v2 traitCollection];
      v25 = [v24 horizontalSizeClass];

      if (v25 == &dword_0 + 2)
      {
        v26 = *&v2[v11];
        if (v26)
        {
          v27 = *(&stru_2E8.size + (swift_isaMask & *v26));
          v28 = v26;
          v29 = v27();
          v21 = &selRef__authenticateReturningError_;
          v30 = v29;

          if (v30)
          {
          }
        }
      }

      sub_AB9E70();
      v31 = &v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets];
      v32 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets];
      v33 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets + 16];
      *v31 = v34.f64[0];
      v31[1] = v35;
      v31[2] = v36.f64[0];
      v31[3] = v37;
      v34.f64[1] = v35;
      v36.f64[1] = v37;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v32, v34), vceqq_f64(v33, v36)))) & 1) == 0)
      {
        sub_371830();
      }

      v38 = [v2 traitCollection];
      v39 = [v38 horizontalSizeClass];

      if (v39 == &dword_0 + 2 && (v40 = *&v2[v11]) != 0 && (v41 = *(&stru_2E8.size + (swift_isaMask & *v40)), v42 = v40, v43 = v41(), v42, v43))
      {

        horizontal = 0.0;
        vertical = 40.0;
      }

      else
      {
        horizontal = UIOffsetZero.horizontal;
        vertical = UIOffsetZero.vertical;
      }

      v46 = &v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions];
      v47 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions];
      v48 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions + 8];
      *v46 = horizontal;
      v46[1] = vertical;
      if (v47 != horizontal || v48 != vertical)
      {
        sub_375B00();
      }

      v50 = sub_4D3DD0();
      v51 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView];
      *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView] = v50;
      v52 = v50;
      sub_3714A4(v51);

      v53 = v4;
      [v2 addChildViewController:v53];
      v54 = [v53 v21[342]];

      if (v54)
      {
        [v54 setHidden:1];
        if (([v2 isViewLoaded] & 1) == 0)
        {
LABEL_36:
          v57 = *&v2[v3];
          *&v2[v3] = v4;
          v58 = v53;

          v69.receiver = v58;
          v69.super_class = type metadata accessor for PromotionalParallaxViewController();
          objc_msgSendSuper2(&v69, "didMoveToParentViewController:", v2);
          v59 = [v58 navigationItem];
          v60 = [v58 parentViewController];
          if (v60)
          {
            v61 = v60;
            while (1)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              v62 = v61;
              v63 = [v62 navigationItem];

              v61 = [v62 parentViewController];
              v59 = v63;
              if (!v61)
              {
                goto LABEL_43;
              }
            }
          }

          v63 = v59;
LABEL_43:
          sub_374C7C(v63);

          v64 = *&v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView];
          v65 = *&v58[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView];
          v66 = *&v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView];
          *&v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView] = v65;
          v67 = v65;
          v68 = v64;
          sub_4DDD94(v66);

          goto LABEL_44;
        }

        v55 = [v2 v21[342]];
        if (v55)
        {
          v56 = v55;
          [v55 addSubview:v54];

          goto LABEL_36;
        }

LABEL_48:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }
}

void *sub_A22C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  v2 = v1;
  return v1;
}

void sub_A22F4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController) = a1;
  v2 = a1;
  sub_A1C18(v3);
}

void (*sub_A2354(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_A23AC;
}

void sub_A23C4(uint64_t a1, char a2, void (*a3)(id))
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *a1;
  v11 = *(v6 + v5);
  *(v6 + v5) = *a1;
  v8 = v7;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    a3(v11);
  }

  else
  {
    a3(v11);
  }
}

uint64_t sub_A2458()
{
  v1 = [v0 childViewControllers];
  sub_13C80(0, &qword_DE7500);
  v2 = sub_AB9760();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_35F8D4(v4, v2);
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8 && v6)
      {
        v9 = v8;
        ObjectType = swift_getObjectType();
        LOBYTE(v9) = (*(v9 + 8))(ObjectType, v9);

        if (v9)
        {
          v11 = 1;
          goto LABEL_19;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v11 = 0;
LABEL_19:

  return v11;
}

uint64_t sub_A25D0(uint64_t a1)
{
  v46 = a1;
  v2 = type metadata accessor for MetricsPageProperties();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  v7 = __chkstk_darwin(v6 - 8);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5C8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  swift_beginAccess();
  v16 = *(v12 + 56);
  v44 = v1;
  v42 = v15;
  sub_15F84(v1 + v15, v14, &unk_DF1330);
  sub_15F84(v46, &v14[v16], &unk_DF1330);
  v17 = *(v3 + 48);
  if (v17(v14, 1, v2) == 1)
  {
    if (v17(&v14[v16], 1, v2) == 1)
    {
      return sub_12E1C(v14, &unk_DF1330);
    }
  }

  else
  {
    sub_15F84(v14, v10, &unk_DF1330);
    if (v17(&v14[v16], 1, v2) != 1)
    {
      sub_70CD8(&v14[v16], v5);
      v40 = static MetricsPageProperties.__derived_struct_equals(_:_:)(v10, v5);
      sub_A92C8(v5);
      sub_A92C8(v10);
      result = sub_12E1C(v14, &unk_DF1330);
      if (v40)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_A92C8(v10);
  }

  sub_12E1C(v14, &qword_DEC5C8);
LABEL_7:
  v19 = *(v44 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  if (v19 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
  {

    if (!i)
    {
      break;
    }

    v21 = 0;
    v22 = v19 & 0xC000000000000001;
    v23 = &qword_DE7500;
    v24 = UIViewController_ptr;
    v46 = v19 & 0xFFFFFFFFFFFFFF8;
    v41 = i;
    while (1)
    {
      if (v22)
      {
        v25 = sub_35F8D4(v21, v19);
      }

      else
      {
        if (v21 >= *(v46 + 16))
        {
          goto LABEL_25;
        }

        v25 = *(v19 + 8 * v21 + 32);
      }

      v26 = v25;
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v49 = v25;
      sub_13C80(0, v23);
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB10);
      if (swift_dynamicCast())
      {
        sub_70DF8(v47, v50);
        v29 = v43;
        sub_15F84(v44 + v42, v43, &unk_DF1330);
        v30 = v19;
        v31 = v22;
        v45 = v28;
        v32 = v24;
        v33 = v23;
        v34 = v51;
        v35 = v52;
        __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
        v36 = *(v35 + 16);
        v37 = v29;
        i = v41;
        v38 = v34;
        v22 = v31;
        v19 = v30;
        v39 = v35;
        v23 = v33;
        v24 = v32;
        v36(v37, v38, v39);

        __swift_destroy_boxed_opaque_existential_0(v50);
      }

      else
      {
        v48 = 0;
        memset(v47, 0, sizeof(v47));

        sub_12E1C(v47, &qword_DEAB18);
      }

      ++v21;
      if (v27 == i)
      {
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void (*sub_A2A9C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_15F84(v1 + v8, v7, &unk_DF1330);
  return sub_A2BCC;
}

void sub_A2BCC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_15F84(*(*a1 + 96), v6, &unk_DF1330);
    sub_15F84(v7 + v4, v5, &unk_DF1330);
    swift_beginAccess();
    sub_A9258(v6, v7 + v4);
    swift_endAccess();
    sub_A25D0(v5);
    sub_12E1C(v5, &unk_DF1330);
  }

  else
  {
    sub_15F84(v7 + v4, v6, &unk_DF1330);
    swift_beginAccess();
    sub_A9258(v3, v7 + v4);
    swift_endAccess();
    sub_A25D0(v6);
  }

  sub_12E1C(v6, &unk_DF1330);
  sub_12E1C(v3, &unk_DF1330);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

void sub_A2E34()
{
  v1 = v0;
  v2 = [v0 viewBackgroundColor];
  sub_13C80(0, qword_DFAAC0);
  v3 = sub_ABA790();

  if ((v3 & 1) == 0)
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController];
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    if (v7)
    {
      while (1)
      {
        v10 = v9;
LABEL_10:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = *(*(v4 + 56) + ((v10 << 9) | (8 * v11)));
        v13 = [v1 viewBackgroundColor];
        [v12 setViewBackgroundColor:v13];

        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }
  }
}

void sub_A3038(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v9 = a1 & 1;
  v10 = sub_AB7C10();
  v26 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7C50();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v5[*a2];
  v5[*a2] = a1;
  if (v18 != v9 && v5[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] != 1)
  {
    v5[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] = 1;
    v24 = v15;
    sub_13C80(0, &qword_DE8ED0);
    v19 = sub_ABA150();
    v20 = swift_allocObject();
    *(v20 + 16) = v5;
    aBlock[4] = a4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = v25;
    v21 = _Block_copy(aBlock);
    v22 = v5;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_36A00(&qword_DF06D0, &unk_DE9C30);
    sub_ABABB0();
    sub_ABA160();
    (*(v26 + 8))(v12, v10);
    (*(v14 + 8))(v17, v24);
    _Block_release(v21);
  }
}

void sub_A335C(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor];
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v3)
  {
    sub_13C80(0, qword_DFAAC0);
    v5 = v3;
    v6 = a1;
    v7 = sub_ABA790();

    if (v7)
    {
      return;
    }

    v3 = *&v1[v2];
    if (v3)
    {
LABEL_8:
      v9 = v3;
      v11 = [v1 view];
      if (v11)
      {
        v10 = v11;
        [v11 setBackgroundColor:v9];
        goto LABEL_10;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }
  }

  v8 = [v1 view];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [v1 viewBackgroundColor];
  [v9 setBackgroundColor:v10];
LABEL_10:

  sub_A3ACC();
}

void sub_A34B8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds] = a1;

  if (v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing] == 1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_A9BA0;
    *(v3 + 24) = v2;
    v4 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pendingStackItemUpdateRequests;
    swift_beginAccess();
    v5 = *&v1[v4];
    v6 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v1[v4] = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_6AA00(0, v5[2] + 1, 1, v5);
      *&v1[v4] = v5;
    }

    v9 = v5[2];
    v8 = v5[3];
    if (v9 >= v8 >> 1)
    {
      v5 = sub_6AA00((v8 > 1), v9 + 1, 1, v5);
    }

    v5[2] = v9 + 1;
    v10 = &v5[2 * v9];
    v10[4] = sub_36C08;
    v10[5] = v3;
    *&v1[v4] = v5;
    swift_endAccess();
  }

  else
  {

    sub_A37A8(v1);
  }
}

void sub_A363C()
{
  if (v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing] == 1)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v0;
    v2 = swift_allocObject();
    *(v2 + 16) = sub_A96C4;
    *(v2 + 24) = v1;
    v3 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pendingStackItemUpdateRequests;
    swift_beginAccess();
    v4 = *&v0[v3];
    v5 = v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v0[v3] = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_6AA00(0, v4[2] + 1, 1, v4);
      *&v0[v3] = v4;
    }

    v8 = v4[2];
    v7 = v4[3];
    if (v8 >= v7 >> 1)
    {
      v4 = sub_6AA00((v7 > 1), v8 + 1, 1, v4);
    }

    v4[2] = v8 + 1;
    v9 = &v4[2 * v8];
    v9[4] = sub_36C08;
    v9[5] = v2;
    *&v0[v3] = v4;
    swift_endAccess();
  }

  else
  {

    sub_A37A8(v0);
  }
}

void sub_A37A8(_BYTE *a1)
{
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C50();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *&a1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID] = v13;
    if ((a1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] & 1) == 0)
    {
      a1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] = 1;
      v19 = v8;
      sub_13C80(0, &qword_DE8ED0);
      v18 = sub_ABA150();
      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      aBlock[4] = sub_A9B84;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_167;
      v15 = _Block_copy(aBlock);
      v16 = a1;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_36A00(&qword_DF06D0, &unk_DE9C30);
      sub_ABABB0();
      v17 = v18;
      sub_ABA160();
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v10, v19);
      _Block_release(v15);
    }
  }
}

void sub_A3ACC()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] = 1;
    v15 = v7;
    sub_13C80(0, &qword_DE8ED0);
    v14 = sub_ABA150();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    aBlock[4] = sub_A9B84;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_153;
    v11 = _Block_copy(aBlock);
    v12 = v0;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_36A00(&qword_DF06D0, &unk_DE9C30);
    sub_ABABB0();
    v13 = v14;
    sub_ABA160();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v15);
    _Block_release(v11);
  }
}

id sub_A3DD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v2 - 8);
  v4 = (v308 - v3);
  v5 = sub_AB7C10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v308 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB7C50();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate) != 1)
  {
    return result;
  }

  if (*(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_shouldIgnoreStackItemUpdates) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing))
  {
    if (!*(*(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds) + 16))
    {
      v13 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
      if (v13)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_AF82B0;
        *(v14 + 32) = v13;
        v15 = v13;
        sub_4D4068(v14, 0);
      }

      else
      {

        return sub_4D4068(_swiftEmptyArrayStorage, 0);
      }
    }

    return result;
  }

  v336 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing;
  v325 = result;
  v326 = v308 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = v8;
  v324 = v5;
  v334 = v4;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate) = 0;
  v375 = _swiftEmptyArrayStorage;
  v16 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds);
  v341 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isPageHeaderContentBottomHairlineVisible);
  v335 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController;
  v17 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController);

  v348 = sub_96934(_swiftEmptyArrayStorage);
  v18 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
  if (!v18)
  {
    v19 = 0;
    v20 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v19 = v18;
  sub_AB9730();
  if (*(&dword_10 + (v375 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v375 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_266;
  }

LABEL_11:
  sub_AB97F0();

  v19 = 1;
  v20 = v375;
LABEL_16:
  static ApplicationCapabilities.shared.getter(v376);
  v21 = v377;

  sub_70C54(v376);
  v22 = sub_472A84(10, v21);

  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController);
    if (v23)
    {
      v24 = v19 + 1;
      v25 = v23;
      sub_AB9730();
      if (*(&dword_10 + (v375 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v375 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v20 = v375;
      v19 = v24;
    }
  }

  v26 = *(v16 + 2);
  v346 = v20;
  v347 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isInsidePopover;
  v332 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor;
  v333 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  swift_beginAccess();
  v27 = 0;
  v28 = (v16 + 32);
  v330 = UIFontTextStyleTitle2;
  v322 = &v353;
  v321 = (v6 + 8);
  v319 = 0x8000000000B4E1D0;
  v320 = (v10 + 8);
  v329 = UIContentSizeCategoryExtraSmall;
  v29 = *&UIEdgeInsetsZero.bottom;
  v327 = *&UIEdgeInsetsZero.top;
  v328 = v29;
  v316 = 0x8000000000B4E210;
  v317 = 0x8000000000B4E1F0;
  v314 = 0x8000000000B4E250;
  v315 = 0x8000000000B4E230;
  v313 = 0x8000000000B4E270;
  v331 = v341 ^ 1;
  v318 = 0xD000000000000011;
  v342 = 0xF000000000000007;
  v343 = v19;
  v338 = v17;
  v339 = (v16 + 32);
  v344 = v16;
  v340 = v26;
  do
  {
LABEL_22:
    if (v26 == v27)
    {

      *(v1 + v335) = v348;

      *(v1 + v336) = 1;
      v285 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID);
      v286 = swift_allocObject();
      *(v286 + 16) = v1;
      *(v286 + 24) = v285;
      v340 = v285;
      v19 = v346;
      *(v286 + 32) = v346;
      v345 = v286;
      *(v286 + 40) = v341;
      if (!(v19 >> 62))
      {
        v30 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
        v287 = swift_allocObject();
        v344 = v287;
        *(v287 + 16) = v30;
        v10 = (v287 + 16);
        if (v30)
        {
          goto LABEL_239;
        }

        goto LABEL_268;
      }

LABEL_262:
      v6 = sub_ABB060();
      v304 = swift_allocObject();
      v344 = v304;
      *(v304 + 16) = v6;
      v10 = (v304 + 16);
      if (!v6)
      {
        v19 = v346;
LABEL_268:
        swift_bridgeObjectRetain_n();
        v306 = v1;
        sub_A7168(v306, v340, v19, v341);
        goto LABEL_269;
      }

      v305 = sub_ABB060();
      if (!v305)
      {
        swift_bridgeObjectRetain_n();
        v307 = v1;
        goto LABEL_269;
      }

      v30 = v305;
      if (v305 >= 1)
      {
        goto LABEL_276;
      }

      __break(1u);
LABEL_266:
      sub_AB97A0();
      goto LABEL_11;
    }

    v30 = v27;
    v31 = *(v16 + 2);
    if (v27 >= v31)
    {
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
      goto LABEL_262;
    }

    v32 = v28[v27];
    v10 = ((v32 >> 58) & 0x3C | (v32 >> 1) & 3);
    if (v10 != 3)
    {
      break;
    }

    ++v27;
  }

  while ((*(v347 + v1) & 1) != 0);
  v33 = v30 + v19;
  if (__OFADD__(v30, v19))
  {
    goto LABEL_259;
  }

  if (v30)
  {
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_260;
    }

    v34 = __OFADD__(v31, v19);
    v36 = v31 + v19;
    if (v34)
    {
      goto LABEL_261;
    }

    if (v35 == v36)
    {
      v37 = (&dword_0 + 2);
    }

    else
    {
      v37 = (&dword_0 + 1);
    }
  }

  else
  {
    v37 = 0;
  }

  v16 = (v32 & 0xFFFFFFFFFFFFFF9);
  v337 = sub_A6C4C(v32);
  v38 = *(v17 + 16);
  v346 = v16;
  if (v38)
  {
    v39 = sub_2EC220(v32);
    if (v40)
    {
      v41 = *(*(v17 + 56) + 8 * v39);
      goto LABEL_145;
    }
  }

  switch(v10)
  {
    case 1:
      v42 = objc_allocWithZone(type metadata accessor for JSShelfViewController(0));
      v43 = JSShelfViewController.init(shelf:)(v16);
      goto LABEL_86;
    case 2:
      v92 = type metadata accessor for JSBrickViewController();
      v93 = objc_allocWithZone(v92);
      *&v93[qword_DE8710] = 0;
      v93[qword_DE8718] = 1;
      v94 = &v93[qword_DE8720];
      *v94 = 0;
      *(v94 + 1) = 0;
      v94[16] = 1;
      v95 = &v93[qword_DE8730];
      *v95 = 0;
      v95[1] = 0;
      *&v93[qword_DE8738] = 0;
      *&v93[qword_DE8728] = v16;
      v351.receiver = v93;
      v351.super_class = v92;
      v96 = v16;
      v97 = objc_msgSendSuper2(&v351, "init");
      v98 = qword_DE6D80;
      v99 = v97;
      if (v98 != -1)
      {
        swift_once();
      }

      v100 = qword_E0BF40;
      if (objc_getAssociatedObject(v99, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v372 = 0u;
        v373 = 0u;
      }

      v352 = v372;
      v353 = v373;
      if (*(&v373 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v16 = v350;
          goto LABEL_115;
        }

        v154 = v37;
      }

      else
      {
        v154 = v37;
        sub_12E1C(&v352, &unk_DE8E40);
      }

      v169 = objc_allocWithZone(type metadata accessor for VerticalStackViewController.Item());
      v170 = v99;
      v171 = sub_4DE3E0();

      objc_setAssociatedObject(v170, v100, v171, &dword_0 + 1);
      v37 = v154;
      v16 = v171;
LABEL_115:
      v172 = *(v16 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets);
      v173 = *(v16 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 8);
      v175 = *(v16 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16);
      v174 = *(v16 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 24);
      *(v16 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16) = 0x4030000000000000;
      type metadata accessor for UIEdgeInsets(0);
      *&v352 = v172;
      *(&v352 + 1) = v173;
      *&v353 = 0x4030000000000000;
      *(&v353 + 1) = v174;
      *&v372 = v172;
      *(&v372 + 1) = v173;
      *&v373 = v175;
      *(&v373 + 1) = v174;
      if ((sub_AB38D0() & 1) == 0)
      {
        goto LABEL_125;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_125;
      }

      v177 = Strong;
      if (*(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) == 1)
      {
        goto LABEL_124;
      }

      *(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) = 1;
      sub_13C80(0, &qword_DE8ED0);
      v311 = sub_ABA150();
      v178 = swift_allocObject();
      *(v178 + 16) = v177;
      v354 = sub_A9B90;
      v355 = v178;
      *&v352 = _NSConcreteStackBlock;
      *(&v352 + 1) = 1107296256;
      v179 = &block_descriptor_137;
      goto LABEL_129;
    case 3:
      v101 = type metadata accessor for JSFlowcaseViewController();
      v102 = objc_allocWithZone(v101);
      *&v102[qword_E074A0] = 0;
      v103 = &v102[qword_E074B0];
      *v103 = 0;
      *(v103 + 1) = 0;
      v103[16] = 1;
      v104 = &v102[qword_E074B8];
      *v104 = 0;
      *(v104 + 1) = 0;
      *&v102[qword_E074A8] = v16;
      v356.receiver = v102;
      v356.super_class = v101;
      v105 = v16;
      v106 = objc_msgSendSuper2(&v356, "init");
      v107 = qword_DE6D80;
      v99 = v106;
      if (v107 != -1)
      {
        swift_once();
      }

      v108 = qword_E0BF40;
      if (objc_getAssociatedObject(v99, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v372 = 0u;
        v373 = 0u;
      }

      v352 = v372;
      v353 = v373;
      if (*(&v373 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v16 = v350;
          goto LABEL_121;
        }

        v155 = v37;
      }

      else
      {
        v155 = v37;
        sub_12E1C(&v352, &unk_DE8E40);
      }

      v180 = objc_allocWithZone(type metadata accessor for VerticalStackViewController.Item());
      v181 = v99;
      v182 = sub_4DE3E0();

      objc_setAssociatedObject(v181, v108, v182, &dword_0 + 1);
      v37 = v155;
      v16 = v182;
LABEL_121:
      v183 = *(v16 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets);
      v184 = *(v16 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 8);
      v186 = *(v16 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16);
      v185 = *(v16 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 24);
      *(v16 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16) = 0x4030000000000000;
      type metadata accessor for UIEdgeInsets(0);
      *&v352 = v183;
      *(&v352 + 1) = v184;
      *&v353 = 0x4030000000000000;
      *(&v353 + 1) = v185;
      *&v372 = v183;
      *(&v372 + 1) = v184;
      *&v373 = v186;
      *(&v373 + 1) = v185;
      if ((sub_AB38D0() & 1) != 0 && (v187 = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v177 = v187;
        if (*(v187 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) == 1)
        {
LABEL_124:
        }

        else
        {
          *(v187 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) = 1;
          sub_13C80(0, &qword_DE8ED0);
          v311 = sub_ABA150();
          v188 = swift_allocObject();
          *(v188 + 16) = v177;
          v354 = sub_A95F0;
          v355 = v188;
          *&v352 = _NSConcreteStackBlock;
          *(&v352 + 1) = 1107296256;
          v179 = &block_descriptor_130;
LABEL_129:
          *&v353 = sub_1B5EB4;
          *(&v353 + 1) = v179;
          v312 = _Block_copy(&v352);
          v310 = v177;

          sub_AB7C30();
          *&v352 = _swiftEmptyArrayStorage;
          v308[1] = sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
          v345 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
          sub_36A00(&qword_DF06D0, &unk_DE9C30);
          v189 = v323;
          v309 = v16;
          v16 = v324;
          sub_ABABB0();
          v190 = v326;
          v191 = v311;
          sub_ABA160();
          v192 = v189;
          v37 = v345;
          (*v321)(v192, v16);
          (*v320)(v190, v325);
          _Block_release(v312);
        }
      }

      else
      {
LABEL_125:
      }

      goto LABEL_146;
    case 4:
      v127 = objc_allocWithZone(type metadata accessor for JSGridViewController());
      v10 = v16;
      v61 = sub_4A50FC(v10);
      v128 = JSGrid.sections.getter();
      v16 = v37;
      if (v128 >> 62)
      {
        v280 = v128;
        v129 = sub_ABB060();
        v128 = v280;
      }

      else
      {
        v129 = *(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8));
      }

      if (!v129)
      {

        goto LABEL_133;
      }

      if ((v128 & 0xC000000000000001) != 0)
      {
        v130 = sub_35FC8C(0, v128);
        goto LABEL_74;
      }

      if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)))
      {
        v130 = *(v128 + 32);
LABEL_74:
        v131 = v130;

        v132 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
        swift_beginAccess();
        v133 = v131[v132];

        if (v133 > 3 && v133 > 5)
        {
          if (v133 == 6)
          {

            goto LABEL_137;
          }
        }

        else
        {
          v193 = sub_ABB3C0();

          if (v193)
          {
            goto LABEL_137;
          }
        }

LABEL_133:
        v194 = sub_4D3C64();
        v195 = *&v194[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
        v196 = *&v194[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 8];
        v198 = *&v194[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16];
        v197 = *&v194[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 24];
        *&v194[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16] = 0x4030000000000000;
        type metadata accessor for UIEdgeInsets(0);
        *&v352 = v195;
        *(&v352 + 1) = v196;
        *&v353 = 0x4030000000000000;
        *(&v353 + 1) = v197;
        *&v372 = v195;
        *(&v372 + 1) = v196;
        *&v373 = v198;
        *(&v373 + 1) = v197;
        if ((sub_AB38D0() & 1) != 0 && (v199 = swift_unknownObjectWeakLoadStrong()) != 0)
        {
          v200 = v199;
          sub_4D55B0();
        }

        else
        {
        }

LABEL_137:
        v201 = sub_4D3C64();
        v202 = v201;
        if (v37)
        {
          v203 = 0.0;
        }

        else
        {
          v203 = 8.0;
        }

        v204 = *&v201[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16];
        v205 = *&v201[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 24];
        v207 = *&v201[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
        v206 = *&v201[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 8];
        *&v201[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets] = v203;
        type metadata accessor for UIEdgeInsets(0);
        *&v352 = v203;
        *(&v352 + 1) = v206;
        *&v353 = v204;
        *(&v353 + 1) = v205;
        *&v372 = v207;
        *(&v372 + 1) = v206;
        *&v373 = v204;
        *(&v373 + 1) = v205;
        if (sub_AB38D0())
        {
          v208 = swift_unknownObjectWeakLoadStrong();
          if (v208)
          {
            v209 = v208;
            sub_4D55B0();

            v202 = v209;
          }
        }

LABEL_144:
        v41 = v61;
LABEL_145:
        v99 = v41;
LABEL_146:
        v350 = v99;
        sub_13C80(0, &qword_DE7500);
        v210 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB10);
        if (swift_dynamicCast())
        {
          sub_70DF8(&v372, &v352);
          v16 = v334;
          sub_15F84(v1 + v333, v334, &unk_DF1330);
          v345 = v1;
          v211 = v32;
          v212 = v17;
          v213 = v210;
          v214 = v37;
          v215 = *(&v353 + 1);
          v216 = v354;
          __swift_mutable_project_boxed_opaque_existential_1(&v352, *(&v353 + 1));
          v217 = *(v216 + 2);
          v218 = v216;
          v219 = v214;
          v210 = v213;
          v17 = v212;
          v32 = v211;
          v1 = v345;
          v217(v16, v215, v218);

          __swift_destroy_boxed_opaque_existential_0(&v352);
          if (v219 != (&dword_0 + 2))
          {
            goto LABEL_152;
          }
        }

        else
        {

          v374 = 0;
          v372 = 0u;
          v373 = 0u;
          sub_12E1C(&v372, &qword_DEAB18);
          if (v37 != (&dword_0 + 2))
          {
            goto LABEL_152;
          }
        }

        v220 = *(v1 + v332);
        if (v220)
        {
          [v210 setViewBackgroundColor:v220];
          goto LABEL_157;
        }

LABEL_152:
        swift_getObjectType();
        v221 = swift_conformsToProtocol2();
        if (v221 && v210 && (v222 = v221, ObjectType = swift_getObjectType(), v345 = v32, v224 = v210, v225 = v1, v16 = (v222 + 8), v226 = *(v222 + 8), v227 = v224, v228 = ObjectType, v17 = v338, v229 = v226(v228, v222), v1 = v225, v210 = v224, v32 = v345, v230 = v229, v227, v230))
        {
          [v227 setViewBackgroundColor:v230];
        }

        else
        {
          v231 = v210;
          v232 = [(objc_class *)v1 viewBackgroundColor];
          [v231 setViewBackgroundColor:v232];
        }

LABEL_157:
        swift_getObjectType();
        v233 = swift_conformsToProtocol2();
        if (!v233 || !v210)
        {
          goto LABEL_168;
        }

        v10 = v233;
        if ((~v342 & 0xF000000000000007) != 0)
        {
          if (v337)
          {
            goto LABEL_163;
          }

          v265 = (v342 >> 58) & 0x3C | (v342 >> 1) & 3;
          if (v265 <= 14)
          {
            if (v265 <= 6)
            {
              if (v265 == 1)
              {
                v273 = v210;
                sub_70E5C(v342);
                v274 = JSShelf.sections.getter();
                if (v274 >> 62)
                {
                  v281 = v274;
                  v282 = sub_ABB060();
                  v274 = v281;
                  if (!v282)
                  {
                    goto LABEL_233;
                  }
                }

                else if (!*(&dword_10 + (v274 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_233;
                }

                if ((v274 & 0xC000000000000001) != 0)
                {
                  v275 = sub_360280(0, v274);
                }

                else
                {
                  if (!*(&dword_10 + (v274 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_274;
                  }

                  v275 = *(v274 + 32);
                }

                v276 = v275;

                v277 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType;
                swift_beginAccess();
                v278 = v276[v277];

                if (v278 <= 5 || v278 <= 8)
                {
                  goto LABEL_227;
                }

                if (v278 != 9)
                {
                  if (v278 != 10)
                  {
                    goto LABEL_234;
                  }

LABEL_227:
                  v279 = sub_ABB3C0();

                  sub_2D4D8(v342);
                  v234 = v279 ^ 1;
                  goto LABEL_165;
                }
              }

              else
              {
                if (v265 != 4)
                {
                  goto LABEL_209;
                }

                v266 = v210;
                sub_70E5C(v342);
                v267 = JSGrid.sections.getter();
                if (v267 >> 62)
                {
                  v283 = v267;
                  v284 = sub_ABB060();
                  v267 = v283;
                  if (!v284)
                  {
LABEL_233:

LABEL_234:
                    sub_2D4D8(v342);
                    v234 = 1;
                    goto LABEL_165;
                  }
                }

                else if (!*(&dword_10 + (v267 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_233;
                }

                if ((v267 & 0xC000000000000001) != 0)
                {
                  v268 = sub_35FC8C(0, v267);
                }

                else
                {
                  if (!*(&dword_10 + (v267 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_273;
                  }

                  v268 = *(v267 + 32);
                }

                v269 = v268;

                v270 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
                swift_beginAccess();
                v271 = v269[v270];

                if (v271 <= 3 || v271 <= 5)
                {
                  goto LABEL_227;
                }

                if (v271 != 6)
                {
                  goto LABEL_234;
                }
              }

              sub_2D4D8(v342);
              goto LABEL_164;
            }

            if (v265 != 7 && v265 != 11)
            {
              goto LABEL_209;
            }

LABEL_163:
            v236 = v210;
LABEL_164:
            v234 = 0;
            goto LABEL_165;
          }

          if (v265 > 19)
          {
            if (v265 != 20 && v265 != 21)
            {
LABEL_209:
              v272 = v210;
              v234 = 1;
              goto LABEL_165;
            }

            goto LABEL_163;
          }

          if (v265 != 15)
          {
            if (v265 != 19)
            {
              goto LABEL_209;
            }

            goto LABEL_163;
          }

          type metadata accessor for JSItemizedTextListViewController();
          v234 = swift_dynamicCastClass() == 0;
        }

        else
        {
          v234 = v337 ^ 1;
        }

        v235 = v210;
LABEL_165:
        if (!v30)
        {
          v234 &= v331;
        }

        v237 = swift_getObjectType();
        (*(v10 + 2))(v234 & 1, v237, v10);

LABEL_168:
        swift_getObjectType();
        v238 = swift_conformsToProtocol2();
        if (v238 && v210)
        {
          v239 = v238;
          v240 = (~v342 & 0xF000000000000007) != 0 && ((v342 >> 58) & 0x3C | (v342 >> 1) & 3) == 7;
          v241 = swift_getObjectType();
          v345 = v32;
          v242 = v1;
          v243 = *(v239 + 16);
          v244 = v210;
          v243(v240, v241, v239);
          v1 = v242;
          v32 = v345;

          v17 = v338;
        }

        type metadata accessor for JSSplitWidgetViewController();
        v245 = swift_dynamicCastClass();
        v16 = v344;
        if (v245)
        {
          v246 = v245;
          v247 = *(v245 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController);
          if (v247)
          {
            v248 = v210;
            v249 = v247;
            v250 = JSSplitWidgetViewModel.leftViewModelKind.getter();
            if ((~v250 & 0xF000000000000007) != 0)
            {
              v252 = v250;
              v253 = v348;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v352 = v253;
              sub_91ABC(v249, v252, isUniquelyReferenced_nonNull_native);
              sub_2D4D8(v252);
              v348 = v352;
            }

            else
            {
            }

            v17 = v338;
          }

          else
          {
            v251 = v210;
          }

          v255 = *(v246 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController);
          if (v255)
          {
            v256 = v255;
            v257 = JSSplitWidgetViewModel.rightViewModelKind.getter();
            if ((~v257 & 0xF000000000000007) != 0)
            {
              v258 = v257;
              v259 = v348;
              v260 = swift_isUniquelyReferenced_nonNull_native();
              *&v352 = v259;
              sub_91ABC(v256, v258, v260);
              sub_2D4D8(v258);

              v348 = v352;
            }

            else
            {
            }
          }

          else
          {
          }
        }

        v261 = v346;
        v262 = v210;
        v263 = v348;
        v264 = swift_isUniquelyReferenced_nonNull_native();
        *&v352 = v263;
        sub_91ABC(v262, v32, v264);

        v348 = v352;
        sub_AB9730();
        if (*(&dword_10 + (v375 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v375 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        v27 = v30 + 1;
        sub_AB97F0();
        sub_2D4D8(v342);

        v346 = v375;
        v342 = v32;
        v19 = v343;
        v28 = v339;
        v26 = v340;
        goto LABEL_22;
      }

      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      *&v352 = 0;
      *(&v352 + 1) = 0xE000000000000000;
      sub_ABAD90(53);
      v379._countAndFlagsBits = 0xD000000000000032;
      v379._object = 0x8000000000B4E190;
      sub_AB94A0(v379);
      *&v372 = v32;
      sub_ABAF70();
      v380._countAndFlagsBits = 46;
      v380._object = 0xE100000000000000;
      sub_AB94A0(v380);
      sub_ABAFD0();
      __break(1u);
LABEL_276:
      v19 = v346;
LABEL_239:
      v288 = v19 & 0xC000000000000001;
      swift_bridgeObjectRetain_n();
      v339 = v1;
      swift_beginAccess();
      v17 = 0;
      v343 = v10;
      do
      {
        if (v288)
        {
          v290 = sub_35F8D4(v17, v19);
        }

        else
        {
          v290 = *(v19 + 8 * v17 + 32);
        }

        v291 = v290;
        v349 = v290;
        sub_13C80(0, &qword_DE7500);
        v1 = v291;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB28);
        if (swift_dynamicCast())
        {
          sub_70DF8(&v372, &v352);
          v292 = *(&v353 + 1);
          v293 = v354;
          v347 = __swift_project_boxed_opaque_existential_1(&v352, *(&v353 + 1));
          v294 = swift_allocObject();
          v348 = v1;
          v295 = v30;
          v296 = v294;
          v294[2] = v344;
          v294[3] = sub_A9638;
          v294[4] = v345;
          v16 = *(v293 + 1);

          v297 = v293;
          v10 = v343;
          (v16)(sub_A96B8, v296, v292, v297);
          v30 = v295;
          v1 = v348;
          v19 = v346;

          __swift_destroy_boxed_opaque_existential_0(&v352);
        }

        else
        {
          v374 = 0;
          v372 = 0u;
          v373 = 0u;
          sub_12E1C(&v372, &qword_DEAB20);
          v298 = *v10 - 1;
          if (__OFSUB__(*v10, 1))
          {
            goto LABEL_258;
          }

          *v10 = v298;
          if (!v298)
          {
            sub_A7168(v339, v340, v19, v341);
          }
        }

        v299 = [(objc_class *)v1 parentViewController];
        if (v299)
        {
          v300 = v299;
          type metadata accessor for JSDrivenViewController();
          v301 = swift_dynamicCastClass();
          if (v301)
          {
            v302 = v301;
            v16 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage;
            swift_beginAccess();
            v303 = *(v16 + v302);
            *(v16 + v302) = 0;
            if (v303 == 1)
            {
              sub_61E28(2);
            }

            v289 = v300;
          }

          else
          {
            v289 = v1;
            v1 = v300;
          }
        }

        ++v17;
      }

      while (v30 != v17);
LABEL_269:
      sub_2D4D8(v342);

      swift_bridgeObjectRelease_n();

    case 5:
      v82 = type metadata accessor for JSLiveRadioCaseViewController();
      v83 = objc_allocWithZone(v82);
      v83[qword_E07FE0] = 0;
      *&v83[qword_E07FE8] = 0;
      v84 = qword_E71968;
      v85 = type metadata accessor for MetricsPageProperties();
      (*(*(v85 - 8) + 56))(&v83[v84], 1, 1, v85);
      *&v83[qword_E71970] = 0;
      *&v83[qword_E07FF8] = 0;
      v86 = &v83[qword_E08000];
      *v86 = 0;
      *(v86 + 1) = 0;
      v86[16] = 1;
      v87 = &v83[qword_E08008];
      *v87 = 0;
      v87[1] = 0;
      *&v83[qword_E07FF0] = v16;
      v358.receiver = v83;
      v358.super_class = v82;
      v88 = v16;
      v43 = objc_msgSendSuper2(&v358, "init");
      goto LABEL_86;
    case 7:
      v65 = type metadata accessor for JSMenuViewController();
      v66 = objc_allocWithZone(v65);
      *&v66[qword_DE9D50] = 0;
      *&v66[qword_DE9D58] = 0;
      v66[qword_DE9D60] = 0;
      *&v66[qword_DE9D70] = 0;
      v67 = qword_DE9D78;
      v68 = sub_AB3820();
      (*(*(v68 - 8) + 56))(&v66[v67], 1, 1, v68);
      *&v66[qword_DE9D80] = 0;
      *&v66[qword_DE9D68] = v16;
      v357.receiver = v66;
      v357.super_class = v65;
      v69 = v16;
      v43 = objc_msgSendSuper2(&v357, "init");
      goto LABEL_86;
    case 11:
      v70 = type metadata accessor for JSStaticImageViewController();
      v71 = objc_allocWithZone(v70);
      *&v71[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_tapGestureRecognizerHandler] = 0;
      *&v71[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_imageView] = 0;
      *&v71[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_artworkCatalog] = 0;
      *&v71[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_image] = 0;
      *&v71[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_expectedImageAspectRatio] = 0x3FF0000000000000;
      *&v71[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_staticImageViewModel] = v16;
      v359.receiver = v71;
      v359.super_class = v70;
      v72 = v16;
      v73 = objc_msgSendSuper2(&v359, "initWithNibName:bundle:", 0, 0);
      v16 = v37;
      v74 = *(&stru_B8.reloff + (swift_isaMask & *v72));
      v61 = v73;
      v74(v73, &off_D12820);
      v37 = v16;
      v17 = v338;
      sub_41896C();
      goto LABEL_84;
    case 12:
      v54 = type metadata accessor for JSParagraphViewController();
      v55 = objc_allocWithZone(v54);
      v56 = &v55[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_additionalContentInsets];
      v57 = v328;
      *v56 = v327;
      *(v56 + 1) = v57;
      *&v55[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController____lazy_storage___paragraphView] = 0;
      *&v55[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_paragraphViewModel] = v16;
      v360.receiver = v55;
      v360.super_class = v54;
      v58 = v16;
      v59 = objc_msgSendSuper2(&v360, "initWithNibName:bundle:", 0, 0);
      v60 = qword_DE6D80;
      v61 = v59;
      if (v60 != -1)
      {
        swift_once();
      }

      v62 = qword_E0BF40;
      if (objc_getAssociatedObject(v61, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v372 = 0u;
        v373 = 0u;
      }

      v352 = v372;
      v353 = v373;
      if (*(&v373 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v153 = v350;
          goto LABEL_112;
        }

        v16 = v37;
      }

      else
      {
        v16 = v37;
        sub_12E1C(&v352, &unk_DE8E40);
      }

      v163 = objc_allocWithZone(type metadata accessor for VerticalStackViewController.Item());
      v164 = v61;
      v153 = sub_4DE3E0();

      objc_setAssociatedObject(v164, v62, v153, &dword_0 + 1);
      v37 = v16;
LABEL_112:
      v165 = &v153[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      v166 = *&v153[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      v167 = *&v153[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
      v168 = v153[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
      *v165 = 0;
      *(v165 + 4) = 256;
      v165[10] = 0;
      sub_4DBD3C(v166, v167 | (v168 << 16));

      goto LABEL_144;
    case 15:
      v79 = type metadata accessor for JSItemizedTextListViewController();
      v80 = objc_allocWithZone(v79);
      v80[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_verticalStackItemPrefersTopHairline] = 1;
      *&v80[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView] = 0;
      *&v80[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_viewModel] = v16;
      v361.receiver = v80;
      v361.super_class = v79;
      v81 = v16;
      v43 = objc_msgSendSuper2(&v361, "initWithNibName:bundle:", 0, 0);
      goto LABEL_86;
    case 16:
      v345 = type metadata accessor for JSGroupedTextListViewController();
      v44 = objc_allocWithZone(v345);
      v44[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_verticalStackItemPrefersTopHairline] = 1;
      v45 = v37;
      v46 = OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textDrawingCache;
      type metadata accessor for TextDrawing.Cache();
      swift_allocObject();
      *&v44[v46] = TextDrawing.Cache.init()();
      v37 = v45;
      v47 = OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView;
      *&v44[v47] = [objc_allocWithZone(type metadata accessor for GroupedTextListView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      *&v44[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_viewModel] = v16;
      v362.receiver = v44;
      v362.super_class = v345;
      v48 = v16;
      v43 = objc_msgSendSuper2(&v362, "initWithNibName:bundle:", 0, 0);
      goto LABEL_86;
    case 18:
      v75 = type metadata accessor for JSBadgingViewController();
      v76 = objc_allocWithZone(v75);
      v77 = OBJC_IVAR____TtC16MusicApplication23JSBadgingViewController_badgingView;
      *&v76[v77] = [objc_allocWithZone(type metadata accessor for BadgingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      *&v76[OBJC_IVAR____TtC16MusicApplication23JSBadgingViewController_badgingViewModel] = v16;
      v364.receiver = v76;
      v364.super_class = v75;
      v78 = v16;
      v43 = objc_msgSendSuper2(&v364, "initWithNibName:bundle:", 0, 0);
      goto LABEL_86;
    case 19:
      v134 = type metadata accessor for JSMusicVideoDetailViewController();
      v135 = objc_allocWithZone(v134);
      *&v135[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView] = 0;
      *&v135[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem] = 0;
      *&v135[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_musicVideoViewModel] = v16;
      v365.receiver = v135;
      v365.super_class = v134;
      v136 = v16;
      v53 = objc_msgSendSuper2(&v365, "initWithNibName:bundle:", 0, 0);
      sub_5D820();
      goto LABEL_77;
    case 20:
      v49 = type metadata accessor for JSTVShowEpisodeDetailViewController();
      v50 = objc_allocWithZone(v49);
      *&v50[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView] = 0;
      v51 = OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_artworkCachingReference;
      type metadata accessor for Artwork.CachingReference();
      *&v50[v51] = swift_allocObject();
      *&v50[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem] = 0;
      *&v50[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetail] = v16;
      v366.receiver = v50;
      v366.super_class = v49;
      v52 = v16;
      v53 = objc_msgSendSuper2(&v366, "initWithNibName:bundle:", 0, 0);
      sub_16580C();
      goto LABEL_77;
    case 21:
      v89 = type metadata accessor for JSTVShowPlayBarViewController();
      v90 = objc_allocWithZone(v89);
      *&v90[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_contentItem] = 0;
      *&v90[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarView] = 0;
      *&v90[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_episode] = 0;
      *&v90[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarViewModel] = v16;
      v367.receiver = v90;
      v367.super_class = v89;
      v91 = v16;
      v53 = objc_msgSendSuper2(&v367, "initWithNibName:bundle:", 0, 0);
      sub_291574();
LABEL_77:

      v41 = v53;
      goto LABEL_145;
    case 22:
      v143 = objc_allocWithZone(type metadata accessor for JSSearchLandingUpsellViewController(0));
      sub_100A88(v16);
      goto LABEL_86;
    case 24:
      v63 = objc_allocWithZone(type metadata accessor for JSSocialOnboardingFriendsFinderViewController());
      v43 = sub_3388F0(v16);
      goto LABEL_86;
    case 28:
      v145 = type metadata accessor for JSSocialProfileCollectionViewController();
      v146 = objc_allocWithZone(v145);
      *&v146[qword_DF4608] = 0;
      *&v146[qword_DF4610] = 0;
      *&v146[qword_DF4600] = v16;
      v368.receiver = v146;
      v368.super_class = v145;
      v147 = v16;
      v148 = objc_msgSendSuper2(&v368, "init");
      swift_beginAccess();
      v16 = v37;
      v61 = v148;

      v149 = sub_AB9260();

      [v61 setTitle:v149];

      v37 = v16;
      v150 = v147 + OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_delegate;
      swift_beginAccess();
      *(v150 + 1) = &off_CFFCF8;
      swift_unknownObjectWeakAssign();

LABEL_84:
      goto LABEL_144;
    case 31:
      v345 = v37;
      v109 = type metadata accessor for JSSplitWidgetViewController();
      v110 = objc_allocWithZone(v109);
      *&v110[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView] = 0;
      *&v110[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController] = 0;
      *&v110[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController] = 0;
      v111 = &v110[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_lastSeenViewBounds];
      *v111 = 0u;
      v111[1] = 0u;
      v112 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_contentSizeObserverMap;
      v113 = v16;
      *&v110[v112] = sub_96FE0(_swiftEmptyArrayStorage);
      v110[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState] = 0x80;
      *&v110[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_splitWidgetViewModel] = v113;
      v370.receiver = v110;
      v370.super_class = v109;
      v16 = v113;
      v114 = objc_msgSendSuper2(&v370, "initWithNibName:bundle:", 0, 0);
      v115 = JSSplitWidgetViewModel.viewModelKinds.getter();
      sub_CCE28(v115);

      if (qword_DE6D80 != -1)
      {
        swift_once();
      }

      v116 = qword_E0BF40;
      if (objc_getAssociatedObject(v114, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v372 = 0u;
        v373 = 0u;
      }

      v352 = v372;
      v353 = v373;
      if (*(&v373 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v156 = v350;

          goto LABEL_108;
        }
      }

      else
      {
        sub_12E1C(&v352, &unk_DE8E40);
      }

      v157 = objc_allocWithZone(type metadata accessor for VerticalStackViewController.Item());
      v158 = v114;
      v156 = sub_4DE3E0();

      objc_setAssociatedObject(v158, v116, v156, &dword_0 + 1);
LABEL_108:
      v37 = v345;
      v159 = &v156[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      v160 = *&v156[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      v161 = *&v156[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
      v162 = v156[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
      *v159 = 0;
      *(v159 + 4) = 256;
      v159[10] = 0;
      sub_4DBD3C(v160, v161 | (v162 << 16));

      v41 = v114;
      goto LABEL_145;
    case 32:
      v345 = type metadata accessor for JSInlineSocialUpsellViewController();
      v122 = objc_allocWithZone(v345);
      *&v122[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_socialUpsellView] = 0;
      v123 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_artworkCachingReference;
      type metadata accessor for Artwork.CachingReference();
      *&v122[v123] = swift_allocObject();
      v124 = v37;
      v125 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_textDrawingCache;
      type metadata accessor for TextDrawing.Cache();
      swift_allocObject();
      *&v122[v125] = TextDrawing.Cache.init()();
      v37 = v124;
      *&v122[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_inlineSocialUpsell] = v16;
      v369.receiver = v122;
      v369.super_class = v345;
      v126 = v16;
      v43 = objc_msgSendSuper2(&v369, "initWithNibName:bundle:", 0, 0);
      goto LABEL_86;
    case 34:
      v144 = objc_allocWithZone(type metadata accessor for JSInlinePopupViewController());
      sub_31A7BC(v16);
      goto LABEL_86;
    case 37:
      v117 = objc_allocWithZone(type metadata accessor for JSPrivacyLinkViewController());
      v43 = JSPrivacyLinkViewController.init(privacyLinkViewModel:)(v16);
      goto LABEL_86;
    case 38:
      v118 = type metadata accessor for JSBiographyViewController();
      v119 = objc_allocWithZone(v118);
      v345 = v37;
      v120 = OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_textDrawingCache;
      type metadata accessor for TextDrawing.Cache();
      swift_allocObject();
      *&v119[v120] = TextDrawing.Cache.init()();
      v37 = v345;
      *&v119[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView] = 0;
      *&v119[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_viewModel] = v16;
      v363.receiver = v119;
      v363.super_class = v118;
      v121 = v16;
      v43 = objc_msgSendSuper2(&v363, "initWithNibName:bundle:", 0, 0);
      goto LABEL_86;
    case 39:
      v345 = v37;
      v137 = type metadata accessor for JSSearchLandingViewController();
      v138 = objc_allocWithZone(v137);
      *(v138 + qword_DF9F88) = 0;
      *(v138 + qword_DF9F90) = 0;
      *(v138 + qword_DF9F98) = 0;
      v139 = v138 + qword_DF9FA8;
      *v139 = 0;
      v139[1] = 0;
      v312 = qword_DF9FB0;
      v140 = [objc_allocWithZone(UILabel) init];
      [v140 setAdjustsFontForContentSizeCategory:1];
      sub_13C80(0, &qword_DE6EE0);
      v141 = sub_ABA550();
      [v140 setFont:v141];

      [v140 setMaximumContentSizeCategory:v329];
      if (qword_DE6C98 != -1)
      {
        swift_once();
      }

      [v140 setTextColor:qword_E718D8];
      [v140 setNumberOfLines:1];
      *&v312[v138] = v140;
      *(v138 + qword_DF9FA0) = v16;
      v371.receiver = v138;
      v371.super_class = v137;
      v142 = v16;
      v99 = objc_msgSendSuper2(&v371, "init");
      v37 = v345;
      goto LABEL_146;
    case 40:
      v151 = objc_allocWithZone(_s14ViewControllerCMa());
      v152 = v16;
      v43 = sub_2882EC(v32 & 0xFFFFFFFFFFFFFF9);
      goto LABEL_86;
    case 41:
      v64 = objc_allocWithZone(type metadata accessor for JSListenNowMusicSiriUpsellViewController(0));
      v43 = sub_3504C(v16);
LABEL_86:
      v41 = v43;
      goto LABEL_145;
    default:
      goto LABEL_275;
  }
}

unint64_t sub_A6C4C(unint64_t a1)
{
  result = 0;
  v3 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if (v3 <= 15)
  {
    if (v3 <= 4)
    {
      if (v3 == 1)
      {
        v16 = a1 & 0xFFFFFFFFFFFFFF9;
        v17 = ((a1 & 0xFFFFFFFFFFFFFF9) + OBJC_IVAR____TtC11MusicJSCore7JSShelf_title);
        swift_beginAccess();
        v18 = v17[1];
        v19 = *v17 & 0xFFFFFFFFFFFFLL;
        if ((v18 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v18) & 0xF;
        }

        if (!v19)
        {
          v20 = (v16 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_supertitle);
          swift_beginAccess();
          v21 = v20[1];
          v22 = *v20 & 0xFFFFFFFFFFFFLL;
          if ((v21 & 0x2000000000000000) != 0)
          {
            v22 = HIBYTE(v21) & 0xF;
          }

          return v22 != 0;
        }

        return 1;
      }

      if (v3 != 2)
      {
        if (v3 != 4)
        {
          return result;
        }

        result = JSGrid.sections.getter();
        if (result >> 62)
        {
          v35 = result;
          v36 = sub_ABB060();
          result = v35;
          if (v36)
          {
            goto LABEL_8;
          }
        }

        else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_8:
          if ((result & 0xC000000000000001) != 0)
          {
            v4 = sub_35FC8C(0, result);
            goto LABEL_11;
          }

          if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
          {
            v4 = *(result + 32);
LABEL_11:
            v5 = v4;

            v6 = &v5[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title];
            swift_beginAccess();
            v8 = *v6;
            v7 = *(v6 + 1);

LABEL_44:
            v22 = HIBYTE(v7) & 0xF;
            v26 = v8 & 0xFFFFFFFFFFFFLL;
            goto LABEL_55;
          }

          __break(1u);
LABEL_76:
          __break(1u);
          return result;
        }

LABEL_72:

        return 0;
      }

      v9 = a1 & 0xFFFFFFFFFFFFFF9;
      v29 = ((a1 & 0xFFFFFFFFFFFFFF9) + OBJC_IVAR____TtC11MusicJSCore7JSBrick_title);
      swift_beginAccess();
      v30 = v29[1];
      if (v30)
      {
        if ((v30 & 0x2000000000000000) != 0 ? HIBYTE(v30) & 0xF : *v29 & 0xFFFFFFFFFFFFLL)
        {
          return 1;
        }
      }

      v13 = &OBJC_IVAR____TtC11MusicJSCore7JSBrick_supertitle;
      goto LABEL_61;
    }

    if (v3 == 5)
    {
      result = JSLiveRadioCase.items.getter();
      if (result >> 62)
      {
        v37 = result;
        v38 = sub_ABB060();
        result = v37;
        if (!v38)
        {
          goto LABEL_72;
        }
      }

      else if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_72;
      }

      if ((result & 0xC000000000000001) != 0)
      {
        v23 = sub_3600E0(0, result);
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_76;
        }

        v23 = *(result + 32);
      }

      v24 = v23;

      v25 = &v24[OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_headerTitleText];
      swift_beginAccess();
      v8 = *v25;
      v7 = *(v25 + 1);

      if (v7)
      {

        goto LABEL_44;
      }

      return 0;
    }

    if (v3 == 12)
    {
      v14 = (*&stru_108.segname[(swift_isaMask & *(a1 & 0xFFFFFFFFFFFFFF9)) + 16])(0);
      goto LABEL_54;
    }

    if (v3 != 15)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v3 > 31)
  {
    switch(v3)
    {
      case ' ':
        v27 = a1 & 0xFFFFFFFFFFFFFF9;
        v28 = &OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_title;
        break;
      case '\'':
        v27 = a1 & 0xFFFFFFFFFFFFFF9;
        v28 = &OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_title;
        break;
      case ')':
        v14 = JSListenNowMusicSiriUpsell.title.getter();
        goto LABEL_54;
      default:
        return result;
    }

    v33 = (v27 + *v28);
    goto LABEL_62;
  }

  if (v3 == 16)
  {
LABEL_25:
    v14 = (*&stru_108.sectname[swift_isaMask & *(a1 & 0xFFFFFFFFFFFFFF9)])(0);
    goto LABEL_54;
  }

  if (v3 != 22)
  {
    if (v3 != 27)
    {
      return result;
    }

    v9 = a1 & 0xFFFFFFFFFFFFFF9;
    v10 = ((a1 & 0xFFFFFFFFFFFFFF9) + OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_headlineText);
    swift_beginAccess();
    v11 = v10[1];
    if (v11)
    {
      if ((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : *v10 & 0xFFFFFFFFFFFFLL)
      {
        return 1;
      }
    }

    v13 = &OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_titleText;
LABEL_61:
    v33 = (v9 + *v13);
LABEL_62:
    swift_beginAccess();
    v34 = v33[1];
    if (v34)
    {
      if ((v34 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(v34) & 0xF;
      }

      else
      {
        v22 = *v33 & 0xFFFFFFFFFFFFLL;
      }

      return v22 != 0;
    }

    return 0;
  }

  v14 = JSSearchLandingUpsell.headline.getter();
LABEL_54:
  v32 = v14;
  v7 = v15;

  v22 = HIBYTE(v7) & 0xF;
  v26 = v32 & 0xFFFFFFFFFFFFLL;
LABEL_55:
  if ((v7 & 0x2000000000000000) == 0)
  {
    v22 = v26;
  }

  return v22 != 0;
}

uint64_t sub_A7168(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (*(result + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID) == a2)
  {
    v5 = result;
    *(result + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) = 0;
    sub_4D4068(a3, 0);
    v6 = *(v5 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
    if (v6)
    {
      *(v6 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBottomHairlineVisible) = a4 & 1;
      v7 = *(v6 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView);
      v8 = v7[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible];
      v7[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible] = a4 & 1;
      if (v8 != (a4 & 1))
      {
        [v7 setNeedsLayout];
      }
    }

    v9 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers;
    swift_beginAccess();
    v10 = *(v5 + v9);
    *(v5 + v9) = _swiftEmptyArrayStorage;
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 40;
      do
      {
        v13 = *(v12 - 8);

        v13(v14);

        v12 += 16;
        --v11;
      }

      while (v11);
    }

    v15 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pendingStackItemUpdateRequests;
    v16 = swift_beginAccess();
    v17 = *(v5 + v15);
    v18 = *(v17 + 16);
    if (v18)
    {
      *(v5 + v15) = _swiftEmptyArrayStorage;
      v19 = v17 + 40;
      do
      {
        v20 = *(v19 - 8);

        v20(v21);

        v19 += 16;
        --v18;
      }

      while (v18);
    }

    else
    {
      return sub_A3DD4(v16);
    }
  }

  return result;
}

uint64_t sub_A7310(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v7;
    if (!v7)
    {
      return a2(result);
    }
  }

  return result;
}

void sub_A737C()
{
  v1 = v0;
  v2 = (*&stru_388.segname[(swift_isaMask & *v0) - 8])();
  if (!v2)
  {
    return;
  }

  v37 = v2;
  if (![v37 isViewLoaded] || (v3 = *&v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView]) != 0 && (objc_msgSend(v3, "bounds"), v5 == 0.0) && v4 == 0.0)
  {

    goto LABEL_7;
  }

  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = v7;
  [v7 safeAreaInsets];

  v9 = [v1 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == &dword_0 + 2)
  {
    v11 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem];
    if (v11)
    {
      v12 = *(&stru_2E8.size + (swift_isaMask & *v11));
      v13 = v11;
      v14 = v12();

      if (v14)
      {
      }
    }
  }

  sub_AB9E70();
  v15 = v37;
  v16 = &v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets];
  v17 = *&v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets];
  v18 = *&v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets + 16];
  *v16 = v19.f64[0];
  v16[1] = v20;
  v16[2] = v21.f64[0];
  v16[3] = v22;
  v19.f64[1] = v20;
  v21.f64[1] = v22;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v17, v19), vceqq_f64(v18, v21)))) & 1) == 0)
  {
    sub_371830();
    v15 = v37;
  }

  v23 = [v15 view];

  if (!v23)
  {
    goto LABEL_32;
  }

  v24 = [v1 view];
  if (!v24)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 bounds];
  [v23 setFrame:?];

  v6 = v37;
  if (v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isAnimating] & 1) != 0 || (v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_prefersAnimatedBannerDisplay])
  {
    goto LABEL_8;
  }

  v26 = [v1 traitCollection];
  v27 = [v26 horizontalSizeClass];

  if (v27 == &dword_0 + 2 && (v28 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem]) != 0 && (v29 = *(&stru_2E8.size + (swift_isaMask & *v28)), v30 = v28, v31 = v29(), v30, v31))
  {

    horizontal = 0.0;
    vertical = 40.0;
  }

  else
  {
    horizontal = UIOffsetZero.horizontal;
    vertical = UIOffsetZero.vertical;
  }

  v6 = v37;
  v34 = &v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions];
  v36 = *&v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions];
  v35 = *&v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions + 8];
  *v34 = horizontal;
  v34[1] = vertical;
  if (v36 == horizontal && v35 == vertical)
  {
    goto LABEL_8;
  }

  sub_375B00();
LABEL_7:
  v6 = v37;
LABEL_8:
}

uint64_t sub_A777C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  static ApplicationCapabilities.shared.getter(v10);
  v3 = v11;

  sub_70C54(v10);
  v4 = sub_472A84(10, v3);

  if (v4)
  {
    v6 = sub_AB9990();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_AB9940();

    v8 = sub_AB9930();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;

    sub_DBDC8(0, 0, v2, &unk_AFAC90, v9);
  }

  return result;
}

uint64_t sub_A7908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_AB9940();
  v4[6] = sub_AB9930();
  v6 = sub_AB98B0();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_A79A0, v6, v5);
}

uint64_t sub_A79A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem];
    if (v2)
    {
      v3 = Strong;
      v4 = *(&stru_388.reserved2 + (swift_isaMask & *v2));
      v5 = v2;
      v6 = v4();
      v8 = v7;

      if (v8)
      {
        v9._rawValue = &off_CEFEC8;
        v16._countAndFlagsBits = v6;
        v16._object = v8;
        v10 = sub_ABB140(v9, v16);

        if (!v10)
        {
          v11 = 0;
          goto LABEL_14;
        }

        if (v10 == 1)
        {
          v11 = 1;
LABEL_14:
          *(v0 + 112) = v11;
          if (qword_DE6800 != -1)
          {
            swift_once();
          }

          *(v0 + 80) = static UnifiedMessages.Coordinator.shared;
          v14 = swift_task_alloc();
          *(v0 + 88) = v14;
          *v14 = v0;
          v14[1] = sub_A7BBC;

          return sub_E09D4();
        }
      }
    }

    else
    {
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_A7BBC(char a1)
{
  v2 = *v1;
  *(*v1 + 113) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_A7CE4, v4, v3);
}

uint64_t sub_A7CE4()
{
  if (*(v0 + 113) == 1)
  {
    v1 = *(v0 + 112);
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_A7DCC;

    return sub_DC8E4(v1);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_A7DCC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_A7EF4, v4, v3);
}

uint64_t sub_A7EF4()
{
  v1 = v0[13];
  v2 = v0[9];
  sub_A7F78(v1);

  v3 = v0[1];

  return v3();
}

void sub_A7F78(void *a1)
{
  v2 = v1;
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController;
    v14 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController];
    v15 = a1;
    v53 = v15;
    if (!v14)
    {
      goto LABEL_26;
    }

    v16 = [v15 identifier];
    if (v16)
    {
      v17 = v16;
      v18 = sub_AB92A0();
      v20 = v19;

      v21 = *&v2[v13];
      if (!v21)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v18 = 0;
      v20 = 0;
      v21 = *&v2[v13];
      if (!v21)
      {
        goto LABEL_18;
      }
    }

    v23 = *&v21[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_inlineBubbleTipViewController];
    v24 = v21;
    v25 = [v23 dialogRequest];
    v26 = [v25 identifier];
    if (v26)
    {
      v27 = v26;
      v28 = sub_AB92A0();
      v30 = v29;

      v31 = v53;
      if (v20)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_18:
    v28 = 0;
    v30 = 0;
    v31 = v53;
    if (v20)
    {
LABEL_19:
      if (v30)
      {
        if (v18 == v28 && v20 == v30)
        {

          return;
        }

        v49 = sub_ABB3C0();

        v31 = v53;
        if (v49)
        {
          goto LABEL_37;
        }

LABEL_26:
        v36 = objc_allocWithZone(_s15InlineBubbleTipCMa());
        v37 = v53;
        v38 = sub_4F6F3C(v37);
        v39 = v38;
        v40 = *&v2[v13];
        *&v2[v13] = v38;
        if (v40)
        {
          v41 = v38;
          v40 = v40;
          v42 = sub_ABA790();

          if (v42)
          {
LABEL_31:

            v44 = *&v2[v13];
            if (v44)
            {
              v45 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v46 = &v44[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_handleUserDismissed];
              v47 = *&v44[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_handleUserDismissed];
              *v46 = sub_A935C;
              v46[1] = v45;
              v48 = v44;

              sub_17654(v47);
            }

            return;
          }
        }

        else
        {
          v43 = v38;
        }

        sub_A3ACC();
        goto LABEL_31;
      }

LABEL_25:

      goto LABEL_26;
    }

LABEL_14:
    if (!v30)
    {
LABEL_37:

      return;
    }

    goto LABEL_25;
  }

  v22 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController];
  if (v22)
  {
    *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController] = 0;
    if (v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] == 1)
    {
    }

    else
    {
      v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] = 1;
      v52 = v10;
      v53 = v22;
      sub_13C80(0, &qword_DE8ED0);
      v51 = sub_ABA150();
      v32 = swift_allocObject();
      *(v32 + 16) = v2;
      aBlock[4] = sub_A9B84;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_114;
      v33 = _Block_copy(aBlock);
      v34 = v2;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_36A00(&qword_DF06D0, &unk_DE9C30);
      sub_ABABB0();
      v35 = v51;
      sub_ABA160();
      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v12, v52);
      _Block_release(v33);
    }
  }
}

void sub_A85A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController);
    *(Strong + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController) = 0;
    if (v2)
    {
      sub_A3ACC();

      v1 = v2;
    }
  }
}

uint64_t sub_A8618()
{
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider));

  sub_12E1C(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties, &unk_DF1330);
}

id sub_A872C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSVerticalStackViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSVerticalStackViewController()
{
  result = qword_DEC558;
  if (!qword_DEC558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A88D8()
{
  sub_70A34();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_A89D0(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  if (*(v5 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate) == 1)
  {
    a1 = sub_A3DD4();
  }

  if (*(v5 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) != 1)
  {
    return v4(a1);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers;
  swift_beginAccess();
  v8 = *(v5 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_6AA00(0, v8[2] + 1, 1, v8);
    *(v5 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_6AA00((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_2D4D0;
  v12[5] = v6;
  *(v5 + v7) = v8;
  return swift_endAccess();
}

void *sub_A8B20()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
  v2 = v1;
  return v1;
}

void sub_A8B50(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController) = a1;
  v2 = a1;
  sub_A17E4(v3);
}

uint64_t (*sub_A8BB0(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_A1BA8(v2);
  return sub_A9BB0;
}

uint64_t (*sub_A8C98(uint64_t *a1))()
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
  *(v3 + 32) = (*&stru_388.segname[(swift_isaMask & *v1) + 8])();
  return sub_A9BB0;
}

void sub_A8D40(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem) = a1;
  v2 = a1;
}

uint64_t sub_A8D9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  swift_beginAccess();
  return sub_15F84(v3 + v4, a1, &unk_DF1330);
}

uint64_t sub_A8E08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-v4];
  v6 = *v1;
  v7 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  swift_beginAccess();
  sub_15F84(v6 + v7, v5, &unk_DF1330);
  swift_beginAccess();
  sub_A9258(a1, v6 + v7);
  swift_endAccess();
  sub_A25D0(v5);
  sub_12E1C(a1, &unk_DF1330);
  return sub_12E1C(v5, &unk_DF1330);
}

uint64_t (*sub_A8F18(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_A2A9C(v2);
  return sub_A8F8C;
}

void sub_A8F90(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_A8FDC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_A0C94(*a1, v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 137) = *(v9 + 9);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

uint64_t sub_A9094(uint64_t a1)
{
  result = sub_A9210(&qword_DEC5C0, type metadata accessor for JSVerticalStackViewController);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_A90EC()
{

  return swift_deallocObject();
}

uint64_t sub_A9124()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5D0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_DEC5D8;
  }

  else
  {
    v2 = &unk_DF43B0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2);
}

uint64_t sub_A919C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A9210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A9258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_A92C8(uint64_t a1)
{
  v2 = type metadata accessor for MetricsPageProperties();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A9324()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A937C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_A7908(a1, v4, v5, v6);
}

void sub_A9430()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_impressionTrackingIsEnabledOverride) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController____lazy_storage___impressionsTracker) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isInsidePopover) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  v3 = type metadata accessor for MetricsPageProperties();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wantsTopStackItemHairline) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isPageHeaderContentBottomHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pendingStackItemUpdateRequests) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wasUnderlappingStatusBar) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipRequest) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_shouldIgnoreStackItemUpdates) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController;
  *(v0 + v4) = sub_96934(_swiftEmptyArrayStorage);
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_A95F8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_120Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_A96D4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A970C()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_A97D0(double a1)
{
  v3 = *(sub_AB3430() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_41BF9C(v4, v5, a1);
}

uint64_t sub_A9844()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_A9908()
{
  v1 = *(sub_AB3430() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_471ED0(v2, v3, v4);
}

uint64_t sub_A996C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A9990()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  v4 = *(v0 + 72);
  if (v4 >= 9)
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 210) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_A9AAC()
{
  v1 = *(sub_AB3430() - 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 16);
  v7 = *(v0 + 209);
  v8 = v0 + ((*(v1 + 80) + 210) & ~*(v1 + 80));

  return sub_46CE94(v6, v2, v3, (v0 + 40), v4, v5, v7, v8);
}

void sub_A9C48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSFlowcaseModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel];
    *&v8[OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel] = v5;
    v7 = v5;
  }
}

uint64_t sub_A9D6C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_AAE7C, v12);
}

uint64_t sub_A9E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);
}

void sub_AA0DC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication31JSFlowcaseModelRequestOperation_request];
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel);
  if (v2)
  {
    v3 = v2;
    v4 = [v1 itemProperties];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 itemKind];
      if (!v6 || (v7 = v6, [v6 modelClass], v7, swift_getObjCClassMetadata(), (v8 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
      {
        v8 = [objc_opt_self() emptyPropertySet];
      }

      v9 = [v5 propertySetByCombiningWithPropertySet:v8];

      v10 = objc_allocWithZone(type metadata accessor for JSModelFlowcaseItemBuilder());
      v11 = sub_281748(v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v13 = sub_AB9260();
    v34 = v12;
    [v12 appendSection:v13];

    v14 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v15 = sub_AB9260();
    v33 = v14;
    [v14 appendSection:v15];

    v16 = JSFlowcase.items.getter();
    v17 = v16;
    if (v16 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v31 = v1;
      v32 = v3;
      v1 = 0;
      v3 = &selRef__authenticateReturningError_;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v22 = sub_360628(v1, v17);
        }

        else
        {
          if (v1 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_23;
          }

          v22 = *(v17 + 8 * v1 + 32);
        }

        v23 = v22;
        v24 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11)
        {
          v25 = [a1 userIdentity];
          if (!v25)
          {
            __break(1u);
LABEL_21:

            v1 = v31;
            v3 = v32;
            goto LABEL_26;
          }

          v19 = v25;
          v20 = sub_28090C(v23, v25);

          [v33 appendItem:v23];
          v21 = v20;
          [v34 appendItem:v21];
        }

        ++v1;
        if (v24 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_26:
    v26 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v34];
    [v26 setRepresentedObjects:v33];
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = a1;
    aBlock[4] = sub_AAD74;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_27;
    v28 = _Block_copy(aBlock);
    v29 = v1;
    v30 = a1;

    [v26 performWithResponseHandler:v28];
    _Block_release(v28);
  }

  else
  {
    __break(1u);
  }
}

void sub_AA4F0(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSFlowcaseModelResponse());
    v9 = a1;
    v13 = sub_AA74C(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication31JSFlowcaseModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication31JSFlowcaseModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_AA74C(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_itemsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSFlowcaseModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel];
    v12 = v11;
    v13 = *JSFlowcase.itemsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_itemsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_AAA0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong _invalidate];
  }
}

id sub_AABD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_AAC9C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_AACF4()
{

  return swift_deallocObject();
}

uint64_t sub_AAD34()
{

  return swift_deallocObject();
}

uint64_t sub_AAD7C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_AADD0()
{

  return swift_deallocObject();
}

uint64_t sub_AAE24()
{

  return swift_deallocObject();
}

uint64_t sub_AAE8C()
{

  return swift_deallocObject();
}

id sub_AAF14(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_footerAudioTraitDescriptions] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText] = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication10DetailCell_releaseDate;
  v11 = sub_AB3430();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_trackCountAndDuration];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_copyright];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabels] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 layer];
  [v16 setAllowsGroupOpacity:0];

  v17 = [v15 layer];
  [v17 setAllowsGroupBlending:0];

  return v15;
}

uint64_t sub_AB108(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - v5;
  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_footerAudioTraitDescriptions);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_footerAudioTraitDescriptions) = a1;
  v8 = sub_12C848(v7, a1);
  if (v8)
  {
  }

  else
  {
    __chkstk_darwin(v8);
    *(&v10 - 2) = v1;
    type metadata accessor for DetailCellTextStack(0);
    sub_AF6D0(&unk_DF8680, type metadata accessor for DetailCellTextStack);
    sub_AB6780();
    sub_AB6AA0();
    v11[3] = v3;
    v11[4] = sub_36A00(&unk_E09220, &unk_E09210);
    __swift_allocate_boxed_opaque_existential_0(v11);
    sub_AB6770();
    (*(v4 + 8))(v6, v3);
    sub_ABA2B0();
  }
}

uint64_t sub_AB33C(uint64_t a1)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210);
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v23 - v3;
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE81D8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = OBJC_IVAR____TtC16MusicApplication10DetailCell_releaseDate;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_15F84(v26, v14, &unk_E01230);
  v26 = v1;
  sub_15F84(v1 + v15, &v14[v16], &unk_E01230);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      return sub_12E1C(v14, &unk_E01230);
    }

    goto LABEL_6;
  }

  sub_15F84(v14, v10, &unk_E01230);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    result = sub_12E1C(v14, &qword_DE81D8);
LABEL_7:
    __chkstk_darwin(result);
    *(&v23 - 2) = v26;
    type metadata accessor for DetailCellTextStack(0);
    sub_AF6D0(&unk_DF8680, type metadata accessor for DetailCellTextStack);
    v19 = v23;
    sub_AB6780();
    sub_AB6AA0();
    v20 = v25;
    v27[3] = v25;
    v27[4] = sub_36A00(&unk_E09220, &unk_E09210);
    __swift_allocate_boxed_opaque_existential_0(v27);
    sub_AB6770();
    (*(v24 + 8))(v19, v20);
    return sub_ABA2B0();
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_AF6D0(&qword_DE81E0, &type metadata accessor for Date);
  v21 = sub_AB91C0();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  result = sub_12E1C(v14, &unk_E01230);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_AB89C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB92A0();
  v9 = v8;
  v11 = a3;
  v10 = a1;
  sub_AB94C(v7, v9, a4);
}

uint64_t sub_AB94C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - v9;
  v11 = (v3 + *a3);
  v12 = *v11;
  v13 = v11[1];
  *v11 = a1;
  v11[1] = a2;
  v14 = v12 == a1 && v13 == a2;
  if (v14 || (v15 = sub_ABB3C0(), (v15 & 1) != 0))
  {
  }

  else
  {
    __chkstk_darwin(v15);
    *(&v17 - 2) = v3;
    type metadata accessor for DetailCellTextStack(0);
    sub_AF6D0(&unk_DF8680, type metadata accessor for DetailCellTextStack);
    sub_AB6780();
    sub_AB6AA0();
    v18[3] = v7;
    v18[4] = sub_36A00(&unk_E09220, &unk_E09210);
    __swift_allocate_boxed_opaque_existential_0(v18);
    sub_AB6770();
    (*(v8 + 8))(v10, v7);
    sub_ABA2B0();
  }
}

uint64_t sub_ABB9C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210);
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v11[-1] - v6;
  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabels);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabels) = a1;
  if (!v8)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (!a1 || (, v9 = sub_12C8D8(v8, a1), result = , (v9 & 1) == 0))
  {
LABEL_8:
    __chkstk_darwin(result);
    *(&v10 - 2) = v1;
    type metadata accessor for DetailCellTextStack(0);
    sub_AF6D0(&unk_DF8680, type metadata accessor for DetailCellTextStack);
    sub_AB6780();
    sub_AB6AA0();
    v11[3] = v3;
    v11[4] = sub_36A00(&unk_E09220, &unk_E09210);
    __swift_allocate_boxed_opaque_existential_0(v11);
    sub_AB6770();
    (*(v4 + 8))(v7, v3);
    sub_ABA2B0();
  }
}

uint64_t sub_AC228@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  [a1 music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_footerAudioTraitDescriptions];
  v26 = a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText];
  v13 = OBJC_IVAR____TtC16MusicApplication10DetailCell_releaseDate;
  swift_beginAccess();
  v14 = type metadata accessor for DetailCellTextStack(0);
  sub_15F84(&a1[v13], a2 + v14[8], &unk_E01230);
  v16 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_trackCountAndDuration];
  v15 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_trackCountAndDuration + 8];
  v18 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_copyright];
  v17 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_copyright + 8];
  v19 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabels];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC8A8);
  swift_storeEnumTagMultiPayload();
  v21 = (a2 + v14[5]);
  *v21 = v5;
  v21[1] = v7;
  v21[2] = v9;
  v21[3] = v11;
  *(a2 + v14[6]) = v12;
  *(a2 + v14[7]) = v26;
  v22 = (a2 + v14[9]);
  *v22 = v16;
  v22[1] = v15;
  v23 = (a2 + v14[10]);
  *v23 = v18;
  v23[1] = v17;
  *(a2 + v14[11]) = v19;
  v24 = (a2 + v14[12]);
  *v24 = sub_AF5D8;
  v24[1] = v20;
  sub_8150C();

  sub_AB58F0();
  sub_AB58F0();
  sub_AB58F0();
  sub_AB58F0();
  sub_AB58F0();
  sub_AB58F0();
  sub_AB58F0();
}

void sub_AC504(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler];
    if (v4)
    {
      sub_307CC(*&Strong[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler]);

      v4(a1);
      sub_17654(v4);
    }

    else
    {
    }
  }
}

void sub_AC678()
{
  sub_AFD60(319, &qword_E247E0, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_AC770@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB6240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC8A8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_15F84(v2, &v14 - v9, &qword_DEC8A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_AB6420();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_AB9F40();
    v13 = sub_AB6A40();
    sub_AB4A90();

    sub_AB6230();
    swift_getAtKeyPath();
    (*(v5 + 8))(v7, v4);
  }
}

__n128 sub_AC970@<Q0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_AB6C70();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9A8);
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  v9 = sub_AB6450();
  type metadata accessor for DetailCellTextStack(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
  sub_AB5900();
  v10 = v57;
  *v8 = v9;
  *(v8 + 1) = v10;
  v8[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9B0);
  sub_ACDF8(v1, &v8[*(v11 + 44)]);
  sub_AB6B70();
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  v12 = sub_AB6CA0();
  (*(v3 + 8))(v5, v2);

  KeyPath = swift_getKeyPath();
  v14 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9B8) + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v15 = qword_E718C8;
  v16 = sub_AB7420();
  v17 = swift_getKeyPath();
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9C0) + 36)];
  *v18 = v17;
  v18[1] = v16;
  LOBYTE(v17) = sub_AB6AB0();
  sub_AB5900();
  sub_AB5690();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9C8) + 36)];
  *v27 = v17;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  LOBYTE(v17) = sub_AB6AC0();
  sub_AB5900();
  sub_AB5690();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9D0) + 36)];
  *v36 = v17;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  LOBYTE(v16) = sub_AB6AD0();
  sub_AB5690();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9D8) + 36)];
  *v45 = v16;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  LOBYTE(v16) = sub_AB6AF0();
  sub_AB5690();
  v46 = &v8[*(v6 + 36)];
  *v46 = v16;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  sub_AB79F0();
  sub_AB5E90();
  v51 = v56;
  sub_36B0C(v8, v56, &qword_DEC9A8);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9E0) + 36);
  v53 = v62;
  *(v52 + 64) = v61;
  *(v52 + 80) = v53;
  *(v52 + 96) = v63;
  v54 = v58;
  *v52 = v57;
  *(v52 + 16) = v54;
  result = v60;
  *(v52 + 32) = v59;
  *(v52 + 48) = result;
  return result;
}

uint64_t sub_ACDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = sub_AB6420();
  v184 = *(v3 - 8);
  __chkstk_darwin(v3);
  v183 = v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v5 - 8);
  v188 = v158 - v6;
  v7 = sub_AB3430();
  v190 = *(v7 - 8);
  __chkstk_darwin(v7);
  v189 = v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB35C0();
  __chkstk_darwin(v9 - 8);
  v185 = v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB9250();
  __chkstk_darwin(v11 - 8);
  v180 = v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9E8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v158 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9F0);
  v18 = __chkstk_darwin(v17 - 8);
  v182 = v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v158 - v20;
  v22 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v197) = 7;
  sub_AFE98();
  v191 = sub_36A48();
  NSUserDefaults.subscript.getter(&v205);
  v186 = v3;
  v192 = v7;
  if (!v207)
  {
    sub_12E1C(&v205, &unk_DE8E40);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    v34 = 1;
    goto LABEL_10;
  }

  v23 = v197;

  if ((v23 & 1) != 0 && (v24 = type metadata accessor for DetailCellTextStack(0), v25 = *(a1 + *(v24 + 24)), *(v25 + 16)))
  {
    v26 = v24;
    v27 = sub_AB6450();
    v187 = v26;
    v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
    sub_AB5900();
    v28 = v205;
    *v16 = v27;
    *(v16 + 1) = v28;
    v16[16] = 0;
    v179 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DECA08) + 44);
    *&v205 = v25;
    KeyPath = swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
    sub_36A00(&qword_DECA10, &unk_DFDE70);
    sub_AB78B0();
    LOBYTE(v27) = sub_AB6AC0();
    sub_AB5900();
    sub_AB5690();
    v29 = &v16[*(v13 + 36)];
    *v29 = v27;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    sub_36B0C(v16, v21, &qword_DEC9E8);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v7 = v192;
LABEL_10:
  (*(v14 + 56))(v21, v34, 1, v13);
  v187 = type metadata accessor for DetailCellTextStack(0);
  v35 = a1;
  v36 = *(a1 + *(v187 + 28));
  v181 = v21;
  if (v36 == 1)
  {
    if (qword_DE6AF0 != -1)
    {
      swift_once();
    }

    v37 = qword_E71620;
    sub_AB75A0();
    v38 = sub_AB6F30();
    v40 = v39;
    v42 = v41;
    v43 = sub_AB6E50();
    v45 = v44;
    v47 = v46;
    sub_36B74(v38, v40, v42 & 1);

    sub_AB91E0();
    sub_AB3550();
    *&v205 = sub_AB9320();
    *(&v205 + 1) = v48;
    v49 = sub_AB6F20();
    v51 = v50;
    LOBYTE(v38) = v52;
    v53 = sub_AB6E50();
    v179 = v54;
    v180 = v53;
    LODWORD(v185) = v55;
    KeyPath = v56;
    sub_36B74(v49, v51, v38 & 1);

    sub_36B74(v43, v45, v47 & 1);

    LOBYTE(v49) = sub_AB6AC0();
    v57 = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
    sub_AB5900();
    sub_AB5690();
    v176 = v59;
    v177 = v58;
    v174 = v61;
    v175 = v60;
    LOBYTE(v205) = v185 & 1;
    LOBYTE(v197) = 0;
    v173 = v185 & 1;
    v172 = v49;
    v7 = v192;
  }

  else
  {
    v179 = 0;
    v180 = 0;
    KeyPath = 0;
    v172 = 0;
    v173 = 0;
    v176 = 0;
    v177 = 0;
    v174 = 0;
    v175 = 0;
    v57 = v187;
  }

  v62 = v188;
  sub_15F84(v35 + v57[8], v188, &unk_E01230);
  v63 = v190;
  v64 = (*(v190 + 48))(v62, 1, v7);
  v65 = v189;
  if (v64 == 1)
  {
    sub_12E1C(v62, &unk_E01230);
    v192 = 0;
    v187 = 0;
    v188 = 0;
    v185 = 0;
  }

  else
  {
    v171 = v35;
    (*(v63 + 32))(v189, v62, v7);
    if (qword_DE6CB8 != -1)
    {
      swift_once();
    }

    v66 = qword_E718F8;
    isa = sub_AB3370().super.isa;
    v68 = [v66 stringFromDate:isa];

    *&v205 = sub_AB92A0();
    *(&v205 + 1) = v69;
    v70 = sub_AB6F20();
    v72 = v71;
    LOBYTE(isa) = v73;
    v75 = v74;
    (*(v63 + 8))(v65, v192);

    v192 = v70;
    v187 = isa & 1;
    v188 = v72;
    sub_AFF30(v70, v72, isa & 1);
    v185 = v75;

    v35 = v171;
  }

  v76 = (v35 + v57[9]);
  v77 = v76[1];
  if (v77)
  {
    *&v205 = *v76;
    *(&v205 + 1) = v77;

    v78 = sub_AB6F20();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = v183;
    sub_AC770(v183);
    v86 = sub_AB6410();
    (*(v184 + 8))(v85, v186);
    v87 = 2;
    if (v86)
    {
      v87 = 3;
    }

    v186 = v87;
    v88 = swift_getKeyPath();
    v191 = v78;
    v160 = v82 & 1;
    v161 = v80;
    sub_AFF30(v78, v80, v82 & 1);
    v171 = v84;

    v170 = v88;
  }

  else
  {
    v191 = 0;
    v160 = 0;
    v161 = 0;
    v170 = 0;
    v171 = 0;
    v186 = 0;
  }

  v89 = (v35 + v57[10]);
  v90 = v89[1];
  if (v90)
  {
    *&v205 = *v89;
    *(&v205 + 1) = v90;

    v91 = sub_AB6F20();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v98 = swift_getKeyPath();
    v183 = v91;
    v184 = v95 & 1;
    v190 = v93;
    sub_AFF30(v91, v93, v95 & 1);
    v189 = v97;

    v99 = v98;

    v100 = 3;
  }

  else
  {
    v183 = 0;
    v184 = 0;
    v189 = 0;
    v190 = 0;
    v99 = 0;
    v100 = 0;
  }

  v167 = *(v35 + v57[11]);
  if (v167)
  {
    v101 = (v35 + v57[12]);
    v102 = *v101;
    v103 = v101[1];

    v168 = v103;
    v169 = v102;
    sub_307CC(v102);
    v104 = sub_AB6AB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
    sub_AB5900();
    sub_AB5690();
    v159 = v105;
    v107 = v106;
    v109 = v108;
    v111 = v110;
    LOBYTE(v197) = 0;
    v166 = 0;
    v112 = sub_AB6AC0();
    sub_AB5900();
    sub_AB5690();
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v164 = v104;
    v165 = v112;
  }

  else
  {
    v168 = 0;
    v169 = 0;
    v165 = 0;
    v166 = 0;
    v164 = 0;
    v159 = 0;
    v107 = 0;
    v109 = 0;
    v111 = 0;
    v114 = 0;
    v116 = 0;
    v118 = 0;
    v120 = 0;
  }

  v121 = v182;
  sub_15F84(v181, v182, &qword_DEC9F0);
  v122 = v121;
  v123 = v162;
  sub_15F84(v122, v162, &qword_DEC9F0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9F8);
  v125 = (v123 + v124[12]);
  *&v193 = v180;
  *(&v193 + 1) = v179;
  *&v194 = v173;
  *(&v194 + 1) = KeyPath;
  *&v195 = v172;
  *(&v195 + 1) = v177;
  *&v196[0] = v176;
  *(&v196[0] + 1) = v175;
  *&v196[1] = v174;
  BYTE8(v196[1]) = 0;
  v126 = v194;
  *v125 = v193;
  v125[1] = v126;
  v127 = v196[0];
  v125[2] = v195;
  v125[3] = v127;
  *(v125 + 57) = *(v196 + 9);
  v128 = (v123 + v124[16]);
  v129 = v187;
  v130 = v188;
  *v128 = v192;
  v128[1] = v130;
  v128[2] = v129;
  v131 = v186;
  v128[3] = v185;
  v132 = v123 + v124[20];
  v133 = v191;
  *v132 = v191;
  v134 = v133;
  v136 = v160;
  v135 = v161;
  *(v132 + 8) = v161;
  *(v132 + 16) = v136;
  v137 = v135;
  v138 = v170;
  *(v132 + 24) = v171;
  *(v132 + 32) = v138;
  *(v132 + 40) = v131;
  v186 = v131;
  *(v132 + 48) = 0;
  v139 = v123 + v124[24];
  v140 = v183;
  v141 = v184;
  *v139 = v183;
  v142 = v140;
  v143 = v189;
  *(v139 + 8) = v190;
  *(v139 + 16) = v141;
  v184 = v141;
  *(v139 + 24) = v143;
  *(v139 + 32) = v99;
  v163 = v100;
  *(v139 + 40) = v100;
  *(v139 + 48) = 0;
  v144 = v123 + v124[28];
  *&v197 = v167;
  *(&v197 + 1) = v169;
  *&v198 = v168;
  *(&v198 + 1) = v164;
  v145 = v159;
  *&v199 = v159;
  *(&v199 + 1) = v107;
  *&v200 = v109;
  *(&v200 + 1) = v111;
  *&v201 = v166;
  *(&v201 + 1) = v165;
  *&v202 = v114;
  *(&v202 + 1) = v116;
  *&v203 = v118;
  *(&v203 + 1) = v120;
  v204 = 0;
  *(v144 + 112) = 0;
  v146 = v200;
  v147 = v202;
  v148 = v203;
  *(v144 + 64) = v201;
  *(v144 + 80) = v147;
  v149 = v197;
  v150 = v198;
  *(v144 + 32) = v199;
  *(v144 + 48) = v146;
  *v144 = v149;
  *(v144 + 16) = v150;
  *(v144 + 96) = v148;
  sub_15F84(&v193, &v205, &qword_DEB810);
  sub_AFEEC(v192, v188, v187, v185);
  v191 = v134;
  v151 = v171;
  sub_AFF40(v134, v137, v136, v171);
  v183 = v142;
  v152 = v190;
  v153 = v141;
  v154 = v189;
  v158[1] = v99;
  sub_AFF40(v142, v190, v153, v189);
  sub_15F84(&v197, &v205, &qword_DECA00);
  sub_12E1C(v181, &qword_DEC9F0);
  LOBYTE(v123) = v184;
  sub_AFF90(v142, v152, v184, v154);
  sub_AFF90(v191, v137, v136, v151);
  v155 = v188;
  LOBYTE(v142) = v187;
  v156 = v185;
  sub_AFFE0(v192, v188, v187, v185);
  *&v205 = v167;
  *(&v205 + 1) = v169;
  v206 = v168;
  v207 = v164;
  v208 = v145;
  v209 = v107;
  v210 = v109;
  v211 = v111;
  v212 = v166;
  v213 = v165;
  v214 = v114;
  v215 = v116;
  v216 = v118;
  v217 = v120;
  v218 = 0;
  sub_12E1C(&v205, &qword_DECA00);
  sub_AFF90(v183, v190, v123, v189);
  sub_AFF90(v191, v137, v136, v151);
  sub_AFFE0(v192, v155, v142, v156);
  v219[0] = v180;
  v219[1] = v179;
  v219[2] = v173;
  v219[3] = KeyPath;
  v219[4] = v172;
  v219[5] = v177;
  v219[6] = v176;
  v219[7] = v175;
  v219[8] = v174;
  v220 = 0;
  sub_12E1C(v219, &qword_DEB810);
  return sub_12E1C(v182, &qword_DEC9F0);
}

uint64_t sub_ADDE0@<X0>(uint64_t a1@<X8>)
{
  sub_36A48();

  result = sub_AB6F20();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

id sub_ADE50(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabels] = 0;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_onSelectHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabelLinkViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView____lazy_storage___titleLabel] = 0;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = sub_ADF74();
  [v11 addSubview:v12];

  v13 = [objc_opt_self() clearColor];
  [v11 setTintColor:v13];

  return v11;
}