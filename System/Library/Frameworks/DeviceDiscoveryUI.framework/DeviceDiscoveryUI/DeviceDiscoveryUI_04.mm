uint64_t sub_2380C4ECC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A0, &unk_23815B5E0);
  v39 = a2;
  result = sub_23815551C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_23815568C();
      sub_238154C5C();
      result = sub_2381556BC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2380C5170(uint64_t a1, int a2)
{
  v3 = v2;
  v61 = sub_2381536AC();
  v6 = *(v61 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TransferIDStatus(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _DDNodeDecoration(0);
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DecorationIdentifier(0);
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  MEMORY[0x28223BE20](v16);
  v69 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v20 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC0B0, &unk_23815B5F0);
  v65 = a2;
  result = sub_23815551C();
  v22 = result;
  if (*(v19 + 16))
  {
    v56 = v3;
    v23 = 0;
    v24 = (v19 + 64);
    v25 = 1 << *(v19 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v19 + 64);
    v28 = (v25 + 63) >> 6;
    v58 = (v6 + 32);
    v57 = (v6 + 8);
    v29 = result + 64;
    v30 = v19;
    v59 = v19;
    v31 = v69;
    while (v27)
    {
      v33 = __clz(__rbit64(v27));
      v34 = (v27 - 1) & v27;
LABEL_17:
      v37 = v33 | (v23 << 6);
      v38 = *(v30 + 48);
      v66 = *(v62 + 72);
      v67 = v34;
      v39 = v38 + v66 * v37;
      if (v65)
      {
        sub_2380C9188(v39, v31, type metadata accessor for DecorationIdentifier);
        v40 = *(v64 + 72);
        sub_2380C9188(*(v30 + 56) + v40 * v37, v68, type metadata accessor for _DDNodeDecoration);
      }

      else
      {
        sub_2380C90BC(v39, v31, type metadata accessor for DecorationIdentifier);
        v40 = *(v64 + 72);
        sub_2380C90BC(*(v30 + 56) + v40 * v37, v68, type metadata accessor for _DDNodeDecoration);
      }

      v41 = *(v22 + 40);
      sub_23815568C();
      sub_2380C90BC(v31, v12, type metadata accessor for TransferIDStatus);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      if ((*(*(v42 - 8) + 48))(v12, 1, v42) == 1)
      {
        MEMORY[0x2383E9CD0](0);
      }

      else
      {
        v43 = v12;
        v45 = v60;
        v44 = v61;
        (*v58)(v60, v43, v61);
        MEMORY[0x2383E9CD0](1);
        sub_2380C8B98(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
        sub_238154C4C();
        v46 = v45;
        v12 = v43;
        v30 = v59;
        (*v57)(v46, v44);
      }

      v47 = *(v63 + 20);
      sub_2381527EC();
      sub_2380C8B98(&qword_27DEEB990, MEMORY[0x277CC95F0]);
      sub_238154C4C();
      result = sub_2381556BC();
      v48 = -1 << *(v22 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v29 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        v31 = v69;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v29 + 8 * v50);
          if (v54 != -1)
          {
            v32 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v32 = __clz(__rbit64((-1 << v49) & ~*(v29 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
      v31 = v69;
LABEL_9:
      *(v29 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      sub_2380C9188(v31, *(v22 + 48) + v66 * v32, type metadata accessor for DecorationIdentifier);
      result = sub_2380C9188(v68, *(v22 + 56) + v40 * v32, type metadata accessor for _DDNodeDecoration);
      ++*(v22 + 16);
      v27 = v67;
    }

    v35 = v23;
    while (1)
    {
      v23 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v23 >= v28)
      {
        break;
      }

      v36 = v24[v23];
      ++v35;
      if (v36)
      {
        v33 = __clz(__rbit64(v36));
        v34 = (v36 - 1) & v36;
        goto LABEL_17;
      }
    }

    if ((v65 & 1) == 0)
    {

      v3 = v56;
      goto LABEL_40;
    }

    v55 = 1 << *(v30 + 32);
    v3 = v56;
    if (v55 >= 64)
    {
      bzero(v24, ((v55 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v55;
    }

    *(v59 + 16) = 0;
  }

LABEL_40:
  *v3 = v22;
  return result;
}

uint64_t sub_2380C5840(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2381527EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A8, &qword_23815C170);
  v44 = a2;
  result = sub_23815551C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_2380C8B98(&qword_27DEEB990, MEMORY[0x277CC95F0]);
      result = sub_238154C3C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2380C5C00(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v61 = a3(0);
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v49 - v13;
  v14 = sub_2381527EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v19 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  result = sub_23815551C();
  v21 = result;
  if (*(v18 + 16))
  {
    v22 = 0;
    v23 = (v18 + 64);
    v24 = 1 << *(v18 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v15;
    v27 = v25 & *(v18 + 64);
    v28 = (v24 + 63) >> 6;
    v52 = (v26 + 16);
    v53 = v26;
    v50 = v8;
    v51 = v11 + 16;
    v54 = v18;
    v55 = v11;
    v57 = (v11 + 32);
    v58 = (v26 + 32);
    v29 = result + 64;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v22 << 6);
      v35 = *(v18 + 48);
      v59 = *(v26 + 72);
      v36 = v35 + v59 * v34;
      if (v56)
      {
        (*v58)(v62, v36, v14);
        v37 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 32))(v60, v37 + v38 * v34, v61);
      }

      else
      {
        (*v52)(v62, v36, v14);
        v39 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 16))(v60, v39 + v38 * v34, v61);
      }

      v40 = *(v21 + 40);
      sub_2380C8B98(&qword_27DEEB990, MEMORY[0x277CC95F0]);
      result = sub_238154C3C();
      v41 = -1 << *(v21 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v29 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v29 + 8 * v43);
          if (v47 != -1)
          {
            v30 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v42) & ~*(v29 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      (*v58)((*(v21 + 48) + v59 * v30), v62, v14);
      result = (*v57)(*(v21 + 56) + v38 * v30, v60, v61);
      ++*(v21 + 16);
      v26 = v53;
      v18 = v54;
    }

    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v22 >= v28)
      {
        break;
      }

      v33 = v23[v22];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v8 = v50;
      goto LABEL_36;
    }

    v48 = 1 << *(v18 + 32);
    v8 = v50;
    if (v48 >= 64)
    {
      bzero(v23, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v23 = -1 << v48;
    }

    *(v18 + 16) = 0;
  }

LABEL_36:
  *v8 = v21;
  return result;
}

uint64_t sub_2380C60A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v12 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC038, &qword_23815C100);
  v13 = sub_23815551C();
  v14 = v13;
  if (*(v11 + 16))
  {
    v15 = 0;
    v16 = *(v11 + 64);
    v47 = v2;
    v48 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v21 = v13 + 64;
    v49 = v7;
    v50 = v20;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v28 = v23 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v7 + 72);
      v53 = v24;
      v30 = v29 + v52 * v28;
      if (a2)
      {
        sub_2380C9188(v30, v10, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v51 = *(*(v11 + 56) + 8 * v28);
      }

      else
      {
        sub_2380C90BC(v30, v10, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v51 = *(*(v11 + 56) + 8 * v28);
      }

      v31 = *(v14 + 40);
      sub_23815568C();
      if (v10[1])
      {
        v32 = v6;
        v33 = v14;
        v34 = a2;
        v35 = v11;
        v36 = *v10;
        MEMORY[0x2383E9CD0](1);
        v11 = v35;
        a2 = v34;
        v14 = v33;
        v6 = v32;
        v7 = v49;
        sub_238154C5C();
      }

      else
      {
        MEMORY[0x2383E9CD0](0);
      }

      MEMORY[0x2383E9CD0](v10[2]);
      MEMORY[0x2383E9CD0](v10[3]);
      MEMORY[0x2383E9CD0](v10[4]);
      v37 = *(v6 + 32);
      sub_238153A2C();
      sub_2380C8B98(&qword_27DEEC028, MEMORY[0x277CDFAA0]);
      sub_238154C4C();
      v38 = *(v6 + 36);
      sub_2381537EC();
      sub_2380C8B98(&qword_27DEEC030, MEMORY[0x277CDF3E0]);
      sub_238154C4C();
      result = sub_2381556BC();
      v39 = -1 << *(v14 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v21 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v21 + 8 * v41);
          if (v45 != -1)
          {
            v22 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v40) & ~*(v21 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_2380C9188(v10, *(v14 + 48) + v52 * v22, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      v20 = v50;
      *(*(v14 + 56) + 8 * v22) = v51;
      ++*(v14 + 16);
      v19 = v53;
    }

    v25 = v15;
    result = v48;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v48[v15];
      ++v25;
      if (v27)
      {
        v23 = __clz(__rbit64(v27));
        v24 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_39;
    }

    v46 = 1 << *(v11 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v48, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v48 = -1 << v46;
    }

    *(v11 + 16) = 0;
  }

LABEL_39:
  *v3 = v14;
  return result;
}

uint64_t sub_2380C6538(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC010, &qword_23815B520);
  v37 = a2;
  result = sub_23815551C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 24 * v21);
      v23 = v22[1];
      v38 = *v22;
      v24 = v22[2];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_23815568C();
      MEMORY[0x2383E9CD0](v38);
      MEMORY[0x2383E9CD0](v23);
      MEMORY[0x2383E9CD0](v24);
      result = sub_2381556BC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 24 * v16);
      *v17 = v38;
      v17[1] = v23;
      v17[2] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2380C6804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC020, &qword_23815B580);
  v12 = sub_23815551C();
  v13 = v12;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = *(v10 + 64);
    v54 = v2;
    v55 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v20 = v12 + 64;
    v56 = v19;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v63 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48);
      v62 = *(v57 + 72);
      v30 = v29 + v62 * v28;
      v31 = 32 * v28;
      if (a2)
      {
        sub_2380C9188(v30, v9, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v32 = *(v10 + 56) + v31;
        v33 = *v32;
        v60 = *(v32 + 8);
        v61 = v33;
        v59 = *(v32 + 16);
        v58 = *(v32 + 24);
      }

      else
      {
        sub_2380C90BC(v30, v9, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v34 = *(v10 + 56) + v31;
        v35 = *v34;
        v36 = *(v34 + 16);
        v37 = *(v34 + 24);
        v60 = *(v34 + 8);
        v61 = v35;
        v59 = v36;
        v58 = v37;
        sub_2380B3F10(v35, v60, v36, v37);
      }

      v38 = *(v13 + 40);
      sub_23815568C();
      if (v9[1])
      {
        v39 = v6;
        v40 = v13;
        v41 = a2;
        v42 = v10;
        v43 = *v9;
        MEMORY[0x2383E9CD0](1);
        v10 = v42;
        a2 = v41;
        v13 = v40;
        v6 = v39;
        v19 = v56;
        sub_238154C5C();
      }

      else
      {
        MEMORY[0x2383E9CD0](0);
      }

      MEMORY[0x2383E9CD0](v9[2]);
      MEMORY[0x2383E9CD0](v9[3]);
      MEMORY[0x2383E9CD0](v9[4]);
      v44 = *(v6 + 32);
      sub_238153A2C();
      sub_2380C8B98(&qword_27DEEC028, MEMORY[0x277CDFAA0]);
      sub_238154C4C();
      v45 = *(v6 + 36);
      sub_2381537EC();
      sub_2380C8B98(&qword_27DEEC030, MEMORY[0x277CDF3E0]);
      sub_238154C4C();
      result = sub_2381556BC();
      v46 = -1 << *(v13 + 32);
      v47 = result & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v20 + 8 * (v47 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v46) >> 6;
        while (++v48 != v50 || (v49 & 1) == 0)
        {
          v51 = v48 == v50;
          if (v48 == v50)
          {
            v48 = 0;
          }

          v49 |= v51;
          v52 = *(v20 + 8 * v48);
          if (v52 != -1)
          {
            v21 = __clz(__rbit64(~v52)) + (v48 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v47) & ~*(v20 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_2380C9188(v9, *(v13 + 48) + v62 * v21, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      v22 = *(v13 + 56) + 32 * v21;
      v23 = v60;
      *v22 = v61;
      *(v22 + 8) = v23;
      *(v22 + 16) = v59;
      *(v22 + 24) = v58;
      ++*(v13 + 16);
      v18 = v63;
    }

    v25 = v14;
    result = v55;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v55[v14];
      ++v25;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v63 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v54;
      goto LABEL_39;
    }

    v53 = 1 << *(v10 + 32);
    v3 = v54;
    if (v53 >= 64)
    {
      bzero(v55, ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v55 = -1 << v53;
    }

    *(v10 + 16) = 0;
  }

LABEL_39:
  *v3 = v13;
  return result;
}

uint64_t sub_2380C6CE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC008, &qword_23815B508);
  v41 = a2;
  result = sub_23815551C();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 24 * v22);
      v25 = *v24;
      v26 = v24[1];
      v42 = v24[2];
      v27 = v23 + 16 * v22;
      v28 = *v27;
      v29 = *(v27 + 8);
      if ((v41 & 1) == 0)
      {
        sub_2380B3E18(v28, v29);
      }

      v30 = *(v8 + 40);
      sub_23815568C();
      MEMORY[0x2383E9CD0](v25);
      MEMORY[0x2383E9CD0](v26);
      MEMORY[0x2383E9CD0](v42);
      result = sub_2381556BC();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 24 * v16);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v42;
      v18 = *(v8 + 56) + 16 * v16;
      *v18 = v28;
      *(v18 + 8) = v29;
      ++*(v8 + 16);
      v5 = v40;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2380C6FCC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2381536AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0C8, &qword_23815B600);
  v46 = a2;
  result = sub_23815551C();
  v14 = result;
  if (*(v11 + 16))
  {
    v50 = v10;
    v42 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = (v7 + 16);
    v44 = v7;
    v47 = (v7 + 32);
    v21 = result + 64;
    v45 = v11;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v49 = *(v7 + 72);
      v29 = v28 + v49 * v27;
      if (v46)
      {
        (*v47)(v50, v29, v6);
        v30 = *(v11 + 56) + 24 * v27;
        v48 = *v30;
        v51 = *(v30 + 8);
      }

      else
      {
        (*v43)(v50, v29, v6);
        v31 = *(v11 + 56) + 24 * v27;
        v48 = *v31;
        v51 = *(v31 + 8);
      }

      v32 = *(v14 + 40);
      sub_2380C8B98(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
      result = sub_238154C3C();
      v33 = -1 << *(v14 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v47)(*(v14 + 48) + v49 * v22, v50, v6);
      v23 = *(v14 + 56) + 24 * v22;
      *v23 = v48;
      *(v23 + 8) = v51;
      ++*(v14 + 16);
      v7 = v44;
      v11 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v11 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2380C73E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2380E6CD8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2380C4ECC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2380E6CD8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        v11 = sub_2381555FC();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v24);
      }
    }

    else
    {
      v19 = v11;
      sub_2380E95BC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v24);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_2380C755C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2381527EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2380E6AE8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2380E9A14();
      goto LABEL_7;
    }

    sub_2380C5C00(v18, a3 & 1, MEMORY[0x277CD9168], &unk_27DEEC090, &qword_23815B5D8);
    v29 = *v4;
    v30 = sub_2380E6AE8(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2380C8768(v15, v12, a1, v21, MEMORY[0x277CD9168]);
    }

LABEL_15:
    result = sub_2381555FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_238152EBC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_2380C7798(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DecorationIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2380E6DE4(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2380E9728();
      goto LABEL_7;
    }

    sub_2380C5170(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_2380E6DE4(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2380C90BC(a2, v11, type metadata accessor for DecorationIdentifier);
      return sub_2380C85C4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2381555FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for _DDNodeDecoration(0) - 8) + 72) * v14;

  return sub_2380C9124(a1, v22);
}

uint64_t sub_2380C7958(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2381527EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2380E6AE8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_2380E9A3C();
    goto LABEL_7;
  }

  sub_2380C5840(result, a3 & 1);
  v22 = *v4;
  result = sub_2380E6AE8(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_2381555FC();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_2380C86B0(v15, v12, a1, v21);
}

uint64_t sub_2380C7AF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2381527EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2380E6AE8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2380E9CAC();
      goto LABEL_7;
    }

    sub_2380C5C00(v18, a3 & 1, MEMORY[0x277D54B88], &unk_27DEEC110, &unk_23815B6B0);
    v29 = *v4;
    v30 = sub_2380E6AE8(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2380C8768(v15, v12, a1, v21, MEMORY[0x277D54B88]);
    }

