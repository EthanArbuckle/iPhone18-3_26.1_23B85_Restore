uint64_t sub_1C988BB40@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1[2] == 1)
  {
    if (a2[2] == 1)
    {
      v4 = a1[5];
      v5 = a2[4];
      v6 = a2[5];
      *a4 = a1[4];
      a4[1] = v4;
      a4[2] = v5;
      a4[3] = v6;
      a4[4] = a3;
    }

    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  sub_1C988DBE8();
  swift_allocError();
  *v9 = v8;
  return swift_willThrow();
}

void sub_1C988BBE4()
{
  sub_1C97AEB94();
  v14 = v0;
  v15 = v1;
  v13[0] = v2;
  v13[1] = v3;
  v5 = v4;
  type metadata accessor for StreamingModelUtils.Connection.CodingKeys();
  sub_1C988E974();
  swift_getWitnessTable();
  sub_1C988EB78();
  v6 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  sub_1C97A5A8C(v5, v5[3]);
  sub_1C9A93DD8();
  sub_1C988EB38();
  v12 = v15;
  sub_1C9A93A18();
  if (!v12)
  {
    sub_1C988EB38();
    sub_1C9A93A18();
  }

  (*(v8 + 8))(v11, v6);
  sub_1C97AEB5C();
}

void sub_1C988BD48()
{
  sub_1C97AEB94();
  v38 = v0;
  v36 = v1;
  v3 = v2;
  v5 = v4;
  v31 = v6;
  sub_1C988EB84();
  v33 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98435A0();
  v32 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v29 - v12;
  type metadata accessor for StreamingModelUtils.Connection.CodingKeys();
  sub_1C988E974();
  swift_getWitnessTable();
  sub_1C9855104();
  v37 = sub_1C9A93978();
  sub_1C97AE9C8();
  v34 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = type metadata accessor for StreamingModelUtils.Connection();
  sub_1C97AE9C8();
  v30 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  sub_1C97A5A8C(v5, v5[3]);
  v20 = v38;
  sub_1C9A93DB8();
  if (v20)
  {
    sub_1C97A592C(v5);
  }

  else
  {
    v21 = v19;
    v38 = v15;
    v22 = v32;
    v23 = v33;
    sub_1C9A938F8();
    v24 = v35;
    v35 = *(v23 + 32);
    (v35)(v21, v24, v3);
    sub_1C9A938F8();
    v25 = sub_1C988EA24();
    v26(v25);
    v27 = v38;
    (v35)(&v21[*(v38 + 28)], v22, v3);
    v28 = v30;
    (*(v30 + 16))(v31, v21, v27);
    sub_1C97A592C(v5);
    (*(v28 + 8))(v21, v27);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C988C090()
{
  sub_1C988EB4C();
  if ((sub_1C9A92438() & 1) == 0)
  {
    return 0;
  }

  sub_1C9855104();
  type metadata accessor for StreamingModelUtils.Connection();
  return sub_1C988EA7C() & 1;
}

uint64_t sub_1C988C0E0()
{
  sub_1C988EB4C();
  sub_1C9A92398();
  return sub_1C9A92398();
}

void sub_1C988C138()
{
  sub_1C97AEB94();
  v3 = v2;
  type metadata accessor for StreamingModelUtils.IODescription.CodingKeys();
  sub_1C988E98C();
  swift_getWitnessTable();
  v4 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9A93DD8();
  sub_1C988EB78();
  sub_1C9A928B8();
  sub_1C988E910();
  swift_getWitnessTable();
  sub_1C988EA38();
  sub_1C9A93A18();
  if (!v0)
  {
    sub_1C988EA38();
    sub_1C9A93A18();
    sub_1C988EAF8();
    type metadata accessor for StreamingModelUtils.Connection();
    sub_1C9855104();
    sub_1C9A928B8();
    sub_1C988E95C();
    swift_getWitnessTable();
    sub_1C988E910();
    swift_getWitnessTable();
    sub_1C9A93A18();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C97AEB5C();
}

void sub_1C988C374()
{
  sub_1C97AEB94();
  v2 = v1;
  type metadata accessor for StreamingModelUtils.IODescription.CodingKeys();
  sub_1C988E98C();
  swift_getWitnessTable();
  sub_1C9855104();
  sub_1C9A93978();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9A93DB8();
  if (!v0)
  {
    sub_1C9A928B8();
    sub_1C988E928();
    swift_getWitnessTable();
    sub_1C988EAD8();
    sub_1C988EAA0();
    sub_1C988EAD8();
    sub_1C988EAA0();
    type metadata accessor for StreamingModelUtils.Connection();
    sub_1C9855104();
    sub_1C9A928B8();
    sub_1C988EAF8();
    sub_1C988E9A4();
    swift_getWitnessTable();
    sub_1C988E928();
    swift_getWitnessTable();
    sub_1C988EAD8();
    sub_1C9A938F8();
    v4 = sub_1C988EA14();
    v5(v4);
  }

  sub_1C97A592C(v2);
  sub_1C97AEB5C();
}

uint64_t sub_1C988C5F4()
{
  if (sub_1C9A928D8() & 1) != 0 && (sub_1C9A928D8())
  {
    type metadata accessor for StreamingModelUtils.Connection();
    sub_1C988E940();
    swift_getWitnessTable();
    v0 = sub_1C9A928D8();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1C988C6AC()
{
  sub_1C9A928C8();
  sub_1C9A928C8();
  sub_1C9855104();
  type metadata accessor for StreamingModelUtils.Connection();
  sub_1C988E9D4();
  return sub_1C9A928C8();
}

uint64_t sub_1C988C73C()
{
  sub_1C97BE32C();
  sub_1C988C6AC();
  return sub_1C9A93D18();
}

void sub_1C988C7AC()
{
  sub_1C97AEB94();
  v3 = v2;
  type metadata accessor for StreamingModelUtils.FlowIODescription.CodingKeys();
  sub_1C988E9BC();
  swift_getWitnessTable();
  sub_1C988EB78();
  v4 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9A93DD8();
  sub_1C988EB18();
  sub_1C9A93A18();
  if (!v0)
  {
    sub_1C988EB18();
    sub_1C9A93A18();
    sub_1C988EAF8();
    type metadata accessor for StreamingModelUtils.Connection();
    sub_1C9855104();
    sub_1C9A928B8();
    sub_1C988E95C();
    swift_getWitnessTable();
    sub_1C988E910();
    swift_getWitnessTable();
    sub_1C9A93A18();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C97AEB5C();
}

void sub_1C988C984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C97AEB94();
  v51 = v10;
  v49 = v12;
  v14 = v13;
  v16 = v15;
  v43 = v17;
  sub_1C988EB84();
  v46 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C98435A0();
  v44 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v47 = &v41 - v23;
  type metadata accessor for StreamingModelUtils.FlowIODescription.CodingKeys();
  sub_1C988E9BC();
  swift_getWitnessTable();
  sub_1C9855104();
  v50 = sub_1C9A93978();
  sub_1C97AE9C8();
  v45 = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v41 - v26;
  sub_1C988EB78();
  v28 = type metadata accessor for StreamingModelUtils.FlowIODescription();
  sub_1C97AE9C8();
  v42 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v16, v16[3]);
  v48 = v27;
  v31 = v51;
  sub_1C9A93DB8();
  if (v31)
  {
    sub_1C97A592C(v16);
  }

  else
  {
    v32 = v45;
    v33 = v46;
    v41 = v11;
    v51 = v16;
    sub_1C9A938F8();
    v34 = v14;
    v35 = *(v33 + 32);
    v35(v41, v47, v14);
    LOBYTE(a10) = 1;
    v36 = v44;
    sub_1C9A938F8();
    v35(v41 + *(v28 + 28), v36, v34);
    type metadata accessor for StreamingModelUtils.Connection();
    sub_1C9855104();
    sub_1C9A928B8();
    sub_1C988EAF8();
    v53 = v49;
    sub_1C988E9A4();
    WitnessTable = swift_getWitnessTable();
    sub_1C988E928();
    swift_getWitnessTable();
    sub_1C988EAD8();
    v37 = v48;
    sub_1C9A938F8();
    (*(v32 + 8))(v37, v50);
    v38 = v41;
    *(v41 + *(v28 + 32)) = a10;
    (*(v42 + 16))(v43, v38, v28);
    sub_1C97A592C(v51);
    v39 = sub_1C988EB2C();
    v40(v39);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C988CDAC()
{
  sub_1C988EB4C();
  if (sub_1C9A92438() & 1) != 0 && (sub_1C9855104(), type metadata accessor for StreamingModelUtils.FlowIODescription(), (sub_1C988EA7C()))
  {
    sub_1C9855104();
    type metadata accessor for StreamingModelUtils.Connection();
    sub_1C988E940();
    swift_getWitnessTable();
    v0 = sub_1C9A928D8();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1C988CE50()
{
  sub_1C9A92398();
  sub_1C9A92398();
  type metadata accessor for StreamingModelUtils.Connection();
  sub_1C988E9D4();
  return sub_1C9A928C8();
}

uint64_t sub_1C988CEEC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  sub_1C988EB4C();
  sub_1C97BE32C();
  a3(v7, v4, v3);
  return sub_1C9A93D18();
}

void sub_1C988D004(void *a1@<X8>)
{
  sub_1C988C374();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_1C988D094()
{
  sub_1C9A93CC8();
  sub_1C988C6AC();
  return sub_1C9A93D18();
}

uint64_t sub_1C988D188(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_1C9A93CC8();
  a4(v8, a2, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C988D2BC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C98254C0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C988D328(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C988D328(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C9A93A88();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C9A92838();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C988D478(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C988D41C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C988D41C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C988D478(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E510C();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1C97E510C();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1C988DA44((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C988D918(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1C988D918(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C984A014(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C988DA44((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C988DA44(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C97E842C(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1C97E842C(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

unint64_t sub_1C988DBE8()
{
  result = qword_1EC3CA4A0;
  if (!qword_1EC3CA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA4A0);
  }

  return result;
}

unint64_t sub_1C988DC3C()
{
  result = qword_1EC3CA4C8[0];
  if (!qword_1EC3CA4C8[0])
  {
    sub_1C97AA4F0(&qword_1EC3CA4A8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CA4C8);
  }

  return result;
}

uint64_t sub_1C988DCA0(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CA4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StreamingModelUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C988DDF4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C988DEC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C988DF8C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C988DFFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return sub_1C97ABF20(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return sub_1C97ABF20(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
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

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_1C988E14C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C97ACC50(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C988E364()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C988E3B8()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for StreamingModelUtils.Connection();
    v0 = sub_1C9A928B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_1C988E45C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(v5 + 80);
  v10 = v7 + v9;
  v11 = v7 + 7;
  if (v8 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v20 = *((v11 + ((v10 + result) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v6, v4);
    }
  }

  else
  {
    v12 = ((v11 + (v10 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v13 = a2 - v8;
    v14 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = v13 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        v18 = *(result + v12);
        if (!v18)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v18 = *(result + v12);
        if (!v18)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v18 = *(result + v12);
        if (!v18)
        {
          goto LABEL_26;
        }

LABEL_22:
        v19 = v18 - 1;
        if (v14)
        {
          v19 = 0;
          LODWORD(v14) = *result;
        }

        result = v8 + (v14 | v19) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C988E5B4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(v6 - 8) + 64);
  v11 = *(v7 + 80);
  v12 = v10 + v11;
  v13 = v10 + 7;
  v14 = ((v10 + 7 + ((v10 + v11) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v18 = 0;
  }

  else
  {
    v15 = a3 - v9;
    if (((v10 + 7 + ((v10 + v11) & ~v11)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v18)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v8 < 0x7FFFFFFF)
          {
            v21 = ((v13 + (&a1[v12] & ~v11)) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v22 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v22 = (a2 - 1);
            }

            *v21 = v22;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (v14)
    {
      v19 = 1;
    }

    else
    {
      v19 = a2 - v9;
    }

    if (v14)
    {
      v20 = ~v9 + a2;
      bzero(a1, v14);
      *a1 = v20;
    }

    switch(v18)
    {
      case 1:
        a1[v14] = v19;
        break;
      case 2:
        *&a1[v14] = v19;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v14] = v19;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C988E7FC()
{
  result = qword_1EC3CA7D0;
  if (!qword_1EC3CA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA7D0);
  }

  return result;
}

uint64_t sub_1C988E9D4()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C988EA7C()
{

  return sub_1C9A92438();
}

uint64_t sub_1C988EAA0()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C988EB98()
{

  return sub_1C9A92628();
}

uint64_t sub_1C988EBB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C988EC40(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CA800);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C988F4EC();
  sub_1C9A93DD8();
  sub_1C9A93A58();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C988ED8C()
{
  sub_1C9A93CC8();
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C988EDD4(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CA7F0);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C988F4EC();
  sub_1C9A93DB8();
  if (!v1)
  {
    v9 = sub_1C9A93938();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C988EF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C988EBB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C988EF4C(uint64_t a1)
{
  v2 = sub_1C988F4EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C988EF88(uint64_t a1)
{
  v2 = sub_1C988F4EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C988EFC4@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1C988EDD4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C988F028()
{

  return v0;
}

uint64_t sub_1C988F058()
{
  sub_1C988F028();

  return swift_deallocClassInstance();
}

uint64_t sub_1C988F0B0()
{
  v1 = v0;
  v21[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9A91748();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV13SoundAnalysis22SharedAOPResultsStream15AOPSubscription_trackingID;
  (*(v4 + 16))(v7, v0 + OBJC_IVAR____TtCV13SoundAnalysis22SharedAOPResultsStream15AOPSubscription_trackingID, v2);

  sub_1C98FC938(v7);

  v9 = *(v4 + 8);
  v9(v7, v2);
  v10 = *(v0 + OBJC_IVAR____TtCV13SoundAnalysis22SharedAOPResultsStream15AOPSubscription_connect);
  v21[3] = type metadata accessor for IOConnect();
  v21[4] = &off_1F494BDB8;
  v11 = *(v1 + OBJC_IVAR____TtCV13SoundAnalysis22SharedAOPResultsStream15AOPSubscription_client);
  v21[0] = v10;
  v17 = v11;
  v18 = 1;
  v19 = 0;

  v12 = sub_1C98FBA38(&v17, &v20);
  v14 = v13;
  sub_1C98FE77C(v21, 35, v12, v13);
  sub_1C97A5978(v12, v14);
  sub_1C97A592C(v21);
  v9((v1 + v8), v2);

  return v1;
}

uint64_t sub_1C988F31C()
{
  sub_1C988F0B0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedAOPResultsStream.AOPSubscription()
{
  result = qword_1EC3CA7D8;
  if (!qword_1EC3CA7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C988F3C8()
{
  result = sub_1C9A91748();
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

unint64_t sub_1C988F498()
{
  result = qword_1EC3CA7E8;
  if (!qword_1EC3CA7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA7E8);
  }

  return result;
}

unint64_t sub_1C988F4EC()
{
  result = qword_1EC3CA7F8;
  if (!qword_1EC3CA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA7F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharedAOPResultsStream.Configuration.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C988F5F0()
{
  result = qword_1EC3CA808;
  if (!qword_1EC3CA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA808);
  }

  return result;
}

unint64_t sub_1C988F648()
{
  result = qword_1EC3CA810;
  if (!qword_1EC3CA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA810);
  }

  return result;
}

unint64_t sub_1C988F6A0()
{
  result = qword_1EC3CA818[0];
  if (!qword_1EC3CA818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CA818);
  }

  return result;
}

uint64_t sub_1C988F6F4()
{
  sub_1C97AA884();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v0[22] = *(v1 - 8);
  v0[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C988F7A8, 0, 0);
}

uint64_t sub_1C988F7A8()
{
  sub_1C97DA934();
  v18 = *(v0 + 168);
  v1 = *(v0 + 152);
  *(v0 + 112) = *v1;
  type metadata accessor for XPCDataDecoder();
  sub_1C97AA878();
  *(swift_allocObject() + 16) = *v1;
  v2 = v1[2];
  *(v0 + 16) = v1[1];
  *(v0 + 32) = v2;
  type metadata accessor for XPCProxyDecoder();
  v3 = swift_allocObject();
  v4 = v1[2];
  *(v3 + 16) = v1[1];
  *(v3 + 32) = v4;
  type metadata accessor for XPCDecoder();
  inited = swift_initStackObject();
  *(v0 + 192) = inited;
  sub_1C9890A64(inited, v6, v7, v8, v9, v10, v11, v12, v16, v17, v18);
  sub_1C981CD88(v0 + 112, v0 + 128, &unk_1EC3CAD30);
  sub_1C981CD88(v0 + 16, v0 + 80, &qword_1EC3C6930);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_1C988F954;
  sub_1C9890A78();

  return v14();
}

uint64_t sub_1C988F954()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 208) = v0;

  if (v0)
  {
    v7 = sub_1C988FAF4;
  }

  else
  {
    v7 = sub_1C988FA54;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C988FA54()
{
  sub_1C97DA934();
  swift_setDeallocating();
  sub_1C9890968();
  sub_1C985DB04();
  swift_deallocClassInstance();
  v0 = sub_1C9890A8C();
  v1(v0);

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C988FAF4()
{
  sub_1C97AA884();
  swift_setDeallocating();
  sub_1C9890968();
  sub_1C985DB04();
  swift_deallocClassInstance();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C988FB7C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(v1 + 24);
  sub_1C97DA2E8(v4, v3);
  v8 = v6[2];
  v7 = v6[3];
  v9 = v6[4];
  v10 = v6[5];
  type metadata accessor for XPCProxyDecoder.SingleValueContainer();
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v9;
  v11[5] = v10;

  sub_1C97A8F30(v8);

  type metadata accessor for XPCDecoder.SingleValueContainer();
  sub_1C97AA878();
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v11;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1C988FC94()
{
  sub_1C97AA95C();

  v0[3] = sub_1C9991E04();

  v0[4] = *(v0[2] + 24);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1C988FD98;

  return sub_1C987B80C();
}

uint64_t sub_1C988FD98()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    v9 = sub_1C988FF24;
  }

  else
  {

    *(v5 + 56) = v3;
    v9 = sub_1C988FEB4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C988FEB4()
{
  sub_1C97AA884();
  v1 = v0[7];
  v2 = v0[3];
  type metadata accessor for XPCDecoder.UnkeyedContainer();
  sub_1C97AA878();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1C988FF24()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C988FF8C()
{
  sub_1C9890968();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C988FFB8()
{
  sub_1C97AA884();
  v0[25] = v1;
  v0[26] = v2;
  v0[24] = v3;
  v0[27] = *(v1 - 8);
  v0[28] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1C98900A0;

  return sub_1C98905A0((v0 + 2));
}

uint64_t sub_1C98900A0()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C98901D8, 0, 0);
  }
}

uint64_t sub_1C98901D8()
{
  sub_1C97DA934();
  v19 = *(v0 + 208);
  *(v0 + 160) = *(v0 + 16);
  type metadata accessor for XPCDataDecoder();
  sub_1C97AA878();
  v1 = swift_allocObject();
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  v3 = *(v0 + 48);
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  type metadata accessor for XPCProxyDecoder();
  v4 = swift_allocObject();
  v5 = *(v0 + 48);
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v5;
  type metadata accessor for XPCDecoder();
  inited = swift_initStackObject();
  *(v0 + 240) = inited;
  sub_1C9890A64(inited, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19);
  sub_1C981CD88(v0 + 160, v0 + 176, &unk_1EC3CAD30);
  sub_1C981CD88(v0 + 64, v0 + 128, &qword_1EC3C6930);
  v14 = swift_task_alloc();
  *(v0 + 248) = v14;
  *v14 = v0;
  v14[1] = sub_1C9890380;
  sub_1C9890A78();

  return v15();
}

uint64_t sub_1C9890380()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 256) = v0;

  if (v0)
  {
    v7 = sub_1C9890524;
  }

  else
  {
    v7 = sub_1C9890480;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C9890480()
{
  sub_1C97DA934();
  swift_setDeallocating();
  sub_1C9890968();
  sub_1C985DB04();
  swift_deallocClassInstance();
  sub_1C97D9AA4(v0 + 16);
  v1 = sub_1C9890A8C();
  v2(v1);

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C9890524()
{
  sub_1C97AA884();
  swift_setDeallocating();
  sub_1C9890968();
  sub_1C985DB04();
  swift_deallocClassInstance();
  sub_1C97D9AA4(v0 + 16);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98905A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C97DA66C();
}

uint64_t sub_1C98905B4()
{
  sub_1C97AA95C();
  sub_1C9991EB4();
  v0[4] = v1;
  v0[5] = v2;
  v0[6] = *(v0[3] + 24);

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1C98906A8;

  return sub_1C987C5D8();
}

uint64_t sub_1C98906A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97AA890();
  v11 = v10;
  sub_1C97AA84C();
  *v12 = v11;
  v13 = *v5;
  sub_1C97AA83C();
  *v14 = v13;
  v11[8] = v4;

  if (v4)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C989081C, 0, 0);
  }

  else
  {
    v15 = v11[5];
    v16 = v11[4];
    v17 = v11[2];

    *v17 = v16;
    v17[1] = v15;
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = a4;
    sub_1C97DA91C();

    return v18();
  }
}

uint64_t sub_1C989081C()
{
  sub_1C97AA884();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  sub_1C97AA780(v2, v1);
  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C9890888(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C97DA66C();
}

uint64_t sub_1C989089C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  sub_1C97DA2E8(v5, v6);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];

  sub_1C97A8F30(v7);

  *&v11 = v5;
  *(&v11 + 1) = v6;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  *v2 = v11;
  *(v2 + 16) = v12;
  *(v2 + 32) = v9;
  *(v2 + 40) = v10;
  sub_1C97DA91C();

  return v13();
}

uint64_t sub_1C9890968()
{

  return v0;
}

uint64_t sub_1C9890A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  return a11 + 8;
}

uint64_t sub_1C9890AB8(void *a1, void *a2)
{
  sub_1C97A5A8C(a2, a2[3]);
  v4 = sub_1C9890FD4();
  v5(v4);
  if (v21)
  {
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1C979B054(v20, v22);
    sub_1C97A5A8C(v22, v22[3]);
    sub_1C9A47EC4(a1, v6, v7, v8, v9, v10, v11, v12, v19, v20[0], SDWORD1(v20[0]));
    if (!v2)
    {
      v14 = v13;
      sub_1C9890FF0(v13);
      sub_1C98719F4();
      v15 = swift_allocObject();
      v16 = sub_1C979B054(v20, v15 + 16);
      *(v15 + 56) = v14;
      sub_1C9890FF0(v16);
      sub_1C98719F4();
      v17 = swift_allocObject();
      sub_1C979B054(v20, v17 + 16);
      *(v17 + 56) = v14;
      sub_1C97A2CEC(&qword_1EC3CA8A0);
      a1 = swift_allocObject();
      a1[2] = sub_1C9890C60;
      a1[3] = v15;
      a1[4] = sub_1C9890CD8;
      a1[5] = v17;
    }

    sub_1C97A592C(v22);
    return a1;
  }

  return result;
}

uint64_t sub_1C9890CF8(void *a1, void *a2)
{
  sub_1C97A5A8C(a2, a2[3]);
  v4 = sub_1C9890FD4();
  v5(v4);
  if (v21)
  {
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1C979B054(v20, v22);
    sub_1C97A5A8C(v22, v22[3]);
    sub_1C9A482F4(a1, v6, v7, v8, v9, v10, v11, v12, v19, v20[0], SDWORD1(v20[0]));
    if (!v2)
    {
      v14 = v13;
      sub_1C9890FF0(v13);
      sub_1C98719F4();
      v15 = swift_allocObject();
      v16 = sub_1C979B054(v20, v15 + 16);
      *(v15 + 56) = v14;
      sub_1C9890FF0(v16);
      sub_1C98719F4();
      v17 = swift_allocObject();
      sub_1C979B054(v20, v17 + 16);
      *(v17 + 56) = v14;
      sub_1C97A2CEC(&qword_1EC3CA8A0);
      a1 = swift_allocObject();
      a1[2] = sub_1C9890F00;
      a1[3] = v15;
      a1[4] = sub_1C9890FB4;
      a1[5] = v17;
    }

    sub_1C97A592C(v22);
    return a1;
  }

  return result;
}

uint64_t sub_1C9890EA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  sub_1C97A5A8C(a1, a1[3]);
  result = a3(a2);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C9890F78()
{
  sub_1C97A592C(v0 + 16);

  sub_1C98719F4();

  return swift_deallocObject();
}

uint64_t sub_1C9890FF0(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return sub_1C97D9AF8(va1, va);
}

double sub_1C9891044@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C9A92478();
  v5 = [v2 valueForEntitlement_];

  if (v5)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

_BYTE *sub_1C989115C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9891208()
{
  result = qword_1EC3CA8A8;
  if (!qword_1EC3CA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8A8);
  }

  return result;
}

uint64_t sub_1C9891260(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CA8C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9892598();
  sub_1C9A93DD8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C9891374(uint64_t a1)
{
  v2 = sub_1C9892598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98913B0(uint64_t a1)
{
  v2 = sub_1C9892598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C9891404()
{
  v0 = type metadata accessor for SNDiscoverFileServerRequest();
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t (*sub_1C9891490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v35 = a3;
  v36 = a2;
  v10 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v37 = &v34 - v11;
  v12 = [objc_allocWithZone(MEMORY[0x1E69C6B70]) init];
  [v12 setDispatchQueue_];
  sub_1C97AA878();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v42 = sub_1C98925EC;
  v43 = v13;
  sub_1C98929AC();
  v39 = 1107296256;
  v40 = sub_1C98E5C5C;
  v41 = &unk_1F4937BE8;
  v14 = _Block_copy(&aBlock);

  [v12 setInterruptionHandler_];
  _Block_release(v14);
  v42 = sub_1C9891A0C;
  v43 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1C98E5C5C;
  v41 = &unk_1F4937C10;
  v15 = _Block_copy(&aBlock);
  [v12 setInvalidationHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a4;
  v17[4] = a5;
  sub_1C97AA878();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v42 = sub_1C989260C;
  v43 = v17;
  aBlock = MEMORY[0x1E69E9820];
  sub_1C9892998();
  v40 = v19;
  v41 = &unk_1F4937CB0;
  v20 = _Block_copy(&aBlock);
  swift_retain_n();

  [v12 setLocalDeviceUpdatedHandler_];
  _Block_release(v20);
  v42 = sub_1C9892618;
  v43 = v18;
  aBlock = MEMORY[0x1E69E9820];
  sub_1C9892998();
  v40 = v21;
  v41 = &unk_1F4937CD8;
  v22 = _Block_copy(&aBlock);

  [v12 setDeviceLostHandler_];
  _Block_release(v22);
  v42 = sub_1C989260C;
  v43 = v17;
  sub_1C98929AC();
  sub_1C9892998();
  v40 = v23;
  v41 = &unk_1F4937D00;
  v24 = _Block_copy(&aBlock);

  [v12 setDeviceFoundHandler_];
  _Block_release(v24);
  v42 = sub_1C9891F30;
  v43 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1C9892088;
  v41 = &unk_1F4937D28;
  v25 = _Block_copy(&aBlock);
  [v12 setDeviceChangedHandler_];
  _Block_release(v25);
  v26 = sub_1C9A92988();
  sub_1C97ACC50(v37, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v36;
  v27[4] = v12;
  v27[5] = v28;
  v27[6] = v35;

  v29 = v12;
  sub_1C99A9128();
  v31 = v30;

  sub_1C97AA878();
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;

  return sub_1C98926D0;
}

void sub_1C9891968(void (*a1)(void))
{
  type metadata accessor for SNError();
  v2 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000028, 0x80000001C9AD7BB0);
  a1();
}

void sub_1C9891A0C()
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  oslog = sub_1C9A91B38();
  v1 = sub_1C9A92FC8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C9788000, oslog, v1, "companion service connection invalidated", v2, 2u);
    MEMORY[0x1CCA93280](v2, -1, -1);
  }
}

uint64_t sub_1C9891AF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_1C9A92988();
    sub_1C97ACC50(v9, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v11;
    v13[6] = a3;
    v13[7] = a4;
    v14 = a1;

    sub_1C99A9128();
  }

  return result;
}

uint64_t sub_1C9891C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  type metadata accessor for SNFileSharingUtils();
  v10 = swift_task_alloc();
  v7[8] = v10;
  *v10 = v7;
  v10[1] = sub_1C9891CDC;

  return sub_1C983FFEC(a4, a5, 1.0);
}

uint64_t sub_1C9891CDC()
{
  sub_1C97AA884();
  *(*v0 + 72) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C9891DD8, 0, 0);
}

uint64_t sub_1C9891DD8()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[6];
    v3 = type metadata accessor for SNFileServerDiscoveryResult();
    v0[2] = v1;
    v0[5] = v3;
    v4 = v1;
    v2(v0 + 2);

    sub_1C97A592C((v0 + 2));
  }

  sub_1C97DA91C();

  return v5();
}

uint64_t sub_1C9891E74(void *a1, void (*a2)(void *))
{
  type metadata accessor for SNFileSharingUtils();
  v4 = sub_1C983FA80(1, a1);
  v7[3] = type metadata accessor for SNFileServerDiscoveryResult();
  v7[0] = v4;
  v5 = v4;
  a2(v7);

  return sub_1C97A592C(v7);
}

void sub_1C9891F30(void *a1, int a2)
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v4 = sub_1C9A91B58();
  sub_1C97BFF6C(v4, qword_1EC3D3108);
  v5 = a1;
  oslog = sub_1C9A91B38();
  v6 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a2;
    v9 = v5;
    _os_log_impl(&dword_1C9788000, oslog, v6, "device updated: %@ with changes: %u", v7, 0x12u);
    sub_1C97BFFA4(v8);
    MEMORY[0x1CCA93280](v8, -1, -1);
    MEMORY[0x1CCA93280](v7, -1, -1);
  }
}

void sub_1C9892088(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1C98920FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C9892120, 0, 0);
}

uint64_t sub_1C9892120()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1C9892234;
  v2 = swift_continuation_init();
  v0[17] = sub_1C97A2CEC(&qword_1EC3CA050);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C9A1E374;
  v0[13] = &unk_1F4937DA0;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C9892234()
{
  sub_1C97AA884();
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1C98923A0;
  }

  else
  {
    v2 = sub_1C9892340;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C9892340()
{
  sub_1C97AA884();
  (*(v0 + 152))(0);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98923A0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  swift_willThrow();
  v3 = v1;
  v2(v1);

  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C9892438(void *a1)
{
  [a1 invalidate];

  return sub_1C9A92A28();
}

id SNDiscoverFileServerRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNDiscoverFileServerRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C9892544()
{
  result = qword_1EC3CA8B8;
  if (!qword_1EC3CA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8B8);
  }

  return result;
}

unint64_t sub_1C9892598()
{
  result = qword_1EC3CA8C8;
  if (!qword_1EC3CA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8C8);
  }

  return result;
}

uint64_t sub_1C98925F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C9892620()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_1C98929C8(v3);

  return sub_1C98920FC(v4, v5, v6, v7, v8, v2);
}

uint64_t sub_1C9892704()
{
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_1C98929C8(v4);

  return sub_1C9891C20(v5, v6, v7, v8, v9, v3, v2);
}

uint64_t sub_1C98927C0()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

unint64_t sub_1C98928C0()
{
  result = qword_1EC3CA8D8;
  if (!qword_1EC3CA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8D8);
  }

  return result;
}

unint64_t sub_1C9892918()
{
  result = qword_1EC3CA8E0;
  if (!qword_1EC3CA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8E0);
  }

  return result;
}

BOOL sub_1C98929E8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1C9A93B18() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6 != 254)
  {
    if (v6 == 255)
    {
      if (v7 == 255)
      {
        return 1;
      }
    }

    else if (v7 <= 0xFD && *(a1 + 24) == *(a2 + 24))
    {
      v9 = *(a1 + 32);
      v10 = *(a2 + 32);
      if (*(a1 + 40))
      {
        if (v6 == 1)
        {
          if (v7 == 1 && (sub_1C9808E6C(v9, v10) & 1) != 0)
          {
            return 1;
          }
        }

        else if (v7 == 2 && !v10)
        {
          return 1;
        }
      }

      else if (!*(a2 + 40) && (sub_1C9808DF8(v9, v10) & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v7 == 254;
}

uint64_t sub_1C9892AD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x69617274736E6F63 && a2 == 0xEA0000000000746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C9892BEC(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6C616E6F6974706FLL;
  }

  return 0x69617274736E6F63;
}

uint64_t sub_1C9892C40(void *a1)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CA928);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEA4C();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C9897708();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  if (!v1)
  {
    sub_1C9899580();
    sub_1C9A939D8();
    sub_1C98977B0();
    sub_1C9899580();
    sub_1C9A93A18();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1C9892DC8(uint64_t a1)
{
  v2 = v1;
  sub_1C9A92528();
  sub_1C9A93CE8();
  v4 = *(v2 + 40);
  if (v4 == 254)
  {
    v5 = 2;
    goto LABEL_5;
  }

  if (v4 == 255)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x1CCA91980](v5);
    return;
  }

  v6 = *(v2 + 32);
  v7 = *(v2 + 24);
  MEMORY[0x1CCA91980](0);

  sub_1C9893FFC(a1, v7, v6, v4);
}

uint64_t sub_1C9892E6C()
{
  sub_1C97BE32C();
  sub_1C9892DC8(v1);
  return sub_1C9A93D18();
}

void sub_1C9892EA4()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CA910);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98021C4();
  sub_1C97BE20C(v2, v2[3]);
  sub_1C9897708();
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v2);
  }

  else
  {
    sub_1C989958C();
    v6 = sub_1C9A938A8();
    v8 = v7;
    LOBYTE(v11) = 1;
    sub_1C989958C();
    v14 = sub_1C9A938B8();
    sub_1C989775C();
    sub_1C9A938F8();
    v9 = sub_1C97FB2B8();
    v10(v9);
    sub_1C97A592C(v2);
    *v4 = v6;
    *(v4 + 8) = v8;
    *(v4 + 16) = v14 & 1;
    *(v4 + 24) = v11;
    *(v4 + 32) = v12;
    *(v4 + 40) = v13;
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C989307C(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 == 254)
  {
    if (a6 == 254)
    {
      return 1;
    }
  }

  else if (a3 == 255)
  {
    if (a6 == 0xFF)
    {
      return 1;
    }
  }

  else if (a6 <= 0xFDu && a4 == a1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          v7 = sub_1C9899574(a1, a2);
          if (sub_1C9808E6C(v7, v8))
          {
            return 1;
          }
        }
      }

      else if (a6 == 2 && !a5)
      {
        return 1;
      }
    }

    else if (!a6)
    {
      v9 = sub_1C9899574(a1, a2);
      if (sub_1C9808DF8(v9, v10))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C9893138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72724169746C756DLL && a2 == 0xEA00000000007961;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C9893250(char a1)
{
  if (!a1)
  {
    return 0x72724169746C756DLL;
  }

  if (a1 == 1)
  {
    return 0x616E6F6974636964;
  }

  return 0x676E69727473;
}

void sub_1C98932A8()
{
  sub_1C97AEB94();
  v34 = v2;
  v32 = v3;
  v33 = v4;
  v6 = v5;
  sub_1C97A2CEC(&qword_1EC3CA980);
  sub_1C97AE9C8();
  v30 = v8;
  v31 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v29 = v10;
  sub_1C97A2CEC(&qword_1EC3CA988);
  sub_1C97AE9C8();
  v27 = v12;
  v28 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CA990);
  sub_1C97AE9C8();
  v26 = v17;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98550DC();
  v19 = sub_1C97A2CEC(&qword_1EC3CA998);
  sub_1C97AE9C8();
  v21 = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97E86E4();
  sub_1C97BE20C(v6, v6[3]);
  sub_1C9897804();
  v23 = v34;
  sub_1C9A93DD8();
  if (v23 == 254)
  {
    v35 = 2;
    sub_1C9897858();
    v15 = v29;
    sub_1C98994B0();
    sub_1C9A93988();
    v25 = v30;
    v24 = v31;
  }

  else
  {
    if (v23 != 255)
    {
      v35 = 0;
      sub_1C9897900();
      sub_1C98994B0();
      sub_1C9A93988();
      v35 = v32;
      v36 = v33;
      LOBYTE(v37) = v23;
      sub_1C98979A8();
      sub_1C9A93A18();
      (*(v26 + 8))(v0, v16);
      (*(v21 + 8))(v1, v19);
      goto LABEL_7;
    }

    v35 = 1;
    sub_1C98978AC();
    sub_1C98994B0();
    sub_1C9A93988();
    v25 = v27;
    v24 = v28;
  }

  (*(v25 + 8))(v15, v24);
  (*(v21 + 8))(v1, v19);
LABEL_7:
  sub_1C98995A0();
  sub_1C97AEB5C();
}

void sub_1C9893610(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 254)
  {
    v5 = 2;
    goto LABEL_5;
  }

  if (a4 == 255)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x1CCA91980](v5);
    return;
  }

  MEMORY[0x1CCA91980](0);

  sub_1C9893FFC(a1, a2, a3, a4);
}

uint64_t sub_1C98936A0(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1C97BE32C();
  if (a3 == 254)
  {
    v6 = 2;
  }

  else
  {
    if (a3 != 255)
    {
      MEMORY[0x1CCA91980](0);
      sub_1C9893FFC(v8, a1, a2, a3);
      return sub_1C9A93D18();
    }

    v6 = 1;
  }

  MEMORY[0x1CCA91980](v6);
  return sub_1C9A93D18();
}

void sub_1C989372C()
{
  sub_1C97AEB94();
  v3 = v2;
  v42 = sub_1C97A2CEC(&qword_1EC3CA938);
  sub_1C97AE9C8();
  v40 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v41 = v6;
  v39 = sub_1C97A2CEC(&qword_1EC3CA940);
  sub_1C97AE9C8();
  v38 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3CA948);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97FB2C8();
  v10 = sub_1C97A2CEC(&qword_1EC3CA950);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEA4C();
  sub_1C97BE20C(v3, v3[3]);
  sub_1C9897804();
  sub_1C9A93DB8();
  if (v0)
  {
    goto LABEL_10;
  }

  v12 = sub_1C9A93958();
  sub_1C98EE524(v12, 0);
  v14 = v10;
  if (v15 == v13 >> 1)
  {
LABEL_9:
    v27 = sub_1C9A93648();
    sub_1C97A7A80();
    v29 = v28;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v29 = &type metadata for MLFeatureUtils.FeatureConstraint;
    sub_1C9A93868();
    sub_1C98994EC();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    v30 = sub_1C9899488();
    v31(v30);
LABEL_10:
    sub_1C97A592C(v3);
    sub_1C98995A0();
    sub_1C97AEB5C();
    return;
  }

  sub_1C9899564();
  if (v17 < (v18 >> 1))
  {
    v21 = *(v20 + v19);
    v22 = sub_1C9899554(v16, v18 >> 1, v17, v18, v19);
    sub_1C98EE520(v22);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          sub_1C98978AC();
          sub_1C98994B0();
          sub_1C9A93858();
          swift_unknownObjectRelease();
          (*(v38 + 8))(v1, v39);
        }

        else
        {
          sub_1C9897858();
          sub_1C98994B0();
          sub_1C9A93858();
          swift_unknownObjectRelease();
          (*(v40 + 8))(v41, v42);
        }

        v32 = sub_1C9899488();
        v33(v32);
      }

      else
      {
        sub_1C9897900();
        sub_1C98994B0();
        sub_1C9A93858();
        sub_1C9897954();
        sub_1C9A938F8();
        swift_unknownObjectRelease();
        v34 = sub_1C98994BC();
        v35(v34);
        v36 = sub_1C98995B8();
        v37(v36, v14);
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C9893CF8(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4, uint64_t a5, char a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (!a3)
  {
    if (a6)
    {
      return 0;
    }

    v8 = sub_1C9899574(a1, a2);
    return (sub_1C9808DF8(v8, v9) & 1) != 0;
  }

  if (a3 != 1)
  {
    return a6 == 2 && !a5;
  }

  if (a6 == 1)
  {
    v6 = sub_1C9899574(a1, a2);
    if (sub_1C9808E6C(v6, v7))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C9893D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F436570616873 && a2 == 0xEF746E6961727473)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9893E48(char a1)
{
  if (a1)
  {
    return 0x6E6F436570616873;
  }

  else
  {
    return 0x6570795461746164;
  }
}

void sub_1C9893E8C()
{
  sub_1C97AEB94();
  v3 = v2;
  v4 = sub_1C97A2CEC(&qword_1EC3CAA38);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEA4C();
  sub_1C97BE20C(v3, v3[3]);
  sub_1C9897F2C();
  sub_1C9A93DD8();
  sub_1C9898028();
  sub_1C9899580();
  sub_1C9A93A18();
  if (!v0)
  {
    sub_1C989807C();
    sub_1C9899580();
    sub_1C9A93A18();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C97AEB5C();
}

void sub_1C9893FFC(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  MEMORY[0x1CCA91980](a2);
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1CCA91980](2);
      sub_1C97BE374();

      sub_1C97C7FD4();
    }

    else
    {
      MEMORY[0x1CCA91980](0);
    }
  }

  else
  {
    MEMORY[0x1CCA91980](1);
    sub_1C97BE374();

    sub_1C97C8084();
  }
}

uint64_t sub_1C98940A4(unsigned __int8 a1, uint64_t a2, char a3)
{
  sub_1C97BE32C();
  MEMORY[0x1CCA91980](a1);
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = MEMORY[0x1CCA91980](2);
      sub_1C98995AC(v5, v6, v7, v8, v9, v10, v11, v12, v22, v23);
      sub_1C97C7FD4();
    }

    else
    {
      MEMORY[0x1CCA91980](0);
    }
  }

  else
  {
    v13 = MEMORY[0x1CCA91980](1);
    sub_1C98995AC(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
    sub_1C97C8084();
  }

  return sub_1C9A93D18();
}

uint64_t sub_1C9894138(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CAA18);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2C8();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C9897F2C();
  sub_1C9A93DB8();
  sub_1C9897F80();
  sub_1C98994B0();
  sub_1C9A938F8();
  sub_1C9897FD4();
  sub_1C98994B0();
  sub_1C9A938F8();
  (*(v5 + 8))(v1, v3);
  sub_1C97A592C(a1);
  return v8;
}

uint64_t sub_1C98942F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x363174616F6C66 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x323374616F6C66 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x343674616F6C66 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x3233746E69 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C989444C(char a1)
{
  result = 0x363174616F6C66;
  switch(a1)
  {
    case 1:
      result = 0x323374616F6C66;
      break;
    case 2:
      result = 0x343674616F6C66;
      break;
    case 3:
      result = 0x3233746E69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C98944C4()
{
  sub_1C97AEB94();
  v40 = v1;
  sub_1C97A2CEC(&qword_1EC3CAB38);
  sub_1C97AE9C8();
  v38 = v3;
  v39 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AC02C();
  v37 = v5;
  sub_1C97A2CEC(&qword_1EC3CAB40);
  sub_1C97AE9C8();
  v35 = v7;
  v36 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AC02C();
  v34 = v9;
  sub_1C97A2CEC(&qword_1EC3CAB48);
  sub_1C97AE9C8();
  v32 = v11;
  v33 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97FB2C8();
  v13 = sub_1C97A2CEC(&qword_1EC3CAB50);
  sub_1C97AE9C8();
  v31 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97E86E4();
  v16 = sub_1C97A2CEC(&qword_1EC3CAB58);
  sub_1C97AE9C8();
  v18 = v17;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v22 = sub_1C97BE374();
  sub_1C97BE20C(v22, v23);
  sub_1C9898424();
  sub_1C9A93DD8();
  switch(v40)
  {
    case 1:
      sub_1C9898520();
      sub_1C989950C();
      v27 = sub_1C9899528();
      v29(v27, v28);
      break;
    case 2:
      sub_1C98984CC();
      v24 = v34;
      sub_1C989950C();
      v26 = v35;
      v25 = v36;
      goto LABEL_5;
    case 3:
      sub_1C9898478();
      v24 = v37;
      sub_1C989950C();
      v26 = v38;
      v25 = v39;
LABEL_5:
      (*(v26 + 8))(v24, v25);
      break;
    default:
      sub_1C9898574();
      sub_1C989950C();
      (*(v31 + 8))(v0, v13);
      break;
  }

  (*(v18 + 8))(v21, v16);
  sub_1C97AEB5C();
}

void sub_1C9894860()
{
  sub_1C97AEB94();
  v3 = v2;
  v38 = sub_1C97A2CEC(&qword_1EC3CAA78);
  sub_1C97AE9C8();
  v35 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v37 = v6;
  sub_1C97A2CEC(&qword_1EC3CAA80);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CAA88);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97FB2C8();
  v9 = sub_1C97A2CEC(&qword_1EC3CAA90);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98550DC();
  v11 = sub_1C97A2CEC(&qword_1EC3CAA98);
  sub_1C97AE9C8();
  v36 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98021C4();
  sub_1C97BE20C(v3, v3[3]);
  sub_1C9898424();
  sub_1C9A93DB8();
  if (v0)
  {
    goto LABEL_8;
  }

  v39 = v3;
  v14 = v1;
  v15 = sub_1C9A93958();
  sub_1C98EE524(v15, 0);
  if (v17 == v16 >> 1)
  {
LABEL_7:
    v32 = sub_1C9A93648();
    sub_1C97A7A80();
    v34 = v33;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v34 = &type metadata for MLFeatureUtils.MultiArrayDataType;
    sub_1C9A93868();
    sub_1C98994EC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v14, v11);
    v3 = v39;
LABEL_8:
    sub_1C97A592C(v3);
LABEL_9:
    sub_1C98995A0();
    sub_1C97AEB5C();
    return;
  }

  sub_1C9899564();
  if (v19 < (v20 >> 1))
  {
    v23 = *(v22 + v21);
    v24 = sub_1C9899554(v18, v20 >> 1, v19, v20, v21);
    sub_1C98EE520(v24);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      switch(v23)
      {
        case 1:
          sub_1C9898520();
          sub_1C98994CC();
          swift_unknownObjectRelease();
          goto LABEL_13;
        case 2:
          sub_1C98984CC();
          sub_1C98994CC();
          swift_unknownObjectRelease();
LABEL_13:
          v29 = sub_1C9899528();
          goto LABEL_14;
        case 3:
          sub_1C9898478();
          sub_1C9A93858();
          swift_unknownObjectRelease();
          (*(v35 + 8))(v37, v38);
          goto LABEL_15;
        default:
          sub_1C9898574();
          sub_1C98994CC();
          swift_unknownObjectRelease();
          v29 = sub_1C9899528();
          v31 = v9;
LABEL_14:
          v30(v29, v31);
LABEL_15:
          (*(v36 + 8))(v14, v11);
          sub_1C97A592C(v39);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C9894DEC(int64x2_t *a1, char a2, int64x2_t *a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        return sub_1C9808E6C(a1, a3);
      }
    }

    else if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return sub_1C9808DF8(a1, a3);
  }

  return 0;
}

uint64_t sub_1C9894E40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746172656D756E65 && a2 == 0xEA00000000006465)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C9894F58(char a1)
{
  if (!a1)
  {
    return 0x6669636570736E75;
  }

  if (a1 == 1)
  {
    return 0x65676E6172;
  }

  return 0x746172656D756E65;
}

void sub_1C9894FB8()
{
  sub_1C97AEB94();
  v33 = v1;
  v32 = v2;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CAB60);
  sub_1C97AE9C8();
  v30 = v6;
  v31 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  v29 = v8;
  sub_1C97A2CEC(&qword_1EC3CAB68);
  sub_1C97AE9C8();
  v27 = v10;
  v28 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  v14 = sub_1C97A2CEC(&qword_1EC3CAB70);
  sub_1C97AE9C8();
  v26[1] = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2C8();
  v17 = sub_1C97A2CEC(&qword_1EC3CAB78);
  sub_1C97AE9C8();
  v19 = v18;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C98550DC();
  sub_1C97BE20C(v4, v4[3]);
  sub_1C98985C8();
  sub_1C9A93DD8();
  if (v33)
  {
    if (v33 != 1)
    {
      sub_1C98987C8();
      sub_1C98994B0();
      sub_1C9A93988();
      v24 = sub_1C9899528();
      v25(v24, v14);
      (*(v19 + 8))(v0, v17);
      goto LABEL_7;
    }

    sub_1C989861C();
    v21 = v29;
    sub_1C98994B0();
    sub_1C9A93988();
    sub_1C97A2CEC(&qword_1EC3CAAF8);
    sub_1C989881C(&qword_1EC3CAB80, &qword_1EC3CAB88);
    v22 = v31;
    sub_1C9A93A18();
    (*(v30 + 8))(v21, v22);
  }

  else
  {
    sub_1C9898670();
    sub_1C98994B0();
    sub_1C9A93988();
    sub_1C97A2CEC(&qword_1EC3CAB10);
    sub_1C9898904();
    v23 = v28;
    sub_1C9A93A18();
    (*(v27 + 8))(v13, v23);
  }

  (*(v19 + 8))(v0, v17);
LABEL_7:
  sub_1C98995A0();
  sub_1C97AEB5C();
}

void sub_1C98953A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1CCA91980](2);
      sub_1C97BE374();

      sub_1C97C7FD4();
    }

    else
    {
      MEMORY[0x1CCA91980](0);
    }
  }

  else
  {
    MEMORY[0x1CCA91980](1);
    sub_1C97BE374();

    sub_1C97C8084();
  }
}

uint64_t sub_1C9895434(uint64_t a1, char a2)
{
  sub_1C97BE32C();
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = MEMORY[0x1CCA91980](2);
      sub_1C98995AC(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21);
      sub_1C97C7FD4();
    }

    else
    {
      MEMORY[0x1CCA91980](0);
    }
  }

  else
  {
    v11 = MEMORY[0x1CCA91980](1);
    sub_1C98995AC(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
    sub_1C97C8084();
  }

  return sub_1C9A93D18();
}

void sub_1C98954B4()
{
  sub_1C97AEB94();
  v3 = v2;
  sub_1C97A2CEC(&qword_1EC3CAAC8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AC02C();
  v42 = sub_1C97A2CEC(&qword_1EC3CAAD0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97FB2C8();
  v6 = sub_1C97A2CEC(&qword_1EC3CAAD8);
  sub_1C97AE9C8();
  v41 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97E86E4();
  v9 = sub_1C97A2CEC(&qword_1EC3CAAE0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98550DC();
  sub_1C97BE20C(v3, v3[3]);
  sub_1C98985C8();
  sub_1C9A93DB8();
  if (v0)
  {
    goto LABEL_9;
  }

  v11 = sub_1C9A93958();
  sub_1C98EE524(v11, 0);
  if (v13 == v12 >> 1)
  {
LABEL_8:
    v25 = sub_1C9A93648();
    sub_1C97A7A80();
    v27 = v26;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v27 = &type metadata for MLFeatureUtils.ShapeConstraint;
    sub_1C9A93868();
    sub_1C98994EC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = sub_1C97BE374();
    v29(v28);
LABEL_9:
    v30 = v3;
    goto LABEL_10;
  }

  sub_1C9899564();
  if (v15 < (v16 >> 1))
  {
    v19 = *(v18 + v17);
    v20 = sub_1C9899554(v14, v16 >> 1, v15, v16, v17);
    sub_1C98EE520(v20);
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      if (!v19)
      {
        sub_1C98987C8();
        sub_1C9899544();
        sub_1C9A93858();
        swift_unknownObjectRelease();
        (*(v41 + 8))(v1, v6);
        v31 = sub_1C989949C();
        v32(v31);
        goto LABEL_13;
      }

      if (v19 == 1)
      {
        sub_1C9898670();
        sub_1C9899544();
        sub_1C9A93858();
        sub_1C97A2CEC(&qword_1EC3CAB10);
        sub_1C98986C4();
        sub_1C9A938F8();
        swift_unknownObjectRelease();
        v33 = sub_1C9899528();
        v34(v33, v42);
        v35 = sub_1C989949C();
        v36(v35);
LABEL_13:
        v30 = v3;
        goto LABEL_10;
      }

      sub_1C989861C();
      sub_1C9899544();
      sub_1C9A93858();
      v30 = v3;
      sub_1C97A2CEC(&qword_1EC3CAAF8);
      sub_1C989881C(&qword_1EC3CAB00, &qword_1EC3CE720);
      sub_1C9A938F8();
      swift_unknownObjectRelease();
      v37 = sub_1C98994BC();
      v38(v37);
      v39 = sub_1C98995B8();
      v40(v39, v9);
LABEL_10:
      sub_1C97A592C(v30);
      sub_1C97AEB5C();
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C9895B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9892AD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9895B94(uint64_t a1)
{
  v2 = sub_1C9897708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9895BD0(uint64_t a1)
{
  v2 = sub_1C9897708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C9895C0C@<D0>(_OWORD *a1@<X8>)
{
  sub_1C9892EA4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[9];
    *(a1 + 25) = *&v5[9];
  }

  return result;
}

uint64_t sub_1C9895C70()
{
  sub_1C9A93CC8();
  sub_1C9892DC8(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9895CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9893138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9895CE0(uint64_t a1)
{
  v2 = sub_1C9897804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9895D1C(uint64_t a1)
{
  v2 = sub_1C9897804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9895D58(uint64_t a1)
{
  v2 = sub_1C98978AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9895D94(uint64_t a1)
{
  v2 = sub_1C98978AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9895DD0(uint64_t a1)
{
  v2 = sub_1C9897900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9895E0C(uint64_t a1)
{
  v2 = sub_1C9897900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9895E48(uint64_t a1)
{
  v2 = sub_1C9897858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9895E84(uint64_t a1)
{
  v2 = sub_1C9897858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C9895EC0(uint64_t a1@<X8>)
{
  sub_1C989372C();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_1C9895F28()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C9A93CC8();
  sub_1C9893610(v5, v1, v2, v3);
  return sub_1C9A93D18();
}

uint64_t sub_1C9895FB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9896008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9893D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9896030(uint64_t a1)
{
  v2 = sub_1C9897F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C989606C(uint64_t a1)
{
  v2 = sub_1C9897F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98960A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C9894138(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1C9896120()
{
  v1 = *v0;
  v2 = v0[16];
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1CCA91980](2);
      sub_1C97C7FD4();
    }

    else
    {
      MEMORY[0x1CCA91980](0);
    }
  }

  else
  {
    MEMORY[0x1CCA91980](1);
    sub_1C97C8084();
  }

  return sub_1C9A93D18();
}

uint64_t sub_1C98961E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98942F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C989620C(uint64_t a1)
{
  v2 = sub_1C9898424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9896248(uint64_t a1)
{
  v2 = sub_1C9898424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9896284(uint64_t a1)
{
  v2 = sub_1C9898574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98962C0(uint64_t a1)
{
  v2 = sub_1C9898574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98962FC(uint64_t a1)
{
  v2 = sub_1C9898520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9896338(uint64_t a1)
{
  v2 = sub_1C9898520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9896374(uint64_t a1)
{
  v2 = sub_1C98984CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98963B0(uint64_t a1)
{
  v2 = sub_1C98984CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98963EC(uint64_t a1)
{
  v2 = sub_1C9898478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9896428(uint64_t a1)
{
  v2 = sub_1C9898478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C9896464(_BYTE *a1@<X8>)
{
  sub_1C9894860();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C98964C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9896518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9894E40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9896540(uint64_t a1)
{
  v2 = sub_1C98985C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C989657C(uint64_t a1)
{
  v2 = sub_1C98985C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98965B8(uint64_t a1)
{
  v2 = sub_1C989861C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98965F4(uint64_t a1)
{
  v2 = sub_1C989861C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9896630(uint64_t a1)
{
  v2 = sub_1C9898670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C989666C(uint64_t a1)
{
  v2 = sub_1C9898670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98966A8(uint64_t a1)
{
  v2 = sub_1C98987C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98966E4(uint64_t a1)
{
  v2 = sub_1C98987C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C9896720(uint64_t a1@<X8>)
{
  sub_1C98954B4();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
  }
}

uint64_t sub_1C9896788()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C9A93CC8();
  sub_1C98953A8(v4, v1, v2);
  return sub_1C9A93D18();
}

id sub_1C98967EC(void *a1)
{
  v2 = sub_1C9A92478();
  v3 = [a1 featureValueForName_];

  if (!v3)
  {
    sub_1C97A8E8C();
    sub_1C97A7A80();
    *v4 = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1C989687C(void *a1)
{
  v3 = [a1 inputDescriptionsByName];
  sub_1C97BD318(0, &qword_1EC3C54D0);
  v4 = sub_1C9A92328();

  v5 = sub_1C98969A4(v4);

  if (!v1)
  {
    v6 = [a1 outputDescriptionsByName];
    v7 = sub_1C9A92328();

    sub_1C98969A4(v7);
  }

  return v5;
}

uint64_t sub_1C98969A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1C97B8118(0, v2, 0);
  v3 = v31;
  result = sub_1C9887A94(a1);
  v6 = result;
  v8 = v7;
  v10 = v9;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    if (((*(a1 + 64 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_23;
    }

    if (*(a1 + 36) != v8)
    {
      goto LABEL_24;
    }

    v11 = (*(a1 + 48) + 16 * v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v6);
    swift_bridgeObjectRetain_n();
    v15 = v14;
    sub_1C9896C4C();
    if (v1)
    {

      swift_bridgeObjectRelease_n();
      return v3;
    }

    v30 = v26;
    if (v12 == v26 && v13 == *(&v26 + 1))
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v17 = sub_1C9A93B18();

      if ((v17 & 1) == 0)
      {
        sub_1C9875E1C(&v30);
        v28 = *&v27[8];
        v29 = v27[24];
        sub_1C98973C4(&v28);
        type metadata accessor for SNError();
        sub_1C98573F8();
        sub_1C9820900(v24, v23 | 8, v25);
        swift_willThrow();

        return v3;
      }
    }

    v31 = v3;
    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1C97B8118(v18 > 1, v19 + 1, 1);
      v3 = v31;
    }

    *(v3 + 16) = v19 + 1;
    v20 = (v3 + 48 * v19);
    *(v20 + 57) = *&v27[9];
    v20[2] = v26;
    v20[3] = *v27;
    result = sub_1C9887A8C(v6, v8, v10 & 1, a1);
    v6 = result;
    v8 = v21;
    v10 = v22;
    if (!--v2)
    {
      sub_1C97FDD94(result, v21, v22 & 1);
      return v3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1C9896C4C()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v5 = [v1 type];
  if (v5 == 3)
  {
    v14 = 0;
    v11 = 0;
    v13 = -2;
    goto LABEL_9;
  }

  if (v5 == 6)
  {
    v14 = 0;
    v11 = 0;
    v13 = -1;
    goto LABEL_9;
  }

  if (v5 != 5)
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C9820900(v21, v20 + 1, v22);
LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  v6 = [v2 multiArrayConstraint];
  if (!v6)
  {
    sub_1C97A8E8C();
    sub_1C97A7A80();
    *v23 = 0;
    goto LABEL_12;
  }

  v7 = v6;
  sub_1C9896DB8(v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (!v0)
  {
    v14 = v9;
LABEL_9:
    v15 = [v2 name];
    v16 = sub_1C9A924A8();
    v18 = v17;

    v19 = [v2 isOptional];
    *v4 = v16;
    *(v4 + 8) = v18;
    *(v4 + 16) = v19;
    *(v4 + 24) = v14;
    *(v4 + 32) = v11;
    *(v4 + 40) = v13;
  }

LABEL_13:
  sub_1C97AEB5C();
}

void sub_1C9896DB8(void *a1)
{
  v3 = [a1 shapeConstraint];
  sub_1C9896E54(v3);

  if (!v1)
  {
    sub_1C9897320([a1 dataType]);
  }
}

void sub_1C9896E54(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    return;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      sub_1C98973F4();
      sub_1C97A7A80();
      *v39 = 1;
      swift_willThrow();
      return;
    }

    v3 = [a1 sizeRangeForDimension];
    sub_1C97BD318(0, &qword_1EC3C5690);
    v4 = sub_1C9A92798();

    v5 = sub_1C97BDEE0(v4);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v7 = v5;
      v52 = v4;
      v55 = MEMORY[0x1E69E7CC0];
      sub_1C97B819C();
      if (v7 < 0)
      {
        goto LABEL_52;
      }

      v8 = 0;
      v9 = v55;
      v10 = v4 & 0xC000000000000001;
      do
      {
        if (v10)
        {
          v11 = MEMORY[0x1CCA912B0](v8, v4);
        }

        else
        {
          v11 = *(v4 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = [v11 rangeValue];
        v15 = v14;

        v17 = *(v55 + 16);
        v16 = *(v55 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1C9899534(v16);
          sub_1C97B819C();
          v4 = v52;
        }

        ++v8;
        *(v55 + 16) = v17 + 1;
        v18 = v55 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
      }

      while (v7 != v8);

      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v40 = *(v9 + 16);
    if (v40)
    {
      sub_1C97B8158();
      v41 = v6;
      v42 = (v9 + 40);
      do
      {
        v43 = *(v42 - 1);
        v44 = v43 + *v42;
        if (__OFADD__(v43, *v42))
        {
          v44 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v44 < v43)
        {
          goto LABEL_51;
        }

        v46 = *(v41 + 16);
        v45 = *(v41 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1C9899534(v45);
          sub_1C97B8158();
        }

        v42 += 2;
        *(v41 + 16) = v46 + 1;
        v47 = v41 + 16 * v46;
        *(v47 + 32) = v43;
        *(v47 + 40) = v44;
        --v40;
      }

      while (v40);
    }

    goto LABEL_47;
  }

  v19 = [a1 enumeratedShapes];
  sub_1C97A2CEC(&qword_1EC3CBA20);
  v20 = sub_1C9A92798();

  v21 = *(v20 + 16);
  if (!v21)
  {
LABEL_47:

    return;
  }

  v56 = MEMORY[0x1E69E7CC0];
  sub_1C97B8138(0, v21, 0);
  v22 = 0;
  v23 = v56;
  v49 = v20;
  v50 = v20 + 32;
  v48 = v21;
  while (v22 < *(v20 + 16))
  {
    v24 = *(v50 + 8 * v22);
    if (v24 >> 62)
    {
      v32 = v22;
      v33 = sub_1C9A934C8();
      v22 = v32;
      v25 = v33;
      if (!v33)
      {
LABEL_29:
        v27 = MEMORY[0x1E69E7CC0];
        goto LABEL_30;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_29;
      }
    }

    v51 = v22;
    v53 = v23;
    v54 = MEMORY[0x1E69E7CC0];

    sub_1C97B7C28();
    if (v25 < 0)
    {
      goto LABEL_50;
    }

    v26 = 0;
    v27 = v54;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1CCA912B0](v26, v24);
      }

      else
      {
        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 integerValue];

      v31 = *(v54 + 16);
      if (v31 >= *(v54 + 24) >> 1)
      {
        sub_1C97B7C28();
        v23 = v53;
      }

      ++v26;
      *(v54 + 16) = v31 + 1;
      *(v54 + 8 * v31 + 32) = v30;
    }

    while (v25 != v26);

    v21 = v48;
    v20 = v49;
    v22 = v51;
LABEL_30:
    v35 = *(v23 + 16);
    v34 = *(v23 + 24);
    if (v35 >= v34 >> 1)
    {
      v36 = sub_1C9899534(v34);
      v38 = v37;
      sub_1C97B8138(v36, v35 + 1, 1);
      v22 = v38;
    }

    ++v22;
    *(v23 + 16) = v35 + 1;
    *(v23 + 8 * v35 + 32) = v27;
    if (v22 == v21)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_1C9897320(uint64_t a1)
{
  switch(a1)
  {
    case 65552:
      return 0;
    case 131104:
      return 3;
    case 65600:
      return 2;
    case 65568:
      return 1;
  }

  sub_1C98973F4();
  sub_1C97A7A80();
  *v2 = 0;
  return swift_willThrow();
}

unint64_t sub_1C98973F4()
{
  result = qword_1EC3CA8F0;
  if (!qword_1EC3CA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8F0);
  }

  return result;
}

uint64_t sub_1C9897458(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1C9897474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9897488(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C98974C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C9897534(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 > 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C989757C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_1C98975C8(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t sub_1C9897604()
{
  result = qword_1EC3CA8F8;
  if (!qword_1EC3CA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8F8);
  }

  return result;
}

unint64_t sub_1C989765C()
{
  result = qword_1EC3CA900;
  if (!qword_1EC3CA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA900);
  }

  return result;
}

unint64_t sub_1C98976B4()
{
  result = qword_1EC3CA908;
  if (!qword_1EC3CA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA908);
  }

  return result;
}

unint64_t sub_1C9897708()
{
  result = qword_1EC3CA918;
  if (!qword_1EC3CA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA918);
  }

  return result;
}

unint64_t sub_1C989775C()
{
  result = qword_1EC3CA920;
  if (!qword_1EC3CA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA920);
  }

  return result;
}

unint64_t sub_1C98977B0()
{
  result = qword_1EC3CA930;
  if (!qword_1EC3CA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA930);
  }

  return result;
}

unint64_t sub_1C9897804()
{
  result = qword_1EC3CA958;
  if (!qword_1EC3CA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA958);
  }

  return result;
}

unint64_t sub_1C9897858()
{
  result = qword_1EC3CA960;
  if (!qword_1EC3CA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA960);
  }

  return result;
}

unint64_t sub_1C98978AC()
{
  result = qword_1EC3CA968;
  if (!qword_1EC3CA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA968);
  }

  return result;
}

unint64_t sub_1C9897900()
{
  result = qword_1EC3CA970;
  if (!qword_1EC3CA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA970);
  }

  return result;
}

unint64_t sub_1C9897954()
{
  result = qword_1EC3CA978;
  if (!qword_1EC3CA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA978);
  }

  return result;
}

unint64_t sub_1C98979A8()
{
  result = qword_1EC3CA9A0;
  if (!qword_1EC3CA9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9A0);
  }

  return result;
}

unint64_t sub_1C9897A60()
{
  result = qword_1EC3CA9A8;
  if (!qword_1EC3CA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9A8);
  }

  return result;
}

unint64_t sub_1C9897AB8()
{
  result = qword_1EC3CA9B0;
  if (!qword_1EC3CA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9B0);
  }

  return result;
}

unint64_t sub_1C9897B10()
{
  result = qword_1EC3CA9B8;
  if (!qword_1EC3CA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9B8);
  }

  return result;
}

unint64_t sub_1C9897B68()
{
  result = qword_1EC3CA9C0;
  if (!qword_1EC3CA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9C0);
  }

  return result;
}

unint64_t sub_1C9897BC0()
{
  result = qword_1EC3CA9C8;
  if (!qword_1EC3CA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9C8);
  }

  return result;
}

unint64_t sub_1C9897C18()
{
  result = qword_1EC3CA9D0;
  if (!qword_1EC3CA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9D0);
  }

  return result;
}

unint64_t sub_1C9897C70()
{
  result = qword_1EC3CA9D8;
  if (!qword_1EC3CA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9D8);
  }

  return result;
}

unint64_t sub_1C9897CC8()
{
  result = qword_1EC3CA9E0;
  if (!qword_1EC3CA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9E0);
  }

  return result;
}

unint64_t sub_1C9897D20()
{
  result = qword_1EC3CA9E8;
  if (!qword_1EC3CA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9E8);
  }

  return result;
}

unint64_t sub_1C9897D78()
{
  result = qword_1EC3CA9F0;
  if (!qword_1EC3CA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9F0);
  }

  return result;
}

unint64_t sub_1C9897DD0()
{
  result = qword_1EC3CA9F8;
  if (!qword_1EC3CA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9F8);
  }

  return result;
}

unint64_t sub_1C9897E28()
{
  result = qword_1EC3CAA00;
  if (!qword_1EC3CAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA00);
  }

  return result;
}

unint64_t sub_1C9897E80()
{
  result = qword_1EC3CAA08;
  if (!qword_1EC3CAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA08);
  }

  return result;
}

unint64_t sub_1C9897ED8()
{
  result = qword_1EC3CAA10;
  if (!qword_1EC3CAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA10);
  }

  return result;
}

unint64_t sub_1C9897F2C()
{
  result = qword_1EC3CAA20;
  if (!qword_1EC3CAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA20);
  }

  return result;
}

unint64_t sub_1C9897F80()
{
  result = qword_1EC3CAA28;
  if (!qword_1EC3CAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA28);
  }

  return result;
}

unint64_t sub_1C9897FD4()
{
  result = qword_1EC3CAA30;
  if (!qword_1EC3CAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA30);
  }

  return result;
}

unint64_t sub_1C9898028()
{
  result = qword_1EC3CAA40;
  if (!qword_1EC3CAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA40);
  }

  return result;
}

unint64_t sub_1C989807C()
{
  result = qword_1EC3CAA48;
  if (!qword_1EC3CAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA48);
  }

  return result;
}

_BYTE *sub_1C98980D0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C97BE280(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C989819C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C98981B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C98981F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C9898234(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1C9898270()
{
  result = qword_1EC3CAA50;
  if (!qword_1EC3CAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA50);
  }

  return result;
}

unint64_t sub_1C98982C8()
{
  result = qword_1EC3CAA58;
  if (!qword_1EC3CAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA58);
  }

  return result;
}

unint64_t sub_1C9898320()
{
  result = qword_1EC3CAA60;
  if (!qword_1EC3CAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA60);
  }

  return result;
}

unint64_t sub_1C9898378()
{
  result = qword_1EC3CAA68;
  if (!qword_1EC3CAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA68);
  }

  return result;
}

unint64_t sub_1C98983D0()
{
  result = qword_1EC3CAA70;
  if (!qword_1EC3CAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA70);
  }

  return result;
}

unint64_t sub_1C9898424()
{
  result = qword_1EC3CAAA0;
  if (!qword_1EC3CAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAA0);
  }

  return result;
}

unint64_t sub_1C9898478()
{
  result = qword_1EC3CAAA8;
  if (!qword_1EC3CAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAA8);
  }

  return result;
}

unint64_t sub_1C98984CC()
{
  result = qword_1EC3CAAB0;
  if (!qword_1EC3CAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAB0);
  }

  return result;
}

unint64_t sub_1C9898520()
{
  result = qword_1EC3CAAB8;
  if (!qword_1EC3CAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAB8);
  }

  return result;
}

unint64_t sub_1C9898574()
{
  result = qword_1EC3CAAC0;
  if (!qword_1EC3CAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAC0);
  }

  return result;
}

unint64_t sub_1C98985C8()
{
  result = qword_1EC3CAAE8;
  if (!qword_1EC3CAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAE8);
  }

  return result;
}

unint64_t sub_1C989861C()
{
  result = qword_1EC3CAAF0;
  if (!qword_1EC3CAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAF0);
  }

  return result;
}

unint64_t sub_1C9898670()
{
  result = qword_1EC3CAB08;
  if (!qword_1EC3CAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAB08);
  }

  return result;
}

unint64_t sub_1C98986C4()
{
  result = qword_1EC3CAB18;
  if (!qword_1EC3CAB18)
  {
    sub_1C97AA4F0(&qword_1EC3CAB10);
    sub_1C989876C(&qword_1EC3CAB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAB18);
  }

  return result;
}

uint64_t sub_1C989876C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CAB28);
    result = sub_1C97FB3F0();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C98987C8()
{
  result = qword_1EC3CAB30;
  if (!qword_1EC3CAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAB30);
  }

  return result;
}

uint64_t sub_1C989881C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CAAF8);
    sub_1C98988A8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C98988A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&unk_1EC3CE7E0);
    result = sub_1C97FB3F0();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9898904()
{
  result = qword_1EC3CAB90;
  if (!qword_1EC3CAB90)
  {
    sub_1C97AA4F0(&qword_1EC3CAB10);
    sub_1C989876C(&qword_1EC3CAB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAB90);
  }

  return result;
}

_BYTE *sub_1C98989AC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C97BE280(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9898A98(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C9898B44(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 4);
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

      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C97BE3EC(v8);
}

_BYTE *sub_1C9898BC8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C97BE280(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9898CD8()
{
  result = qword_1EC3CABA0;
  if (!qword_1EC3CABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABA0);
  }

  return result;
}

unint64_t sub_1C9898D30()
{
  result = qword_1EC3CABA8;
  if (!qword_1EC3CABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABA8);
  }

  return result;
}

unint64_t sub_1C9898D88()
{
  result = qword_1EC3CABB0;
  if (!qword_1EC3CABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABB0);
  }

  return result;
}

unint64_t sub_1C9898DE0()
{
  result = qword_1EC3CABB8;
  if (!qword_1EC3CABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABB8);
  }

  return result;
}

unint64_t sub_1C9898E38()
{
  result = qword_1EC3CABC0;
  if (!qword_1EC3CABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABC0);
  }

  return result;
}

unint64_t sub_1C9898E90()
{
  result = qword_1EC3CABC8;
  if (!qword_1EC3CABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABC8);
  }

  return result;
}

