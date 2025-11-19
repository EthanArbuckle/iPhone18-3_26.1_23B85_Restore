uint64_t sub_197416704(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x1EEE6A200](a1, a2);
    }

    v5 = sub_1974F6334(a2, v2);
    return v5 & 1;
  }

  if (v3)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = sub_1974F6334(v4, a1);
    return v5 & 1;
  }

  if (a1 == a2)
  {
LABEL_52:
    v5 = 1;
    return v5 & 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_54:
    v5 = 0;
    return v5 & 1;
  }

  v6 = 0;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  if (!v10)
  {
    goto LABEL_24;
  }

  do
  {
    v13 = __clz(__rbit64(v10));
    v41 = (v10 - 1) & v10;
LABEL_29:
    v42 = a1;
    v16 = *(*(a1 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = *(v2 + 40);
    sub_197522A5C();
    swift_beginAccess();
    v18 = v16[2];
    v19 = v16[3];

    sub_19752180C();

    v20 = sub_197522A9C();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    if (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_53:

      goto LABEL_54;
    }

    v39 = v11;
    v40 = v7;
    v23 = ~v21;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    while (1)
    {
      v24 = *(*(v2 + 48) + 8 * v22);
      swift_beginAccess();
      v25 = v24[2] == v16[2] && v24[3] == v16[3];
      if (!v25 && (sub_19752282C() & 1) == 0)
      {
        goto LABEL_32;
      }

      swift_beginAccess();
      v26 = v24[6];
      v27 = v16[6];
      if (v26)
      {
        if (!v27)
        {
          goto LABEL_32;
        }

        v28 = v24[5] == v16[5] && v26 == v27;
        if (!v28 && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v27)
      {
        goto LABEL_32;
      }

      swift_beginAccess();
      v29 = v24[10];
      v30 = v16[10];

      v31 = sub_197415D98(v29, v30);

      if (v31)
      {
        swift_beginAccess();
        v32 = v24[11];
        v33 = v16[11];

        v34 = sub_19741616C(v32, v33);

        if (v34)
        {
          break;
        }
      }

LABEL_32:
      v22 = (v22 + 1) & v23;
      if (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    swift_beginAccess();
    v35 = v24[4];
    v36 = v16[4];

    v37 = sub_197416704(v35, v36);

    if ((v37 & 1) == 0)
    {
      goto LABEL_32;
    }

    v10 = v41;
    a1 = v42;
    v11 = v39;
    v7 = v40;
  }

  while (v41);
LABEL_24:
  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_52;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v41 = (v15 - 1) & v15;
      goto LABEL_29;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6A200](a1, a2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ModelConfiguration.validate()()
{
  v1 = sub_197520BCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197520BBC();
  v7 = (v0 + *(type metadata accessor for ModelConfiguration() + 20));
  v8 = *v7;
  v9 = v7[1];
  if (sub_19752181C() > 255)
  {
    if (qword_1EAF2AD48 != -1)
    {
      swift_once();
    }

    v10 = &byte_1EAF2B758;
LABEL_9:
    v12 = *v10;
    v14 = *(v10 + 1);
    v13 = *(v10 + 2);
    sub_19744BE3C();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    *(v15 + 16) = v13;

    swift_willThrow();
    goto LABEL_10;
  }

  v16[0] = v8;
  v16[1] = v9;
  sub_197416D54();
  sub_197521FAC();
  if ((v11 & 1) == 0)
  {
    if (qword_1EAF2AD50 != -1)
    {
      swift_once();
    }

    v10 = &byte_1EAF2B770;
    goto LABEL_9;
  }

LABEL_10:
  (*(v2 + 8))(v6, v1);
}

unint64_t sub_197416D54()
{
  result = qword_1ED7C9BB0;
  if (!qword_1ED7C9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C9BB0);
  }

  return result;
}

uint64_t sub_197416DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for Schema.Entity();
  v13 = sub_1973FDF38(a1, a12);
  swift_beginAccess();
  v14 = *(v13 + 88);
  if ((v14 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_1973FA5E0(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v14 = v42;
    v15 = v43;
    v16 = v44;
    v17 = v45;
    v18 = v46;
  }

  else
  {
    v19 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v14 + 56);

    v17 = 0;
  }

  v22 = (v16 + 64) >> 6;
  if (v14 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v23 = v17;
  v24 = v18;
  v25 = v17;
  if (v18)
  {
LABEL_12:
    v26 = (v24 - 1) & v24;
    v27 = *(*(v14 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

    if (!v27)
    {
LABEL_23:
      sub_1974171EC();
    }

    while (1)
    {
      swift_beginAccess();
      v28 = *(v27 + 48);
      if (!v28)
      {
        break;
      }

      v29 = *v28;

      v30 = sub_197521FFC();
      v31 = swift_conformsToProtocol2();
      if (v31)
      {
        v32 = v30 == 0;
      }

      else
      {
        v32 = 1;
      }

      if (v32)
      {
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197525FF0);
        sub_19752202C();
        sub_19752235C();
        goto LABEL_27;
      }

      sub_197456578(v30, a2, a3, v28, a4, a5 & 1, a6, a7, a8, v27, a9, a10, v30, a11, a12, v31);

      v17 = v25;
      v18 = v26;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_19752212C())
      {
        type metadata accessor for Schema.Relationship();
        swift_dynamicCast();
        v27 = v41;
        v25 = v17;
        v26 = v18;
        if (v41)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  else
  {
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_23;
      }

      v24 = *(v15 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197526430);
  type metadata accessor for Schema.Relationship();
  sub_19752235C();
LABEL_27:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974171F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B178, &qword_19752D308);
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = 16 * (v18 | (v9 << 6));
      v32 = *(*(v5 + 48) + v21);
      v33 = *(*(v5 + 56) + v21);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v32);
      result = sub_197522A9C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      *(*(v8 + 48) + v17) = v32;
      *(*(v8 + 56) + v17) = v33;
      ++*(v8 + 16);
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1974174A8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1974153A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v25 = v2 + 32;
  v24[0] = v2 + 32;
  v24[1] = v4;
  v5 = sub_1975227BC();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = v25;
      do
      {
        v12 = *(v25 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          swift_beginAccess();
          v16 = *(v12 + 16);
          v17 = *(v12 + 24);
          swift_beginAccess();
          if (v16 == *(v15 + 16) && v17 == *(v15 + 24))
          {
            break;
          }

          if ((sub_19752282C() & 1) == 0)
          {
            break;
          }

          v19 = *v14;
          v12 = v14[1];
          *v14 = v12;
          v14[1] = v19;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for Schema.Entity();
      v8 = sub_197521A2C();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v23[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v23[1] = v7;
    sub_1974DA300(v23, v22, v24, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1975222AC();
}

uint64_t sub_197417660(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1975221AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_197522A5C();
      swift_beginAccess();
      v22 = *(v20 + 16);
      v23 = *(v20 + 24);

      sub_19752180C();

      result = sub_197522A9C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v5 + 32);
    if (v31 >= 64)
    {
      bzero((v5 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    v4 = v32;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1974178DC(uint64_t a1)
{
  v1 = a1;
  v11 = a1;
  if (swift_conformsToProtocol2() && v1)
  {
    do
    {
      sub_1973F732C(v1, &v11);
      v1 = v11;
      if (swift_conformsToProtocol2())
      {
        v2 = v1 == 0;
      }

      else
      {
        v2 = 1;
      }
    }

    while (!v2);
  }

  v11 = v1;
  if (swift_conformsToProtocol2() && v1)
  {
    do
    {
      sub_1973F732C(v1, &v11);
      v1 = v11;
      if (swift_conformsToProtocol2())
      {
        v3 = v1 == 0;
      }

      else
      {
        v3 = 1;
      }
    }

    while (!v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v4 = sub_1975214EC();
  v5 = sub_1975214EC();
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_26:
    if (swift_conformsToProtocol2() && v1)
    {
      return v1;
    }

    goto LABEL_30;
  }

  if (!v5 || v4 != v5)
  {
    goto LABEL_26;
  }

LABEL_18:
  v6 = sub_1975214DC();
  if (v7 < 1)
  {
    __break(1u);
LABEL_30:
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_1975221EC();

    v11 = 0xD00000000000001ELL;
    v12 = 0x800000019752A080;
    v10 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v10);

    goto LABEL_31;
  }

  v1 = *v6;
  if (swift_conformsToProtocol2())
  {
    v8 = v1 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    return v1;
  }

LABEL_31:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197417B28(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1975220FC();

    if (v8)
    {

      type metadata accessor for Schema.Attribute();
      swift_dynamicCast();
      result = 0;
      *a1 = v39;
      return result;
    }

    result = sub_1975220EC();
    if (__OFADD__(result, 1))
    {
      goto LABEL_47;
    }

    v33 = sub_19747DC14(v7, result + 1, &qword_1EAF2B350, &qword_19752D4F8, type metadata accessor for Schema.Attribute);
    v34 = *(v33 + 16);
    if (*(v33 + 24) <= v34)
    {
      sub_197417660(v34 + 1, &qword_1EAF2B350, &qword_19752D4F8);
    }

    sub_19747EC28(v35, v33);

    *v3 = v33;
    *a1 = a2;
    return 1;
  }

  v36 = v2;
  v10 = *(v6 + 40);
  sub_197522A5C();
  swift_beginAccess();
  v11 = a2[2];
  v12 = a2[3];

  sub_19752180C();

  v13 = sub_197522A9C();
  v14 = -1 << *(v6 + 32);
  v15 = v13 & ~v14;
  if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_38:
    v30 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v36;

    sub_197418180(v32, v15, isUniquelyReferenced_nonNull_native);
    *v36 = v38;
    *a1 = a2;
    return 1;
  }

  v16 = ~v14;
  v17 = *(v6 + 48);
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    v18 = *(v17 + 8 * v15);
    swift_beginAccess();
    v19 = v18[2] == a2[2] && v18[3] == a2[3];
    if (!v19 && (sub_19752282C() & 1) == 0)
    {
      goto LABEL_10;
    }

    result = swift_beginAccess();
    v20 = v18[6];
    v21 = a2[6];
    v22 = *(v20 + 16);
    if (v22 != *(v21 + 16))
    {
      goto LABEL_10;
    }

    if (v22 && v20 != v21)
    {
      break;
    }

LABEL_9:
    swift_beginAccess();
    if (v18[7] == a2[7])
    {

      *a1 = *(*(v6 + 48) + 8 * v15);

      return 0;
    }

LABEL_10:
    v15 = (v15 + 1) & v16;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v24 = (v21 + 68);
  v25 = (v20 + 68);
  while (v22)
  {
    if (*(v25 - 4) != *(v24 - 4))
    {
      goto LABEL_10;
    }

    if ((*(v25 - 2) ^ *(v24 - 2)))
    {
      goto LABEL_10;
    }

    if ((*v25 ^ *v24))
    {
      goto LABEL_10;
    }

    if ((*(v25 - 3) ^ *(v24 - 3)))
    {
      goto LABEL_10;
    }

    if ((*(v25 - 1) ^ *(v24 - 1)))
    {
      goto LABEL_10;
    }

    v26 = *(v25 - 36);
    v27 = *(v24 - 36);
    if ((v26 ^ v27))
    {
      goto LABEL_10;
    }

    if ((v26 & v27) == 1)
    {
      v28 = *(v25 - 12);
      v29 = *(v24 - 12);
      if (v28)
      {
        if (!v29)
        {
          goto LABEL_10;
        }

        result = *(v25 - 20);
        if (result != *(v24 - 20) || v28 != v29)
        {
          result = sub_19752282C();
          if ((result & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else if (v29)
      {
        goto LABEL_10;
      }
    }

    v25 += 40;
    v24 += 40;
    if (!--v22)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_197417F30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1975221AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_197522A5C();
      swift_beginAccess();
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);

      sub_19752180C();

      result = sub_197522A9C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v30;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_197418180(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_197417660(v7 + 1, &qword_1EAF2B350, &qword_19752D4F8);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_19747FE44(&qword_1EAF2B350, &qword_19752D4F8);
        goto LABEL_39;
      }

      sub_197417F30(v7 + 1, &qword_1EAF2B350, &qword_19752D4F8);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_197522A5C();
    swift_beginAccess();
    v11 = v6[2];
    v12 = v6[3];

    sub_19752180C();

    result = sub_197522A9C();
    v13 = v9 + 56;
    v14 = -1 << *(v9 + 32);
    a2 = result & ~v14;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      type metadata accessor for Schema.Attribute();
      v16 = *(v9 + 48);
      swift_beginAccess();
      swift_beginAccess();
      do
      {
        v17 = *(v16 + 8 * a2);
        swift_beginAccess();
        v18 = v17[2] == v6[2] && v17[3] == v6[3];
        if (v18 || (result = sub_19752282C(), (result & 1) != 0))
        {
          result = swift_beginAccess();
          v19 = v17[6];
          v20 = v6[6];
          v21 = *(v19 + 16);
          if (v21 == *(v20 + 16))
          {
            if (v21)
            {
              v22 = v19 == v20;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v23 = (v20 + 68);
              v24 = (v19 + 68);
              while (v21)
              {
                if (*(v24 - 4) != *(v23 - 4))
                {
                  goto LABEL_11;
                }

                if ((*(v24 - 2) ^ *(v23 - 2)))
                {
                  goto LABEL_11;
                }

                if ((*v24 ^ *v23))
                {
                  goto LABEL_11;
                }

                if ((*(v24 - 3) ^ *(v23 - 3)))
                {
                  goto LABEL_11;
                }

                if ((*(v24 - 1) ^ *(v23 - 1)))
                {
                  goto LABEL_11;
                }

                v25 = *(v24 - 36);
                v26 = *(v23 - 36);
                if ((v25 ^ v26))
                {
                  goto LABEL_11;
                }

                if ((v25 & v26) == 1)
                {
                  v27 = *(v24 - 12);
                  v28 = *(v23 - 12);
                  if (v27)
                  {
                    if (!v28)
                    {
                      goto LABEL_11;
                    }

                    result = *(v24 - 20);
                    if (result != *(v23 - 20) || v27 != v28)
                    {
                      result = sub_19752282C();
                      if ((result & 1) == 0)
                      {
                        goto LABEL_11;
                      }
                    }
                  }

                  else if (v28)
                  {
                    goto LABEL_11;
                  }
                }

                v24 += 40;
                v23 += 40;
                if (!--v21)
                {
                  goto LABEL_10;
                }
              }

              __break(1u);
              goto LABEL_42;
            }

LABEL_10:
            result = swift_beginAccess();
            if (v17[7] == v6[7])
            {
              goto LABEL_43;
            }
          }
        }

LABEL_11:
        a2 = (a2 + 1) & v15;
      }

      while (((*(v13 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v29 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + 8 * a2) = v6;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1975229BC();
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v32;
  }

  return result;
}

void *sub_1974184F4()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v0[4];
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_1973FA628(&qword_1EAF2B670, v4, type metadata accessor for Schema.Entity);
    result = sub_197521C1C();
    v3 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
    v9 = v41;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);

    v8 = 0;
  }

  v33 = v7;
  v13 = (v7 + 64) >> 6;
  v34 = v6;
  v35 = v13;
  while (v3 < 0)
  {
    if (!sub_19752212C())
    {
      return sub_197416DA8(v3, v6, v33, v8, v9);
    }

    swift_dynamicCast();
    v22 = v36;
    v20 = v8;
    v21 = v9;
    if (!v36)
    {
      return sub_197416DA8(v3, v6, v33, v8, v9);
    }

LABEL_19:
    v23 = v3;
    swift_beginAccess();
    v24 = v1[8];
    result = swift_beginAccess();
    v25 = v1[9];
    v26 = *(v25 + 16);
    v27 = v24[2];
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
      goto LABEL_35;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v28 <= v24[3] >> 1)
    {
      if (!*(v25 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v27 <= v28)
      {
        v29 = v27 + v26;
      }

      else
      {
        v29 = v27;
      }

      result = sub_1973FA494(result, v29, 1, v24);
      v24 = result;
      if (!*(v25 + 16))
      {
LABEL_8:

        if (v26)
        {
          goto LABEL_36;
        }

        goto LABEL_9;
      }
    }

    if ((v24[3] >> 1) - v24[2] < v26)
    {
      goto LABEL_37;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
    swift_arrayInitWithCopy();

    if (v26)
    {
      v30 = v24[2];
      v31 = __OFADD__(v30, v26);
      v32 = v30 + v26;
      if (v31)
      {
        goto LABEL_38;
      }

      v24[2] = v32;
    }

LABEL_9:
    swift_beginAccess();
    v14 = v22[9];
    v22[9] = v24;

    sub_1974EF18C();

    swift_weakAssign();
    swift_beginAccess();
    v15 = v1[2];
    v16 = v1[3];
    swift_beginAccess();
    v17 = v22[6];
    v22[5] = v15;
    v22[6] = v16;

    v8 = v20;
    v9 = v21;
    v3 = v23;
    v6 = v34;
    v13 = v35;
  }

  v18 = v8;
  v19 = v9;
  v20 = v8;
  if (v9)
  {
LABEL_15:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v3 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v22)
    {
      return sub_197416DA8(v3, v6, v33, v8, v9);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v13)
    {
      v9 = 0;
      return sub_197416DA8(v3, v6, v33, v8, v9);
    }

    v19 = *(v6 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1974188C0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t))
{
  v9 = v7;
  v11 = result;
  v12 = *(*v7 + 16);
  v13 = *(*v7 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v14 = a6;
    sub_197417660(v12 + 1, a4, a5);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_19747FE44(a4, a5);
      goto LABEL_12;
    }

    v14 = a6;
    sub_197417F30(v12 + 1, a4, a5);
  }

  v15 = *v7;
  v16 = *(*v7 + 40);
  sub_197522A5C();
  swift_beginAccess();
  v17 = *(v11 + 16);
  v18 = *(v11 + 24);

  sub_19752180C();

  result = sub_197522A9C();
  v19 = -1 << *(v15 + 32);
  a2 = result & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v14(0);
    do
    {
      v21 = *(*(v15 + 48) + 8 * a2);

      v23 = a7(v22, v11);

      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = *v9;
  *(*v9 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + 8 * a2) = v11;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1975229BC();
  __break(1u);
  return result;
}

uint64_t sub_197418B20()
{
  v2 = *v0;
  v3 = v0[2];

  v64.val[0] = *(v2 + 80);
  v64.val[1] = v64.val[0];
  v4 = &v61;
  v58 = v64.val[0];
  v59 = v64.val[0];
  vst2q_f64(v4, v64);
  v5 = type metadata accessor for Schema.Index.Types();
  if (sub_197521A5C())
  {
    v6 = 0;
    v57 = *&v58.f64[1];
    v53 = v3 + 32;
    v52 = v3;
    v51 = v5;
    do
    {
      v8 = sub_197521A3C();
      sub_1975219EC();
      if ((v8 & 1) == 0)
      {
        goto LABEL_62;
      }

      if (__OFADD__(v6, 1))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000031, 0x8000000197529F70);
        v63 = v1;
        sub_1975227FC();
        v50 = 0;
        v46 = 1073;
        goto LABEL_67;
      }

      v55 = v6 + 1;
      v9 = (v53 + 16 * v6);
      v10 = *(v9 + 8);
      v11 = *v9;

      v12 = sub_1973F68A4(*&v58.f64[0], v57);
      v13 = *(v12 + 16);
      if (v13)
      {
        LODWORD(v56) = v10;
        v63 = MEMORY[0x1E69E7CC0];
        sub_19741E264(0, v13, 0);
        v14 = v63;
        v54 = v12;
        v15 = v12 + 32;
        do
        {
          sub_1973F7E64(v15, &v61);
          v16 = v61;
          v1 = v62;

          sub_1973F82A8(&v61);
          v63 = v14;
          v18 = *(v14 + 16);
          v17 = *(v14 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_19741E264((v17 > 1), v18 + 1, 1);
            v14 = v63;
          }

          *(v14 + 16) = v18 + 1;
          v19 = v14 + 16 * v18;
          *(v19 + 32) = v16;
          *(v19 + 40) = v1;
          v15 += 96;
          --v13;
        }

        while (v13);

        if ((v56 & 1) == 0)
        {
LABEL_48:
          sub_19752228C();

          if (sub_197521A5C())
          {
            v35 = 0;
            while (1)
            {
              v36 = sub_197521A3C();
              sub_1975219EC();
              if (v36)
              {
                v37 = *(v11 + 8 * v35 + 32);

                v38 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_61;
                }
              }

              else
              {
                v37 = sub_19752222C();
                v38 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
LABEL_61:
                  __break(1u);
LABEL_62:
                  sub_19752222C();
                  __break(1u);
                  goto LABEL_63;
                }
              }

              v39 = sub_1973F7BBC(v37, *&v58.f64[0], v57);
              v1 = v40;
              v61 = v39;
              v62 = v40;
              MEMORY[0x1EEE9AC00](v39, v40);
              v49 = &v61;
              v41 = v60;
              v42 = sub_19741E284(sub_197508BAC, v48, v14);
              v60 = v41;
              if ((v42 & 1) == 0)
              {
                v61 = 0;
                v62 = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000031, 0x8000000197529F70);
                v63 = v37;
                sub_1975227FC();
                v50 = 0;
                v46 = 1061;
                goto LABEL_67;
              }

              v43 = *v37;
              sub_197521FFC();
              if (sub_1974138C4(v44))
              {
                v61 = 0;
                v62 = 0xE000000000000000;
                sub_1975221EC();

                v61 = 0xD00000000000002FLL;
                v62 = 0x800000019752A000;
                MEMORY[0x19A8DFF80](0x492E616D65686353, 0xEC0000007865646ELL);

                v50 = 0;
                v46 = 1066;
                goto LABEL_67;
              }

              ++v35;
              if (v38 == sub_197521A5C())
              {
                goto LABEL_4;
              }
            }
          }

          goto LABEL_4;
        }
      }

      else
      {

        v14 = MEMORY[0x1E69E7CC0];
        if ((v10 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v20 = sub_19741E330(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_19741E330((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v54 = v20;
      v23 = &v20[16 * v22];
      *(v23 + 4) = 0x656572742D72;
      *(v23 + 5) = 0xE600000000000000;
      sub_19752228C();

      if (sub_197521A5C())
      {
        v24 = 0;
        v56 = v11 + 32;
        do
        {
          v25 = sub_197521A3C();
          sub_1975219EC();
          if (v25)
          {
            v1 = *(v56 + 8 * v24);

            v26 = __OFADD__(v24++, 1);
            if (v26)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v1 = sub_19752222C();
            v26 = __OFADD__(v24++, 1);
            if (v26)
            {
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }
          }

          v61 = sub_1973F7BBC(v1, *&v58.f64[0], v57);
          v62 = v27;
          MEMORY[0x1EEE9AC00](v61, v27);
          v49 = &v61;
          v28 = v60;
          v29 = sub_19741E284(sub_19741944C, v48, v14);
          v60 = v28;

          if ((v29 & 1) == 0)
          {
            goto LABEL_64;
          }

          v30 = *v1;
          sub_197521FFC();
          v32 = v31;
          v61 = v31;
          if (swift_conformsToProtocol2() && v32)
          {
            v33 = v32;
            do
            {
              sub_1973F732C(v33, &v61);
              v33 = v61;
              if (swift_conformsToProtocol2())
              {
                v34 = v33 == 0;
              }

              else
              {
                v34 = 1;
              }
            }

            while (!v34);
          }

          if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
          {
            type metadata accessor for Decimal(0);
            if (!swift_dynamicCastMetatype())
            {
              while (1)
              {
                v61 = 0;
                v62 = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000042, 0x8000000197529FB0);
                v63 = v1;
                sub_1975227FC();
                MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
                v47 = sub_197522B8C();
                MEMORY[0x19A8DFF80](v47);

                v50 = 0;
                v46 = 1078;
LABEL_67:
                v49 = v46;
                sub_1975223EC();
                __break(1u);
              }
            }
          }
        }

        while (v24 != sub_197521A5C());
      }

LABEL_4:
      swift_bridgeObjectRelease_n();

      v7 = sub_197521A5C();
      v6 = v55;
    }

    while (v55 != v7);
  }

  return 1;
}

uint64_t sub_197419468(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_19752282C() & 1;
  }
}

uint64_t sub_1974194C0()
{
  v1 = *v0;
  v2 = v0[2];

  v46.val[0] = *(v1 + 80);
  v46.val[1] = v46.val[0];
  v3 = &v45;
  v44 = v46.val[0];
  vst2q_f64(v3, v46);
  type metadata accessor for Schema.Index.Types();
  if (sub_197521A5C())
  {
    v4 = 0;
    v42 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = sub_197521A3C();
      result = sub_1975219EC();
      if ((v6 & 1) == 0)
      {
        goto LABEL_42;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = (v42 + 16 * v4);
      v10 = *v9;
      v11 = *(v9 + 8);

      v12 = sub_19741E330(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      v15 = v14 + 1;
      v43 = v5;
      if (v11)
      {
        if (v13 >> 1 <= v14)
        {
          v12 = sub_19741E330((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v15;
        v16 = &v12[16 * v14];
        *(v16 + 4) = 0x656572742D72;
        *(v16 + 5) = 0xE600000000000000;
        sub_19752228C();

        if (sub_197521A5C())
        {
          v17 = 4;
          do
          {
            v18 = v17 - 4;
            v19 = sub_197521A3C();
            sub_1975219EC();
            if (v19)
            {
              v20 = *(v10 + 8 * v17);

              v21 = v17 - 3;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_41;
              }
            }

            else
            {
              v20 = sub_19752222C();
              v21 = v17 - 3;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_41;
              }
            }

            v22 = sub_1973F7BBC(v20, *&v44.f64[0], *&v44.f64[1]);
            v24 = v23;
            v26 = *(v12 + 2);
            v25 = *(v12 + 3);
            if (v26 >= v25 >> 1)
            {
              v12 = sub_19741E330((v25 > 1), v26 + 1, 1, v12);
            }

            *(v12 + 2) = v26 + 1;
            v27 = &v12[16 * v26];
            *(v27 + 4) = v22;
            *(v27 + 5) = v24;
            ++v17;
          }

          while (v21 != sub_197521A5C());
        }
      }

      else
      {
        if (v13 >> 1 <= v14)
        {
          v12 = sub_19741E330((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v15;
        v28 = &v12[16 * v14];
        *(v28 + 4) = 0x7972616E6962;
        *(v28 + 5) = 0xE600000000000000;
        sub_19752228C();

        if (sub_197521A5C())
        {
          v29 = 4;
          do
          {
            v30 = v29 - 4;
            v31 = sub_197521A3C();
            sub_1975219EC();
            if (v31)
            {
              v32 = *(v10 + 8 * v29);

              v33 = v29 - 3;
              if (__OFADD__(v30, 1))
              {
                goto LABEL_40;
              }
            }

            else
            {
              v32 = sub_19752222C();
              v33 = v29 - 3;
              if (__OFADD__(v30, 1))
              {
LABEL_40:
                __break(1u);
LABEL_41:
                __break(1u);
LABEL_42:
                result = sub_19752222C();
                __break(1u);
                goto LABEL_43;
              }
            }

            v34 = sub_1973F7BBC(v32, *&v44.f64[0], *&v44.f64[1]);
            v36 = v35;
            v38 = *(v12 + 2);
            v37 = *(v12 + 3);
            if (v38 >= v37 >> 1)
            {
              v12 = sub_19741E330((v37 > 1), v38 + 1, 1, v12);
            }

            *(v12 + 2) = v38 + 1;
            v39 = &v12[16 * v38];
            *(v39 + 4) = v34;
            *(v39 + 5) = v36;
            ++v29;
          }

          while (v33 != sub_197521A5C());
        }
      }

      swift_bridgeObjectRelease_n();
      v5 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_19741E43C(0, v43[2] + 1, 1, v43);
      }

      v41 = v5[2];
      v40 = v5[3];
      if (v41 >= v40 >> 1)
      {
        v5 = sub_19741E43C((v40 > 1), v41 + 1, 1, v5);
      }

      v5[2] = v41 + 1;
      v5[v41 + 4] = v12;
      v4 = v8;
      if (v8 == sub_197521A5C())
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_39:

    return v5;
  }

  return result;
}

void *sub_19741997C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_19741E43C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Schema.Attribute.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  sub_1973F9E68((v0 + 8));
  v4 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t Schema.Relationship.__deallocating_deinit()
{
  Schema.Relationship.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_197419B14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_197522A5C();
  v8 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  v9 = *(v8 + 8);
  sub_1975216BC();
  v10 = sub_197522A9C();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      sub_197414BA4(*(v6 + 48) + 40 * v12, v21);
      v14 = v22;
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      LOBYTE(v14) = sub_19749BC0C(a2, v14, v15);
      sub_197414BEC(v21);
      if (v14)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_197414BEC(a2);
    sub_197414BA4(*(v6 + 48) + 40 * v12, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_197414BA4(a2, v21);
    v20 = *v3;
    sub_197419F8C(v21, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    v18 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v18;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_197419CA8()
{
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0]);

  return sub_1975216BC();
}

uint64_t sub_197419D2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B408, &qword_19752D5C8);
  result = sub_1975221AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_197414BA4(*(v3 + 48) + 40 * (v17 | (v7 << 6)), &v31);
      v20 = *(v6 + 40);
      sub_197522A5C();
      v21 = v33;
      __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
      v22 = *(v21 + 8);
      sub_1975216BC();
      result = sub_197522A9C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v31;
      v16 = v32;
      *(v14 + 32) = v33;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v30;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_197419F8C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_19747E054(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_19747F818();
      goto LABEL_12;
    }

    sub_197419D2C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_197522A5C();
  v11 = *(v6 + 32);
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
  v12 = *(v11 + 8);
  sub_1975216BC();
  result = sub_197522A9C();
  v13 = -1 << *(v9 + 32);
  a2 = result & ~v13;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      sub_197414BA4(*(v9 + 48) + 40 * a2, v24);
      v15 = v25;
      v16 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      LOBYTE(v15) = sub_19749BC0C(v6, v15, v16);
      result = sub_197414BEC(v24);
      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48) + 40 * a2;
  v19 = *v6;
  v20 = *(v6 + 16);
  *(v18 + 32) = *(v6 + 32);
  *v18 = v19;
  *(v18 + 16) = v20;
  v21 = *(v17 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v17 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1975229BC();
  __break(1u);
  return result;
}

unint64_t sub_19741A158()
{
  result = qword_1ED7C9B78;
  if (!qword_1ED7C9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C9B78);
  }

  return result;
}

void *sub_19741A1AC(char *a1, uint64_t a2)
{
  v72 = a1;
  v3 = type metadata accessor for ModelConfiguration();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v70 - v15;
  if (qword_1ED7C9CC0 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v71 = qword_1ED7C9CC8;
    [qword_1ED7C9CC8 lock];
    if (qword_1ED7C9598 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = sub_19741AA7C(v72, qword_1ED7CE630);
    v74 = v3;
    v77 = v9;
    if (v17)
    {
      break;
    }

    swift_endAccess();
LABEL_12:
    v16 = v72;
    v29 = sub_19741AB44();
    v18 = v29;
    if (!v29)
    {
      goto LABEL_62;
    }

    v80 = *(a2 + 16);
    if (!v80)
    {
LABEL_61:
      [v18 _makeImmutable];
      swift_beginAccess();
      v68 = v18;
      sub_197420530(v68, v72);
      swift_endAccess();

      goto LABEL_62;
    }

    v30 = 0;
    v79 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v78 = *(v4 + 72);
    v81 = v29;
    v73 = v13;
    while (1)
    {
      sub_19741598C(v79 + v78 * v30, v13);
      v83 = MEMORY[0x1E69E7CC0];
      v35 = *&v13[*(v3 + 40)];
      if (!v35)
      {
        goto LABEL_17;
      }

      v76 = v30;
      v36 = *(v35 + 8);
      if (v36 >> 62)
      {
        break;
      }

      a2 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2)
      {
        goto LABEL_21;
      }

LABEL_37:

LABEL_16:
      sub_19741CD44(0, &qword_1ED7C9BA0, 0x1E695D5B8);
      v31 = sub_1975219BC();

      v32 = &v13[*(v3 + 20)];
      v33 = *v32;
      v34 = *(v32 + 1);
      v16 = sub_19752178C();
      [v18 setEntities:v31 forConfiguration:v16];

      v30 = v76;
      v9 = v77;
LABEL_17:
      ++v30;
      sub_19740B2C8(v13);
      if (v30 == v80)
      {
        v49 = 0;
        while (2)
        {
          v55 = sub_19741598C(v79 + v78 * v49, v9);
          v16 = MEMORY[0x19A8E1370](v55);
          v82 = MEMORY[0x1E69E7CC0];
          v56 = *&v9[*(v3 + 40)];
          if (!v56)
          {
            goto LABEL_41;
          }

          v75 = v16;
          v57 = *(v56 + 8);
          if (v57 >> 62)
          {
            v16 = v56;
            if (v57 < 0)
            {
              v67 = *(v56 + 8);
            }

            a2 = sub_1975220EC();
            v56 = v16;
            v76 = v49;
            if (!a2)
            {
              goto LABEL_60;
            }

LABEL_45:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v73 = v56;

            v58 = 0;
            do
            {
              if ((v57 & 0xC000000000000001) != 0)
              {
                v4 = MEMORY[0x19A8E0960](v58, v57);
              }

              else
              {
                v4 = *(v57 + 8 * v58 + 32);
              }

              v59 = [v18 entitiesByName];
              sub_19741CD44(0, &qword_1ED7C9BA0, 0x1E695D5B8);
              v60 = sub_1975215FC();

              swift_beginAccess();
              if (*(v60 + 16) && (v61 = *(v4 + 16), v13 = *(v4 + 24), , v62 = sub_1973F4028(v61, v13), v64 = v63, , (v64 & 1) != 0))
              {
                v65 = *(*(v60 + 56) + 8 * v62);

                v66 = v65;
                MEMORY[0x19A8E00D0]();
                if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1975219FC();
                }

                sub_197521A4C();
              }

              else
              {
              }

              ++v58;
              v18 = v81;
            }

            while (a2 != v58);

            v3 = v74;
          }

          else
          {
            a2 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v76 = v49;
            if (a2)
            {
              goto LABEL_45;
            }

LABEL_60:
          }

          sub_19741CD44(0, &qword_1ED7C9BA0, 0x1E695D5B8);
          v50 = sub_1975219BC();

          v9 = v77;
          v51 = &v77[*(v3 + 20)];
          v52 = *v51;
          v53 = *(v51 + 1);
          v54 = sub_19752178C();
          [v18 setEntities:v50 forConfiguration:v54];

          v16 = v75;
          v49 = v76;
LABEL_41:
          ++v49;
          sub_19740B2C8(v9);
          objc_autoreleasePoolPop(v16);
          if (v49 == v80)
          {
            goto LABEL_61;
          }

          continue;
        }
      }
    }

    v47 = v35;
    if (v36 < 0)
    {
      v48 = *(v35 + 8);
    }

    a2 = sub_1975220EC();
    v35 = v47;
    if (!a2)
    {
      goto LABEL_37;
    }

LABEL_21:
    if (a2 >= 1)
    {
      v75 = v35;

      v37 = 0;
      do
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x19A8E0960](v37, v36);
        }

        else
        {
          v38 = *(v36 + 8 * v37 + 32);
        }

        v39 = [v18 entitiesByName];
        sub_19741CD44(0, &qword_1ED7C9BA0, 0x1E695D5B8);
        v40 = sub_1975215FC();

        swift_beginAccess();
        if (*(v40 + 16))
        {
          v41 = *(v38 + 16);
          v4 = *(v38 + 24);

          v42 = sub_1973F4028(v41, v4);
          v44 = v43;

          if (v44)
          {
            v45 = *(*(v40 + 56) + 8 * v42);

            v46 = v45;
            MEMORY[0x19A8E00D0]();
            if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1975219FC();
            }

            sub_197521A4C();

            v18 = v81;
          }

          else
          {

            v18 = v81;
          }
        }

        else
        {
        }

        ++v37;
      }

      while (a2 != v37);

      v13 = v73;
      v3 = v74;
      goto LABEL_16;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  v18 = v17;
  swift_endAccess();
  v19 = *(a2 + 16);
  if (v19)
  {
    v73 = v13;
    v20 = v18;
    v21 = &v16[*(v74 + 20)];
    v22 = *(v4 + 80);
    v80 = v4;
    v81 = a2;
    v23 = a2 + ((v22 + 32) & ~v22);
    v24 = *(v4 + 72);
    while (1)
    {
      sub_19741598C(v23, v16);
      v25 = *v21;
      v26 = *(v21 + 1);

      sub_19740B2C8(v16);
      v27 = sub_19752178C();

      v28 = [v20 entitiesForConfiguration_];

      if (!v28)
      {
        break;
      }

      v23 += v24;
      if (!--v19)
      {
        v18 = v20;
        goto LABEL_62;
      }
    }

    v13 = v73;
    v3 = v74;
    v9 = v77;
    v4 = v80;
    a2 = v81;
    goto LABEL_12;
  }

LABEL_62:
  [v71 unlock];
  return v18;
}

id sub_19741AA48()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  qword_1ED7C9CC8 = result;
  return result;
}

void *sub_19741AA7C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1975223CC();

    if (v3)
    {
      sub_1974ADEC0(0, &qword_1EAF2B6B0, 0x1E695D638);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_197420114(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

uint64_t sub_19741AB44()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D638]) init];
  v83 = MEMORY[0x1E69E7CC0];
  v63 = v0;
  v2 = *(v0 + 64);
  v3 = (v2 >> 62);
  if (v2 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v60)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v69 = v2;
    if (!i)
    {
      v9 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }

    if (i < 1)
    {
      break;
    }

    v6 = 0;
    v7 = v2 & 0xC000000000000001;
    do
    {
      if (v7)
      {
        MEMORY[0x19A8E0960](v6);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      ++v6;
      sub_19741B45C(v1, &v83);

      v2 = v69;
    }

    while (i != v6);
    v9 = v83;
LABEL_12:
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 32);
      do
      {
        v12 = __swift_project_boxed_opaque_existential_0Tm_0(v11, v11[3]);
        v13 = *(v12 + 1);
        v84 = *v12;
        v85 = v13;
        v86 = v12[4];
        sub_19741EA9C(v1);
        v11 += 5;
        --v10;
      }

      while (v10);
    }

    if (v3)
    {
      v14 = v69;
      v15 = sub_1975220EC();
      if (!v15)
      {
LABEL_47:

        v49 = *(v63 + 56);
        v77 = *(v63 + 40);
        v78 = v49;
        v50 = Schema.Version.description.getter();
        v52 = v51;
        v53 = [v1 versionIdentifiers];
        v54 = sub_197521BCC();

        v81 = v54;
        v79 = v50;
        v80 = v52;
        sub_19752218C();
        sub_19741FE94(&v77, v76);
        sub_19752217C();
        sub_197420CA4(&v77);
        swift_dynamicCast();

        v55 = sub_197521BBC();

        [v1 setVersionIdentifiers_];

        v56 = [v1 entities];
        if (!v56)
        {
          sub_19741CD8C(0, &qword_1ED7C9BA0, 0x1E695D5B8);
          sub_1975219CC();
          v56 = sub_1975219BC();
        }

        v57 = sub_19752178C();
        [v1 setEntities:v56 forConfiguration:v57];

        return v1;
      }
    }

    else
    {
      v14 = v69;
      v15 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_47;
      }
    }

    v16 = 0;
    v66 = v15;
    v67 = v14 & 0xC000000000000001;
    v64 = v14 + 32;
    v65 = v14 & 0xFFFFFFFFFFFFFF8;
    v70 = v1;
    while (1)
    {
      while (1)
      {
        if (v67)
        {
          v3 = MEMORY[0x19A8E0960](v16, v14);
          v17 = __OFADD__(v16++, 1);
          if (v17)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v16 >= *(v65 + 16))
          {
            goto LABEL_54;
          }

          v3 = *(v64 + 8 * v16);

          v17 = __OFADD__(v16++, 1);
          if (v17)
          {
            goto LABEL_52;
          }
        }

        swift_beginAccess();
        if (*(v3[21] + 2))
        {
          break;
        }

        if (v16 == v15)
        {
          goto LABEL_47;
        }
      }

      v68 = v16;
      v18 = [v1 entitiesByName];
      sub_19741CD8C(0, &qword_1ED7C9BA0, 0x1E695D5B8);
      v19 = sub_1975215FC();

      swift_beginAccess();
      if (!*(v19 + 16))
      {
        goto LABEL_57;
      }

      v20 = v3[2];
      v21 = v3[3];

      v22 = sub_1973F4028(v20, v21);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        goto LABEL_57;
      }

      v75 = *(*(v19 + 56) + 8 * v22);

      v76[0] = v5;
      v25 = v3[21];
      v73 = *(v25 + 2);
      if (v73)
      {
        break;
      }

LABEL_46:
      sub_19741CD8C(0, &qword_1ED7C8688, 0x1E695D5D0);
      v47 = sub_1975219BC();
      v3 = &selRef_expressionForKeyPath_;
      [v75 setIndexes_];

      v48 = sub_1975219BC();

      [v75 setIndexes_];

      v16 = v68;
      v14 = v69;
      v15 = v66;
      if (v68 == v66)
      {
        goto LABEL_47;
      }
    }

    v72 = v25 + 32;

    v27 = 0;
    v71 = v26;
    while (v27 < *(v26 + 16))
    {
      v74 = v27;
      v82 = *&v72[8 * v27];
      *&v77 = 0xD000000000000010;
      *(&v77 + 1) = 0x800000019752A970;

      v28 = sub_19741F61C();
      v79 = v5;
      v3 = *(v82 + 16);

      if (v3)
      {
        v1 = 0;
        v29 = (v82 + 40);
        while (v1 < *(v82 + 16))
        {
          v30 = *(v29 - 1);
          v31 = *v29;

          v32 = [v75 propertiesByName];
          sub_19741CD8C(0, &qword_1ED7C9B98, 0x1E695D6D8);
          v33 = sub_1975215FC();
          if (!*(v33 + 16))
          {
            goto LABEL_53;
          }

          v34 = sub_1973F4028(v30, v31);
          if ((v35 & 1) == 0)
          {
            goto LABEL_53;
          }

          v36 = v34;

          v37 = *(*(v33 + 56) + 8 * v36);

          v38 = [objc_allocWithZone(MEMORY[0x1E695D5D8]) initWithProperty:v37 collationType:v28];

          v39 = v38;
          MEMORY[0x19A8E00D0]();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v40 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1975219FC();
          }

          v1 = (v1 + 1);
          sub_197521A4C();
          MEMORY[0x19A8DFF80](v30, v31);

          v29 += 2;
          if (v3 == v1)
          {
            v1 = v70;
            v5 = MEMORY[0x1E69E7CC0];
            goto LABEL_42;
          }
        }

        __break(1u);
        break;
      }

LABEL_42:
      swift_bridgeObjectRelease_n();
      v41 = objc_allocWithZone(MEMORY[0x1E695D5D0]);
      v42 = sub_19752178C();

      sub_19741CD8C(0, &qword_1ED7C8680, 0x1E695D5D8);
      v43 = sub_1975219BC();

      v44 = [v41 initWithName:v42 elements:v43];

      v45 = v44;
      MEMORY[0x19A8E00D0]();
      if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1975219FC();
      }

      v27 = v74 + 1;
      sub_197521A4C();

      v26 = v71;
      if (v74 + 1 == v73)
      {

        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v59 = v2;
    v60 = sub_1975220EC();
    v2 = v59;
  }

  __break(1u);
LABEL_57:

  sub_1975221EC();

  *&v77 = 0xD000000000000026;
  *(&v77 + 1) = 0x800000019752A940;
  v61 = v3[2];
  v62 = v3[3];

  MEMORY[0x19A8DFF80](v61, v62);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

void sub_19741B45C(void *a1, uint64_t a2)
{
  v176 = a2;
  v171 = *v2;
  v174 = a1;
  v186 = sub_19741CB20(a1, v2);
  swift_beginAccess();
  v3 = v2[8];
  v4 = *(v3 + 16);

  v181 = v2;
  swift_beginAccess();
  v185 = v4;
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    v184 = v3;
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_121;
      }

      v8 = v7;
      sub_197413C58(v6, &v195);
      v9 = v181[15];
      v10 = v197;
      v11 = v198;
      __swift_project_boxed_opaque_existential_0Tm_0(&v195, v197);
      v12 = *(v11 + 32);

      v13 = v12(v10, v11);
      if (!*(v9 + 16))
      {
        break;
      }

      sub_1973F4028(v13, v14);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0Tm_1(&v195);
      v7 = v8;
      v3 = v184;
LABEL_4:
      ++v5;
      v6 += 40;
      if (v185 == v5)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    sub_19741CB08(&v195, &v192);
    v17 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v202[0] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1974F6610(0, *(v8 + 16) + 1, 1);
      v17 = v202[0];
    }

    v3 = v184;
    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1974F6610((v19 > 1), v20 + 1, 1);
    }

    v21 = *(&v193 + 1);
    v22 = v194;
    v23 = __swift_mutable_project_boxed_opaque_existential_1(&v192, *(&v193 + 1));
    v24 = *(*(v21 - 8) + 64);
    MEMORY[0x1EEE9AC00](v23, v23);
    v26 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26);
    sub_19750FADC(v20, v26, v202, v21, v22);
    __swift_destroy_boxed_opaque_existential_0Tm_1(&v192);
    v7 = v202[0];
    goto LABEL_4;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

  v28 = *(v7 + 16);
  swift_beginAccess();
  v179 = v28;
  v180 = v7;
  if (v28)
  {
    v29 = 0;
    v172 = 0;
    v178 = v7 + 32;
    v173 = xmmword_19752C280;
    while (1)
    {
      if (v29 >= *(v7 + 16))
      {
        goto LABEL_123;
      }

      sub_197413C58(v178 + 40 * v29, v202);
      sub_197413C58(v202, &v195);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C190, &qword_197534060);
      if (!swift_dynamicCast())
      {
        goto LABEL_127;
      }

      sub_19741CB08(&v192, v199);
      sub_197413C58(v199, &v195);
      type metadata accessor for Schema.CompositeAttribute();
      v31 = swift_dynamicCast();
      v182 = v29;
      if (v31)
      {
        break;
      }

      v43 = v200;
      v44 = v201;
      __swift_mutable_project_boxed_opaque_existential_1(v199, v200);
      v45 = (*(v44 + 8))(v176, v43, v44);
      if (!v45)
      {
        goto LABEL_129;
      }

      v46 = v45;
      [v45 set:1 swiftDataPropertyFlags:v171];
      if ([v46 isIndexedBySpotlight])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB90, &unk_197534070);
        v47 = swift_allocObject();
        *(v47 + 16) = v173;
        v48 = v186;
        v49 = [v186 name];
        if (!v49)
        {
          goto LABEL_126;
        }

        v50 = v49;
        sub_19741CD8C(0, &qword_1EAF2AA78, 0x1E696ABC8);
        v51 = sub_1975217BC();
        v53 = v52;

        *(v47 + 56) = MEMORY[0x1E69E6158];
        *(v47 + 64) = sub_19750FDC0();
        *(v47 + 32) = v51;
        *(v47 + 40) = v53;
        v54 = sub_197521DAC();
        [v48 setCoreSpotlightDisplayNameExpression_];
      }

      v55 = [v186 properties];
      v56 = sub_19741CD8C(0, &qword_1ED7C9B98, 0x1E695D6D8);
      v57 = sub_1975219CC();

      v177 = v56;
      v183 = v57 & 0xFFFFFFFFFFFFFF8;
      if (v57 >> 62)
      {
        v185 = sub_1975220EC();
      }

      else
      {
        v185 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = 0;
      v184 = v57 & 0xC000000000000001;
      while (1)
      {
        if (v185 == v58)
        {

          v71 = v46;
          v72 = v186;
          v73 = [v186 properties];
          v74 = sub_1975219CC();

          *&v195 = v74;
          MEMORY[0x19A8E00D0]();
          v30 = v182;
          if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v98 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1975219FC();
          }

          sub_197521A4C();
          v75 = sub_1975219BC();

          [v72 setProperties_];

          __swift_destroy_boxed_opaque_existential_0Tm_1(v202);
          v7 = v180;
          goto LABEL_21;
        }

        if (v184)
        {
          v60 = MEMORY[0x19A8E0960](v58, v57);
        }

        else
        {
          if (v58 >= *(v183 + 16))
          {
            goto LABEL_120;
          }

          v60 = *(v57 + 8 * v58 + 32);
        }

        v61 = v60;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_119;
        }

        v62 = [v60 name];
        v63 = sub_1975217BC();
        v65 = v64;

        v66 = v46;
        v67 = [v46 name];
        v68 = sub_1975217BC();
        v70 = v69;

        if (v63 == v68 && v65 == v70)
        {
          break;
        }

        v59 = sub_19752282C();

        ++v58;
        v46 = v66;
        if (v59)
        {
          goto LABEL_52;
        }
      }

      v46 = v66;
LABEL_52:
      __swift_destroy_boxed_opaque_existential_0Tm_1(v202);

LABEL_20:
      v7 = v180;
      v30 = v182;
LABEL_21:
      v29 = v30 + 1;
      __swift_destroy_boxed_opaque_existential_0Tm_1(v199);
      if (v29 == v179)
      {
        goto LABEL_76;
      }
    }

    v32 = v192;
    v33 = sub_19750E9D4();
    if (!v33)
    {
LABEL_129:
      *&v195 = 0;
      *(&v195 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x800000019752AA90);
      sub_19752235C();
      goto LABEL_130;
    }

    v34 = v33;
    [v34 set:1 swiftDataPropertyFlags:?];
    swift_beginAccess();
    sub_197413B20(v32 + 64, &v195);
    v35 = v186;
    v177 = v32;
    if (v197)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5C8, &unk_19752EA10);
      if (swift_dynamicCast())
      {
        if (*(&v193 + 1))
        {
          sub_19749B314(&v192, &v195);
          v36 = v181[2];
          v37 = v181[3];
          v38 = type metadata accessor for CompositeEncoder();
          v39 = swift_allocObject();
          v40 = MEMORY[0x1E69E7CC0];
          v39[4] = MEMORY[0x1E69E7CC0];

          v39[5] = sub_197441730(v40);
          v41 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
          v39[2] = v36;
          v39[3] = v37;
          v39[6] = v32;
          v39[7] = v41;
          __swift_project_boxed_opaque_existential_0Tm_0(&v195, v197);
          *(&v193 + 1) = v38;
          *&v194 = sub_19750FE74(&qword_1ED7C6928, type metadata accessor for CompositeEncoder);
          *&v192 = v39;

          v42 = v172;
          sub_19752169C();
          if (v42)
          {
          }

          v172 = 0;
          v35 = v186;
          __swift_destroy_boxed_opaque_existential_0Tm_1(&v192);
          [v34 setDefaultValue_];

          __swift_destroy_boxed_opaque_existential_0Tm_1(&v195);
          goto LABEL_55;
        }
      }

      else
      {
        v193 = 0u;
        v194 = 0u;
        v192 = 0u;
      }
    }

    else
    {
      sub_19750FE14(&v195, &qword_1EAF2AF20, &unk_19752F320);
      v192 = 0u;
      v193 = 0u;
      v194 = 0u;
    }

    sub_19750FE14(&v192, &qword_1EAF2B5D0, &unk_197534040);