LABEL_15:
    result = sub_2381555FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_23815364C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_2380C7D30(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2380E6968(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2380EA02C();
      goto LABEL_7;
    }

    sub_2380C60A4(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_2380E6968(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2380C90BC(a2, v11, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      return sub_2380C8864(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2381555FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

unint64_t sub_2380C7ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_2380E6BBC(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_2380C6538(v18, a5 & 1);
      v22 = *v6;
      result = sub_2380E6BBC(a2, a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_2381555FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_2380EA26C();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    v27 = (v24[6] + 24 * result);
    *v27 = a2;
    v27[1] = a3;
    v27[2] = a4;
    *(v24[7] + 8 * result) = a1;
    v28 = v24[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v24[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v25 = v24[7];
  v26 = *(v25 + 8 * result);
  *(v25 + 8 * result) = a1;
}

void sub_2380C8050(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, char a6)
{
  v7 = v6;
  v35 = a4;
  v34 = a1;
  v12 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_2380E6968(a5);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_2380EA3E0();
      goto LABEL_9;
    }

    sub_2380C6804(v21, a6 & 1);
    v24 = *v7;
    v25 = sub_2380E6968(a5);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    sub_2381555FC();
    __break(1u);
    return;
  }

LABEL_9:
  v27 = v35;
  v28 = *v7;
  if (v22)
  {
    v29 = v28[7] + 32 * v18;
    v30 = *v29;
    v31 = *(v29 + 8);
    v32 = *(v29 + 16);
    v33 = *(v29 + 24);
    *v29 = v34;
    *(v29 + 8) = a2;
    *(v29 + 16) = a3;
    *(v29 + 24) = v27 & 1;

    sub_2380B3F78(v30, v31, v32, v33);
  }

  else
  {
    sub_2380C90BC(a5, v15, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    sub_2380C8918(v18, v15, v34, a2, a3, v27 & 1, v28);
  }
}

void sub_2380C822C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_2380E6BBC(a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_2380C6CE4(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_2380E6BBC(a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        sub_2381555FC();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_2380EA66C();
      v15 = v23;
    }
  }

  v26 = *v7;
  if ((v21 & 1) == 0)
  {
    v26[(v15 >> 6) + 8] |= 1 << v15;
    v30 = (v26[6] + 24 * v15);
    *v30 = a3;
    v30[1] = a4;
    v30[2] = a5;
    v31 = v26[7] + 16 * v15;
    *v31 = a1;
    *(v31 + 8) = a2 & 1;
    v32 = v26[2];
    v19 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v19)
    {
      v26[2] = v33;
      return;
    }

    goto LABEL_15;
  }

  v27 = v26[7] + 16 * v15;
  v28 = *v27;
  v29 = *(v27 + 8);
  *v27 = a1;
  *(v27 + 8) = a2 & 1;

  sub_2380B3E3C(v28, v29);
}

uint64_t sub_2380C83D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v32 = a1;
  v33 = a2;
  v10 = sub_2381536AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_2380E7070(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_2380EAA74();
      goto LABEL_9;
    }

    sub_2380C6FCC(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_2380E7070(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2381555FC();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v33;
  v27 = *v6;
  if (v21)
  {
    v28 = (v27[7] + 24 * v17);
    v30 = v28[1];
    v29 = v28[2];
    *v28 = v32;
    v28[1] = v26;
    v28[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    return sub_2380C89F0(v17, v14, v32, v26, a3, v27);
  }
}

uint64_t sub_2380C85C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DecorationIdentifier(0);
  sub_2380C9188(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DecorationIdentifier);
  v10 = a4[7];
  v11 = type metadata accessor for _DDNodeDecoration(0);
  result = sub_2380C9188(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for _DDNodeDecoration);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_2380C86B0(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2381527EC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2380C8768(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_2381527EC();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = a5(0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_2380C8864(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  result = sub_2380C9188(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2380C8918(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  result = sub_2380C9188(a2, v14 + *(*(v15 - 8) + 72) * a1, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
  v17 = a7[7] + 32 * a1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6 & 1;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_2380C89F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_2381536AC();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_2380C8AC4(uint64_t a1)
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
  v10[1] = sub_238088780;

  return sub_2380C1204(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2380C8B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2380C8C34(uint64_t a1)
{
  v4 = *(type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238087150;

  return sub_2380C3FC8(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_53Tm()
{
  v1 = (type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + v3 + 8);

  v8 = v1[10];
  v9 = sub_238153A2C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[11];
  v11 = sub_2381537EC();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2380C8E68(uint64_t a1)
{
  v4 = *(type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238087150;

  return sub_2380C0220(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2380C8F60(uint64_t a1)
{
  v2 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380C8FBC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_2381555CC();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] != a2[3])
  {
    return 0;
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  v10 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v11 = *(v10 + 32);
  if ((sub_238153A1C() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v10 + 36);

  return sub_2381537DC();
}

uint64_t sub_2380C90BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380C9124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeDecoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380C9188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_33Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2380C9244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_2380C1B70(a1, v4, v5, v6);
}

uint64_t sub_2380C92F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0E0, &qword_23815B628);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380C9368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0E0, &qword_23815B628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380C9428()
{
  v1 = sub_2381527EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2380C94F4(uint64_t a1)
{
  v4 = *(sub_2381527EC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238088780;

  return sub_2380BEFBC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2380C95FC()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC120);
  __swift_project_value_buffer(v0, qword_27DEEC120);
  return sub_23815292C();
}

double sub_2380C967C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_2380C9730()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

uint64_t sub_2380C97A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();
}

void sub_2380C981C(unint64_t a1)
{
  v144 = a1;
  v151 = *MEMORY[0x277D85DE8];
  v135 = sub_2381530DC();
  v134 = *(v135 - 8);
  v2 = *(v134 + 64);
  v3 = MEMORY[0x28223BE20](v135);
  v137 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v136 = &v133 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC190, &qword_23815B890);
  v146 = *(v6 - 8);
  v147 = v6;
  v7 = *(v146 + 64);
  MEMORY[0x28223BE20](v6);
  v143 = &v133 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1A0, &qword_23815B930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v133 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v145 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v133 - v16;
  v18 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__animatingButtonTransition;
  LOBYTE(v149[0]) = 0;
  sub_238152A5C();
  v139 = v14;
  v142 = *(v14 + 32);
  v138 = v18;
  v142(v1 + v18, v17, v13);
  v141 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterConfiguration;
  *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterConfiguration) = 0;
  v19 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_nameFont;
  sub_2381541EC();
  v20 = *MEMORY[0x277CE0990];
  v21 = sub_2381541CC();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v12, v20, v21);
  (*(v22 + 56))(v12, 0, 1, v21);
  v23 = sub_23815422C();
  sub_238071284(v12, &qword_27DEEC1A0, &qword_23815B930);
  v140 = v19;
  *(v1 + v19) = v23;
  v24 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor;
  *(v1 + v24) = sub_2381545FC();
  *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_preTransferShareContactResponseTask) = 0;
  v25 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__canChangeHandle;
  LOBYTE(v149[0]) = 1;
  v26 = v1;
  sub_238152A5C();
  v142(v1 + v25, v17, v145);
  v27 = v144;
  v28 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__selectedItem;
  *&v149[0] = 0;
  v29 = v143;
  sub_238152A5C();
  (*(v146 + 32))(v26 + v28, v29, v147);
  v30 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__state;
  swift_beginAccess();
  v31 = *(v27 + 16);
  v149[0] = *v27;
  v149[1] = v31;
  v149[2] = *(v27 + 32);
  v150 = *(v27 + 48);
  sub_2380CB49C(v27, v148);
  sub_238152A5C();
  swift_endAccess();
  v32 = &unk_27DEF3000;
  if (*(v27 + 48) == 1)
  {
    v143 = v24;
    v33 = v27;
    v34 = *v27;
    v27 = *(v27 + 8);
    v35 = sub_2381528BC();
    v37 = v36;
    sub_238085D80(v34, v27);
    sub_238085D80(v34, v27);
    v38 = sub_2381528CC();
    sub_238085CA0(v35, v37);
    if (v38 >> 62)
    {
      if (sub_2381554FC())
      {
        goto LABEL_4;
      }
    }

    else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v38 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x2383E9A70](0, v38);
      }

      else
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_48;
        }

        v39 = *(v38 + 32);
      }

      v40 = v39;
      sub_238085CA0(v34, v27);

      v27 = v33;
      v24 = v143;
      v32 = &unk_27DEF3000;
      goto LABEL_9;
    }

    sub_238085E58();
    swift_allocError();
    *v115 = 0xD000000000000022;
    *(v115 + 8) = 0x8000000238161450;
    *(v115 + 16) = 3;
    swift_willThrow();
    sub_2380CB4F8(v33);
    sub_238085CA0(v34, v27);
    v65 = 0;
    v66 = 0;
    v24 = v143;
    goto LABEL_39;
  }

  v41 = *(**sub_2381528AC() + 136);

  v40 = v41(v42);

  if (!v40)
  {
    sub_238085E58();
    swift_allocError();
    *v67 = xmmword_23815B6C0;
    *(v67 + 16) = 0;
    swift_willThrow();
    sub_2380CB4F8(v27);
    v65 = 0;
    v66 = 0;
    goto LABEL_39;
  }

LABEL_9:
  *(v26 + v32[67]) = v40;
  v43 = v40;
  v44 = sub_23815529C();
  v45 = v32;
  v47 = v46;

  v48 = (v26 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName);
  *v48 = v44;
  v48[1] = v47;
  v49 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v49 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
    sub_238085E58();
    swift_allocError();
    *v64 = 0xD000000000000022;
    *(v64 + 8) = 0x8000000238162510;
    v65 = 1;
    *(v64 + 16) = 1;
    swift_willThrow();
    sub_2380CB4F8(v27);
    v66 = 0;
LABEL_39:
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC188, &unk_23815B880);
    (*(*(v116 - 8) + 8))(v26 + v30, v116);
    v117 = *(v139 + 8);
    v118 = v145;
    v117(v26 + v138, v145);
    if (v65)
    {

      v119 = *(v26 + v140);

      v120 = *(v26 + v24);

      v121 = *(v26 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName + 8);
    }

    else
    {

      v122 = *(v26 + v140);

      v123 = *(v26 + v24);
    }

    v125 = v146;
    v124 = v147;
    if (v66)
    {
      v126 = *(v26 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);
    }

    v127 = *(v26 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_preTransferShareContactResponseTask);

    v117(v26 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__canChangeHandle, v118);
    (*(v125 + 8))(v26 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__selectedItem, v124);
    type metadata accessor for CNBoopSessionViewModel();
    v128 = *(*v26 + 48);
    v129 = *(*v26 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_45;
  }

  v50 = v45[67];
  v51 = *(v26 + v50);
  v52 = sub_2381552BC();

  *(v26 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles) = v52;
  if (!*(v52 + 16))
  {
    sub_238085E58();
    swift_allocError();
    *v68 = xmmword_23815B6D0;
    *(v68 + 16) = 2;
    swift_willThrow();
    sub_2380CB4F8(v27);
    v65 = 1;
    v66 = 1;
    goto LABEL_39;
  }

  v53 = *(v26 + v50);
  v54 = sub_2381552CC();

  swift_beginAccess();
  (*(v146 + 8))(v26 + v28, v147);
  v148[0] = v54;
  sub_238152A5C();
  swift_endAccess();
  v55 = *(v26 + v50);
  v56 = sub_2381552AC();
  v58 = v57;

  v59 = (v26 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData);
  *v59 = v56;
  v59[1] = v58;
  if (v58 >> 60 == 15)
  {
    v28 = v134;
    if (qword_27DEEA090 == -1)
    {
LABEL_15:
      v60 = sub_23815293C();
      __swift_project_value_buffer(v60, qword_27DEEC120);
      v61 = sub_23815291C();
      v62 = sub_2381550BC();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_238060000, v61, v62, "CNBoopSessionView: no poster", v63, 2u);
        MEMORY[0x2383EA8A0](v63, -1, -1);
      }

LABEL_35:
      v108 = v135;
LABEL_36:
      v109 = sub_23815332C();
      v110 = *(v109 + 48);
      v111 = *(v109 + 52);
      swift_allocObject();
      *(v26 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_lockStateMonitor) = sub_23815331C();
      v112 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_lockStateMonitor;
      v113 = v136;
      sub_2381532FC();
      swift_beginAccess();
      (*(v28 + 16))(v137, v113, v108);
      sub_238152A5C();
      (*(v28 + 8))(v113, v108);
      swift_endAccess();
      v114 = *(v26 + v112);
      sub_2380CB54C();

      sub_23815330C();

      sub_2380CB4F8(v27);
LABEL_45:
      v130 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_48:
    swift_once();
    goto LABEL_15;
  }

  v69 = objc_opt_self();
  sub_238085D80(v56, v58);
  v70 = sub_23815274C();
  sub_238087244(v56, v58);
  *&v149[0] = 0;
  v71 = [v69 unarchiveConfigurationFromData:v70 error:v149];

  v72 = *&v149[0];
  if (!v71)
  {
    v95 = *&v149[0];
    v96 = sub_23815266C();

    swift_willThrow();
    if (qword_27DEEA090 != -1)
    {
      swift_once();
    }

    v97 = sub_23815293C();
    __swift_project_value_buffer(v97, qword_27DEEC120);
    v98 = v96;
    v99 = sub_23815291C();
    v100 = sub_2381550DC();

    v101 = os_log_type_enabled(v99, v100);
    v28 = v134;
    if (v101)
    {
      v102 = swift_slowAlloc();
      v103 = v27;
      v104 = swift_slowAlloc();
      *v102 = 138412290;
      v105 = v96;
      v106 = _swift_stdlib_bridgeErrorToNSError();
      *(v102 + 4) = v106;
      *v104 = v106;
      _os_log_impl(&dword_238060000, v99, v100, "Failed to create poster configuration: %@", v102, 0xCu);
      sub_238071284(v104, &unk_27DEECA10, &qword_2381588F0);
      v107 = v104;
      v27 = v103;
      MEMORY[0x2383EA8A0](v107, -1, -1);
      MEMORY[0x2383EA8A0](v102, -1, -1);
    }

    else
    {
    }

    goto LABEL_35;
  }

  v73 = *(v26 + v141);
  v147 = v26;
  *(v26 + v141) = v71;
  v74 = v71;
  v75 = v72;

  v76 = objc_opt_self();
  *&v149[0] = 0;
  v77 = [v76 titleStyleAttributesForConfiguration:v74 error:v149];

  if (v77)
  {
    v78 = *&v149[0];
    v79 = [v77 titleFont];
    v80 = [v79 fontDescriptor];
    v81 = [v80 fontDescriptorWithSymbolicTraits_];

    if (v81)
    {
      v82 = [objc_opt_self() fontWithDescriptor:v81 size:60.0];

      v83 = v82;
      v84 = sub_2381542DC();
      v85 = *(v147 + v140);
      *(v147 + v140) = v84;

      if (qword_27DEEA090 != -1)
      {
        swift_once();
      }

      v86 = sub_23815293C();
      __swift_project_value_buffer(v86, qword_27DEEC120);
      v87 = v77;
      v88 = sub_23815291C();
      v89 = sub_2381550BC();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = v27;
        v92 = swift_slowAlloc();
        *v90 = 138412290;
        *(v90 + 4) = v87;
        *v92 = v77;
        v93 = v87;
        _os_log_impl(&dword_238060000, v88, v89, "CNBoopSessionView: poster configuration attributes: %@", v90, 0xCu);
        sub_238071284(v92, &unk_27DEECA10, &qword_2381588F0);
        v94 = v92;
        v27 = v91;
        MEMORY[0x2383EA8A0](v94, -1, -1);
        MEMORY[0x2383EA8A0](v90, -1, -1);
      }

      else
      {
      }

      v26 = v147;
      v108 = v135;
      v28 = v134;
      goto LABEL_36;
    }
  }

  else
  {
    v131 = *&v149[0];
    v132 = sub_23815266C();

    swift_willThrow();
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2380CA864(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  if (!a1)
  {
    if (qword_27DEEA090 != -1)
    {
      swift_once();
    }

    v5 = sub_23815293C();
    __swift_project_value_buffer(v5, qword_27DEEC120);
    v6 = a2;
    v7 = sub_23815291C();
    v8 = sub_2381550DC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      if (a2)
      {
        v11 = a2;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v9 + 4) = v12;
      *v10 = v13;
      _os_log_impl(&dword_238060000, v7, v8, "Failed to create poster snapshot: %@", v9, 0xCu);
      sub_238071284(v10, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v10, -1, -1);
      MEMORY[0x2383EA8A0](v9, -1, -1);
    }

    a1 = 0;
  }

  return a3(a1);
}

uint64_t sub_2380CA9EC()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC188, &unk_23815B880);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__animatingButtonTransition;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);

  sub_238087244(*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData), *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData + 8));
  v6 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_nameFont);

  v7 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);

  v8 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName + 8);

  v9 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);

  v10 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_preTransferShareContactResponseTask);

  v5(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__canChangeHandle, v4);
  v11 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__selectedItem;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC190, &qword_23815B890);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__lockState;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC198, &qword_23815B898);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_lockStateMonitor);

  return v0;
}

uint64_t sub_2380CAC04()
{
  sub_2380CA9EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CNBoopSessionViewModel()
{
  result = qword_27DEEC168;
  if (!qword_27DEEC168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2380CACB0()
{
  sub_2380CAE70(319, &qword_27DEEC178);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2380CAE70(319, &qword_27DEEB898);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2380CAE70(319, &qword_27DEECF20);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_2380CAEBC();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2380CAE70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_238152AAC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2380CAEBC()
{
  if (!qword_27DEEC180)
  {
    sub_2381530DC();
    v0 = sub_238152AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEC180);
    }
  }
}

uint64_t sub_2380CAF14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CNBoopSessionViewModel();
  result = sub_2381529DC();
  *a1 = result;
  return result;
}

uint64_t sub_2380CAF54(uint64_t a1)
{
  v2 = sub_2381530DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v2);

  sub_238152A9C();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_2380CB0BC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();
}

uint64_t sub_2380CB13C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2381530DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  sub_238152A9C();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2380CB2EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_2380CB37C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

unint64_t sub_2380CB54C()
{
  result = qword_27DEEC1A8;
  if (!qword_27DEEC1A8)
  {
    type metadata accessor for CNBoopSessionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC1A8);
  }

  return result;
}

uint64_t sub_2380CB5A4()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEF3258);
  __swift_project_value_buffer(v0, qword_27DEF3258);
  return sub_23815292C();
}

uint64_t sub_2380CB624()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC1B0);
  v1 = __swift_project_value_buffer(v0, qword_27DEEC1B0);
  if (qword_27DEEA098 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF3258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t getDataFromXPC(_:)(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x2383EAA50]();
  if (v2 != sub_23815295C())
  {
    if (qword_27DEEA0A0 != -1)
    {
      swift_once();
    }

    v3 = sub_23815293C();
    __swift_project_value_buffer(v3, qword_27DEEC1B0);
    v4 = sub_23815291C();
    v5 = sub_2381550DC();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_14;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "XPC object is not a dictionary, unable to pull out data";
LABEL_13:
    _os_log_impl(&dword_238060000, v4, v5, v7, v6, 2u);
    MEMORY[0x2383EA8A0](v6, -1, -1);
LABEL_14:

    result = 0;
    goto LABEL_15;
  }

  v12[0] = 0;
  data = xpc_dictionary_get_data(a1, "swift-json", v12);
  if (!data || !v12[0])
  {
    if (qword_27DEEA0A0 != -1)
    {
      swift_once();
    }

    v10 = sub_23815293C();
    __swift_project_value_buffer(v10, qword_27DEEC1B0);
    v4 = sub_23815291C();
    v5 = sub_2381550DC();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_14;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Could not get data from dictionary";
    goto LABEL_13;
  }

  result = sub_2380CBA18(data, v12[0]);
LABEL_15:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t createXPCFromData(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECD40, &qword_23815B938);
  sub_23815273C();
  return v1;
}