unint64_t sub_1C9898EE8()
{
  result = qword_1EC3CABD0;
  if (!qword_1EC3CABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABD0);
  }

  return result;
}

unint64_t sub_1C9898F40()
{
  result = qword_1EC3CABD8;
  if (!qword_1EC3CABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABD8);
  }

  return result;
}

unint64_t sub_1C9898F98()
{
  result = qword_1EC3CABE0;
  if (!qword_1EC3CABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABE0);
  }

  return result;
}

unint64_t sub_1C9898FF0()
{
  result = qword_1EC3CABE8;
  if (!qword_1EC3CABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABE8);
  }

  return result;
}

unint64_t sub_1C9899048()
{
  result = qword_1EC3CABF0;
  if (!qword_1EC3CABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABF0);
  }

  return result;
}

unint64_t sub_1C98990A0()
{
  result = qword_1EC3CABF8;
  if (!qword_1EC3CABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABF8);
  }

  return result;
}

unint64_t sub_1C98990F8()
{
  result = qword_1EC3CAC00;
  if (!qword_1EC3CAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC00);
  }

  return result;
}

unint64_t sub_1C9899150()
{
  result = qword_1EC3CAC08;
  if (!qword_1EC3CAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC08);
  }

  return result;
}

