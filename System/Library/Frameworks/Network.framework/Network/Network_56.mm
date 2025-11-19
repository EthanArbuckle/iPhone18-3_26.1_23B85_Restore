__n128 sub_181DDF8B4(uint64_t a1, void (*a2)(__n128 *__return_ptr, uint64_t), void (*a3)(void))
{

  swift_beginAccess();

  a2(&v10, v6);
  v9 = v10;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];

  a3(0);
  v7 = swift_allocObject();
  result = v9;
  *(v7 + 16) = v9;
  return result;
}

uint64_t sub_181DDFAC4@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, _OWORD *a3@<X8>)
{
  v39 = a2;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  result = sub_181C9FCB4();
  v38 = result;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (a1 + 40);
    while (v7 < *(a1 + 16))
    {
      v9 = v8[4];
      v10 = v8[5];
      v11 = *(v8 + 24);
      v12 = v8[1];
      v13 = v8[2];
      v14 = *v8;
      *&v17 = *(v8 - 1);
      *(&v17 + 1) = v14;
      *&v18 = v12;
      *(&v18 + 1) = v13;
      LOBYTE(v19) = v11;
      *(&v19 + 1) = v9;
      *&v20 = v10;

      sub_181DDFD08(&v17);
      if (v3)
      {
        v29 = v36;
        v30 = v37;
        v31 = v38;
        v25 = v32;
        v26 = v33;
        v27 = v34;
        v28 = v35;
        sub_181DE132C(&v25);
      }

      ++v7;
      v8 += 7;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v29 = v36;
    v30 = v37;
    v31 = v38;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v15 = sub_181DE00E0(&v25, &v17);
    v39(&v24, v15);
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v20 = v35;
    sub_181DE132C(&v17);
    result = sub_181DE132C(&v25);
    if (!v3)
    {
      *a3 = v24;
    }
  }

  return result;
}

uint64_t sub_181DDFD08(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = sub_181CBD984(*a1, v4);
  v11 = v2[12];
  if ((v10 & 0x1FF) != 0x3A)
  {
    swift_beginAccess();
    v13 = *(*(v11 + 16) + 16);
    v23[0] = v3;
    v23[1] = v4;
    v23[2] = v6;
    v23[3] = v5;
    v24 = v7;
    v25 = v8;
    v26 = v9;
    return sub_181DAE9E4(v13, v13, v23);
  }

  swift_beginAccess();
  if (*(*(v11 + 16) + 16))
  {
    v12 = 4;
LABEL_16:
    sub_1820EBA0C();
    swift_allocError();
    *v17 = v12;
    return swift_willThrow();
  }

  if (v6 == 0x646F6874656D3ALL && v5 == 0xE700000000000000)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v16 = sub_182AD4268();
    swift_bridgeObjectRelease_n();
    if ((v16 & 1) == 0)
    {
      if (v6 == 0x656D656863733ALL && v5 == 0xE700000000000000)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v18 = sub_182AD4268();
        swift_bridgeObjectRelease_n();
        if ((v18 & 1) == 0)
        {
          if (v6 == 0x69726F687475613ALL && v5 == 0xEA00000000007974)
          {
            swift_bridgeObjectRelease_n();
          }

          else
          {
            v19 = sub_182AD4268();
            swift_bridgeObjectRelease_n();
            if ((v19 & 1) == 0)
            {
              if (v6 == 0x687461703ALL && v5 == 0xE500000000000000)
              {
                swift_bridgeObjectRelease_n();
              }

              else
              {
                v20 = sub_182AD4268();
                swift_bridgeObjectRelease_n();
                if ((v20 & 1) == 0)
                {
                  if (v6 == 0x6F636F746F72703ALL && v5 == 0xE90000000000006CLL)
                  {
                    swift_bridgeObjectRelease_n();
                  }

                  else
                  {
                    v21 = sub_182AD4268();
                    swift_bridgeObjectRelease_n();
                    if ((v21 & 1) == 0)
                    {
                      if (v6 == 0x7375746174733ALL && v5 == 0xE700000000000000)
                      {
                        swift_bridgeObjectRelease_n();
                      }

                      else
                      {
                        v22 = sub_182AD4268();
                        swift_bridgeObjectRelease_n();
                        if ((v22 & 1) == 0)
                        {
                          v12 = 1;
                          goto LABEL_16;
                        }
                      }

                      if (!v2[11])
                      {
                        v2[10] = v8;
                        v2[11] = v9;
                      }

                      goto LABEL_15;
                    }
                  }

                  if (!v2[9])
                  {
                    v2[8] = v8;
                    v2[9] = v9;
                  }

LABEL_15:
                  v12 = 3;
                  goto LABEL_16;
                }
              }

              if (!v2[7])
              {
                v2[6] = v8;
                v2[7] = v9;
              }

              goto LABEL_15;
            }
          }

          if (!v2[5])
          {
            v2[4] = v8;
            v2[5] = v9;
          }

          goto LABEL_15;
        }
      }

      if (!v2[3])
      {
        v2[2] = v8;
        v2[3] = v9;
      }

      goto LABEL_15;
    }
  }

  if (v2[1])
  {
    goto LABEL_15;
  }

  *v2 = v8;
  v2[1] = v9;
}