void sub_2380CB960(const void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a3);
LABEL_10:
    xpc_dictionary_set_data(v8, "swift-json", a1, v11);
    *a4 = v9;
    return;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v11 = HIDWORD(a2) - a2;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_2380CBA18(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_23812C110(a1, &a1[a2]);
  }

  v3 = sub_2381525EC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_23815259C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23815270C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2380CBB18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2380CBB60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2380CBBEC()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC1C8);
  __swift_project_value_buffer(v0, qword_27DEEC1C8);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t sub_2380CBC48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1E0, &qword_23815BA28);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1E8, &qword_23815BA30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1F0, &qword_23815BA38);
  v54 = *(v53 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v13 = &v52 - v12;
  *v6 = sub_238153DEC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v14 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1F8, &qword_23815BA40) + 44)];
  *v14 = sub_2381548DC();
  v14[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC200, &unk_23815BA48);
  sub_2380CC2B4(v2, v14 + *(v16 + 44));
  v56 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815472C();
  v17 = v61;
  v18 = v62;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *v10 = v17;
  v10[16] = v18;
  *(v10 + 3) = 3;
  *(v10 + 2) = xmmword_23815B940;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC208, &qword_23815BA58);
  sub_2380712E4(v6, &v10[v20[12]], &qword_27DEEC1E0, &qword_23815BA28);
  v21 = &v10[v20[13]];
  *v21 = sub_2380CFF34;
  v21[1] = v19;
  v22 = &v10[v20[14]];
  *&v56 = 0;
  sub_2381546FC();
  v23 = *(&v61 + 1);
  *v22 = v61;
  *(v22 + 1) = v23;
  sub_238071284(v6, &qword_27DEEC1E0, &qword_23815BA28);
  v24 = swift_allocObject();
  v25 = *(v2 + 112);
  *(v24 + 112) = *(v2 + 96);
  *(v24 + 128) = v25;
  *(v24 + 144) = *(v2 + 128);
  v26 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v26;
  v27 = *(v2 + 80);
  *(v24 + 80) = *(v2 + 64);
  *(v24 + 96) = v27;
  v28 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v28;
  v29 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC210, &qword_23815BA60) + 36)];
  *v29 = sub_2380D1F64;
  v29[1] = v24;
  v29[2] = 0;
  v29[3] = 0;
  v30 = swift_allocObject();
  v31 = *(v2 + 48);
  *(v30 + 48) = *(v2 + 32);
  *(v30 + 64) = v31;
  *(v30 + 144) = *(v2 + 128);
  v32 = *(v2 + 112);
  *(v30 + 112) = *(v2 + 96);
  *(v30 + 128) = v32;
  v33 = *(v2 + 80);
  *(v30 + 80) = *(v2 + 64);
  *(v30 + 96) = v33;
  v34 = *(v2 + 16);
  *(v30 + 16) = *v2;
  *(v30 + 32) = v34;
  v35 = &v10[*(v7 + 36)];
  *v35 = 0;
  *(v35 + 1) = 0;
  *(v35 + 2) = sub_2380CFF64;
  *(v35 + 3) = v30;
  v36 = *(v2 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380D045C(v2, &v61);
  sub_2380D045C(v2, &v61);
  sub_238152A8C();

  LOBYTE(v56) = v61;
  v37 = swift_allocObject();
  v38 = *(v2 + 112);
  *(v37 + 112) = *(v2 + 96);
  *(v37 + 128) = v38;
  *(v37 + 144) = *(v2 + 128);
  v39 = *(v2 + 48);
  *(v37 + 48) = *(v2 + 32);
  *(v37 + 64) = v39;
  v40 = *(v2 + 80);
  *(v37 + 80) = *(v2 + 64);
  *(v37 + 96) = v40;
  v41 = *(v2 + 16);
  *(v37 + 16) = *v2;
  *(v37 + 32) = v41;
  sub_2380D045C(v2, &v61);
  v42 = sub_2380D04A0();
  v43 = sub_2380D05E4();
  sub_23815455C();

  sub_238071284(v10, &qword_27DEEC1E8, &qword_23815BA30);
  v44 = *(v2 + 112);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v58 = v63;
  v59 = v64;
  v60 = v65;
  v57 = v62;
  v56 = v61;
  v45 = swift_allocObject();
  v46 = *(v2 + 112);
  *(v45 + 112) = *(v2 + 96);
  *(v45 + 128) = v46;
  *(v45 + 144) = *(v2 + 128);
  v47 = *(v2 + 48);
  *(v45 + 48) = *(v2 + 32);
  *(v45 + 64) = v47;
  v48 = *(v2 + 80);
  *(v45 + 80) = *(v2 + 64);
  *(v45 + 96) = v48;
  v49 = *(v2 + 16);
  *(v45 + 16) = *v2;
  *(v45 + 32) = v49;
  sub_2380D045C(v2, &v61);
  *&v61 = v7;
  *(&v61 + 1) = &type metadata for DDPairingState;
  *&v62 = v42;
  *(&v62 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  sub_2380D0648();
  v50 = v53;
  sub_23815455C();

  v63 = v58;
  v64 = v59;
  v65 = v60;
  v61 = v56;
  v62 = v57;
  sub_23808E828(&v61);
  return (*(v54 + 8))(v13, v50);
}

uint64_t sub_2380CC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC250, &qword_23815BB08);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC258, &qword_23815BB10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC260, &qword_23815BB18);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v33 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - v23;
  *v13 = sub_238153D1C();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC268, &qword_23815BB20);
  sub_2380CC5F8(a1, &v13[*(v25 + 44)]);
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v13, v22, &qword_27DEEC258, &qword_23815BB10);
  v26 = &v22[*(v15 + 44)];
  v27 = v40;
  *(v26 + 4) = v39;
  *(v26 + 5) = v27;
  *(v26 + 6) = v41;
  v28 = v36;
  *v26 = v35;
  *(v26 + 1) = v28;
  v29 = v38;
  *(v26 + 2) = v37;
  *(v26 + 3) = v29;
  sub_23807121C(v22, v24, &qword_27DEEC260, &qword_23815BB18);
  sub_2380CC9F8(v9);
  sub_2380712E4(v24, v19, &qword_27DEEC260, &qword_23815BB18);
  sub_2380712E4(v9, v7, &qword_27DEEC250, &qword_23815BB08);
  v30 = v34;
  sub_2380712E4(v19, v34, &qword_27DEEC260, &qword_23815BB18);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC270, &qword_23815BB28);
  sub_2380712E4(v7, v30 + *(v31 + 48), &qword_27DEEC250, &qword_23815BB08);
  sub_238071284(v9, &qword_27DEEC250, &qword_23815BB08);
  sub_238071284(v24, &qword_27DEEC260, &qword_23815BB18);
  sub_238071284(v7, &qword_27DEEC250, &qword_23815BB08);
  return sub_238071284(v19, &qword_27DEEC260, &qword_23815BB18);
}

uint64_t sub_2380CC5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC2F0, &qword_23815BC18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC2F8, &qword_23815BC20);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  result = sub_238153D1C();
  *v18 = result;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v20 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC300, &unk_23815BC28) + 44);
    v43 = v4;
    v44 = &v18[v21];
    v45 = v16;
    v47 = 0;
    v48 = v20;
    KeyPath = swift_getKeyPath();
    v22 = swift_allocObject();
    v41 = v11;
    v23 = *(a1 + 112);
    *(v22 + 112) = *(a1 + 96);
    *(v22 + 128) = v23;
    *(v22 + 144) = *(a1 + 128);
    v24 = *(a1 + 48);
    *(v22 + 48) = *(a1 + 32);
    *(v22 + 64) = v24;
    v25 = *(a1 + 80);
    *(v22 + 80) = *(a1 + 64);
    *(v22 + 96) = v25;
    v26 = *(a1 + 16);
    *(v22 + 16) = *a1;
    *(v22 + 32) = v26;
    sub_2380D045C(a1, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF00, &qword_238158FE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC308, &qword_23815BC58);
    v27 = v9;
    sub_238087E84();
    v28 = v5;
    v29 = a2;
    sub_2380711D4(&qword_27DEEC310, &qword_27DEEC308, &qword_23815BC58);
    v30 = v41;
    sub_23815480C();
    v31 = *(v28 + 16);
    v32 = v43;
    v31(v9, v30, v43);
    v33 = v44;
    *v44 = 0;
    v33[8] = 1;
    v34 = v33;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC318, &qword_23815BC60);
    v31(&v34[*(v35 + 48)], v27, v32);
    v36 = *(v28 + 8);
    v36(v30, v32);
    v36(v27, v32);
    v37 = v45;
    sub_2380712E4(v18, v45, &qword_27DEEC2F8, &qword_23815BC20);
    *v29 = 0x4024000000000000;
    *(v29 + 8) = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC320, &qword_23815BC68);
    sub_2380712E4(v37, v29 + *(v38 + 48), &qword_27DEEC2F8, &qword_23815BC20);
    v39 = v29 + *(v38 + 64);
    *v39 = 0x4024000000000000;
    *(v39 + 8) = 0;
    sub_238071284(v18, &qword_27DEEC2F8, &qword_23815BC20);
    return sub_238071284(v37, &qword_27DEEC2F8, &qword_23815BC20);
  }

  return result;
}

uint64_t sub_2380CC9F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v85 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC278, &qword_23815BB30);
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v66 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC280, &qword_23815BB38);
  v6 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v8 = &v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC288, &qword_23815BB40);
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v9);
  v68 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC290, &qword_23815BB48);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v69 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC298, &qword_23815BB50);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v70 = &v66 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC2A0, &qword_23815BB58);
  v20 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC2A8, &qword_23815BB60);
  v23 = *(v22 - 8);
  v81 = v22;
  v82 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v78 = &v66 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC2B0, &qword_23815BB68);
  v83 = *(v26 - 8);
  v84 = v26;
  v27 = *(v83 + 64);
  MEMORY[0x28223BE20](v26);
  v80 = &v66 - v28;
  sub_238153D8C();
  v96 = *(v1 + 8);
  v97 = *(v1 + 24);
  v89 = *(v1 + 8);
  *&v90 = *(v1 + 24);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC240, &qword_23815BAF8);
  sub_23815472C();
  v29 = v67;
  sub_2381549BC();
  sub_2381548DC();
  sub_238153A8C();
  (*(v73 + 32))(v8, v29, v74);
  v30 = &v8[*(v71 + 36)];
  v31 = v94;
  *(v30 + 4) = v93;
  *(v30 + 5) = v31;
  *(v30 + 6) = v95;
  v32 = v90;
  *v30 = v89;
  *(v30 + 1) = v32;
  v33 = v92;
  *(v30 + 2) = v91;
  *(v30 + 3) = v33;
  sub_2380D069C();
  v34 = v68;
  sub_23815440C();
  sub_238071284(v8, &qword_27DEEC280, &qword_23815BB38);
  v35 = sub_2381545EC();
  KeyPath = swift_getKeyPath();
  v37 = v69;
  (*(v76 + 32))(v69, v34, v77);
  v38 = (v37 + *(v13 + 44));
  *v38 = KeyPath;
  v38[1] = v35;
  v39 = sub_2381545EC();
  v40 = swift_getKeyPath();
  v41 = v70;
  sub_23807121C(v37, v70, &qword_27DEEC290, &qword_23815BB48);
  v42 = (v41 + *(v17 + 44));
  v43 = v41;
  *v42 = v40;
  v42[1] = v39;
  v86 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815470C();
  LOBYTE(v41) = v88;
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  v46 = v75;
  sub_23807121C(v43, v75, &qword_27DEEC298, &qword_23815BB50);
  v47 = v79;
  v48 = (v46 + *(v79 + 36));
  *v48 = v44;
  v48[1] = sub_2380D081C;
  v48[2] = v45;
  v86 = *(v2 + 64);
  LOBYTE(v87) = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC248, &qword_23815BB00);
  sub_23815379C();
  v49 = sub_2380D0834();
  v50 = v78;
  sub_23815454C();

  sub_238071284(v46, &qword_27DEEC2A0, &qword_23815BB58);
  v86 = v96;
  v87 = v97;
  sub_23815470C();
  v51 = swift_allocObject();
  v52 = *(v2 + 112);
  *(v51 + 112) = *(v2 + 96);
  *(v51 + 128) = v52;
  *(v51 + 144) = *(v2 + 128);
  v53 = *(v2 + 48);
  *(v51 + 48) = *(v2 + 32);
  *(v51 + 64) = v53;
  v54 = *(v2 + 80);
  *(v51 + 80) = *(v2 + 64);
  *(v51 + 96) = v54;
  v55 = *(v2 + 16);
  *(v51 + 16) = *v2;
  *(v51 + 32) = v55;
  sub_2380D045C(v2, &v86);
  *&v86 = v47;
  *(&v86 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  v57 = v80;
  v56 = v81;
  sub_23815455C();

  (*(v82 + 8))(v50, v56);
  v58 = swift_allocObject();
  v59 = *(v2 + 112);
  *(v58 + 112) = *(v2 + 96);
  *(v58 + 128) = v59;
  *(v58 + 144) = *(v2 + 128);
  v60 = *(v2 + 48);
  *(v58 + 48) = *(v2 + 32);
  *(v58 + 64) = v60;
  v61 = *(v2 + 80);
  *(v58 + 80) = *(v2 + 64);
  *(v58 + 96) = v61;
  v62 = *(v2 + 16);
  *(v58 + 16) = *v2;
  *(v58 + 32) = v62;
  v63 = v85;
  (*(v83 + 32))(v85, v57, v84);
  v64 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC250, &qword_23815BB08) + 36));
  *v64 = sub_2380D0AA0;
  v64[1] = v58;
  v64[2] = 0;
  v64[3] = 0;
  return sub_2380D045C(v2, &v86);
}

void sub_2380CD280(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  if (qword_27DEEA0A8 != -1)
  {
    swift_once();
  }

  v5 = sub_23815293C();
  __swift_project_value_buffer(v5, qword_27DEEC1C8);
  v6 = sub_23815291C();
  v7 = sub_2381550FC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v16 = v9;
    *v8 = 136315138;
    v10 = sub_238154D2C();
    v12 = sub_238085EAC(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_238060000, v6, v7, "New pairing state: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2383EA8A0](v9, -1, -1);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v13 = *(a3 + 96);
      sub_238103664();
    }

    else
    {
      v16 = *(a3 + 8);
      v17 = *(a3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC240, &qword_23815BAF8);
      sub_23815471C();
      v16 = *(a3 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
      sub_23815471C();
      v16 = *(a3 + 32);
      sub_23815471C();
      v14 = *(a3 + 96);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v16) = 0;
      v15 = v14;
      sub_238152A9C();
    }
  }
}

void sub_2380CD4C4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = a2[3];
  v23 = a2[2];
  v24 = v4;
  v25 = *(a2 + 64);
  v5 = a2[1];
  v21 = *a2;
  v22 = v5;
  if (qword_27DEEA0A8 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEEC1C8);
  sub_23808E888(&v21, &v16);
  v7 = sub_23815291C();
  v8 = sub_2381550FC();
  sub_23808E828(&v21);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_23808E888(&v21, v14);
    v11 = sub_238154D2C();
    v13 = sub_238085EAC(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_238060000, v7, v8, "New pairing state: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2383EA8A0](v10, -1, -1);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  if (v25 == 2)
  {
    if (v21)
    {
      v16 = *(a3 + 8);
      *&v17 = *(a3 + 24);
      v14[0] = 0;
      v14[1] = 0xE000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC240, &qword_23815BAF8);
      sub_23815471C();
      v16 = *(a3 + 48);
      LOBYTE(v14[0]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
      sub_23815471C();
      v16 = *(a3 + 32);
      LOBYTE(v14[0]) = 0;
      sub_23815471C();
    }
  }
}

uint64_t sub_2380CD70C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v14 = *(a2 + 8);
  v15 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC240, &qword_23815BAF8);
  sub_23815470C();
  v5 = sub_238154DFC();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    do
    {
      v10 = sub_2380D32AC(0x3736353433323130, 0xEA00000000003938);
      v11 = sub_2380BC5E0(v7, v8, v10);

      if (v11)
      {
        MEMORY[0x2383E9400](v7, v8);
      }

      v7 = sub_238154DFC();
      v8 = v9;
    }

    while (v9);
  }

  v12 = v4 < sub_238154D8C();
  result = swift_allocObject();
  *(result + 16) = v12;
  *(result + 24) = 0;
  *(result + 32) = 0xE000000000000000;
  *(result + 40) = v4;
  *a3 = sub_2380D0D14;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_2380CD898@<X0>(char a1@<W1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC328, &qword_23815BC70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC330, &qword_23815BC78);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  sub_23815392C();
  v49 = v14;
  v50 = a5;
  if ((a1 & 1) == 0)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
LABEL_8:
    *&v51 = v20;
    *(&v51 + 1) = v21;
    sub_2380704A0();
    v22 = sub_23815438C();
    v24 = v23;
    v26 = v25;
    v48 = v27;
    sub_2381548DC();
    sub_2381538EC();
    v28 = v26 & 1;
    v55 = v26 & 1;
    v29 = sub_238153EFC();
    v30 = sub_2381540FC();
    v31 = &v13[*(v10 + 36)];
    v32 = *(sub_238153A7C() + 20);
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_238153DDC();
    (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
    __asm { FMOV            V0.2D, #10.0 }

    *v31 = _Q0;
    *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)] = 256;
    *v13 = v22;
    *(v13 + 1) = v24;
    v13[16] = v28;
    *(v13 + 17) = *v54;
    *(v13 + 5) = *&v54[3];
    *(v13 + 3) = v48;
    v40 = v52;
    *(v13 + 2) = v51;
    *(v13 + 3) = v40;
    *(v13 + 4) = v53;
    *(v13 + 20) = v29;
    v13[84] = v30;
    v41 = sub_2381541BC();
    KeyPath = swift_getKeyPath();
    sub_23807121C(v13, v17, &qword_27DEEC328, &qword_23815BC70);
    v43 = &v17[*(v49 + 36)];
    *v43 = KeyPath;
    v43[1] = v41;
    v44 = swift_getKeyPath();
    v45 = v50;
    sub_23807121C(v17, v50, &qword_27DEEC330, &qword_23815BC78);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEEC340, &qword_23815BCE8);
    v46 = v45 + *(result + 36);
    *v46 = v44;
    *(v46 + 8) = 1;
    return result;
  }

  result = sub_2380CDBF4(a2, a3);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a4)
  {
    v19 = *(result + 8 * a4 + 32);

    if (v19 > 9)
    {
      v21 = 0xE100000000000000;
      v20 = 48;
    }

    else
    {
      *&v51 = v19;
      v20 = sub_23815559C();
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2380CDBF4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v36 = a1;
  v37 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v38 = 0;
  v39 = v2;

  result = sub_238154DFC();
  if (!v4)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_78:

    return v5;
  }

  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = HIBYTE(v4) & 0xF;
    v7 = result & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v8 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {

      goto LABEL_67;
    }

    if ((v4 & 0x1000000000000000) == 0)
    {
      break;
    }

    v10 = sub_2380B191C(result, v4, 10);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
LABEL_71:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2380BB8A4(0, *(v5 + 2) + 1, 1, v5);
      }

      v32 = *(v5 + 2);
      v31 = *(v5 + 3);
      if (v32 >= v31 >> 1)
      {
        v5 = sub_2380BB8A4((v31 > 1), v32 + 1, 1, v5);
      }

      *(v5 + 2) = v32 + 1;
      *&v5[8 * v32 + 32] = v10;
    }

LABEL_67:
    result = sub_238154DFC();
    if (!v4)
    {
      goto LABEL_78;
    }
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_23815544C();
      v7 = v33;
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v7 < 1)
      {
        goto LABEL_80;
      }

      if (!--v7)
      {
        goto LABEL_65;
      }

      v10 = 0;
      if (result)
      {
        v17 = (result + 1);
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            goto LABEL_65;
          }

          v19 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v19 + v18;
          if (__OFADD__(v19, v18))
          {
            goto LABEL_65;
          }

          ++v17;
          if (!--v7)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v9 == 45)
    {
      if (v7 < 1)
      {
        goto LABEL_82;
      }

      if (!--v7)
      {
        goto LABEL_65;
      }

      v10 = 0;
      if (result)
      {
        v11 = (result + 1);
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            goto LABEL_65;
          }

          v13 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            goto LABEL_65;
          }

          ++v11;
          if (!--v7)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else
    {
      if (!v7)
      {
LABEL_65:
        v10 = 0;
        LOBYTE(v7) = 1;
LABEL_66:
        v35 = v7;
        v28 = v7;

        if ((v28 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_67;
      }

      v10 = 0;
      if (result)
      {
        while (1)
        {
          v23 = *result - 48;
          if (v23 > 9)
          {
            goto LABEL_65;
          }

          v24 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            goto LABEL_65;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_66;
          }
        }
      }
    }

LABEL_64:
    LOBYTE(v7) = 0;
    goto LABEL_66;
  }

  v34[0] = result;
  v34[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (result == 43)
  {
    if (!v6)
    {
      goto LABEL_81;
    }

    v7 = v6 - 1;
    if (v6 != 1)
    {
      v10 = 0;
      v20 = v34 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v7)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

  if (result != 45)
  {
    if (v6)
    {
      v10 = 0;
      v25 = v34;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v6)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_65;
  }

  if (v6)
  {
    v7 = v6 - 1;
    if (v6 != 1)
    {
      v10 = 0;
      v14 = v34 + 1;
      while (1)
      {
        v15 = *v14 - 48;
        if (v15 > 9)
        {
          break;
        }

        v16 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v16 - v15;
        if (__OFSUB__(v16, v15))
        {
          break;
        }

        ++v14;
        if (!--v7)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_2380CDFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *(a3 + 8);
  v28 = *(a3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC240, &qword_23815BAF8);
  sub_23815470C();
  v4 = sub_238154DFC();
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    do
    {
      v9 = sub_2380D32AC(0x3736353433323130, 0xEA00000000003938);
      v10 = sub_2380BC5E0(v7, v6, v9);

      if (v10)
      {
        MEMORY[0x2383E9400](v7, v6);
      }

      v7 = sub_238154DFC();
      v6 = v8;
    }

    while (v8);
  }

  v11 = sub_238154D8C();
  v12 = *a3;
  if (v11 >= *a3)
  {
    v27 = *(a3 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
    sub_23815471C();
    v14 = *(a3 + 120);
    v13 = *(a3 + 128);
    v15 = sub_2380D0BC8(v12);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = MEMORY[0x2383E9380](v15, v17, v19, v21);
    v24 = v23;

    v14(v22, v24);
  }
}

uint64_t sub_2380CE180(uint64_t a1)
{
  v2 = sub_2381549FC();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_238154A2C();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380D0AA8();
  v10 = sub_23815517C();
  v11 = swift_allocObject();
  v12 = *(a1 + 112);
  *(v11 + 112) = *(a1 + 96);
  *(v11 + 128) = v12;
  *(v11 + 144) = *(a1 + 128);
  v13 = *(a1 + 48);
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = v13;
  v14 = *(a1 + 80);
  *(v11 + 80) = *(a1 + 64);
  *(v11 + 96) = v14;
  v15 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v15;
  aBlock[4] = sub_2380D0AF4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238106D10;
  aBlock[3] = &block_descriptor_3;
  v16 = _Block_copy(aBlock);
  sub_2380D045C(a1, v20);

  sub_238154A0C();
  v20[0] = MEMORY[0x277D84F90];
  sub_2380D0B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_2380711D4(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0);
  sub_23815537C();
  MEMORY[0x2383E97C0](0, v9, v5, v16);
  _Block_release(v16);

  (*(v19 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v18);
}

uint64_t sub_2380CE474@<X0>(uint64_t a1@<X8>)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + 16);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_2380CBC48(a1);
}

uint64_t sub_2380CE4C8()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3E0, &qword_23815BD88);
  MEMORY[0x2383E8E00](&v5, v3);
  return v5;
}

uint64_t sub_2380CE520()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3E0, &qword_23815BD88);
  return sub_2381547DC();
}