unint64_t sub_1C98991A8()
{
  result = qword_1EC3CAC10;
  if (!qword_1EC3CAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC10);
  }

  return result;
}

unint64_t sub_1C9899200()
{
  result = qword_1EC3CAC18;
  if (!qword_1EC3CAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC18);
  }

  return result;
}

unint64_t sub_1C9899258()
{
  result = qword_1EC3CAC20;
  if (!qword_1EC3CAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC20);
  }

  return result;
}

unint64_t sub_1C98992B0()
{
  result = qword_1EC3CAC28;
  if (!qword_1EC3CAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC28);
  }

  return result;
}

unint64_t sub_1C9899308()
{
  result = qword_1EC3CAC30;
  if (!qword_1EC3CAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC30);
  }

  return result;
}

unint64_t sub_1C9899360()
{
  result = qword_1EC3CAC38;
  if (!qword_1EC3CAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC38);
  }

  return result;
}

unint64_t sub_1C98993B8()
{
  result = qword_1EC3CAC40;
  if (!qword_1EC3CAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC40);
  }

  return result;
}

unint64_t sub_1C9899410()
{
  result = qword_1EC3CAC48;
  if (!qword_1EC3CAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC48);
  }

  return result;
}

uint64_t sub_1C98994CC()
{

  return sub_1C9A93858();
}