unsigned __int8 *sub_181DE0118@<X0>(void *a1@<X8>)
{
  v3 = v1[11];
  if (!v3)
  {
    sub_1820EBA0C();
    swift_allocError();
    v21 = 8;
LABEL_32:
    *v20 = v21;
    return swift_willThrow();
  }

  if (v1[1] || v1[3] || v1[5] || v1[7] || v1[9])
  {
    sub_1820EBA0C();
    swift_allocError();
    v21 = 10;
    goto LABEL_32;
  }

  v56 = a1;
  v4 = *v1;
  v5 = v1[2];
  v6 = v1[4];
  v7 = v1[6];
  v8 = v1[8];
  v9 = v1[10];
  v10 = v1[12];
  if (sub_182AD30F8() != 3 || (sub_181DE0684(v9, v3) & 1) == 0)
  {
    sub_1820EBA0C();
    swift_allocError();
    v21 = 9;
    goto LABEL_32;
  }

  v43 = v4;
  v44 = 0;
  v45 = v5;
  v46 = 0;
  v47 = v6;
  v48 = 0;
  v49 = v7;
  v50 = 0;
  v51 = v8;
  v52 = 0;
  v53 = v9;
  v54 = v3;
  v55 = v10;
  result = sub_181DE0824();
  if (v2)
  {
    return result;
  }

  v12 = HIBYTE(v3) & 0xF;
  v13 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    __break(1u);
LABEL_82:

    v16 = sub_1820F53FC(v9, v3, 10);
    v42 = v41;

    if (v42)
    {
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    goto LABEL_82;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v9 & 0x1000000000000000) == 0)
    {
      goto LABEL_85;
    }

    for (result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_182AD3CF8())
    {
      v15 = *result;
      if (v15 == 43)
      {
        if (v13 < 1)
        {
          goto LABEL_88;
        }

        v12 = v13 - 1;
        if (v13 != 1)
        {
          v16 = 0;
          if (!result)
          {
            goto LABEL_67;
          }

          v25 = result + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v12)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else if (v15 == 45)
      {
        if (v13 < 1)
        {
          __break(1u);
          goto LABEL_87;
        }

        v12 = v13 - 1;
        if (v13 != 1)
        {
          v16 = 0;
          if (!result)
          {
            goto LABEL_67;
          }

          v17 = result + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else if (v13)
      {
        v16 = 0;
        if (!result)
        {
LABEL_67:
          LOBYTE(v12) = 0;
          goto LABEL_76;
        }

        while (1)
        {
          v31 = *result - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          ++result;
          if (!--v13)
          {
            goto LABEL_67;
          }
        }
      }

LABEL_75:
      v16 = 0;
      LOBYTE(v12) = 1;
LABEL_76:
      if (v12)
      {
LABEL_83:
        __break(1u);
      }

      else
      {
LABEL_77:
        if (v16 <= 0x3E7)
        {
          v36 = sub_181DE107C(0, 0xE000000000000000);
          if ((v36 & 1) == 0)
          {
            v43 = 0;
            v44 = 0xE000000000000000;
            v45 = sub_1822261F0;
            v46 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A420);
            sub_1820EBCE4();
            v36 = sub_182AD30A8();
          }

          MEMORY[0x1EEE9AC00](v36);

          v37 = sub_182AD30D8();
          v39 = v38;
          type metadata accessor for HTTPResponse.PseudoHeaderFields._Storage();
          result = swift_allocObject();
          *(result + 2) = 0x7375746174733ALL;
          *(result + 3) = 0xE700000000000000;
          *(result + 4) = 0x7375746174733ALL;
          *(result + 5) = 0xE700000000000000;
          result[48] = 0;
          *(result + 7) = v37;
          *(result + 8) = v39;
          *(result + 9) = 0;
          *(result + 10) = 0xE000000000000000;
          v40 = v56;
          *v56 = result;
          v40[1] = v10;
          return result;
        }
      }

      __break(1u);
LABEL_85:
      ;
    }
  }

  v43 = v9;
  v44 = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v9 == 43)
  {
    if (v12)
    {
      if (--v12)
      {
        v16 = 0;
        v28 = &v43 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v12)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }
  }

  else
  {
    if (v9 != 45)
    {
      if (v12)
      {
        v16 = 0;
        v33 = &v43;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          v33 = (v33 + 1);
          if (!--v12)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    if (v12)
    {
      if (--v12)
      {
        v16 = 0;
        v22 = &v43 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v12)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_181DE0684(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result >> 14;
    if (result >> 14 == v5)
    {
      return v10 == v5;
    }

    v11 = result & 0xC;
    v12 = result;
    if (v11 == v7)
    {
      v16 = result;
      v12 = sub_18208A330(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = sub_182AD31C8();
      result = v18;
      if (v11 != v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v20;
        v14 = v19;
      }

      else
      {
        v14 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = sub_182AD3CF8();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 != v7)
      {
LABEL_19:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    result = sub_18208A330(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_7:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_8;
    }

LABEL_20:
    if (v4 <= result >> 16)
    {
      goto LABEL_27;
    }

    result = sub_182AD3178();
LABEL_8:
    if ((v15 - 58) < 0xF6u)
    {
      return v10 == v5;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_181DE0824()
{
  v1 = *(v0 + 96);
  strcpy(&v11, "Content-Length");
  HIBYTE(v11) = -18;
  strcpy(v12, "content-length");
  HIBYTE(v12[1]) = -18;
  v13 = v1;
  v2 = HTTPFields.subscript.getter(&v11);

  v3 = sub_181DE0EDC(v2);

  if (v3)
  {
    *&v11 = 0xD000000000000013;
    *(&v11 + 1) = 0x8000000182BDD680;
    v12[0] = 0xD000000000000013;
    v12[1] = 0x8000000182BDD6A0;
    v13 = v1;
    v4 = HTTPFields.subscript.getter(&v11);

    v5 = sub_181DE0EDC(v4);

    if (v5)
    {
      strcpy(&v11, "Location");
      BYTE9(v11) = 0;
      WORD5(v11) = 0;
      HIDWORD(v11) = -402653184;
      strcpy(v12, "location");
      BYTE1(v12[1]) = 0;
      WORD1(v12[1]) = 0;
      HIDWORD(v12[1]) = -402653184;
      v13 = v1;
      v6 = HTTPFields.subscript.getter(&v11);

      v7 = sub_181DE0EDC(v6);

      if (v7)
      {
        return result;
      }

      v9 = 14;
    }

    else
    {
      v9 = 13;
    }
  }

  else
  {
    v9 = 12;
  }

  sub_1820EBA0C();
  swift_allocError();
  *v10 = v9;
  return swift_willThrow();
}

unint64_t HTTPFields.subscript.getter(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v37 = *v1;
  v34 = v2;
  v35 = v3;
  v36 = v4;
  v5 = sub_181DE0CB8(&v34);
  v7 = v6;
  v8 = ~v6;
  v37 = MEMORY[0x1E69E7CC0];

  result = sub_181DE0DB0(0, 0, 0);
  v10 = v37;
  if (!v8)
  {
    goto LABEL_33;
  }

  v30 = v5;
  v31 = v5 + 32;
  while (*(v5 + 16) > v7)
  {
    v11 = v31 + (v7 << 6);
    v32 = v10;
    v12 = *(v11 + 40);
    v13 = *(v11 + 48);
    v33 = *(v11 + 56);
    if ((v13 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    v15 = (v12 >> 59) & 1;
    if ((v13 & 0x1000000000000000) == 0)
    {
      LOBYTE(v15) = 1;
    }

    v16 = 4 << v15;
    result = 15;
    do
    {
      while (1)
      {
        if (4 * v14 == result >> 14)
        {

          goto LABEL_30;
        }

        v17 = result & 0xC;
        v18 = result;
        if (v17 == v16)
        {
          v22 = result;
          v18 = sub_18208A330(result, v12, v13);
          result = v22;
        }

        v19 = v18 >> 16;
        if (v18 >> 16 >= v14)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if ((v13 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v13 & 0x2000000000000000) != 0)
        {
          *&v34 = v12;
          *(&v34 + 1) = v13 & 0xFFFFFFFFFFFFFFLL;
          v20 = &v34;
        }

        else
        {
          v20 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v12 & 0x1000000000000000) == 0)
          {
            v28 = result;
            v20 = sub_182AD3CF8();
            result = v28;
          }
        }

        v21 = *(v20 + v19);
        if (v17 == v16)
        {
          goto LABEL_26;
        }

LABEL_21:
        if ((v13 & 0x1000000000000000) != 0)
        {
          goto LABEL_22;
        }

LABEL_10:
        result = (result & 0xFFFFFFFFFFFF0000) + 65540;
        if (v21 < 0)
        {
          goto LABEL_29;
        }
      }

      v29 = result;
      v21 = sub_182AD31C8();
      result = v29;
      if (v17 != v16)
      {
        goto LABEL_21;
      }

LABEL_26:
      result = sub_18208A330(result, v12, v13);
      if ((v13 & 0x1000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_22:
      if (v14 <= result >> 16)
      {
        goto LABEL_35;
      }

      result = sub_182AD3178();
    }

    while ((v21 & 0x80) == 0);
LABEL_29:

    v12 = sub_182287700(v12, v13);
    v24 = v23;

    v13 = v24;
LABEL_30:
    v10 = v32;
    v37 = v32;
    v26 = *(v32 + 16);
    v25 = *(v32 + 24);
    v5 = v30;
    if (v26 >= v25 >> 1)
    {
      result = sub_181DE0DB0((v25 > 1), v26 + 1, 1);
      v10 = v37;
    }

    *(v10 + 16) = v26 + 1;
    v27 = v10 + 16 * v26;
    *(v27 + 32) = v12;
    *(v27 + 40) = v13;
    v7 = v33;
    if (v33 == 0xFFFF)
    {
LABEL_33:

      return v10;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_181DE0CB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *v1;
  v5 = *(**v1 + 152);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
  v5(v8, sub_181D0482C, v4, v6);
  if (*(v8[0] + 16))
  {
    sub_181CA266C(v2, v3);
  }

  swift_beginAccess();
  return *(v4 + 16);
}

char *sub_181DE0DB0(char *a1, int64_t a2, char a3)
{
  result = sub_181DE0DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181DE0DD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_181DE0EDC(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1[5];
    v9[0] = a1[4];
    v9[1] = v2;
    v3 = (2 * v1) | 1;
    MEMORY[0x1EEE9AC00](a1 + 4);
    v8[2] = v9;
    v5 = v4;

    v6 = sub_181DE0FA8(sub_181E591D8, v8, v5, 1, v3);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_181DE0FA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  else
  {
    v8 = result;
    if (a4 <= v6)
    {
      v9 = a5 >> 1;
    }

    else
    {
      v9 = a4;
    }

    v10 = v9 - a4;
    v11 = (a3 + 16 * a4 + 8);
    v12 = ~a4 + v6;
    while (v10)
    {
      v13 = *v11;
      v16[0] = *(v11 - 1);
      v16[1] = v13;

      v7 = v8(v16);

      if (v5)
      {
        LOBYTE(v7) = 0;
        return v7 & 1;
      }

      v15 = v12-- != 0;
      --v10;
      v11 += 2;
      if ((v15 & v7 & 1) == 0)
      {
        return v7 & 1;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_181DE107C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result & 0xC;
    v11 = result;
    if (v10 == v6)
    {
      v15 = result;
      v11 = sub_18208A330(result, a1, a2);
      result = v15;
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v17 = result;
      v14 = sub_182AD31C8();
      result = v17;
      if (v10 != v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v18[0] = a1;
        v18[1] = v7;
        v13 = v18;
      }

      else
      {
        v13 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v16 = result;
          v13 = sub_182AD3CF8();
          result = v16;
        }
      }

      v14 = *(v13 + v12);
      if (v10 != v6)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_18208A330(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v2 <= result >> 16)
    {
      goto LABEL_32;
    }

    result = sub_182AD3178();
LABEL_24:
    if (v14 != 32 && v14 != 9 && (v14 & 0x80) == 0 && (v14 - 127) < 0xA2u)
    {
      return 0;
    }

    if (4 * v2 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_181DE1258(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < -99)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a3 > 25599)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = (a3 / 100) + 48;
  if ((v3 >> 8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *result = v3;
  if (((a3 / 10 % 10) & 0x8000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = ((26215 * a3) >> 18) + ((26215 * a3) >> 31);
  *(result + 1) = v4 - 10 * (((26215 * v4) >> 18) + (((26215 * v4) & 0x80000000) != 0)) + 48;
  if (((a3 % 10) & 0x8000) == 0)
  {
    *(result + 2) = a3 % 10 + 48;
    return 3;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *nw_http_create_metadata_for_response(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  singleton = _nw_protocol_metadata_create_singleton();
  if (singleton)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __nw_http_create_metadata_for_response_block_invoke;
    v15 = &unk_1E6A3A950;
    v16 = v1;
    handle = _nw_protocol_metadata_get_handle(singleton);
    if (handle)
    {
      v14(v13, handle);
    }

    v4 = singleton;

    goto LABEL_7;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_create_metadata_for_response";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_http_create_metadata_for_response";
        v10 = "%{public}s called with null metadata";
LABEL_21:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v20 = "nw_http_create_metadata_for_response";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v12)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v20 = "nw_http_create_metadata_for_response";
        v10 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_21;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_http_create_metadata_for_response";
        v10 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }

LABEL_7:

  return singleton;
}

void nw_http_metadata_set_version(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_metadata_set_version";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_metadata_set_version";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_http_metadata_set_version";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_metadata_set_version";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_metadata_set_version";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_definition_http_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_metadata_set_version_block_invoke;
    v17 = &__block_descriptor_36_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle(v3);
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_metadata_set_version";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_metadata_set_version";
      v9 = "%{public}s metadata must be http";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_metadata_set_version";
      v9 = "%{public}s metadata must be http, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v22 = "nw_http_metadata_set_version";
      v9 = "%{public}s metadata must be http, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_metadata_set_version";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

uint64_t nw_http_response_get_status_code(void *a1)
{
  v1 = a1;
  if (v1)
  {
    goto LABEL_2;
  }

  v4 = __nwlog_obj();
  os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  v5 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
LABEL_2:
    status_code = _nw_http_response_get_status_code(v1);

    return status_code;
  }

  __break(1u);
  return result;
}

void nw_http_connection_metadata_increment_inbound_message_count(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http_connection_metadata_increment_inbound_message_count";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_connection_metadata_increment_inbound_message_count";
        v7 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v16 = "nw_http_connection_metadata_increment_inbound_message_count";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v4)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v4);
        goto LABEL_7;
      }

      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_http_connection_metadata_increment_inbound_message_count";
        v7 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_connection_metadata_increment_inbound_message_count";
        v7 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_connection_definition_definition))
  {
    handle = _nw_protocol_metadata_get_handle(v1);
    if (handle)
    {
      __nw_http_connection_metadata_increment_inbound_message_count_block_invoke(&__block_literal_global_115, handle);
    }

    goto LABEL_7;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http_connection_metadata_increment_inbound_message_count";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v16 = "nw_http_connection_metadata_increment_inbound_message_count";
      v7 = "%{public}s metadata must be http_connection";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v13 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v16 = "nw_http_connection_metadata_increment_inbound_message_count";
      v7 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_http_connection_metadata_increment_inbound_message_count";
      v7 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_http_connection_metadata_increment_inbound_message_count";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_http_transaction_metadata_set_inbound_message(void *a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_set_inbound_message";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &type, &v27))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_set_inbound_message";
        v13 = "%{public}s called with null metadata";
LABEL_36:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v16 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_transaction_metadata_set_inbound_message";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v10)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v10);
        goto LABEL_8;
      }

      if (v16)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_set_inbound_message";
        v13 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_set_inbound_message";
        v13 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v5, nw_protocol_copy_http_transaction_definition_definition))
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v23 = __nw_http_transaction_metadata_set_inbound_message_block_invoke;
    v24 = &unk_1E6A3ACA8;
    v7 = v6;
    v25 = v7;
    v26 = v5;
    handle = _nw_protocol_metadata_get_handle(v26);
    if (handle)
    {
      v23(v22, handle);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __nw_http_transaction_metadata_set_inbound_message_block_invoke_2;
    v19[3] = &unk_1E6A3ACD0;
    v21 = a3;
    v20 = v7;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
    v30 = &unk_1E6A303F0;
    v32 = 1;
    v33 = 0;
    v31 = v19;
    os_unfair_lock_lock(&lock);
    (*&buf[16])(buf);
    os_unfair_lock_unlock(&lock);

    goto LABEL_8;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_transaction_metadata_set_inbound_message";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v10, &type, &v27))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_set_inbound_message";
      v13 = "%{public}s metadata must be http_transaction";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v27 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_set_inbound_message";
      v13 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v17 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v18 = os_log_type_enabled(v11, type);
  if (!v17)
  {
    if (v18)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_set_inbound_message";
      v13 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v18)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_transaction_metadata_set_inbound_message";
    *&buf[12] = 2082;
    *&buf[14] = v17;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v10)
  {
    goto LABEL_39;
  }

LABEL_8:
}

uint64_t __nw_http_connection_metadata_increment_inbound_message_count_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 156) + 1;
  *(a2 + 156) = v2;
  if (v2 != v2 << 31 >> 31)
  {
    if (gLogDatapath == 1)
    {
      v4 = a2;
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(v4 + 156);
        v7 = 136446978;
        v8 = "nw_http_connection_metadata_increment_inbound_message_count_block_invoke";
        v9 = 2082;
        v10 = "http_metadata->inbound_message_count";
        v11 = 2048;
        v12 = 1;
        v13 = 2048;
        v14 = v6;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", &v7, 0x2Au);
      }

      a2 = v4;
    }

    *(a2 + 156) = -1;
  }

  return 1;
}

uint64_t __nw_http_transaction_metadata_set_inbound_message_block_invoke(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a2 + 128), *(a1 + 32));
  v4 = mach_continuous_time();
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  *(a2 + 80) = v5;
  v6 = *(a2 + 136);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 40), 2);
  }

  return 1;
}

id nw_http_transaction_metadata_get_inbound_message(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v28 = __Block_byref_object_copy__75915;
      v29 = __Block_byref_object_dispose__75916;
      v30 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_inbound_message_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v4))
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_inbound_message";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_inbound_message";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_inbound_message";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_inbound_message";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DE2E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

void ___ZN2nw4http22content_length_manager19set_inbound_messageEP20nw_protocol_metadata_block_invoke_2(uint64_t a1, char *__s)
{
  if (__s)
  {
    v3 = *(a1 + 32);
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memcpy(&__dst, __s, v4);
    }

    __dst.__r_.__value_.__s.__data_[v5] = 0;
    *(v3 + 24) = std::stoull(&__dst, 0, 10);
    *(v3 + 32) = 1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void nw_http_transaction_metadata_increment_inbound_header_size(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_transaction_metadata_increment_inbound_header_size";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_transaction_metadata_increment_inbound_header_size";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_http_transaction_metadata_increment_inbound_header_size";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_transaction_metadata_increment_inbound_header_size";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_transaction_metadata_increment_inbound_header_size";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_transaction_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_transaction_metadata_increment_inbound_header_size_block_invoke;
    v17 = &__block_descriptor_40_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle(v3);
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_transaction_metadata_increment_inbound_header_size";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_transaction_metadata_increment_inbound_header_size";
      v9 = "%{public}s metadata must be http_transaction";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_transaction_metadata_increment_inbound_header_size";
      v9 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v22 = "nw_http_transaction_metadata_increment_inbound_header_size";
      v9 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_transaction_metadata_increment_inbound_header_size";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

uint64_t nw_http3_encoder_stream_get_and_reset_received_size(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = *(a1 + 1048);
    *(a1 + 1048) = 0;
    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http3_encoder_stream_get_and_reset_received_size";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http3_encoder_stream_get_and_reset_received_size";
        v6 = "%{public}s called with null http3";
LABEL_17:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else if (v9 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v8 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          v12 = "nw_http3_encoder_stream_get_and_reset_received_size";
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v8)
      {
        *buf = 136446210;
        v12 = "nw_http3_encoder_stream_get_and_reset_received_size";
        v6 = "%{public}s called with null http3, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http3_encoder_stream_get_and_reset_received_size";
        v6 = "%{public}s called with null http3, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void __nw_frame_empty_finalizer(nw_frame *a1, BOOL a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "__nw_frame_empty_finalizer";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v3, &type, &v21))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v24 = "__nw_frame_empty_finalizer";
      v6 = "%{public}s called with null frame";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v15 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v24 = "__nw_frame_empty_finalizer";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (!v15)
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v24 = "__nw_frame_empty_finalizer";
      v6 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v24 = "__nw_frame_empty_finalizer";
      v6 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_18:
    v12 = v4;
    v13 = v5;
LABEL_19:
    _os_log_impl(&dword_181A37000, v12, v13, v6, buf, 0xCu);
    goto LABEL_20;
  }

  if (a3 == 16435934)
  {
    if (gLogDatapath == 1)
    {
      v18 = a1;
      v19 = __nwlog_obj();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      a1 = v18;
      if (v20)
      {
        *buf = 136446466;
        v24 = "__nw_frame_empty_finalizer";
        v25 = 2048;
        v26 = v18;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s finalizing empty frame %p", buf, 0x16u);
        a1 = v18;
      }
    }

    v7 = a1;
    nw_frame_reset(a1, 0, 0, 0, 0);
    os_release(v7);
    return;
  }

  if (a3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v24 = "__nw_frame_empty_finalizer";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v3, &type, &v21))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v24 = "__nw_frame_empty_finalizer";
      v6 = "%{public}s trying to finalize non-split frame";
      goto LABEL_18;
    }

    if (v21 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v24 = "__nw_frame_empty_finalizer";
      v6 = "%{public}s trying to finalize non-split frame, backtrace limit exceeded";
      goto LABEL_18;
    }

    v8 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v11 = os_log_type_enabled(gLogObj, type);
    if (v8)
    {
      if (v11)
      {
        *buf = 136446466;
        v24 = "__nw_frame_empty_finalizer";
        v25 = 2082;
        v26 = v8;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s trying to finalize non-split frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v8);
      if (!v3)
      {
        return;
      }

LABEL_21:
      free(v3);
      return;
    }

    if (v11)
    {
      *buf = 136446210;
      v24 = "__nw_frame_empty_finalizer";
      v6 = "%{public}s trying to finalize non-split frame, no backtrace";
      v12 = v9;
      v13 = v10;
      goto LABEL_19;
    }

LABEL_20:
    if (!v3)
    {
      return;
    }

    goto LABEL_21;
  }

  __nwlog_obj();
  *buf = 136446210;
  v24 = "__nw_frame_empty_finalizer";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v3, &type, &v21))
  {
    goto LABEL_20;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_20;
    }

    *buf = 136446210;
    v24 = "__nw_frame_empty_finalizer";
    v6 = "%{public}s called with null context";
    goto LABEL_18;
  }

  if (v21 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_20;
    }

    *buf = 136446210;
    v24 = "__nw_frame_empty_finalizer";
    v6 = "%{public}s called with null context, backtrace limit exceeded";
    goto LABEL_18;
  }

  v16 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v17 = os_log_type_enabled(v4, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    *buf = 136446210;
    v24 = "__nw_frame_empty_finalizer";
    v6 = "%{public}s called with null context, no backtrace";
    goto LABEL_18;
  }

  if (v17)
  {
    *buf = 136446466;
    v24 = "__nw_frame_empty_finalizer";
    v25 = 2082;
    v26 = v16;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v3)
  {
    goto LABEL_21;
  }
}