uint64_t sub_2380CE57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v39 = *(a1 - 8);
  v44 = *(v39 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 16);
  v8 = sub_238153A3C();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v51 = *(a1 + 24);
  v12 = v51;
  v52 = MEMORY[0x277CDF748];
  WitnessTable = swift_getWitnessTable();
  v47 = v8;
  v48 = MEMORY[0x277D839B0];
  v49 = WitnessTable;
  v50 = MEMORY[0x277D839C8];
  v42 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v43 + 64);
  v15 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v37 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v38 = &v36 - v17;
  v18 = *(a1 + 48);
  v19 = (v2 + *(a1 + 56));
  v20 = *v19;
  v21 = v19[1];
  v47 = v20;
  v48 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3D8, &unk_23815BD60);
  sub_23815470C();
  v22 = v11;
  v23 = v7;
  sub_23815452C();
  LOBYTE(v47) = sub_2380CE4C8() & 1;
  v24 = v39;
  v25 = v41;
  (*(v39 + 16))(v41, v3, a1);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  *(v27 + 24) = v12;
  (*(v24 + 32))(v27 + v26, v25, a1);
  v28 = v37;
  v29 = MEMORY[0x277D839B0];
  v30 = WitnessTable;
  v31 = MEMORY[0x277D839C8];
  sub_23815455C();

  (*(v45 + 8))(v22, v8);
  v47 = v8;
  v48 = v29;
  v49 = v30;
  v50 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v38;
  sub_2381507A4(v28, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v34 = *(v43 + 8);
  v34(v28, OpaqueTypeMetadata2);
  sub_2381507A4(v33, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v34)(v33, OpaqueTypeMetadata2);
}

uint64_t sub_2380CE9A4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Shake();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v24 - v17;
  if (*a2 == 1)
  {
    v19 = sub_238154FBC();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v10 + 16))(v13, a3, v9);
    sub_238154F8C();
    v20 = sub_238154F7C();
    v21 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 2) = v20;
    *(v22 + 3) = v23;
    *(v22 + 4) = a4;
    *(v22 + 5) = a5;
    (*(v10 + 32))(&v22[v21], v13, v9);
    sub_2380D2A4C(0, 0, v18, &unk_23815BD78, v22);
  }

  return result;
}

uint64_t sub_2380CEBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_238154F8C();
  v4[4] = sub_238154F7C();
  v5 = swift_task_alloc();
  v4[5] = v5;
  v6 = type metadata accessor for Shake();
  v4[6] = v6;
  *v5 = v4;
  v5[1] = sub_2380CEC94;

  return sub_2380CEE5C(v6);
}

uint64_t sub_2380CEC94()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380CEDD0, v5, v4);
}

uint64_t sub_2380CEDD0()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  v4 = sub_2380CE520();
  v5 = v3 + *(v1 + 52);
  if (*v5)
  {
    v6 = *(v5 + 8);
    (*v5)(v4);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2380CEE5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(a1 - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  sub_238154F8C();
  v2[7] = sub_238154F7C();
  v5 = sub_238154F3C();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_2380CEF48, v5, v4);
}

void sub_2380CEF48()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  *(v0 + 80) = v2;
  v3 = *(v1 + 24);
  *(v0 + 88) = v3;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3)
  {
    v4 = v3;
    v5 = v2 * 0.9;
    *(v0 + 96) = *(v1 + 40);
    *(v0 + 104) = 0;
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_2380CF188;
    v7 = *(v0 + 96);
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);

    sub_2380CF688(v8, v5 / v4, v7);
  }

  else
  {
    v10 = *(v0 + 48);
    v11 = *(v0 + 32);
    v12 = *(v0 + 16);
    v13 = v2 * 0.1;
    (*(v11 + 16))(v10);
    v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v0 + 120) = v15;
    *(v15 + 16) = *(v12 + 16);
    *(v15 + 24) = *(v12 + 24);
    (*(v11 + 32))(v15 + v14, v10, v12);
    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    swift_getWitnessTable();
    *v16 = v0;
    v16[1] = sub_2380CF4DC;
    v17 = *(v0 + 16);

    sub_2380D1794(sub_2380D1710, v15, v13);
  }
}

uint64_t sub_2380CF188()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2380CF2A8, v4, v3);
}

uint64_t sub_2380CF2A8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 104) + 1;
  if (v2 == v1)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = *(v0 + 80) * 0.1;
    (*(v4 + 16))(v3, *(v0 + 24), v5);
    v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v8 = swift_allocObject();
    *(v0 + 120) = v8;
    *(v8 + 16) = *(v5 + 16);
    *(v8 + 24) = *(v5 + 24);
    (*(v4 + 32))(v8 + v7, v3, v5);
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    swift_getWitnessTable();
    *v9 = v0;
    v9[1] = sub_2380CF4DC;
    v10 = *(v0 + 16);

    return sub_2380D1794(sub_2380D1710, v8, v6);
  }

  else
  {
    *(v0 + 104) = v2;
    v12 = *(v0 + 80);
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_2380CF188;
    v14 = v12 * 0.9 / v1;
    v15 = *(v0 + 96);
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);

    return sub_2380CF688(v16, v14, v15);
  }
}

uint64_t sub_2380CF4DC()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2380CF620, v5, v4);
}

uint64_t sub_2380CF620()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2380CF688(uint64_t a1, double a2, double a3)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = v3;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  v5 = *(a1 - 8);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 + 64);
  *(v4 + 64) = swift_task_alloc();
  sub_238154F8C();
  *(v4 + 72) = sub_238154F7C();
  v7 = sub_238154F3C();
  *(v4 + 80) = v7;
  *(v4 + 88) = v6;

  return MEMORY[0x2822009F8](sub_2380CF778, v7, v6);
}

uint64_t sub_2380CF778()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 24);
  v7 = *(v0 + 16) * 0.5;
  v8 = *(v4 + 16);
  *(v0 + 96) = v8;
  *(v0 + 104) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v3, v5);
  v9 = *(v4 + 80);
  *(v0 + 184) = v9;
  v10 = (v9 + 32) & ~v9;
  v11 = (v1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 112) = v12;
  v13 = *(v5 + 16);
  *(v0 + 120) = v13;
  *(v12 + 16) = v13;
  v14 = *(v5 + 24);
  *(v0 + 128) = v14;
  *(v12 + 24) = v14;
  v15 = *(v4 + 32);
  *(v0 + 136) = v15;
  *(v0 + 144) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v12 + v10, v2, v5);
  *(v12 + v11) = v6;
  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  *(v0 + 160) = swift_getWitnessTable();
  *v16 = v0;
  v16[1] = sub_2380CF940;
  v17 = *(v0 + 32);

  return sub_2380D1794(sub_2380D1C54, v12, v7);
}

uint64_t sub_2380CF940()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_2380CFA84, v5, v4);
}

uint64_t sub_2380CFA84()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = (*(v0 + 184) + 32) & ~*(v0 + 184);
  v9 = (*(v0 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 120);
  (*(v0 + 96))(v4, *(v0 + 40), v5);
  v10 = swift_allocObject();
  *(v0 + 168) = v10;
  *(v10 + 16) = v15;
  v2(v10 + v8, v4, v5);
  *(v10 + v9) = v6;
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_2380CFBE4;
  v12 = *(v0 + 160);
  v13 = *(v0 + 32);

  return sub_2380D1794(sub_2380D1D9C, v10, v7 * 0.5);
}

uint64_t sub_2380CFBE4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_2380CFD28, v5, v4);
}

uint64_t sub_2380CFD28()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2380CFD90(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for Shake() + 56));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3D8, &unk_23815BD60);
  return sub_23815471C();
}

uint64_t sub_2380CFE00(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for Shake() + 56));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3D8, &unk_23815BD60);
  return sub_23815471C();
}

uint64_t sub_2380CFE78(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for Shake() + 56));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3D8, &unk_23815BD60);
  return sub_23815471C();
}

uint64_t sub_2380CFEF4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2380CFF34()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_2380CFF6C(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v31 = a3;
  v33 = a1;
  v36 = sub_2381549FC();
  v39 = *(v36 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238154A2C();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3E8, &unk_23815BDA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = sub_238154A4C();
  v32 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  sub_23815492C();
  v40 = a2;
  v41 = v31;
  sub_23815398C();

  sub_2380D0AA8();
  v22 = sub_23815517C();
  sub_238154A3C();
  sub_238154A6C();
  v31 = *(v15 + 8);
  v31(v19, v14);
  (*(v10 + 16))(v13, v33, v9);
  v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v24 = swift_allocObject();
  (*(v10 + 32))(v24 + v23, v13, v9);
  aBlock[4] = sub_2380D1BE4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238106D10;
  aBlock[3] = &block_descriptor_89;
  v25 = _Block_copy(aBlock);
  v26 = v34;
  sub_238154A0C();
  v42 = MEMORY[0x277D84F90];
  sub_2380D0B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_2380711D4(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0);
  v28 = v35;
  v27 = v36;
  sub_23815537C();
  MEMORY[0x2383E9780](v21, v26, v28, v25);
  _Block_release(v25);

  (*(v39 + 8))(v28, v27);
  (*(v37 + 8))(v26, v38);
  v31(v21, v32);
}

unint64_t sub_2380D04A0()
{
  result = qword_27DEEC218;
  if (!qword_27DEEC218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC1E8, &qword_23815BA30);
    sub_2380D052C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC218);
  }

  return result;
}

unint64_t sub_2380D052C()
{
  result = qword_27DEEC220;
  if (!qword_27DEEC220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC210, &qword_23815BA60);
    sub_2380711D4(&qword_27DEEC228, &qword_27DEEC208, &qword_23815BA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC220);
  }

  return result;
}

unint64_t sub_2380D05E4()
{
  result = qword_27DEEC230;
  if (!qword_27DEEC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC230);
  }

  return result;
}

unint64_t sub_2380D0648()
{
  result = qword_27DEEC238;
  if (!qword_27DEEC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC238);
  }

  return result;
}

unint64_t sub_2380D069C()
{
  result = qword_27DEEC2B8;
  if (!qword_27DEEC2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC280, &qword_23815BB38);
    sub_2380711D4(&qword_27DEEC2C0, &qword_27DEEC278, &qword_23815BB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC2B8);
  }

  return result;
}

uint64_t sub_2380D0754@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x2383E80F0]();
  *a1 = result;
  return result;
}

uint64_t sub_2380D0780(uint64_t *a1)
{
  v1 = *a1;

  return sub_238153ACC();
}

uint64_t sub_2380D07B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238153C8C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2380D0834()
{
  result = qword_27DEEC2C8;
  if (!qword_27DEEC2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC2A0, &qword_23815BB58);
    sub_2380D08EC();
    sub_2380711D4(&qword_27DEEC2E0, &qword_27DEEC2E8, &unk_23815BC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC2C8);
  }

  return result;
}

unint64_t sub_2380D08EC()
{
  result = qword_27DEEC2D0;
  if (!qword_27DEEC2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC298, &qword_23815BB50);
    sub_2380D09A4();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC2D0);
  }

  return result;
}

unint64_t sub_2380D09A4()
{
  result = qword_27DEEC2D8;
  if (!qword_27DEEC2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC290, &qword_23815BB48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC280, &qword_23815BB38);
    sub_2380D069C();
    swift_getOpaqueTypeConformance2();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC2D8);
  }

  return result;
}

unint64_t sub_2380D0AA8()
{
  result = qword_27DEEBA50;
  if (!qword_27DEEBA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEBA50);
  }

  return result;
}

uint64_t sub_2380D0AFC()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC248, &qword_23815BB00);
  return sub_23815378C();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2380D0B70()
{
  result = qword_27DEEBC88;
  if (!qword_27DEEBC88)
  {
    sub_2381549FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBC88);
  }

  return result;
}

uint64_t sub_2380D0BC8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_238154DAC();

    return sub_238154E8C();
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2380D0CDC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2380D0D3C(uint64_t a1)
{
  sub_2380D11BC(319, &qword_27DEEC3C8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_23809C4FC();
      if (v5 <= 0x3F)
      {
        sub_2380D11BC(319, &qword_27DEEC3D0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2380D0E50(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 48) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(((((((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t sub_2380D0FB4(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = ((((((result & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(result + 16) = 0;
        *result = a2 & 0x7FFFFFFF;
        *(result + 8) = 0;
      }

      else
      {
        *(result + 8) = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_2380D11BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2380D120C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC1F0, &qword_23815BA38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC1E8, &qword_23815BA30);
  sub_2380D04A0();
  sub_2380D05E4();
  swift_getOpaqueTypeConformance2();
  sub_2380D0648();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2380D1318(uint64_t a1, _BYTE *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for Shake() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_2380CE9A4(a1, a2, v8, v5, v6);
}

uint64_t sub_2380D13B4()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = type metadata accessor for Shake();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *&v0[v5];

  v9 = *&v0[v5 + 8];

  (*(*(v2 - 8) + 8))(&v0[v5 + v3[12]], v2);
  v10 = &v0[v5 + v3[13]];
  if (*v10)
  {
    v11 = *(v10 + 1);
  }

  v12 = *&v0[v5 + 8 + v3[14]];

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_2380D14E0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for Shake() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238087150;

  return sub_2380CEBBC(a1, v8, v9, v1 + v7);
}

uint64_t objectdestroy_71Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for Shake();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + v5);

  v8 = *(v0 + v5 + 8);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[12], v2);
  v9 = (v0 + v5 + v3[13]);
  if (*v9)
  {
    v10 = v9[1];
  }

  v11 = *(v0 + v5 + v3[14] + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_2380D1710()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Shake() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2380CFD90(v4);
}

uint64_t sub_2380D1794(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  *(v3 + 40) = sub_238154F8C();
  *(v3 + 48) = sub_238154F7C();
  v5 = sub_238154F3C();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return MEMORY[0x2822009F8](sub_2380D1834, v5, v4);
}

uint64_t sub_2380D1834()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v7 = *(v0 + 24);
  *(v0 + 72) = sub_238154F7C();
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_2380D1954;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2380D1954()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2380D1AB4, v6, v5);
}

uint64_t sub_2380D1AB4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2380D1B20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2380D1B50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3E8, &unk_23815BDA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2380D1BE4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3E8, &unk_23815BDA0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_238154F4C();
}

uint64_t objectdestroy_91Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for Shake();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + v5);

  v8 = *(v0 + v5 + 8);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[12], v2);
  v9 = (v0 + v5 + v3[13]);
  if (*v9)
  {
    v10 = v9[1];
  }

  v11 = *(v0 + v5 + v3[14] + 8);

  return MEMORY[0x2821FE8E8](v0, ((v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_2380D1DB4(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, __n128))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for Shake() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6.n128_u64[0] = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v5, v2, v3, v6);
}

uint64_t sub_2380D1EA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_238153A3C();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2380D1F78@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v30 = a3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBB90, &unk_23815A7A0);
  v29 = *(v33 - 8);
  v6 = *(v29 + 64);
  v7 = MEMORY[0x28223BE20](v33);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - v10;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = a2;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v35 = v4;
      v18 = v17;
LABEL_9:
      v19 = __clz(__rbit64(v14)) | (v18 << 6);
      v20 = v34;
      v21 = *(v34 + 48);
      v22 = sub_2381527EC();
      v23 = *(v22 - 8);
      v24 = v21 + *(v23 + 72) * v19;
      v25 = v31;
      (*(v23 + 16))(v31, v24, v22);
      *(v25 + *(v33 + 48)) = *(*(v20 + 56) + v19);
      sub_2380F1A54(v25, v9);
      v26 = v35;
      v27 = v32(v9);
      v4 = v26;
      if (v26)
      {
        sub_238071284(v9, &unk_27DEEBB90, &unk_23815A7A0);
      }

      if (v27)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_238071284(v9, &unk_27DEEBB90, &unk_23815A7A0);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v30;
    sub_2380F1A54(v9, v30);
    return (*(v29 + 56))(v28, 0, 1, v33);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return (*(v29 + 56))(v30, 1, 1, v33);
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v35 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2380D222C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _DDNodeViewModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_2380F1924(v13, v11, type metadata accessor for _DDNodeViewModel);
      v15 = a1(v11);
      if (v3)
      {
        return sub_2380F198C(v11, type metadata accessor for _DDNodeViewModel);
      }

      if (v15)
      {
        break;
      }

      sub_2380F198C(v11, type metadata accessor for _DDNodeViewModel);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_2380F19EC(v11, v19, type metadata accessor for _DDNodeViewModel);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_2380D23F8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_238152BAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

void *sub_2380D260C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4E8, &qword_23815C178);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - v7;
  v47 = sub_2381536AC();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v47);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v36 - v13;
  v14 = type metadata accessor for DecorationIdentifier(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3 + 56;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a3 + 56);
  v23 = (v20 + 63) >> 6;
  v45 = (v9 + 48);
  v40 = v9;
  v43 = (v9 + 32);
  v24 = v16;
  v48 = a3;

  v26 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v27 = v26;
    if (!v22)
    {
      break;
    }

LABEL_8:
    sub_2380F1924(*(v48 + 48) + *(v24 + 72) * (__clz(__rbit64(v22)) | (v26 << 6)), v18, type metadata accessor for DecorationIdentifier);
    v46(v18);
    if (v3)
    {
      sub_2380F198C(v18, type metadata accessor for DecorationIdentifier);
      v35 = v44;

      return v35;
    }

    v22 &= v22 - 1;
    sub_2380F198C(v18, type metadata accessor for DecorationIdentifier);
    if ((*v45)(v8, 1, v47) == 1)
    {
      result = sub_238071284(v8, &qword_27DEEC4E8, &qword_23815C178);
    }

    else
    {
      v39 = v24;
      v28 = *v43;
      (*v43)(v41, v8, v47);
      v38 = v28;
      v28(v42, v41, v47);
      v29 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_2380BBADC(0, v29[2] + 1, 1, v29);
      }

      v31 = v29[2];
      v30 = v29[3];
      v44 = v29;
      v32 = v31 + 1;
      v24 = v39;
      if (v31 >= v30 >> 1)
      {
        v36 = v31;
        v37 = v31 + 1;
        v34 = sub_2380BBADC(v30 > 1, v31 + 1, 1, v44);
        v31 = v36;
        v32 = v37;
        v44 = v34;
      }

      v33 = v44;
      v44[2] = v32;
      result = (v38)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31, v42, v47);
    }
  }

  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      return v44;
    }

    v22 = *(v19 + 8 * v26);
    ++v27;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380D2A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2380712E4(a3, v27 - v11, &qword_27DEEBA00, &qword_23815B4A0);
  v13 = sub_238154FBC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_238071284(v12, &qword_27DEEBA00, &qword_23815B4A0);
  }

  else
  {
    sub_238154FAC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_238154F3C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_238154D3C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2380D2D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2380712E4(a3, v27 - v11, &qword_27DEEBA00, &qword_23815B4A0);
  v13 = sub_238154FBC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_238071284(v12, &qword_27DEEBA00, &qword_23815B4A0);
  }

  else
  {
    sub_238154FAC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_238154F3C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_238154D3C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4E0, &qword_23815C148);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4E0, &qword_23815C148);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2380D3060(uint64_t a1)
{
  v2 = type metadata accessor for DecorationIdentifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  v14 = sub_2380F15B0(&qword_27DEEC4F0, type metadata accessor for DecorationIdentifier);
  result = MEMORY[0x2383E9660](v13, v2, v14);
  v16 = 0;
  v24 = result;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  for (i = (v17 + 63) >> 6; v19; result = sub_2380F198C(v10, type metadata accessor for DecorationIdentifier))
  {
    v21 = v16;
LABEL_9:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    sub_2380F1924(*(a1 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v12, type metadata accessor for DecorationIdentifier);
    sub_2380F19EC(v12, v7, type metadata accessor for DecorationIdentifier);
    sub_2380EB4D8(v10, v7);
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= i)
    {

      return v24;
    }

    v19 = *(a1 + 64 + 8 * v21);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380D32AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_238154D8C();
  v5 = MEMORY[0x2383E9660](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v14 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0;
  v13[5] = v6;
  v7 = sub_238154DFC();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_2380EBCF4(v13, v9, v10);

      v9 = sub_238154DFC();
      v10 = v11;
    }

    while (v11);
    v5 = v14;
  }

  return v5;
}