uint64_t sub_1C98994EC()
{

  return sub_1C9A93638();
}

uint64_t sub_1C989950C()
{

  return sub_1C9A93988();
}

uint64_t sub_1C98995C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F72446C65646F6DLL && a2 == 0xEA00000000003770)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C9899660(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CAC80);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CAC88);
  sub_1C97AE9C8();
  v10 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C989A4F0();
  sub_1C9A93DD8();
  sub_1C989A544();
  sub_1C9A93988();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

void sub_1C9899818(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CAC60);
  sub_1C97AE9C8();
  v37 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CAC68);
  sub_1C97AE9C8();
  v38 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C989A4F0();
  sub_1C9A93DB8();
  if (v1)
  {
    goto LABEL_9;
  }

  v35 = v7;
  v36 = a1;
  v13 = sub_1C9A93958();
  sub_1C98ECCE8(v13, 0);
  v17 = v12;
  if (v15 == v16 >> 1)
  {
    v37 = v14;
LABEL_8:
    v28 = v8;
    v29 = v38;
    v30 = sub_1C9A93648();
    swift_allocError();
    v32 = v31;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v32 = &type metadata for SNLanguageAlignedAVFuser.FuserVersion;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v29 + 8))(v17, v28);
    a1 = v36;
LABEL_9:
    v33 = a1;
    goto LABEL_10;
  }

  if (v15 < (v16 >> 1))
  {
    v18 = sub_1C98EE520(v15 + 1);
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = v20 == v22 >> 1;
    v24 = v36;
    v25 = v37;
    if (v23)
    {
      sub_1C989A544();
      v26 = v35;
      sub_1C9A93858();
      v27 = v38;
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v3);
      (*(v27 + 8))(v17, v8);
      v33 = v24;
LABEL_10:
      sub_1C97A592C(v33);
      return;
    }

    v37 = v18;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C9899BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98995C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9899BD4(uint64_t a1)
{
  v2 = sub_1C989A4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9899C10(uint64_t a1)
{
  v2 = sub_1C989A4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9899C4C(uint64_t a1)
{
  v2 = sub_1C989A544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9899C88(uint64_t a1)
{
  v2 = sub_1C989A544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C9899D60(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  if (a1 != 7 || a2 != 7)
  {
    sub_1C989A5DC();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    return swift_deallocPartialClassInstance();
  }

  v10 = objc_autoreleasePoolPush();
  v11 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 40;
  v18 = 40;
  MEMORY[0x1EEE9AC00](v12);

  v13 = sub_1C97E2E88();
  if (v3)
  {

    objc_autoreleasePoolPop(v11);
    objc_autoreleasePoolPop(v10);
    return swift_deallocPartialClassInstance();
  }

  v15 = v13;

  objc_autoreleasePoolPop(v11);
  objc_autoreleasePoolPop(v10);
  v16 = &v4[OBJC_IVAR___SNLanguageAlignedAVFuser_model];
  *v16 = v15;
  v16[1] = &off_1F4937390;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1C9899FF8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1C97A2CEC(&qword_1EC3C69E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA3B60;
  *(inited + 32) = 0x6D655F6F69647561;
  *(inited + 40) = 0xEF676E6964646562;
  v8 = objc_opt_self();
  v9 = [v8 featureValueWithMultiArray_];
  v10 = sub_1C989A598();
  *(inited + 48) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001C9AD7C60;
  v11 = [v8 featureValueWithMultiArray_];
  *(inited + 120) = v10;
  *(inited + 96) = v11;
  sub_1C9A92348();
  v12 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v13 = sub_1C98B6EC8();
  if (!v3)
  {
    v14 = v13;
    v15 = *(v4 + OBJC_IVAR___SNLanguageAlignedAVFuser_model + 8);
    ObjectType = swift_getObjectType();
    v17 = objc_allocWithZone(MEMORY[0x1E695FF08]);
    v18 = v14;
    v19 = [v17 init];
    v20 = (*(v15 + 24))(v18, v19, ObjectType, v15);

    v21 = [v20 featureNames];
    v22 = sub_1C9A92B28();

    v9 = sub_1C98BBD24(v22);
    v24 = v23;

    if (v24 && (v9 = sub_1C9A92478(), , v25 = [v20 featureValueForName_], v9, v25) && (v9 = objc_msgSend(v25, sel_multiArrayValue), v25, v9))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C989A5DC();
      swift_allocError();
      *v26 = 2;
      swift_willThrow();

      swift_unknownObjectRelease();
    }
  }

  return v9;
}

id SNLanguageAlignedAVFuser.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C989A49C()
{
  result = qword_1EC3CAC58;
  if (!qword_1EC3CAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC58);
  }

  return result;
}

unint64_t sub_1C989A4F0()
{
  result = qword_1EC3CAC70;
  if (!qword_1EC3CAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC70);
  }

  return result;
}

unint64_t sub_1C989A544()
{
  result = qword_1EC3CAC78;
  if (!qword_1EC3CAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC78);
  }

  return result;
}

unint64_t sub_1C989A598()
{
  result = qword_1EC3C54F8;
  if (!qword_1EC3C54F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C54F8);
  }

  return result;
}