LABEL_55:
    v76 = [v35 properties];
    v77 = sub_19741CD8C(0, &qword_1ED7C9B98, 0x1E695D6D8);
    v78 = sub_1975219CC();

    v185 = v78;
    v175 = v77;
    v183 = v78 & 0xFFFFFFFFFFFFFF8;
    if (v78 >> 62)
    {
      v184 = sub_1975220EC();
    }

    else
    {
      v184 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v79 = 0;
    v80 = v185 & 0xC000000000000001;
    while (v184 != v79)
    {
      if (v80)
      {
        v82 = MEMORY[0x19A8E0960](v79, v185);
      }

      else
      {
        if (v79 >= *(v183 + 16))
        {
          goto LABEL_118;
        }

        v82 = *(v185 + 8 * v79 + 32);
      }

      v83 = v82;
      if (__OFADD__(v79, 1))
      {
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:

        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        *&v194 = 0;
        v192 = 0u;
        v193 = 0u;
        sub_19750FE14(&v192, &qword_1EAF2C198, &qword_197534068);
        *&v195 = 0;
        *(&v195 + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000017, 0x800000019752AA70);
        sub_19752235C();
LABEL_130:
        sub_1975223EC();
        __break(1u);
        return;
      }

      v84 = [v82 name];
      v85 = sub_1975217BC();
      v87 = v86;

      v88 = v34;
      v89 = [v34 name];
      v90 = sub_1975217BC();
      v92 = v91;

      if (v85 == v90 && v87 == v92)
      {

        v34 = v88;

        goto LABEL_18;
      }

      v81 = sub_19752282C();

      ++v79;
      v34 = v88;
      if (v81)
      {

LABEL_18:

LABEL_19:
        __swift_destroy_boxed_opaque_existential_0Tm_1(v202);
        goto LABEL_20;
      }
    }

    v93 = v186;
    v94 = [v186 properties];
    v95 = sub_1975219CC();

    *&v195 = v95;
    MEMORY[0x19A8E00D0]();
    if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v97 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1975219FC();
    }

    sub_197521A4C();
    v96 = sub_1975219BC();

    [v93 setProperties_];

    goto LABEL_19;
  }

  v172 = 0;