uint64_t sub_2380D336C()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC3F0);
  __swift_project_value_buffer(v0, qword_27DEEC3F0);
  v1 = *MEMORY[0x277D04790];
  sub_238154DEC();
  return sub_23815292C();
}

uint64_t AirDropDiscoveryView.sessionID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t AirDropDiscoveryView.isPreviewVisible.getter()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v3;
}

uint64_t sub_2380D348C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_2380D350C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t AirDropDiscoveryView.isPreviewVisible.setter()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t (*AirDropDiscoveryView.isPreviewVisible.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *(a1 + 8) = *(a1 + 9);
  return sub_2380D368C;
}

uint64_t sub_2380D368C(uint64_t *a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  *(a1 + 9) = v2;

  return sub_238152A9C();
}

Swift::Void __swiftcall AirDropDiscoveryView.setIsPreviewVisible(isVisible:)(Swift::Bool isVisible)
{
  v2 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A9C();
}

uint64_t AirDropDiscoveryView.previewImageData.getter()
{
  v3 = *(v0 + 72);
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  return v2;
}

double sub_2380D37DC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2380D383C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a2[9];
  v6 = a2[10];
  v7 = a2[11];
  sub_2380E6764(v5, v6);

  sub_2380E6764(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815471C();
  sub_238087244(v5, v6);
}

uint64_t AirDropDiscoveryView.previewImageData.setter()
{
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  sub_2380E6764(v2, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815471C();
  sub_238087244(v2, v3);
}

void (*AirDropDiscoveryView.previewImageData.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[9];
  v6 = v1[10];
  v4[10] = v5;
  v4[11] = v6;
  v7 = v1[11];
  v4[12] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  sub_2380E6764(v5, v6);

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  return sub_2380D3A0C;
}

void sub_2380D3A0C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 24) = *(*a1 + 80);
  v4 = v3[6];
  v3[8] = v4;
  v5 = v3[7];
  v6 = v3[13];
  v3[5] = v3[12];
  v3[9] = v5;
  if (a2)
  {
    sub_2380E6764(v4, v5);
    sub_23815471C();
    v7 = v3[5];
    sub_238087244(v3[3], v3[4]);

    sub_238087244(v3[6], v3[7]);
  }

  else
  {
    sub_23815471C();
    v8 = v3[5];
    sub_238087244(v3[3], v3[4]);
  }

  free(v3);
}

uint64_t AirDropDiscoveryView.$previewImageData.getter()
{
  v3 = *(v0 + 72);
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815472C();
  return v2;
}

double AirDropDiscoveryView.init(airDropClient:bundleID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AirDropDiscoveryView.init(airDropClient:bundleID:previewImageLoader:)(a1, a2, a3, &unk_23815BE50, 0, v9);
  v5 = v13;
  *(a4 + 64) = v12;
  *(a4 + 80) = v5;
  *(a4 + 96) = v14;
  *(a4 + 112) = v15;
  v6 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a4 + 32) = v10;
  *(a4 + 48) = v8;
  return result;
}

uint64_t sub_2380D3BA4()
{
  sub_238154F8C();
  *(v0 + 16) = sub_238154F7C();
  v2 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380D3C38, v2, v1);
}

uint64_t sub_2380D3C38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(0, 0xF000000000000000);
}

unint64_t AirDropDiscoveryView.init(airDropClient:bundleID:previewImageLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v75 = a4;
  v76 = a5;
  v73 = a3;
  v80 = a2;
  v78 = a1;
  v83 = sub_238152E1C();
  v77 = *(v83 - 8);
  v7 = *(v77 + 64);
  v8 = MEMORY[0x28223BE20](v83);
  v79 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v70 - v10;
  v11 = sub_238152DEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_238152E0C();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2381527EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC410, &unk_23815BE58);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(a6 + 24) = sub_238152A0C();
  sub_2381527DC();
  sub_23815279C();
  (*(v19 + 8))(v22, v18);
  v26 = sub_238154DBC();
  result = sub_238154DBC();
  if (result >> 14 < v26 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_238154D9C();
    v28 = sub_238154E8C();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = MEMORY[0x2383E9380](v28, v30, v32, v34);
    v37 = v36;

    *(a6 + 56) = v35;
    *(a6 + 64) = v37;
    v85 = xmmword_23815BDB0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADE8, &qword_238158E00);
    sub_2381546FC();
    v38 = v87;
    *(a6 + 72) = v86;
    *(a6 + 88) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC418, &qword_23815BE68);
    v39 = *(v12 + 72);
    v40 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_23815BDC0;
    sub_238152D9C();
    sub_238152DCC();
    sub_238152DBC();
    sub_238152DAC();
    *&v86 = v41;
    sub_2380F15B0(&qword_27DEEBA08, MEMORY[0x277CD90C8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC420, &unk_23815BE70);
    sub_2380711D4(&qword_27DEEC428, &qword_27DEEC420, &unk_23815BE70);
    sub_23815537C();
    v42 = v17;
    v72 = v17;
    sub_238152DFC();
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC430, &qword_23815E820) + 48);
    v44 = v74;
    *v74 = 0x706F7264726961;
    *(v44 + 1) = 0xE700000000000000;
    (*(v81 + 16))(&v44[v43], v42, v82);
    v45 = v77;
    v46 = v83;
    (*(v77 + 104))(v44, *MEMORY[0x277CD90A8], v83);
    (*(v45 + 16))(v79, v44, v46);
    sub_238152CEC();
    v47 = v73;
    v71 = sub_238152CDC();
    v48 = type metadata accessor for _DDContactInfoCache(0);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v51 = sub_2380C1928();
    v52 = type metadata accessor for _DDAirDropMetadataCache(0);
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    v55 = swift_allocObject();
    v56 = v78;

    *&v86 = sub_2380EED1C(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF70, &qword_23815BE80);
    sub_238152A5C();
    *(v55 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient) = v56;
    v57 = type metadata accessor for DeviceBrowserViewModel(0);
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    v60 = sub_2380A0DD8(v79, v71, v51, v55);
    *(a6 + 32) = v80;
    *(a6 + 40) = v47;
    *a6 = v60;
    *(a6 + 8) = v56;
    v61 = *(v52 + 48);
    v62 = *(v52 + 52);
    v63 = swift_allocObject();
    swift_retain_n();
    *&v86 = sub_2380EED1C(MEMORY[0x277D84F90]);
    sub_238152A5C();
    *(v63 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient) = v56;
    *(a6 + 16) = v63;
    v64 = v76;
    *(a6 + 96) = v75;
    *(a6 + 104) = v64;
    *(a6 + 112) = 0;
    v65 = type metadata accessor for PreviewImageFrameReportingCoordinator();
    v66 = objc_allocWithZone(v65);
    v67 = &v66[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageViewFrame];
    *v67 = 0u;
    *(v67 + 1) = 0u;
    v68 = &v66[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageContentFrame];
    *v68 = 0u;
    *(v68 + 1) = 0u;
    *&v66[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_airDropClient] = v56;
    v84.receiver = v66;
    v84.super_class = v65;
    v69 = objc_msgSendSuper2(&v84, sel_init);
    (*(v45 + 8))(v44, v83);
    result = (*(v81 + 8))(v72, v82);
    *(a6 + 48) = v69;
  }

  return result;
}

uint64_t AirDropDiscoveryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[3];
  v30 = v1[4];
  v31 = v3;
  v5 = v1[5];
  v32 = v1[6];
  v6 = v1[1];
  v26 = *v1;
  v27 = v6;
  v7 = v1[3];
  v9 = *v1;
  v8 = v1[1];
  v28 = v1[2];
  v29 = v7;
  v10 = v1[6];
  v24[5] = v5;
  v24[6] = v10;
  v24[0] = v9;
  v24[1] = v8;
  v24[2] = v28;
  v33 = *(v1 + 14);
  v25 = *(v1 + 14);
  v24[3] = v4;
  v24[4] = v30;
  sub_2380D45B8(a1);
  v11 = swift_allocObject();
  v12 = v31;
  *(v11 + 80) = v30;
  *(v11 + 96) = v12;
  *(v11 + 112) = v32;
  *(v11 + 128) = v33;
  v13 = v27;
  *(v11 + 16) = v26;
  *(v11 + 32) = v13;
  v14 = v29;
  *(v11 + 48) = v28;
  *(v11 + 64) = v14;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC450, &qword_23815BE98) + 36));
  v16 = *(sub_23815396C() + 20);
  sub_2380EEFF8(&v26, v23);
  sub_238154F9C();
  *v15 = &unk_23815BE90;
  v15[1] = v11;
  v17 = swift_allocObject();
  v18 = v31;
  *(v17 + 80) = v30;
  *(v17 + 96) = v18;
  *(v17 + 112) = v32;
  *(v17 + 128) = v33;
  v19 = v27;
  *(v17 + 16) = v26;
  *(v17 + 32) = v19;
  v20 = v29;
  *(v17 + 48) = v28;
  *(v17 + 64) = v20;
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC458, &unk_23815BEA0) + 36));
  *v21 = 0;
  v21[1] = 0;
  v21[2] = sub_2380EF030;
  v21[3] = v17;
  return sub_2380EEFF8(&v26, v24);
}

void sub_2380D45B8(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v66 - v5;
  v6 = v1[5];
  v80 = v1[4];
  v81 = v6;
  v82 = v1[6];
  v83 = *(v1 + 14);
  v7 = v1[1];
  v76 = *v1;
  v77 = v7;
  v8 = v1[3];
  v78 = v1[2];
  v79 = v8;
  v69 = v76;
  v72 = *(v1 + 72);
  v73 = *(v1 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  v67 = v75;
  v68 = v74;
  v9 = v79;
  v10 = swift_allocObject();
  v11 = v81;
  *(v10 + 80) = v80;
  *(v10 + 96) = v11;
  *(v10 + 112) = v82;
  *(v10 + 128) = v83;
  v12 = v77;
  *(v10 + 16) = v76;
  *(v10 + 32) = v12;
  v13 = v79;
  *(v10 + 48) = v78;
  *(v10 + 64) = v13;
  LOBYTE(v74) = 0;
  v70 = v9;
  sub_2380EEFF8(&v76, &v72);
  sub_2381546FC();
  v14 = *(&v72 + 1);
  *(a1 + 32) = v72;
  *(a1 + 40) = v14;
  v15 = type metadata accessor for _DDDevicePickerView();
  v16 = v15[7];
  *(a1 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v17 = v15[8];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  swift_storeEnumTagMultiPayload();
  v18 = v15[9];
  *(a1 + v18) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v19 = a1 + v15[10];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v15[11];
  *(a1 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v21 = v15[12];
  *(a1 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v22 = (a1 + v15[13]);
  [objc_allocWithZone(type metadata accessor for _DDAskToAirDropManager()) init];
  sub_2380F15B0(&qword_27DEEA920, type metadata accessor for _DDAskToAirDropManager);
  v23 = sub_2381539BC();
  v25 = v24;
  *v22 = v23;
  v22[1] = v24;
  v26 = (a1 + v15[14]);
  v27 = objc_allocWithZone(type metadata accessor for _DDWirelessSettingsController());
  v66 = v25;
  [v27 init];
  sub_2380F15B0(&unk_27DEED8A0, type metadata accessor for _DDWirelessSettingsController);
  *v26 = sub_2381539BC();
  v26[1] = v28;
  v29 = (a1 + v15[15]);
  if (qword_27DEEA100 != -1)
  {
    swift_once();
  }

  v30 = qword_27DEF3290;
  type metadata accessor for _DDPinPairingManager();
  sub_2380F15B0(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager);
  v31 = v30;
  *v29 = sub_2381539BC();
  v29[1] = v32;
  v33 = (a1 + v15[16]);
  v34 = qword_27DEEA030;
  v35 = v32;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController();
  sub_2380F15B0(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController);
  v37 = v36;
  *v33 = sub_2381539BC();
  v33[1] = v38;
  v39 = v15[17];
  if (qword_27DEEA128 != -1)
  {
    swift_once();
  }

  v40 = (a1 + v39);
  v74 = qword_27DEEDA60;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
  sub_2381546FC();
  v41 = *(&v72 + 1);
  *v40 = v72;
  v40[1] = v41;
  v42 = a1 + v15[18];
  LOBYTE(v74) = 0;
  sub_2381546FC();
  v43 = *(&v72 + 1);
  *v42 = v72;
  *(v42 + 8) = v43;
  v44 = a1 + v15[19];
  LOBYTE(v74) = 0;
  sub_2381546FC();
  v45 = *(&v72 + 1);
  *v44 = v72;
  *(v44 + 8) = v45;
  v46 = a1 + v15[20];
  LOBYTE(v74) = 0;
  sub_2381546FC();
  v47 = *(&v72 + 1);
  *v46 = v72;
  *(v46 + 8) = v47;
  v48 = v15[21];
  swift_unknownObjectWeakInit();
  *(a1 + v15[26]) = 4;
  *(a1 + v15[27]) = 5;
  *(a1 + v15[28]) = xmmword_23815BDD0;
  v49 = *(v69 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_contactInfoCache);
  type metadata accessor for _DDContactInfoCache(0);
  sub_2380F15B0(&qword_27DEEC608, type metadata accessor for _DDContactInfoCache);

  *(a1 + 16) = sub_2381539BC();
  *(a1 + 24) = v50;
  type metadata accessor for DeviceBrowserViewModel(0);
  sub_2380F15B0(&unk_27DEED8B0, type metadata accessor for DeviceBrowserViewModel);

  *a1 = sub_2381539BC();
  *(a1 + 8) = v51;
  sub_2380BDAE8();
  v52 = (a1 + v15[25]);
  *v52 = v53;
  v52[1] = v54;
  v55 = (a1 + v15[22]);
  v56 = v67;
  *v55 = v68;
  v55[1] = v56;
  v57 = v70;
  swift_unknownObjectWeakAssign();
  v58 = (a1 + v15[23]);
  *v58 = sub_2380F152C;
  v58[1] = v10;
  *(a1 + v15[24]) = xmmword_23815BDE0;
  v59 = &v35[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier];
  v60 = *&v35[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier + 8];
  *v59 = 0x706F7264726961;
  *(v59 + 1) = 0xE700000000000000;

  v61 = sub_238154FBC();
  v62 = v71;
  (*(*(v61 - 8) + 56))(v71, 1, 1, v61);
  v63 = swift_allocObject();
  v63[2] = 0;
  v63[3] = 0;
  v64 = v66;
  v63[4] = v66;
  v65 = v64;
  sub_2380D2A4C(0, 0, v62, &unk_23815C430, v63);
}

uint64_t sub_2380D4DD0(uint64_t a1)
{
  v1[17] = a1;
  sub_238154F8C();
  v1[18] = sub_238154F7C();
  v3 = sub_238154F3C();
  v1[19] = v3;
  v1[20] = v2;

  return MEMORY[0x2822009F8](sub_2380D4E68, v3, v2);
}

uint64_t sub_2380D4E68()
{
  v1 = *(v0 + 136);
  v2 = *v1;
  sub_2380A54D4();
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 3);
  *(v0 + 48) = *(v1 + 2);
  *(v0 + 64) = v5;
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  *(v0 + 128) = v1[14];
  *(v0 + 96) = v7;
  *(v0 + 112) = v8;
  *(v0 + 80) = v6;
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = sub_2380D4F2C;

  return sub_2380D50AC();
}

uint64_t sub_2380D4F2C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_2380D504C, v4, v3);
}

uint64_t sub_2380D504C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2380D50AC()
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0) - 8) + 64) + 15;
  *(v1 + 384) = swift_task_alloc();
  v3 = sub_23815313C();
  *(v1 + 392) = v3;
  v4 = *(v3 - 8);
  *(v1 + 400) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 408) = swift_task_alloc();
  *(v1 + 416) = swift_task_alloc();
  v6 = sub_238152F3C();
  *(v1 + 424) = v6;
  v7 = *(v6 - 8);
  *(v1 + 432) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 440) = swift_task_alloc();
  v9 = *(v0 + 80);
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = v9;
  *(v1 + 112) = *(v0 + 96);
  *(v1 + 128) = *(v0 + 112);
  v10 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v10;
  v11 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v11;
  *(v1 + 448) = sub_238154F8C();
  *(v1 + 456) = sub_238154F7C();
  v13 = sub_238154F3C();
  *(v1 + 464) = v13;
  *(v1 + 472) = v12;

  return MEMORY[0x2822009F8](sub_2380D5268, v13, v12);
}