unint64_t sub_1C989A5DC()
{
  result = qword_1EC3CAC90;
  if (!qword_1EC3CAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNLanguageAlignedAVFuser.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C989A70C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C989A7CC()
{
  result = qword_1EC3CAC98;
  if (!qword_1EC3CAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC98);
  }

  return result;
}

unint64_t sub_1C989A824()
{
  result = qword_1EC3CACA0;
  if (!qword_1EC3CACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACA0);
  }

  return result;
}

unint64_t sub_1C989A87C()
{
  result = qword_1EC3CACA8;
  if (!qword_1EC3CACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACA8);
  }

  return result;
}

unint64_t sub_1C989A8D4()
{
  result = qword_1EC3CACB0;
  if (!qword_1EC3CACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACB0);
  }

  return result;
}

unint64_t sub_1C989A92C()
{
  result = qword_1EC3CACB8;
  if (!qword_1EC3CACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACB8);
  }

  return result;
}

unint64_t sub_1C989A984()
{
  result = qword_1EC3CACC0;
  if (!qword_1EC3CACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACC0);
  }

  return result;
}

BOOL sub_1C989A9E4()
{
  sub_1C97C2CD8();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

void sub_1C989AA8C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1C97BDEE0(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA912B0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_1C989AB80(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 0;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C989ACF0(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v5 = qword_1EC3D3020 == -1;
      if (qword_1EC3D3020 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3020;
      }

      sub_1C9A924A8();
      sub_1C989C4AC();
      sub_1C97F07FC();
      v7 = swift_allocObject();
      v8 = &unk_1F4929CB0;
      *(v7 + 16) = &unk_1F4929CB0;
      v9 = sub_1C989C208;
      break;
    case 2:
      v5 = qword_1EC3D3030 == -1;
      if (qword_1EC3D3030 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3030;
      }

      sub_1C9A924A8();
      sub_1C989C4AC();
      sub_1C97F07FC();
      v7 = swift_allocObject();
      v8 = &unk_1F4929CD8;
      *(v7 + 16) = &unk_1F4929CD8;
      v9 = sub_1C989C4A8;
      break;
    case 3:
      v5 = qword_1EC3D3040 == -1;
      if (qword_1EC3D3040 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3040;
      }

      sub_1C97F07FC();
      swift_allocObject();
      sub_1C989C4B8();
      v8 = &unk_1F4929D00;
      *(v7 + 16) = &unk_1F4929D00;
      v9 = sub_1C989C4A8;
      break;
    case 4:
      v5 = qword_1EC3D3048 == -1;
      if (qword_1EC3D3048 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3048;
      }

      sub_1C97F07FC();
      swift_allocObject();
      sub_1C989C4B8();
      v8 = &unk_1F4929D28;
      *(v7 + 16) = &unk_1F4929D28;
      v9 = sub_1C989C4A8;
      break;
    case 5:
      v5 = qword_1EC3D3050 == -1;
      if (qword_1EC3D3050 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3050;
      }

      sub_1C9A924A8();
      sub_1C989C4AC();
      sub_1C97F07FC();
      v7 = swift_allocObject();
      v8 = &unk_1F4929D50;
      *(v7 + 16) = &unk_1F4929D50;
      v9 = sub_1C989C200;
      break;
    case 6:
      v5 = qword_1EC3D30D8 == -1;
      if (qword_1EC3D30D8 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D30D8;
      }

      sub_1C97F07FC();
      swift_allocObject();
      sub_1C989C4B8();
      v8 = 0;
      *(v7 + 16) = 0;
      v9 = sub_1C989C1F8;
      break;
    case 7:
      v5 = qword_1EC3D30E0 == -1;
      if (qword_1EC3D30E0 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D30E0;
      }

      sub_1C97F07FC();
      swift_allocObject();
      sub_1C989C4B8();
      v8 = &unk_1F4929DA0;
      *(v7 + 16) = &unk_1F4929DA0;
      v9 = sub_1C989C4A8;
      break;
    default:
      v5 = qword_1EC3D3010 == -1;
      if (qword_1EC3D3010 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3010;
      }

      sub_1C9A924A8();
      sub_1C989C4AC();
      sub_1C97F07FC();
      v7 = swift_allocObject();
      v8 = &unk_1F4929C88;
      *(v7 + 16) = &unk_1F4929C88;
      v9 = sub_1C989C4A8;
      break;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v7;
}

uint64_t sub_1C989AFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EC3C5E08 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
  memcpy(a2, &qword_1EC3D33B0, 0x41uLL);
  *(a2 + 48) = 1;
  sub_1C97A6264(__dst, &v5);

  *(a2 + 40) = a1;
  return result;
}

uint64_t sub_1C989B0A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EC3C5E08 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
  memcpy(a2, &qword_1EC3D33B0, 0x41uLL);
  *(a2 + 48) = 1;
  v4 = sub_1C9A924A8();
  v6 = v5;
  sub_1C97A6264(__dst, &v11);

  *a2 = v4;
  a2[1] = v6;
  v7 = sub_1C9A924A8();
  v9 = v8;

  a2[2] = v7;
  a2[3] = v9;

  a2[5] = a1;
  return result;
}

uint64_t sub_1C989B1B4()
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1C97B79DC(0, 8, 0);
  for (i = 0; ; ++i)
  {
    v1 = byte_1F4929C60[i + 32];
    sub_1C989ACF0(v1, &v16);
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v8 = *(v15 + 16);
    v7 = *(v15 + 24);
    if (v8 >= v7 >> 1)
    {
      v11 = v20;
      v12 = v18;
      sub_1C97B79DC(v7 > 1, v8 + 1, 1);
      v6 = v11;
      v4 = v12;
    }

    *(v15 + 16) = v8 + 1;
    v9 = v15 + (v8 << 6);
    *(v9 + 32) = v1;
    *(v9 + 36) = *&v14[3];
    *(v9 + 33) = *v14;
    *(v9 + 40) = v2;
    *(v9 + 48) = v3;
    *(v9 + 52) = *&v13[3];
    *(v9 + 49) = *v13;
    *(v9 + 56) = v4;
    *(v9 + 72) = v5;
    *(v9 + 80) = v6;
    if (i == 7)
    {
      break;
    }
  }

  return sub_1C992C1E0(v15);
}