uint64_t ___ZL35nw_protocol_masque_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_copy_metadata_for_protocol(a2, *(a1 + 40));
  if (v4)
  {
    v5 = v4;
    is_capsule = nw_http_metadata_is_capsule(v4);
    v7 = *(a1 + 48);
    if (is_capsule)
    {
      nw_masque_handle_capsule(*(a1 + 48), v5);
      v8 = (*(a1 + 56) + 8);
      v9 = *(a2 + 32);
      v10 = *(a2 + 40);
      if (v9)
      {
        v8 = (v9 + 40);
      }

      *v8 = v10;
      *v10 = v9;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 24);
      *(v11 + 24) = v12 - 1;
      if (v12)
      {
        goto LABEL_67;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446978;
      v57 = "nw_protocol_masque_get_input_frames_block_invoke";
      v58 = 2082;
      v59 = "count";
      v60 = 2048;
      v61 = 1;
      v62 = 2048;
      v63 = v13;
      v14 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (__nwlog_fault(v14, &type, &v54))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v17 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v57 = "nw_protocol_masque_get_input_frames_block_invoke";
            v58 = 2082;
            v59 = "count";
            v60 = 2048;
            v61 = 1;
            v62 = 2048;
            v63 = v17;
            v18 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_63:
            _os_log_impl(&dword_181A37000, v15, v16, v18, buf, 0x2Au);
          }
        }

        else if (v54 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          v39 = os_log_type_enabled(gLogObj, type);
          if (backtrace_string)
          {
            if (v39)
            {
              v40 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136447234;
              v57 = "nw_protocol_masque_get_input_frames_block_invoke";
              v58 = 2082;
              v59 = "count";
              v60 = 2048;
              v61 = 1;
              v62 = 2048;
              v63 = v40;
              v64 = 2082;
              v65 = backtrace_string;
              _os_log_impl(&dword_181A37000, v15, v16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(backtrace_string);
            goto LABEL_64;
          }

          if (v39)
          {
            v43 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v57 = "nw_protocol_masque_get_input_frames_block_invoke";
            v58 = 2082;
            v59 = "count";
            v60 = 2048;
            v61 = 1;
            v62 = 2048;
            v63 = v43;
            v18 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_63;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v41 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v57 = "nw_protocol_masque_get_input_frames_block_invoke";
            v58 = 2082;
            v59 = "count";
            v60 = 2048;
            v61 = 1;
            v62 = 2048;
            v63 = v41;
            v18 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_63;
          }
        }
      }

LABEL_64:
      if (v14)
      {
        free(v14);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_67:
      nw_frame_finalize(a2);
      goto LABEL_68;
    }

    v19 = (v7 + 503);
    if ((*(v7 + 503) & 0x9000) != 0x1000)
    {
LABEL_68:
      os_release(v5);
      return 1;
    }

    v20 = v5;
    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v21 = nw_protocol_metadata_matches_definition(v20, nw_protocol_copy_http_definition_http_definition);

    if (v21)
    {
      v22 = nw_http_metadata_copy_response(v20);
      if (v22)
      {
        v23 = v22;
        status_code = _nw_http_response_get_status_code(v23);

        if ((status_code - 200) > 0x63)
        {
          v36 = *v19;
          if (status_code)
          {
            if ((v36 & 0x10000) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v37 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v57 = (v7 + 507);
                v58 = 2080;
                v59 = " ";
                v60 = 1024;
                LODWORD(v61) = status_code;
                _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s%sReceived response code %u for proxied message", buf, 0x1Cu);
              }
            }

            if (status_code == 401)
            {
              if (!uuid_is_null((v7 + 256)))
              {
                v45 = *(v7 + 440);
                if (v45)
                {
                  nw_http_connection_metadata_mark_cached_token_failed(v45);
                }

                nw_path_report_error_to_agent(*(v7 + 320), (v7 + 256), 80);
                nw_masque_mark_failed_with_error(v7, 80);
                goto LABEL_54;
              }
            }

            else
            {
              if ((status_code - 400) > 0x63)
              {
                if ((status_code - 500) > 0x63)
                {
                  nw_masque_report_error_to_proxy_agent(v7, 1101);
                }

                else
                {
                  nw_masque_report_error_to_proxy_agent(v7, 1105);
                }

                goto LABEL_53;
              }

              if (status_code == 422 && (*v19 & 0x2000) != 0)
              {
                nw_masque_report_error_to_proxy_agent(v7, 1304);
                goto LABEL_53;
              }
            }

            nw_masque_report_error_to_proxy_agent(v7, 1104);
LABEL_53:
            *v19 |= 0x8000u;
LABEL_54:
            os_release(v23);
            goto LABEL_68;
          }

          if ((v36 & 0x10000) != 0)
          {
            goto LABEL_53;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v42 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_53;
          }

          *buf = 136446722;
          v57 = "nw_masque_handle_message_response";
          v58 = 2082;
          v59 = (v7 + 507);
          v60 = 2080;
          v61 = " ";
          v32 = "%{public}s %{public}s%sReceived no response code, ignoring";
          v33 = v42;
          v34 = OS_LOG_TYPE_DEBUG;
          v35 = 32;
        }

        else
        {
          if ((*v19 & 2) != 0 && !uuid_is_null((v7 + 256)))
          {
            v25 = *(v7 + 440);
            if (v25)
            {
              nw_http_connection_metadata_set_cached_token(v25, 0, 0);
            }

            nw_path_report_error_to_agent(*(v7 + 320), (v7 + 256), 0);
          }

          v26 = *(v7 + 272);
          v27 = mach_continuous_time();
          if (v27 <= 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = v27;
          }

          v29 = nw_delta_nanos(v26, v28);
          v30 = (v29 / 0xF4240);
          if (v29 > 0xF423FFFFFFFFFLL)
          {
            v30 = 0xFFFFFFFFLL;
          }

          *(v7 + 280) = v30;
          if (*(v7 + 505))
          {
            goto LABEL_53;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v31 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
          {
            goto LABEL_53;
          }

          *buf = 136446466;
          v57 = (v7 + 507);
          v58 = 2080;
          v59 = " ";
          v32 = "%{public}s%sReceived 200 OK for proxied message";
          v33 = v31;
          v34 = OS_LOG_TYPE_INFO;
          v35 = 22;
        }

        _os_log_impl(&dword_181A37000, v33, v34, v32, buf, v35);
        goto LABEL_53;
      }

      __nwlog_obj();
      *buf = 136446210;
      v57 = "nw_masque_handle_message_response";
      v46 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (!__nwlog_fault(v46, &type, &v54))
      {
        goto LABEL_102;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v47 = __nwlog_obj();
        v48 = type;
        if (!os_log_type_enabled(v47, type))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        v57 = "nw_masque_handle_message_response";
        v49 = "%{public}s called with null response";
        goto LABEL_101;
      }

      if (v54 != 1)
      {
        v47 = __nwlog_obj();
        v48 = type;
        if (!os_log_type_enabled(v47, type))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        v57 = "nw_masque_handle_message_response";
        v49 = "%{public}s called with null response, backtrace limit exceeded";
        goto LABEL_101;
      }

      v52 = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v48 = type;
      v53 = os_log_type_enabled(v47, type);
      if (v52)
      {
        if (v53)
        {
          *buf = 136446466;
          v57 = "nw_masque_handle_message_response";
          v58 = 2082;
          v59 = v52;
          _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null response, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v52);
        if (!v46)
        {
          goto LABEL_68;
        }

        goto LABEL_103;
      }

      if (v53)
      {
        *buf = 136446210;
        v57 = "nw_masque_handle_message_response";
        v49 = "%{public}s called with null response, no backtrace";
LABEL_101:
        _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v57 = "nw_masque_handle_message_response";
      v46 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (!__nwlog_fault(v46, &type, &v54))
      {
        goto LABEL_102;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v47 = __nwlog_obj();
        v48 = type;
        if (!os_log_type_enabled(v47, type))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        v57 = "nw_masque_handle_message_response";
        v49 = "%{public}s called with null nw_protocol_metadata_is_http(metadata)";
        goto LABEL_101;
      }

      if (v54 != 1)
      {
        v47 = __nwlog_obj();
        v48 = type;
        if (!os_log_type_enabled(v47, type))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        v57 = "nw_masque_handle_message_response";
        v49 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), backtrace limit exceeded";
        goto LABEL_101;
      }

      v50 = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v48 = type;
      v51 = os_log_type_enabled(v47, type);
      if (!v50)
      {
        if (!v51)
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        v57 = "nw_masque_handle_message_response";
        v49 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), no backtrace";
        goto LABEL_101;
      }

      if (v51)
      {
        *buf = 136446466;
        v57 = "nw_masque_handle_message_response";
        v58 = 2082;
        v59 = v50;
        _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null nw_protocol_metadata_is_http(metadata), dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v50);
    }

LABEL_102:
    if (!v46)
    {
      goto LABEL_68;
    }

LABEL_103:
    free(v46);
    goto LABEL_68;
  }

  return 1;
}

BOOL nw_http_metadata_is_capsule(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http_metadata_is_capsule";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v5, &type, &v15))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v18 = "nw_http_metadata_is_capsule";
        v8 = "%{public}s called with null metadata";
LABEL_33:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }

LABEL_34:

LABEL_35:
      if (v5)
      {
        free(v5);
      }

      goto LABEL_37;
    }

    if (v15 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v18 = "nw_http_metadata_is_capsule";
        v8 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v11 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v18 = "nw_http_metadata_is_capsule";
        v8 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v11)
    {
      *buf = 136446466;
      v18 = "nw_http_metadata_is_capsule";
      v19 = 2082;
      v20 = backtrace_string;
      v12 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v6, v7, v12, buf, 0x16u);
    }

LABEL_24:

    free(backtrace_string);
    goto LABEL_35;
  }

  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  if ((nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_definition_http_definition) & 1) == 0)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http_metadata_is_capsule";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v5, &type, &v15))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v18 = "nw_http_metadata_is_capsule";
        v8 = "%{public}s metadata must be http";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v15 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v18 = "nw_http_metadata_is_capsule";
        v8 = "%{public}s metadata must be http, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_http_metadata_is_capsule";
        v8 = "%{public}s metadata must be http, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v13)
    {
      *buf = 136446466;
      v18 = "nw_http_metadata_is_capsule";
      v19 = 2082;
      v20 = backtrace_string;
      v12 = "%{public}s metadata must be http, dumping backtrace:%{public}s";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  handle = _nw_protocol_metadata_get_handle(v1);
  if (!handle)
  {
LABEL_37:
    v3 = 0;
    goto LABEL_38;
  }

  v3 = __nw_http_metadata_is_capsule_block_invoke(&__block_literal_global_77, handle);
LABEL_38:

  return v3;
}