uint64_t sub_2380D5268()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5A0, &qword_23815C290);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_238158810;
  sub_238152F0C();
  sub_238152F1C();
  *(v0 + 376) = v6;
  sub_2380F15B0(&qword_27DEEC5A8, MEMORY[0x277D547F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5B0, &qword_23815C298);
  sub_2380711D4(&qword_27DEEC5B8, &qword_27DEEC5B0, &qword_23815C298);
  sub_23815537C();
  LOBYTE(v6) = sub_238152EEC();
  (*(v2 + 8))(v1, v3);
  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v0 + 408);
  v7 = *(v0 + 416);
  v9 = *(v0 + 392);
  v10 = *(v0 + 400);
  *(v0 + 480) = *(v0 + 24);
  sub_23815316C();
  (*(v10 + 104))(v8, *MEMORY[0x277D54970], v9);
  sub_2380F15B0(&qword_27DEEC5C0, MEMORY[0x277D549A0]);
  v11 = sub_238154C7C();
  v12 = *(v10 + 8);
  v12(v8, v9);
  v12(v7, v9);
  if ((v11 & 1) == 0)
  {
    v29 = *(v0 + 96);
    *(v0 + 320) = *(v0 + 80);
    *(v0 + 336) = v29;
    *(v0 + 352) = *(v0 + 112);
    *(v0 + 368) = *(v0 + 128);
    v30 = *(v0 + 32);
    *(v0 + 256) = *(v0 + 16);
    *(v0 + 272) = v30;
    v31 = *(v0 + 64);
    *(v0 + 288) = *(v0 + 48);
    *(v0 + 304) = v31;
    v32 = swift_task_alloc();
    *(v0 + 488) = v32;
    *v32 = v0;
    v32[1] = sub_2380D5654;

    return sub_2380E1384();
  }

  else
  {
LABEL_3:
    v14 = *(v0 + 448);
    v13 = *(v0 + 456);
    v15 = *(v0 + 384);

    v16 = sub_238154FBC();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    sub_2380EEFF8(v0 + 16, v0 + 136);
    v17 = sub_238154F7C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    v20 = *(v0 + 96);
    *(v18 + 96) = *(v0 + 80);
    *(v18 + 112) = v20;
    *(v18 + 128) = *(v0 + 112);
    *(v18 + 144) = *(v0 + 128);
    v21 = *(v0 + 32);
    *(v18 + 32) = *(v0 + 16);
    *(v18 + 48) = v21;
    v22 = *(v0 + 64);
    *(v18 + 64) = *(v0 + 48);
    *(v18 + 80) = v22;
    sub_2380D2A4C(0, 0, v15, &unk_23815C2A8, v18);

    v23 = *(v0 + 440);
    v24 = *(v0 + 408);
    v25 = *(v0 + 416);
    v26 = *(v0 + 384);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_2380D5654()
{
  v2 = *(*v1 + 488);
  v3 = *v1;
  v3[62] = v0;

  if (v0)
  {
    v4 = v3[58];
    v5 = v3[59];

    return MEMORY[0x2822009F8](sub_2380D5974, v4, v5);
  }

  else
  {
    v6 = *(MEMORY[0x277D549D0] + 4);
    v7 = swift_task_alloc();
    v3[63] = v7;
    *v7 = v3;
    v7[1] = sub_2380D57C0;
    v8 = v3[60];

    return MEMORY[0x2821B5F88]();
  }
}

uint64_t sub_2380D57C0()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 464);
    v6 = *(v2 + 472);
    v7 = sub_2380F1AE0;
  }

  else
  {
    v5 = *(v2 + 464);
    v6 = *(v2 + 472);
    v7 = sub_2380D58E4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2380D58E4()
{
  v1 = v0[57];

  v2 = v0[55];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[48];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2380D5974()
{
  if (qword_27DEEA0B0 != -1)
  {
    swift_once();
  }

  v1 = v0[62];
  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEC3F0);
  v3 = v1;
  v4 = sub_23815291C();
  v5 = sub_2381550DC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[62];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_238060000, v4, v5, "Error tracking transfer updates %@", v8, 0xCu);
    sub_238071284(v9, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v9, -1, -1);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(MEMORY[0x277D549D0] + 4);
  v13 = swift_task_alloc();
  v0[63] = v13;
  *v13 = v0;
  v13[1] = sub_2380D57C0;
  v14 = v0[60];

  return MEMORY[0x2821B5F88]();
}

uint64_t sub_2380D5B54(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = v54 - v7;
  v8 = &qword_23815A090;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v54 - v11;
  v13 = sub_2381527EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v56 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v54 - v17;
  v19 = v2[4];
  v20 = v2[6];
  v64 = v2[5];
  v65 = v20;
  v21 = v2[1];
  v59 = *v2;
  v22 = v2[2];
  v23 = v2[3];
  v60 = v21;
  v61 = v22;
  v66 = *(v2 + 14);
  v62 = v23;
  v63 = v19;
  v24 = a1;
  v26 = v25;
  sub_2380712E4(v24, v12, &qword_27DEEC9F0, &qword_23815A090);
  if ((*(v14 + 48))(v12, 1, v26) == 1)
  {
    sub_238071284(v12, &qword_27DEEC9F0, &qword_23815A090);
    if (a2 >> 62)
    {
      if (!sub_2381554FC())
      {
        goto LABEL_4;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v58[0] = 0;
      return sub_2381529EC();
    }

    sub_2381554EC();
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v14 + 32);
  (v8)(v18, v12, v26);
  v28 = v66;
  v67 = v66;
  if (v66)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
    v29 = swift_allocObject();
    v55 = v8;
    v30 = v29;
    *(v29 + 16) = xmmword_2381590E0;
    *(v29 + 32) = v28;
    v31 = sub_238154FBC();
    (*(*(v31 - 8) + 56))(v57, 1, 1, v31);
    v32 = v56;
    (*(v14 + 16))(v56, v18, v26);
    sub_238154F8C();
    v54[1] = v14 + 32;
    v33 = v18;
    sub_2380712E4(&v67, v58, &qword_27DEEC610, &qword_23815C458);
    sub_2380712E4(&v67, v58, &qword_27DEEC610, &qword_23815C458);
    sub_2380EEFF8(&v59, v58);
    v34 = sub_238154F7C();
    v35 = v26;
    v36 = (*(v14 + 80) + 160) & ~*(v14 + 80);
    v37 = swift_allocObject();
    v38 = v62;
    *(v37 + 104) = v63;
    v39 = v65;
    *(v37 + 120) = v64;
    *(v37 + 136) = v39;
    *(v37 + 40) = v59;
    v40 = v61;
    *(v37 + 56) = v60;
    *(v37 + 72) = v40;
    v41 = MEMORY[0x277D85700];
    *(v37 + 16) = v34;
    *(v37 + 24) = v41;
    *(v37 + 32) = v30;
    *(v37 + 152) = v66;
    *(v37 + 88) = v38;
    (v55)(v37 + v36, v32, v35);
    sub_2381351C8(0, 0, v57, &unk_23815C460, v37);

    sub_238071284(&v67, &qword_27DEEC610, &qword_23815C458);
    return (*(v14 + 8))(v33, v35);
  }

  if (a2 >> 62)
  {
LABEL_12:
    if (!sub_2381554FC())
    {
      goto LABEL_13;
    }

LABEL_9:
    v42 = sub_238154FBC();
    (*(*(v42 - 8) + 56))(v57, 1, 1, v42);
    v43 = *(v14 + 16);
    v55 = v8;
    v44 = v56;
    v43(v56, v18, v26);
    sub_238154F8C();
    sub_2380EEFF8(&v59, v58);

    v45 = sub_238154F7C();
    v46 = v26;
    v47 = (*(v14 + 80) + 160) & ~*(v14 + 80);
    v48 = v18;
    v49 = swift_allocObject();
    v50 = v62;
    *(v49 + 104) = v63;
    v51 = v65;
    *(v49 + 120) = v64;
    *(v49 + 136) = v51;
    *(v49 + 40) = v59;
    v52 = v61;
    *(v49 + 56) = v60;
    *(v49 + 72) = v52;
    v53 = MEMORY[0x277D85700];
    *(v49 + 16) = v45;
    *(v49 + 24) = v53;
    *(v49 + 32) = a2;
    *(v49 + 152) = v66;
    *(v49 + 88) = v50;
    (v55)(v49 + v47, v44, v46);
    sub_2381351C8(0, 0, v57, &unk_23815C448, v49);

    return (*(v14 + 8))(v48, v46);
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_13:
  sub_2381529FC();
  return (*(v14 + 8))(v18, v26);
}

uint64_t sub_2380D61DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC490, &qword_23815BF08);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = sub_238152F6C();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = sub_23815334C();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v16 = sub_2381526CC();
  v6[14] = v16;
  v17 = *(v16 - 8);
  v6[15] = v17;
  v18 = *(v17 + 64) + 15;
  v6[16] = swift_task_alloc();
  v19 = sub_238152FAC();
  v6[17] = v19;
  v20 = *(v19 - 8);
  v6[18] = v20;
  v21 = *(v20 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_238154F8C();
  v6[21] = sub_238154F7C();
  v23 = sub_238154F3C();
  v6[22] = v23;
  v6[23] = v22;

  return MEMORY[0x2822009F8](sub_2380D645C, v23, v22);
}

uint64_t sub_2380D645C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_238154B0C();
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = sub_238154ACC();
  v0[24] = v5;
  v6 = *(MEMORY[0x277D54828] + 4);
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_2380D6520;

  return MEMORY[0x2821B5E38](v5, 0, 0xF000000000000000);
}

uint64_t sub_2380D6520(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v10 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = v3[22];
    v6 = v3[23];
    v7 = sub_2380D6EC0;
  }

  else
  {
    v8 = v3[24];

    v5 = v3[22];
    v6 = v3[23];
    v7 = sub_2380D663C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2380D663C()
{
  v70 = v0;
  v1 = v0;
  v2 = v0[26];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[18];
    v66 = *(v4 + 16);
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v61 = (v0[12] + 8);
    v62 = v0[15];
    v64 = (v4 + 8);
    v65 = *(v4 + 72);
    v6 = MEMORY[0x277D84F90];
    v7 = v5;
    v67 = *(v2 + 16);
    do
    {
      v8 = v1[20];
      v10 = v1[16];
      v9 = v1[17];
      v11 = v1[13];
      v12 = v1[11];
      v66(v8, v7, v9);
      sub_238152F8C();
      sub_23815333C();
      (*v61)(v11, v12);
      v13 = v9;
      v14 = *v64;
      (*v64)(v8, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2380BBAB4(0, v6[2] + 1, 1, v6);
      }

      v16 = v6[2];
      v15 = v6[3];
      v1 = v68;
      if (v16 >= v15 >> 1)
      {
        v6 = sub_2380BBAB4(v15 > 1, v16 + 1, 1, v6);
      }

      v17 = v68[16];
      v18 = v68[14];
      v6[2] = v16 + 1;
      (*(v62 + 32))(v6 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v16, v17, v18);
      v7 += v65;
      --v3;
    }

    while (v3);
    v63 = v6;
    v19 = (v68[9] + 8);
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = v1[19];
      v22 = v1[17];
      v23 = v1[10];
      v24 = v1[8];
      v66(v21, v5, v22);
      sub_238152F9C();
      v25 = sub_238152F5C();
      v27 = v26;
      (*v19)(v23, v24);
      v14(v21, v22);
      if (v27 >> 60 == 15)
      {
        v1 = v68;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2380BB9A8(0, *(v20 + 2) + 1, 1, v20);
        }

        v1 = v68;
        v29 = *(v20 + 2);
        v28 = *(v20 + 3);
        if (v29 >= v28 >> 1)
        {
          v20 = sub_2380BB9A8((v28 > 1), v29 + 1, 1, v20);
        }

        *(v20 + 2) = v29 + 1;
        v30 = &v20[16 * v29];
        *(v30 + 4) = v25;
        *(v30 + 5) = v27;
      }

      v5 += v65;
      --v67;
    }

    while (v67);
    v31 = v1[26];

    v32 = v63;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D84F90];
  }

  v1[28] = v32;
  if (qword_27DEEA0B0 != -1)
  {
    swift_once();
  }

  v33 = sub_23815293C();
  __swift_project_value_buffer(v33, qword_27DEEC3F0);

  v34 = sub_23815291C();
  v35 = sub_2381550FC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v1[14];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69 = v38;
    *v37 = 134218499;
    *(v37 + 4) = v32[2];

    *(v37 + 12) = 2160;
    *(v37 + 14) = 1752392040;
    *(v37 + 22) = 2081;
    v39 = v32;
    v40 = MEMORY[0x2383E9520](v32, v36);
    v42 = sub_238085EAC(v40, v41, &v69);

    *(v37 + 24) = v42;
    v1 = v68;
    _os_log_impl(&dword_238060000, v34, v35, "Loaded items (count=%ld): %{private,mask.hash}s", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2383EA8A0](v38, -1, -1);
    MEMORY[0x2383EA8A0](v37, -1, -1);
  }

  else
  {
    v39 = v32;
  }

  v43 = sub_23815291C();
  v44 = sub_2381550FC();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v69 = v46;
    *v45 = 136315138;
    v47 = MEMORY[0x2383E9520](v20, MEMORY[0x277CC9318]);
    v49 = sub_238085EAC(v47, v48, &v69);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_238060000, v43, v44, "Item preview data %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x2383EA8A0](v46, -1, -1);
    MEMORY[0x2383EA8A0](v45, -1, -1);
  }

  if (*(v20 + 2))
  {
    v51 = *(v20 + 4);
    v50 = *(v20 + 5);
    sub_238085D80(v51, v50);
  }

  else
  {
    v51 = 0;
    v50 = 0xF000000000000000;
  }

  v1[29] = v51;
  v1[30] = v50;
  v52 = v1[3];

  v53 = v52[1];
  v54 = v52[4];
  v55 = v52[5];
  v56 = *(MEMORY[0x277D549E8] + 4);
  v57 = swift_task_alloc();
  v1[31] = v57;
  *v57 = v1;
  v57[1] = sub_2380D6C68;
  v58 = v1[7];
  v59 = v1[4];

  return MEMORY[0x2821B5FA0](v58, v39, v59, v51, v50, v54, v55, 0);
}

uint64_t sub_2380D6C68()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  v2[32] = v0;

  v5 = v2[30];
  v6 = v2[29];
  v7 = v2[28];
  if (v0)
  {
    sub_238087244(v6, v5);

    v8 = v2[22];
    v9 = v2[23];
    v10 = sub_2380D6F88;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    sub_238087244(v6, v5);

    v8 = v2[22];
    v9 = v2[23];
    v10 = sub_2380D6E08;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2380D6E08()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2380D6EC0()
{
  v1 = v0[24];

  v2 = v0[27];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2380D6F88()
{
  v1 = v0[32];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t AirDropDiscoveryView.endpoints.getter()
{
  v4 = *(v0 + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC410, &unk_23815BE58);
  v2 = sub_2380711D4(&qword_27DEEC460, &qword_27DEEC410, &unk_23815BE58);
  return MEMORY[0x2383E7100](v1, v2);
}

uint64_t AirDropDiscoveryView.endpoint(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 24);
  sub_238152A2C();
  sub_2380D23F8(sub_2380EF054, v5, a1);
}

uint64_t sub_2380D71C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_238154F8C();
  v4[3] = sub_238154F7C();
  v6 = sub_238154F3C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2380D7258, v6, v5);
}

uint64_t sub_2380D7258()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  sub_2380A54D4();
  v3 = v1[1];
  v4 = *(MEMORY[0x277D549C8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2380D72F8;

  return MEMORY[0x2821B5F80]();
}

uint64_t sub_2380D72F8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 32);
  v6 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_2380F1B1C, v5, v6);
}

uint64_t sub_2380D743C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24[-v6 - 8];
  v8 = v2[4];
  v9 = v2[6];
  v30 = v2[5];
  v31 = v9;
  v10 = v2[1];
  v25 = *v2;
  v11 = v2[2];
  v12 = v2[3];
  v26 = v10;
  v27 = v11;
  v32 = *(v2 + 14);
  v28 = v12;
  v29 = v8;
  v13 = sub_238154FBC();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_238154F8C();
  sub_2380EEFF8(&v25, v24);
  v14 = sub_238154F7C();
  v15 = swift_allocObject();
  v16 = v30;
  v17 = v31;
  v18 = v28;
  *(v15 + 96) = v29;
  *(v15 + 112) = v16;
  *(v15 + 128) = v17;
  v19 = v26;
  v20 = v27;
  *(v15 + 32) = v25;
  *(v15 + 48) = v19;
  v21 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v21;
  *(v15 + 144) = v32;
  *(v15 + 64) = v20;
  *(v15 + 80) = v18;
  sub_2380D2A4C(0, 0, v7, a2, v15);
}

uint64_t sub_2380D75B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_238154F8C();
  v4[3] = sub_238154F7C();
  v6 = sub_238154F3C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2380D7648, v6, v5);
}

