uint64_t sub_1A78DBF44(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v8 = a5;
  v9 = a6 >> 1;
  if (__OFSUB__(a6 >> 1, a5))
  {
    goto LABEL_57;
  }

  if (v7 != (a6 >> 1) - a5)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v10 = (result + 48 * a2);
  if (v10 == (a4 + 48 * a5) || v6 == a2)
  {
    return 1;
  }

  v37 = result;
  if (v6 > a2)
  {
    v12 = v10[5];
    v13 = v10[3];
    v44 = v10[1];
    v45 = *v10;
    v42 = v10[4];
    v43 = v10[2];
    result = swift_unknownObjectRetain();
    if (v9 == v8)
    {
LABEL_13:
      v14 = 0;
      v15 = 0;
LABEL_14:
      sub_1A78DC35C(v45, v44, v43);
      v16 = v15;
      v17 = v14;
      v18 = 1;
LABEL_52:
      sub_1A78DC35C(v16, v17, v18);
      return 0;
    }

    if (v8 <= v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = v8;
    }

    v36 = v19;
    v20 = a2;
    while (1)
    {
      v41 = v13;
      if (v8 == v36)
      {
        goto LABEL_60;
      }

      v21 = (a4 + 48 * v8);
      v15 = *v21;
      v23 = v21[4];
      v22 = v21[5];
      v24 = v21[2];
      v40 = v21[3];
      v14 = v21[1];
      result = swift_unknownObjectRetain();
      if (v24 == 1)
      {
        goto LABEL_14;
      }

      v25 = v44;
      if (v45 != v15 || v44 != v14)
      {
        sub_1A78DC35C(v15, v14, v24);
        v16 = v45;
        v17 = v44;
        v18 = v43;
        goto LABEL_52;
      }

      if (v43)
      {
        if (!v24)
        {
          goto LABEL_55;
        }

        v26 = v12 >> 1;
        v27 = (v12 >> 1) - v42;
        if (__OFSUB__(v12 >> 1, v42))
        {
          goto LABEL_63;
        }

        v28 = v22 >> 1;
        v29 = (v22 >> 1) - v23;
        if (__OFSUB__(v22 >> 1, v23))
        {
          goto LABEL_64;
        }

        if (v27 != v29)
        {
          goto LABEL_50;
        }

        if (v27 && v41 + v42 != v40 + v23)
        {
          if (v42 >= v26)
          {
            goto LABEL_65;
          }

          if (v23 == v28)
          {
LABEL_50:
            sub_1A78DC35C(v15, v44, v24);
            v16 = v45;
            v17 = v44;
            v18 = v43;
            goto LABEL_52;
          }

          v30 = 0;
          if (v23 <= v28)
          {
            v31 = v22 >> 1;
          }

          else
          {
            v31 = v23;
          }

          v32 = v31 - v23;
          while (v32 != v30)
          {
            if (*(v41 + v42 + v30) != *(v40 + v23 + v30))
            {
              goto LABEL_50;
            }

            if (~v42 + v26 == v30)
            {
              goto LABEL_43;
            }

            v33 = v42 + v30 + 1;
            if (v33 < v42 || v33 >= v26)
            {
              goto LABEL_59;
            }

            if (v29 == ++v30)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_58;
        }

LABEL_43:
        sub_1A78DC35C(v15, v44, v24);
        v34 = v43;
        v25 = v44;
      }

      else
      {
        v34 = 0;
        if (v24)
        {
LABEL_55:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return 0;
        }
      }

      ++v20;
      result = sub_1A78DC35C(v45, v25, v34);
      if (v20 == v6)
      {
        return 1;
      }

      if (v20 < a2 || v20 >= v6)
      {
        goto LABEL_61;
      }

      ++v8;
      v35 = (v37 + 48 * v20);
      v12 = v35[5];
      v13 = v35[3];
      v44 = v35[1];
      v45 = *v35;
      v42 = v35[4];
      v43 = v35[2];
      result = swift_unknownObjectRetain();
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1A78DC2D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1A793DF58();
  v6 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x1AC55D830](result);
    v8 = __OFSUB__(v6, a2);
    v9 = v6 - a2;
    if (!v9)
    {
      return sub_1A793DFA8();
    }

    if (!((v9 < 0) ^ v8 | (v9 == 0)))
    {
      v10 = (a1 + a2);
      do
      {
        v11 = *v10++;
        sub_1A793DF88();
        --v9;
      }

      while (v9);
      return sub_1A793DFA8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78DC35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A78DC370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A78DC3B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t static HMAC.isValidAuthenticationCode(_:authenticating:using:)(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v15[0] = a2;
  v15[1] = a3;
  v14 = v9;
  v10 = type metadata accessor for HashedAuthenticationCode();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1A78C6CF0();
  return sub_1A78DC4BC(a1, v15, &v14, a5, v10, MEMORY[0x1E69E6290], a6, WitnessTable, v12) & 1;
}

uint64_t sub_1A78DC4BC(uint64_t a1, uint64_t a2, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a5;
  v29 = a8;
  v26 = a6;
  v27 = a1;
  v25 = a9;
  v13 = type metadata accessor for HashedAuthenticationCode();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = type metadata accessor for HMAC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v25 - v21;
  v30 = *a3;

  HMAC.init(key:)(&v30, a4, a7);
  HMAC.update<A>(data:)(a2, v18, v26, v25);
  HMAC.finalize()(v18, v17);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(a4) = sub_1A78CB9C8(v27, v17, v28, v13, v29, WitnessTable);
  (*(v14 + 8))(v17, v13);
  (*(v19 + 8))(v22, v18);
  return a4 & 1;
}

uint64_t sub_1A78DC6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, size_t *a6@<X8>)
{
  v20 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v19 - v14;
  static HashFunction.hash(bufferPointer:)(a1, a2, a4, a5);
  v21 = a3;
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  sub_1A793D6A8();
  v17 = sub_1A78C24CC(v22);

  result = (*(v12 + 8))(v15, AssociatedTypeWitness);
  *v20 = v17;
  return result;
}

uint64_t sub_1A78DC870@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X8>)
{
  if (result)
  {
    v6 = result;
    v8 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1A78C57C4(0, *(v8 + 2), 0, v8);
    }

    *a3 = v8;
    memcpy(v8 + 32, v6, a2 - v6);
    *a4 = *a3;
    return sub_1A793DB18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static HMAC.isValidAuthenticationCode<A>(_:authenticating:using:)(uint64_t a1, uint64_t a2, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *a3;
  v13 = type metadata accessor for HashedAuthenticationCode();
  WitnessTable = swift_getWitnessTable();
  return sub_1A78DC4BC(a1, a2, &v16, a4, v13, a5, a6, WitnessTable, a7) & 1;
}

uint64_t HashedAuthenticationCode.byteCount.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1A78DD3AC();
}

uint64_t HashedAuthenticationCode.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v20 - v7;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1A793DE28();

  v23 = 0x7469772043414D48;
  v24 = 0xEA00000000002068;
  v9 = sub_1A793DFB8();
  MEMORY[0x1AC55D280](v9);

  MEMORY[0x1AC55D280](8250, 0xE200000000000000);
  (*(v5 + 16))(v8, v1, AssociatedTypeWitness);
  v10 = *(swift_getAssociatedConformanceWitness() + 32);
  result = sub_1A793DB38();
  v12 = *(result + 16);
  if (v12 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = 2 * v12;
  if (2 * v12 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = result;
  if (v12)
  {
    v15 = sub_1A793DB28();
    *(v15 + 16) = v13;
    bzero((v15 + 32), v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v21 = 0;
  v22 = v15;
  sub_1A793DB18();
  sub_1A78DD23C(v14, &v22, &v21);

  v16 = *(v22 + 16);
  v17 = sub_1A793D998();
  v19 = v18;

  MEMORY[0x1AC55D280](v17, v19);

  return v23;
}

uint64_t HashedAuthenticationCode.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 24);

  return MEMORY[0x1EEE68A78](a1, AssociatedTypeWitness, v6);
}

uint64_t HashedAuthenticationCode.hashValue.getter(uint64_t a1)
{
  sub_1A793DF58();
  HashedAuthenticationCode.hash(into:)(v3, a1);
  return sub_1A793DFA8();
}

uint64_t sub_1A78DCD30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1A78DD3AC();
}

uint64_t sub_1A78DCD44(uint64_t a1, uint64_t a2)
{
  sub_1A793DF58();
  HashedAuthenticationCode.hash(into:)(v4, a2);
  return sub_1A793DFA8();
}

uint64_t sub_1A78DCD8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  v6 = MessageAuthenticationCode.makeIterator()(a1, WitnessTable);
  v8 = v7;
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_1A78DCE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A78DCF00(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_1A78DCE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static MessageAuthenticationCode.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1A78DCF04(uint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    if ((a3 >> 1) > a2)
    {
      v8 = *a5;
      v9 = (result + a2);
      while (v8 + 0x4000000000000000 >= 0)
      {
        v11 = *v9++;
        v10 = v11;
        v12 = (v11 >> 4) + 87;
        v13 = (v11 >> 4) | 0x30;
        if (v11 <= 0x9F)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        v15 = *a4;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v15;
        if (result)
        {
          v16 = 2 * v8;
          if (2 * v8 < 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          result = sub_1A78F5C2C(v15);
          v15 = result;
          *a4 = result;
          v16 = 2 * v8;
          if (2 * v8 < 0)
          {
            goto LABEL_26;
          }
        }

        if (v16 >= *(v15 + 16))
        {
          goto LABEL_27;
        }

        *(v15 + v16 + 32) = v14;
        v17 = *a5;
        if (*a5 + 0x4000000000000000 < 0)
        {
          goto LABEL_28;
        }

        v18 = *a4;
        if ((v10 & 0xFu) <= 9)
        {
          v19 = v10 & 0xF | 0x30;
        }

        else
        {
          v19 = (v10 & 0xF) + 87;
        }

        v20 = *a4;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v18;
        if (result)
        {
          if (v17 < 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          result = sub_1A78F5C2C(v18);
          v18 = result;
          *a4 = result;
          if (v17 < 0)
          {
LABEL_24:
            __break(1u);
            break;
          }
        }

        v21 = (2 * v17) | 1;
        if (v21 >= *(v18 + 16))
        {
          goto LABEL_29;
        }

        *(v18 + v21 + 32) = v19;
        v8 = *a5 + 1;
        if (__OFADD__(*a5, 1))
        {
          goto LABEL_30;
        }

        *a5 = v8;
        if (!--v5)
        {
          return result;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A78DD080(uint64_t a1, uint64_t *a2, void *a3)
{
  result = swift_beginAccess();
  v7 = 0;
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_28:
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

    v10 = *a3;
    if (*a3 + 0x4000000000000000 < 0)
    {
      goto LABEL_28;
    }

    v11 = *(a1 + 32 + v7);
    if (v11 <= 0x9F)
    {
      v12 = (*(a1 + 32 + v7) >> 4) | 0x30;
    }

    else
    {
      v12 = (*(a1 + 32 + v7) >> 4) + 87;
    }

    v13 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v13;
    if (result)
    {
      v14 = 2 * v10;
      if (2 * v10 < 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      result = sub_1A78F5C2C(v13);
      v13 = result;
      *a2 = result;
      v14 = 2 * v10;
      if (2 * v10 < 0)
      {
        goto LABEL_29;
      }
    }

    if (v14 >= *(v13 + 16))
    {
      goto LABEL_30;
    }

    *(v13 + v14 + 32) = v12;
    v15 = *a3;
    if (*a3 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v16 = *a2;
    if ((v11 & 0xF) <= 9)
    {
      v17 = v11 & 0xF | 0x30;
    }

    else
    {
      v17 = (v11 & 0xF) + 87;
    }

    v18 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if (result)
    {
      if (v15 < 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      result = sub_1A78F5C2C(v16);
      v16 = result;
      *a2 = result;
      if (v15 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }
    }

    v19 = (2 * v15) | 1;
    if (v19 >= *(v16 + 16))
    {
      goto LABEL_32;
    }

    *(v16 + v19 + 32) = v17;
    if (__OFADD__(*a3, 1))
    {
      goto LABEL_33;
    }

    ++*a3;
    v8 = *(a1 + 16);
    ++v7;
    if (__OFSUB__(v8, v9))
    {
      goto LABEL_34;
    }
  }

  return result;
}

uint64_t sub_1A78DD23C(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = (result + 32);
    v7 = *a3;
    while (v7 + 0x4000000000000000 >= 0)
    {
      v9 = *v6++;
      v8 = v9;
      v10 = (v9 >> 4) + 87;
      v11 = (v9 >> 4) | 0x30;
      if (v9 <= 0x9F)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      v13 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v13;
      if (result)
      {
        v14 = 2 * v7;
        if (2 * v7 < 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = sub_1A78F5C2C(v13);
        v13 = result;
        *a2 = result;
        v14 = 2 * v7;
        if (2 * v7 < 0)
        {
          goto LABEL_26;
        }
      }

      if (v14 >= *(v13 + 16))
      {
        goto LABEL_27;
      }

      *(v13 + v14 + 32) = v12;
      v15 = *a3;
      if (*a3 + 0x4000000000000000 < 0)
      {
        goto LABEL_28;
      }

      v16 = *a2;
      if ((v8 & 0xFu) <= 9)
      {
        v17 = v8 & 0xF | 0x30;
      }

      else
      {
        v17 = (v8 & 0xF) + 87;
      }

      v18 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if (result)
      {
        if (v15 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = sub_1A78F5C2C(v16);
        v16 = result;
        *a2 = result;
        if (v15 < 0)
        {
LABEL_23:
          __break(1u);
          return result;
        }
      }

      v19 = (2 * v15) | 1;
      if (v19 >= *(v16 + 16))
      {
        goto LABEL_29;
      }

      *(v16 + v19 + 32) = v17;
      v7 = *a3 + 1;
      if (__OFADD__(*a3, 1))
      {
        goto LABEL_30;
      }

      *a3 = v7;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78DD3AC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1A78DD454(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1A78DD554(uint64_t a1)
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

uint64_t sub_1A78DD5C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1A78DD714(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1A78DD92C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A78DD9AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_1A78DDB40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

size_t sub_1A78DDD8C(int64_t a1)
{
  v2 = v1;
  v4 = *v2;
  result = _swift_stdlib_malloc_size(*v2);
  if ((result - 32) < a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      if (a1)
      {
        v6 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
        v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
        v8 = v7 | HIWORD(v7);
        if (v8 == -1)
        {
          v9 = 0xFFFFFFFFLL;
        }

        else
        {
          v9 = (v8 + 1);
        }
      }

      else
      {
        v9 = 1;
      }

      type metadata accessor for SecureBytes.Backing();
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = v9;
      result = swift_beginAccess();
      v11 = v4[2];
      if ((v11 & 0x8000000000000000) == 0)
      {
        sub_1A78DECAC(v4, 0, v11);

        *v2 = v10;
        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

void *sub_1A78DDE78(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_19:

    return v4;
  }

  result = sub_1A78BDC10(*(a1 + 16), 0);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = result + 4;
    if (v2 >= 8 && result - a1 >= 0x20)
    {
      if (v2 < 0x20)
      {
        v5 = 0;
        goto LABEL_12;
      }

      v5 = v2 & 0x7FFFFFFFFFFFFFE0;
      v7 = result + 6;
      v8 = (a1 + 48);
      v9 = v2 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v10 = *v8;
        *(v7 - 1) = *(v8 - 1);
        *v7 = v10;
        v7 += 2;
        v8 += 2;
        v9 -= 32;
      }

      while (v9);
      if (v2 == v5)
      {
        goto LABEL_19;
      }

      if ((v2 & 0x18) != 0)
      {
LABEL_12:
        v11 = v5;
        v5 = v2 & 0x7FFFFFFFFFFFFFF8;
        v6 += v2 & 0x7FFFFFFFFFFFFFF8;
        v12 = v11 + 32;
        v13 = v11 - (v2 & 0x7FFFFFFFFFFFFFF8);
        do
        {
          *(result + v12) = *(a1 + v12);
          v12 += 8;
          v13 += 8;
        }

        while (v13);
        if (v2 == v5)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v6 += v5;
    }

LABEL_17:
    v14 = (v5 + a1 + 32);
    v15 = v2 - v5;
    do
    {
      v16 = *v14++;
      *v6++ = v16;
      --v15;
    }

    while (v15);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78DDFB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = swift_beginAccess();
    v8 = 0;
    v9 = *(a4 + 16);
    while (!__OFSUB__(v9, v8))
    {
      if (v9 == v8)
      {
        v6 = v9;
        goto LABEL_13;
      }

      *(a2 + v8) = *(a4 + 32 + v8);
      if (v6 - 1 == v8)
      {
        goto LABEL_13;
      }

      if (__OFADD__(++v8, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78DE068(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v14 = sub_1A78BDC10(32, 0);
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v15 = v14[2];
      if (v15)
      {
        v16 = v15 - 1;
        if (v15 - 1 >= (a3 - 1))
        {
          v16 = a3 - 1;
        }

        v17 = v16 + 1;
        if (v17 > 0x10 && (a2 - v14 - 32) >= 0x10)
        {
          v20 = a2;
          v21 = v17 & 0xF;
          if ((v17 & 0xF) == 0)
          {
            v21 = 16;
          }

          v18 = v17 - v21;
          v19 = v18 + 1;
          a2 += v18;
          v22 = v18;
          v23 = (v14 + 4);
          do
          {
            v24 = *v23++;
            *v20++ = v24;
            v22 -= 16;
          }

          while (v22);
        }

        else
        {
          v18 = 0;
          v19 = 1;
        }

        while (1)
        {
          *a2 = *(v14 + v18 + 32);
          if (a3 == v19)
          {
            break;
          }

          v18 = v19;
          ++a2;
          if (v15 + 1 == ++v19)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        a3 = v15;
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a1 = v14;
  a1[1] = a3;
  v25 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t sub_1A78DE1C8(void *a1, _BYTE *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = sub_1A78BDC10(48, 0);
  v8 = v3[1];
  *(v7 + 2) = *v3;
  *(v7 + 3) = v8;
  *(v7 + 4) = v3[2];
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v9 = v7[2];
      if (v9)
      {
        v10 = v9 - 1;
        if (v9 - 1 >= (a3 - 1))
        {
          v10 = a3 - 1;
        }

        v11 = v10 + 1;
        if (v11 > 0x10 && (a2 - v7 - 32) >= 0x10)
        {
          v14 = a2;
          v15 = v11 & 0xF;
          if ((v11 & 0xF) == 0)
          {
            v15 = 16;
          }

          v12 = v11 - v15;
          v13 = v12 + 1;
          a2 += v12;
          v16 = v12;
          v17 = (v7 + 4);
          do
          {
            v18 = *v17++;
            *v14++ = v18;
            v16 -= 16;
          }

          while (v16);
        }

        else
        {
          v12 = 0;
          v13 = 1;
        }

        while (1)
        {
          *a2 = *(v7 + v12 + 32);
          if (a3 == v13)
          {
            break;
          }

          v12 = v13;
          ++a2;
          if (v9 + 1 == ++v13)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        a3 = v9;
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a1 = v7;
  a1[1] = a3;
  v19 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t sub_1A78DE30C(void *a1, _BYTE *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = sub_1A78BDC10(64, 0);
  v8 = v3[1];
  *(v7 + 2) = *v3;
  *(v7 + 3) = v8;
  v9 = v3[3];
  *(v7 + 4) = v3[2];
  *(v7 + 5) = v9;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v10 = v7[2];
      if (v10)
      {
        v11 = v10 - 1;
        if (v10 - 1 >= (a3 - 1))
        {
          v11 = a3 - 1;
        }

        v12 = v11 + 1;
        if (v12 > 0x10 && (a2 - v7 - 32) >= 0x10)
        {
          v15 = a2;
          v16 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v16 = 16;
          }

          v13 = v12 - v16;
          v14 = v13 + 1;
          a2 += v13;
          v17 = v13;
          v18 = (v7 + 4);
          do
          {
            v19 = *v18++;
            *v15++ = v19;
            v17 -= 16;
          }

          while (v17);
        }

        else
        {
          v13 = 0;
          v14 = 1;
        }

        while (1)
        {
          *a2 = *(v7 + v13 + 32);
          if (a3 == v14)
          {
            break;
          }

          v13 = v14;
          ++a2;
          if (v10 + 1 == ++v14)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        a3 = v10;
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a1 = v7;
  a1[1] = a3;
  v20 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t sub_1A78DE450(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  __src[2] = *MEMORY[0x1E69E9840];
  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(__src, 0, 14);
      v23 = __src;
      v22 = __src;
LABEL_24:
      v11 = sub_1A78BDB94(v23, v22);
      goto LABEL_25;
    }

    v12 = *(a4 + 16);
    v13 = *(a4 + 24);
    v14 = sub_1A793D648();
    if (v14)
    {
      v15 = sub_1A793D678();
      if (__OFSUB__(v12, v15))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      v14 += v12 - v15;
    }

    v16 = __OFSUB__(v13, v12);
    v17 = v13 - v12;
    if (!v16)
    {
LABEL_16:
      v19 = sub_1A793D668();
      if (v19 >= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v19;
      }

      v21 = (v20 + v14);
      if (v14)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v14;
      goto LABEL_24;
    }

    __break(1u);
LABEL_12:
    v17 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v14 = sub_1A793D648();
    if (v14)
    {
      v18 = sub_1A793D678();
      if (__OFSUB__(a4, v18))
      {
        goto LABEL_47;
      }

      v14 += a4 - v18;
    }

    goto LABEL_16;
  }

  if (v10)
  {
    goto LABEL_12;
  }

  __src[0] = a4;
  LOWORD(__src[1]) = a5;
  BYTE2(__src[1]) = BYTE2(a5);
  BYTE3(__src[1]) = BYTE3(a5);
  BYTE4(__src[1]) = BYTE4(a5);
  BYTE5(__src[1]) = BYTE5(a5);
  if (BYTE6(a5))
  {
    v11 = sub_1A78BDC10(BYTE6(a5), 0);
    memcpy(v11 + 4, __src, BYTE6(a5));
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

LABEL_25:
  sub_1A78C0AFC(a4, a5);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_43;
  }

  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v24 = v11[2];
      if (v24)
      {
        v25 = v24 - 1;
        if (v24 - 1 >= (a3 - 1))
        {
          v25 = a3 - 1;
        }

        v26 = v25 + 1;
        if (v26 > 0x10 && (a2 - v11 - 32) >= 0x10)
        {
          v29 = a2;
          v30 = v26 & 0xF;
          if ((v26 & 0xF) == 0)
          {
            v30 = 16;
          }

          v27 = v26 - v30;
          v28 = v27 + 1;
          a2 += v27;
          v31 = v27;
          v32 = (v11 + 4);
          do
          {
            v33 = *v32++;
            *v29++ = v33;
            v31 -= 16;
          }

          while (v31);
        }

        else
        {
          v27 = 0;
          v28 = 1;
        }

        while (1)
        {
          *a2 = *(v11 + v27 + 32);
          if (a3 == v28)
          {
            break;
          }

          v27 = v28;
          ++a2;
          if (v24 + 1 == ++v28)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
LABEL_42:
        a3 = v24;
      }

      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_43:
  *a1 = v11;
  a1[1] = a3;
  v34 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t sub_1A78DE70C(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_24;
    }

    v15 = *(a4 + 16);
    v16 = *(a4 + 24);
    v17 = sub_1A793D648();
    if (v17)
    {
      v18 = sub_1A793D678();
      if (__OFSUB__(v15, v18))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }

      v17 += v15 - v18;
    }

    v19 = __OFSUB__(v16, v15);
    v20 = v16 - v15;
    if (!v19)
    {
LABEL_16:
      v22 = sub_1A793D668();
      if (v22 < v20)
      {
        v20 = v22;
      }

      if (v17 && v20)
      {
        v11 = sub_1A78BDC10(v20, 0);
        v12 = v11 + 4;
        v13 = v17;
        v14 = v20;
        goto LABEL_21;
      }

LABEL_24:
      sub_1A78C0AFC(a4, a5);
      v11 = MEMORY[0x1E69E7CC0];
      if (!a2)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_12:
    v20 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = sub_1A793D648();
    if (v17)
    {
      v21 = sub_1A793D678();
      if (__OFSUB__(a4, v21))
      {
        goto LABEL_45;
      }

      v17 += a4 - v21;
    }

    goto LABEL_16;
  }

  if (v10)
  {
    goto LABEL_12;
  }

  v35 = a4;
  v36 = a5;
  v37 = BYTE2(a5);
  v38 = BYTE3(a5);
  v39 = BYTE4(a5);
  v40 = BYTE5(a5);
  if (BYTE6(a5))
  {
    v11 = sub_1A78BDC10(BYTE6(a5), 0);
    v12 = v11 + 4;
    v13 = &v35;
    v14 = BYTE6(a5);
LABEL_21:
    memcpy(v12, v13, v14);
    goto LABEL_22;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_22:
  sub_1A78C0AFC(a4, a5);
  if (!a2)
  {
LABEL_23:
    a3 = 0;
    goto LABEL_41;
  }

LABEL_25:
  if (!a3)
  {
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v23 = v11[2];
  if (v23)
  {
    v24 = v23 - 1;
    if (v23 - 1 >= (a3 - 1))
    {
      v24 = a3 - 1;
    }

    v25 = v24 + 1;
    if (v25 > 0x10 && (a2 - v11 - 32) >= 0x10)
    {
      v28 = a2;
      v29 = v25 & 0xF;
      if ((v25 & 0xF) == 0)
      {
        v29 = 16;
      }

      v26 = v25 - v29;
      v27 = v26 + 1;
      a2 += v26;
      v30 = v26;
      v31 = (v11 + 4);
      do
      {
        v32 = *v31++;
        *v28++ = v32;
        v30 -= 16;
      }

      while (v30);
    }

    else
    {
      v26 = 0;
      v27 = 1;
    }

    while (1)
    {
      *a2 = *(v11 + v26 + 32);
      if (a3 == v27)
      {
        break;
      }

      v26 = v27;
      ++a2;
      if (v23 + 1 == ++v27)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
LABEL_40:
    a3 = v23;
  }

LABEL_41:
  *a1 = v11;
  a1[1] = a3;
  v33 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t sub_1A78DE9D8(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = sub_1A78BDC10(20, 0);
  v12[4] = a4;
  v12[5] = a5;
  *(v12 + 12) = a6;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v13 = v12[2];
      if (v13)
      {
        v14 = v13 - 1;
        if (v13 - 1 >= (a3 - 1))
        {
          v14 = a3 - 1;
        }

        v15 = v14 + 1;
        if (v15 > 0x10 && (a2 - v12 - 32) >= 0x10)
        {
          v18 = a2;
          v19 = v15 & 0xF;
          if ((v15 & 0xF) == 0)
          {
            v19 = 16;
          }

          v16 = v15 - v19;
          v17 = v16 + 1;
          a2 += v16;
          v20 = v16;
          v21 = (v12 + 4);
          do
          {
            v22 = *v21++;
            *v18++ = v22;
            v20 -= 16;
          }

          while (v20);
        }

        else
        {
          v16 = 0;
          v17 = 1;
        }

        while (1)
        {
          *a2 = *(v12 + v16 + 32);
          if (a3 == v17)
          {
            break;
          }

          v16 = v17;
          ++a2;
          if (v13 + 1 == ++v17)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        a3 = v13;
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a1 = v12;
  a1[1] = a3;
  v23 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t sub_1A78DEB2C(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = sub_1A78BDC10(16, 0);
  v10[4] = a4;
  v10[5] = a5;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v11 = v10[2];
      if (v11)
      {
        v12 = v11 - 1;
        if (v11 - 1 >= (a3 - 1))
        {
          v12 = a3 - 1;
        }

        v13 = v12 + 1;
        if (v13 > 0x10 && (a2 - v10 - 32) >= 0x10)
        {
          v16 = a2;
          v17 = v13 & 0xF;
          if ((v13 & 0xF) == 0)
          {
            v17 = 16;
          }

          v14 = v13 - v17;
          v15 = v14 + 1;
          a2 += v14;
          v18 = v14;
          v19 = (v10 + 4);
          do
          {
            v20 = *v19++;
            *v16++ = v20;
            v18 -= 16;
          }

          while (v18);
        }

        else
        {
          v14 = 0;
          v15 = 1;
        }

        while (1)
        {
          *a2 = *(v10 + v14 + 32);
          if (a3 == v15)
          {
            break;
          }

          v14 = v15;
          ++a2;
          if (v11 + 1 == ++v15)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        a3 = v11;
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a1 = v10;
  a1[1] = a3;
  v21 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t sub_1A78DEC78()
{
  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  off_1ED5F8A18 = result;
  return result;
}

void *sub_1A78DECAC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = _swift_stdlib_malloc_size(result);
  if ((result - 4) < a3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = _swift_stdlib_malloc_size(v3) - 32;
  result = swift_beginAccess();
  v8 = v3[2];
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(v10, v11);
  v12 = v10 - v11;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    return sub_1A78E16C4((v6 + 4), v6 + v6[2] + 32, a2, a3, v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A78DED90(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = _swift_stdlib_malloc_size(v1) - 32;
  result = swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = __OFSUB__(v7, v3);
  v9 = v7 - v3;
  if (v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = _swift_stdlib_malloc_size(v1);
  result = sub_1A78E1544((v1 + 32), v1 + v10, v6, a1);
  v11 = *(v1 + 16);
  v8 = __OFADD__(v11, v3);
  v12 = v11 + v3;
  if (!v8)
  {
    *(v1 + 16) = v12;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

size_t sub_1A78DEE5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1A78C0D98(a1, a2, a3, a4);
  v10 = _swift_stdlib_malloc_size(v4) - 32;
  result = swift_beginAccess();
  v12 = v4[2];
  v13 = v10 - v12;
  if (__OFSUB__(v10, v12))
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = __OFSUB__(v13, v9);
  v15 = v13 - v9;
  if (v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1A78E15CC(a1, a2, a3, a4, v4 + v12 + 32);
  v16 = v4[2];
  v17 = v16 + v9;
  if (!__OFADD__(v16, v9))
  {
    result = swift_beginAccess();
    v4[2] = v17;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t sub_1A78DEF54(char a1)
{
  v3 = _swift_stdlib_malloc_size(v1) - 32;
  result = swift_beginAccess();
  v5 = v1[2];
  v6 = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v1);
  if ((result - 32) < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + v5 + 32) = a1;
  v9 = v1[2];
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    result = swift_beginAccess();
    v1[2] = v10;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t sub_1A78DF010(const void *a1, size_t a2)
{
  v5 = _swift_stdlib_malloc_size(v2) - 32;
  result = swift_beginAccess();
  v7 = v2[2];
  v8 = v5 - v7;
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(v8, a2);
  v10 = v8 - a2;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v7)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    result = memmove(v2 + v7 + 32, a1, a2);
LABEL_8:
    v11 = v2[2];
    v9 = __OFADD__(v11, a2);
    v12 = v11 + a2;
    if (!v9)
    {
      result = swift_beginAccess();
      v2[2] = v12;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_1A78DF0F0()
{
  v1 = sub_1A793DB98();
  v2 = _swift_stdlib_malloc_size(v0) - 32;
  result = swift_beginAccess();
  v4 = v0[2];
  v5 = v2 - v4;
  if (__OFSUB__(v2, v4))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = __OFSUB__(v5, v1);
  v7 = v5 - v1;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v0);
  if ((result - 32) < v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1A793DD08();
  v8 = v0[2];
  v6 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v6)
  {
    v0[2] = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1A78DF1E4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 16);
  return result;
}

uint64_t sub_1A78DF264@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = swift_beginAccess();
  v8 = *(v6 + 16);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 >= v4)
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1A78DF2E0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_1A78DF330()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16) == 0;
}

uint64_t *sub_1A78DF378(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1A78DF394(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1A78DF3B0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1A78DF3CC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1A78DF3E4(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_1A78DF460@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1A78DF478(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *sub_1A78DF490@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    result = swift_beginAccess();
    if ((v5 & 0x8000000000000000) == 0 && *(v6 + 16) >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78DF500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1A78C7D08(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t (*sub_1A78DF554(uint64_t a1, uint64_t *a2))(uint64_t result)
{
  v3 = *a2;
  v4 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v4 + v3 + 32);
  return sub_1A78DF58C;
}

uint64_t sub_1A78DF5A0(uint64_t *a1, uint64_t *a2)
{
  sub_1A78E238C(v2, *a2, a2[1], *a1, a1[1], a1[2]);
}

void (*sub_1A78DF5EC(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1A78DF6AC(v4, *a2, a2[1]);
  return sub_1A78DF664;
}

void sub_1A78DF664(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1A78DF6AC(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  v9 = *v3;
  result = swift_beginAccess();
  v11 = *(v9 + 16);
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;

    return sub_1A78DF77C;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1A78DF77C(uint64_t **a1)
{
  v1 = *a1;
  sub_1A78E238C((*a1)[8], v1[6], (*a1)[7], *v1, v1[1], v1[2]);
  v2 = v1[2];

  free(v1);
}

uint64_t sub_1A78DF7CC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A78E2488(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1A78DF7F8(void *result, void *a2)
{
  v3 = *result;
  v4 = *a2;
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else if (*a2 != *result)
  {
    v5 = *v2 + 32;
    v6 = *(v5 + v3);
    *(v5 + v3) = *(v5 + v4);
    *(v5 + v4) = v6;
  }

  return result;
}

size_t sub_1A78DF874(int64_t a1, int64_t a2, size_t a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v8[2];
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = _swift_stdlib_malloc_size(v8);
  v16 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    if (a2 >= a1)
    {
      v17 = *v4;
      return sub_1A78DFD90(a1, a2, a3);
    }

    goto LABEL_23;
  }

  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v18 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
    v20 = v19 | HIWORD(v19);
    if (v20 == -1)
    {
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = (v20 + 1);
    }
  }

  else
  {
    v21 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v21;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v22 = result;
  v23 = *v4;
  result = swift_beginAccess();
  v24 = v23[2];
  if (v24 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_1A78DECAC(v23, 0, a1);
  sub_1A78DEF54(a3);
  sub_1A78DECAC(v23, a2, v24);

  *v4 = v22;
  return result;
}

size_t sub_1A78DFA14(uint64_t a1, int64_t a2, void *a3, size_t a4)
{
  v5 = v4;
  v10 = *v4;
  result = swift_beginAccess();
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v10[2];
  v14 = __OFSUB__(v13, v12);
  v15 = v13 - v12;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15 + a4;
  if (__OFADD__(v15, a4))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = _swift_stdlib_malloc_size(v10);
  v18 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v17 - 32) >= v16)
  {
    if (a2 >= a1)
    {
      v19 = *v5;
      return sub_1A78DFE8C(a1, a2, a3, a4);
    }

    goto LABEL_23;
  }

  if (v16 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v16)
  {
    v20 = (v16 - 1) | ((v16 - 1) >> 1) | (((v16 - 1) | ((v16 - 1) >> 1)) >> 2);
    v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
    v22 = v21 | HIWORD(v21);
    if (v22 == -1)
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = (v22 + 1);
    }
  }

  else
  {
    v23 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v23;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v24 = result;
  v25 = *v5;
  result = swift_beginAccess();
  v26 = v25[2];
  if (v26 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_1A78DECAC(v25, 0, a1);
  sub_1A78DF010(a3, a4);
  sub_1A78DECAC(v25, a2, v26);

  *v5 = v24;
  return result;
}

size_t sub_1A78DFBC0(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v8[2];
  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = sub_1A793DB98();
  v13 = __OFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = _swift_stdlib_malloc_size(v8);
  v16 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    if (a2 >= a1)
    {
      v17 = *v4;
      return sub_1A78DFF8C(a1, a2, a3);
    }

    goto LABEL_23;
  }

  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v18 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
    v20 = v19 | HIWORD(v19);
    if (v20 == -1)
    {
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = (v20 + 1);
    }
  }

  else
  {
    v21 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v21;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v22 = result;
  v23 = *v4;
  result = swift_beginAccess();
  v24 = v23[2];
  if (v24 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_1A78DECAC(v23, 0, a1);
  sub_1A78DF0F0();
  sub_1A78DECAC(v23, a2, v24);

  *v4 = v22;
  return result;
}

size_t sub_1A78DFD90(int64_t a1, int64_t a2, size_t a3)
{
  result = swift_beginAccess();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v3[2];
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v3);
  if ((result - 32) < v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v8);
  v13 = 1 - v8;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1A78E1278(a2, v9, v13);
  result = sub_1A78E1340(a3, a1);
  v14 = v3[2];
  v15 = v14 + v13;
  if (!__OFADD__(v14, v13))
  {
    result = swift_beginAccess();
    v3[2] = v15;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_1A78DFE8C(uint64_t a1, int64_t a2, void *a3, size_t a4)
{
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v4[2];
  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12 + a4;
  if (__OFADD__(v12, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = __OFSUB__(a4, v10);
  v15 = a4 - v10;
  if (v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1A78E1278(a2, v11, v15);
  result = sub_1A78E13B4(a3, a4, a1);
  v16 = v4[2];
  v17 = v16 + v15;
  if (!__OFADD__(v16, v15))
  {
    result = swift_beginAccess();
    v4[2] = v17;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_1A78DFF8C(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  result = swift_beginAccess();
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v3[2];
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1A793DB98();
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1A793DB98();
  if (__OFSUB__(result, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v4[2];
  if (v13 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1A78E1278(a2, v13, result - v9);
  sub_1A78E1470(a3, a1);
  result = sub_1A793DB98();
  v14 = result - v9;
  if (__OFSUB__(result, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v4[2];
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    v4[2] = v17;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1A78E00C8(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    if (result >= 1)
    {
      v4 = v2;
      while (1)
      {
        v6 = *v4;
        result = swift_beginAccess();
        v7 = v6[2];
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v9 = _swift_stdlib_malloc_size(v6) - 32;
        v10 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v11 = v9 < v8;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          if (v8 < 0)
          {
            goto LABEL_32;
          }

          if (HIDWORD(v8))
          {
            goto LABEL_34;
          }

          if (v7 == -1)
          {
            v15 = 1;
          }

          else
          {
            v12 = v7 | (v7 >> 1) | ((v7 | (v7 >> 1)) >> 2);
            v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
            v14 = v13 | HIWORD(v13);
            if (v14 == -1)
            {
              v15 = 0xFFFFFFFFLL;
            }

            else
            {
              v15 = (v14 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v15;
          if (v7 < 0)
          {
            goto LABEL_36;
          }

          v20 = result;
          v21 = *v4;
          result = swift_beginAccess();
          v22 = v21[2];
          if (v22 < v7)
          {
            __break(1u);
            return result;
          }

          sub_1A78DECAC(v21, 0, v7);
          sub_1A78DEF54(a2);
          sub_1A78DECAC(v21, v7, v22);

          *v4 = v20;
          if (!--v3)
          {
            return result;
          }
        }

        else
        {
          v16 = *v4;
          result = swift_beginAccess();
          v17 = v16[2];
          if (__OFADD__(v17, 1))
          {
            goto LABEL_33;
          }

          result = _swift_stdlib_malloc_size(v16);
          if (result - 32 < v17 + 1)
          {
            goto LABEL_35;
          }

          if (v17 < v7)
          {
            goto LABEL_37;
          }

          result = sub_1A78E1278(v7, v17, 1);
          if (v7 < 0)
          {
            goto LABEL_38;
          }

          result = _swift_stdlib_malloc_size(v16);
          if (result - 32 < v8)
          {
            goto LABEL_39;
          }

          if (v8 < v7)
          {
            goto LABEL_40;
          }

          result = _swift_stdlib_malloc_size(v16);
          *(v16 + v7 + 32) = a2;
          v18 = v16[2];
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_41;
          }

          result = swift_beginAccess();
          v16[2] = v19;
          if (!--v3)
          {
            return result;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

size_t sub_1A78E030C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v33 - v12;
  v35 = v3;
  result = sub_1A793DA98();
  if (v36 == 1)
  {
    (*(v6 + 16))(v9, a1, a2);
    sub_1A793DA68();
    swift_getAssociatedConformanceWitness();
    sub_1A793DCF8();
    if (v38)
    {
      return (*(v34 + 8))(v13, AssociatedTypeWitness);
    }

    else
    {
      v15 = v37;
      while (1)
      {
        v16 = *v3;
        result = swift_beginAccess();
        v17 = v16[2];
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v19 = _swift_stdlib_malloc_size(v16) - 32;
        v20 = *v3;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v21 = v19 < v18;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          if (v18 < 0)
          {
            goto LABEL_33;
          }

          if (HIDWORD(v18))
          {
            goto LABEL_35;
          }

          if (v17 == -1)
          {
            v25 = 1;
          }

          else
          {
            v22 = v17 | (v17 >> 1) | ((v17 | (v17 >> 1)) >> 2);
            v23 = v22 | (v22 >> 4) | ((v22 | (v22 >> 4)) >> 8);
            v24 = v23 | HIWORD(v23);
            if (v24 == -1)
            {
              v25 = 0xFFFFFFFFLL;
            }

            else
            {
              v25 = (v24 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v25;
          if (v17 < 0)
          {
            goto LABEL_37;
          }

          v30 = result;
          v31 = *v3;
          result = swift_beginAccess();
          v32 = v31[2];
          if (v32 < v17)
          {
            __break(1u);
            break;
          }

          sub_1A78DECAC(v31, 0, v17);
          sub_1A78DEF54(v15);
          sub_1A78DECAC(v31, v17, v32);

          *v3 = v30;
        }

        else
        {
          v26 = *v3;
          result = swift_beginAccess();
          v27 = v26[2];
          if (__OFADD__(v27, 1))
          {
            goto LABEL_34;
          }

          result = _swift_stdlib_malloc_size(v26);
          if ((result - 32) < v27 + 1)
          {
            goto LABEL_36;
          }

          if (v27 < v17)
          {
            goto LABEL_38;
          }

          result = sub_1A78E1278(v17, v27, 1);
          if (v17 < 0)
          {
            goto LABEL_39;
          }

          result = _swift_stdlib_malloc_size(v26);
          if ((result - 32) < v18)
          {
            goto LABEL_40;
          }

          if (v18 < v17)
          {
            goto LABEL_41;
          }

          result = _swift_stdlib_malloc_size(v26);
          *(v26 + v17 + 32) = v15;
          v28 = v26[2];
          v29 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_42;
          }

          swift_beginAccess();
          v26[2] = v29;
        }

        sub_1A793DCF8();
        v15 = v37;
        if (v38 == 1)
        {
          return (*(v34 + 8))(v13, AssociatedTypeWitness);
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A78E0730@<X0>(void *a1@<X8>)
{
  if (qword_1ED5F8A30 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_1ED5F8A18;
}

uint64_t sub_1A78E07A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1A78DFBC0(*a1, a1[1], a2);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

void *sub_1A78E0824@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v7 = off_1ED5F8A18;
  if (!a2)
  {

    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    sub_1A78E00C8(a2, v5);
    result = v7;
LABEL_7:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

size_t sub_1A78E08E0(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  swift_beginAccess();
  return sub_1A78DF874(*(v2 + 16), *(v2 + 16), v3);
}

uint64_t sub_1A78E0938(uint64_t a1, uint64_t a2)
{
  sub_1A78E030C(a1, a2);
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

size_t sub_1A78E09CC@<X0>(int64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = swift_beginAccess();
  if (!*(v5 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 >= v4)
  {
    v8 = *(v5 + v4 + 32);
    result = sub_1A78E35EC(v4, v7);
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_1A78E0A68@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v3 + 32);
  result = sub_1A78C7D08(0, 1, v5, v3);
  if ((v7 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      result = sub_1A78E35EC(0, result);
      *a1 = v6;
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_1A78E0AF4(size_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      swift_beginAccess();
      result = sub_1A78C7D08(0, v2, *(v3 + 16), v3);
      if (v4)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        return sub_1A78E35EC(0, result);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

size_t sub_1A78E0B7C(char a1)
{
  v2 = *v1;
  if (a1)
  {
    swift_beginAccess();
    v3 = *(v2 + 16);
    if ((v3 & 0x8000000000000000) == 0)
    {
      return sub_1A78E35EC(0, v3);
    }

    __break(1u);
    goto LABEL_9;
  }

  v5 = *v1;

  if (qword_1ED5F8A30 != -1)
  {
LABEL_9:
    swift_once();
  }

  *v1 = off_1ED5F8A18;
}

uint64_t sub_1A78E0C4C(uint64_t (*a1)(char *))
{
  v4 = *v1;
  result = swift_beginAccess();
  v6 = 0;
  v7 = v4 + 32;
  do
  {
    v8 = *(v4 + 16);
    if (__OFSUB__(v8, v6))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v6 == v8)
    {
      goto LABEL_11;
    }

    v14 = *(v7 + v6);
    result = a1(&v14);
    if (v2)
    {
      return result;
    }

    v9 = v6 + 1;
    v10 = __OFADD__(v6, 1);
    if (result)
    {
      if (!v10)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_14:
      v11 = __OFADD__(v6++, 1);
      if (!v11)
      {
        while (1)
        {
          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
            break;
          }

LABEL_16:
          v12 = *(v4 + 16);
          if (__OFSUB__(v12, v9))
          {
            goto LABEL_27;
          }

          if (v12 == v9)
          {
            if (v9 < v6)
            {
              goto LABEL_31;
            }

            return sub_1A78E35EC(v6, v9);
          }

          v14 = *(v7 + v9);
          result = a1(&v14);
          if ((result & 1) == 0)
          {
            if (__OFSUB__(v9, v6))
            {
              goto LABEL_29;
            }

            if (v9 != v6)
            {
              v13 = *(v7 + v6);
              *(v7 + v6) = *(v7 + v9);
              *(v7 + v9) = v13;
            }

            goto LABEL_14;
          }
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (!v10);
  __break(1u);
LABEL_11:
  v9 = v6;
  return sub_1A78E35EC(v6, v9);
}

uint64_t sub_1A78E0E78(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1A78C2BF8(v12 + 32, v12 + 32 + *(v12 + 16), v15);
    v13 = v15[0];

    *a1 = v13;
    v12 = v13;
  }

  swift_beginAccess();
  a5(v12 + 32, v12 + 32 + *(v12 + 16), a2, a3, a4);
  return sub_1A78C0AFC(a2, a3);
}

uint64_t sub_1A78E0F7C@<X0>(uint64_t (*a1)(uint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = a1(v3 + 32, *(v3 + 16));
  if (!v4)
  {
    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  return result;
}

uint64_t sub_1A78E10E0()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

uint64_t sub_1A78E1154()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

void *sub_1A78E1198(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

void *sub_1A78E1204@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_1A78E1220@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *sub_1A78E123C(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

size_t sub_1A78E1278(size_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v7 = result;
  result = _swift_stdlib_malloc_size(v4);
  v8 = v7 + a3;
  if (__OFADD__(v7, a3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = __OFADD__(a2, a3);
  v10 = a2 + a3;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 < v8)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 1 || (result - 32) < a2)
  {
    goto LABEL_15;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v10)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  _swift_stdlib_malloc_size(v4);

  return memmove(&v4[v8 + 32], &v4[v7 + 32], a2 - v7);
}

size_t sub_1A78E1340(size_t result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= a2)
  {
    result = _swift_stdlib_malloc_size(v2);
    *(v2 + a2 + 32) = v5;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1A78E13B4(void *result, size_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v7 = a3 + a2;
  if (__OFADD__(a3, a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  result = _swift_stdlib_malloc_size(v4);
  if (result - 32 < v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = _swift_stdlib_malloc_size(v4);
  if (!v8)
  {
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return memmove(&v4[a3 + 32], v8, a2);
}

uint64_t sub_1A78E1470(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1A793DB98();
  v4 = a2 + result;
  if (__OFADD__(a2, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = _swift_stdlib_malloc_size(v2);
  if (result - 32 < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1A793DB98();
  if (__OFADD__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 + result < a2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  _swift_stdlib_malloc_size(v2);

  return sub_1A793DD08();
}

char *sub_1A78E1544(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    if (a2 - result >= a3)
    {
      swift_beginAccess();
      return memmove(&v5[a3], (a4 + 32), *(a4 + 16));
    }

    __break(1u);
    goto LABEL_7;
  }

  if (a3 > 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void *sub_1A78E15CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5)
  {
    return result;
  }

  v7 = result;
  if (!a3)
  {
    v12 = sub_1A78C0D98(0, result, 0, a4);
    result = sub_1A78C0D98(v7, a2, 0, a4);
    if (!__OFADD__(v12, result))
    {
      if (result + v12 >= v12)
      {
        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = sub_1A78C0D98(0, result, a3, a4);
  result = sub_1A78C0D98(v7, a2, a3, a4);
  if (__OFADD__(v10, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result + v10 < v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return memmove(a5, (a3 + v10), result);
}

size_t sub_1A78E16C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = a1 + a4;
  }

  else
  {
    v6 = 0;
  }

  if (a1)
  {
    v7 = (a1 + a3);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = a5[2];
  result = _swift_stdlib_malloc_size(a5);
  if ((result - 32) < v8)
  {
    __break(1u);
  }

  else
  {
    if (v7)
    {
      v10 = v6 - v7;
      result = memmove(a5 + v8 + 32, v7, v10);
    }

    else
    {
      v10 = 0;
    }

    v11 = a5[2];
    v12 = v11 + v10;
    if (!__OFADD__(v11, v10))
    {
      result = swift_beginAccess();
      a5[2] = v12;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A78E17B8()
{
  result = qword_1EB2A71F8;
  if (!qword_1EB2A71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A71F8);
  }

  return result;
}

unint64_t sub_1A78E180C()
{
  result = qword_1EB2A7200;
  if (!qword_1EB2A7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7200);
  }

  return result;
}

unint64_t sub_1A78E1864()
{
  result = qword_1EB2A7208;
  if (!qword_1EB2A7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7208);
  }

  return result;
}

unint64_t sub_1A78E18BC()
{
  result = qword_1ED5F8A08;
  if (!qword_1ED5F8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A08);
  }

  return result;
}

unint64_t sub_1A78E1910()
{
  result = qword_1ED5F8A38;
  if (!qword_1ED5F8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A38);
  }

  return result;
}

unint64_t sub_1A78E19F8()
{
  result = qword_1ED5F8A48;
  if (!qword_1ED5F8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A48);
  }

  return result;
}

unint64_t sub_1A78E1A80()
{
  result = qword_1EB2A7230;
  if (!qword_1EB2A7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7230);
  }

  return result;
}

unint64_t sub_1A78E1B1C()
{
  result = qword_1ED5F8A40;
  if (!qword_1ED5F8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A40);
  }

  return result;
}

unint64_t sub_1A78E1C34()
{
  result = qword_1ED5F8A58;
  if (!qword_1ED5F8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A58);
  }

  return result;
}

uint64_t sub_1A78E1CBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A7228, &qword_1A79408D8);
    sub_1A78E1A80();
    sub_1A78D84F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A78E1E54(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A6E40, &qword_1A793F018);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1A78E1ED4(uint64_t *result, void *a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *MEMORY[0x1E69E9840];
  v8 = *result;
  if (a3)
  {
    if (!v8)
    {
      __break(1u);
      goto LABEL_14;
    }

    result = a5();
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    result = ccrng();
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    result = ccec_compact_generate_key();
    if (!result)
    {
LABEL_11:
      *a2 = a4;
      v9 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
  }

  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = a5();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = ccrng();
  if (result)
  {
    result = ccec_generate_key_fips();
    if (result)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A78E1FF8(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a7;
  v24 = *MEMORY[0x1E69E9840];
  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (v12)
    {
      goto LABEL_18;
    }

    if (!*a1)
    {
      __break(1u);
LABEL_40:
      sub_1A793D668();
      goto LABEL_41;
    }

    if (!a7())
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (!ccrng())
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    result = ccec_generate_key_deterministic();
    if (!result)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  if (v12 != 2)
  {
    goto LABEL_28;
  }

  v14 = *(a3 + 16);
  v15 = sub_1A793D648();
  if (!v15)
  {
    goto LABEL_40;
  }

  v16 = v15;
  v17 = sub_1A793D678();
  if (__OFSUB__(v14, v17))
  {
LABEL_34:
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_35;
  }

  v18 = v14 - v17 + v16;
  result = sub_1A793D668();
  if (!v18)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!*a1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  result = (v7)(result);
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (__OFSUB__(*(a3 + 24), *(a3 + 16)))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    __break(1u);
    __break(1u);
  }

  v7 = result;
  result = ccrng();
  if (!result)
  {
    goto LABEL_53;
  }

  result = ccec_generate_key_deterministic();
  if (!result)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_18:
  if (a3 > a3 >> 32)
  {
    __break(1u);
    goto LABEL_34;
  }

  v19 = sub_1A793D648();
  if (!v19)
  {
LABEL_47:
    result = sub_1A793D668();
    goto LABEL_48;
  }

  v20 = v19;
  v21 = sub_1A793D678();
  if (__OFSUB__(a3, v21))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v22 = a3 - v21 + v20;
  result = sub_1A793D668();
  if (!v22)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!*a1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  result = (v7)(result);
  if (!result)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_38;
  }

  v7 = result;
  result = ccrng();
  if (result)
  {
    result = ccec_generate_key_deterministic();
    if (result)
    {
      __break(1u);
LABEL_28:
      if (*a1)
      {
        if (v7())
        {
          if (ccrng())
          {
            result = ccec_generate_key_deterministic();
            if (!result)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }

          goto LABEL_46;
        }

        goto LABEL_44;
      }

      goto LABEL_42;
    }

LABEL_32:
    *a2 = a6;
    v23 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1A78E238C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = swift_beginAccess();
  v14 = *(v11 + 16);
  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 < a3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    while (1)
    {
      LOBYTE(v13) = __OFSUB__(a5, a4);
      if (a3 == a2)
      {
        break;
      }

      if (v13)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (a5 == a4)
      {
        goto LABEL_27;
      }

      if (a4 >= a5)
      {
        goto LABEL_20;
      }

      *(v11 + 32 + a2) = *(a6 + 32 + a4);
      v13 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_21;
      }

      ++a4;
      ++a2;
      if (__OFSUB__(a3, v13))
      {
        goto LABEL_15;
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    if (a5 == a4)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A78E2488(uint64_t (*a1)(char *))
{
  v4 = *v1;
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v4 + 32;
  do
  {
    v12 = *(v7 + v6);
    v8 = a1(&v12);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v5;
      while (1)
      {
        v5 = v9 - 1;
        if (v6 >= v9 - 1)
        {
          return v6;
        }

        v12 = *(v4 + v9 + 31);
        result = a1(&v12);
        v9 = v5;
        if ((result & 1) == 0)
        {
          if (__OFSUB__(v5, v6))
          {
            __break(1u);
            return result;
          }

          if (v6 != v5)
          {
            v11 = *(v7 + v6);
            *(v7 + v6) = *(v4 + v5 + 32);
            *(v4 + v5 + 32) = v11;
          }

          break;
        }
      }
    }

    ++v6;
  }

  while (v6 < v5);
  return v6;
}

char *sub_1A78E259C(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

BOOL sub_1A78E2608(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  sub_1A78CBAB0(a2 + 32, a2 + 32 + *(a2 + 16), a1 + 32, a1 + 32 + v4, &v6);
  return v6;
}

unint64_t sub_1A78E2714(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  if (HIDWORD(result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = a6;
  if (result)
  {
    v10 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
    v12 = v11 | HIWORD(v11);
    v13 = a4;
    v14 = a5;
    v15 = v6;
    if (v12 == -1)
    {
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = (v12 + 1);
    }
  }

  else
  {
    v13 = a4;
    v14 = a5;
    v15 = v6;
    v16 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v17 = swift_allocObject();
  v27 = &v25;
  v17[2] = 0;
  v17[3] = v16;
  v18 = _swift_stdlib_malloc_size(v17);
  v19 = sub_1A78C0CEC(v7, (v17 + 4), v17 + v18);
  v21 = v20 + v19;
  v23 = v20 + v22;
  if (!v20)
  {
    v23 = 0;
    v21 = 0;
  }

  v28[0] = v21;
  v28[1] = v23;
  v29 = 0;
  sub_1A78C0990(a2, a3);
  sub_1A78C0990(a2, a3);

  sub_1A78E1FF8(v28, &v29, a2, a3, v13, v14, v26);
  if (v15)
  {
    sub_1A78C0AFC(a2, a3);
  }

  else
  {
    v24 = v29;
    swift_beginAccess();
    v17[2] = v24;
    sub_1A78C0AFC(a2, a3);
  }

  sub_1A78C0AFC(a2, a3);
  return v17;
}

unint64_t sub_1A78E2960(unint64_t result, char a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  if (HIDWORD(result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (result)
  {
    v9 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
    v11 = v10 | HIWORD(v10);
    if (v11 == -1)
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = (v11 + 1);
    }
  }

  else
  {
    v12 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v12;
  v14 = _swift_stdlib_malloc_size(v13);
  v15 = sub_1A78C0CEC(v5, (v13 + 4), v13 + v14);
  v17 = v16 + v15;
  v19 = v16 + v18;
  if (!v16)
  {
    v19 = 0;
    v17 = 0;
  }

  v21[0] = v17;
  v21[1] = v19;
  v22 = 0;

  sub_1A78E1ED4(v21, &v22, a2 & 1, a3, a4);
  if (v4)
  {
  }

  else
  {
    v20 = v22;
    swift_beginAccess();
    v13[2] = v20;
  }

  return v13;
}

void *sub_1A78E2AF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(a1))
  {
LABEL_15:
    __break(1u);
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  if (a1)
  {
    v6 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
    v8 = v7 | HIWORD(v7);
    if (v8 == -1)
    {
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = (v8 + 1);
    }
  }

  else
  {
    v9 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = v9;
  v11 = _swift_stdlib_malloc_size(v10);
  sub_1A78C0CEC(a1, (v10 + 4), v10 + v11);
  if (!v12)
  {
    goto LABEL_16;
  }

  if (!ccrng())
  {
    goto LABEL_17;
  }

  v13 = ccecdh_compute_shared_secret();
  if (v13)
  {
    v14 = v13;
    sub_1A78D6484();
    swift_allocError();
    *v15 = v14;
    *(v15 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v10[2] = a5;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

unint64_t sub_1A78E2CCC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = result;
  if (HIDWORD(result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result)
  {
    v4 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v6 = v5 | HIWORD(v5);
    if (v6 == -1)
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = (v6 + 1);
    }
  }

  else
  {
    v7 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = v7;
  v9 = _swift_stdlib_malloc_size(v8);
  v10 = sub_1A78C0CEC(v2, (v8 + 4), v8 + v9);
  v12 = v11 + v10;
  v14 = v11 + v13;
  if (!v11)
  {
    v14 = 0;
    v12 = 0;
  }

  v17[0] = v12;
  v17[1] = v14;
  swift_beginAccess();
  v15 = *(a2 + 16);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  result = sub_1A790005C(a2 + 32, v17, v16);
  if (!v16[0])
  {
    swift_beginAccess();
    v8[2] = 56;

    swift_bridgeObjectRelease_n();

    return v8;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_1A78E2EF8(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  if (HIDWORD(result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27[7] = a3;
  if (result)
  {
    v9 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
    v11 = v10 | HIWORD(v10);
    if (v11 == -1)
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = (v11 + 1);
    }
  }

  else
  {
    v12 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v12;
  v14 = _swift_stdlib_malloc_size(v13);
  result = sub_1A78C0CEC(v5, (v13 + 4), v13 + v14);
  if (!v15)
  {
    goto LABEL_18;
  }

  result = a5(v16);
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  ccmldsa_full_ctx_init();
  v17 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a2;
  v26 = &v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1A78C2BF8(v19 + 32, v19 + 32 + *(v19 + 16), v27);
    v20 = a4;
    v21 = v27[0];

    *a2 = v21;
    v19 = v21;
    a4 = v20;
  }

  swift_beginAccess();
  v22 = *(v19 + 16);
  key_with_seed = ccmldsa_generate_key_with_seed();
  if (key_with_seed)
  {
    v24 = key_with_seed;
    sub_1A78D6484();
    swift_allocError();
    *v25 = v24;
    *(v25 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v13[2] = a4;
  }

  return v13;
}

unint64_t sub_1A78E313C(unint64_t result, uint64_t a2, void (*a3)(void *, uint64_t *, uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  if (HIDWORD(result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (result)
  {
    v7 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v9 = v8 | HIWORD(v8);
    if (v9 == -1)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = (v9 + 1);
    }
  }

  else
  {
    v10 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = v10;
  v12 = _swift_stdlib_malloc_size(v11);
  v13 = sub_1A78C0CEC(v4, (v11 + 4), v11 + v12);
  v15 = v14 + v13;
  v17 = v14 + v16;
  if (!v14)
  {
    v17 = 0;
    v15 = 0;
  }

  v20[0] = v15;
  v20[1] = v17;
  v19 = 0;

  a3(v20, &v19, a2);
  if (v3)
  {
  }

  else
  {
    v18 = v19;
    swift_beginAccess();
    v11[2] = v18;
  }

  return v11;
}

void *sub_1A78E3294(unint64_t a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(a1))
  {
LABEL_13:
    __break(1u);
    __break(1u);
    goto LABEL_14;
  }

  if (a1)
  {
    v8 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
    v10 = v9 | HIWORD(v9);
    v11 = a5;
    if (v10 == -1)
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = (v10 + 1);
    }
  }

  else
  {
    v11 = a5;
    v12 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v12;
  v14 = _swift_stdlib_malloc_size(v13);
  sub_1A78C0CEC(a1, (v13 + 4), v13 + v14);
  if (!v15)
  {
    goto LABEL_15;
  }

  swift_retain_n();

  init_ccec_ctx_full();
  swift_beginAccess();
  v16 = *(a3 + 16);
  ccec_ctx_k(a4);
  if (!ccrng())
  {
    goto LABEL_16;
  }

  if (ccec_diversify_priv_twin())
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  swift_beginAccess();
  v13[2] = v11;

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

size_t sub_1A78E3470()
{
  v1 = _swift_stdlib_malloc_size(v0) - 32;
  result = swift_beginAccess();
  v3 = v0[2];
  if (__OFSUB__(v1, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (((v1 - v3) & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = _swift_stdlib_malloc_size(v0);
  if ((result - 32) >= v3)
  {
    v0[2] = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_1A78E34F0(int64_t a1, int64_t a2)
{
  result = swift_beginAccess();
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v2[2];
  if (__OFSUB__(v7, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v7 - v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = __OFSUB__(0, v6);
  v9 = a1 - a2;
  if (v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_1A78E1278(a2, v7, v9);
  if (a1 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _swift_stdlib_malloc_size(v2);
  v10 = v2[2];
  v11 = v10 + v9;
  if (!__OFADD__(v10, v9))
  {
    result = swift_beginAccess();
    v2[2] = v11;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

size_t sub_1A78E35EC(int64_t a1, int64_t a2)
{
  v3 = v2;
  v6 = *v2;
  result = swift_beginAccess();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v6[2];
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = _swift_stdlib_malloc_size(v6);
  v12 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v11 - 32) >= v10)
  {
    if (a2 >= a1)
    {
      v13 = *v3;
      return sub_1A78E34F0(a1, a2);
    }

    goto LABEL_21;
  }

  if (v10 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v10))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10)
  {
    v14 = (v10 - 1) | ((v10 - 1) >> 1) | (((v10 - 1) | ((v10 - 1) >> 1)) >> 2);
    v15 = v14 | (v14 >> 4) | ((v14 | (v14 >> 4)) >> 8);
    v16 = v15 | HIWORD(v15);
    if (v16 == -1)
    {
      v17 = 0xFFFFFFFFLL;
    }

    else
    {
      v17 = (v16 + 1);
    }
  }

  else
  {
    v17 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v17;
  if (a1 < 0)
  {
    goto LABEL_23;
  }

  v18 = result;
  v19 = *v3;
  result = swift_beginAccess();
  v20 = v19[2];
  if (v20 < a2)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  sub_1A78DECAC(v19, 0, a1);
  sub_1A78E3470();
  sub_1A78DECAC(v19, a2, v20);

  *v3 = v18;
  return result;
}

size_t sub_1A78E376C(void *a1, size_t a2)
{
  v5 = **(v2 + 16);
  swift_beginAccess();
  return sub_1A78DFA14(*(v5 + 16), *(v5 + 16), a1, a2);
}

uint64_t sub_1A78E3808(void *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return sub_1A78CE288(a1, a2, a3);
}

uint64_t sub_1A78E3860(void *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return sub_1A78CE2E0(a1, a2, a3);
}

uint64_t sub_1A78E38B8(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return sub_1A78CE1D8(a1, a2, a3, a4, a5);
}

uint64_t sub_1A78E3910(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69E9840];

  return sub_1A78CE230(a1, a2, a3, a4, a5, a6, a7);
}

void *sub_1A78E396C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x1E69E9840];
  result = sub_1A78CE390(a1, a2, a3, a4, a5);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A78E39D0@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    result = sub_1A790959C((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1A793DA58();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_1A790959C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = MEMORY[0x1E69E7CC0];
  v15 = 15;
  v16 = 4294959064;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = sub_1A793DA38();
        v9 = v19;
        result = sub_1A78E4868(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = result;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = sub_1A793D9B8();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = sub_1A793D9B8();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v21 = sub_1A793DA58();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1A790959C(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_1A790959C((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = sub_1A793D9B8();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = sub_1A793DA58();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_1A790959C(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v43;
LABEL_40:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_1A790959C((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

uint64_t sub_1A78E3DB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a5 >> 1;
  v6 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6 - result;
  if (__OFSUB__(v6, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < 1)
  {
    v7 = 0;
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = a5 >> 1;
    if (v6 < v7)
    {
LABEL_10:
      if (v8 >= a4)
      {
        if (v5 >= a4)
        {
          if (v5 >= v8)
          {
            if ((v8 & 0x8000000000000000) == 0)
            {
              return a2;
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v8 = a4 + v7;
  if (!__OFADD__(a4, v7))
  {
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1A78E3E4C(uint64_t a1, uint64_t a2)
{
  sub_1A793D7C8();
  v6 = sub_1A793DA58();
  v8 = v7;

  sub_1A793DB18();
  v9 = sub_1A793DCA8();

  v14 = v9 + 64;
  if (__OFADD__(v9, 64))
  {
    goto LABEL_21;
  }

  if (v14 < 0)
  {
    v14 = v9 + 127;
  }

  v15 = v14 >> 6;
  if (v15 <= -2)
  {
    v15 = -2;
  }

  v9 = sub_1A790959C(0, v15 + 2, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793DE28();

  MEMORY[0x1AC55D280](a1, a2);
  MEMORY[0x1AC55D280](0x2D2D2D2D2DLL, 0xE500000000000000);
  v10 = sub_1A793DCD8();
  v3 = *(v9 + 16);
  v14 = *(v9 + 24);
  v2 = v3 + 1;
  v43 = a2;
  a2 = a1;
  if (v3 >= v14 >> 1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    *(v9 + 16) = v2;
    v16 = (v9 + 32 * v3);
    v16[4] = v10;
    v16[5] = v11;
    v16[6] = v12;
    v16[7] = v13;
    if (sub_1A793DCC8() < 1)
    {
      break;
    }

    while (1)
    {
      v10 = sub_1A793DC88();
      v2 = (v11 & 1) != 0 ? v8 : v10;
      if (v2 >> 14 < v6 >> 14)
      {
        break;
      }

      v10 = sub_1A793DCE8();
      v3 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v3 >= v17 >> 1)
      {
        v39 = v11;
        v41 = v10;
        v37 = v13;
        v38 = v12;
        v19 = sub_1A790959C((v17 > 1), v3 + 1, 1, v9);
        v13 = v37;
        v12 = v38;
        v9 = v19;
        v11 = v39;
        v10 = v41;
      }

      *(v9 + 16) = v3 + 1;
      v14 = v9 + 32 * v3;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = v12;
      *(v14 + 56) = v13;
      if (v2 >> 14 > v8 >> 14)
      {
        goto LABEL_20;
      }

      v6 = sub_1A793DCE8();
      v8 = v18;

      if (sub_1A793DCC8() <= 0)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v40 = v11;
    v42 = v10;
    v29 = v12;
    v30 = v13;
    v31 = sub_1A790959C((v14 > 1), v2, 1, v9);
    v13 = v30;
    v12 = v29;
    v9 = v31;
    v11 = v40;
    v10 = v42;
  }

LABEL_16:
  sub_1A793DE28();

  MEMORY[0x1AC55D280](a2, v43);
  MEMORY[0x1AC55D280](0x2D2D2D2D2DLL, 0xE500000000000000);
  v20 = sub_1A793DCD8();
  v25 = *(v9 + 16);
  v24 = *(v9 + 24);
  if (v25 >= v24 >> 1)
  {
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = sub_1A790959C((v24 > 1), v25 + 1, 1, v9);
    v23 = v35;
    v22 = v34;
    v21 = v33;
    v9 = v36;
    v20 = v32;
  }

  *(v9 + 16) = v25 + 1;
  v26 = (v9 + 32 * v25);
  v26[4] = v20;
  v26[5] = v21;
  v26[6] = v22;
  v26[7] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7288, "xj");
  sub_1A78C2E38(&qword_1EB2A7290, &qword_1EB2A7288, "xj");
  sub_1A78E4C64();
  v27 = sub_1A793DAD8();

  return v27;
}

unint64_t sub_1A78E42E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a6 >> 14 < a5 >> 14)
  {
    __break(1u);
LABEL_31:
    result = sub_1A793D9D8();
    v18 = result;
    if ((v10 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_32:
    result = sub_1A793D9D8();
    v19 = result;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = a8;
  v9 = a7;
  v10 = a4;
  v12 = a3;
  v11 = a2;
  v13 = a1;
  result = sub_1A78E4CB8(a5, a6, a5, a6, a7, a8);
  v14 = result;
  v15 = v17;
  if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_31;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    goto LABEL_32;
  }

LABEL_7:
  if ((v10 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v19 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 < 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  swift_bridgeObjectRetain_n();
  result = sub_1A793DC98();
  if (v20)
  {
    v21 = v15;
  }

  else
  {
    v21 = result;
  }

  if (v21 >> 14 < v14 >> 14)
  {
    goto LABEL_34;
  }

  v40 = v13;
  v39 = sub_1A78E4CB8(v14, v21, v14, v15, v9, v8);
  v23 = v22;
  result = sub_1A793DC98();
  if (v24)
  {
    result = v15;
  }

  if (v15 >> 14 < result >> 14)
  {
    goto LABEL_35;
  }

  result = sub_1A78E4CB8(result, v15, v14, v15, v9, v8);
  if (v19 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = v25;
  v38 = v12;
  sub_1A793DB18();
  result = sub_1A793DC98();
  if (v28)
  {
    result = v26;
  }

  if (v27 >> 14 < result >> 14)
  {
    goto LABEL_37;
  }

  v29 = sub_1A78E4CB8(result, v27, v26, v27, v9, v8);
  v31 = v30;
  result = sub_1A793DC98();
  if (v32)
  {
    v33 = v26;
  }

  else
  {
    v33 = result;
  }

  if (v33 >> 14 < v26 >> 14)
  {
    goto LABEL_38;
  }

  v34 = sub_1A78E4CB8(v26, v33, v26, v27, v9, v8);
  v36 = v35;
  if (sub_1A78E45D4(v40, v11, v39, v23, v9, v8) & 1) != 0 && (sub_1A78E45D4(v38, v10, v29, v31, v9, v8))
  {
    v37 = MEMORY[0x1AC55D300](v34, v36, v9, v8);
    swift_bridgeObjectRelease_n();
    return v37;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    return 0;
  }
}

unint64_t sub_1A78E45D4(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v9 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v10 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v12 = 4 << v9;
  v28 = 4 * v11;
  v13 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v25 = a2 & 0xFFFFFFFFFFFFFFLL;
  v26 = v12;
  v23 = v10;
  v24 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  sub_1A793DB18();
  v15 = 15;
  while (1)
  {
    v16 = a3 ^ a4;
    if ((a3 ^ a4) < 0x4000)
    {
      if (v28 != v15 >> 14)
      {
        v17 = 0;
        goto LABEL_19;
      }

      v22 = 1;
LABEL_43:

      return v22;
    }

    result = sub_1A793DCB8();
    v17 = result;
    if ((a3 & 0xC) == v26)
    {
      result = sub_1A78E4BE8(a3, a5, a6);
      a3 = result;
      if ((a6 & 0x1000000000000000) == 0)
      {
LABEL_17:
        a3 = (a3 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_18;
      }
    }

    else if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_17;
    }

    if (v23 <= a3 >> 16)
    {
      goto LABEL_46;
    }

    a3 = sub_1A793D9E8();
LABEL_18:
    if (v28 == v15 >> 14)
    {
      v22 = 0;
      goto LABEL_43;
    }

LABEL_19:
    v19 = v15 & 0xC;
    result = v15;
    if (v19 == v14)
    {
      result = sub_1A78E4BE8(v15, a1, a2);
    }

    v20 = result >> 16;
    if (result >> 16 >= v11)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1A793DA18();
      v21 = result;
      if (v19 != v14)
      {
        goto LABEL_29;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v31[0] = a1;
      v31[1] = v25;
      v21 = *(v31 + v20);
      if (v19 != v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      result = v24;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1A793DE48();
      }

      v21 = *(result + v20);
      if (v19 != v14)
      {
LABEL_29:
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    result = sub_1A78E4BE8(v15, a1, a2);
    v15 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_33:
      if (v11 <= v15 >> 16)
      {
        goto LABEL_45;
      }

      v15 = sub_1A793D9E8();
      goto LABEL_35;
    }

LABEL_30:
    v15 = (v15 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_35:
    v22 = 0;
    if (v16 < 0x4000 || v17 != v21)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_1A78E4868(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1A78E49B8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1A793DE18();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1A793DE48() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1A78E49B8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1A78E4A50(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1A78E4AC4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1A78E4A50(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1A78E4BE8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A78E4AC4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1A793DE48();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1A78E4BE8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A793DA28();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC55D2B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1A78E4C64()
{
  result = qword_1EB2A7298;
  if (!qword_1EB2A7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7298);
  }

  return result;
}

unint64_t sub_1A78E4CB8(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  if ((a2 & 0xC) == 4 << v8)
  {
    v10 = result;
    v11 = a3;
    v12 = a4;
    v13 = sub_1A78E4BE8(a2, a5, a6);
    a4 = v12;
    a3 = v11;
    a2 = v13;
    result = v10;
  }

  if ((result & 0xC) == v9)
  {
    v14 = a2;
    v15 = a5;
    v16 = a3;
    v17 = a6;
    v18 = a4;
    result = sub_1A78E4BE8(result, v15, v17);
    a4 = v18;
    a3 = v16;
    a2 = v14;
  }

  if (a2 >> 14 > a4 >> 14 || result >> 14 < a3 >> 14 || a2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78E4D98(uint64_t a1, unint64_t a2)
{
  sub_1A793DB18();
  v5 = sub_1A78E39D0(0x7FFFFFFFFFFFFFFFuLL, 1, a1, a2, v4);
  v6 = v5;
  v7 = v5[2];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[7];
  v12 = &v5[4 * v7];
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[3];
  v55 = v12[2];
  sub_1A793DB18();
  sub_1A793DB18();
  v16 = sub_1A78E42E0(0x4745422D2D2D2D2DuLL, 0xEB00000000204E49, 0x2D2D2D2D2DuLL, 0xE500000000000000, v8, v9, v10, v11);
  if (!v17)
  {

    goto LABEL_13;
  }

  v54 = v16;
  v18 = v17;
  sub_1A793DB18();
  v19 = sub_1A78E42E0(0x444E452D2D2D2D2DuLL, 0xE900000000000020, 0x2D2D2D2D2DuLL, 0xE500000000000000, v13, v14, v55, v15);
  if (!v20)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_13;
  }

  if (v54 == v19 && v18 == v20)
  {
  }

  else
  {
    v22 = sub_1A793DEC8();

    if ((v22 & 1) == 0)
    {

LABEL_13:

LABEL_14:

      sub_1A78D6B80();
      swift_allocError();
      *v23 = 7;
      swift_willThrow();
    }
  }

  result = sub_1A78E3DB8(1, v6, v6 + 32, 1, (2 * v7) | 1);
  if (__OFSUB__(v27 >> 1, v26))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (((v27 >> 1) - v26) < 1)
  {

LABEL_45:

    goto LABEL_46;
  }

  v28 = v25;
  v52 = v27 >> 1;
  v53 = v26;
  result = sub_1A78E3DB8(1, result, v25, v26, v27);
  if (v30 <= (v31 >> 1))
  {
    v32 = v31 >> 1;
  }

  else
  {
    v32 = v30;
  }

  v33 = v32 - v30 + 1;
  v34 = (v29 + 32 * v30 + 16);
  v35 = (v31 >> 1) - v30;
  while (v35)
  {
    if (!--v33)
    {
      __break(1u);
      goto LABEL_49;
    }

    v37 = *(v34 - 2);
    v36 = *(v34 - 1);
    v39 = *v34;
    v38 = v34[1];
    v40 = (*v34 >> 59) & 1;
    if ((v38 & 0x1000000000000000) == 0)
    {
      LOBYTE(v40) = 1;
    }

    v41 = 4 << v40;
    if ((*(v34 - 2) & 0xC) == 4 << v40)
    {
      result = sub_1A78E4BE8(*(v34 - 2), *v34, v34[1]);
      v37 = result;
    }

    if ((v36 & 0xC) == v41)
    {
      result = sub_1A78E4BE8(v36, v39, v38);
      v36 = result;
      if ((v38 & 0x1000000000000000) != 0)
      {
LABEL_34:
        v42 = HIBYTE(v38) & 0xF;
        if ((v38 & 0x2000000000000000) == 0)
        {
          v42 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (v42 < v37 >> 16)
        {
          goto LABEL_52;
        }

        if (v42 < v36 >> 16)
        {
          goto LABEL_53;
        }

        result = sub_1A793DA08();
        goto LABEL_31;
      }
    }

    else if ((v38 & 0x1000000000000000) != 0)
    {
      goto LABEL_34;
    }

    result = (v36 >> 16) - (v37 >> 16);
LABEL_31:
    v34 += 4;
    --v35;
    if (result != 64)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();

      goto LABEL_45;
    }
  }

  swift_unknownObjectRetain();

  result = swift_unknownObjectRelease();
  if (v53 == v52)
  {
    goto LABEL_50;
  }

  if (v52 <= v53)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  v43 = v28 + 32 * v52;
  v45 = *(v43 - 32);
  v44 = *(v43 - 24);
  v46 = *(v43 - 16);
  v47 = *(v43 - 8);
  sub_1A793DB18();
  v48 = sub_1A793DCA8();

  if (v48 <= 64)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A72A0, &qword_1A7940BF0);
    sub_1A78C2E38(&qword_1EB2A72A8, &qword_1EB2A72A0, &qword_1A7940BF0);
    sub_1A78E4C64();
    swift_unknownObjectRetain();
    sub_1A793DAD8();
    swift_unknownObjectRelease();

    sub_1A793D728();
    v50 = v49;

    if (v50 >> 60 != 15)
    {
      swift_unknownObjectRelease();
      return v54;
    }
  }

LABEL_46:

  sub_1A78D6B80();
  swift_allocError();
  *v51 = 7;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t KEM.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

unint64_t sub_1A78E53F0()
{
  result = qword_1EB2A72B0[0];
  if (!qword_1EB2A72B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2A72B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IEEESecurity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IEEESecurity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A78E55A0(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v9 = sub_1A78E6210(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1A78E62C4(a4);
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1A78F9508(v13, a3, a4, &v12);
  v9 = v4;
  sub_1A78E62C4(a4);
  if (!v4)
  {
    v9 = v12;
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t static AES.CCM.seal<A, B>(_:using:nonce:authenticating:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a7;
  v23 = a1;
  v24 = a5;
  v15 = sub_1A793DC78();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  v28 = *a2;
  v27 = *a3;
  v20 = *(a6 - 8);
  (*(v20 + 16))(&v22 - v18, a4, a6);
  (*(v20 + 56))(v19, 0, 1, a6);
  v26 = 1;
  sub_1A78F7C60(v23, &v28, &v27, v19, &v26, v24, a6, v25, a9, a8);
  return (*(v16 + 8))(v19, v15);
}

uint64_t static AES.CCM.seal<A>(_:using:nonce:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16 = *a2;
  v10 = *a3;
  v14 = xmmword_1A7940CC0;
  v15 = v10;
  v13 = 1;
  v11 = sub_1A78CA3EC();
  return sub_1A78F7C60(a1, &v16, &v15, &v14, &v13, a4, MEMORY[0x1E6969080], a5, a6, v11);
}

uint64_t static AES.CCM.open<A>(_:using:authenticating:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1A793DC78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - v13;
  LOBYTE(v13) = *(a1 + 48);
  v15 = *a2;
  v16 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v16;
  v20[2] = *(a1 + 32);
  v21 = v13;
  v22 = v15;
  v17 = *(a4 - 8);
  (*(v17 + 16))(v14, a3, a4);
  (*(v17 + 56))(v14, 0, 1, a4);
  v18 = sub_1A78F83EC(v20, &v22, v14, a4, a5);
  (*(v11 + 8))(v14, v10);
  return v18;
}

uint64_t sub_1A78E5B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = ccaes_ccm_decrypt_mode();
  result = swift_beginAccess();
  v11 = *(a2 + 16);
  if (v11 >> 60)
  {
    __break(1u);
    goto LABEL_31;
  }

  v12 = v11 > 0x20;
  LOBYTE(v13) = 1;
  v14 = (1 << v11) & 0x101010000;
  if (v12 || v14 == 0)
  {
LABEL_13:
    sub_1A78D6484();
    swift_allocError();
    *v19 = 0;
    *(v19 + 4) = v13;
    swift_willThrow();
    return a1;
  }

  v42 = *(a1 + 16);
  v16 = *(&v42 + 1) >> 62;
  if ((*(&v42 + 1) >> 62) > 1)
  {
    if (v16 != 2)
    {
      v13 = 0;
      goto LABEL_18;
    }

    v17 = *(v42 + 16);
    v18 = *(v42 + 24);
    v13 = v18 - v17;
    if (!__OFSUB__(v18, v17))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (!v16)
  {
    v13 = BYTE14(v42);
LABEL_18:
    v38[0] = sub_1A78CC5A0(v13);
    v38[1] = v20;
    sub_1A78CC640(v38, 0);
    v40 = v42;
    v41 = *v38;
    v21 = *a1;
    v22 = *(a1 + 8);
    if (*(a1 + 48))
    {
      v23 = 16;
    }

    else
    {
      v23 = 8;
    }

    v38[0] = sub_1A78CC5A0(v23);
    v38[1] = v24;
    v25 = sub_1A78CC640(v38, 0);
    v39 = *v38;
    v26 = a2 + 32 + *(a2 + 16);
    v38[0] = a3;
    v38[1] = a4;
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    MEMORY[0x1EEE9AC00](v25);
    v37[2] = &v41;
    v37[3] = &v40;
    v37[4] = &v39;
    v37[5] = v38;
    v37[6] = v9;
    v37[7] = v29;
    v37[8] = v30;
    v33 = sub_1A78E5E78(sub_1A78E6180, v37, v31, v32);
    if (!v4)
    {
      if (v33)
      {
        a1 = v33;
        sub_1A78D6484();
        swift_allocError();
        *v34 = a1;
        *(v34 + 4) = 0;
      }

      else
      {
        sub_1A78E61B4(a1, v38);
        if (!sub_1A78E55A0(v21, v22, &v39, a1))
        {
          a1 = v41;
          v36 = v39;
          sub_1A78C0990(v41, *(&v41 + 1));
          sub_1A78C0AFC(v36, *(&v36 + 1));
          sub_1A78C0AFC(v40, *(&v40 + 1));
          sub_1A78C0AFC(v41, *(&v41 + 1));
          return a1;
        }

        sub_1A78D6484();
        swift_allocError();
        *v35 = 2;
        *(v35 + 4) = 1;
      }

      swift_willThrow();
    }

    sub_1A78C0AFC(v39, *(&v39 + 1));
    sub_1A78C0AFC(v40, *(&v40 + 1));
    sub_1A78C0AFC(v41, *(&v41 + 1));
    return a1;
  }

  if (!__OFSUB__(DWORD1(v42), v42))
  {
    v13 = DWORD1(v42) - v42;
LABEL_16:
    sub_1A78E5FC8(&v42, v38);
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t static AES.CCM.open(_:using:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return sub_1A78E5B14(v4, *a2, 0, 0xF000000000000000);
}

unint64_t sub_1A78E5E78(void *(*a1)(uint64_t *__return_ptr, void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v13[0] = a3;
      LOWORD(v13[1]) = a4;
      BYTE2(v13[1]) = BYTE2(a4);
      BYTE3(v13[1]) = BYTE3(a4);
      BYTE4(v13[1]) = BYTE4(a4);
      BYTE5(v13[1]) = BYTE5(a4);
      v7 = v13 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_7:
    result = sub_1A78F6E50(v8, v9, a1);
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
  v7 = v13;
LABEL_9:
  result = a1(&v12, v13, v7);
  if (!v4)
  {
    result = v12;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78E6024@<X0>(__int128 *a1@<X5>, _DWORD *a2@<X8>)
{
  v5 = *a1;
  result = sub_1A78CD4CC(sub_1A78E6318);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A78E6094@<X0>(__int128 *a1@<X4>, _DWORD *a2@<X8>)
{
  v5 = *a1;
  result = sub_1A78CD4CC(sub_1A78E634C);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A78E6108@<X0>(__int128 *a1@<X3>, _DWORD *a2@<X8>)
{
  v5 = *a1;
  result = sub_1A78CD4CC(sub_1A78E6388);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A78E6180@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  return sub_1A78E6024(*(v1 + 40), a1);
}

uint64_t sub_1A78E6210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  result = sub_1A793D648();
  v11 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1A793D668();
  result = sub_1A78F9508(v11, a4, a5, &v12);
  if (!v5)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1A78E6318@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  return sub_1A78E6094(*(v1 + 32), a1);
}

uint64_t sub_1A78E634C@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v9 = *(v1 + 80);
  v8 = *(v1 + 64);
  return sub_1A78E6108(*(v1 + 24), a1);
}

uint64_t sub_1A78E6388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = sub_1A78E63DC(a1, a2, **(v3 + 16), *(*(v3 + 16) + 8), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1A78E63DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = a12;
  v14 = a10;
  v37 = *MEMORY[0x1E69E9840];
  if (a4 >> 60 == 15)
  {
    if (a6)
    {
      if (a8)
      {
        if (a10)
        {
          if (a12)
          {
            if (result)
            {
              result = ccccm_one_shot();
              v15 = *MEMORY[0x1E69E9840];
              return result;
            }

            goto LABEL_53;
          }

LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  v18 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v18 != 2)
    {
      if (!a6)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (!a8)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (!a10)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (!a12)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (!result)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      goto LABEL_44;
    }

    v33 = result;
    v31 = a5;
    v28 = a8;
    v19 = *(a3 + 16);
    v20 = *(a3 + 24);

    v21 = sub_1A793D648();
    if (v21)
    {
      v22 = sub_1A793D678();
      if (__OFSUB__(v19, v22))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v21 += v19 - v22;
    }

    if (__OFSUB__(v20, v19))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    result = sub_1A793D668();
    if (!a6)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v13 = a12;
    a5 = v28;
    v14 = a10;
    result = v31;
    a8 = v33;
    if (!v28)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (!a10)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (!a12)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (!v21)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v33)
    {
      goto LABEL_44;
    }

    __break(1u);
  }

  else if (!v18)
  {
    if (!a6)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (!a8)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (!a10)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (!a12)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (!result)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_44:
    v25 = ccccm_one_shot();
    sub_1A78CEEC8(a3, a4);
    v26 = *MEMORY[0x1E69E9840];
    return v25;
  }

  v34 = result;
  v32 = a5;
  v36 = a6;
  v29 = a8;
  v30 = v14;
  v27 = v13;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_46;
  }

  v23 = sub_1A793D648();
  if (!v23)
  {
    goto LABEL_32;
  }

  v24 = sub_1A793D678();
  if (__OFSUB__(a3, v24))
  {
LABEL_48:
    __break(1u);
  }

  v23 += a3 - v24;
LABEL_32:
  result = sub_1A793D668();
  if (!v36)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  result = v32;
  if (!v29)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (!v30)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (!v27)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (!v23)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v34)
  {
    goto LABEL_44;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_1A78E6828@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CorecryptoCurveType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CorecryptoCurveType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1A78E6970()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A78E69C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A78E6A18(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  (*(a2 + 24))(&v6, a1, a2);
  result = [v4 groupOrderByteCountForCP_];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

void *sub_1A78E6A98(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  result = (*(a6 + 24))(&v9, a4, a6);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = ccec_x963_import_priv();
  if (result)
  {
    v7 = result;
    sub_1A78D6484();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1A78E6B58(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1A78E6A18(a3, a5);
  if ((result + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a1)
  {
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 1;
  if (a2 - a1 == ((2 * result) | 1))
  {
    if (a2 != a1)
    {
      if (*a1 == 4)
      {
        return result;
      }

      v8 = 5;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_8:
  sub_1A78D6484();
  swift_allocError();
  *v9 = v8;
  *(v9 + 4) = 1;
  return swift_willThrow();
}

unint64_t sub_1A78E6C24(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1A78E6A18(a3, a5);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  if (!a1)
  {
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 1;
  if (a2 - a1 != result + 1)
  {
LABEL_8:
    sub_1A78D6484();
    swift_allocError();
    *v9 = v8;
    *(v9 + 4) = 1;
    return swift_willThrow();
  }

  if (a2 == a1 || (*a1 & 0xFE) != 2)
  {
    v8 = 5;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1A78E6DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  result = sub_1A793D6A8();
  if (!v4)
  {
    (*(a4 + 24))(&v11, a2, a4);
    v8 = getccec_pub_ctx_size();
    v10 = MEMORY[0x1EEE9AC00](v8);
    result = sub_1A78C0EA8(v10, sub_1A78E70C8);
    if (v12)
    {

      sub_1A78D6484();
      swift_allocError();
      *v9 = 1;
      *(v9 + 4) = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1A78E6F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1A793D6A8();
  if (!v4)
  {
    v12 = 0;
    (*(a4 + 24))(&v11, a2, a4);
    v8 = getccec_pub_ctx_size();
    MEMORY[0x1EEE9AC00](v8);
    result = sub_1A78C0EA8(v9, sub_1A78E7140);
    if (v12)
    {

      sub_1A78D6484();
      swift_allocError();
      *v10 = 1;
      *(v10 + 4) = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1A78E7198(uint64_t result, void *a2)
{
  v2 = a2[2];
  if (v2 < 2)
  {
    goto LABEL_10;
  }

  v4 = a2[4];
  if (!is_mul_ok(v4, 0x28uLL))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = 40 * v4;
  v6 = a2[5];
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  sub_1A793DB18();
  sub_1A78E73F4(v7, v8);
  v9 = v2 - 2;
  if (v9)
  {
    v10 = a2 + 6;
    do
    {
      v11 = *v10++;
      sub_1A78E73F4(v11, v8);
      --v9;
    }

    while (v9);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1A78E7250(uint64_t a1)
{
  sub_1A793DF58();
  v2 = *(a1 + 16);
  MEMORY[0x1AC55D830](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1AC55D830](v4);
      --v2;
    }

    while (v2);
  }

  return sub_1A793DFA8();
}

uint64_t sub_1A78E72C8()
{
  v1 = *v0;
  result = MEMORY[0x1AC55D830](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x1AC55D830](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1A78E731C()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1AC55D830](v4);
      --v2;
    }

    while (v2);
  }

  return sub_1A793DFA8();
}

unint64_t sub_1A78E73A0()
{
  result = qword_1EB2A73B8;
  if (!qword_1EB2A73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A73B8);
  }

  return result;
}

uint64_t sub_1A78E73F4(unint64_t a1, char **a2)
{
  if (a1)
  {
    v4 = __clz(a1);
    v5 = *a2;
    if (v4 - 57 >= 7)
    {
      v6 = (((37 * (70 - v4)) >> 8) + (((70 - v4 - ((37 * (70 - v4)) >> 8)) & 0xFE) >> 1)) >> 2;
      v7 = 7 * v6 - 7;
      v8 = v6;
      while (v8 <= v6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1A78C57C4(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v5);
        }

        --v8;
        *(v5 + 2) = v10 + 1;
        v5[v10 + 32] = (a1 >> v7) | 0x80;
        v7 -= 7;
        if (v8 == 1)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_17:
      *a2 = v5;
    }

    v15 = a1 & 0x7F;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A78C57C4(0, *(v5 + 2) + 1, 1, v5);
      v5 = result;
    }

    v13 = *(v5 + 2);
    v16 = *(v5 + 3);
    v14 = v13 + 1;
    if (v13 >= v16 >> 1)
    {
      result = sub_1A78C57C4((v16 > 1), v13 + 1, 1, v5);
      v5 = result;
    }
  }

  else
  {
    v5 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A78C57C4(0, *(v5 + 2) + 1, 1, v5);
      v5 = result;
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      result = sub_1A78C57C4((v12 > 1), v13 + 1, 1, v5);
      v5 = result;
    }

    v15 = 0;
  }

  *(v5 + 2) = v14;
  v5[v13 + 32] = v15;
  *a2 = v5;
  return result;
}

uint64_t static HMAC.isValidAuthenticationCode<A>(_:authenticating:using:)(void *a1, uint64_t a2, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v13 = type metadata accessor for HashedAuthenticationCode();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for HMAC();
  v35 = *(v17 - 8);
  v18 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  v38 = *a3;

  v31 = a4;
  v33 = a6;
  HMAC.init(key:)(&v38, a4, a6);
  v21 = v34;
  v32 = a5;
  v34 = a7;
  HMAC.update<A>(data:)(v21, v17, a5, a7);
  HMAC.finalize()(v17, v16);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A793D6A8();
  v23 = v38;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)(sub_1A78E7A3C, 0, v13);
  if (v23 == v37)
  {
    v24 = a1[4];
    v25 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x1EEE9AC00](v25);
    v26 = v32;
    *(&v30 - 6) = v31;
    *(&v30 - 5) = v26;
    v27 = v34;
    *(&v30 - 4) = v33;
    *(&v30 - 3) = v27;
    *(&v30 - 2) = v16;
    sub_1A793D6A8();
    (*(v35 + 8))(v20, v17);
    v28 = v38;
  }

  else
  {
    (*(v35 + 8))(v20, v17);
    v28 = 0;
  }

  (*(v36 + 8))(v16, v13);
  return v28;
}

uint64_t sub_1A78E794C(uint64_t a1, uint64_t a2)
{
  v8[3] = a2;
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[6];
  v8[2] = a1;
  v6 = type metadata accessor for HashedAuthenticationCode();
  return HashedAuthenticationCode.withUnsafeBytes<A>(_:)(sub_1A78E7A20, v8, v6);
}

uint64_t sub_1A78E79CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  if (a2)
  {
    if (result)
    {
      result = cc_cmp_safe();
      *a3 = result == 0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AES.StreamingCTR.EncryptionMode.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

uint64_t AES.StreamingCTR.init(key:iv:encryptionMode:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v35 = *a4;
  v33 = ccaes_ctr_crypt_mode();
  v9 = ccctr_context_size();
  if (!v9)
  {
    if (qword_1ED5F8A30 == -1)
    {
LABEL_11:
      v17 = off_1ED5F8A18;

LABEL_12:
      v34 = v17;
      v32[0] = 0;
      swift_beginAccess();
      v19 = *(v8 + 16);
      if (v19 > 0x20 || ((1 << v19) & 0x101010000) == 0)
      {
        goto LABEL_27;
      }

      v21 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_27;
        }

        v23 = *(a2 + 16);
        v22 = *(a2 + 24);
        v24 = __OFSUB__(v22, v23);
        v25 = v22 - v23;
        if (!v24)
        {
          if (v25 == 16)
          {
            goto LABEL_23;
          }

LABEL_27:

          v26 = 1;
          v27 = 1;
          goto LABEL_28;
        }

        __break(1u);
      }

      else
      {
        if (!v21)
        {
          if (BYTE6(a3) != 16)
          {
            goto LABEL_27;
          }

LABEL_23:
          sub_1A78E85C8(a2, a3, &v33, v32);

          v26 = v32[0];
          if (!v32[0])
          {
            result = sub_1A78C0AFC(a2, a3);
            v30 = v34;
            v31 = v35;
            *a5 = v33;
            *(a5 + 8) = v30;
            *(a5 + 16) = v31;
            goto LABEL_29;
          }

          v27 = 0;
LABEL_28:
          sub_1A78D6484();
          swift_allocError();
          *v28 = v26;
          *(v28 + 4) = v27;
          swift_willThrow();
          sub_1A78C0AFC(a2, a3);

LABEL_29:
          v29 = *MEMORY[0x1E69E9840];
          return result;
        }

        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          if (HIDWORD(a2) - a2 == 16)
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        }
      }

      __break(1u);
    }

LABEL_34:
    swift_once();
    goto LABEL_11;
  }

  v10 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (HIDWORD(v9))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    __break(1u);
    goto LABEL_34;
  }

  v11 = (v9 - 1) | ((v9 - 1) >> 1) | (((v9 - 1) | ((v9 - 1) >> 1)) >> 2);
  v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
  v13 = v12 | HIWORD(v12);
  v14 = __CFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    v16 = 0xFFFFFFFFLL;
  }

  else
  {
    v16 = v15;
  }

  type metadata accessor for SecureBytes.Backing();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = v16;
  if ((_swift_stdlib_malloc_size(v17) - 32) < v10)
  {
    goto LABEL_33;
  }

  v32[7] = 0;
  result = ccrng();
  if (result)
  {
    ccrng_generate_bridge();
    swift_beginAccess();
    v17[2] = v10;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78E7DC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = a3[1];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1A78C2BF8(v6 + 32, v6 + 32 + *(v6 + 16), v12);
    v7 = v12[0];

    a3[1] = v7;
  }

  swift_beginAccess();
  v8 = *a3;
  result = ccctr_update();
  if (result)
  {
    v10 = result;
    sub_1A78D6484();
    swift_allocError();
    *v11 = v10;
    *(v11 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t AES.StreamingCTR.encrypt(pt:)(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 16))
  {
    sub_1A78D6484();
    swift_allocError();
    *v4 = 5;
    *(v4 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    v6 = a1;
    v7 = a2;
    sub_1A78C0990(a1, a2);
    sub_1A78E8280(&v6, v2);
    result = v6;
    if (v3)
    {
      return sub_1A78C0AFC(v6, v7);
    }
  }

  return result;
}

uint64_t AES.StreamingCTR.decrypt(ct:)(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 16) == 1)
  {
    v6 = a1;
    v7 = a2;
    sub_1A78C0990(a1, a2);
    sub_1A78E8280(&v6, v2);
    result = v6;
    if (v3)
    {
      return sub_1A78C0AFC(v6, v7);
    }
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v5 = 5;
    *(v5 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t AES.StreamingCTR.encryptInPlace(segmentPtr:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_1A78D6484();
    swift_allocError();
    v3 = 5;
LABEL_7:
    *v2 = v3;
    *(v2 + 4) = v1;
    return swift_willThrow();
  }

  v4 = v0[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[1];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1A78C2BF8(v6 + 32, v6 + 32 + *(v6 + 16), v10);
    v7 = v10[0];

    v0[1] = v7;
  }

  swift_beginAccess();
  v8 = *v0;
  result = ccctr_update();
  if (result)
  {
    v3 = result;
    sub_1A78D6484();
    swift_allocError();
    goto LABEL_7;
  }

  return result;
}

uint64_t AES.StreamingCTR.decryptInPlace(segmentPtr:)()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
    sub_1A78D6484();
    swift_allocError();
    v8 = 5;
    goto LABEL_7;
  }

  v2 = v0[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0[1];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1A78C2BF8(v4 + 32, v4 + 32 + *(v4 + 16), v10);
    v5 = v10[0];

    v0[1] = v5;
  }

  swift_beginAccess();
  v6 = *v0;
  result = ccctr_update();
  if (result)
  {
    v8 = result;
    sub_1A78D6484();
    swift_allocError();
LABEL_7:
    *v9 = v8;
    *(v9 + 4) = v1 ^ 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78E8280(uint64_t *a1, uint64_t *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1A78C0AFC(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1A793F230;
      sub_1A78C0AFC(0, 0xC000000000000000);
      result = sub_1A78E850C(&v22, a2);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1A78C0AFC(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = sub_1A78E7DC4(&v22, &v22 + BYTE6(v4), a2);
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *a1 = v8;
    a1[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = sub_1A78E7DC4(&v22, &v22, a2);
LABEL_15:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  sub_1A78C0AFC(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  sub_1A793D6D8();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_1A793D648();
  if (result)
  {
    v13 = result;
    v14 = sub_1A793D678();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_1A793D668();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = sub_1A78E7DC4(v13 + v15, v13 + v15 + v19, a2);
        *a1 = v22;
        a1[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78E850C(int *a1, uint64_t *a2)
{
  result = sub_1A793D708();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_1A793D648();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_1A793D678();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_1A793D668();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  sub_1A78E7DC4(v8 + v9, v8 + v9 + v12, a2);
}

uint64_t sub_1A78E85C8(uint64_t a1, unint64_t a2, uint64_t *a3, _DWORD *a4)
{
  v20[6] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
LABEL_15:
      v13 = a3[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = a3[1];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        swift_beginAccess();
        sub_1A78C2BF8(v15 + 32, v15 + 32 + *(v15 + 16), v20);
        v16 = v20[0];

        a3[1] = v16;
      }

      goto LABEL_17;
    }

LABEL_9:
    v8 = a1;
    if (a1 > a1 >> 32)
    {
      __break(1u);
    }

    else if (!sub_1A793D648() || !__OFSUB__(v8, sub_1A793D678()))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v6 != 2)
  {
    goto LABEL_15;
  }

  v7 = *(a1 + 16);
  if (sub_1A793D648())
  {
    a1 = sub_1A793D678();
    if (__OFSUB__(v7, a1))
    {
      __break(1u);
      goto LABEL_9;
    }
  }

LABEL_12:
  sub_1A793D668();
  v9 = a3[1];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v11 = a3[1];
  if ((v10 & 1) == 0)
  {
    swift_beginAccess();
    sub_1A78C2BF8(v11 + 32, v11 + 32 + *(v11 + 16), v20);
    v12 = v20[0];

    a3[1] = v12;
  }

LABEL_17:
  swift_beginAccess();
  v17 = *a3;
  result = ccctr_init();
  *a4 = result;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A78E8860()
{
  result = qword_1EB2A73C0;
  if (!qword_1EB2A73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A73C0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A78E88C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1A78E8910(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t Digest.makeIterator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71E8, &qword_1A79404D0);
  sub_1A793D6A8();
  return v4;
}

char *sub_1A78E89EC@<X0>(char *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result || (v3 = result, v4 = a2 - result, a2 == result))
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_7:
    *a3 = v5;
    a3[1] = 0;
    return result;
  }

  v6 = a3;
  result = sub_1A78BDC10(a2 - result, 0);
  if (a2 > v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      result = memmove(result + 32, v3, v4);
      a3 = v6;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Digest.== infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v39 = a1;
  v40 = a3;
  swift_getAssociatedTypeWitness();
  v9 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A793DC78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = &v35 - v12;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  v21 = a2;
  sub_1A793D5A8();
  v22 = sub_1A793DB98();
  v23 = *(v14 + 8);
  v23(v20, v13);
  if (v22 != 1)
  {
    v32 = sub_1A78C7370(v21, a4, *(*(*(*(a6 + 8) + 8) + 8) + 8));
    v34 = v33;
    v41[0] = v32;
    v41[1] = v33;
    v31 = sub_1A78CB9C8(v39, v41, v40, MEMORY[0x1E6969080], *(v37 + 8), MEMORY[0x1E6969078]);
    sub_1A78C0AFC(v32, v34);
    return v31 & 1;
  }

  sub_1A793D5A8();
  v24 = v38;
  sub_1A793DBC8();
  v23(v18, v13);
  v25 = AssociatedTypeWitness;
  v26 = *(AssociatedTypeWitness - 8);
  result = (*(v26 + 48))(v24, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v28 = *(v37 + 8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = v38;
    v31 = sub_1A78CB9C8(v39, v38, v40, v25, v28, AssociatedConformanceWitness);
    (*(v26 + 8))(v30, v25);
    return v31 & 1;
  }

  __break(1u);
  return result;
}

uint64_t Digest.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A793DFB8();
  v24 = v9;
  MEMORY[0x1AC55D280](8250, 0xE200000000000000);
  (*(v5 + 16))(v8, v2, a1);
  v10 = *(a2 + 32);
  result = sub_1A793DB38();
  v12 = *(result + 16);
  if (v12 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = 2 * v12;
  if (2 * v12 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = result;
  if (v12)
  {
    v15 = sub_1A793DB28();
    *(v15 + 16) = v13;
    bzero((v15 + 32), v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v21 = 0;
  v22 = v15;
  sub_1A793DB18();
  sub_1A78DD23C(v14, &v22, &v21);

  v16 = *(v22 + 16);
  v17 = sub_1A793D998();
  v19 = v18;

  MEMORY[0x1AC55D280](v17, v19);

  return v23;
}