uint64_t nw_path_report_error_to_agent(void *a1, const unsigned __int8 *a2, int a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v49 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_path_report_error_to_agent";
    v7 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v56 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, type, &v56))
    {
      goto LABEL_79;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v50 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v58 = "nw_path_report_error_to_agent";
        _os_log_impl(&dword_181A37000, v8, v50, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v56 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v52 = type[0];
      v53 = os_log_type_enabled(v8, type[0]);
      if (backtrace_string)
      {
        if (v53)
        {
          *buf = 136446466;
          v58 = "nw_path_report_error_to_agent";
          v59 = 2082;
          *v60 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v52, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_79:
        if (!v7)
        {
LABEL_81:
          v17 = 0;
LABEL_82:

          return v17;
        }

LABEL_80:
        free(v7);
        goto LABEL_81;
      }

      if (v53)
      {
        *buf = 136446210;
        v58 = "nw_path_report_error_to_agent";
        _os_log_impl(&dword_181A37000, v8, v52, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v54 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v58 = "nw_path_report_error_to_agent";
        _os_log_impl(&dword_181A37000, v8, v54, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_107:

    goto LABEL_79;
  }

  if (uuid_is_null(a2))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v58 = "nw_path_report_error_to_agent";
    v7 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v56 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, type, &v56))
    {
      goto LABEL_79;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v58 = "nw_path_report_error_to_agent";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null agent_uuid", buf, 0xCu);
      }

      goto LABEL_107;
    }

    if (v56 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v23 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v58 = "nw_path_report_error_to_agent";
        _os_log_impl(&dword_181A37000, v8, v23, "%{public}s called with null agent_uuid, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_107;
    }

    v20 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v21 = type[0];
    v22 = os_log_type_enabled(v8, type[0]);
    if (!v20)
    {
      if (v22)
      {
        *buf = 136446210;
        v58 = "nw_path_report_error_to_agent";
        _os_log_impl(&dword_181A37000, v8, v21, "%{public}s called with null agent_uuid, no backtrace", buf, 0xCu);
      }

      goto LABEL_107;
    }

    if (v22)
    {
      *buf = 136446466;
      v58 = "nw_path_report_error_to_agent";
      v59 = 2082;
      *v60 = v20;
      _os_log_impl(&dword_181A37000, v8, v21, "%{public}s called with null agent_uuid, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:
    free(v20);
    if (!v7)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (a3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136446978;
      v58 = "nw_path_report_error_to_agent";
      v59 = 1024;
      *v60 = a3;
      *&v60[4] = 1040;
      *&v60[6] = 16;
      *&v60[10] = 2096;
      *&v60[12] = a2;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s Reporting error %d to agent %{uuid_t}.16P", buf, 0x22u);
    }
  }

  v11 = _nw_path_copy_parameters(v5);
  v12 = nw_parameters_copy_context(v11);
  v13 = nw_path_shared_necp_fd(v12);

  if (v13 < 0)
  {
    goto LABEL_81;
  }

  *type = *a2;
  v14 = malloc_type_calloc(1uLL, 0x19uLL, 0x5D407149uLL);
  v15 = v14;
  if (v14)
  {
    *v14 = -121;
    *(v14 + 1) = 20;
    *(v14 + 5) = *type;
    *(v14 + 21) = a3;
    memset(type, 0, 16);
    _nw_path_get_client_id(v5, type);
    v16 = necp_client_action();
    v17 = v16 == 0;
    if (!v16)
    {
LABEL_91:
      free(v15);
      goto LABEL_82;
    }

    v18 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v18 == 45 || v18 == 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v58 = "nw_path_report_error_to_agent";
        v59 = 1024;
        *v60 = v18;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s NECP_CLIENT_ACTION_AGENT %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_91;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    *buf = 136446466;
    v58 = "nw_path_report_error_to_agent";
    v59 = 1024;
    *v60 = v18;
    v35 = _os_log_send_and_compose_impl();

    v56 = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v35, &v56, &v55))
    {
      if (v56 == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = v56;
        if (os_log_type_enabled(v36, v56))
        {
          *buf = 136446466;
          v58 = "nw_path_report_error_to_agent";
          v59 = 1024;
          *v60 = v18;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s NECP_CLIENT_ACTION_AGENT %{darwin.errno}d", buf, 0x12u);
        }
      }

      else if (v55 == 1)
      {
        v39 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v40 = v56;
        v41 = os_log_type_enabled(v36, v56);
        if (v39)
        {
          if (v41)
          {
            *buf = 136446722;
            v58 = "nw_path_report_error_to_agent";
            v59 = 1024;
            *v60 = v18;
            *&v60[4] = 2082;
            *&v60[6] = v39;
            _os_log_impl(&dword_181A37000, v36, v40, "%{public}s NECP_CLIENT_ACTION_AGENT %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v39);
          goto LABEL_89;
        }

        if (v41)
        {
          *buf = 136446466;
          v58 = "nw_path_report_error_to_agent";
          v59 = 1024;
          *v60 = v18;
          _os_log_impl(&dword_181A37000, v36, v40, "%{public}s NECP_CLIENT_ACTION_AGENT %{darwin.errno}d, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        v36 = __nwlog_obj();
        v48 = v56;
        if (os_log_type_enabled(v36, v56))
        {
          *buf = 136446466;
          v58 = "nw_path_report_error_to_agent";
          v59 = 1024;
          *v60 = v18;
          _os_log_impl(&dword_181A37000, v36, v48, "%{public}s NECP_CLIENT_ACTION_AGENT %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

LABEL_89:
    if (v35)
    {
      free(v35);
    }

    goto LABEL_91;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v58 = "nw_path_create_necp_agent_error";
  v59 = 2048;
  *v60 = 1;
  *&v60[8] = 2048;
  *&v60[10] = 25;
  v25 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v25);
  if (!result)
  {
    free(v25);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    *buf = 136446210;
    v58 = "nw_necp_append_tlv";
    v28 = _os_log_send_and_compose_impl();

    v56 = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v28, &v56, &v55))
    {
      if (v56 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v30 = v56;
        if (os_log_type_enabled(v29, v56))
        {
          *buf = 136446210;
          v58 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null tlv_start", buf, 0xCu);
        }
      }

      else if (v55 == 1)
      {
        v31 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v32 = v56;
        v33 = os_log_type_enabled(v29, v56);
        if (v31)
        {
          if (v33)
          {
            *buf = 136446466;
            v58 = "nw_necp_append_tlv";
            v59 = 2082;
            *v60 = v31;
            _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v31);
          if (!v28)
          {
LABEL_63:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v42 = gLogObj;
            *buf = 136446210;
            v58 = "nw_path_report_error_to_agent";
            v7 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v56 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v7, type, &v56))
            {
              goto LABEL_79;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v43 = gLogObj;
              v44 = type[0];
              if (os_log_type_enabled(v43, type[0]))
              {
                *buf = 136446210;
                v58 = "nw_path_report_error_to_agent";
                _os_log_impl(&dword_181A37000, v43, v44, "%{public}s nw_path_create_necp_agent_error failed", buf, 0xCu);
              }
            }

            else if (v56 == OS_LOG_TYPE_INFO)
            {
              v20 = __nw_create_backtrace_string();
              v43 = __nwlog_obj();
              v45 = type[0];
              v46 = os_log_type_enabled(v43, type[0]);
              if (v20)
              {
                if (v46)
                {
                  *buf = 136446466;
                  v58 = "nw_path_report_error_to_agent";
                  v59 = 2082;
                  *v60 = v20;
                  _os_log_impl(&dword_181A37000, v43, v45, "%{public}s nw_path_create_necp_agent_error failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                goto LABEL_25;
              }

              if (v46)
              {
                *buf = 136446210;
                v58 = "nw_path_report_error_to_agent";
                _os_log_impl(&dword_181A37000, v43, v45, "%{public}s nw_path_create_necp_agent_error failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v43 = gLogObj;
              v47 = type[0];
              if (os_log_type_enabled(v43, type[0]))
              {
                *buf = 136446210;
                v58 = "nw_path_report_error_to_agent";
                _os_log_impl(&dword_181A37000, v43, v47, "%{public}s nw_path_create_necp_agent_error failed, backtrace limit exceeded", buf, 0xCu);
              }
            }

            goto LABEL_79;
          }

LABEL_62:
          free(v28);
          goto LABEL_63;
        }

        if (v33)
        {
          *buf = 136446210;
          v58 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v38 = v56;
        if (os_log_type_enabled(v29, v56))
        {
          *buf = 136446210;
          v58 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v29, v38, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v28)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  __break(1u);
  return result;
}

uint64_t sub_181DE5C18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void nw_http_diag_log_for_level(int a1, char a2, uint64_t a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __nw_http_diag_log_for_level_block_invoke;
  v3[3] = &unk_1E6A303F0;
  v4 = a1;
  v5 = a2;
  v3[4] = a3;
  os_unfair_lock_lock(&lock);
  __nw_http_diag_log_for_level_block_invoke(v3);
  os_unfair_lock_unlock(&lock);
}

void nw_http_transaction_metadata_increment_inbound_body_transfer_size(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_transaction_metadata_increment_inbound_body_transfer_size";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_transaction_metadata_increment_inbound_body_transfer_size";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_http_transaction_metadata_increment_inbound_body_transfer_size";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_transaction_metadata_increment_inbound_body_transfer_size";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_transaction_metadata_increment_inbound_body_transfer_size";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_transaction_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_transaction_metadata_increment_inbound_body_transfer_size_block_invoke;
    v17 = &__block_descriptor_40_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle(v3);
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_transaction_metadata_increment_inbound_body_transfer_size";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_transaction_metadata_increment_inbound_body_transfer_size";
      v9 = "%{public}s metadata must be http_transaction";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_transaction_metadata_increment_inbound_body_transfer_size";
      v9 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v22 = "nw_http_transaction_metadata_increment_inbound_body_transfer_size";
      v9 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_transaction_metadata_increment_inbound_body_transfer_size";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_http_transaction_metadata_mark_inbound_message_end(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_transaction_metadata_mark_inbound_message_end";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &type, &v17))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v20 = "nw_http_transaction_metadata_mark_inbound_message_end";
        v7 = "%{public}s called with null metadata";
LABEL_36:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v20 = "nw_http_transaction_metadata_mark_inbound_message_end";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v4)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v4);
        goto LABEL_8;
      }

      if (v10)
      {
        *buf = 136446210;
        v20 = "nw_http_transaction_metadata_mark_inbound_message_end";
        v7 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v20 = "nw_http_transaction_metadata_mark_inbound_message_end";
        v7 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_transaction_definition_definition))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __nw_http_transaction_metadata_mark_inbound_message_end_block_invoke;
    v15 = &unk_1E6A3A950;
    v16 = v1;
    handle = _nw_protocol_metadata_get_handle(v16);
    if (handle)
    {
      v14(v13, handle);
    }

    goto LABEL_8;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_transaction_metadata_mark_inbound_message_end";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &type, &v17))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v20 = "nw_http_transaction_metadata_mark_inbound_message_end";
      v7 = "%{public}s metadata must be http_transaction";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v17 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v20 = "nw_http_transaction_metadata_mark_inbound_message_end";
      v7 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (v12)
    {
      *buf = 136446210;
      v20 = "nw_http_transaction_metadata_mark_inbound_message_end";
      v7 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v12)
  {
    *buf = 136446466;
    v20 = "nw_http_transaction_metadata_mark_inbound_message_end";
    v21 = 2082;
    v22 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
    goto LABEL_39;
  }

LABEL_8:
}

uint64_t nw::http::content_length_manager::increment_inbound_body_size(uint64_t this, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(this + 40);
  *(this + 40) = v2 + a2;
  if (__CFADD__(v2, a2))
  {
    if (gLogDatapath == 1)
    {
      v3 = this;
      v5 = __nwlog_obj();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
      this = v3;
      if (v6)
      {
        v7 = *(v3 + 40);
        v8 = 136446978;
        v9 = "increment_inbound_body_size";
        v10 = 2082;
        v11 = "inbound_body_size";
        v12 = 2048;
        v13 = a2;
        v14 = 2048;
        v15 = v7;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", &v8, 0x2Au);
        this = v3;
      }
    }

    *(this + 40) = -1;
  }

  return this;
}

uint64_t __nw_http_transaction_metadata_mark_inbound_message_end_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = mach_continuous_time();
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  *(a2 + 88) = v5;
  v6 = *(a2 + 136);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), 3);
  }

  return 1;
}

uint64_t nw_http_transaction_metadata_get_inbound_body_size(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_inbound_body_size_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v4))
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_inbound_body_size";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_inbound_body_size";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_inbound_body_size";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_inbound_body_size";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DE6E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_protocol_http3_stream_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v92 = "nw_protocol_http3_stream_input_finished";
    v38 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v38, &type, &v89))
    {
      goto LABEL_157;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_157;
      }

      *buf = 136446210;
      v92 = "nw_protocol_http3_stream_input_finished";
      v41 = "%{public}s called with null protocol";
    }

    else if (v89 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v53 = os_log_type_enabled(v39, type);
      if (backtrace_string)
      {
        if (v53)
        {
          *buf = 136446466;
          v92 = "nw_protocol_http3_stream_input_finished";
          v93 = 2082;
          v94 = backtrace_string;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_157:
        if (!v38)
        {
          return;
        }

        goto LABEL_158;
      }

      if (!v53)
      {
        goto LABEL_157;
      }

      *buf = 136446210;
      v92 = "nw_protocol_http3_stream_input_finished";
      v41 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_157;
      }

      *buf = 136446210;
      v92 = "nw_protocol_http3_stream_input_finished";
      v41 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_156;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v92 = "nw_protocol_http3_stream_input_finished";
    v38 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v38, &type, &v89))
    {
      goto LABEL_157;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v89 != 1)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (!os_log_type_enabled(v39, type))
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        v92 = "nw_protocol_http3_stream_input_finished";
        v41 = "%{public}s called with null http3_stream, backtrace limit exceeded";
        goto LABEL_156;
      }

      v54 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v55 = os_log_type_enabled(v39, type);
      if (!v54)
      {
        if (!v55)
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        v92 = "nw_protocol_http3_stream_input_finished";
        v41 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_156;
      }

      if (v55)
      {
        *buf = 136446466;
        v92 = "nw_protocol_http3_stream_input_finished";
        v93 = 2082;
        v94 = v54;
        v56 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
LABEL_98:
        _os_log_impl(&dword_181A37000, v39, v40, v56, buf, 0x16u);
      }

LABEL_99:
      free(v54);
      if (!v38)
      {
        return;
      }

LABEL_158:
      v86 = v38;
LABEL_167:
      free(v86);
      return;
    }

    v39 = __nwlog_obj();
    v40 = type;
    if (!os_log_type_enabled(v39, type))
    {
      goto LABEL_157;
    }

    *buf = 136446210;
    v92 = "nw_protocol_http3_stream_input_finished";
    v41 = "%{public}s called with null http3_stream";
LABEL_156:
    _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
    goto LABEL_157;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v92 = "nw_protocol_http3_stream_input_finished";
    v38 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v38, &type, &v89))
    {
      goto LABEL_157;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_157;
      }

      *buf = 136446210;
      v92 = "nw_protocol_http3_stream_input_finished";
      v41 = "%{public}s called with null other_protocol";
      goto LABEL_156;
    }

    if (v89 != 1)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_157;
      }

      *buf = 136446210;
      v92 = "nw_protocol_http3_stream_input_finished";
      v41 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_156;
    }

    v54 = __nw_create_backtrace_string();
    v39 = __nwlog_obj();
    v40 = type;
    v57 = os_log_type_enabled(v39, type);
    if (!v54)
    {
      if (!v57)
      {
        goto LABEL_157;
      }

      *buf = 136446210;
      v92 = "nw_protocol_http3_stream_input_finished";
      v41 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_156;
    }

    if (v57)
    {
      *buf = 136446466;
      v92 = "nw_protocol_http3_stream_input_finished";
      v93 = 2082;
      v94 = v54;
      v56 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_98;
    }

    goto LABEL_99;
  }

  v4 = handle[95];
  if (v4 > 8)
  {
    return;
  }

  if (((1 << v4) & 0x67) != 0)
  {
    if ((handle[183] & 0x2000) == 0 && gLogDatapath == 1)
    {
      v58 = __nwlog_obj();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(*(handle + 43) + 1304);
        v60 = *(handle + 30);
        *buf = 136447234;
        v92 = "nw_protocol_http3_stream_input_finished";
        v93 = 2082;
        v94 = (handle + 158);
        v95 = 2080;
        v96 = " ";
        v97 = 1024;
        v98 = v59;
        v99 = 2048;
        v100 = v60;
        _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> deferring input finished", buf, 0x30u);
      }
    }

    *(handle + 366) |= 0x400u;
    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        input_available = callbacks->input_available;
        if (input_available)
        {
          input_available();
          goto LABEL_12;
        }
      }
    }

    __nwlog_obj();
    v23 = a1->default_input_handler;
    v24 = "invalid";
    if (v23)
    {
      identifier = v23->identifier;
      if (identifier)
      {
        v24 = identifier;
      }
    }

    *buf = 136446466;
    v92 = "nw_protocol_http3_stream_input_finished";
    v93 = 2082;
    v94 = v24;
    v26 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (__nwlog_fault(v26, &type, &v89))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_143;
        }

        v29 = a1->default_input_handler;
        v30 = "invalid";
        if (v29)
        {
          v31 = v29->identifier;
          if (v31)
          {
            v30 = v31;
          }
        }

        *buf = 136446466;
        v92 = "nw_protocol_http3_stream_input_finished";
        v93 = 2082;
        v94 = v30;
        v32 = "%{public}s protocol %{public}s has invalid input_available callback";
        goto LABEL_142;
      }

      if (v89 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_143;
        }

        v64 = a1->default_input_handler;
        v65 = "invalid";
        if (v64)
        {
          v66 = v64->identifier;
          if (v66)
          {
            v65 = v66;
          }
        }

        *buf = 136446466;
        v92 = "nw_protocol_http3_stream_input_finished";
        v93 = 2082;
        v94 = v65;
        v32 = "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded";
        goto LABEL_142;
      }

      v42 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v43 = os_log_type_enabled(v27, type);
      if (v42)
      {
        if (v43)
        {
          v44 = a1->default_input_handler;
          v45 = "invalid";
          if (v44)
          {
            v46 = v44->identifier;
            if (v46)
            {
              v45 = v46;
            }
          }

          *buf = 136446722;
          v92 = "nw_protocol_http3_stream_input_finished";
          v93 = 2082;
          v94 = v45;
          v95 = 2082;
          v96 = v42;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v42);
        goto LABEL_143;
      }

      if (v43)
      {
        v80 = a1->default_input_handler;
        v81 = "invalid";
        if (v80)
        {
          v82 = v80->identifier;
          if (v82)
          {
            v81 = v82;
          }
        }

        *buf = 136446466;
        v92 = "nw_protocol_http3_stream_input_finished";
        v93 = 2082;
        v94 = v81;
        v32 = "%{public}s protocol %{public}s has invalid input_available callback, no backtrace";
LABEL_142:
        _os_log_impl(&dword_181A37000, v27, v28, v32, buf, 0x16u);
      }
    }

LABEL_143:
    if (v26)
    {
      free(v26);
    }

LABEL_12:
    if ((handle[183] & 0x400) == 0)
    {
      return;
    }

    v8 = handle[95];
    if (v8 > 8 || ((1 << v8) & 0x198) == 0)
    {
      return;
    }

    if ((handle[183] & 0x2000) == 0 && gLogDatapath == 1)
    {
      v75 = __nwlog_obj();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        v76 = *(*(handle + 43) + 1304);
        v77 = *(handle + 30);
        *buf = 136447234;
        v92 = "nw_protocol_http3_stream_input_finished";
        v93 = 2082;
        v94 = (handle + 158);
        v95 = 2080;
        v96 = " ";
        v97 = 1024;
        v98 = v76;
        v99 = 2048;
        v100 = v77;
        _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> delivering deferred input finished", buf, 0x30u);
      }
    }

    *(handle + 366) &= ~0x400u;
    v9 = a1->default_input_handler;
    if (!v9 || (v10 = v9->callbacks) == 0 || (input_finished = v10->input_finished) == 0)
    {
      __nwlog_obj();
      v12 = a1->default_input_handler;
      v13 = "invalid";
      if (v12)
      {
        v14 = v12->identifier;
        if (v14)
        {
          v13 = v14;
        }
      }

      *buf = 136446466;
      v92 = "nw_protocol_http3_stream_input_finished";
      v93 = 2082;
      v94 = v13;
      v15 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v89 = 0;
      if (!__nwlog_fault(v15, &type, &v89))
      {
        goto LABEL_165;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (!os_log_type_enabled(v16, type))
        {
          goto LABEL_165;
        }

        v18 = a1->default_input_handler;
        v19 = "invalid";
        if (v18)
        {
          v20 = v18->identifier;
          if (v20)
          {
            v19 = v20;
          }
        }

LABEL_29:
        *buf = 136446466;
        v92 = "nw_protocol_http3_stream_input_finished";
        v93 = 2082;
        v94 = v19;
        v21 = "%{public}s protocol %{public}s has invalid input_finished callback";
LABEL_164:
        _os_log_impl(&dword_181A37000, v16, v17, v21, buf, 0x16u);
        goto LABEL_165;
      }

      if (v89 == 1)
      {
        v67 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v17 = type;
        v68 = os_log_type_enabled(v16, type);
        if (v67)
        {
          if (v68)
          {
            v69 = a1->default_input_handler;
            v70 = "invalid";
            if (v69)
            {
              v71 = v69->identifier;
              if (v71)
              {
                v70 = v71;
              }
            }

            *buf = 136446722;
            v92 = "nw_protocol_http3_stream_input_finished";
            v93 = 2082;
            v94 = v70;
            v95 = 2082;
            v96 = v67;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s protocol %{public}s has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v67);
          if (v15)
          {
            goto LABEL_166;
          }

          return;
        }

        if (v68)
        {
          v87 = a1->default_input_handler;
          v84 = "invalid";
          if (v87)
          {
            v88 = v87->identifier;
            if (v88)
            {
              v84 = v88;
            }
          }

LABEL_163:
          *buf = 136446466;
          v92 = "nw_protocol_http3_stream_input_finished";
          v93 = 2082;
          v94 = v84;
          v21 = "%{public}s protocol %{public}s has invalid input_finished callback, no backtrace";
          goto LABEL_164;
        }

        goto LABEL_165;
      }

      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_165;
      }

      v78 = a1->default_input_handler;
      v73 = "invalid";
      if (v78)
      {
        v79 = v78->identifier;
        if (v79)
        {
          v73 = v79;
        }
      }