uint64_t sub_1C989B2F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C989B1B4();
  v5 = 0;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v5 << 6);
    v13 = *(result + 56) + 56 * v12;
    if ((*(v13 + 8) & 1) == 0 && *v13 == a1)
    {
      v15 = *(v13 + 40);
      v14 = *(v13 + 48);
      v17 = *(v13 + 24);
      v16 = *(v13 + 32);
      v18 = *(v13 + 16);
      v19 = *(*(result + 48) + v12);

LABEL_13:
      *a2 = v19;
      a2[1] = a1;
      a2[2] = 0;
      a2[3] = v18;
      a2[4] = v17;
      a2[5] = v16;
      a2[6] = v15;
      a2[7] = v14;
      return result;
    }
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      a1 = 0;
      v18 = 0;
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v19 = 0;
      goto LABEL_13;
    }

    v8 = *(result + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C989B454(char a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a1 != 8)
  {
    sub_1C989ACF0(a1, v11);
    if (v11[3])
    {
      v4 = v11[2];
    }

    else
    {
      if (!a3)
      {
        v10[0] = v12;
        sub_1C97F9D3C(v10, &qword_1EC3C7DB8);

        goto LABEL_10;
      }

      v10[1] = 0xE300000000000000;
      MEMORY[0x1CCA90230](v4, a3);
      v4 = 4475201;
    }

    v10[0] = v12;
    sub_1C97F9D3C(v10, &qword_1EC3C7DB8);

    return v4;
  }

  if (a3)
  {
    MEMORY[0x1CCA90230](a2, a3);
    return 4475201;
  }

LABEL_10:
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);
  v6 = sub_1C9A91B38();
  v7 = sub_1C9A92FA8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C9788000, v6, v7, "Unsupported product type", v8, 2u);
    MEMORY[0x1CCA93280](v8, -1, -1);
  }

  return v4;
}