LABEL_76:
  v99 = v181;
  swift_beginAccess();
  v100 = v99[4];
  if ((v100 & 0xC000000000000001) != 0)
  {
    if (v100 < 0)
    {
      v101 = v99[4];
    }

    sub_1975220AC();
    sub_19750FE74(&qword_1EAF2B670, type metadata accessor for Schema.Entity);
    sub_197521C1C();
    v102 = *(&v195 + 1);
    v100 = v195;
    v103 = v196;
    v104 = v197;
    v105 = v198;
  }

  else
  {
    v106 = -1 << *(v100 + 32);
    v102 = v100 + 56;
    v107 = ~v106;
    v108 = -v106;
    if (v108 < 64)
    {
      v109 = ~(-1 << v108);
    }

    else
    {
      v109 = -1;
    }

    v105 = v109 & *(v100 + 56);

    v103 = v107;
    v104 = 0;
  }

  v183 = v103;
  v184 = v102;
  v110 = (v103 + 64) >> 6;
  v185 = v110;
  if (v100 < 0)
  {
    goto LABEL_91;
  }

LABEL_85:
  v111 = v104;
  v112 = v105;
  for (i = v104; !v112; ++v111)
  {
    i = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      goto LABEL_122;
    }

    if (i >= v110)
    {
      goto LABEL_99;
    }

    v112 = *(v102 + 8 * i);
  }

  v114 = (v112 - 1) & v112;
  v115 = *(*(v100 + 48) + ((i << 9) | (8 * __clz(__rbit64(v112)))));

  if (v115)
  {
    while (1)
    {
      v117 = v100;
      v118 = v174;
      sub_19741B45C(v174, v176);
      v119 = [v118 entitiesByName];
      sub_19741CD8C(0, &qword_1ED7C9BA0, 0x1E695D5B8);
      v120 = sub_1975215FC();

      swift_beginAccess();
      if (!*(v120 + 16))
      {
        break;
      }

      v121 = *(v115 + 16);
      v122 = *(v115 + 24);

      v123 = sub_1973F4028(v121, v122);
      v125 = v124;

      if ((v125 & 1) == 0)
      {
        break;
      }

      v126 = *(*(v120 + 56) + 8 * v123);

      v127 = v126;
      v128 = v186;
      v129 = [v186 subentities];
      v130 = sub_1975219CC();

      v202[0] = v130;
      MEMORY[0x19A8E00D0]();
      if (*((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v132 = *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1975219FC();
      }

      sub_197521A4C();
      v131 = sub_1975219BC();

      [v128 setSubentities_];

      v104 = i;
      v105 = v114;
      v100 = v117;
      v102 = v184;
      v110 = v185;
      if ((v100 & 0x8000000000000000) == 0)
      {
        goto LABEL_85;
      }

LABEL_91:
      v116 = sub_19752212C();
      if (v116)
      {
        v199[0] = v116;
        swift_dynamicCast();
        v115 = v202[0];
        i = v104;
        v114 = v105;
        if (v202[0])
        {
          continue;
        }
      }

      goto LABEL_99;
    }

    v202[0] = 0;
    v202[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000002DLL, 0x800000019752AAC0);
    v199[0] = v115;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v167 = [v186 description];
    v168 = sub_1975217BC();
    v170 = v169;

    MEMORY[0x19A8DFF80](v168, v170);

    goto LABEL_130;
  }

LABEL_99:
  sub_1973FF47C();
  v133 = v181;
  swift_beginAccess();
  v134 = v133[20];

  sub_19741F4EC(v135);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B970, &unk_19752FC90);
  v136 = sub_1975219BC();

  v137 = v186;
  [v186 setUniquenessConstraints_];

  swift_beginAccess();
  v138 = v133[21];
  v183 = *(v138 + 16);
  if (v183)
  {
    v139 = MEMORY[0x1E69E7CC0];
    v191 = MEMORY[0x1E69E7CC0];
    v181 = 0x800000019752A970;
    v182 = v138 + 32;

    v141 = 0;
    v178 = v140;
    v179 = 0xD000000000000010;
    while (v141 < *(v140 + 16))
    {
      v184 = v141;
      v142 = *(v182 + 8 * v141);
      v188 = v179;
      v189 = v181;
      v190 = v142;

      v185 = sub_19741F61C();
      v187 = v139;
      v143 = v190;
      v144 = *(v190 + 16);

      if (v144)
      {
        v145 = 0;
        v146 = (v143 + 40);
        while (v145 < *(v143 + 16))
        {
          v147 = *(v146 - 1);
          v148 = *v146;

          v149 = [v186 propertiesByName];
          sub_19741CD8C(0, &qword_1ED7C9B98, 0x1E695D6D8);
          v150 = sub_1975215FC();
          if (!*(v150 + 16))
          {
            goto LABEL_125;
          }

          v151 = sub_1973F4028(v147, v148);
          if ((v152 & 1) == 0)
          {
            goto LABEL_125;
          }

          v153 = v151;

          v154 = *(*(v150 + 56) + 8 * v153);

          v155 = objc_allocWithZone(MEMORY[0x1E695D5D8]);
          v156 = [v155 initWithProperty:v154 collationType:v185];

          v157 = v156;
          MEMORY[0x19A8E00D0]();
          if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v158 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1975219FC();
          }

          ++v145;
          sub_197521A4C();
          MEMORY[0x19A8DFF80](v147, v148);

          v146 += 2;
          if (v144 == v145)
          {
            v139 = MEMORY[0x1E69E7CC0];
            goto LABEL_111;
          }
        }

        __break(1u);
        goto LABEL_117;
      }

LABEL_111:
      swift_bridgeObjectRelease_n();
      v159 = objc_allocWithZone(MEMORY[0x1E695D5D0]);
      v160 = sub_19752178C();

      sub_19741CD8C(0, &qword_1ED7C8680, 0x1E695D5D8);
      v161 = sub_1975219BC();

      v162 = [v159 initWithName:v160 elements:v161];

      v163 = v162;
      MEMORY[0x19A8E00D0]();
      if (*((v191 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v191 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v164 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1975219FC();
        v139 = MEMORY[0x1E69E7CC0];
      }

      v141 = v184 + 1;
      sub_197521A4C();

      v140 = v178;
      if (v141 == v183)
      {

        sub_19741CD8C(0, &qword_1ED7C8688, 0x1E695D5D0);
        v165 = sub_1975219BC();

        v166 = v186;
        [v186 setIndexes_];

        return;
      }
    }

    goto LABEL_124;
  }
}

uint64_t sub_19741CB08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_19741CB20(void *a1, uint64_t a2)
{
  v4 = [a1 entitiesByName];
  sub_19741CD8C(0, &qword_1ED7C9BA0, 0x1E695D5B8);
  v5 = sub_1975215FC();

  swift_beginAccess();
  if (*(v5 + 16) && (v6 = *(a2 + 16), v7 = *(a2 + 24), , v8 = sub_1973F4028(v6, v7), v10 = v9, , (v10 & 1) != 0))
  {
    v11 = *(*(v5 + 56) + 8 * v8);

    return v11;
  }

  else
  {

    v13 = [objc_allocWithZone(MEMORY[0x1E695D5B8]) init];
    v15 = *(a2 + 16);
    v14 = *(a2 + 24);

    v16 = sub_19752178C();

    [v13 setName_];

    v17 = v13;
    v18 = [a1 entities];
    v19 = sub_1975219CC();

    MEMORY[0x19A8E00D0]();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1975219FC();
    }

    sub_197521A4C();
    v20 = sub_1975219BC();

    [a1 setEntities_];

    return v17;
  }
}