LABEL_123:
      *buf = 136446466;
      v92 = "nw_protocol_http3_stream_input_finished";
      v93 = 2082;
      v94 = v73;
      v21 = "%{public}s protocol %{public}s has invalid input_finished callback, backtrace limit exceeded";
      goto LABEL_164;
    }

LABEL_35:
    input_finished(v9, a1);
    return;
  }

  if ((handle[183] & 0x2000) == 0 && gLogDatapath == 1)
  {
    v61 = __nwlog_obj();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v62 = *(*(handle + 43) + 1304);
      v63 = *(handle + 30);
      *buf = 136447234;
      v92 = "nw_protocol_http3_stream_input_finished";
      v93 = 2082;
      v94 = (handle + 158);
      v95 = 2080;
      v96 = " ";
      v97 = 1024;
      v98 = v62;
      v99 = 2048;
      v100 = v63;
      _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
    }
  }

  v9 = a1->default_input_handler;
  if (v9)
  {
    v22 = v9->callbacks;
    if (v22)
    {
      input_finished = v22->input_finished;
      if (input_finished)
      {
        goto LABEL_35;
      }
    }
  }

  __nwlog_obj();
  v33 = a1->default_input_handler;
  v34 = "invalid";
  if (v33)
  {
    v35 = v33->identifier;
    if (v35)
    {
      v34 = v35;
    }
  }

  *buf = 136446466;
  v92 = "nw_protocol_http3_stream_input_finished";
  v93 = 2082;
  v94 = v34;
  v15 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v89 = 0;
  if (!__nwlog_fault(v15, &type, &v89))
  {
    goto LABEL_165;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v16 = __nwlog_obj();
    v17 = type;
    if (!os_log_type_enabled(v16, type))
    {
      goto LABEL_165;
    }

    v36 = a1->default_input_handler;
    v19 = "invalid";
    if (v36)
    {
      v37 = v36->identifier;
      if (v37)
      {
        v19 = v37;
      }
    }

    goto LABEL_29;
  }

  if (v89 != 1)
  {
    v16 = __nwlog_obj();
    v17 = type;
    if (!os_log_type_enabled(v16, type))
    {
      goto LABEL_165;
    }

    v72 = a1->default_input_handler;
    v73 = "invalid";
    if (v72)
    {
      v74 = v72->identifier;
      if (v74)
      {
        v73 = v74;
      }
    }

    goto LABEL_123;
  }

  v47 = __nw_create_backtrace_string();
  v16 = __nwlog_obj();
  v17 = type;
  v48 = os_log_type_enabled(v16, type);
  if (!v47)
  {
    if (!v48)
    {
      goto LABEL_165;
    }

    v83 = a1->default_input_handler;
    v84 = "invalid";
    if (v83)
    {
      v85 = v83->identifier;
      if (v85)
      {
        v84 = v85;
      }
    }

    goto LABEL_163;
  }

  if (v48)
  {
    v49 = a1->default_input_handler;
    v50 = "invalid";
    if (v49)
    {
      v51 = v49->identifier;
      if (v51)
      {
        v50 = v51;
      }
    }

    *buf = 136446722;
    v92 = "nw_protocol_http3_stream_input_finished";
    v93 = 2082;
    v94 = v50;
    v95 = 2082;
    v96 = v47;
    _os_log_impl(&dword_181A37000, v16, v17, "%{public}s protocol %{public}s has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v47);
LABEL_165:
  if (v15)
  {
LABEL_166:
    v86 = v15;
    goto LABEL_167;
  }
}

void nw_protocol_masque_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    handle = a1->handle;
    v4 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v5 = 1;
      goto LABEL_11;
    }

    v4 = *a1[1].flow_id;
    if (v4)
    {
LABEL_6:
      callbacks = v4[1].callbacks;
      v5 = 0;
      if (callbacks)
      {
        v4[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v5 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v7 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v56 = "nw_protocol_masque_input_finished";
        v8 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (!__nwlog_fault(v8, &type, &v53))
        {
          goto LABEL_43;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_43;
          }

          *buf = 136446210;
          v56 = "nw_protocol_masque_input_finished";
          v11 = "%{public}s called with null masque";
LABEL_40:
          v20 = v9;
          v21 = v10;
LABEL_41:
          v22 = 12;
LABEL_42:
          _os_log_impl(&dword_181A37000, v20, v21, v11, buf, v22);
          goto LABEL_43;
        }

        if (v53 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_43;
          }

          *buf = 136446210;
          v56 = "nw_protocol_masque_input_finished";
          v11 = "%{public}s called with null masque, backtrace limit exceeded";
          goto LABEL_40;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        v16 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v56 = "nw_protocol_masque_input_finished";
            v57 = 2082;
            v58 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (v8)
          {
LABEL_44:
            free(v8);
          }

LABEL_45:
          if ((v5 & 1) == 0)
          {
            v23 = v2->handle;
            if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
            {
              v24 = v2[1].callbacks;
              if (v24)
              {
                v25 = (v24 - 1);
                v2[1].callbacks = v25;
                if (!v25)
                {
                  v26 = *v2[1].flow_id;
                  if (v26)
                  {
                    *v2[1].flow_id = 0;
                    (v26)[2](v26, a2);
                    _Block_release(v26);
                  }

                  if (v2[1].flow_id[8])
                  {
                    v27 = *v2[1].flow_id;
                    if (v27)
                    {
                      _Block_release(v27);
                    }
                  }

                  goto LABEL_56;
                }
              }
            }
          }

          return;
        }

        if (v16)
        {
          *buf = 136446210;
          v56 = "nw_protocol_masque_input_finished";
          v11 = "%{public}s called with null masque, no backtrace";
          v20 = v14;
          v21 = v15;
          goto LABEL_41;
        }

        goto LABEL_43;
      }

      v7 = *a1[1].flow_id;
    }

    if ((BYTE1(v7[9].callbacks) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v31 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v56 = "nw_protocol_masque_input_finished";
        v57 = 2082;
        v58 = &v7[9].callbacks + 3;
        v59 = 2080;
        v60 = " ";
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    if (*&v7[9].flow_id[4] == 2 || *&v7[9].flow_id[12])
    {
      if ((BYTE1(v7[9].callbacks) & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v12 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v56 = "nw_protocol_masque_input_finished";
          v57 = 2082;
          v58 = &v7[9].callbacks + 3;
          v59 = 2080;
          v60 = " ";
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%signoring input_finished, receiving connect", buf, 0x20u);
        }
      }

      goto LABEL_45;
    }

    default_input_handler = v2->default_input_handler;
    if (default_input_handler)
    {
      v18 = default_input_handler->callbacks;
      if (v18)
      {
        input_finished = v18->input_finished;
        if (input_finished)
        {
          input_finished();
          goto LABEL_45;
        }
      }
    }

    __nwlog_obj();
    v34 = v2->default_input_handler;
    v35 = "invalid";
    if (v34)
    {
      name = v34->identifier->name;
      if (name)
      {
        v35 = name;
      }
    }

    *buf = 136446466;
    v56 = "nw_protocol_masque_input_finished";
    v57 = 2082;
    v58 = v35;
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v8, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_43;
        }

        v39 = v2->default_input_handler;
        v40 = "invalid";
        if (v39)
        {
          v41 = v39->identifier->name;
          if (v41)
          {
            v40 = v41;
          }
        }

        *buf = 136446466;
        v56 = "nw_protocol_masque_input_finished";
        v57 = 2082;
        v58 = v40;
        v11 = "%{public}s protocol %{public}s has invalid input_finished callback";
      }

      else if (v53 == 1)
      {
        v42 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = type;
        v43 = os_log_type_enabled(v37, type);
        if (v42)
        {
          if (v43)
          {
            v44 = v2->default_input_handler;
            v45 = "invalid";
            if (v44)
            {
              v46 = v44->identifier->name;
              if (v46)
              {
                v45 = v46;
              }
            }

            *buf = 136446722;
            v56 = "nw_protocol_masque_input_finished";
            v57 = 2082;
            v58 = v45;
            v59 = 2082;
            v60 = v42;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s protocol %{public}s has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v42);
          goto LABEL_43;
        }

        if (!v43)
        {
          goto LABEL_43;
        }

        v50 = v2->default_input_handler;
        v51 = "invalid";
        if (v50)
        {
          v52 = v50->identifier->name;
          if (v52)
          {
            v51 = v52;
          }
        }

        *buf = 136446466;
        v56 = "nw_protocol_masque_input_finished";
        v57 = 2082;
        v58 = v51;
        v11 = "%{public}s protocol %{public}s has invalid input_finished callback, no backtrace";
      }

      else
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_43;
        }

        v47 = v2->default_input_handler;
        v48 = "invalid";
        if (v47)
        {
          v49 = v47->identifier->name;
          if (v49)
          {
            v48 = v49;
          }
        }

        *buf = 136446466;
        v56 = "nw_protocol_masque_input_finished";
        v57 = 2082;
        v58 = v48;
        v11 = "%{public}s protocol %{public}s has invalid input_finished callback, backtrace limit exceeded";
      }

      v20 = v37;
      v21 = v38;
      v22 = 22;
      goto LABEL_42;
    }

LABEL_43:
    if (!v8)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  __nwlog_obj();
  *buf = 136446210;
  v56 = "nw_protocol_masque_input_finished";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v2, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v56 = "nw_protocol_masque_input_finished";
      v30 = "%{public}s called with null protocol";
    }

    else if (v53 == 1)
    {
      v32 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v33 = os_log_type_enabled(v28, type);
      if (v32)
      {
        if (v33)
        {
          *buf = 136446466;
          v56 = "nw_protocol_masque_input_finished";
          v57 = 2082;
          v58 = v32;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
        if (v2)
        {
          goto LABEL_56;
        }

        return;
      }

      if (!v33)
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v56 = "nw_protocol_masque_input_finished";
      v30 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v56 = "nw_protocol_masque_input_finished";
      v30 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
  }

LABEL_97:
  if (v2)
  {
LABEL_56:
    free(v2);
  }
}

id nw_protocol_copy_http_definition()
{
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v1 = nw_protocol_copy_http_definition_http_definition;

  return v1;
}

uint64_t sub_181DE87A8(uint64_t a1)
{

  swift_beginAccess();
  v5 = *(a1 + 16);
  HTTPResponse.status.getter(&v4);

  v2 = v4;

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v2 >> 16))
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t HTTPResponse.status.getter@<X0>(void *a1@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = v5[8];
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    __break(1u);
LABEL_54:
    v10 = sub_182AD31C8();
    v11 = sub_182AD3178();
    goto LABEL_15;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v1 = (v6 >> 59) & 1;
  }

  else
  {
    v1 = 1;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = v6;
    goto LABEL_14;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    goto LABEL_64;
  }

  v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_12:
  v10 = *v9;
LABEL_14:
  v11 = 65540;