uint64_t sub_2380D7648()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  sub_2380A8BA4();
  v3 = v1[1];
  v4 = *(MEMORY[0x277D549D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2380D76E8;

  return MEMORY[0x2821B5F88]();
}

uint64_t sub_2380D76E8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v7 = sub_2380F1B1C;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v7 = sub_2380D780C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2380D780C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

double sub_2380D78B8(void *a1)
{
  v2 = *(v1 + 48) + *a1;
  result = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  return result;
}

uint64_t sub_2380D78D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v192 = a3;
  v193 = a6;
  v174 = a4;
  v175 = a5;
  v182 = a2;
  v188 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC500, &unk_23815E6B0);
  v151 = *(v8 - 8);
  v152 = v8;
  v9 = *(v151 + 64);
  MEMORY[0x28223BE20](v8);
  v150 = (&v147 - v10);
  v11 = sub_23815362C();
  v169 = *(v11 - 8);
  v170 = v11;
  v12 = *(v169 + 64);
  MEMORY[0x28223BE20](v11);
  v163 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v149 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v165 = &v147 - v18;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC508, &unk_23815C190);
  v166 = *(v173 - 8);
  v19 = *(v166 + 64);
  MEMORY[0x28223BE20](v173);
  v164 = (&v147 - v20);
  v176 = sub_23815354C();
  v168 = *(v176 - 8);
  v21 = *(v168 + 64);
  MEMORY[0x28223BE20](v176);
  v172 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v23 = *(*(v180 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v180);
  v160 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v162 = &v147 - v26;
  v27 = sub_2381536EC();
  v177 = *(v27 - 8);
  v178 = v27;
  v28 = *(v177 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v171 = &v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v179 = &v147 - v31;
  v189 = type metadata accessor for _DDNodeDecoration(0);
  v167 = *(v189 - 8);
  v32 = *(v167 + 64);
  v33 = MEMORY[0x28223BE20](v189);
  v148 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v153 = &v147 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v159 = &v147 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v161 = &v147 - v40;
  MEMORY[0x28223BE20](v39);
  v187 = &v147 - v41;
  v42 = sub_23815305C();
  v185 = *(v42 - 8);
  v186 = v42;
  v43 = *(v185 + 64);
  MEMORY[0x28223BE20](v42);
  v191 = &v147 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2381527EC();
  v183 = v45;
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v184 = &v147 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2381536AC();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v7[5];
  v204 = v7[4];
  v205 = v52;
  v206 = v7[6];
  v207 = *(v7 + 14);
  v53 = v7[1];
  v200 = *v7;
  v201 = v53;
  v54 = v7[3];
  v202 = v7[2];
  v203 = v54;
  v55 = *(v49 + 16);
  v190 = v49 + 16;
  v181 = v55;
  v55(v51, v193, v48);
  (*(v46 + 16))(&v147 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v192, v45);
  v56 = *(v49 + 80);
  v57 = (v56 + 136) & ~v56;
  v58 = v56 | 7;
  v59 = *(v46 + 80);
  v154 = v58;
  v155 = v57 + v50;
  v60 = (v57 + v50 + v59) & ~v59;
  v61 = swift_allocObject();
  v62 = v205;
  *(v61 + 80) = v204;
  *(v61 + 96) = v62;
  *(v61 + 112) = v206;
  *(v61 + 128) = v207;
  v63 = v201;
  *(v61 + 16) = v200;
  *(v61 + 32) = v63;
  v64 = v203;
  *(v61 + 48) = v202;
  *(v61 + 64) = v64;
  v65 = *(v49 + 32);
  v156 = v57;
  v157 = v51;
  v158 = v49 + 32;
  v65(v61 + v57, v51, v48);
  v66 = v61 + v60;
  v67 = v186;
  v68 = v191;
  (*(v46 + 32))(v66, v184, v183);
  v69 = v185;
  (*(v185 + 16))(v68, v188, v67);
  v70 = (*(v69 + 88))(v68, v67);
  if (v70 == *MEMORY[0x277D548C8])
  {
    (*(v69 + 96))(v68, v67);
    v71 = *v68;
    sub_2380EEFF8(&v200, v199);

    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC528, &qword_23815C1B0) + 64);
    v73 = v187;
    *v187 = sub_2380EF7C8;
    *(v73 + 8) = v61;
    swift_storeEnumTagMultiPayload();
    v74 = v189;
    v181(v73 + *(v189 + 24), v193, v48);
    *(v73 + *(v74 + 20)) = v182;

    sub_2380A9944(v192, v73);

    sub_2380F198C(v73, type metadata accessor for _DDNodeDecoration);
    v75 = sub_23815361C();
    return (*(*(v75 - 8) + 8))(&v68[v72], v75);
  }

  v77 = v187;
  v188 = v48;
  if (v70 == *MEMORY[0x277D548B8])
  {
    (*(v69 + 96))(v68, v67);
    v78 = *(v68 + 1);
    sub_2380EEFF8(&v200, v199);

    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC520, &qword_23815C1A8);
    v80 = *(v79 + 48);
    v187 = v79;
    v81 = *&v68[*(v79 + 64) + 8];

    v82 = v177;
    v83 = v178;
    v84 = v179;
    (*(v177 + 32))(v179, &v68[v80], v178);
    v85 = v171;
    (*(v82 + 16))(v171, v84, v83);
    if ((*(v82 + 88))(v85, v83) == *MEMORY[0x277D54BF8])
    {
      (*(v82 + 96))(v85, v83);
      v86 = *(v85 + 1);
      v87 = v85[16];
      v88 = *(v85 + 4);
      v186 = *(v85 + 3);
      v184 = v86;
      v185 = v88;
      v89 = COERCE_DOUBLE(sub_2381536DC());
      v91 = v89;
      if (v89 <= 0.1)
      {
        v91 = 0.1;
      }

      v92 = v91;
      v93 = v90 & 1;
      if (v90)
      {
        v92 = v89;
      }

      v183 = *&v92;
      v94 = v157;
      v95 = v188;
      v96 = v181;
      v181(v157, v193, v188);
      v97 = swift_allocObject();
      v98 = v205;
      *(v97 + 80) = v204;
      *(v97 + 96) = v98;
      *(v97 + 112) = v206;
      *(v97 + 128) = v207;
      v99 = v201;
      *(v97 + 16) = v200;
      *(v97 + 32) = v99;
      v100 = v203;
      *(v97 + 48) = v202;
      *(v97 + 64) = v100;
      v65(v97 + v156, v94, v95);
      v197 = v93;
      v195 = v87;
      v101 = v162;
      *v162 = 1;
      *(v101 + 1) = v198[0];
      *(v101 + 4) = *(v198 + 3);
      *(v101 + 8) = v183;
      *(v101 + 16) = v93;
      *(v101 + 17) = *v196;
      *(v101 + 20) = *&v196[3];
      v102 = v175;
      *(v101 + 24) = v174;
      *(v101 + 32) = v102;
      *(v101 + 40) = v184;
      *(v101 + 48) = v87;
      v68 = v191;
      *(v101 + 49) = *v194;
      *(v101 + 52) = *&v194[3];
      v103 = v185;
      *(v101 + 56) = v186;
      *(v101 + 64) = v103;
      *(v101 + 72) = sub_2380EF9BC;
      *(v101 + 80) = v97;
      swift_storeEnumTagMultiPayload();
      v104 = v189;
      v105 = v161;
      v96(&v161[*(v189 + 24)], v193, v95);
      sub_2380F19EC(v101, v105, type metadata accessor for _DDNodeDecoration.Kind);
      *(v105 + *(v104 + 20)) = v182;
      sub_2380EEFF8(&v200, v199);

      sub_2380A9944(v192, v105);

      sub_2380F198C(v105, type metadata accessor for _DDNodeDecoration);
      (*(v177 + 8))(v179, v178);
    }

    else
    {
      v119 = COERCE_DOUBLE(sub_2381536DC());
      v121 = v119;
      if (v119 <= 0.1)
      {
        v121 = 0.1;
      }

      v122 = v121;
      if (v120)
      {
        v122 = v119;
      }

      v199[0] = v120 & 1;
      LOBYTE(v198[0]) = 1;
      v123 = v160;
      *v160 = 1;
      *(v123 + 8) = v122;
      *(v123 + 16) = v120 & 1;
      v124 = v82;
      v125 = v175;
      *(v123 + 24) = v174;
      *(v123 + 32) = v125;
      *(v123 + 40) = 0;
      *(v123 + 48) = 1;
      *(v123 + 56) = -1;
      *(v123 + 64) = -1;
      *(v123 + 72) = sub_2380EF7C8;
      *(v123 + 80) = v61;
      swift_storeEnumTagMultiPayload();
      v126 = v189;
      v127 = v159;
      v181(&v159[*(v189 + 24)], v193, v188);
      sub_2380F19EC(v123, v127, type metadata accessor for _DDNodeDecoration.Kind);
      *(v127 + *(v126 + 20)) = v182;

      sub_2380A9944(v192, v127);

      sub_2380F198C(v127, type metadata accessor for _DDNodeDecoration);
      v128 = *(v124 + 8);
      v128(v179, v83);
      v128(v85, v83);
    }

    v129 = *(v187 + 20);
    v130 = sub_23815361C();
    return (*(*(v130 - 8) + 8))(&v68[v129], v130);
  }

  else
  {
    v106 = v193;
    if (v70 == *MEMORY[0x277D548E8])
    {
      (*(v69 + 96))(v68, v67);
      v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC518, &qword_23815C1A0) + 48);
      v108 = v168;
      v109 = v172;
      v110 = v176;
      (*(v168 + 32))(v172, v68, v176);
      v111 = v166;
      v112 = v164;
      (*(v166 + 32))(v164, &v68[v107], v173);
      v113 = v163;
      (*(v108 + 16))(v163, v109, v110);
      v115 = v169;
      v114 = v170;
      (*(v169 + 104))(v113, *MEMORY[0x277D54B78], v170);
      sub_2380EEFF8(&v200, v199);
      v116 = v165;
      sub_2380D987C(v112, v193, v165);
      (*(v115 + 8))(v113, v114);
      v117 = (*(v167 + 48))(v116, 1, v189);
      v118 = v192;
      if (v117 == 1)
      {

        (*(v111 + 8))(v112, v173);
        (*(v108 + 8))(v172, v176);
        return sub_238071284(v116, &qword_27DEEBA48, &qword_23815BF00);
      }

      else
      {
        v135 = v153;
        sub_2380F19EC(v116, v153, type metadata accessor for _DDNodeDecoration);
        sub_2380A9944(v118, v135);

        sub_2380F198C(v135, type metadata accessor for _DDNodeDecoration);
        (*(v111 + 8))(v112, v173);
        return (*(v108 + 8))(v172, v176);
      }
    }

    else
    {
      v131 = v192;
      v132 = v189;
      if (v70 == *MEMORY[0x277D548B0])
      {
        (*(v69 + 96))(v68, v67);
        swift_storeEnumTagMultiPayload();
        v181(v77 + *(v132 + 24), v106, v188);
        *(v77 + *(v132 + 20)) = v182;
        sub_2380EEFF8(&v200, v199);

        sub_2380A9944(v131, v77);

        sub_2380F198C(v77, type metadata accessor for _DDNodeDecoration);
        v134 = v169;
        v133 = v170;
      }

      else
      {
        v137 = v181;
        v136 = v182;
        v138 = v188;
        if (v70 != *MEMORY[0x277D548E0])
        {
          if (v70 == *MEMORY[0x277D548F0])
          {
            *v187 = sub_2380EF7C8;
            *(v77 + 8) = v61;
          }

          else
          {
            if (v70 != *MEMORY[0x277D548D8])
            {
              sub_2380EEFF8(&v200, v199);

              return (*(v69 + 8))(v68, v67);
            }

            *v187 = sub_2380EF7C8;
            *(v77 + 8) = v61;
          }

          v146 = v136;
          swift_storeEnumTagMultiPayload();
          v137(v77 + *(v132 + 24), v193, v138);
          *(v77 + *(v132 + 20)) = v146;
          sub_2380EEFF8(&v200, v199);

          sub_2380A9944(v192, v77);

          return sub_2380F198C(v77, type metadata accessor for _DDNodeDecoration);
        }

        (*(v69 + 96))(v68, v67);
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC510, &unk_23815E6E0);
        v141 = v150;
        v140 = v151;
        v142 = v152;
        (*(v151 + 32))(v150, &v68[*(v139 + 48)], v152);
        sub_2380EEFF8(&v200, v199);
        v143 = v149;
        sub_2380DAF6C(v141, v193, v149);
        if ((*(v167 + 48))(v143, 1, v132) == 1)
        {
          (*(v140 + 8))(v141, v142);

          sub_238071284(v143, &qword_27DEEBA48, &qword_23815BF00);
        }

        else
        {
          v144 = v143;
          v145 = v148;
          sub_2380F19EC(v144, v148, type metadata accessor for _DDNodeDecoration);
          sub_2380A9944(v192, v145);

          sub_2380F198C(v145, type metadata accessor for _DDNodeDecoration);
          (*(v140 + 8))(v141, v142);
        }

        v133 = v176;
        v134 = v168;
      }

      return (*(v134 + 8))(v68, v133);
    }
  }
}

uint64_t sub_2380D8C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v4 = sub_2381527EC();
  v25 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2381536AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v15 = sub_238154FBC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v10, v27, v7);
  (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v4);
  sub_238154F8C();
  sub_2380EEFF8(a1, v29);
  v16 = sub_238154F7C();
  v17 = (*(v8 + 80) + 152) & ~*(v8 + 80);
  v18 = (v9 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  v21 = *(a1 + 80);
  *(v19 + 96) = *(a1 + 64);
  *(v19 + 112) = v21;
  *(v19 + 128) = *(a1 + 96);
  *(v19 + 144) = *(a1 + 112);
  v22 = *(a1 + 16);
  *(v19 + 32) = *a1;
  *(v19 + 48) = v22;
  v23 = *(a1 + 48);
  *(v19 + 64) = *(a1 + 32);
  *(v19 + 80) = v23;
  (*(v8 + 32))(v19 + v17, v10, v7);
  (*(v5 + 32))(v19 + v18, v26, v25);
  sub_2381351C8(0, 0, v14, &unk_23815C268, v19);
}

uint64_t sub_2380D8F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v9 = type metadata accessor for DecorationIdentifier(0);
  v6[9] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = sub_238154F8C();
  v6[13] = sub_238154F7C();
  v12 = *(a4 + 8);
  v13 = *(MEMORY[0x277D549B0] + 4);
  v14 = swift_task_alloc();
  v6[14] = v14;
  *v14 = v6;
  v14[1] = sub_2380D905C;

  return MEMORY[0x2821B5F60](a5);
}

uint64_t sub_2380D905C()
{
  v2 = v0;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 120) = v2;

  v7 = sub_238154F3C();
  if (v2)
  {
    v8 = sub_2380D93C0;
  }

  else
  {
    v8 = sub_2380D91B8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2380D91B8()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];

  v8 = *v6;
  v9 = sub_2381536AC();
  (*(*(v9 - 8) + 16))(v2, v7, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  (*(*(v10 - 8) + 56))(v2, 0, 1, v10);
  v11 = *(v5 + 20);
  v12 = sub_2381527EC();
  (*(*(v12 - 8) + 16))(v2 + v11, v4, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = sub_238152A7C();
  sub_2380E7D24(v2, v3);
  sub_2380F198C(v2, type metadata accessor for DecorationIdentifier);
  sub_238071284(v3, &qword_27DEEBA48, &qword_23815BF00);
  v13(v0 + 2, 0);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2380D93C0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_2380D9438(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381536AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22[-v10 - 8];
  v12 = sub_238154FBC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v7, a2, v4);
  sub_238154F8C();
  sub_2380EEFF8(a1, v22);
  v13 = sub_238154F7C();
  v14 = (*(v5 + 80) + 152) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  v17 = *(a1 + 80);
  *(v15 + 96) = *(a1 + 64);
  *(v15 + 112) = v17;
  *(v15 + 128) = *(a1 + 96);
  *(v15 + 144) = *(a1 + 112);
  v18 = *(a1 + 16);
  *(v15 + 32) = *a1;
  *(v15 + 48) = v18;
  v19 = *(a1 + 48);
  *(v15 + 64) = *(a1 + 32);
  *(v15 + 80) = v19;
  (*(v5 + 32))(v15 + v14, v7, v4);
  sub_2381351C8(0, 0, v11, &unk_23815C1C0, v15);
}

uint64_t sub_2380D9660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_238154F8C();
  v5[3] = sub_238154F7C();
  v8 = *(a4 + 8);
  v9 = *(MEMORY[0x277D549B0] + 4);
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_2380D9720;

  return MEMORY[0x2821B5F60](a5);
}