__CFString *sub_1C989B614()
{
  v0 = off_1EC3D3008;
  v1 = MGCopyAnswer();

  if (!v1)
  {
    goto LABEL_5;
  }

  v3[1] = v1;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
LABEL_5:
    sub_1C989C4B8();
    return v0;
  }

  v0 = v3;
  sub_1C9A93A98();
  sub_1C989C4AC();
  swift_unknownObjectRelease();
  return v0;
}

__CFString *sub_1C989B6E0()
{
  v0 = sub_1C989B614();
  v2 = v1;
  v3 = MGGetProductType();
  sub_1C989B2F8(v3, v6);
  if (v6[6])
  {
    v4 = v6[0];
  }

  else
  {
    v4 = 8;
  }

  sub_1C989B454(v4, v0, v2);
  sub_1C989C4AC();

  return v0;
}

unint64_t sub_1C989B780()
{
  sub_1C97C2CD8();
  if (sub_1C9A92538())
  {
    result = sub_1C98BBE10(v1, v0);
    if (v3)
    {
      v4 = sub_1C9A923B8();
      v6 = v5;

      sub_1C989B928(1uLL, v1, v0);
      sub_1C989C1A4();

      sub_1C9A92578();

      sub_1C9A935B8();

      MEMORY[0x1CCA90230](v4, v6);

      MEMORY[0x1CCA90230](0x6E41646E756F532FLL, 0xEE00736973796C61);
      return 0xD000000000000017;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001ELL, 0x80000001C9AD7D30);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1C989B928(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1C9A92568();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1C9A92628();

      return v7;
    }
  }

  __break(1u);
  return result;
}

BOOL static SNPlatformUtils.localhostIsVM()()
{
  v0 = swift_slowAlloc();
  sub_1C989BC08(0xD000000000000013, 0x80000001C9AD7CD0, v0);
  v1 = *v0;
  MEMORY[0x1CCA93280](v0, -1, -1);
  return v1 != 0;
}

uint64_t sub_1C989BA9C(const char *a1, void *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 4;
  v2 = sysctlbyname(a1, a2, v4, 0, 0);
  return sub_1C989BB10(v2);
}

uint64_t sub_1C989BB10(uint64_t result)
{
  if (result)
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();

    v1 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v1);

    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001FLL, 0x80000001C9AD7D50);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C989BC08(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1C9A935A8();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *v9 = a1;
    v10 = a2 & 0xFFFFFFFFFFFFFFLL;
    v8 = 4;
    v4 = v9;
    v5 = &v8;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_1C9A935A8();
  }

  *v9 = 4;
  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v5 = v9;
LABEL_6:
  v6 = sysctlbyname(v4, a3, v5, 0, 0);
  return sub_1C989BB10(v6);
}