LABEL_15:
  v12 = v10 - 48;
  if ((v12 & 0xFFFFFF00) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 4 * v8;
    if (4 * v8 != v11 >> 14)
    {
      v22 = a1;
      a1 = (4 << v1);
      v1 = v11 & 0xC;
      v13 = v11;
      if (v1 != a1)
      {
        goto LABEL_18;
      }

      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_57:
  v13 = sub_18208A330(v11, v6, v7);
LABEL_18:
  v14 = v13 >> 16;
  if (v13 >> 16 < v8)
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v14 = sub_182AD31C8();
      if (v1 != a1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ((v7 & 0x2000000000000000) == 0)
      {
        if ((v6 & 0x1000000000000000) != 0)
        {
          v15 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
          goto LABEL_23;
        }

        goto LABEL_67;
      }

      v23 = v6;
      v24 = v7 & 0xFFFFFFFFFFFFFFLL;
      v14 = *(&v23 + v14);
      if (v1 != a1)
      {
        goto LABEL_26;
      }
    }

LABEL_29:
    v11 = sub_18208A330(v11, v6, v7);
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    if (v8 > v11 >> 16)
    {
      v11 = sub_182AD3178();
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_66;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  v16 = sub_18208A330(v11, v6, v7);
  while (1)
  {
    v17 = v16 >> 16;
    if (v16 >> 16 >= v8)
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v9 = sub_182AD3CF8();
      goto LABEL_12;
    }

    if ((v7 & 0x1000000000000000) != 0)
    {
      v14 = sub_182AD31C8();
      if (v3 != a1)
      {
        goto LABEL_43;
      }
    }

    else if ((v7 & 0x2000000000000000) != 0)
    {
      v23 = v6;
      v24 = v7 & 0xFFFFFFFFFFFFFFLL;
      v14 = *(&v23 + v17);
      if (v3 != a1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v18 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v18 = sub_182AD3CF8();
      }

      v14 = *(v18 + v17);
      if (v3 != a1)
      {
LABEL_43:
        a1 = v22;
        if ((v7 & 0x1000000000000000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    v11 = sub_18208A330(v11, v6, v7);
    a1 = v22;
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_44:
    if (v8 > v11 >> 16)
    {
      break;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v15 = sub_182AD3CF8();
LABEL_23:
    LOBYTE(v14) = *(v15 + v14);
    if (v1 == a1)
    {
      goto LABEL_29;
    }

LABEL_26:
    if ((v7 & 0x1000000000000000) != 0)
    {
      goto LABEL_30;
    }

LABEL_27:
    v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_32:
    v1 = v14 - 48;
    if ((v1 & 0xFFFFFF00) != 0)
    {
      goto LABEL_59;
    }

    if (v3 == v11 >> 14)
    {
      goto LABEL_60;
    }

    v3 = v11 & 0xC;
    v16 = v11;
    if (v3 == a1)
    {
      goto LABEL_61;
    }
  }

  sub_182AD3178();
LABEL_46:
  if (((v14 - 48) & 0xFFFFFF00) != 0)
  {
    goto LABEL_63;
  }

  v20 = v5[9];
  v19 = v5[10];
  *a1 = 100 * v12 + 10 * v1 + (v14 - 48);
  a1[1] = v20;
  a1[2] = v19;
}

uint64_t nw_http_response_copy_header_fields(void *a1)
{
  v1 = a1;
  if (v1)
  {
    goto LABEL_2;
  }

  v4 = __nwlog_obj();
  os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  v5 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
LABEL_2:
    v2 = _nw_http_response_copy_header_fields(v1);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t _nw_http_request_copy_header_fieldsTm(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 24);

  type metadata accessor for __NWHTTPFields();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

void _nw_http_fields_access_value_by_name(uint64_t a1, unint64_t a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  sub_181DB9FD4(a1, a2, v5);

  _Block_release(v5);
}

uint64_t sub_181DE8D5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v15[3] = a5;
  v15[4] = v7;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;

  v8 = sub_181DE8E9C(v15);
  v10 = v9;

  if (v10)
  {
    MEMORY[0x1EEE9AC00](v11);
    MEMORY[0x1EEE9AC00](v12);
    sub_181DE92EC(v8, v10, sub_181DE94B0);
  }

  else
  {
    v14 = *(a6 + 16);

    return v14(a6, 0);
  }
}

uint64_t sub_181DE8E9C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *v1;
  v21[3] = v5;
  v21[4] = v6;
  v21[0] = v2;
  v21[1] = v3;
  v21[2] = v4;
  sub_181DE0CB8(v21);
  v8 = v7;

  v10 = sub_181DE90B8(v9, v8);

  v11 = *(v10 + 16);
  if (v11)
  {
    if (v4 == 0x65696B6F6F63 && v5 == 0xE600000000000000)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      sub_182AD4268();
      swift_bridgeObjectRelease_n();
    }

    v21[0] = MEMORY[0x1E69E7CC0];
    sub_181DE0DB0(0, v11, 0);
    v13 = v21[0];
    v14 = (v10 + 80);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v21[0] = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_181DE0DB0((v17 > 1), v18 + 1, 1);
        v13 = v21[0];
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v14 += 7;
      --v11;
    }

    while (v11);

    v21[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530);
    sub_181AB3DCC(&qword_1EA836F88, &qword_1EA83B530);
    v12 = sub_182AD2EC8();
  }

  else
  {

    return 0;
  }

  return v12;
}

uint64_t sub_181DE90B8(uint64_t result, unsigned __int16 a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (a2 == 0xFFFF)
  {
    v3 = 0;
LABEL_24:
    v23 = v2[3];
    if (v23 < 2)
    {
      return v2;
    }

    v24 = v23 >> 1;
    v13 = __OFSUB__(v24, v3);
    v25 = v24 - v3;
    if (!v13)
    {
      v2[2] = v25;
      return v2;
    }
  }

  else
  {
    v4 = result;
    v3 = 0;
    v5 = a2;
    v6 = MEMORY[0x1E69E7CC0] + 32;
    v27 = result + 32;
    v26 = result;
    while (*(v4 + 16) > v5)
    {
      v7 = v27 + (v5 << 6);
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v29 = *(v7 + 32);
      v12 = *(v7 + 48);
      v28 = *(v7 + 40);
      v5 = *(v7 + 56);
      if (v3)
      {

        v13 = __OFSUB__(v3--, 1);
        if (v13)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v14 = v2[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388F0);
        v17 = swift_allocObject();
        v18 = (_swift_stdlib_malloc_size(v17) - 32) / 56;
        v17[2] = v16;
        v17[3] = 2 * v18;
        v19 = v17 + 4;
        v20 = v2[3] >> 1;
        v6 = &v17[7 * v20 + 4];
        v21 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;
        if (v2[2])
        {
          if (v17 != v2 || v19 >= &v2[7 * v20 + 4])
          {
            memmove(v19, v2 + 4, 56 * v20);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v17;
        v4 = v26;
        v13 = __OFSUB__(v21, 1);
        v3 = v21 - 1;
        if (v13)
        {
          goto LABEL_29;
        }
      }

      *v6 = v9;
      *(v6 + 8) = v8;
      *(v6 + 16) = v10;
      *(v6 + 24) = v11;
      *(v6 + 32) = v29;
      *(v6 + 40) = v28;
      *(v6 + 48) = v12;
      v6 += 56;
      if (v5 == 0xFFFF)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_181DE92EC(unint64_t a1, unint64_t a2, uint64_t (*a3)(char *))
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (sub_181CA4798(a1, a2))
  {
    return sub_181DE94C8(a1, a2, a3);
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1;
  }

  v9 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  isStackAllocationSafe = sub_18224A3EC(0xFuLL, v9 | (v8 << 16), a1, a2);
  v11 = isStackAllocationSafe + 1;
  if (__OFADD__(isStackAllocationSafe, 1))
  {
    __break(1u);
  }

  else
  {
    if (v11 < 0)
    {
      __break(1u);
    }

    if (v11 < 1025)
    {
      goto LABEL_10;
    }
  }

  v15 = isStackAllocationSafe + 1;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v16 = swift_slowAlloc();
    sub_182243F74(v16, v15, a1, a2);
    a3(v16);
    return MEMORY[0x1865DF520](v16, -1, -1);
  }

LABEL_10:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v13 = v17 - v12;
  sub_182243F74(v17 - v12, v14, a1, a2);
  result = a3(v13);
  if (v3)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_181DE94C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_182AD3B78();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v5;
    return a3(v3);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_182AD3B78();
  }

  v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a3(v3);
}

void nw_flow_replay_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v4 = *(handle + 20);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = v6[29];

      if (v7 == 2)
      {
        output_handler = a1->output_handler;
        if (output_handler)
        {
          callbacks = output_handler->callbacks;
          if (callbacks)
          {
            disconnect = callbacks->disconnect;
            if (disconnect)
            {
              disconnect();
            }
          }
        }

        else
        {
          v13 = *(handle + 36);
          if (v13)
          {
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = ___ZL25nw_flow_replay_disconnectP11nw_protocolS0__block_invoke;
            v30[3] = &__block_descriptor_40_e23_B16__0__nw_hash_node__8l;
            v30[4] = a1;
            nw_hash_table_apply(v13, v30);
          }
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (v7 > 5)
          {
            v12 = "unknown-mode";
          }

          else
          {
            v12 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          v34 = "nw_flow_replay_disconnect";
          v35 = 2082;
          v36 = v12;
          v37 = 2082;
          v38 = "flow";
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_16:

      return;
    }

    v18 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_flow_replay_disconnect";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v19, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v34 = "nw_flow_replay_disconnect";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            v34 = "nw_flow_replay_disconnect";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_52;
        }

        if (v27)
        {
          *buf = 136446210;
          v34 = "nw_flow_replay_disconnect";
          _os_log_impl(&dword_181A37000, v20, v26, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v34 = "nw_flow_replay_disconnect";
          _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_52:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_16;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_flow_replay_disconnect";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v15, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v34 = "nw_flow_replay_disconnect";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v16, type);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446466;
          v34 = "nw_flow_replay_disconnect";
          v35 = 2082;
          v36 = v22;
          _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
        goto LABEL_47;
      }

      if (v24)
      {
        *buf = 136446210;
        v34 = "nw_flow_replay_disconnect";
        _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v34 = "nw_flow_replay_disconnect";
        _os_log_impl(&dword_181A37000, v16, v28, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_47:
  if (v15)
  {
    free(v15);
  }
}

void nw_protocol_masque_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_protocol_masque_disconnect";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v3, &type, &v73))
    {
      goto LABEL_144;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v68 = __nwlog_obj();
      v69 = type;
      if (!os_log_type_enabled(v68, type))
      {
        goto LABEL_144;
      }

      *buf = 136446210;
      v76 = "nw_protocol_masque_disconnect";
      v70 = "%{public}s called with null protocol";
    }

    else if (v73 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v68 = __nwlog_obj();
      v69 = type;
      v72 = os_log_type_enabled(v68, type);
      if (backtrace_string)
      {
        if (v72)
        {
          *buf = 136446466;
          v76 = "nw_protocol_masque_disconnect";
          v77 = 2082;
          v78 = backtrace_string;
          _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_120;
        }

        return;
      }

      if (!v72)
      {
LABEL_144:
        if (!v3)
        {
          return;
        }

        goto LABEL_120;
      }

      *buf = 136446210;
      v76 = "nw_protocol_masque_disconnect";
      v70 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v68 = __nwlog_obj();
      v69 = type;
      if (!os_log_type_enabled(v68, type))
      {
        goto LABEL_144;
      }

      *buf = 136446210;
      v76 = "nw_protocol_masque_disconnect";
      v70 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v68, v69, v70, buf, 0xCu);
    goto LABEL_144;
  }

  v3 = a1;
  handle = a1->handle;
  v5 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v6 = 1;
    goto LABEL_11;
  }

  v5 = *a1[1].flow_id;
  if (v5)
  {
LABEL_6:
    callbacks = v5[1].callbacks;
    v6 = 0;
    if (callbacks)
    {
      v5[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v6 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v8 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v8 = *a1[1].flow_id;
LABEL_18:
    if (*&v8[9].flow_id[4] == 5)
    {
      goto LABEL_109;
    }

    if ((BYTE1(v8[9].callbacks) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v13 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v14 = *&v8[6].flow_id[8];
        v15 = v14;
        if (v14)
        {
          logging_description = _nw_endpoint_get_logging_description(v14);
        }

        else
        {
          logging_description = "<NULL>";
        }

        *buf = 136446722;
        v76 = &v8[9].callbacks + 3;
        v77 = 2080;
        v78 = " ";
        v79 = 2082;
        v80 = logging_description;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s%sClosing connection for %{public}s", buf, 0x20u);
      }
    }

    nw_protocol_remove_instance(v3);
    *&v8[9].flow_id[4] = 5;
    if (a2)
    {
      v23 = a2->callbacks;
      if (v23)
      {
        disconnected = v23->disconnected;
        if (disconnected)
        {
          v25 = a2->handle;
          v26 = a2;
          if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (v26 = *a2[1].flow_id) != 0)
          {
            v28 = v26[1].callbacks;
            v27 = 0;
            if (v28)
            {
              v26[1].callbacks = (&v28->add_input_handler + 1);
            }
          }

          else
          {
            v27 = 1;
          }

          v29 = v3->handle;
          v30 = v3;
          if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v30 = *v3[1].flow_id) != 0)
          {
            v31 = v30[1].callbacks;
            if (v31)
            {
              v30[1].callbacks = (&v31->add_input_handler + 1);
            }

            disconnected(a2, v3);
            v32 = v3->handle;
            v33 = v3;
            if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = *v3[1].flow_id) != 0)
            {
              v34 = v33[1].callbacks;
              if (v34)
              {
                v35 = (v34 - 1);
                v33[1].callbacks = v35;
                if (!v35)
                {
                  v36 = *v33[1].flow_id;
                  if (v36)
                  {
                    *v33[1].flow_id = 0;
                    v36[2](v36);
                    _Block_release(v36);
                  }

                  if (v33[1].flow_id[8])
                  {
                    v37 = *v33[1].flow_id;
                    if (v37)
                    {
                      _Block_release(v37);
                    }
                  }

                  free(v33);
                }
              }
            }
          }

          else
          {
            disconnected(a2, v3);
          }

          if ((v27 & 1) == 0)
          {
            v38 = a2->handle;
            if (v38 == &nw_protocol_ref_counted_handle || v38 == &nw_protocol_ref_counted_additional_handle && (a2 = *a2[1].flow_id) != 0)
            {
              v39 = a2[1].callbacks;
              if (v39)
              {
                v40 = (v39 - 1);
                a2[1].callbacks = v40;
                if (!v40)
                {
                  v41 = *a2[1].flow_id;
                  if (v41)
                  {
                    *a2[1].flow_id = 0;
                    v41[2](v41);
                    _Block_release(v41);
                  }

                  if (a2[1].flow_id[8])
                  {
                    v42 = *a2[1].flow_id;
                    if (v42)
                    {
                      _Block_release(v42);
                    }
                  }

                  free(a2);
                }
              }
            }
          }
        }
      }
    }

    output_handler = v8->output_handler;
    if (!output_handler)
    {
      goto LABEL_109;
    }

    v43 = *(output_handler + 24);
    if (!v43)
    {
      goto LABEL_109;
    }

    v44 = *(v43 + 32);
    if (!v44)
    {
      goto LABEL_109;
    }

    v45 = *(output_handler + 40);
    v46 = v8->output_handler;
    if (v45 == &nw_protocol_ref_counted_handle || v45 == &nw_protocol_ref_counted_additional_handle && (v46 = *(output_handler + 64)) != 0)
    {
      v48 = v46[1].callbacks;
      v47 = 0;
      if (v48)
      {
        v46[1].callbacks = (&v48->add_input_handler + 1);
      }
    }

    else
    {
      v47 = 1;
    }

    v49 = v3->handle;
    v50 = v3;
    if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v50 = *v3[1].flow_id) != 0)
    {
      v51 = v50[1].callbacks;
      if (v51)
      {
        v50[1].callbacks = (&v51->add_input_handler + 1);
      }

      v44(output_handler, v3);
      v52 = v3->handle;
      v53 = v3;
      if (v52 == &nw_protocol_ref_counted_handle || v52 == &nw_protocol_ref_counted_additional_handle && (v53 = *v3[1].flow_id) != 0)
      {
        v54 = v53[1].callbacks;
        if (v54)
        {
          v55 = (v54 - 1);
          v53[1].callbacks = v55;
          if (!v55)
          {
            v56 = *v53[1].flow_id;
            if (v56)
            {
              *v53[1].flow_id = 0;
              v56[2](v56);
              _Block_release(v56);
            }

            if (v53[1].flow_id[8])
            {
              v57 = *v53[1].flow_id;
              if (v57)
              {
                _Block_release(v57);
              }
            }

            free(v53);
          }
        }
      }
    }

    else
    {
      v44(output_handler, v3);
    }

    if (v47)
    {
      goto LABEL_109;
    }

    v58 = *(output_handler + 40);
    if (v58 != &nw_protocol_ref_counted_handle)
    {
      if (v58 != &nw_protocol_ref_counted_additional_handle)
      {
        goto LABEL_109;
      }

      output_handler = *(output_handler + 64);
      if (!output_handler)
      {
        goto LABEL_109;
      }
    }

    v59 = *(output_handler + 88);
    if (!v59)
    {
      goto LABEL_109;
    }

    v60 = v59 - 1;
    *(output_handler + 88) = v60;
    if (v60)
    {
      goto LABEL_109;
    }

    v66 = *(output_handler + 64);
    if (v66)
    {
      *(output_handler + 64) = 0;
      v66[2](v66);
      _Block_release(v66);
    }

    if (*(output_handler + 72))
    {
      v67 = *(output_handler + 64);
      if (v67)
      {
        _Block_release(v67);
      }
    }

LABEL_36:
    free(output_handler);
    goto LABEL_109;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v76 = "nw_protocol_masque_disconnect";
  output_handler = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v73 = 0;
  if (!__nwlog_fault(output_handler, &type, &v73))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v76 = "nw_protocol_masque_disconnect";
    v12 = "%{public}s called with null masque";
LABEL_33:
    v21 = v10;
    v22 = v11;
    goto LABEL_34;
  }

  if (v73 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v76 = "nw_protocol_masque_disconnect";
    v12 = "%{public}s called with null masque, backtrace limit exceeded";
    goto LABEL_33;
  }

  v17 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  v19 = type;
  v20 = os_log_type_enabled(gLogObj, type);
  if (!v17)
  {
    if (!v20)
    {
LABEL_35:
      if (!output_handler)
      {
        goto LABEL_109;
      }

      goto LABEL_36;
    }

    *buf = 136446210;
    v76 = "nw_protocol_masque_disconnect";
    v12 = "%{public}s called with null masque, no backtrace";
    v21 = v18;
    v22 = v19;
LABEL_34:
    _os_log_impl(&dword_181A37000, v21, v22, v12, buf, 0xCu);
    goto LABEL_35;
  }

  if (v20)
  {
    *buf = 136446466;
    v76 = "nw_protocol_masque_disconnect";
    v77 = 2082;
    v78 = v17;
    _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (output_handler)
  {
    goto LABEL_36;
  }

LABEL_109:
  if ((v6 & 1) == 0)
  {
    v61 = v3->handle;
    if (v61 == &nw_protocol_ref_counted_handle || v61 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v62 = v3[1].callbacks;
      if (v62)
      {
        v63 = (v62 - 1);
        v3[1].callbacks = v63;
        if (!v63)
        {
          v64 = *v3[1].flow_id;
          if (v64)
          {
            *v3[1].flow_id = 0;
            v64[2](v64);
            _Block_release(v64);
          }

          if (v3[1].flow_id[8])
          {
            v65 = *v3[1].flow_id;
            if (v65)
            {
              _Block_release(v65);
            }
          }

LABEL_120:
          free(v3);
        }
      }
    }
  }
}

void nw_flow_replay_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v5 = handle[20];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v8 = v7[29];

      if (v8 == 2)
      {
        if (a1->output_handler == a2)
        {
          default_input_handler = a1->default_input_handler;
          if (default_input_handler)
          {
            callbacks = default_input_handler->callbacks;
            if (callbacks)
            {
              disconnected = callbacks->disconnected;
              if (disconnected)
              {
                disconnected();
              }
            }
          }
        }

        else if (handle[36])
        {
          v9 = handle[23];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = ___ZL27nw_flow_replay_disconnectedP11nw_protocolS0__block_invoke;
          v31[3] = &unk_1E6A3BAD8;
          v32 = v7;
          v33 = a2;
          v34 = a1;
          nw_queue_context_async(v9, v31);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if (v8 > 5)
          {
            v11 = "unknown-mode";
          }

          else
          {
            v11 = off_1E6A31018[v8];
          }

          *buf = 136446722;
          v38 = "nw_flow_replay_disconnected";
          v39 = 2082;
          v40 = v11;
          v41 = 2082;
          v42 = "flow";
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_17:

      return;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_flow_replay_disconnected";
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v20, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v38 = "nw_flow_replay_disconnected";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v35 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v27 = type;
        v28 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446466;
            v38 = "nw_flow_replay_disconnected";
            v39 = 2082;
            v40 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_53;
        }

        if (v28)
        {
          *buf = 136446210;
          v38 = "nw_flow_replay_disconnected";
          _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v38 = "nw_flow_replay_disconnected";
          _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_53:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_17;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v38 = "nw_flow_replay_disconnected";
  v16 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v16, &type, &v35))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v38 = "nw_flow_replay_disconnected";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v35 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v17, type);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          v38 = "nw_flow_replay_disconnected";
          v39 = 2082;
          v40 = v23;
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_48;
      }

      if (v25)
      {
        *buf = 136446210;
        v38 = "nw_flow_replay_disconnected";
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v38 = "nw_flow_replay_disconnected";
        _os_log_impl(&dword_181A37000, v17, v29, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_48:
  if (v16)
  {
    free(v16);
  }
}

void nw_protocol_http3_stream_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_http3_stream_disconnect";
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v36, &type, &v72))
    {
      goto LABEL_141;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_141;
      }

      *buf = 136446210;
      v75 = "nw_protocol_http3_stream_disconnect";
      v39 = "%{public}s called with null protocol";
    }

    else if (v72 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v44 = os_log_type_enabled(v37, type);
      if (backtrace_string)
      {
        if (v44)
        {
          *buf = 136446466;
          v75 = "nw_protocol_http3_stream_disconnect";
          v76 = 2082;
          v77 = backtrace_string;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_141:
        if (!v36)
        {
          return;
        }

        goto LABEL_142;
      }

      if (!v44)
      {
        goto LABEL_141;
      }

      *buf = 136446210;
      v75 = "nw_protocol_http3_stream_disconnect";
      v39 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_141;
      }

      *buf = 136446210;
      v75 = "nw_protocol_http3_stream_disconnect";
      v39 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_140;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_http3_stream_disconnect";
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v36, &type, &v72))
    {
      goto LABEL_141;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v72 != 1)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        v75 = "nw_protocol_http3_stream_disconnect";
        v39 = "%{public}s called with null http3_stream, backtrace limit exceeded";
        goto LABEL_140;
      }

      v45 = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v46 = os_log_type_enabled(v37, type);
      if (!v45)
      {
        if (!v46)
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        v75 = "nw_protocol_http3_stream_disconnect";
        v39 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_140;
      }

      if (!v46)
      {
        goto LABEL_112;
      }

      *buf = 136446466;
      v75 = "nw_protocol_http3_stream_disconnect";
      v76 = 2082;
      v77 = v45;
      v47 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
      goto LABEL_111;
    }

    v37 = __nwlog_obj();
    v38 = type;
    if (!os_log_type_enabled(v37, type))
    {
      goto LABEL_141;
    }

    *buf = 136446210;
    v75 = "nw_protocol_http3_stream_disconnect";
    v39 = "%{public}s called with null http3_stream";