uint64_t sub_19741CD44(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_19741CD8C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_19741CE6C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 56);
  *&v105 = v2;
  if (swift_conformsToProtocol2())
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    do
    {
      sub_1973F732C(v2, &v105);
      v2 = v105;
      if (swift_conformsToProtocol2())
      {
        v4 = v2 == 0;
      }

      else
      {
        v4 = 1;
      }
    }

    while (!v4);
  }

  v5 = *(v0 + 120);
  if ((v5 & 0x40) != 0)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695D598]) init];
    swift_beginAccess();
    v7 = *(v0 + 24);
    *&v105 = *(v0 + 16);
    *(&v105 + 1) = v7;

    MEMORY[0x19A8DFF80](0x706164414E4F534ALL, 0xEB00000000726574);
    v8 = sub_19752178C();

    [v6 setAdapterName_];
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  }

  v107 = 0;
  swift_beginAccess();
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (sub_1975217DC() == 0x7470697263736564 && v11 == 0xEB000000006E6F69)
  {
    goto LABEL_92;
  }

  v12 = sub_19752282C();
  v6 = v6;

  if (v12)
  {
    goto LABEL_93;
  }

  v13 = *(v1 + 16);
  v14 = *(v1 + 24);

  v15 = sub_19752178C();

  [v6 setName_];

  swift_beginAccess();
  v16 = *(v1 + 32);
  v17 = *(v1 + 40);

  v18 = sub_19752181C();

  if (v18 >= 1)
  {
    v19 = *(v1 + 32);
    v20 = *(v1 + 40);

    v21 = sub_19752178C();

    [v6 setRenamingIdentifier_];
  }

  swift_beginAccess();
  if (*(v1 + 112))
  {
    v22 = *(v1 + 104);
    v23 = *(v1 + 112);

    v24 = sub_19752181C();

    if (v24 >= 1)
    {
      if (*(v1 + 112))
      {
        v25 = *(v1 + 104);
        v26 = *(v1 + 112);

        v27 = sub_19752178C();
      }

      else
      {
        v27 = 0;
      }

      [v6 setVersionHashModifier_];
    }
  }

  swift_beginAccess();
  [v6 setOptional_];
  swift_beginAccess();
  v28 = *(v1 + 48);
  v29 = (v28 + 32);
  v30 = *(v28 + 16) + 1;
  do
  {
    if (!--v30)
    {
      if ((v5 & 0x40) != 0)
      {
        swift_beginAccess();
        sub_197413B20(v1 + 64, &v105);
        v42 = *(&v106[0] + 1);
        if (*(&v106[0] + 1))
        {
          v43 = __swift_project_boxed_opaque_existential_0Tm_0(&v105, *(&v106[0] + 1));
          v44 = *(v42 - 8);
          v45 = *(v44 + 64);
          MEMORY[0x1EEE9AC00](v43, v43);
          v47 = &v98 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v44 + 16))(v47);
          v48 = sub_19752281C();
          (*(v44 + 8))(v47, v42);
          __swift_destroy_boxed_opaque_existential_0Tm_1(&v105);
        }

        else
        {
          v48 = 0;
        }

        [v6 setDefaultValue_];
        swift_unknownObjectRelease();
        goto LABEL_60;
      }

      v37 = sub_1973F6C38();
      if (v37)
      {
        [v6 setAttributeType_];
      }

      else
      {
        v49 = swift_conformsToProtocol2();
        if (v49 && v2)
        {
          sub_19750F2AC(v2, v1, v6, v2, v49, &v107, v2);
        }
      }

      if ([v6 attributeType])
      {
        goto LABEL_60;
      }

      *&v105 = 0;
      *(&v105 + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v105 = 0xD00000000000002ELL;
      *(&v105 + 1) = 0x800000019752A8B0;
      ObjCClassMetadata = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6A8, &unk_19752F380);
      v50 = sub_1975217CC();
      MEMORY[0x19A8DFF80](v50);

      v97 = 0;
      v51 = 378;
      goto LABEL_90;
    }

    v31 = *v29;
    v29 += 40;
  }

  while (v31 != 1);
  [v6 setAttributeType_];
  v32 = *(v1 + 48);
  v33 = *(v32 + 16);
  if (!v33)
  {
    goto LABEL_89;
  }

  v34 = (v32 + 32);
  while (1)
  {
    v35 = *(v34 + 30);
    v36 = v34[1];
    v105 = *v34;
    *(v106 + 14) = v35;
    v106[0] = v36;
    if (v105)
    {
      break;
    }

    v34 = (v34 + 40);
    if (!--v33)
    {
      goto LABEL_89;
    }
  }

  v38 = *(&v106[0] + 1);
  if (!*(&v106[0] + 1))
  {
LABEL_89:
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x800000019752A780);
    ObjCClassMetadata = v1;
    type metadata accessor for Schema.Attribute();
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x800000019752A7A0);
    v97 = 0;
    v51 = 306;
    goto LABEL_90;
  }

  v39 = *&v106[0];
  sub_19741DE14(&v105, &ObjCClassMetadata);
  if ((sub_19750606C(v39, v38) & 1) == 0 && (v39 != 0xD000000000000024 || v38 != 0x800000019752A210) && (sub_19752282C() & 1) == 0 && (v39 != 0xD000000000000019 || v38 != 0x800000019752A7C0) && (sub_19752282C() & 1) == 0)
  {
    v40 = *MEMORY[0x1E696A8B0];
    if (v39 == sub_1975217BC() && v38 == v41)
    {

      goto LABEL_56;
    }

    v52 = sub_19752282C();

    if ((v52 & 1) == 0)
    {
      v77 = sub_19752178C();
      v100 = objc_opt_self();
      v78 = [v100 valueTransformerNames];
      type metadata accessor for NSValueTransformerName(0);
      v98 = v79;
      v80 = sub_1975219CC();

      v99 = &v98;
      ObjCClassMetadata = v77;
      MEMORY[0x1EEE9AC00](v81, v82);
      i = &ObjCClassMetadata;
      LOBYTE(v78) = sub_19741E9F4(sub_19741E9AC, &v95, v80);

      if (v78)
      {
        v83 = v100;
        v100 = v77;
        v84 = [v83 valueTransformerForName_];
        if (v84)
        {
          v85 = v84;
          v104 = sub_19741CD8C(0, &qword_1ED7C7C88, 0x1E696B0A0);
          ObjCClassMetadata = v85;
          __swift_project_boxed_opaque_existential_0Tm_0(&ObjCClassMetadata, v104);
          swift_getDynamicType();
          v99 = v85;
          __swift_destroy_boxed_opaque_existential_0Tm_1(&ObjCClassMetadata);
          if (swift_dynamicCastMetatype())
          {
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v87 = [ObjCClassFromMetadata allowsReverseTransformation];
            v88 = v100;
            if (v87)
            {
              [ObjCClassFromMetadata transformedValueClass];
              ObjCClassMetadata = swift_getObjCClassMetadata();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C178, "̐");
              sub_1975217CC();
              v89 = sub_19752178C();
              sub_19741EE34(&v105);
              [v6 setValueTransformerName_];

              v53 = sub_19752178C();

              [v6 setAttributeValueClassName_];

              goto LABEL_59;
            }

            ObjCClassMetadata = 0;
            v103 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000011, 0x800000019752A860);
            MEMORY[0x19A8DFF80](v39, v38);
            MEMORY[0x19A8DFF80](0xD00000000000002BLL, 0x800000019752A880);
            v51 = 319;
          }

          else
          {
            ObjCClassMetadata = 0;
            v103 = 0xE000000000000000;
            sub_1975221EC();

            ObjCClassMetadata = 0xD00000000000001ELL;
            v103 = 0x800000019752A840;
            v91 = [v99 description];
            v92 = sub_1975217BC();
            v94 = v93;

            MEMORY[0x19A8DFF80](v92, v94);

            v51 = 328;
          }
        }

        else
        {
          ObjCClassMetadata = 0;
          v103 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x800000019752A820);
          v101 = v100;
          sub_19752235C();
          v51 = 331;
        }
      }

      else
      {
        ObjCClassMetadata = 0;
        v103 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000031, 0x800000019752A7E0);
        MEMORY[0x19A8DFF80](v39, v38);
        v51 = 313;
      }

LABEL_90:
      for (i = v51; ; i = 288)
      {
        sub_1975223EC();
        __break(1u);
LABEL_92:
        v90 = v6;

LABEL_93:
        v97 = 0;
      }
    }
  }

LABEL_56:
  if ((sub_19750606C(v39, v38) & 1) == 0)
  {
    v53 = sub_19752178C();
    sub_19741EE34(&v105);
    [v6 setValueTransformerName_];
LABEL_59:

    goto LABEL_60;
  }

  sub_19741EE34(&v105);
LABEL_60:
  v54 = *(v1 + 48);
  v55 = *(v54 + 16);
  v56 = v55 + 1;
  v57 = 67;
  while (--v56)
  {
    v58 = *(v54 + v57);
    v57 += 40;
    if (v58 == 1)
    {
      [v6 setPreservesValueInHistoryOnDeletion_];
      v54 = *(v1 + 48);
      v55 = *(v54 + 16);
      break;
    }
  }

  v59 = v55 + 1;
  v60 = 68;
  while (--v59)
  {
    v61 = *(v54 + v60);
    v60 += 40;
    if (v61 == 1)
    {
      [v6 setIndexedBySpotlight_];
      v54 = *(v1 + 48);
      v55 = *(v54 + 16);
      break;
    }
  }

  v62 = (v54 + 66);
  v63 = v55 + 1;
  while (--v63)
  {
    v64 = *v62;
    v62 += 40;
    if (v64 == 1)
    {
      [v6 setAllowsCloudEncryption_];
      break;
    }
  }

  if (sub_19741DD1C())
  {
    [v6 setAllowsExternalBinaryDataStorage_];
  }

  v65 = *(v1 + 48);
  v66 = (v65 + 69);
  v67 = *(v65 + 16) + 1;
  while (--v67)
  {
    v68 = *v66;
    v66 += 40;
    if (v68 == 1)
    {
      [v6 setTransient_];
      break;
    }
  }

  swift_beginAccess();
  if ((v107 & 1) == 0)
  {
    swift_beginAccess();
    sub_197413B20(v1 + 64, &v105);
    v69 = *(&v106[0] + 1);
    if (*(&v106[0] + 1))
    {
      v70 = __swift_project_boxed_opaque_existential_0Tm_0(&v105, *(&v106[0] + 1));
      v71 = *(v69 - 8);
      v72 = *(v71 + 64);
      MEMORY[0x1EEE9AC00](v70, v70);
      v74 = &v98 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v71 + 16))(v74);
      v75 = sub_19752281C();
      (*(v71 + 8))(v74, v69);
      __swift_destroy_boxed_opaque_existential_0Tm_1(&v105);
    }

    else
    {
      v75 = 0;
    }

    [v6 setDefaultValue_];
    swift_unknownObjectRelease();
  }

  return v6;
}

uint64_t sub_19741DD1C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v9[0] = v1;
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    do
    {
      sub_1973F732C(v1, v9);
      v1 = v9[0];
      if (swift_conformsToProtocol2())
      {
        v3 = v1 == 0;
      }

      else
      {
        v3 = 1;
      }
    }

    while (!v3);
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    swift_beginAccess();
    v5 = *(v0 + 48);
    v6 = (v5 + 65);
    v7 = *(v5 + 16) + 1;
    do
    {
      result = --v7 != 0;
      if (!v7)
      {
        break;
      }

      v8 = *v6;
      v6 += 40;
    }

    while (v8 != 1);
  }

  return result;
}

uint64_t sub_19741DE84(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1975220FC();

    if (v8)
    {

      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      result = 0;
      *a1 = v26;
      return result;
    }

    result = sub_1975220EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v23 = sub_19747DC14(v7, result + 1, &qword_1EAF2B378, &qword_19752D528, type metadata accessor for Schema.Relationship);
    v28 = v23;
    v24 = *(v23 + 16);
    if (*(v23 + 24) <= v24)
    {

      sub_197417660(v24 + 1, &qword_1EAF2B378, &qword_19752D528);
      v25 = v28;
    }

    else
    {
      v25 = v23;
    }

    sub_19747EC28(a2, v25);

    *v3 = v25;
    goto LABEL_18;
  }

  v10 = *(v6 + 40);
  sub_197522A5C();
  swift_beginAccess();
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);

  sub_19752180C();

  v13 = sub_197522A9C();
  v14 = -1 << *(v6 + 32);
  v15 = v13 & ~v14;
  if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_11:
    v20 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;

    sub_1974188C0(v22, v15, isUniquelyReferenced_nonNull_native, &qword_1EAF2B378, &qword_19752D528, type metadata accessor for Schema.Relationship, _s9SwiftData6SchemaC12RelationshipC2eeoiySbAE_AEtFZ_0);
    *v3 = v27;
LABEL_18:
    *a1 = a2;
    return 1;
  }

  v16 = ~v14;
  while (1)
  {
    v17 = *(*(v6 + 48) + 8 * v15);

    v19 = _s9SwiftData6SchemaC12RelationshipC2eeoiySbAE_AEtFZ_0(v18, a2);

    if (v19)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v15);

  return 0;
}

char *sub_19741E158(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_19741E264(char *a1, int64_t a2, char a3)
{
  result = sub_19741E158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_19741E284(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

char *sub_19741E330(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_19741E43C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B358, &unk_19752D500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *Schema.Relationship.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[20];

  return v0;
}

void *sub_19741E5C8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t _s9SwiftData6SchemaC12RelationshipC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (v6 || (sub_19752282C() & 1) != 0)
  {
    swift_beginAccess();
    v7 = *(a1 + 56);
    swift_beginAccess();
    if (sub_1974D191C(v7, *(a2 + 56)))
    {
      swift_beginAccess();
      v8 = *(a1 + 64);
      swift_beginAccess();
      if (v8 == *(a2 + 64))
      {
        if (swift_beginAccess(), v10 = *(a1 + 72), v11 = *(a1 + 80), swift_beginAccess(), v10 == *(a2 + 72)) && v11 == *(a2 + 80) || (sub_19752282C())
        {
          swift_beginAccess();
          v12 = *(a1 + 88);
          swift_beginAccess();
          if (sub_1974EE0A8(v12, *(a2 + 88)))
          {
            swift_beginAccess();
            v14 = *(a1 + 96);
            v13 = *(a1 + 104);
            swift_beginAccess();
            v15 = *(a2 + 104);
            if (v13)
            {
              if (v15 && (v14 == *(a2 + 96) && v13 == v15 || (sub_19752282C() & 1) != 0))
              {
                return 1;
              }
            }

            else if (!v15)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_19741E91C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1975217BC();
  v6 = v5;
  if (v4 == sub_1975217BC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_19752282C();
  }

  return v9 & 1;
}

uint64_t sub_19741E9F4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_19741EA9C(void *a1)
{
  v2 = v1;
  v3 = [a1 entitiesByName];
  sub_19741CD8C(0, &qword_1ED7C9BA0, 0x1E695D5B8);
  v4 = sub_1975215FC();

  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  if (!*(v4 + 16) || (v7 = sub_1973F4028(*(v2 + 1), *(v2 + 2)), (v8 & 1) == 0))
  {

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000033, 0x800000019752A9B0);
    MEMORY[0x19A8DFF80](v5, v6);
    MEMORY[0x19A8DFF80](0xD00000000000002DLL, 0x800000019752A9F0);
    v19 = [*v2 description];
    v20 = sub_1975217BC();
    v22 = v21;

    MEMORY[0x19A8DFF80](v20, v22);

    goto LABEL_12;
  }

  v23 = *(*(v4 + 56) + 8 * v7);

  v9 = *v2;
  [*v2 setDestinationEntity_];
  v10 = v23;
  v11 = *(v2 + 4);
  if (v11)
  {
    v12 = *(v2 + 3);
    v13 = [v23 relationshipsByName];
    sub_19741CD8C(0, &qword_1ED7C9350, 0x1E695D6E8);
    v14 = sub_1975215FC();

    if (*(v14 + 16))
    {
      v15 = sub_1973F4028(v12, v11);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);

        v18 = v17;
        [v9 setInverseRelationship_];

        v10 = v23;
        goto LABEL_7;
      }
    }

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000017, 0x800000019752AA20);
    v24 = *v2;
    v25 = v2[1];
    v26 = *(v2 + 4);
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x800000019752AA40);
    MEMORY[0x19A8DFF80](v5, v6);
    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v12, v11);
    MEMORY[0x19A8DFF80](0x646F6D206E692027, 0xEA00000000006C65);
LABEL_12:
    sub_1975223EC();
    __break(1u);
    return;
  }

LABEL_7:
}

uint64_t sub_19741EEAC(void **a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695D6E8]) init];
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (sub_1975217DC() == 0x7470697263736564 && v6 == 0xEB000000006E6F69)
  {

    goto LABEL_53;
  }

  v8 = sub_19752282C();

  if (v8)
  {
LABEL_53:
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v3;

  v12 = sub_19752178C();

  [v11 setName_];

  swift_beginAccess();
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);

  v15 = sub_19752181C();

  if (v15 >= 1)
  {
    v16 = *(v1 + 32);
    v17 = *(v1 + 40);

    v18 = sub_19752178C();

    [v11 setRenamingIdentifier_];
  }

  swift_beginAccess();
  if (*(v1 + 160))
  {
    v19 = *(v1 + 152);
    v20 = *(v1 + 160);

    v21 = sub_19752181C();

    if (v21 >= 1)
    {
      if (*(v1 + 160))
      {
        v22 = *(v1 + 152);
        v23 = *(v1 + 160);

        v24 = sub_19752178C();
      }

      else
      {
        v24 = 0;
      }

      [v11 setVersionHashModifier_];
    }
  }

  swift_beginAccess();
  [v11 setDeleteRule_];
  swift_beginAccess();
  v25 = *(v1 + 64);
  if (swift_conformsToProtocol2())
  {
    v26 = v25 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  [v11 setOptional_];
  v28 = *(v1 + 64);
  v53[0] = v28;
  if (swift_conformsToProtocol2() && v28)
  {
    do
    {
      sub_1973F732C(v28, v53);
      v28 = v53[0];
      if (swift_conformsToProtocol2())
      {
        v29 = v28 == 0;
      }

      else
      {
        v29 = 1;
      }
    }

    while (!v29);
  }

  v53[0] = v28;
  if (swift_conformsToProtocol2())
  {
    v30 = v28 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    do
    {
      sub_1973F732C(v28, v53);
      v28 = v53[0];
      if (swift_conformsToProtocol2())
      {
        v31 = v28 == 0;
      }

      else
      {
        v31 = 1;
      }
    }

    while (!v31);
  }

  if (swift_conformsToProtocol2())
  {
    v32 = v28 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    swift_beginAccess();
    if (*(v1 + 128))
    {
      v33 = 0;
    }

    else
    {
      v33 = *(v1 + 120);
    }

    [v11 setMinCount_];
    swift_beginAccess();
    if (*(v1 + 144))
    {
      v34 = 0;
    }

    else
    {
      v34 = *(v1 + 136);
    }
  }

  else
  {
    [v11 setMinCount_];
    v34 = 1;
  }

  [v11 setMaxCount_];
  swift_beginAccess();
  v36 = *(v1 + 72);
  v35 = *(v1 + 80);
  swift_beginAccess();
  v38 = *(v1 + 96);
  v37 = *(v1 + 104);
  v53[3] = &type metadata for PendingRelationshipLink;
  v53[4] = &off_1F0BA97B8;
  v39 = swift_allocObject();
  v53[0] = v39;
  v39[2] = v11;
  v39[3] = v36;
  v39[4] = v35;
  v39[5] = v38;
  v39[6] = v37;
  v40 = *a1;

  v41 = v11;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = sub_19741F4C8(0, v40[2] + 1, 1, v40);
  }

  v43 = v40[2];
  v42 = v40[3];
  if (v43 >= v42 >> 1)
  {
    v40 = sub_19741F4C8((v42 > 1), v43 + 1, 1, v40);
  }

  v44 = __swift_mutable_project_boxed_opaque_existential_1(v53, &type metadata for PendingRelationshipLink);
  MEMORY[0x1EEE9AC00](v44, v44);
  swift_cvw_initWithCopy();
  v51 = &type metadata for PendingRelationshipLink;
  v52 = &off_1F0BA97B8;
  v45 = swift_allocObject();
  *&v50 = v45;
  *(v45 + 16) = v47;
  *(v45 + 32) = v48;
  *(v45 + 48) = v49;
  v40[2] = v43 + 1;
  sub_19741CB08(&v50, &v40[5 * v43 + 4]);
  __swift_destroy_boxed_opaque_existential_0Tm_1(v53);
  *a1 = v40;
  return v41;
}