_BYTE *storeEnumTagSinglePayload for SNPlatformUtils(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1C989BDBC()
{
  v7 = qword_1EC3D3058;
  v8 = qword_1EC3D3060;
  v9 = qword_1EC3D3068;
  v10 = qword_1EC3D3070;
  v11 = qword_1EC3D3098;
  v12 = qword_1EC3D30A0;
  v13 = qword_1EC3D30A8;
  v14 = qword_1EC3D30B0;
  v15 = qword_1EC3D30E0;
  v16 = qword_1EC3D30E8;
  v17 = qword_1EC3D3078;
  v18 = qword_1EC3D3080;
  v19 = qword_1EC3D3088;
  v20 = qword_1EC3D3090;
  v21 = qword_1EC3D30B8;
  v22 = qword_1EC3D30C0;
  v23 = qword_1EC3D30C8;
  v24 = qword_1EC3D30D0;
  v0 = 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = *&v6[v0];
    if (v2 != -1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E5AB0();
        v1 = v4;
      }

      v3 = *(v1 + 16);
      if (v3 >= *(v1 + 24) >> 1)
      {
        sub_1C97E5AB0();
        v1 = v5;
      }

      *(v1 + 16) = v3 + 1;
      *(v1 + 8 * v3 + 32) = v2;
    }

    v0 += 8;
  }

  while (v0 != 176);
  qword_1EC3D31E8 = v1;
}

BOOL sub_1C989BF88()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1C9A92478();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_1C97F9D3C(v8, &unk_1EC3C5E60);
    return 0;
  }

  sub_1C97A2CEC(&qword_1EC3C7BF0);
  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  *&v8[0] = 0x69737365636F7270;
  *(&v8[0] + 1) = 0xEA0000000000676ELL;
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C989A9E4();

  return v4;
}

uint64_t sub_1C989C12C()
{
  sub_1C97C2CD8();
  sub_1C9841D44();
  return sub_1C9A931E8() & 1;
}

unint64_t sub_1C989C1A4()
{
  result = qword_1EC3CACC8;
  if (!qword_1EC3CACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACC8);
  }

  return result;
}

__n128 sub_1C989C240(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C989C25C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C989C29C(uint64_t result, int a2, int a3)
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

_BYTE *sub_1C989C2F4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C989C3D0()
{
  result = qword_1EC3CACD0;
  if (!qword_1EC3CACD0)
  {
    sub_1C97AA4F0(&qword_1EC3CACD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACD0);
  }

  return result;
}

unint64_t sub_1C989C438()
{
  result = qword_1EC3C5668;
  if (!qword_1EC3C5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5668);
  }

  return result;
}

void sub_1C989C4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, void *a8, unint64_t a9, uint64_t a10, unint64_t *a11, uint64_t a12, uint64_t a13)
{
  sub_1C97DFA9C();
  if (v19)
  {
    v20 = a4 - a3;
    if (__OFSUB__(a4, a3))
    {
      goto LABEL_18;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    if (HIDWORD(v20))
    {
      goto LABEL_20;
    }

    v33 = v19;
    *v19 = v20;
    v21 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v23 = *(v21 + 16);
      v32[0] = v21 + 32;
      v32[1] = v23;
      v24 = a5[3];
      v25 = a5[4];
      if (__OFSUB__(v25, v24))
      {
        break;
      }

      v26 = sub_1C97E4D08(v25 - v24, a5, v32);
      if (!v20)
      {
LABEL_14:
        v30 = a8;
        sub_1C989C804(a7, v30, v33, a9, a10, a11, a12, a13);

        *a5 = v21;

        return;
      }

      if (v20 > *(v26 + 16))
      {
        goto LABEL_23;
      }

      v27 = v33 + 4;
      v28 = (v26 + 40);
      while (1)
      {
        v29 = a6 * *v28;
        if ((a6 * *v28) >> 64 != v29 >> 63)
        {
          break;
        }

        if (v29 < 0)
        {
          goto LABEL_16;
        }

        if (HIDWORD(v29))
        {
          goto LABEL_17;
        }

        sub_1C989D69C(v27);
        if (!--v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C97E72E0();
      v21 = v31;
      *a5 = v31;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

void sub_1C989C684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void **a8, unint64_t a9, uint64_t a10, unint64_t *a11, uint64_t a12, uint64_t a13)
{
  sub_1C97DFA9C();
  if (v20)
  {
    v21 = __OFSUB__(a4, a3);
    v22 = a4 - a3;
    if (v21)
    {
      goto LABEL_18;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    if (HIDWORD(v22))
    {
      goto LABEL_20;
    }

    v13 = v20;
    *v20 = v22;
    v23 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v25 = *(v23 + 16);
      v33[0] = v23 + 32;
      v33[1] = v25;
      v26 = a5[3];
      v27 = a5[4];
      if (__OFSUB__(v27, v26))
      {
        break;
      }

      v28 = sub_1C97E4D08(v27 - v26, a5, v33);
      if (!v22)
      {
LABEL_14:
        sub_1C989CB70(a7, a8, v13, a9, a10, a11, a12, a13);

        *a5 = v23;
        return;
      }

      if (v22 > *(v28 + 16))
      {
        goto LABEL_23;
      }

      v29 = (v13 + 16);
      v30 = (v28 + 40);
      while (1)
      {
        v31 = a6 * *v30;
        if ((a6 * *v30) >> 64 != v31 >> 63)
        {
          break;
        }

        if (v31 < 0)
        {
          goto LABEL_16;
        }

        if (HIDWORD(v31))
        {
          goto LABEL_17;
        }

        sub_1C989D69C(v29);
        if (!--v22)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C97E72E0();
      v23 = v32;
      *a5 = v32;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

void sub_1C989C804(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v15 = a1[1];
  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_34;
  }

  if (v16 > 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  v33[1] = v10;
  v17 = 16 * (v16 & ~(v16 >> 63));
  v13 = v17 + 24;
  if (__OFADD__(v17, 24))
  {
    goto LABEL_36;
  }

  if (v13 < 0)
  {
    goto LABEL_47;
  }

  v14 = a5;
  v12 = a4;
  v8 = a3;
  v9 = a1;
  v36 = a8;
  v37 = a6;
  v35 = a7;
  isStackAllocationSafe = a2;
  v11 = isStackAllocationSafe;
  if (v13 >= 1025)
  {
    goto LABEL_37;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v13 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v15 < 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v15))
    {
      v33[2] = v19;
      *v13 = v15;
      v20 = *v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v9 = v20;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_41:
    sub_1C97E72E0();
    v20 = v32;
    *v9 = v32;
LABEL_9:
    v34 = v14;
    if (v15)
    {
      break;
    }

    v14 = MEMORY[0x1E69E7CC0];
    *(MEMORY[0x1E69E7CC0] + 16) = 0;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

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
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v30 = v14;
      v31 = swift_slowAlloc();
      v11 = v11;
      sub_1C989CEC0(v31, v31 + v13, v15, v9, 4, v11, v8, v12, v30, v37, v35, v36);
      MEMORY[0x1CCA93280](v31, -1, -1);
      goto LABEL_27;
    }
  }

  sub_1C97A2CEC(&qword_1EC3C7478);
  v14 = sub_1C9A92838();
  v22 = 0;
  *(v14 + 16) = v15;
  v23 = v9[2];
  do
  {
    if ((v22 * v23) >> 64 != (v22 * v23) >> 63)
    {
      goto LABEL_30;
    }

    sub_1C989D6D8();
  }

  while (v15 != v22);
  *(v14 + 16) = v15;
  if (v16 < 0)
  {
    goto LABEL_45;
  }

  if (v16 >= v15)
  {
    goto LABEL_46;
  }

  do
  {
    sub_1C989D6C4();
    if (!v26)
    {
      goto LABEL_31;
    }

    v27 = 4 * v25;
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    if (HIDWORD(v27))
    {
      goto LABEL_33;
    }

    sub_1C989D6B0(v24);
    --v15;
  }

  while (v15);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (HIDWORD(v12))
  {
    __break(1u);
    goto LABEL_43;
  }

  v28 = *v37;
  if ((*v37 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  if (HIDWORD(v28))
  {
    goto LABEL_44;
  }

  if (sub_1C9A6C71C(v11, v8, v12, v34, v13, v28, v35, v36))
  {

    *v9 = v20;

    return;
  }

  sub_1C97E7A18();
  swift_allocError();
  *v29 = 0;
  swift_willThrow();

  *v9 = v20;
  swift_willThrow();
LABEL_27:
}

uint64_t sub_1C989CB70(uint64_t isStackAllocationSafe, void **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  v15 = *(isStackAllocationSafe + 8);
  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_33;
  }

  if (v16 > 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_34;
  }

  v38 = a7;
  v39 = a6;
  v35[1] = v10;
  v17 = 16 * (v16 & ~(v16 >> 63));
  v12 = v17 + 24;
  if (__OFADD__(v17, 24))
  {
    goto LABEL_35;
  }

  if (v12 < 0)
  {
    goto LABEL_46;
  }

  v13 = a8;
  v8 = a5;
  v11 = a4;
  v14 = a3;
  v9 = isStackAllocationSafe;
  v37 = a2;
  if (v12 >= 1025)
  {
    goto LABEL_36;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v12 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v15 < 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v15))
    {
      v35[2] = v18;
      *v12 = v15;
      v19 = *v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v9 = v19;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_40:
    sub_1C97E72E0();
    v19 = v34;
    *v9 = v34;
LABEL_9:
    v36 = v13;
    if (v15)
    {
      break;
    }

    v13 = MEMORY[0x1E69E7CC0];
    *(MEMORY[0x1E69E7CC0] + 16) = 0;
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

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
LABEL_35:
    __break(1u);
LABEL_36:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v30 = v37;
      v31 = swift_slowAlloc();
      v32 = v13;
      v33 = v31;
      sub_1C989D134(v31, v31 + v12, v15, v9, 4, v30, v14, v11, v8, v39, v38, v32);
      return MEMORY[0x1CCA93280](v33, -1, -1);
    }
  }

  sub_1C97A2CEC(&qword_1EC3C7478);
  v13 = sub_1C9A92838();
  v21 = 0;
  *(v13 + 16) = v15;
  v22 = v9[2];
  do
  {
    if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
    {
      goto LABEL_29;
    }

    sub_1C989D6D8();
  }

  while (v15 != v21);
  *(v13 + 16) = v15;
  if (v16 < 0)
  {
    goto LABEL_44;
  }

  if (v16 >= v15)
  {
    goto LABEL_45;
  }

  do
  {
    sub_1C989D6C4();
    if (!v25)
    {
      goto LABEL_30;
    }

    v26 = 4 * v24;
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    if (HIDWORD(v26))
    {
      goto LABEL_32;
    }

    sub_1C989D6B0(v23);
    --v15;
  }

  while (v15);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (HIDWORD(v11))
  {
    __break(1u);
    goto LABEL_42;
  }

  v27 = *v39;
  if ((*v39 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  if (HIDWORD(v27))
  {
    goto LABEL_43;
  }

  if (sub_1C9A6C71C(*v37, v14, v11, v8, v12, v27, v38, v36))
  {

    *v9 = v19;
  }

  else
  {
    sub_1C97E7A18();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();

    *v9 = v19;
    return swift_willThrow();
  }

  return result;
}

void sub_1C989CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t *a10, uint64_t a11, uint64_t a12)
{
  sub_1C97DFA9C();
  if (!v19)
  {
LABEL_45:
    __break(1u);
    return;
  }

  if (a3 < 0)
  {
    goto LABEL_34;
  }

  if (HIDWORD(a3))
  {
    goto LABEL_35;
  }

  v12 = v19;
  v39 = a7;
  *v19 = a3;
  v20 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v22 = a4[1];
    if (v22 < 0)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v22)
    {
      sub_1C97A2CEC(&qword_1EC3C7478);
      v23 = sub_1C9A92838();
      *(v23 + 16) = v22;
      v24 = a4[1];
      if (v24 < 0)
      {
        goto LABEL_38;
      }

      v25 = v23;
      if (v24)
      {
        v26 = 0;
        v27 = (v23 + 40);
        while (1)
        {
          v28 = a4[2];
          v29 = v26 * v28;
          if ((v26 * v28) >> 64 != (v26 * v28) >> 63)
          {
            goto LABEL_33;
          }

          ++v26;
          *(v27 - 1) = v20 + 32 + 4 * v29;
          *v27 = v28;
          v27 += 2;
          if (v24 == v26)
          {
            v24 = a4[1];
            if (v22 >= v24)
            {
              break;
            }

            __break(1u);
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
LABEL_14:
      v24 = 0;
      v25 = MEMORY[0x1E69E7CC0];
    }

    *(v25 + 16) = v24;
    if (!a3)
    {
      break;
    }

    if (v24 < 1)
    {
      goto LABEL_43;
    }

    if (v24 < a3)
    {
      goto LABEL_44;
    }

    v30 = (v12 + 16);
    v31 = (v25 + 40);
    v32 = (v25 + 40);
    while (1)
    {
      v33 = *v32;
      v32 += 2;
      v34 = a5 * v33;
      if ((a5 * v33) >> 64 != (a5 * v33) >> 63)
      {
        break;
      }

      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      if (HIDWORD(v34))
      {
        goto LABEL_32;
      }

      v35 = *(v31 - 1);
      *(v30 - 2) = 1;
      *(v30 - 1) = v34;
      *v30 = v35;
      v30 += 2;
      v31 = v32;
      if (!--a3)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
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
    sub_1C97E72E0();
    v20 = v38;
    *a4 = v38;
  }

LABEL_23:
  if ((a8 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (HIDWORD(a8))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v36 = *a10;
  if ((*a10 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (HIDWORD(v36))
  {
    goto LABEL_42;
  }

  if (!sub_1C9A6C71C(a6, v39, a8, a9, v12, v36, a11, a12))
  {
    sub_1C97E7A18();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
  }

  *a4 = v20;
}