LABEL_140:
    _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
    goto LABEL_141;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_http3_stream_disconnect";
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v36, &type, &v72))
    {
      goto LABEL_141;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_141;
      }

      *buf = 136446210;
      v75 = "nw_protocol_http3_stream_disconnect";
      v39 = "%{public}s called with null other_protocol";
      goto LABEL_140;
    }

    if (v72 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_141;
      }

      *buf = 136446210;
      v75 = "nw_protocol_http3_stream_disconnect";
      v39 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_140;
    }

    v45 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v48 = os_log_type_enabled(v37, type);
    if (!v45)
    {
      if (!v48)
      {
        goto LABEL_141;
      }

      *buf = 136446210;
      v75 = "nw_protocol_http3_stream_disconnect";
      v39 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_140;
    }

    if (!v48)
    {
      goto LABEL_112;
    }

    *buf = 136446466;
    v75 = "nw_protocol_http3_stream_disconnect";
    v76 = 2082;
    v77 = v45;
    v47 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_111:
    _os_log_impl(&dword_181A37000, v37, v38, v47, buf, 0x16u);
    goto LABEL_112;
  }

  if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v40 = __nwlog_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(*(handle + 43) + 1304);
      v42 = *(handle + 30);
      *buf = 136447234;
      v75 = "nw_protocol_http3_stream_disconnect";
      v76 = 2082;
      v77 = handle + 632;
      v78 = 2080;
      v79 = " ";
      v80 = 1024;
      v81 = v41;
      v82 = 2048;
      v83 = v42;
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
    }
  }

  if (*(handle + 53))
  {
    error_code = *(handle + 34);
    if (error_code == -1)
    {
      error_code = nw_http_transaction_metadata_get_error_code(*(handle + 50));
      if (error_code == -1)
      {
        if ((*(handle + 366) & 0x40) != 0)
        {
          error_code = 256;
        }

        else
        {
          error_code = 268;
        }
      }
    }

    nw_quic_stream_set_application_error(*(handle + 53), error_code);
  }

  v4 = *(handle + 12);
  if (v4)
  {
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = *(v5 + 32);
      if (v6)
      {
        v6();
      }
    }
  }

  v7 = *(handle + 43);
  if (!v7)
  {
    __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_http3_stream_disconnect";
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v36, &type, &v72))
    {
      goto LABEL_141;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_141;
      }

      *buf = 136446210;
      v75 = "nw_protocol_http3_stream_disconnect";
      v39 = "%{public}s called with null http3_stream->http3_connection";
      goto LABEL_140;
    }

    if (v72 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_141;
      }

      *buf = 136446210;
      v75 = "nw_protocol_http3_stream_disconnect";
      v39 = "%{public}s called with null http3_stream->http3_connection, backtrace limit exceeded";
      goto LABEL_140;
    }

    v45 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v49 = os_log_type_enabled(v37, type);
    if (!v45)
    {
      if (!v49)
      {
        goto LABEL_141;
      }

      *buf = 136446210;
      v75 = "nw_protocol_http3_stream_disconnect";
      v39 = "%{public}s called with null http3_stream->http3_connection, no backtrace";
      goto LABEL_140;
    }

    if (v49)
    {
      *buf = 136446466;
      v75 = "nw_protocol_http3_stream_disconnect";
      v76 = 2082;
      v77 = v45;
      v47 = "%{public}s called with null http3_stream->http3_connection, dumping backtrace:%{public}s";
      goto LABEL_111;
    }

LABEL_112:
    free(v45);
    if (!v36)
    {
      return;
    }

LABEL_142:
    free(v36);
    return;
  }

  v8 = handle + 726;
  v9 = (v7 + 568);
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (v9[4] == handle)
    {
      *v8 = 64;
      v10 = v9[5];
      if (v10 <= 0x3E)
      {
        v11 = (handle + 727);
        handle[726] = v10 | 0x40;
        v12 = *(v7 + 536);
        if (v12)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      *v8 = 127;
      v19 = v10 - 63;
      if (v19 < 0x80)
      {
        v21 = 726;
        v22 = 1;
      }

      else
      {
        handle[727] = v19 | 0x80;
        if (v19 < 0x4000)
        {
          v19 >>= 7;
          v21 = 727;
          v22 = 2;
        }

        else
        {
          handle[728] = (v19 >> 7) | 0x80;
          if (v19 < 0x200000)
          {
            v19 >>= 14;
            v21 = 728;
            v22 = 3;
          }

          else
          {
            handle[729] = (v19 >> 14) | 0x80;
            if (v19 >> 28)
            {
              handle[730] = (v19 >> 21) | 0x80;
              if (v19 >> 35)
              {
                handle[731] = (v19 >> 28) | 0x80;
                v20 = *(v7 + 536);
                if (v20)
                {
                  fwrite("qdec: warn: ", 0xCuLL, 1uLL, v20);
                  fprintf(*(v7 + 536), "cannot generate Cancel Stream instruction for stream %llu; buf size=%zu", v9[5], 6uLL);
                  fputc(10, *(v7 + 536));
                }

                goto LABEL_44;
              }

              v21 = 730;
              v22 = 5;
              LOBYTE(v19) = v19 >> 28;
            }

            else
            {
              v19 >>= 21;
              v21 = 729;
              v22 = 4;
            }
          }
        }
      }

      v11 = &handle[v21 + 2];
      v8[v22] = v19;
      v12 = *(v7 + 536);
      if (v12)
      {
LABEL_23:
        fwrite("qdec: debug: ", 0xDuLL, 1uLL, v12);
        fprintf(*(v7 + 536), "cancelled stream %llu; generate instruction of %u bytes", v9[5], v11 - v8);
        fputc(10, *(v7 + 536));
      }

LABEL_24:
      v13 = *v9;
      v14 = v9[1];
      v15 = (v7 + 576);
      if (*v9)
      {
        v15 = (*v9 + 8);
      }

      *v15 = v14;
      *v14 = v13;
      if ((v9[13] & 4) != 0)
      {
        v16 = v9[2];
        v17 = v9[3];
        if (v16)
        {
          *(v16 + 24) = v17;
        }

        else
        {
          *(v7 + 16 * (v9[8] & 7) + 592) = v17;
        }

        *v17 = v16;
        --*(v7 + 712);
      }

      free(v9);
      *(v7 + 512) += v11 - v8;
      if (v11 - v8 >= 0)
      {
        handle[631] = v11 - (handle - 42);
        goto LABEL_60;
      }

LABEL_44:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v75 = "nw_protocol_http3_stream_disconnect";
      v23 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v72 = 0;
      if (!__nwlog_fault(v23, &type, &v72))
      {
        goto LABEL_58;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v75 = "nw_protocol_http3_stream_disconnect";
          v26 = "%{public}s Failed to generate stream cancellation instruction";
          goto LABEL_56;
        }

        goto LABEL_58;
      }

      if (v72 == 1)
      {
        v27 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type;
        v30 = os_log_type_enabled(gLogObj, type);
        if (v27)
        {
          if (v30)
          {
            *buf = 136446466;
            v75 = "nw_protocol_http3_stream_disconnect";
            v76 = 2082;
            v77 = v27;
            _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Failed to generate stream cancellation instruction, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v27);
          goto LABEL_58;
        }

        if (!v30)
        {
LABEL_58:
          if (v23)
          {
            free(v23);
          }

          goto LABEL_60;
        }

        *buf = 136446210;
        v75 = "nw_protocol_http3_stream_disconnect";
        v26 = "%{public}s Failed to generate stream cancellation instruction, no backtrace";
        v31 = v28;
        v32 = v29;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_58;
        }

        *buf = 136446210;
        v75 = "nw_protocol_http3_stream_disconnect";
        v26 = "%{public}s Failed to generate stream cancellation instruction, backtrace limit exceeded";
LABEL_56:
        v31 = v24;
        v32 = v25;
      }

      _os_log_impl(&dword_181A37000, v31, v32, v26, buf, 0xCu);
      goto LABEL_58;
    }
  }

  v18 = *(v7 + 536);
  if (v18)
  {
    fwrite("qdec: info: ", 0xCuLL, 1uLL, v18);
    fwrite("could not find stream to cancel", 0x1FuLL, 1uLL, *(v7 + 536));
    fputc(10, *(v7 + 536));
  }

  handle[631] = 0;
LABEL_60:
  nw_http3_stream_send_stream_cancellation(handle);
  if (*(handle + 65) || handle[630] || handle[631])
  {
    *(handle + 366) |= 0x1000u;
    return;
  }

  v33 = *(handle + 4);
  if (v33)
  {
    v34 = *(v33 + 24);
    if (v34)
    {
      v35 = *(v34 + 32);
      if (v35)
      {
        v35(v33, handle);
        return;
      }
    }
  }

  __nwlog_obj();
  v50 = *(handle + 4);
  v51 = "invalid";
  if (v50)
  {
    v52 = *(v50 + 16);
    if (v52)
    {
      v51 = v52;
    }
  }

  *buf = 136446466;
  v75 = "nw_protocol_http3_stream_disconnect";
  v76 = 2082;
  v77 = v51;
  v53 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v72 = 0;
  v54 = v53;
  if (!__nwlog_fault(v53, &type, &v72))
  {
    goto LABEL_162;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v55 = __nwlog_obj();
    v56 = type;
    if (!os_log_type_enabled(v55, type))
    {
      goto LABEL_162;
    }

    v57 = *(handle + 4);
    v58 = "invalid";
    if (v57)
    {
      v59 = *(v57 + 16);
      if (v59)
      {
        v58 = v59;
      }
    }

    *buf = 136446466;
    v75 = "nw_protocol_http3_stream_disconnect";
    v76 = 2082;
    v77 = v58;
    v60 = "%{public}s protocol %{public}s has invalid disconnect callback";
    goto LABEL_161;
  }

  if (v72 != 1)
  {
    v55 = __nwlog_obj();
    v56 = type;
    if (!os_log_type_enabled(v55, type))
    {
      goto LABEL_162;
    }

    v66 = *(handle + 4);
    v67 = "invalid";
    if (v66)
    {
      v68 = *(v66 + 16);
      if (v68)
      {
        v67 = v68;
      }
    }

    *buf = 136446466;
    v75 = "nw_protocol_http3_stream_disconnect";
    v76 = 2082;
    v77 = v67;
    v60 = "%{public}s protocol %{public}s has invalid disconnect callback, backtrace limit exceeded";
    goto LABEL_161;
  }

  v61 = __nw_create_backtrace_string();
  v55 = __nwlog_obj();
  v56 = type;
  v62 = os_log_type_enabled(v55, type);
  if (v61)
  {
    if (v62)
    {
      v63 = *(handle + 4);
      v64 = "invalid";
      if (v63)
      {
        v65 = *(v63 + 16);
        if (v65)
        {
          v64 = v65;
        }
      }

      *buf = 136446722;
      v75 = "nw_protocol_http3_stream_disconnect";
      v76 = 2082;
      v77 = v64;
      v78 = 2082;
      v79 = v61;
      _os_log_impl(&dword_181A37000, v55, v56, "%{public}s protocol %{public}s has invalid disconnect callback, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v61);
    goto LABEL_162;
  }

  if (v62)
  {
    v69 = *(handle + 4);
    v70 = "invalid";
    if (v69)
    {
      v71 = *(v69 + 16);
      if (v71)
      {
        v70 = v71;
      }
    }

    *buf = 136446466;
    v75 = "nw_protocol_http3_stream_disconnect";
    v76 = 2082;
    v77 = v70;
    v60 = "%{public}s protocol %{public}s has invalid disconnect callback, no backtrace";
LABEL_161:
    _os_log_impl(&dword_181A37000, v55, v56, v60, buf, 0x16u);
  }

LABEL_162:
  if (v54)
  {
    free(v54);
  }
}

uint64_t nw_http_transaction_metadata_get_error_code(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = -1;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_error_code_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v4))
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_error_code";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_error_code";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_error_code";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_error_code";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_error_code";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_error_code";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_error_code";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_error_code";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_error_code";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_error_code";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = -1;
LABEL_8:

  return v6;
}