uint64_t sub_2380D9720()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_238154F3C();
  if (v2)
  {
    v8 = sub_2380F1B14;
  }

  else
  {
    v8 = sub_2380F1B20;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2380D987C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v190 = a2;
  v210 = a3;
  v211 = a1;
  v3 = sub_2381536CC();
  v197 = *(v3 - 8);
  v198 = v3;
  v4 = *(v197 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v194 = (&v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v196 = (&v176 - v7);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
  v202 = *(v200 - 8);
  v8 = *(v202 + 64);
  v9 = MEMORY[0x28223BE20](v200);
  v192 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v10;
  MEMORY[0x28223BE20](v9);
  v201 = &v176 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC508, &unk_23815C190);
  v209 = *(v12 - 8);
  v13 = *(v209 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v203 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v189 = &v176 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v206 = &v176 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v193 = &v176 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v195 = &v176 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v176 - v23;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC538, &qword_23815C1D0);
  v207 = *(v205 - 8);
  v25 = *(v207 + 64);
  v26 = MEMORY[0x28223BE20](v205);
  v199 = &v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v204 = &v176 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC540, &qword_23815C1D8);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v176 - v32);
  v34 = sub_23815361C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v188 = &v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v176 - v38;
  v208 = v12;
  sub_23815365C();
  if ((*(v30 + 88))(v33, v29) != *MEMORY[0x277D54B90])
  {
    (*(v30 + 8))(v33, v29);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v91 = sub_23815293C();
    __swift_project_value_buffer(v91, qword_27DEEC3F0);
    v93 = v208;
    v92 = v209;
    v94 = *(v209 + 16);
    v94(v24, v211, v208);
    v95 = sub_23815291C();
    v96 = sub_2381550EC();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v212 = v98;
      *v97 = 136315138;
      v99 = v206;
      v94(v206, v24, v93);
      v100 = *(v92 + 8);
      v100(v24, v93);
      sub_2380711D4(&qword_27DEEC548, &qword_27DEEC508, &unk_23815C190);
      v101 = sub_23815559C();
      v103 = v102;
      v100(v99, v93);
      v104 = sub_238085EAC(v101, v103, &v212);

      *(v97 + 4) = v104;
      _os_log_impl(&dword_238060000, v95, v96, "Unable to create decoration for request. intervention stlye not supported: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x2383EA8A0](v98, -1, -1);
      MEMORY[0x2383EA8A0](v97, -1, -1);
    }

    else
    {
      (*(v92 + 8))(v24, v93);
    }

    goto LABEL_37;
  }

  (*(v30 + 96))(v33, v29);
  v40 = v33[1];
  v182 = *v33;
  v41 = v33[3];
  v181 = v33[2];
  v42 = v33[4];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC550, &qword_23815C1E0);
  v44 = *(v35 + 32);
  v45 = v33 + *(v43 + 80);
  v180 = v35 + 32;
  v179 = v44;
  v44(v39, v45, v34);
  v46 = *(v42 + 16);
  v186 = v34;
  v187 = v39;
  if (!v46)
  {
    v105 = v39;

LABEL_16:
    v106 = v209;
    v107 = v203;
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v108 = sub_23815293C();
    __swift_project_value_buffer(v108, qword_27DEEC3F0);
    v109 = *(v106 + 16);
    v110 = v208;
    v109(v107, v211, v208);
    v111 = sub_23815291C();
    v112 = sub_2381550EC();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v211 = v111;
      v114 = v113;
      v115 = swift_slowAlloc();
      v212 = v115;
      *v114 = 136315138;
      LODWORD(v207) = v112;
      v116 = v206;
      v109(v206, v107, v110);
      v117 = *(v106 + 8);
      v117(v107, v110);
      sub_2380711D4(&qword_27DEEC548, &qword_27DEEC508, &unk_23815C190);
      v118 = sub_23815559C();
      v120 = v119;
      v117(v116, v110);
      v121 = sub_238085EAC(v118, v120, &v212);

      *(v114 + 4) = v121;
      v122 = v211;
      _os_log_impl(&dword_238060000, v211, v207, "Unable to create decoration for request. Too many actions: %s", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v115);
      MEMORY[0x2383EA8A0](v115, -1, -1);
      MEMORY[0x2383EA8A0](v114, -1, -1);

      (*(v35 + 8))(v187, v186);
    }

    else
    {
      (*(v106 + 8))(v107, v110);

      (*(v35 + 8))(v105, v34);
    }

    goto LABEL_37;
  }

  v185 = v41;
  v183 = v40;
  v184 = v35;
  v47 = v207;
  v48 = *(v207 + 16);
  v50 = v204;
  v49 = v205;
  v48(v204, v42 + ((*(v207 + 80) + 32) & ~*(v207 + 80)), v205);

  if (v46 != 1)
  {
    (*(v47 + 8))(v50, v49);

    v35 = v184;
    v34 = v186;
    v105 = v187;
    goto LABEL_16;
  }

  v51 = v199;
  v48(v199, v50, v49);
  if ((*(v47 + 88))(v51, v49) == *MEMORY[0x277D54B60])
  {
    (*(v47 + 96))(v51, v49);
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC558, &qword_23815C1E8) + 48);
    v53 = v200;
    v203 = *(v202 + 32);
    (v203)(v201, v51, v200);
    v54 = sub_2381527EC();
    (*(*(v54 - 8) + 8))(&v51[v52], v54);
    v55 = v196;
    sub_23815356C();
    v57 = v197;
    v56 = v198;
    v199 = *(v197 + 88);
    v58 = (v199)(v55, v198);
    if (v58 == *MEMORY[0x277D54BF0])
    {
      v59 = *(v57 + 96);
      LODWORD(v195) = v58;
      v178 = v57 + 96;
      v177 = v59;
      v59(v55, v56);
      v60 = v55[1];
      v193 = *v55;
      v196 = v60;
      v61 = v202 + 16;
      v62 = v192;
      (*(v202 + 16))(v192, v201, v53);
      v63 = (*(v61 + 64) + 16) & ~*(v61 + 64);
      v64 = swift_allocObject();
      (v203)(v64 + v63, v62, v53);
      v65 = v194;
      v66 = v187;
      sub_2381535EC();
      v67 = v198;
      v68 = (v199)(v65, v198);
      if (v68 == v195)
      {
        v177(v65, v67);
        v69 = v65[1];
        v203 = *v65;
        v199 = v69;
        v70 = v184;
        v71 = v188;
        v72 = v186;
        (*(v184 + 16))(v188, v66, v186);
        v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
        v74 = swift_allocObject();
        v179(v74 + v73, v71, v72);
        v76 = v208;
        v75 = v209;
        v77 = v206;
        (*(v209 + 16))(v206, v211, v208);
        v78 = v64;
        v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
        v80 = swift_allocObject();
        (*(v75 + 32))(v80 + v79, v77, v76);
        v81 = v210;
        v82 = v183;
        *v210 = v182;
        *(v81 + 1) = v82;
        v83 = v185;
        *(v81 + 2) = v181;
        *(v81 + 3) = v83;
        v84 = v196;
        *(v81 + 4) = v193;
        *(v81 + 5) = v84;
        *(v81 + 6) = &unk_23815C1F8;
        *(v81 + 7) = v78;
        v85 = v199;
        *(v81 + 8) = v203;
        *(v81 + 9) = v85;
        *(v81 + 10) = &unk_23815C208;
        *(v81 + 11) = v74;
        *(v81 + 12) = sub_2380EFE28;
        *(v81 + 13) = v80;
        type metadata accessor for _DDNodeDecoration.Kind(0);
        swift_storeEnumTagMultiPayload();
        v86 = sub_2381546DC();
        (*(v202 + 8))(v201, v200);
        (*(v207 + 8))(v204, v205);
        (*(v70 + 8))(v187, v72);
        v87 = type metadata accessor for _DDNodeDecoration(0);
        v88 = *(v87 + 24);
        v89 = sub_2381536AC();
        (*(*(v89 - 8) + 16))(&v81[v88], v190, v89);
        *&v81[*(v87 + 20)] = v86;
        return (*(*(v87 - 8) + 56))(v81, 0, 1, v87);
      }

      v203 = v64;

      (*(v57 + 8))(v65, v67);
      if (qword_27DEEA0B0 != -1)
      {
        swift_once();
      }

      v158 = sub_23815293C();
      __swift_project_value_buffer(v158, qword_27DEEC3F0);
      v159 = v208;
      v160 = v209;
      v161 = *(v209 + 16);
      v162 = v189;
      v161(v189, v211, v208);
      v163 = sub_23815291C();
      v164 = sub_2381550EC();
      v165 = os_log_type_enabled(v163, v164);
      v166 = v184;
      if (v165)
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v212 = v168;
        *v167 = 136315138;
        v169 = v206;
        v161(v206, v162, v159);
        v170 = *(v160 + 8);
        v170(v162, v159);
        sub_2380711D4(&qword_27DEEC548, &qword_27DEEC508, &unk_23815C190);
        v171 = sub_23815559C();
        v173 = v172;
        v170(v169, v159);
        v174 = sub_238085EAC(v171, v173, &v212);

        *(v167 + 4) = v174;
        _os_log_impl(&dword_238060000, v163, v164, "Unable to create decoration for request. DeclineAction only .text buttons are supported: %s", v167, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v168);
        MEMORY[0x2383EA8A0](v168, -1, -1);
        MEMORY[0x2383EA8A0](v167, -1, -1);

        (*(v202 + 8))(v201, v200);
        (*(v207 + 8))(v204, v205);
        (*(v184 + 8))(v187, v186);
      }

      else
      {
        (*(v160 + 8))(v162, v159);

        (*(v202 + 8))(v201, v200);
        (*(v207 + 8))(v204, v205);
        (*(v166 + 8))(v66, v186);
      }
    }

    else
    {

      (*(v57 + 8))(v55, v56);
      if (qword_27DEEA0B0 != -1)
      {
        swift_once();
      }

      v141 = sub_23815293C();
      __swift_project_value_buffer(v141, qword_27DEEC3F0);
      v143 = v208;
      v142 = v209;
      v144 = *(v209 + 16);
      v145 = v193;
      v144(v193, v211, v208);
      v146 = sub_23815291C();
      v147 = sub_2381550EC();
      v148 = os_log_type_enabled(v146, v147);
      v149 = v184;
      if (v148)
      {
        v150 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        v212 = v211;
        *v150 = 136315138;
        v151 = v206;
        v144(v206, v145, v143);
        v152 = *(v142 + 8);
        v152(v145, v143);
        sub_2380711D4(&qword_27DEEC548, &qword_27DEEC508, &unk_23815C190);
        v153 = sub_23815559C();
        v155 = v154;
        v152(v151, v143);
        v156 = sub_238085EAC(v153, v155, &v212);

        *(v150 + 4) = v156;
        _os_log_impl(&dword_238060000, v146, v147, "Unable to create decoration for request. AcceptAction only .text buttons are supported: %s", v150, 0xCu);
        v157 = v211;
        __swift_destroy_boxed_opaque_existential_1(v211);
        MEMORY[0x2383EA8A0](v157, -1, -1);
        MEMORY[0x2383EA8A0](v150, -1, -1);
      }

      else
      {
        (*(v142 + 8))(v145, v143);
      }

      (*(v202 + 8))(v201, v200);
      (*(v207 + 8))(v204, v205);
      (*(v149 + 8))(v187, v186);
    }
  }

  else
  {

    v123 = *(v47 + 8);
    v207 = v47 + 8;
    v203 = v123;
    (v123)(v51, v49);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v124 = sub_23815293C();
    __swift_project_value_buffer(v124, qword_27DEEC3F0);
    v125 = v208;
    v126 = v209;
    v127 = *(v209 + 16);
    v128 = v195;
    v127(v195, v211, v208);
    v129 = sub_23815291C();
    v130 = sub_2381550EC();
    v131 = os_log_type_enabled(v129, v130);
    v132 = v184;
    if (v131)
    {
      v133 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v212 = v211;
      *v133 = 136315138;
      v134 = v206;
      v127(v206, v128, v125);
      v135 = *(v126 + 8);
      v135(v128, v125);
      sub_2380711D4(&qword_27DEEC548, &qword_27DEEC508, &unk_23815C190);
      v136 = sub_23815559C();
      v138 = v137;
      v135(v134, v125);
      v139 = sub_238085EAC(v136, v138, &v212);

      *(v133 + 4) = v139;
      _os_log_impl(&dword_238060000, v129, v130, "Unable to create decoration for request. Only .single actions are supported: %s", v133, 0xCu);
      v140 = v211;
      __swift_destroy_boxed_opaque_existential_1(v211);
      MEMORY[0x2383EA8A0](v140, -1, -1);
      MEMORY[0x2383EA8A0](v133, -1, -1);
    }

    else
    {
      (*(v126 + 8))(v128, v125);
    }

    (v203)(v204, v205);
    (*(v132 + 8))(v187, v186);
  }

LABEL_37:
  v175 = type metadata accessor for _DDNodeDecoration(0);
  return (*(*(v175 - 8) + 56))(v210, 1, 1, v175);
}

uint64_t sub_2380DAF6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v190 = a2;
  v210 = a3;
  v211 = a1;
  v3 = sub_2381536CC();
  v197 = *(v3 - 8);
  v198 = v3;
  v4 = *(v197 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v194 = (&v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v196 = (&v176 - v7);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
  v202 = *(v200 - 8);
  v8 = *(v202 + 64);
  v9 = MEMORY[0x28223BE20](v200);
  v192 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v10;
  MEMORY[0x28223BE20](v9);
  v201 = &v176 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC500, &unk_23815E6B0);
  v209 = *(v12 - 8);
  v13 = *(v209 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v203 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v189 = &v176 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v206 = &v176 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v193 = &v176 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v195 = &v176 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v176 - v23;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC570, &qword_23815C228);
  v207 = *(v205 - 8);
  v25 = *(v207 + 64);
  v26 = MEMORY[0x28223BE20](v205);
  v199 = &v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v204 = &v176 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC578, &qword_23815C230);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v176 - v32);
  v34 = sub_23815361C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v188 = &v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v176 - v38;
  v208 = v12;
  sub_23815365C();
  if ((*(v30 + 88))(v33, v29) != *MEMORY[0x277D54B90])
  {
    (*(v30 + 8))(v33, v29);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v91 = sub_23815293C();
    __swift_project_value_buffer(v91, qword_27DEEC3F0);
    v93 = v208;
    v92 = v209;
    v94 = *(v209 + 16);
    v94(v24, v211, v208);
    v95 = sub_23815291C();
    v96 = sub_2381550EC();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v212 = v98;
      *v97 = 136315138;
      v99 = v206;
      v94(v206, v24, v93);
      v100 = *(v92 + 8);
      v100(v24, v93);
      sub_2380711D4(&qword_27DEEC580, &qword_27DEEC500, &unk_23815E6B0);
      v101 = sub_23815559C();
      v103 = v102;
      v100(v99, v93);
      v104 = sub_238085EAC(v101, v103, &v212);

      *(v97 + 4) = v104;
      _os_log_impl(&dword_238060000, v95, v96, "Unable to create decoration for request. intervention stlye not supported: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x2383EA8A0](v98, -1, -1);
      MEMORY[0x2383EA8A0](v97, -1, -1);
    }

    else
    {
      (*(v92 + 8))(v24, v93);
    }

    goto LABEL_37;
  }

  (*(v30 + 96))(v33, v29);
  v40 = v33[1];
  v182 = *v33;
  v41 = v33[3];
  v181 = v33[2];
  v42 = v33[4];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC588, &qword_23815C238);
  v44 = *(v35 + 32);
  v45 = v33 + *(v43 + 80);
  v180 = v35 + 32;
  v179 = v44;
  v44(v39, v45, v34);
  v46 = *(v42 + 16);
  v186 = v34;
  v187 = v39;
  if (!v46)
  {
    v105 = v39;

LABEL_16:
    v106 = v209;
    v107 = v203;
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v108 = sub_23815293C();
    __swift_project_value_buffer(v108, qword_27DEEC3F0);
    v109 = *(v106 + 16);
    v110 = v208;
    v109(v107, v211, v208);
    v111 = sub_23815291C();
    v112 = sub_2381550EC();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v211 = v111;
      v114 = v113;
      v115 = swift_slowAlloc();
      v212 = v115;
      *v114 = 136315138;
      LODWORD(v207) = v112;
      v116 = v206;
      v109(v206, v107, v110);
      v117 = *(v106 + 8);
      v117(v107, v110);
      sub_2380711D4(&qword_27DEEC580, &qword_27DEEC500, &unk_23815E6B0);
      v118 = sub_23815559C();
      v120 = v119;
      v117(v116, v110);
      v121 = sub_238085EAC(v118, v120, &v212);

      *(v114 + 4) = v121;
      v122 = v211;
      _os_log_impl(&dword_238060000, v211, v207, "Unable to create decoration for request. Too many actions: %s", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v115);
      MEMORY[0x2383EA8A0](v115, -1, -1);
      MEMORY[0x2383EA8A0](v114, -1, -1);

      (*(v35 + 8))(v187, v186);
    }

    else
    {
      (*(v106 + 8))(v107, v110);

      (*(v35 + 8))(v105, v34);
    }

    goto LABEL_37;
  }

  v185 = v41;
  v183 = v40;
  v184 = v35;
  v47 = v207;
  v48 = *(v207 + 16);
  v50 = v204;
  v49 = v205;
  v48(v204, v42 + ((*(v207 + 80) + 32) & ~*(v207 + 80)), v205);

  if (v46 != 1)
  {
    (*(v47 + 8))(v50, v49);

    v35 = v184;
    v34 = v186;
    v105 = v187;
    goto LABEL_16;
  }

  v51 = v199;
  v48(v199, v50, v49);
  if ((*(v47 + 88))(v51, v49) == *MEMORY[0x277D54B60])
  {
    (*(v47 + 96))(v51, v49);
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC590, &qword_23815C240) + 48);
    v53 = v200;
    v203 = *(v202 + 32);
    (v203)(v201, v51, v200);
    v54 = sub_2381527EC();
    (*(*(v54 - 8) + 8))(&v51[v52], v54);
    v55 = v196;
    sub_23815356C();
    v57 = v197;
    v56 = v198;
    v199 = *(v197 + 88);
    v58 = (v199)(v55, v198);
    if (v58 == *MEMORY[0x277D54BF0])
    {
      v59 = *(v57 + 96);
      LODWORD(v195) = v58;
      v178 = v57 + 96;
      v177 = v59;
      v59(v55, v56);
      v60 = v55[1];
      v193 = *v55;
      v196 = v60;
      v61 = v202 + 16;
      v62 = v192;
      (*(v202 + 16))(v192, v201, v53);
      v63 = (*(v61 + 64) + 16) & ~*(v61 + 64);
      v64 = swift_allocObject();
      (v203)(v64 + v63, v62, v53);
      v65 = v194;
      v66 = v187;
      sub_2381535EC();
      v67 = v198;
      v68 = (v199)(v65, v198);
      if (v68 == v195)
      {
        v177(v65, v67);
        v69 = v65[1];
        v203 = *v65;
        v199 = v69;
        v70 = v184;
        v71 = v188;
        v72 = v186;
        (*(v184 + 16))(v188, v66, v186);
        v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
        v74 = swift_allocObject();
        v179(v74 + v73, v71, v72);
        v76 = v208;
        v75 = v209;
        v77 = v206;
        (*(v209 + 16))(v206, v211, v208);
        v78 = v64;
        v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
        v80 = swift_allocObject();
        (*(v75 + 32))(v80 + v79, v77, v76);
        v81 = v210;
        v82 = v183;
        *v210 = v182;
        *(v81 + 1) = v82;
        v83 = v185;
        *(v81 + 2) = v181;
        *(v81 + 3) = v83;
        v84 = v196;
        *(v81 + 4) = v193;
        *(v81 + 5) = v84;
        *(v81 + 6) = &unk_23815C250;
        *(v81 + 7) = v78;
        v85 = v199;
        *(v81 + 8) = v203;
        *(v81 + 9) = v85;
        *(v81 + 10) = &unk_23815C258;
        *(v81 + 11) = v74;
        *(v81 + 12) = sub_2380F012C;
        *(v81 + 13) = v80;
        type metadata accessor for _DDNodeDecoration.Kind(0);
        swift_storeEnumTagMultiPayload();
        v86 = sub_2381546DC();
        (*(v202 + 8))(v201, v200);
        (*(v207 + 8))(v204, v205);
        (*(v70 + 8))(v187, v72);
        v87 = type metadata accessor for _DDNodeDecoration(0);
        v88 = *(v87 + 24);
        v89 = sub_2381536AC();
        (*(*(v89 - 8) + 16))(&v81[v88], v190, v89);
        *&v81[*(v87 + 20)] = v86;
        return (*(*(v87 - 8) + 56))(v81, 0, 1, v87);
      }

      v203 = v64;

      (*(v57 + 8))(v65, v67);
      if (qword_27DEEA0B0 != -1)
      {
        swift_once();
      }

      v158 = sub_23815293C();
      __swift_project_value_buffer(v158, qword_27DEEC3F0);
      v159 = v208;
      v160 = v209;
      v161 = *(v209 + 16);
      v162 = v189;
      v161(v189, v211, v208);
      v163 = sub_23815291C();
      v164 = sub_2381550EC();
      v165 = os_log_type_enabled(v163, v164);
      v166 = v184;
      if (v165)
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v212 = v168;
        *v167 = 136315138;
        v169 = v206;
        v161(v206, v162, v159);
        v170 = *(v160 + 8);
        v170(v162, v159);
        sub_2380711D4(&qword_27DEEC580, &qword_27DEEC500, &unk_23815E6B0);
        v171 = sub_23815559C();
        v173 = v172;
        v170(v169, v159);
        v174 = sub_238085EAC(v171, v173, &v212);

        *(v167 + 4) = v174;
        _os_log_impl(&dword_238060000, v163, v164, "Unable to create decoration for request. DeclineAction only .text buttons are supported: %s", v167, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v168);
        MEMORY[0x2383EA8A0](v168, -1, -1);
        MEMORY[0x2383EA8A0](v167, -1, -1);

        (*(v202 + 8))(v201, v200);
        (*(v207 + 8))(v204, v205);
        (*(v184 + 8))(v187, v186);
      }

      else
      {
        (*(v160 + 8))(v162, v159);

        (*(v202 + 8))(v201, v200);
        (*(v207 + 8))(v204, v205);
        (*(v166 + 8))(v66, v186);
      }
    }

    else
    {

      (*(v57 + 8))(v55, v56);
      if (qword_27DEEA0B0 != -1)
      {
        swift_once();
      }

      v141 = sub_23815293C();
      __swift_project_value_buffer(v141, qword_27DEEC3F0);
      v143 = v208;
      v142 = v209;
      v144 = *(v209 + 16);
      v145 = v193;
      v144(v193, v211, v208);
      v146 = sub_23815291C();
      v147 = sub_2381550EC();
      v148 = os_log_type_enabled(v146, v147);
      v149 = v184;
      if (v148)
      {
        v150 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        v212 = v211;
        *v150 = 136315138;
        v151 = v206;
        v144(v206, v145, v143);
        v152 = *(v142 + 8);
        v152(v145, v143);
        sub_2380711D4(&qword_27DEEC580, &qword_27DEEC500, &unk_23815E6B0);
        v153 = sub_23815559C();
        v155 = v154;
        v152(v151, v143);
        v156 = sub_238085EAC(v153, v155, &v212);

        *(v150 + 4) = v156;
        _os_log_impl(&dword_238060000, v146, v147, "Unable to create decoration for request. AcceptAction only .text buttons are supported: %s", v150, 0xCu);
        v157 = v211;
        __swift_destroy_boxed_opaque_existential_1(v211);
        MEMORY[0x2383EA8A0](v157, -1, -1);
        MEMORY[0x2383EA8A0](v150, -1, -1);
      }

      else
      {
        (*(v142 + 8))(v145, v143);
      }

      (*(v202 + 8))(v201, v200);
      (*(v207 + 8))(v204, v205);
      (*(v149 + 8))(v187, v186);
    }
  }

  else
  {

    v123 = *(v47 + 8);
    v207 = v47 + 8;
    v203 = v123;
    (v123)(v51, v49);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v124 = sub_23815293C();
    __swift_project_value_buffer(v124, qword_27DEEC3F0);
    v125 = v208;
    v126 = v209;
    v127 = *(v209 + 16);
    v128 = v195;
    v127(v195, v211, v208);
    v129 = sub_23815291C();
    v130 = sub_2381550EC();
    v131 = os_log_type_enabled(v129, v130);
    v132 = v184;
    if (v131)
    {
      v133 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v212 = v211;
      *v133 = 136315138;
      v134 = v206;
      v127(v206, v128, v125);
      v135 = *(v126 + 8);
      v135(v128, v125);
      sub_2380711D4(&qword_27DEEC580, &qword_27DEEC500, &unk_23815E6B0);
      v136 = sub_23815559C();
      v138 = v137;
      v135(v134, v125);
      v139 = sub_238085EAC(v136, v138, &v212);

      *(v133 + 4) = v139;
      _os_log_impl(&dword_238060000, v129, v130, "Unable to create decoration for request. Only .single actions are supported: %s", v133, 0xCu);
      v140 = v211;
      __swift_destroy_boxed_opaque_existential_1(v211);
      MEMORY[0x2383EA8A0](v140, -1, -1);
      MEMORY[0x2383EA8A0](v133, -1, -1);
    }

    else
    {
      (*(v126 + 8))(v128, v125);
    }

    (v203)(v204, v205);
    (*(v132 + 8))(v187, v186);
  }

LABEL_37:
  v175 = type metadata accessor for _DDNodeDecoration(0);
  return (*(*(v175 - 8) + 56))(v210, 1, 1, v175);
}