uint64_t sub_19741F480()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19741F4EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1974F65D0(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B970, &unk_19752FC90);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1974F65D0((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_19741F61C()
{
  v1 = sub_19741F7A4(0);
  v2 = v0;
  if (v1 == 0x656572742D72 && v0 == 0xE600000000000000 || (sub_19752282C() & 1) != 0)
  {

    MEMORY[0x19A8DFF80](0x6565725452, 0xE500000000000000);
    return 1;
  }

  else if (v1 == 0x7972616E6962 && v2 == 0xE600000000000000 || (sub_19752282C() & 1) != 0)
  {

    MEMORY[0x19A8DFF80](0x7972616E6942, 0xE600000000000000);
    return 0;
  }

  else
  {
    sub_1975221EC();

    MEMORY[0x19A8DFF80](v1, v2);
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19741F7A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_19741F830(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_19741F844(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v57 = *(i + 48) + 40 * a2;
      v58 = *(v6 + 16);
      *v57 = *v6;
      *(v57 + 16) = v58;
      *(v57 + 32) = *(v6 + 32);
      v59 = *(i + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (!v60)
      {
        *(i + 16) = v61;
        return result;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C188, &unk_197534050);
      v62 = sub_19752219C();
      i = v62;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v63 = (v62 + 56);
    v64 = v7 + 56;
    v65 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v63 >= v64 + 8 * v65)
    {
      memmove(v63, (v7 + 56), 8 * v65);
    }

    v66 = 0;
    *(i + 16) = *(v7 + 16);
    v67 = 1 << *(v7 + 32);
    v68 = *(v7 + 56);
    v69 = -1;
    if (v67 < 64)
    {
      v69 = ~(-1 << v67);
    }

    v70 = v69 & v68;
    v71 = (v67 + 63) >> 6;
    if ((v69 & v68) != 0)
    {
      do
      {
        v72 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
LABEL_81:
        v75 = 40 * (v72 | (v66 << 6));
        sub_19741FFE0(*(v7 + 48) + v75, &v81);
        v76 = *(i + 48) + v75;
        v77 = v81;
        v78 = v82;
        *(v76 + 32) = v83;
        *v76 = v77;
        *(v76 + 16) = v78;
      }

      while (v70);
    }

    v73 = v66;
    while (1)
    {
      v66 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v66 >= v71)
      {
        goto LABEL_83;
      }

      v74 = *(v64 + 8 * v66);
      ++v73;
      if (v74)
      {
        v72 = __clz(__rbit64(v74));
        v70 = (v74 - 1) & v74;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C188, &unk_197534050);
  if ((a3 & 1) == 0)
  {
    v31 = sub_1975221AC();
    i = v31;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v80 = v4;
    v32 = 0;
    a2 = v7 + 56;
    v33 = 1 << *(v7 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v7 + 56);
    v4 = (v33 + 63) >> 6;
    v36 = v31 + 56;
    while (1)
    {
      if (v35)
      {
        v41 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
      }

      else
      {
        v42 = v32;
        do
        {
          v32 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_64;
          }

          if (v32 >= v4)
          {

            v4 = v80;
            goto LABEL_57;
          }

          v43 = *(a2 + 8 * v32);
          ++v42;
        }

        while (!v43);
        v41 = __clz(__rbit64(v43));
        v35 = (v43 - 1) & v43;
      }

      sub_19741FFE0(*(v7 + 48) + 40 * (v41 | (v32 << 6)), &v81);
      v44 = *(i + 40);
      v45 = sub_19752215C();
      v46 = -1 << *(i + 32);
      v47 = v45 & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v36 + 8 * (v47 >> 6))) != 0)
      {
        v37 = __clz(__rbit64((-1 << v47) & ~*(v36 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = 0;
        v50 = (63 - v46) >> 6;
        do
        {
          if (++v48 == v50 && (v49 & 1) != 0)
          {
            goto LABEL_66;
          }

          v51 = v48 == v50;
          if (v48 == v50)
          {
            v48 = 0;
          }

          v49 |= v51;
          v52 = *(v36 + 8 * v48);
        }

        while (v52 == -1);
        v37 = __clz(__rbit64(~v52)) + (v48 << 6);
      }

      *(v36 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v38 = *(i + 48) + 40 * v37;
      v39 = v81;
      v40 = v82;
      *(v38 + 32) = v83;
      *v38 = v39;
      *(v38 + 16) = v40;
      ++*(i + 16);
    }
  }

  v10 = sub_1975221AC();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v79 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v81 = *v21;
      v82 = *(v21 + 16);
      v83 = *(v21 + 32);
      v22 = *(i + 40);
      v23 = sub_19752215C();
      v24 = -1 << *(i + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        do
        {
          if (++v26 == v28 && (v27 & 1) != 0)
          {
            goto LABEL_65;
          }

          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
        }

        while (v30 == -1);
        v16 = __clz(__rbit64(~v30)) + (v26 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v81;
      *(v17 + 16) = v82;
      *(v17 + 32) = v83;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v53 = 1 << *(v7 + 32);
  if (v53 >= 64)
  {
    bzero((v7 + 56), ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v53;
  }

  v4 = v79;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  v54 = *(i + 40);
  result = sub_19752215C();
  v55 = -1 << *(i + 32);
  a2 = result & ~v55;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v55;
  while (1)
  {
    sub_19741FFE0(*(i + 48) + 40 * a2, &v81);
    v56 = MEMORY[0x19A8E0890](&v81, v6);
    result = sub_197420CA4(&v81);
    if (v56)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  result = sub_1975229BC();
  __break(1u);
  return result;
}

uint64_t sub_19741FE94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_19752215C();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_19741FFE0(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x19A8E0890](v18, a2);
      sub_197420CA4(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_197420CA4(a2);
    sub_19741FFE0(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19741FFE0(a2, v18);
    v17 = *v3;
    sub_19741F844(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t Schema.Version.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v6 = *v0;
  v7 = sub_1975227DC();
  MEMORY[0x19A8DFF80](46, 0xE100000000000000);
  v3 = sub_1975227DC();
  MEMORY[0x19A8DFF80](v3);

  MEMORY[0x19A8DFF80](46, 0xE100000000000000);
  v4 = sub_1975227DC();
  MEMORY[0x19A8DFF80](v4);

  return v7;
}

unint64_t sub_197420114(void *a1)
{
  v3 = *(v1 + 40);
  sub_197522A5C();
  v4 = a1[6];
  v5 = a1[7];
  MEMORY[0x19A8E1190](a1[5]);
  MEMORY[0x19A8E1190](v4);
  MEMORY[0x19A8E1190](v5);
  v6 = a1[8];
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v18 = a1[8];
    }

    v19 = sub_1975220EC();
    MEMORY[0x19A8E1190](v19);
    result = sub_1975220EC();
    v8 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x19A8E1190](*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
LABEL_10:
      v17 = sub_197522A9C();
      return sub_1974202CC(a1, v17);
    }
  }

  if (v8 >= 1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = MEMORY[0x19A8E0960](v9++, v6);
        swift_beginAccess();
        v11 = *(v10 + 16);
        v12 = *(v10 + 24);

        sub_19752180C();

        swift_unknownObjectRelease();
      }

      while (v8 != v9);
    }

    else
    {
      v13 = (v6 + 32);
      do
      {
        v14 = *v13++;
        swift_beginAccess();
        v15 = *(v14 + 16);
        v16 = *(v14 + 24);

        sub_19752180C();

        --v8;
      }

      while (v8);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1974202CC(void *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v5 = a1[5];
    v23 = a1[7];
    v24 = a1[6];
    do
    {
      v8 = *(*(v22 + 48) + 8 * v4);
      v10 = v8[5];
      v9 = v8[6];
      v11 = v8[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B418, &qword_19752F170);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19752D100;
      *(inited + 32) = v10;
      *(inited + 40) = v9;
      *(inited + 48) = v11;
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_19752D100;
      *(v13 + 32) = v5;
      *(v13 + 40) = v24;
      *(v13 + 48) = v23;
      if (inited == v13 || *(inited + 32) == v5 && *(inited + 40) == v24 && *(inited + 48) == v23)
      {
        swift_setDeallocating();
        swift_setDeallocating();
      }

      else
      {
        v14 = sub_19749ED2C(v13, inited);
        swift_setDeallocating();
        swift_setDeallocating();
        if (v14)
        {
          goto LABEL_5;
        }
      }

      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_19752D100;
      *(v15 + 32) = v5;
      *(v15 + 40) = v24;
      *(v15 + 48) = v23;
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_19752D100;
      *(v16 + 32) = v10;
      *(v16 + 40) = v9;
      *(v16 + 48) = v11;
      if (v15 == v16 || *(v15 + 32) == v10 && *(v15 + 40) == v9 && *(v15 + 48) == v11)
      {
        swift_setDeallocating();
        swift_setDeallocating();
LABEL_4:
        v6 = v8[8];
        v7 = a1[8];

        LOBYTE(v6) = sub_197421268(v6, v7);

        if (v6)
        {
          return v4;
        }

        goto LABEL_5;
      }

      v17 = sub_19749ED2C(v16, v15);
      swift_setDeallocating();
      swift_setDeallocating();
      if ((v17 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_5:
      v4 = (v4 + 1) & v20;
    }

    while (((*(v21 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_197420530(uint64_t a1, void *a2)
{
  v3 = v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v3;
    result = sub_197421138(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v30;
    return result;
  }

  if (*v2 < 0)
  {
    v6 = *v2;
  }

  result = sub_1975220EC();
  if (!__OFADD__(result, 1))
  {
    if (result == -1)
    {

      *v2 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      v28 = a2;
      v29 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B398, &unk_19752D550);
      v8 = sub_19752244C();
      v33 = v8;
      sub_1975223AC();
      if (sub_1975223DC())
      {
        type metadata accessor for Schema();
        do
        {
          swift_dynamicCast();
          sub_19741CD44(0, &qword_1EAF2B6B0, 0x1E695D638);
          swift_dynamicCast();
          v11 = *(v8 + 16);
          if (*(v8 + 24) <= v11)
          {
            sub_197420D40(v11 + 1, 1);
          }

          v8 = v33;
          v12 = *(v33 + 40);
          sub_197522A5C();
          v13 = v32[6];
          v14 = v32[7];
          MEMORY[0x19A8E1190](v32[5]);
          MEMORY[0x19A8E1190](v13);
          MEMORY[0x19A8E1190](v14);
          v15 = v32[8];
          if (v15 >> 62)
          {
            if (v15 < 0)
            {
              v25 = v32[8];
            }

            v26 = sub_1975220EC();
            MEMORY[0x19A8E1190](v26);
            result = sub_1975220EC();
            v16 = result;
            if (!result)
            {
              goto LABEL_8;
            }
          }

          else
          {
            result = MEMORY[0x19A8E1190](*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10));
            v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v16)
            {
              goto LABEL_8;
            }
          }

          if (v16 < 1)
          {
            __break(1u);
            goto LABEL_29;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v17 = 0;
            do
            {
              v18 = MEMORY[0x19A8E0960](v17++, v15);
              swift_beginAccess();
              v19 = *(v18 + 16);
              v20 = *(v18 + 24);

              sub_19752180C();

              swift_unknownObjectRelease();
            }

            while (v16 != v17);
          }

          else
          {
            v21 = (v15 + 32);
            do
            {
              v22 = *v21++;
              swift_beginAccess();
              v24 = *(v22 + 16);
              v23 = *(v22 + 24);

              sub_19752180C();

              --v16;
            }

            while (v16);
          }

LABEL_8:
          sub_197522A9C();
          v9 = -1 << *(v33 + 32);
          v10 = sub_19752208C();
          *(v33 + 64 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
          *(*(v33 + 48) + 8 * v10) = v32;
          *(*(v33 + 56) + 8 * v10) = v31;
          ++*(v33 + 16);
        }

        while (sub_1975223DC());
      }

      a2 = v28;
      v3 = v29;
      *v29 = v8;
    }

    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_197420900(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t Schema.__deallocating_deinit()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_197420984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1974209EC()
{
  sub_197420BE8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ModelConfiguration();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_197420B28(uint64_t a1, uint64_t *a2)
{
  v3 = sub_19752157C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_19752156C();
}

void sub_197420BE8()
{
  if (!qword_1ED7CA300)
  {
    sub_1975212CC();
    v0 = sub_197521F5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7CA300);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_197420CF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197420D40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B398, &unk_19752D550);
  v51 = a2;
  v7 = sub_19752243C();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v47 = v3;
    v48 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 64;
    v49 = v5;
    v50 = v7;
    while (1)
    {
      if (!v12)
      {
        v18 = v9;
        result = v48;
        while (1)
        {
          v9 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_48;
          }

          if (v9 >= v13)
          {
            break;
          }

          v20 = v48[v9];
          ++v18;
          if (v20)
          {
            v17 = __clz(__rbit64(v20));
            v52 = (v20 - 1) & v20;
            goto LABEL_17;
          }
        }

        if ((v51 & 1) == 0)
        {

          v3 = v47;
          goto LABEL_46;
        }

        v46 = 1 << *(v5 + 32);
        v3 = v47;
        if (v46 >= 64)
        {
          bzero(v48, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v48 = -1 << v46;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v12));
      v52 = (v12 - 1) & v12;
LABEL_17:
      v21 = v17 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(*(v5 + 56) + 8 * v21);
      if ((v51 & 1) == 0)
      {

        v24 = v23;
      }

      v25 = *(v8 + 40);
      sub_197522A5C();
      v26 = v22[6];
      v27 = v22[7];
      MEMORY[0x19A8E1190](v22[5]);
      MEMORY[0x19A8E1190](v26);
      MEMORY[0x19A8E1190](v27);
      v28 = v22[8];
      v53 = v23;
      if (v28 >> 62)
      {
        v45 = sub_1975220EC();
        MEMORY[0x19A8E1190](v45);
        result = sub_1975220EC();
        v29 = result;
        if (!result)
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = MEMORY[0x19A8E1190](*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v29)
        {
          goto LABEL_28;
        }
      }

      if (v29 < 1)
      {
        goto LABEL_49;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = 0;
        do
        {
          v31 = MEMORY[0x19A8E0960](v30++, v28);
          swift_beginAccess();
          v32 = *(v31 + 16);
          v33 = *(v31 + 24);

          sub_19752180C();

          swift_unknownObjectRelease();
        }

        while (v29 != v30);
      }

      else
      {
        v34 = (v28 + 32);
        do
        {
          v35 = *v34++;
          swift_beginAccess();
          v36 = *(v35 + 16);
          v37 = *(v35 + 24);

          sub_19752180C();

          --v29;
        }

        while (v29);
      }

LABEL_28:
      result = sub_197522A9C();
      v8 = v50;
      v38 = -1 << *(v50 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v14 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v16 = v53;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v14 + 8 * v40);
          if (v44 != -1)
          {
            v15 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v39) & ~*(v14 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v16 = v53;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v50 + 48) + 8 * v15) = v22;
      *(*(v50 + 56) + 8 * v15) = v16;
      ++*(v50 + 16);
      v5 = v49;
      v12 = v52;
    }
  }

LABEL_46:
  *v3 = v8;
  return result;
}

uint64_t sub_197421138(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_197420114(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_19747A39C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_197420D40(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_197420114(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for Schema();
      sub_1975229CC();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_197421260(v9, a2, a1, v20);
}

uint64_t sub_197421268(uint64_t a1, uint64_t a2)
{
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1975220EC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_1975220EC();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A8E0960](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x19A8E0960](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = _s9SwiftData6SchemaC6EntityC2eeoiySbAE_AEtFZ_0(v4, v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197421420(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1974214F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a1 + 16);
  v13 = *(type metadata accessor for DataStoreFetchRequest() + 36);
  v14 = v12;
  sub_1974076EC(a2 + v13, a3, a4, a5);
  if (v6)
  {
  }

  else
  {
    v16 = v15;
    sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
    v17 = sub_197521E7C();

    *a6 = v17;
  }
}

uint64_t sub_1974215D0(uint64_t a1, _BYTE *a2, uint64_t a3, NSObject *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v124 = a5;
  v116 = a4;
  v139 = a3;
  v138 = a1;
  v155[9] = a6;
  v14 = sub_19752139C();
  v127 = sub_197521F5C();
  v118 = *(v127 - 1);
  v15 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v127, v16);
  v126 = &v112[-v17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v120 = sub_197521F5C();
  v115 = *(v120 - 8);
  v19 = *(v115 + 64);
  v21 = MEMORY[0x1EEE9AC00](v120, v20);
  v122 = &v112[-v22];
  v114 = *(AssociatedTypeWitness - 8);
  v23 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v121 = &v112[-v25];
  v142 = a7;
  v26 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v149 = a6;
  v150 = AssociatedTypeWitness;
  v123 = AssociatedTypeWitness;
  v151 = a8;
  v152 = AssociatedConformanceWitness;
  v119 = type metadata accessor for DataStoreFetchResult();
  v113 = *(v119 - 8);
  v28 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v119, v29);
  v140 = &v112[-v30];
  v31 = type metadata accessor for EditingState();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v136 = &v112[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Request = type metadata accessor for DataStoreFetchRequest();
  v35 = *(Request - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](Request, v37);
  v143 = &v112[-v38];
  v144 = a6;
  v145 = a8;
  Descriptor = type metadata accessor for FetchDescriptor();
  v40 = *(Descriptor - 8);
  v41 = *(v40 + 64);
  v43 = MEMORY[0x1EEE9AC00](Descriptor, v42);
  v45 = &v112[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v43, v46);
  v48 = &v112[-v47];
  swift_beginAccess();
  v117 = v40;
  v49 = *(v40 + 16);
  v137 = Descriptor;
  i = (v40 + 16);
  v134 = v49;
  v49(v48, a2, Descriptor);
  v141 = a9;
  v132 = *(a9 + 80);
  v133 = a9 + 80;
  v131 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v128 = (v35 + 8);
  v50 = (v118 + 16);
  *&v125 = v14 - 8;
  v51 = (v118 + 8);
  v130 = v48;
  while (1)
  {
    v52 = v136;
    sub_197404E70(v131 + v139, v136);
    v134(v45, v48, v137);
    v53 = v143;
    v54 = v52;
    v55 = v144;
    v56 = v145;
    sub_197407438(v54, v45, v143);
    v57 = v26;
    (v132)(v53, v55, v56, v142, v141);
    if (!v26)
    {
      v65 = *&v140[*(v119 + 52)];

      v66 = v123;
      v67 = sub_197521A5C();
      v51 = sub_197405108();
      v68 = MEMORY[0x19A8DFD40](v67, &type metadata for PersistentIdentifier, v66, v51);
      v136 = v112;
      v155[0] = v68;
      v149 = v65;
      MEMORY[0x1EEE9AC00](v68, v69);
      v70 = v142;
      *&v112[-48] = v144;
      *&v112[-40] = v70;
      v71 = v141;
      v108 = v145;
      v109 = v141;
      v110 = v155;
      sub_197521AAC();
      swift_getWitnessTable();
      sub_19752195C();

      v72 = v116;
      swift_beginAccess();
      isa = v72->isa;
      v76 = *(v72->isa + 7);
      v75 = v72->isa + 56;
      v74 = v76;
      v77 = 1 << *(isa + 32);
      v78 = -1;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      v60 = v78 & v74;
      v62 = (v77 + 63) >> 6;
      v132 = (v114 + 48);
      v131 = (v114 + 32);
      v127 = (v114 + 8);
      v126 = (v115 + 8);
      v114 = v71 + 40;
      v136 = isa;

      v79 = 0;
      *&v80 = 136315394;
      v125 = v80;
      v81 = v122;
      v134 = v75;
      v133 = v62;
      for (i = v51; v60; v62 = v133)
      {
LABEL_20:
        while (1)
        {
          v86 = *(v136 + 6) + ((v79 << 10) | (16 * __clz(__rbit64(v60))));
          v88 = *(v86 + 8);
          v60 &= v60 - 1;
          v149 = *v86;
          v87 = v149;
          LOBYTE(v150) = v88;
          sub_1974028EC(v149, v88);
          sub_1974028EC(v87, v88);
          sub_19752167C();
          sub_1974028C8(v149, v150);
          if ((*v132)(v81, 1, v66) == 1)
          {
            break;
          }

          v103 = v121;
          v104 = (*v131)(v121, v81, v66);
          v105 = MEMORY[0x19A8E1370](v104);
          sub_1974B82B0(v139, v103, v140, v124, v87, v88, v144, v142, v145, v141, &v149);
          objc_autoreleasePoolPop(v105);
          sub_1974028C8(v87, v88);
          v51 = i;
          v75 = v134;
          v62 = v133;
          (*v127)(v121, v66);
          v53 = v143;
          if (!v60)
          {
            goto LABEL_16;
          }
        }

        (*v126)(v81, v120);
        if (qword_1EAF2AD00 != -1)
        {
          swift_once();
        }

        v89 = sub_19752157C();
        __swift_project_value_buffer(v89, qword_1EAF33E50);
        sub_1974028EC(v87, v88);
        swift_unknownObjectRetain();
        v90 = sub_19752155C();
        v91 = sub_197521DDC();
        swift_unknownObjectRelease();
        sub_1974028C8(v87, v88);
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v116 = v90;
          v93 = v92;
          v118 = swift_slowAlloc();
          v147[0] = v118;
          *v93 = v125;
          v94 = *(v141 + 40);
          LODWORD(v115) = v91;
          v95 = v94(v142);
          v97 = sub_197462310(v95, v96, v147);

          *(v93 + 4) = v97;
          *(v93 + 12) = 2080;
          v149 = v87;
          LOBYTE(v150) = v88;
          sub_1974028EC(v87, v88);
          v98 = sub_1975217CC();
          v100 = sub_197462310(v98, v99, v147);

          *(v93 + 14) = v100;
          v101 = v116;
          _os_log_impl(&dword_1973F2000, v116, v115, "data store (%s) did not return a snapshot for: %s", v93, 0x16u);
          v102 = v118;
          swift_arrayDestroy();
          MEMORY[0x19A8E1B50](v102, -1, -1);
          MEMORY[0x19A8E1B50](v93, -1, -1);
        }

        else
        {
        }

        v82 = v144;
        v83 = type metadata accessor for _InvalidFutureBackingData();
        v149 = v87;
        LOBYTE(v150) = v88;
        sub_1974028EC(v87, v88);
        sub_1974028EC(v87, v88);
        v84 = sub_197512F60(v82, &v149);
        v152 = v83;
        WitnessTable = swift_getWitnessTable();
        v149 = v84;
        v147[3] = v87;
        v148 = v88;
        swift_beginAccess();
        v146 = v82;
        swift_getExtendedExistentialTypeMetadata();
        v51 = i;
        sub_19752166C();
        sub_19752168C();
        swift_endAccess();
        sub_1974028C8(v87, v88);
        v66 = v123;
        v81 = v122;
        v53 = v143;
        v75 = v134;
      }

LABEL_16:
      while (1)
      {
        v85 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          break;
        }

        if (v85 >= v62)
        {
          (*v128)(v53, Request);

          (*(v113 + 8))(v140, v119);
          return (*(v117 + 8))(v130, v137);
        }

        v60 = *(v75 + 8 * v85);
        ++v79;
        if (v60)
        {
          v79 = v85;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_30:
      (*v51)(v60, v62);
      v149 = 0;
      v150 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000007FLL, 0x8000000197527130);
      sub_1975227FC();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      v107 = (*(v141 + 40))(v142);
      MEMORY[0x19A8DFF80](v107);

      v111 = 0;
      v110 = 2719;
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    (*v128)(v53, Request);
    v154 = v26;
    v58 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    if (!swift_dynamicCast() || LOBYTE(v147[0]) != 1)
    {
      break;
    }

    v60 = v126;
    v48 = v130;
    v61 = v14;
    v62 = v127;
    (*v50)(v126, v130, v127);
    v63 = *(v61 - 8);
    if ((*(v63 + 48))(v60, 1, v61) == 1)
    {
      goto LABEL_30;
    }

    v64 = *v51;
    (*v51)(v60, v62);
    v64(v48, v62);
    (*(v63 + 56))(v48, 1, 1, v61);

    v26 = 0;
    v14 = v61;
  }

  return (*(v117 + 8))(v130, v137);
}

uint64_t sub_19742291C(void *a1, char a2, void *a3, unsigned __int8 a4)
{
  if (!a2)
  {
    if (!a4)
    {
      sub_197422C6C();
      return sub_197521F3C() & 1;
    }

    type metadata accessor for PersistentIdentifierImplementation();
    swift_allocObject();
    v11 = sub_19750C5E0(a1);
    sub_1974028C8(a1, 0);
    v12 = a4;
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (a2 != 1)
  {
    if (a4 == 2)
    {
      v14 = sub_19750A470();
      v16 = v15;
      if (v14 == sub_19750A470() && v16 == v17)
      {
      }

      else
      {
        v23 = sub_19752282C();

        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      v24 = sub_19750A588();
      v26 = v25;
      if (v24 == sub_19750A588() && v26 == v27)
      {

        return 1;
      }

      else
      {
        v28 = sub_19752282C();

        return v28 & 1;
      }
    }

    type metadata accessor for PersistentIdentifierImplementation();
    v11 = swift_allocObject();
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = sub_19750A470();
    *(v11 + 64) = v21;
    *(v11 + 72) = sub_19750A588();
    *(v11 + 80) = v22;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 256;
    v12 = a4;
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (a4 != 1)
  {

    v11 = a1;
    v12 = a4;
    if (!a4)
    {
LABEL_27:
      type metadata accessor for PersistentIdentifierImplementation();
      swift_allocObject();
      v13 = sub_19750C5E0(a3);
      sub_1974028C8(a3, 0);
LABEL_28:
      v20 = sub_19750C7A0(v11, v13);

      return v20 & 1;
    }

LABEL_19:
    if (v12 == 1)
    {

      v13 = a3;
    }

    else
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v13 = swift_allocObject();
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = sub_19750A470();
      *(v13 + 64) = v18;
      *(v13 + 72) = sub_19750A588();
      *(v13 + 80) = v19;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 256;
    }

    goto LABEL_28;
  }

  v7 = a1[7] == a3[7] && a1[8] == a3[8];
  if (!v7 && (sub_19752282C() & 1) == 0 || (a1[9] != a3[9] || a1[10] != a3[10]) && (sub_19752282C() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a3[3];
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    if (a1[2] == a3[2] && v8 == v9)
    {
      return 1;
    }

    else
    {

      return sub_19752282C();
    }
  }

  return result;
}

unint64_t sub_197422C6C()
{
  result = qword_1ED7C8630;
  if (!qword_1ED7C8630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7C8630);
  }

  return result;
}

uint64_t sub_197422CC0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_197425660(a1);
}

void *sub_197422CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B240, &qword_19752D3D0);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_197404860(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1974028B8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

_OWORD *sub_197422EA0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v32 = &type metadata for PersistentIdentifier;
  v33 = sub_197412644();
  v34 = sub_197411E68();
  *&v31 = a1;
  BYTE8(v31) = a2;
  v12 = *a6;
  v14 = sub_1973F4028(a3, a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a5 & 1) != 0)
  {
LABEL_7:
    v20 = *a6;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 48 * v14);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v21);
      return sub_1974028A0(&v31, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a5 & 1) == 0)
  {
    sub_19747A934();
    goto LABEL_7;
  }

  sub_1973FF110(v17, a5 & 1);
  v23 = *a6;
  v24 = sub_1973F4028(a3, a4);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *a6;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_2(&v31, &type metadata for PersistentIdentifier);
  v27 = *(off_1F0BA5088 + 8);
  MEMORY[0x1EEE9AC00](v26, v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  sub_1974246B8(v14, a3, a4, *v29, v29[8], v20);

  return __swift_destroy_boxed_opaque_existential_1Tm_2(&v31);
}

void DefaultSnapshot.init(from:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v193 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v179[-v8];
  v207 = MEMORY[0x1E69E7CC8];
  v10 = a1[4];
  v11 = a1;
  __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
  sub_197442414();
  sub_197522AFC();
  if (v2)
  {
    v13 = 0;
    v14 = v11;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm_2(v14);

    if (!v13)
    {
      return;
    }

    v15 = v208;
    v16 = v209;
LABEL_6:
    sub_1974028C8(v15, v16);
    return;
  }

  v186 = v5;
  v12 = sub_197412644();
  v198 = 0uLL;
  sub_19752261C();
  v187 = v4;
  v208 = v195;
  v209 = BYTE8(v195);
  v185 = v12;
  if (BYTE8(v195))
  {
    if (BYTE8(v195) == 1)
    {
      v18 = *(v195 + 72);
      v17 = *(v195 + 80);
    }

    else
    {
      v18 = sub_19750A588();
      v17 = v21;
    }
  }

  else
  {
    v19 = [v195 entityName];
    v18 = sub_1975217BC();
    v17 = v20;
  }

  v22 = v193;
  v23 = sub_197442240(v18, v17);

  v188 = v23;
  if (!v23)
  {
    *&v198 = 0;
    *(&v198 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000058, 0x8000000197525B80);
    *&v195 = v208;
    BYTE8(v195) = v209;
    sub_19752235C();
    goto LABEL_89;
  }

  sub_197413B90(v11, &v198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B620, &qword_19752EA90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B628, &qword_19752EA98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v206 = 0;
    memset(v205, 0, sizeof(v205));
  }

  v24 = v188;
  swift_beginAccess();
  v25 = *(v24 + 64);
  v191 = *(v25 + 16);
  if (!v191)
  {

LABEL_78:
    (*(v186 + 8))(v9, v187);
    sub_197448384(v205, &qword_1EAF2B630, &qword_19752EAA0);
    v176 = v208;
    *v22 = v207;
    v22[1] = v176;
    v177 = v22;
    v178 = v209;
    *(v177 + 16) = v209;

    sub_1974028EC(v176, v178);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v11);

    v15 = v176;
    v16 = v178;
    goto LABEL_6;
  }

  v210 = 0;
  v184 = v11;
  v26 = v25 + 32;

  v27 = 0;
  v28 = v187;
  v192 = v9;
  v190 = v25;
  while (v27 < *(v25 + 16))
  {
    sub_197413B90(v26, v202);
    v29 = v203;
    v30 = v204;
    __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
    v31 = (*(v30 + 32))(v29, v30);
    v33 = v32;
    sub_1974A0FA4(v205, &v195);
    if (!*(&v196 + 1))
    {
      sub_197448384(&v195, &qword_1EAF2B630, &qword_19752EAA0);
LABEL_26:
      v38 = v203;
      v39 = v204;
      __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
      if ((*(v39 + 104))(v38, v39))
      {

        v40 = v203;
        v41 = v204;
        __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
        v42 = (*(v41 + 32))(v40, v41);
        v44 = v43;
        v45 = v188;
        swift_beginAccess();
        v46 = *(v45 + 96);
        if (*(v46 + 16))
        {
          v47 = sub_1973F4028(v42, v44);
          v49 = v48;

          v9 = v192;
          if (v49)
          {
            v50 = *(*(v46 + 56) + 8 * v47);
            swift_endAccess();
            if ((*(v50 + 120) & 0x10) != 0)
            {
              v51 = v203;
              v52 = v204;
              __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
              v53 = (*(v52 + 80))(v51, v52);
              if (swift_conformsToProtocol2() && v53)
              {
                v54 = v203;
                v55 = v204;
                __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
                *&v195 = (*(v55 + 32))(v54, v55);
                *(&v195 + 1) = v56;
                v57 = sub_1974122A4();
                v58 = v210;
                sub_19752255C();
                v210 = v58;
                if (v58)
                {

                  (*(v186 + 8))(v192, v28);
                  goto LABEL_82;
                }

                v59 = *(&v198 + 1);
                if (*(&v198 + 1) >> 60 != 15)
                {
                  v60 = v198;
                  v61 = v203;
                  v62 = v204;
                  __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
                  v189 = (*(v62 + 32))(v61, v62);
                  v64 = v63;
                  v199 = MEMORY[0x1E6969080];
                  v200 = v57;
                  v201 = sub_1974122F8();
                  v183 = v60;
                  *&v198 = v60;
                  *(&v198 + 1) = v59;
                  sub_1974028A0(&v198, &v195);
                  sub_19744D134(v60, v59);
                  v65 = v207;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v194 = v65;
                  v67 = *(&v196 + 1);
                  v68 = __swift_mutable_project_boxed_opaque_existential_2(&v195, *(&v196 + 1));
                  v69 = *(*(v67 - 8) + 64);
                  MEMORY[0x1EEE9AC00](v68, v68);
                  v71 = &v179[-((v70 + 15) & 0xFFFFFFFFFFFFFFF0)];
                  (*(v72 + 16))(v71);
                  sub_19742FEAC(*v71, v71[1], v189, v64, isUniquelyReferenced_nonNull_native, &v194);

                  sub_19744725C(v183, v59);
                  goto LABEL_67;
                }
              }

              else
              {
                v153 = v203;
                v154 = v204;
                __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
                v155 = (*(v154 + 32))(v153, v154);
                v157 = v156;
                v158 = v203;
                v159 = v204;
                __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
                *&v195 = (*(v159 + 32))(v158, v159);
                *(&v195 + 1) = v160;
                v199 = MEMORY[0x1E6969080];
                v200 = sub_1974122A4();
                v201 = sub_1974122F8();
                v161 = v210;
                sub_19752261C();
                v210 = v161;
                if (v161)
                {

                  (*(v186 + 8))(v192, v28);
                  __swift_deallocate_boxed_opaque_existential_2(&v198);
                  goto LABEL_82;
                }

                sub_1974028A0(&v198, &v195);
                v162 = v207;
                v163 = swift_isUniquelyReferenced_nonNull_native();
                v194 = v162;
                v164 = *(&v196 + 1);
                v165 = __swift_mutable_project_boxed_opaque_existential_2(&v195, *(&v196 + 1));
                v166 = *(*(v164 - 8) + 64);
                MEMORY[0x1EEE9AC00](v165, v165);
                v168 = &v179[-((v167 + 15) & 0xFFFFFFFFFFFFFFF0)];
                (*(v169 + 16))(v168);
                sub_19742FEAC(*v168, v168[1], v155, v157, v163, &v194);

LABEL_67:
                __swift_destroy_boxed_opaque_existential_1Tm_2(&v195);
                v28 = v187;
                v207 = v194;
              }

              v9 = v192;
              v22 = v193;
              goto LABEL_58;
            }

LABEL_47:
            v105 = v203;
            v106 = v204;
            __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
            v107 = (*(v106 + 80))(v105, v106);
            v108 = v210;
            sub_19749CA50(v107, &v207, v202, v9, v107);
            v210 = v108;
            if (v108)
            {
              (*(v186 + 8))(v9, v28);

LABEL_82:
              __swift_destroy_boxed_opaque_existential_1Tm_2(v202);
              sub_197448384(v205, &qword_1EAF2B630, &qword_19752EAA0);
              v13 = 1;
              v14 = v184;
              goto LABEL_4;
            }

LABEL_57:
            v22 = v193;
            goto LABEL_58;
          }
        }

        else
        {

          v9 = v192;
        }

        swift_endAccess();
        goto LABEL_47;
      }

      v73 = v203;
      v74 = v204;
      __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
      if ((*(v74 + 112))(v73, v74))
      {
        goto LABEL_89;
      }

      sub_197413B90(v202, &v198);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Relationship();
      if (!swift_dynamicCast())
      {
        *&v198 = 0;
        *(&v198 + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197525C50);
        sub_19752235C();
        goto LABEL_89;
      }

      v75 = v195;
      if (*(v195 + 168) == 1)
      {
        swift_beginAccess();
        v76 = *(v75 + 64);
        v77 = swift_conformsToProtocol2();
        v9 = v192;
        if (v77 && v76)
        {
          v78 = v203;
          v79 = v204;
          __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
          *&v198 = (*(v79 + 32))(v78, v79);
          *(&v198 + 1) = v80;
          v81 = v210;
          v82 = sub_19752263C();
          v210 = v81;
          if (v81)
          {
            goto LABEL_80;
          }

          v83 = v82;

          if (v83)
          {

            goto LABEL_57;
          }

          v129 = v203;
          v130 = v204;
          __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
          *&v198 = (*(v130 + 32))(v129, v130);
          *(&v198 + 1) = v131;
          v132 = v210;
          sub_19752255C();
          v210 = v132;
          if (v132)
          {
LABEL_80:

            (*(v186 + 8))(v9, v28);
            goto LABEL_82;
          }

          v189 = v75;

          v113 = v195;
          v114 = BYTE8(v195);
          v133 = v203;
          v134 = v204;
          __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
          v135 = (*(v134 + 32))(v133, v134);
          v137 = v136;
          if (v114 == 255)
          {
            v170 = sub_1973F4028(v135, v136);
            v172 = v171;

            if (v172)
            {
              v173 = v207;
              v174 = swift_isUniquelyReferenced_nonNull_native();
              v194 = v173;
              v22 = v193;
              v28 = v187;
              if (!v174)
              {
                sub_19747A934();
                v173 = v194;
              }

              v175 = *(*(v173 + 48) + 16 * v170 + 8);

              sub_1974028A0((*(v173 + 56) + 48 * v170), &v195);
              sub_19749FA7C(v170, v173);

              v207 = v173;
            }

            else
            {

              v196 = 0u;
              v197 = 0u;
              v195 = 0u;
              v22 = v193;
              v28 = v187;
            }

            sub_197448384(&v195, &qword_1EAF2B5E8, &qword_19752EA40);
            goto LABEL_58;
          }

          v138 = v185;
          v199 = &type metadata for PersistentIdentifier;
          v200 = v185;
          v182 = v135;
          v183 = sub_197411E68();
          v201 = v183;
          *&v198 = v113;
          BYTE8(v198) = v114;
          sub_1974028A0(&v198, &v195);
          sub_1974028EC(v113, v114);
          v139 = v207;
          v180 = swift_isUniquelyReferenced_nonNull_native();
          v194 = v139;
          v140 = *(&v196 + 1);
          v141 = __swift_mutable_project_boxed_opaque_existential_2(&v195, *(&v196 + 1));
          v181 = v179;
          v142 = *(*(v140 - 8) + 64);
          MEMORY[0x1EEE9AC00](v141, v141);
          v144 = &v179[-((v143 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v145 + 16))(v144);
          v146 = v138;
          v9 = v192;
          sub_19743B06C(v144, v182, v137, v180, &v194, &type metadata for PersistentIdentifier, v146, v183);
        }

        else
        {
          v109 = v203;
          v110 = v204;
          __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
          *&v198 = (*(v110 + 32))(v109, v110);
          *(&v198 + 1) = v111;
          v112 = v210;
          sub_19752255C();
          v210 = v112;
          if (v112)
          {
            goto LABEL_80;
          }

          v189 = v75;

          v113 = v195;
          v114 = BYTE8(v195);
          v115 = v203;
          v116 = v204;
          __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
          v117 = (*(v116 + 32))(v115, v116);
          v119 = v118;
          if (v114 == 255)
          {
            v147 = sub_1973F4028(v117, v118);
            v149 = v148;

            if (v149)
            {
              v150 = v207;
              v151 = swift_isUniquelyReferenced_nonNull_native();
              v194 = v150;
              v25 = v190;
              v28 = v187;
              if (!v151)
              {
                sub_19747A934();
                v150 = v194;
              }

              v152 = *(*(v150 + 48) + 16 * v147 + 8);

              sub_1974028A0((*(v150 + 56) + 48 * v147), &v195);
              sub_19749FA7C(v147, v150);

              v207 = v150;
            }

            else
            {

              v196 = 0u;
              v197 = 0u;
              v195 = 0u;
              v25 = v190;
              v28 = v187;
            }

            sub_197448384(&v195, &qword_1EAF2B5E8, &qword_19752EA40);
            v22 = v193;
            goto LABEL_59;
          }

          v120 = v185;
          v199 = &type metadata for PersistentIdentifier;
          v200 = v185;
          v182 = v117;
          v183 = sub_197411E68();
          v201 = v183;
          *&v198 = v113;
          BYTE8(v198) = v114;
          sub_1974028A0(&v198, &v195);
          sub_1974028EC(v113, v114);
          v121 = v207;
          v180 = swift_isUniquelyReferenced_nonNull_native();
          v194 = v121;
          v122 = *(&v196 + 1);
          v123 = __swift_mutable_project_boxed_opaque_existential_2(&v195, *(&v196 + 1));
          v181 = v179;
          v124 = *(*(v122 - 8) + 64);
          MEMORY[0x1EEE9AC00](v123, v123);
          v126 = &v179[-((v125 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v127 + 16))(v126);
          v128 = v120;
          v9 = v192;
          sub_19743B06C(v126, v182, v119, v180, &v194, &type metadata for PersistentIdentifier, v128, v183);
        }

        sub_1974A1014(v113, v114);
        __swift_destroy_boxed_opaque_existential_1Tm_2(&v195);
        v28 = v187;
      }

      else
      {
        v189 = v195;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        v85 = v203;
        v86 = v204;
        __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
        *&v198 = (*(v86 + 32))(v85, v86);
        *(&v198 + 1) = v87;
        v88 = sub_197412788(&qword_1ED7C77C0, sub_197412644);
        v89 = v192;
        v90 = v210;
        sub_19752261C();
        v210 = v90;
        if (v90)
        {

          (*(v186 + 8))(v89, v28);
          goto LABEL_82;
        }

        v91 = v195;
        v92 = v203;
        v93 = v204;
        __swift_project_boxed_opaque_existential_1Tm_1(v202, v203);
        v94 = (*(v93 + 32))(v92, v93);
        v96 = v95;
        v199 = v84;
        v200 = v88;
        v201 = sub_197412788(&qword_1ED7C77C8, sub_197411E68);
        *&v198 = v91;
        sub_1974028A0(&v198, &v195);
        v97 = v207;
        LOBYTE(v93) = swift_isUniquelyReferenced_nonNull_native();
        v194 = v97;
        v98 = *(&v196 + 1);
        v99 = __swift_mutable_project_boxed_opaque_existential_2(&v195, *(&v196 + 1));
        v100 = *(*(v98 - 8) + 64);
        MEMORY[0x1EEE9AC00](v99, v99);
        v102 = &v179[-((v101 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v103 + 16))(v102);
        v104 = v93;
        v28 = v187;
        sub_197412800(*v102, v94, v96, v104, &v194);

        __swift_destroy_boxed_opaque_existential_1Tm_2(&v195);
        v9 = v192;
      }

      v207 = v194;
      goto LABEL_57;
    }

    sub_1974A1078(&v195, &v198);
    v34 = v199;
    v35 = v200;
    __swift_project_boxed_opaque_existential_1Tm_1(&v198, v199);
    *&v195 = v31;
    *(&v195 + 1) = v33;
    if (((*(v35 + 40))(v202, &v195, v34, v35) & 1) == 0)
    {
      goto LABEL_24;
    }

    LOBYTE(v195) = 0;
    __swift_project_boxed_opaque_existential_1Tm_1(&v198, v199);
    DynamicType = swift_getDynamicType();
    v37 = v210;
    sub_19749C758(DynamicType, v192, v31, v33, &v207, v202, &v195);
    v210 = v37;
    v22 = v193;
    if (v37)
    {
      (*(v186 + 8))(v192, v28);

      __swift_destroy_boxed_opaque_existential_1Tm_2(&v198);
      goto LABEL_82;
    }

    swift_beginAccess();
    if (v195 != 1)
    {
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1Tm_2(&v198);
      goto LABEL_26;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_2(&v198);
    v9 = v192;
LABEL_58:
    v25 = v190;
LABEL_59:
    ++v27;
    __swift_destroy_boxed_opaque_existential_1Tm_2(v202);
    v26 += 40;
    if (v191 == v27)
    {

      v11 = v184;
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_89:
  sub_1975223EC();
  __break(1u);
}

_OWORD *sub_1974246B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v18 = &type metadata for PersistentIdentifier;
  v19 = sub_197412644();
  v20 = sub_197411E68();
  *&v17 = a4;
  BYTE8(v17) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a6[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_1974028A0(&v17, (a6[7] + 48 * a1));
  v14 = a6[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v16;
  }

  return result;
}

void sub_197424778(void *a1)
{
  v2 = v1;
  v4 = [a1 objectID];
  swift_beginAccess();
  v5 = *(v1 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_197403C30(v4, 0);
    if (v7)
    {
      v8 = *(v5 + 56) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);

      sub_1974028EC(v10, v11);

      sub_1974028C8(v10, v11);
      return;
    }
  }

  swift_beginAccess();
  v12 = a1;
  v13 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_197424C58(v12, v4, 0, isUniquelyReferenced_nonNull_native);

  *(v2 + 24) = v15;
  swift_endAccess();
}

uint64_t sub_1974248B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_197522A5C();
  sub_19752180C();
  v7 = sub_197522A9C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_19752282C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1974249DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B2E0, &qword_19752D488);
    v3 = sub_19752245C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1973F4028(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_197424AE4(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_197403C30(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      sub_19747AC60(a5, a6);
      v17 = v25;
      goto LABEL_8;
    }

    sub_197424CD0(v22, a4 & 1, a5, a6);
    v26 = *v11;
    v17 = sub_197403C30(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_1975229CC();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  a7(v17, a2, a3, a1, v28);

  return sub_1974028EC(a2, a3);
}

unint64_t sub_197424C84(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_197424CD0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_19752243C();
  v10 = result;
  if (*(v7 + 16))
  {
    v45 = v5;
    v46 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = *(v7 + 48) + 16 * v24;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(*(v7 + 56) + 8 * v24);
      if ((v47 & 1) == 0)
      {
        sub_1974028EC(*v25, *(v25 + 8));
        v29 = v28;
      }

      v30 = *(v10 + 40);
      sub_197522A5C();
      if (v27)
      {
        if (v27 == 1)
        {
          MEMORY[0x19A8E1190](1);
          v31 = v26[7];
          v32 = v26[8];
          sub_19752180C();
          v33 = v26[9];
          v34 = v26[10];
          sub_19752180C();
          if (v26[3])
          {
            v44 = v26[2];
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v35 = *(v26 + 33);
          sub_197522A7C();
          v7 = v46;
          *(v26 + 32);
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v36 = -1 << *(v10 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v17 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v19 = v28;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v17 + 8 * v38);
          if (v42 != -1)
          {
            v18 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v37) & ~*(v17 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v19 = v28;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v20 = *(v10 + 48) + 16 * v18;
      *v20 = v26;
      *(v20 + 8) = v27;
      *(*(v10 + 56) + 8 * v18) = v19;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v5 = v45;
      goto LABEL_44;
    }

    v43 = 1 << *(v7 + 32);
    v5 = v45;
    if (v43 >= 64)
    {
      bzero(v12, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v43;
    }

    *(v7 + 16) = 0;
  }

LABEL_44:
  *v5 = v10;
  return result;
}

void sub_1974250D0(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    v34 = v8;
    do
    {
      v9 = 16 * v6;
      v10 = *(v2 + 40);
      v11 = *(v2 + 48) + 16 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_197522A5C();
      if (v13)
      {
        if (v13 == 1)
        {
          MEMORY[0x19A8E1190](1);
          v14 = *(v12 + 56);
          v15 = *(v12 + 64);
          sub_1974028EC(v12, 1);
          sub_19752180C();
          v16 = *(v12 + 72);
          v17 = *(v12 + 80);
          sub_19752180C();
          if (*(v12 + 24))
          {
            v35 = v3;
            v18 = v2;
            v19 = v7;
            v20 = v4;
            v21 = *(v12 + 16);
            sub_197522A7C();
            v4 = v20;
            v7 = v19;
            v2 = v18;
            v3 = v35;
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v22 = *(v12 + 33);
          sub_197522A7C();
          v8 = v34;
          *(v12 + 32);
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_1974028EC(v12, 2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_1974028EC(v12, 0);
        sub_197521F4C();
      }

      v23 = sub_197522A9C();
      sub_1974028C8(v12, v13);
      v24 = v23 & v7;
      if (v3 >= v8)
      {
        if (v24 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v24 >= v8)
      {
        goto LABEL_19;
      }

      if (v3 >= v24)
      {
LABEL_19:
        v25 = *(v2 + 48);
        v26 = (v25 + 16 * v3);
        v27 = (v25 + v9);
        if (16 * v3 != v9 || v26 >= v27 + 1)
        {
          *v26 = *v27;
        }

        v28 = *(v2 + 56);
        v29 = (v28 + 8 * v3);
        v30 = (v28 + 8 * v6);
        if (v3 != v6 || v29 >= v30 + 1)
        {
          *v29 = *v30;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v31 = *(v2 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v33;
    ++*(v2 + 36);
  }
}

uint64_t sub_197425424(uint64_t a1, int64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_19747A77C();
    *v4 = v10;
  }

  if (a2 < 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = *(v10 + 56);
    v12 = *(v10 + 48) + 16 * a2;
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    *a1 = v13;
    *(a1 + 8) = v12;
    v14 = *(v11 + 8 * a2);
    sub_1974250D0(a2, v10);
    *v4 = v10;
    return v14;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_197425500(void *a1, char a2, void *a3)
{
  if (a3)
  {
    sub_1974028C8(a1, a2);
  }
}

char *sub_197425554(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3C0, &qword_19752D580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_197425660(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_197521F5C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v13 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(&v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  v9 = v15;
  v10 = v16;
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 16))(v7, a1, AssociatedTypeWitness);
  (*(v11 + 56))(v7, 0, 1, AssociatedTypeWitness);
  v13 = v9;
  v14 = v10;
  sub_197405108();
  sub_19752166C();
  return sub_19752168C();
}

uint64_t sub_19742581C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  sub_1974028EC(*a1, v4);
  sub_1974028EC(v3, v5);
  v6 = sub_19742291C(v2, v4, v3, v5);
  sub_1974028C8(v3, v5);
  sub_1974028C8(v2, v4);
  return v6 & 1;
}

void sub_1974258A4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = PersistentModel.modelContext.getter(a1, a2);
  if (v6)
  {
    v7 = v6;
    PersistentModel.persistentModelID.getter(a1, a2, &v27);
    v8 = v27;
    v9 = v28;
    v10 = *(sub_1973FE074(a1, a2) + 24);

    v29 = a1;
    v27 = v2;
    __swift_project_boxed_opaque_existential_1Tm_2(&v27, a1);
    DynamicType = swift_getDynamicType();
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v27);
    v12 = swift_conformsToProtocol2();
    if (v12 && DynamicType)
    {
      v13 = v12;
      if (swift_getAssociatedTypeWitness() == DynamicType)
      {
        v30 = v8;
        v31 = v9;
        sub_1973FC6F4(&v30, a1, a2, &v27);
        (*(a2 + 64))(&v27, a1, a2);
      }

      else
      {
        sub_1974CC744(DynamicType, v7, v8, v9, v3, a1, DynamicType, a2, v13);
      }

      v24 = sub_1973FE074(a1, a2);
      sub_1974028C8(v8, v9);

      *(v24 + 24) |= v10;
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1975221EC();

      v27 = 0xD00000000000002CLL;
      v28 = 0x8000000197528480;
      v25 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v25);

      sub_1975223EC();
      __break(1u);
    }
  }

  else
  {
    if (qword_1EAF2AC88 != -1)
    {
      swift_once();
    }

    v14 = sub_19752157C();
    __swift_project_value_buffer(v14, qword_1EAF33DD0);
    swift_unknownObjectRetain();
    oslog = sub_19752155C();
    v15 = sub_197521DDC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315394;
      PersistentModel.persistentModelID.getter(a1, a2, &v27);
      v30 = v27;
      v31 = v28;
      v18 = sub_1975217CC();
      v20 = sub_197462310(v18, v19, &v32);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      (*(a2 + 56))(&v27, a1, a2);
      v30 = a1;
      swift_getExtendedExistentialTypeMetadata();
      v21 = sub_1975217CC();
      v23 = sub_197462310(v21, v22, &v32);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_1973F2000, oslog, v15, "Cannot fulfill future for %s without a context %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8E1B50](v17, -1, -1);
      MEMORY[0x19A8E1B50](v16, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_197425CF8(uint64_t a1, void *a2, uint64_t a3)
{
  v140[3] = a2;
  v117 = sub_19752139C();
  v118 = sub_197521F5C();
  v116 = *(v118 - 8);
  v7 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v118, v8);
  v115 = &v114 - v9;
  v130 = a3;
  Descriptor = type metadata accessor for FetchDescriptor();
  v114 = *(Descriptor - 8);
  v10 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](Descriptor, v11);
  v122 = &v114 - v12;
  v13 = *(a1 + 16);
  v129 = a2;
  v135 = a2;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v15 = sub_197405108();
  v127 = ExtendedExistentialTypeMetadata;
  v126 = v15;
  v140[0] = MEMORY[0x19A8DFD40](v13, &type metadata for PersistentIdentifier, ExtendedExistentialTypeMetadata);
  v139.isa = MEMORY[0x1E69E7CD0];
  v123 = v3;
  if (v13)
  {
    v17 = (a1 + 40);
    v125 = MEMORY[0x1E69E7CC8];
    *&v16 = 136315394;
    v120 = v16;
    *&v16 = 136315138;
    v121 = v16;
    while (1)
    {
      v21 = *(v17 - 1);
      LODWORD(v22) = *v17;
      v132 = v22;
      if (v22)
      {
        if (v22 != 1 || (v23 = v21[3]) == 0)
        {
          sub_1974028EC(v21, v22);
          if (qword_1EAF2AD00 != -1)
          {
            swift_once();
          }

          v26 = sub_19752157C();
          __swift_project_value_buffer(v26, qword_1EAF33E50);
          sub_1974028EC(v21, v22);
          v27 = sub_19752155C();
          v28 = sub_197521DDC();
          sub_1974028C8(v21, v22);
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v128 = v21;
            v30 = v29;
            v31 = swift_slowAlloc();
            *&v124 = v17;
            v22 = v31;
            v133 = v31;
            *v30 = v121;
            v135 = v128;
            v136 = v132;
            sub_1974028EC(v128, v132);
            v32 = sub_1975217CC();
            v34 = v13;
            v35 = sub_197462310(v32, v33, &v133);

            *(v30 + 4) = v35;
            v13 = v34;
            _os_log_impl(&dword_1973F2000, v27, v28, "cannot fulfill model without a store identifier:%s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v22);
            v36 = v22;
            LOBYTE(v22) = v132;
            v17 = v124;
            MEMORY[0x19A8E1B50](v36, -1, -1);
            v37 = v30;
            v21 = v128;
            MEMORY[0x19A8E1B50](v37, -1, -1);
          }

          v18 = v129;
          v19 = type metadata accessor for _InvalidFutureBackingData();
          v135 = v21;
          v136 = v22;
          sub_1974028EC(v21, v22);
          sub_1974028EC(v21, v22);
          v20 = sub_197512F60(v18, &v135);
          v137 = v19;
          WitnessTable = swift_getWitnessTable();
          v135 = v20;
          v133 = v21;
          v134 = v22;
          goto LABEL_4;
        }

        v24 = v21[2];
        v25 = v21;
        sub_1974028EC(v21, 1);
      }

      else
      {
        sub_1974028EC(v21, 0);
        v25 = v21;
        v38 = [v21 storeIdentifier];
        v24 = sub_1975217BC();
        v23 = v39;
      }

      if (*(v131 + 16))
      {
        v40 = *(v131 + 16);
      }

      else
      {
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          goto LABEL_61;
        }

        v40 = Strong;
      }

      swift_beginAccess();
      v42 = *(v40 + 56);

      if (*(v42 + 16))
      {
        v43 = sub_1973F4028(v24, v23);
        v45 = v44;

        if (v45)
        {
          v128 = v13;
          v124 = *(*(v42 + 56) + 16 * v43);
          swift_unknownObjectRetain();

          ObjectType = swift_getObjectType();
          v47 = (*(*(&v124 + 1) + 40))(ObjectType);
          v49 = v48;
          swift_unknownObjectRetain();
          v50 = v125;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v135 = v50;
          v53 = sub_1973F4028(v47, v49);
          v54 = v50[2];
          v55 = (v52 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            goto LABEL_59;
          }

          v57 = v52;
          if (v50[3] >= v56)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v60 = 16 * v53;
              if ((v52 & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            else
            {
              sub_19747B284();
              v60 = 16 * v53;
              if ((v57 & 1) == 0)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
            sub_19740CAD4(v56, isUniquelyReferenced_nonNull_native);
            v58 = sub_1973F4028(v47, v49);
            if ((v57 & 1) != (v59 & 1))
            {
              goto LABEL_63;
            }

            v53 = v58;
            v60 = 16 * v58;
            if ((v57 & 1) == 0)
            {
LABEL_41:
              v80 = v135;
              v135[(v53 >> 6) + 8] |= 1 << v53;
              v81 = (v80[6] + v60);
              *v81 = v47;
              v81[1] = v49;
              *(v80[7] + v60) = v124;
              v82 = v80[2];
              v83 = __OFADD__(v82, 1);
              v84 = v82 + 1;
              if (v83)
              {
                goto LABEL_60;
              }

              v125 = v80;
              v80[2] = v84;
              goto LABEL_43;
            }
          }

          v125 = v135;
          v70 = v135[7];
          v71 = *(v70 + v60);
          *(v70 + v60) = v124;
          swift_unknownObjectRelease();
LABEL_43:
          v85 = v132;
          sub_1974028EC(v25, v132);
          sub_19742AE44(&v135, v25, v85);
          swift_unknownObjectRelease();
          sub_1974028C8(v25, v85);
          sub_1974028C8(v135, v136);
          v13 = v128;
          goto LABEL_5;
        }
      }

      else
      {
      }

      if (qword_1EAF2AD00 != -1)
      {
        swift_once();
      }

      v61 = sub_19752157C();
      __swift_project_value_buffer(v61, qword_1EAF33E50);
      LOBYTE(v22) = v132;
      sub_1974028EC(v25, v132);

      v62 = sub_19752155C();
      v63 = sub_197521DDC();
      sub_1974028C8(v25, v22);

      if (os_log_type_enabled(v62, v63))
      {
        v128 = v13;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v133 = v65;
        *v64 = v120;
        v135 = v25;
        v136 = v22;
        sub_1974028EC(v25, v22);
        v66 = sub_1975217CC();
        v68 = sub_197462310(v66, v67, &v133);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2080;
        if (*(v131 + 16))
        {
          v69 = *(v131 + 16);
        }

        else
        {
          v72 = swift_weakLoadStrong();
          if (!v72)
          {
            goto LABEL_62;
          }

          v69 = v72;
        }

        swift_beginAccess();
        v73 = *(v69 + 56);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
        v74 = sub_19752160C();
        v76 = v75;

        v22 = sub_197462310(v74, v76, &v133);

        *(v64 + 14) = v22;
        _os_log_impl(&dword_1973F2000, v62, v63, "data store not found for:%s in: %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A8E1B50](v65, -1, -1);
        MEMORY[0x19A8E1B50](v64, -1, -1);

        v13 = v128;
        LOBYTE(v22) = v132;
      }

      else
      {
      }

      v77 = v129;
      v78 = type metadata accessor for _InvalidFutureBackingData();
      v21 = v25;
      v135 = v25;
      v136 = v22;
      sub_1974028EC(v25, v22);
      sub_1974028EC(v25, v22);
      v79 = sub_197512F60(v77, &v135);
      v137 = v78;
      WitnessTable = swift_getWitnessTable();
      v135 = v79;
      v133 = v25;
      v134 = v22;
LABEL_4:
      sub_19752166C();
      sub_19752168C();
      sub_1974028C8(v21, v22);
LABEL_5:
      v17 += 16;
      if (!--v13)
      {
        goto LABEL_45;
      }
    }
  }

  v125 = MEMORY[0x1E69E7CC8];
LABEL_45:
  v86 = v117;
  v87 = *(*(v117 - 8) + 56);
  v88 = v115;
  v87(v115, 1, 1, v117);
  v89 = v129;
  sub_197520C4C();
  v90 = sub_197521A1C();
  v91 = v122;
  v92 = v130;
  v93 = FetchDescriptor.init(predicate:sortBy:)(v88, v90, v122);
  MEMORY[0x1EEE9AC00](v93, v94);
  *(&v114 - 4) = v89;
  *(&v114 - 3) = v92;
  v113 = &v139;
  sub_1975213AC();
  v87(v88, 0, 1, v86);
  (*(v116 + 40))(v91, v88, v118);
  v95 = Descriptor;
  v91[*(Descriptor + 48)] = 0;
  v91[*(v95 + 60)] = 0;
  v96 = v125 + 8;
  v97 = 1 << *(v125 + 32);
  v98 = v125;
  v99 = -1;
  if (v97 < 64)
  {
    v99 = ~(-1 << v97);
  }

  v100 = v99 & v125[8];
  v101 = (v97 + 63) >> 6;

  v102 = 0;
  if (v100)
  {
    while (1)
    {
      v103 = v102;
LABEL_52:
      v104 = (v98[7] + ((v103 << 10) | (16 * __clz(__rbit64(v100)))));
      v105 = *v104;
      v106 = v104[1];
      v107 = swift_getObjectType();
      v108 = swift_unknownObjectRetain();
      v109 = v107;
      v110 = v123;
      sub_1974215D0(v108, v122, v131, &v139, v140, v129, v109, v130, v106);
      v123 = v110;
      if (v110)
      {
        break;
      }

      v100 &= v100 - 1;
      swift_unknownObjectRelease();
      v102 = v103;
      v98 = v125;
      if (!v100)
      {
        goto LABEL_49;
      }
    }

    swift_unknownObjectRelease();

    (*(v114 + 8))(v122, Descriptor);
    isa = v139.isa;

    return isa;
  }

  else
  {
LABEL_49:
    while (1)
    {
      v103 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        break;
      }

      if (v103 >= v101)
      {

        swift_beginAccess();
        isa = v140[0];
        (*(v114 + 8))(v122, Descriptor);

        return isa;
      }

      v100 = v96[v103];
      ++v102;
      if (v100)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    result = sub_1975229CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197426A98()
{
  sub_197426ACC();

  return swift_deallocClassInstance();
}

uint64_t sub_197426ACC()
{
  sub_1974028C8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

void sub_197426B00(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v153 = *v6;
  v13 = *(v6[4] + 72);
  if (a5)
  {
    if (a5 == 1)
    {
      v15 = a4[9];
      v14 = a4[10];
    }

    else
    {

      v15 = sub_19750A588();
      v14 = v18;
    }
  }

  else
  {

    v16 = [a4 entityName];
    v15 = sub_1975217BC();
    v14 = v17;
  }

  if (!*(v13 + 16))
  {
    goto LABEL_107;
  }

  v156 = a6;
  v19 = sub_1973F4028(v15, v14);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_108:

    *&v164 = 0;
    *(&v164 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    if (a5)
    {
      if (a5 == 1)
      {
        v114 = a4[9];
        v116 = a4[10];
      }

      else
      {
        v114 = sub_19750A588();
        v116 = v115;
      }
    }

    else
    {
      v118 = [a4 entityName];
      v114 = sub_1975217BC();
      v116 = v119;
    }

    MEMORY[0x19A8DFF80](v114, v116);

    MEMORY[0x19A8DFF80](0xD000000000000028, 0x8000000197523F30);
    BYTE8(v161) = a5;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v161 = v7;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v120 = [*(v7 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) managedObjectModel];
    v121 = [v120 description];
    v122 = sub_1975217BC();
    v124 = v123;

    MEMORY[0x19A8DFF80](v122, v124);

    goto LABEL_144;
  }

  v22 = *(*(v13 + 56) + 8 * v19);

  v24 = *(v7 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  MEMORY[0x1EEE9AC00](v26, v27);

  os_unfair_lock_lock(v24 + 4);
  sub_197431F88(&v164);
  os_unfair_lock_unlock(v24 + 4);
  v28 = v164;

  if (!v28)
  {
    *&v164 = 0;
    *(&v164 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v161 = v164;
    MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197523F60);
    *&v164 = a1;
    *(&v164 + 1) = a2;
    LOBYTE(v165) = a3;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197523F90);
    sub_19752135C();
    sub_19751E7F8(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v117 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v117);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    *&v164 = v7;
    sub_19752235C();
    goto LABEL_144;
  }

  v29 = a2;
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      swift_beginAccess();
      v63 = v28[5];
      if (*(v63 + 16))
      {
        v64 = v28[5];

        v65 = sub_197403C30(a4, a5);
        if (v66)
        {
          v67 = *(*(v63 + 56) + 8 * v65);

          if (*(v67 + 16))
          {
            v68 = sub_1973F4028(a1, a2);
            if (v69)
            {
              v70 = *(*(v67 + 56) + 8 * v68);

              *v156 = v70;
              *(v156 + 8) = 0;
              return;
            }
          }
        }
      }

      *&v161 = 0;
      *(&v161 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v163 = v161;
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
      *(&v161 + 1) = a2;
      LOBYTE(v162) = 3;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v161 = a4;
      BYTE8(v161) = a5;
      sub_19752235C();
      goto LABEL_144;
    }

    if (a3 == 5)
    {
      swift_beginAccess();
      v38 = v28[7];
      if (*(v38 + 16))
      {
        v39 = v28[7];

        v40 = sub_197403C30(a4, a5);
        if (v41)
        {
          v42 = *(*(v38 + 56) + 8 * v40);

          if (*(v42 + 16))
          {
            v43 = sub_1973F4028(a1, a2);
            if (v44)
            {
              sub_197404860(*(v42 + 56) + 32 * v43, &v164);

LABEL_96:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
              goto LABEL_97;
            }
          }
        }
      }

      else
      {
      }

      v164 = 0u;
      v165 = 0u;
      goto LABEL_96;
    }

    swift_beginAccess();
    v106 = v28[6];
    if (*(v106 + 16))
    {
      v107 = v28[6];

      v108 = sub_197403C30(a4, a5);
      if (v109)
      {
        v110 = *(*(v106 + 56) + 8 * v108);

        if (*(v110 + 16))
        {
          v111 = sub_1973F4028(a1, a2);
          if (v112)
          {
            v113 = *(*(v110 + 56) + 8 * v111);

            if (v113 >> 62)
            {
              v30 = sub_1975220EC();
              if (!v30)
              {
                goto LABEL_106;
              }
            }

            else
            {
              v30 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v30)
              {
LABEL_106:

                __break(1u);
LABEL_107:

                goto LABEL_108;
              }
            }

            *&v161 = MEMORY[0x1E69E7CC0];
            sub_197411CB8(0, v30 & ~(v30 >> 63), 0);
            if (v30 < 0)
            {
              goto LABEL_145;
            }

            v129 = 0;
            v130 = v161;
            do
            {
              if ((v113 & 0xC000000000000001) != 0)
              {
                v131 = MEMORY[0x19A8E0960](v129, v113);
              }

              else
              {
                v131 = *(v113 + 8 * v129 + 32);
              }

              *&v161 = v130;
              v133 = *(v130 + 16);
              v132 = *(v130 + 24);
              if (v133 >= v132 >> 1)
              {
                v135 = v131;
                sub_197411CB8((v132 > 1), v133 + 1, 1);
                v131 = v135;
                v130 = v161;
              }

              ++v129;
              *(v130 + 16) = v133 + 1;
              v134 = v130 + 16 * v133;
              *(v134 + 32) = v131;
              *(v134 + 40) = 0;
            }

            while (v30 != v129);

            __break(1u);
            goto LABEL_134;
          }
        }
      }
    }

    *&v161 = 0;
    *(&v161 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v163 = v161;
    MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
    *(&v161 + 1) = a2;
    LOBYTE(v162) = 4;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v161 = a4;
    BYTE8(v161) = a5;
    sub_19752235C();
    goto LABEL_144;
  }

  v30 = a1;
  if (a3)
  {
    if (a3 != 1)
    {
      swift_beginAccess();
      v71 = v28[3];
      if (*(v71 + 16))
      {
        v72 = v28[3];

        v73 = sub_197403C30(a4, a5);
        if (v74)
        {
          v75 = *(*(v71 + 56) + 8 * v73);

          if (*(v75 + 16))
          {
            v76 = sub_1973F4028(a1, v29);
            if (v77)
            {
              v78 = *(*(v75 + 56) + 8 * v76);

              v79 = sub_1975215EC();
              swift_beginAccess();
              v80 = *(v22 + 96);
              v152 = v22;
              if (*(v80 + 16) && (v81 = sub_1973F4028(a1, v29), (v82 & 1) != 0))
              {
                v83 = *(*(v80 + 56) + 8 * v81);
                swift_endAccess();
                type metadata accessor for Schema.CompositeAttribute();
                v84 = swift_dynamicCastClass();
                if (v84)
                {
                  v85 = v84;

                  v86 = sub_19746C608(v79, v85);
                  v87 = &type metadata for PersistentIdentifier;
                  *&v161 = &type metadata for PersistentIdentifier;
                  if (swift_conformsToProtocol2())
                  {
                    do
                    {
                      sub_1973F732C(v87, &v161);
                      v87 = v161;
                      if (swift_conformsToProtocol2())
                      {
                        v88 = v87 == 0;
                      }

                      else
                      {
                        v88 = 1;
                      }
                    }

                    while (!v88);
                  }

                  v89 = dynamic_cast_existential_2_conditional(v87);
                  if (v89)
                  {
                    v91 = *(*(v89 - 8) + 64);
                    v92 = MEMORY[0x1EEE9AC00](v89, v90);
                    sub_19746CA90(v92, v86, v85);
                    if (swift_dynamicCast())
                    {

                      v93 = v161;
                      v94 = BYTE8(v161);
LABEL_78:
                      *v156 = v93;
                      *(v156 + 8) = v94;
                      return;
                    }

                    *&v161 = 0;
                    BYTE8(v161) = -1;
                    sub_1974A1014(0, 255);
                    *&v161 = 0;
                    *(&v161 + 1) = 0xE000000000000000;
                    sub_1975221EC();

                    *&v161 = 0xD000000000000020;
                    *(&v161 + 1) = 0x80000001975241A0;
                    v141 = sub_197522B8C();
                    MEMORY[0x19A8DFF80](v141);

                    MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
                    v142 = [v86 description];
                    v143 = sub_1975217BC();
                    v145 = v144;

                    MEMORY[0x19A8DFF80](v143, v145);
                  }

                  goto LABEL_144;
                }
              }

              else
              {
                swift_endAccess();
              }

              *&v161 = 0;
              *(&v161 + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197524130);
              BYTE8(v163) = a5;
              sub_19752235C();
              MEMORY[0x19A8DFF80](0x2074756220, 0xE500000000000000);
              MEMORY[0x19A8DFF80](a1, v29);
              MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524150);
              *&v163 = v152;
              type metadata accessor for Schema.Entity();
              sub_19752235C();
              goto LABEL_144;
            }
          }
        }
      }

      v125 = v29;
      *&v161 = 0;
      *(&v161 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x80000001975240F0);
      if (a5)
      {
        if (a5 == 1)
        {
          v126 = a4[9];
          v128 = a4[10];
        }

        else
        {
          v126 = sub_19750A588();
          v128 = v127;
        }
      }

      else
      {
        v146 = [a4 entityName];
        v126 = sub_1975217BC();
        v128 = v147;
      }

      MEMORY[0x19A8DFF80](v126, v128);

      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
      MEMORY[0x19A8DFF80](a1, v125);
      MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
      *&v163 = a4;
      BYTE8(v163) = a5;
      sub_19752235C();
      goto LABEL_144;
    }

    swift_beginAccess();
    v31 = v28[4];
    if (*(v31 + 16))
    {
      v32 = v28[4];

      v33 = sub_197403C30(a4, a5);
      if (v34)
      {
        v35 = *(*(v31 + 56) + 8 * v33);

        if (*(v35 + 16))
        {
          v36 = sub_1973F4028(a1, v29);
          if (v37)
          {
            sub_197404860(*(v35 + 56) + 32 * v36, &v164);

LABEL_75:
            sub_197413B20(&v164, &v161);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
            v102 = &type metadata for PersistentIdentifier;
            if (swift_dynamicCast())
            {
              sub_1973FE5EC(&v164, &qword_1EAF2AF20, &unk_19752F320);

              goto LABEL_77;
            }

            LOBYTE(v158) = -1;
            sub_1974A1014(0, 255);
            sub_197413B20(&v164, &v161);
            if (!*(&v162 + 1))
            {
              goto LABEL_146;
            }

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_147;
            }

            *&v161 = &type metadata for PersistentIdentifier;
            if (swift_conformsToProtocol2())
            {
              do
              {
                sub_1973F732C(v102, &v161);
                v102 = v161;
                if (swift_conformsToProtocol2())
                {
                  v103 = v102 == 0;
                }

                else
                {
                  v103 = 1;
                }
              }

              while (!v103);
            }

            v104 = swift_conformsToProtocol2();
            if (v104)
            {
              v105 = v102 == 0;
            }

            else
            {
              v105 = 1;
            }

            if (!v105)
            {
              v159 = 0;
              v160 = -1;
              sub_19746C600(v102, 0, v158, &v159, &type metadata for PersistentIdentifier, v102, v104);
              sub_19744D0E0(0, v158);

              swift_beginAccess();
              v61 = v159;
              v62 = v160;
              sub_1974ADEAC(v159, v160);
              sub_1974A1014(v61, v62);
              if (v62 != 255)
              {
                sub_1973FE5EC(&v164, &qword_1EAF2AF20, &unk_19752F320);
                goto LABEL_93;
              }

              v161 = v164;
              v162 = v165;
              goto LABEL_97;
            }

            *&v161 = 0;
            *(&v161 + 1) = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000014, 0x8000000197524210);
            sub_197413B20(&v164, &v161);
            v149 = sub_1975217CC();
            MEMORY[0x19A8DFF80](v149);

            MEMORY[0x19A8DFF80](0xD000000000000022, 0x8000000197524230);
            MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
            while (1)
            {
LABEL_144:
              sub_1975223EC();
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              sub_1973FE5EC(&v161, &qword_1EAF2AF20, &unk_19752F320);
LABEL_147:
              *&v161 = 0;
              *(&v161 + 1) = 0xE000000000000000;
              sub_1975221EC();

              sub_197413B20(&v164, &v161);
              v148 = sub_1975217CC();
              MEMORY[0x19A8DFF80](v148);

              MEMORY[0x19A8DFF80](0xD000000000000012, 0x80000001975241F0);
              MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
            }
          }
        }
      }
    }

    v164 = 0u;
    v165 = 0u;
    goto LABEL_75;
  }

  swift_beginAccess();
  v151 = v22;
  v45 = *(v22 + 96);
  if (!*(v45 + 16) || (v46 = sub_1973F4028(a1, v29), (v47 & 1) == 0))
  {
    swift_endAccess();
    *&v164 = 0;
    *(&v164 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    MEMORY[0x19A8DFF80](a1, v29);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    BYTE8(v161) = a5;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x8000000197524010);
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v161 = v22;
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    goto LABEL_144;
  }

  v48 = *(*(v45 + 56) + 8 * v46);
  swift_endAccess();
  v49 = &type metadata for PersistentIdentifier;
  *&v164 = &type metadata for PersistentIdentifier;
  if (swift_conformsToProtocol2())
  {
    do
    {
      sub_1973F732C(v49, &v164);
      v49 = v164;
      if (swift_conformsToProtocol2())
      {
        v50 = v49 == 0;
      }

      else
      {
        v50 = 1;
      }
    }

    while (!v50);
  }

  v150 = v29;
  if ((*(v48 + 120) & 0x40) != 0)
  {
    swift_beginAccess();
    v95 = v28[2];
    v96 = *(v95 + 16);

    if (v96)
    {

      v97 = sub_197403C30(a4, a5);
      if (v98)
      {
        v99 = *(*(v95 + 56) + 8 * v97);

        if (*(v99 + 16))
        {
          v100 = sub_1973F4028(a1, v150);
          if (v101)
          {
            sub_197404860(*(v99 + 56) + 32 * v100, &v164);

            sub_1974028B8(&v164, &v161);
            goto LABEL_97;
          }
        }
      }

      v30 = a1;
    }

    goto LABEL_136;
  }

  v51 = swift_conformsToProtocol2();
  if (!v51 || !v49)
  {
LABEL_134:
    *&v164 = 0;
    *(&v164 + 1) = 0xE000000000000000;

    sub_1975221EC();
    v161 = v164;
    MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197524050);
    swift_beginAccess();
    v137 = *(v151 + 16);
    v136 = *(v151 + 24);

    MEMORY[0x19A8DFF80](v137, v136);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v30, v150);
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
    goto LABEL_144;
  }

  v52 = v51;
  swift_beginAccess();
  v53 = v28[2];
  v54 = *(v53 + 16);

  if (!v54)
  {
LABEL_136:
    *&v164 = 0;
    *(&v164 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v161 = v164;
    MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524080);
    swift_beginAccess();
    v139 = *(v151 + 16);
    v138 = *(v151 + 24);

    MEMORY[0x19A8DFF80](v139, v138);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v30, v150);
    MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975240A0);
    sub_19752135C();
    sub_19751E7F8(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v140 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v140);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_19752235C();
    goto LABEL_144;
  }

  v55 = v52;

  v56 = sub_197403C30(a4, a5);
  if ((v57 & 1) == 0 || (v58 = *(*(v53 + 56) + 8 * v56), , , !*(v58 + 16)) || (v59 = sub_1973F4028(a1, v150), (v60 & 1) == 0))
  {

    v30 = a1;
    goto LABEL_136;
  }

  sub_197404860(*(v58 + 56) + 32 * v59, &v164);

  sub_197404860(&v164, &v161);
  if (!swift_dynamicCast())
  {
    sub_197404860(&v164, &v161);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v164);

LABEL_77:

      v93 = v157;
      v94 = v158;
      goto LABEL_78;
    }

    sub_1974A1014(0, 255);
    *&v161 = 0;
    *(&v161 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x80000001975240C0);
    MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
    MEMORY[0x19A8DFF80](544370464, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_19752235C();
    goto LABEL_144;
  }

  v159 = 0;
  v160 = -1;
  sub_19746CD08(v49, v157, v158, &v159, &type metadata for PersistentIdentifier, v49, v55);
  sub_19744D0E0(v157, v158);

  swift_beginAccess();
  v61 = v159;
  v62 = v160;
  sub_1974ADEAC(v159, v160);
  sub_1974A1014(v61, v62);
  if (v62 != 255)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v164);
LABEL_93:
    *v156 = v61;
    *(v156 + 8) = v62;
    return;
  }

  sub_1974028B8(&v164, &v161);
LABEL_97:
  swift_dynamicCast();
}