void sub_181DEC074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http3_stream_send_stream_cancellation(uint64_t a1)
{
  if (*(a1 + 631))
  {
    v11[0] = 0;
    v11[1] = v11;
    if (nw_http3_decoder_stream_get_output_frames(*(a1 + 344), a1))
    {
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x2000000000;
      v10[3] = 0;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v6 = ___ZL40nw_http3_stream_send_stream_cancellationP24nw_protocol_http3_stream_block_invoke;
      v7 = &unk_1E6A38CE8;
      v8 = v10;
      v9 = a1;
      v2 = v11[0];
      do
      {
        if (!v2)
        {
          break;
        }

        v3 = *(v2 + 32);
        v4 = (v6)(v5);
        v2 = v3;
      }

      while ((v4 & 1) != 0);
      nw_http3_decoder_stream_finalize_output_frames(*(a1 + 344), a1);
      *(a1 + 631) = 0;
      _Block_object_dispose(v10, 8);
    }
  }
}

void nw_protocol_http3_stream_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_http3_stream_disconnected";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v17, &type, &v30))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http3_stream_disconnected";
      v20 = "%{public}s called with null protocol";
      goto LABEL_54;
    }

    if (v30 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http3_stream_disconnected";
      v20 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v27 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (!v27)
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http3_stream_disconnected";
      v20 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_54;
    }

    if (v27)
    {
      *buf = 136446466;
      v33 = "nw_protocol_http3_stream_disconnected";
      v34 = 2082;
      v35 = backtrace_string;
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_55:
    if (!v17)
    {
      return;
    }

    goto LABEL_56;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_http3_stream_disconnected";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v17, &type, &v30))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http3_stream_disconnected";
      v20 = "%{public}s called with null http3_stream";
      goto LABEL_54;
    }

    if (v30 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http3_stream_disconnected";
      v20 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_54;
    }

    v28 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v29 = os_log_type_enabled(v18, type);
    if (v28)
    {
      if (v29)
      {
        *buf = 136446466;
        v33 = "nw_protocol_http3_stream_disconnected";
        v34 = 2082;
        v35 = v28;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v28);
      if (!v17)
      {
        return;
      }

LABEL_56:
      free(v17);
      return;
    }

    if (v29)
    {
      *buf = 136446210;
      v33 = "nw_protocol_http3_stream_disconnected";
      v20 = "%{public}s called with null http3_stream, no backtrace";
LABEL_54:
      _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  if ((handle[366] & 0x2000) == 0 && gLogDatapath == 1)
  {
    v21 = handle;
    v22 = __nwlog_obj();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
    handle = v21;
    if (v23)
    {
      v24 = *(v21[43] + 1304);
      v25 = v21[30];
      *buf = 136447234;
      v33 = "nw_protocol_http3_stream_disconnected";
      v34 = 2082;
      v35 = (v21 + 79);
      v36 = 2080;
      v37 = " ";
      v38 = 1024;
      v39 = v24;
      v40 = 2048;
      v41 = v25;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      handle = v21;
    }
  }

  if (handle + 32 != a1)
  {
    application_error = nw_http3_stream_get_application_error(handle);
    if (application_error == 272)
    {
      default_input_handler = a1->default_input_handler;
      if (default_input_handler)
      {
        callbacks = default_input_handler->callbacks;
        if (callbacks)
        {
          error = callbacks->error;
          if (error)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else if (application_error == 267)
    {
      v5 = a1->default_input_handler;
      if (v5)
      {
        v6 = v5->callbacks;
        if (v6)
        {
          error = v6->error;
          if (error)
          {
LABEL_19:
            error();
          }
        }
      }
    }

    v14 = a1->default_input_handler;
    if (v14)
    {
      v15 = v14->callbacks;
      if (v15)
      {
        disconnected = v15->disconnected;
        if (disconnected)
        {
          disconnected();
        }
      }
    }

    return;
  }

  if ((handle[366] & 0x2000) == 0 && gLogDatapath == 1)
  {
    v8 = handle;
    v9 = __nwlog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(v8 + 43) + 1304);
      v11 = *(v8 + 30);
      *buf = 136447234;
      v33 = "nw_protocol_http3_stream_disconnected";
      v34 = 2082;
      v35 = (v8 + 316);
      v36 = 2080;
      v37 = " ";
      v38 = 1024;
      v39 = v10;
      v40 = 2048;
      v41 = v11;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> datagram flow disconnected", buf, 0x30u);
    }
  }
}

uint64_t nw_http3_stream_get_application_error(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 224);
  if (!v3)
  {
    return 0;
  }

  v4 = v3();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  count = _nw_array_get_count(v4);
  if (count - 1 >= 0)
  {
    v7 = count;
    while (1)
    {
      v8 = _nw_array_copy_object_at_index(v5, --v7);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      if (_nw_protocol_metadata_is_quic_stream(v8))
      {
        application_error = nw_quic_stream_get_application_error(v9);
        os_release(v9);
        goto LABEL_12;
      }

      os_release(v9);
      if (v7 <= 0)
      {
        goto LABEL_10;
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_http3_stream_get_application_error";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v11, &type, &v18))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_http3_stream_get_application_error";
        v14 = "%{public}s called with null metadata";
LABEL_26:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_http3_stream_get_application_error";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_http3_stream_get_application_error";
        v14 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_26;
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_http3_stream_get_application_error";
        v14 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_27:
    if (v11)
    {
      free(v11);
    }

    os_release(v5);
    return 0;
  }

LABEL_10:
  application_error = 0;
LABEL_12:
  os_release(v5);
  return application_error;
}

void nw_protocol_masque_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_disconnected";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (!__nwlog_fault(v2, &type, &v67))
    {
      goto LABEL_140;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_140;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_disconnected";
      v63 = "%{public}s called with null protocol";
    }

    else if (v67 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v61 = __nwlog_obj();
      v62 = type;
      v65 = os_log_type_enabled(v61, type);
      if (backtrace_string)
      {
        if (v65)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_masque_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_117;
        }

        return;
      }

      if (!v65)
      {
LABEL_140:
        if (!v2)
        {
          return;
        }

        goto LABEL_117;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_disconnected";
      v63 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_140;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_disconnected";
      v63 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v61, v62, v63, buf, 0xCu);
    goto LABEL_140;
  }

  v2 = a1;
  handle = a1->handle;
  v4 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v5 = 1;
    goto LABEL_11;
  }

  v4 = *a1[1].flow_id;
  if (v4)
  {
LABEL_6:
    callbacks = v4[1].callbacks;
    v5 = 0;
    if (callbacks)
    {
      v4[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v5 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v7 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
LABEL_18:
    if (*v7[8].flow_id == a2)
    {
      if ((BYTE1(v7[9].callbacks) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v16 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          *&buf[4] = v7 + 603;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s%sDemux protocol disconnected", buf, 0x16u);
        }
      }

      *v7[8].flow_id = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      v70 = __Block_byref_object_copy__65;
      v71 = __Block_byref_object_dispose__66;
      v17 = v7->handle;
      v18 = v7;
      if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *v7[1].flow_id) != 0)
      {
        v26 = v18[1].callbacks;
        if (v26)
        {
          v18[1].callbacks = (&v26->add_input_handler + 1);
        }

        v72 = v7;
        v19 = v73 | 1;
      }

      else
      {
        v72 = v7;
        v19 = v73 & 0xFE;
      }

      v73 = v19;
      v27 = v7[6].callbacks;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 0x40000000;
      v66[2] = ___ZL31nw_protocol_masque_disconnectedP11nw_protocolS0__block_invoke;
      v66[3] = &unk_1E6A2F9C8;
      v66[4] = buf;
      v66[5] = v7 + 96;
      nw_queue_context_async(v27, v66);
      _Block_object_dispose(buf, 8);
      if ((v73 & 1) == 0)
      {
        goto LABEL_106;
      }

      default_input_handler = v72;
      if (!v72)
      {
        goto LABEL_106;
      }
    }

    else
    {
      if (v7->output_handler != a2 || *&v7[9].flow_id[4] == 5)
      {
        goto LABEL_106;
      }

      if ((BYTE1(v7[9].callbacks) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v12 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
        {
          v13 = *&v7[6].flow_id[8];
          v14 = v13;
          if (v13)
          {
            logging_description = _nw_endpoint_get_logging_description(v13);
          }

          else
          {
            logging_description = "<NULL>";
          }

          *buf = 136446722;
          *&buf[4] = v7 + 603;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2082;
          v70 = logging_description;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s%sDisconnected from %{public}s", buf, 0x20u);
        }
      }

      nw_protocol_remove_instance(v2);
      if (*&v7[9].flow_id[4] == 2)
      {
        identifier = v7[9].identifier;
        if (identifier)
        {
          if (identifier != 57)
          {
            if ((BYTE1(v7[9].callbacks) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v29 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                v30 = nw_endpoint_get_logging_description(*&v7[6].flow_id[8]);
                *buf = 136446722;
                *&buf[4] = v7 + 603;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 2082;
                v70 = v30;
                _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s%sConnection disconnected from %{public}s without a reply", buf, 0x20u);
              }

              identifier = v7[9].identifier;
            }

            v31 = identifier + 9831;
            if (v31 <= 0x18 && ((1 << v31) & 0x187007D) != 0)
            {
              v32 = (HIBYTE(v7[9].identifier) & 4) == 0;
              v33 = 1206;
              v34 = 1106;
            }

            else
            {
              v32 = (HIBYTE(v7[9].identifier) & 4) == 0;
              v33 = 1200;
              v34 = 1100;
            }

            if (v32)
            {
              v35 = v34;
            }

            else
            {
              v35 = v33;
            }

            nw_masque_report_error_to_proxy_agent(&v7[1].output_handler, v35);
          }
        }
      }

      *&v7[9].flow_id[4] = 5;
      default_input_handler = v7->default_input_handler;
      if (!default_input_handler)
      {
        goto LABEL_106;
      }

      v36 = *(default_input_handler + 24);
      if (!v36)
      {
        goto LABEL_106;
      }

      v37 = *(v36 + 48);
      if (!v37)
      {
        goto LABEL_106;
      }

      v38 = *(default_input_handler + 40);
      v39 = v7->default_input_handler;
      if (v38 == &nw_protocol_ref_counted_handle || v38 == &nw_protocol_ref_counted_additional_handle && (v39 = *(default_input_handler + 64)) != 0)
      {
        v41 = v39[1].callbacks;
        v40 = 0;
        if (v41)
        {
          v39[1].callbacks = (&v41->add_input_handler + 1);
        }
      }

      else
      {
        v40 = 1;
      }

      v42 = v2->handle;
      v43 = v2;
      if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v43 = *v2[1].flow_id) != 0)
      {
        v44 = v43[1].callbacks;
        if (v44)
        {
          v43[1].callbacks = (&v44->add_input_handler + 1);
        }

        v37(default_input_handler, v2);
        v45 = v2->handle;
        v46 = v2;
        if (v45 == &nw_protocol_ref_counted_handle || v45 == &nw_protocol_ref_counted_additional_handle && (v46 = *v2[1].flow_id) != 0)
        {
          v47 = v46[1].callbacks;
          if (v47)
          {
            v48 = (v47 - 1);
            v46[1].callbacks = v48;
            if (!v48)
            {
              v49 = *v46[1].flow_id;
              if (v49)
              {
                *v46[1].flow_id = 0;
                v49[2](v49);
                _Block_release(v49);
              }

              if (v46[1].flow_id[8])
              {
                v50 = *v46[1].flow_id;
                if (v50)
                {
                  _Block_release(v50);
                }
              }

              free(v46);
            }
          }
        }
      }

      else
      {
        v37(default_input_handler, v2);
      }

      if (v40)
      {
        goto LABEL_106;
      }
    }

    v51 = *(default_input_handler + 40);
    if (v51 != &nw_protocol_ref_counted_handle)
    {
      if (v51 != &nw_protocol_ref_counted_additional_handle)
      {
        goto LABEL_106;
      }

      default_input_handler = *(default_input_handler + 64);
      if (!default_input_handler)
      {
        goto LABEL_106;
      }
    }

    v52 = *(default_input_handler + 88);
    if (!v52)
    {
      goto LABEL_106;
    }

    v53 = v52 - 1;
    *(default_input_handler + 88) = v53;
    if (v53)
    {
      goto LABEL_106;
    }

    v59 = *(default_input_handler + 64);
    if (v59)
    {
      *(default_input_handler + 64) = 0;
      v59[2](v59);
      _Block_release(v59);
    }

    if (*(default_input_handler + 72))
    {
      v60 = *(default_input_handler + 64);
      if (v60)
      {
        _Block_release(v60);
      }
    }

LABEL_46:
    free(default_input_handler);
    goto LABEL_106;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_masque_disconnected";
  default_input_handler = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v67 = 0;
  if (!__nwlog_fault(default_input_handler, &type, &v67))
  {
    goto LABEL_45;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_45;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_disconnected";
    v11 = "%{public}s called with null masque";
LABEL_43:
    v24 = v9;
    v25 = v10;
    goto LABEL_44;
  }

  if (v67 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_45;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_disconnected";
    v11 = "%{public}s called with null masque, backtrace limit exceeded";
    goto LABEL_43;
  }

  v20 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  v22 = type;
  v23 = os_log_type_enabled(gLogObj, type);
  if (!v20)
  {
    if (!v23)
    {
LABEL_45:
      if (!default_input_handler)
      {
        goto LABEL_106;
      }

      goto LABEL_46;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_disconnected";
    v11 = "%{public}s called with null masque, no backtrace";
    v24 = v21;
    v25 = v22;
LABEL_44:
    _os_log_impl(&dword_181A37000, v24, v25, v11, buf, 0xCu);
    goto LABEL_45;
  }

  if (v23)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_masque_disconnected";
    *&buf[12] = 2082;
    *&buf[14] = v20;
    _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v20);
  if (default_input_handler)
  {
    goto LABEL_46;
  }

LABEL_106:
  if ((v5 & 1) == 0)
  {
    v54 = v2->handle;
    if (v54 == &nw_protocol_ref_counted_handle || v54 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v55 = v2[1].callbacks;
      if (v55)
      {
        v56 = (v55 - 1);
        v2[1].callbacks = v56;
        if (!v56)
        {
          v57 = *v2[1].flow_id;
          if (v57)
          {
            *v2[1].flow_id = 0;
            v57[2](v57);
            _Block_release(v57);
          }

          if (v2[1].flow_id[8])
          {
            v58 = *v2[1].flow_id;
            if (v58)
            {
              _Block_release(v58);
            }
          }

LABEL_117:
          free(v2);
        }
      }
    }
  }
}