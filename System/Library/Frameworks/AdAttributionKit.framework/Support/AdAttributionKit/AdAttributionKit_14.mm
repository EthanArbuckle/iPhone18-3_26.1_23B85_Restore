char *sub_100147EAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D798, &qword_1001C18C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100147FCC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000CDE0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000CDE0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100148114(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D6C0, &qword_1001C1760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 472);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[472 * v8])
    {
      memmove(v12, v13, 472 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_100148240(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1001487C4();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1001487C4()
{
  v0 = String.subscript.getter();
  v4 = sub_100148844(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100148844(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10017B144(v9, 0);
  v12 = sub_10014899C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10014899C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100148BBC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100148BBC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100148BBC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
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

unsigned __int8 *sub_100148C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_10014B654();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001487C4();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1001491C8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  a1(&v6, &v7);
  sub_10014D078(*a4, *(a4 + 8));
  *a4 = v6;
  *(a4 + 8) = 0;
  return 1;
}

uint64_t sub_10014925C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_100149288(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000CDE0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 80) & ~v5;
  v7 = *(v4 + 64);

  sub_10000DB58((v2 + 24));
  v8 = *(v2 + 72);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100149380(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t, uint64_t, char *))
{
  v4 = *(sub_10000CDE0(a1, a2) - 8);
  v5 = v3[2];
  v6 = v3[8];
  v7 = v3[9];
  v8 = v3 + ((*(v4 + 80) + 80) & ~*(v4 + 80));

  return a3(v5, v3 + 3, v6, v7, v8);
}

uint64_t sub_100149424(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100149478()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1001494B0()
{
  result = qword_10023D640;
  if (!qword_10023D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D640);
  }

  return result;
}

uint64_t sub_100149538(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v27 = *a3;
  a1(v26, &v27);
  v5 = *(a4 + 112);
  v14[6] = *(a4 + 96);
  v14[7] = v5;
  v14[8] = *(a4 + 128);
  v15 = *(a4 + 144);
  v6 = *(a4 + 48);
  v14[2] = *(a4 + 32);
  v14[3] = v6;
  v7 = *(a4 + 80);
  v14[4] = *(a4 + 64);
  v14[5] = v7;
  v8 = *(a4 + 16);
  v14[0] = *a4;
  v14[1] = v8;
  sub_10000DAF8(v14, &qword_10023D758, &qword_1001C1860);
  v22 = v26[6];
  v23 = v26[7];
  v24 = v26[8];
  v18 = v26[2];
  v19 = v26[3];
  v20 = v26[4];
  v21 = v26[5];
  v16 = v26[0];
  v17 = v26[1];
  sub_10014B714(&v16);
  v9 = v23;
  *(a4 + 96) = v22;
  *(a4 + 112) = v9;
  *(a4 + 128) = v24;
  *(a4 + 144) = v25;
  v10 = v19;
  *(a4 + 32) = v18;
  *(a4 + 48) = v10;
  v11 = v21;
  *(a4 + 64) = v20;
  *(a4 + 80) = v11;
  v12 = v17;
  *a4 = v16;
  *(a4 + 16) = v12;
  return 1;
}

uint64_t sub_10014969C(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v16 = *a3;
  a1(v14, &v16);
  v5 = *(a4 + 80);
  v12[4] = *(a4 + 64);
  v12[5] = v5;
  v13 = *(a4 + 96);
  v6 = *(a4 + 16);
  v12[0] = *a4;
  v12[1] = v6;
  v7 = *(a4 + 48);
  v12[2] = *(a4 + 32);
  v12[3] = v7;
  sub_10000DAF8(v12, &qword_10023D800, &qword_1001C1938);
  v8 = *v15;
  *(a4 + 64) = v14[4];
  *(a4 + 80) = v8;
  *(a4 + 95) = *&v15[15];
  v9 = v14[1];
  *a4 = v14[0];
  *(a4 + 16) = v9;
  v10 = v14[3];
  *(a4 + 32) = v14[2];
  *(a4 + 48) = v10;
  result = 1;
  *(a4 + 99) = 0;
  return result;
}

uint64_t sub_1001497A8(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14 = *a3;
  a1(v12, &v14);
  v5 = *(a4 + 48);
  v10[2] = *(a4 + 32);
  v10[3] = v5;
  v11[0] = *(a4 + 64);
  *(v11 + 9) = *(a4 + 73);
  v6 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v6;
  sub_10000DAF8(v10, &qword_10023D6E8, &qword_1001C1798);
  v7 = v12[3];
  *(a4 + 32) = v12[2];
  *(a4 + 48) = v7;
  *(a4 + 64) = v12[4];
  *(a4 + 80) = v13;
  v8 = v12[1];
  *a4 = v12[0];
  *(a4 + 16) = v8;
  result = 1;
  *(a4 + 88) = 0;
  return result;
}

uint64_t sub_1001498B4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  a1(&v6, &v7);
  sub_10014C0D4(*a4, *(a4 + 8));
  *a4 = v6;
  *(a4 + 8) = 0;
  return 1;
}

uint64_t sub_100149948(void (*a1)(unsigned __int8 *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  a1(&v6, &v7);
  sub_10014C0D4(*a4, *(a4 + 8));
  *a4 = v6;
  *(a4 + 8) = 0;
  return 1;
}

double sub_1001499DC@<D0>(void *a1@<X0>, void (*a2)(_OWORD *__return_ptr, void)@<X1>, uint64_t a3@<X8>)
{
  a2(v9, *a1);
  if (!v3)
  {
    v6 = v10;
    v7 = v11;
    result = *v9;
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    *(a3 + 32) = v6;
    *(a3 + 40) = v7;
  }

  return result;
}

uint64_t sub_100149A34(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v12 = *a3;
  a1(v9, &v12);
  sub_10014AE38(*a4, *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), *(a4 + 41));
  v5 = v10;
  v6 = v11;
  v7 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;
  return 1;
}

uint64_t sub_100149AFC(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v17 = *a3;
  a1(v16, &v17);
  v9 = *(a4 + 48);
  v14[2] = *(a4 + 32);
  v14[3] = v9;
  v15 = *(a4 + 64);
  v10 = *(a4 + 16);
  v14[0] = *a4;
  v14[1] = v10;
  sub_10000DAF8(v14, a5, a6);
  v11 = v16[1];
  *a4 = v16[0];
  *(a4 + 16) = v11;
  v12 = v16[3];
  *(a4 + 32) = v16[2];
  *(a4 + 48) = v12;
  result = 1;
  *(a4 + 64) = 0;
  return result;
}

uint64_t sub_100149BF0(void (*a1)(uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v15 = sub_10000CDE0(a5, a6);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v20 - v17;
  v21 = *a3;
  a1(&v21);
  sub_10000DAF8(a4, a7, a8);
  sub_10014AFF8(v18, a4, a5, a6);
  sub_10000CDE0(a7, a8);
  swift_storeEnumTagMultiPayload();
  return 1;
}

uint64_t sub_100149D24(void (*a1)(uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  a1(&v6);
  sub_10014C0D4(*a4, *(a4 + 8));
  *a4 = 0;
  *(a4 + 8) = 0;
  return 1;
}

uint64_t sub_100149D98(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = *a3;
  a1(&v7, &v9);
  sub_10014BA6C(*a4, *(a4 + 8), *(a4 + 9));
  v5 = v8;
  *a4 = v7;
  *(a4 + 8) = v5;
  return 1;
}

double sub_100149E3C@<D0>(void *a1@<X0>, void (*a2)(_OWORD *__return_ptr, void)@<X1>, uint64_t a3@<X8>)
{
  a2(v9, *a1);
  if (!v3)
  {
    v6 = v10;
    result = *v9;
    v7 = v9[1];
    v8 = v9[2];
    *a3 = v9[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
    *(a3 + 48) = v6;
  }

  return result;
}

uint64_t sub_100149E94(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14 = *a3;
  a1(&v10, &v14);
  v5 = *(a4 + 16);
  v8[0] = *a4;
  v8[1] = v5;
  v9[0] = *(a4 + 32);
  *(v9 + 9) = *(a4 + 41);
  sub_10000DAF8(v8, &qword_10023D670, &qword_1001C16D8);
  v6 = v10;
  *(a4 + 8) = v11;
  *(a4 + 24) = v12;
  *(a4 + 40) = v13;
  result = 1;
  *a4 = v6;
  *(a4 + 56) = 0;
  return result;
}

uint64_t sub_100149F90(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14 = *a3;
  a1(v12, &v14);
  v5 = *(a4 + 48);
  v10[2] = *(a4 + 32);
  v11[0] = v5;
  *(v11 + 9) = *(a4 + 57);
  v6 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v6;
  sub_10000DAF8(v10, &qword_10023D868, &qword_1001C19F8);
  v7 = v12[3];
  *(a4 + 32) = v12[2];
  *(a4 + 48) = v7;
  *(a4 + 64) = v13;
  v8 = v12[1];
  *a4 = v12[0];
  *(a4 + 16) = v8;
  result = 1;
  *(a4 + 72) = 0;
  return result;
}

uint64_t sub_10014A0F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10014A1D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014A22C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_100133AF0(a1, a2, v7, v6);
}

unint64_t sub_10014A2E0()
{
  result = qword_10023D658;
  if (!qword_10023D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D658);
  }

  return result;
}

uint64_t sub_10014A334()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  v6 = *(v0 + 176);

  v7 = *(v0 + 192);

  v8 = *(v0 + 216);

  v9 = *(v0 + 256);

  v10 = *(v0 + 336);

  v11 = *(v0 + 360);

  v12 = *(v0 + 384);

  v13 = *(v0 + 408);

  v14 = *(v0 + 432);

  v15 = *(v0 + 456);

  v16 = *(v0 + 480);

  sub_10000DB58((v0 + 496));
  v17 = *(v0 + 544);

  sub_10000DB58((v0 + 560));
  sub_10000DB58((v0 + 600));
  sub_10000DB58((v0 + 640));
  sub_10000DB58((v0 + 680));
  sub_10000DB58((v0 + 720));
  sub_10000DB58((v0 + 760));
  v18 = *(v0 + 800);

  sub_10000DB58((v0 + 808));
  sub_10000DB58((v0 + 848));
  sub_10000DB58((v0 + 888));

  return _swift_deallocObject(v0, 928, 7);
}

uint64_t sub_10014A484(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000152E0;

  return sub_100134064(a1, v4, v5, v1 + 32, v1 + 328);
}

uint64_t sub_10014A538()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014A570(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000152E0;

  return sub_1000147B8(a1, v5);
}

void sub_10014A6DC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 188);
  sub_10004E850();
}

uint64_t sub_10014A70C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000BD30;

  return sub_1001371A4(v2, v3);
}

uint64_t sub_10014A9D4()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10014AA90()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[12];

  v4 = v0[14];

  v5 = v0[20];

  v6 = v0[22];

  v7 = v0[25];

  v8 = v0[30];

  return _swift_deallocObject(v0, 305, 7);
}

unint64_t sub_10014AB1C()
{
  result = qword_10023D688;
  if (!qword_10023D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D688);
  }

  return result;
}

unint64_t sub_10014ACC4()
{
  result = qword_10023D6D8;
  if (!qword_10023D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D6D8);
  }

  return result;
}

unint64_t sub_10014AD70()
{
  result = qword_10023D6F0;
  if (!qword_10023D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D6F0);
  }

  return result;
}

uint64_t sub_10014AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  return result;
}

unint64_t sub_10014AE44()
{
  result = qword_10023D718;
  if (!qword_10023D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D718);
  }

  return result;
}

double sub_10014AEE0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(v10, *a1);
  if (!v3)
  {
    v8 = v10[1];
    *a2 = v10[0];
    a2[1] = v8;
    result = *&v11;
    v9 = v12;
    a2[2] = v11;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_10014AFF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CDE0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for PostbackUpdateData()
{
  result = qword_10023D8C8;
  if (!qword_10023D8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014B138(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014B1A8@<X0>(uint64_t (*a1)(void, void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10014B1E8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100148BBC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100148BBC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100148BBC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_10014B654()
{
  result = qword_10023D748;
  if (!qword_10023D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D748);
  }

  return result;
}

unint64_t sub_10014B71C()
{
  result = qword_10023D760;
  if (!qword_10023D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D760);
  }

  return result;
}

id sub_10014B824@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = sub_100156DD0();
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v7 & 1;
  }

  return result;
}

void sub_10014B8EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10016AF80();
}

unint64_t sub_10014B970()
{
  result = qword_10023D780;
  if (!qword_10023D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D780);
  }

  return result;
}

void *sub_10014BA0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v9, *a1);
  if (!v3)
  {
    v8 = v10;
    *a2 = v9;
    *(a2 + 8) = v8;
  }

  return result;
}

uint64_t sub_10014BA6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 sub_10014BAD8@<Q0>(void (*a1)(_OWORD *__return_ptr, void, void)@<X1>, uint64_t a2@<X8>)
{
  a1(v9, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    v6 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v6;
    *(a2 + 128) = v9[8];
    v7 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v7;
    v8 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v8;
    result = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10014BB88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result != 1)
  {

    return sub_1000D5520(a6, a7);
  }

  return result;
}

unint64_t sub_10014BC00()
{
  result = qword_10023D7B0;
  if (!qword_10023D7B0)
  {
    sub_10000CCC0(&qword_10023D7A8, &qword_1001C1900);
    sub_10014BC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7B0);
  }

  return result;
}

unint64_t sub_10014BC84()
{
  result = qword_10023D7B8;
  if (!qword_10023D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7B8);
  }

  return result;
}

uint64_t sub_10014BCD8()
{
  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    sub_10001BABC(v0[4], v1);
  }

  v2 = v0[7];
  if (v2 >> 60 != 15)
  {
    sub_10001BABC(v0[6], v2);
  }

  v3 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10014BD5C()
{
  result = qword_10023D7C8;
  if (!qword_10023D7C8)
  {
    sub_10000CCC0(&qword_10023D7C0, &qword_1001C1908);
    sub_10014BDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7C8);
  }

  return result;
}

unint64_t sub_10014BDE0()
{
  result = qword_10023D7D0;
  if (!qword_10023D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7D0);
  }

  return result;
}

uint64_t sub_10014BE4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C0F60(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10014BE88()
{
  result = qword_10023D7D8;
  if (!qword_10023D7D8)
  {
    sub_10000CCC0(&qword_10023D7C0, &qword_1001C1908);
    sub_10014BF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7D8);
  }

  return result;
}

unint64_t sub_10014BF0C()
{
  result = qword_10023D7E0;
  if (!qword_10023D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7E0);
  }

  return result;
}

void *sub_10014C07C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_10014C0D4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_10014C128@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_10014C1AC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10014C1E8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000BD30;

  return sub_10013CFE8(a1, a2, v7, v6);
}

uint64_t sub_10014C29C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  v3 = *(v0 + 96);

  v4 = *(v0 + 184);

  v5 = *(v0 + 192);

  v6 = *(v0 + 208);

  v7 = *(v0 + 232);

  v8 = *(v0 + 256);

  v9 = *(v0 + 280);

  v10 = *(v0 + 304);

  v11 = *(v0 + 328);

  v12 = *(v0 + 352);

  sub_10000DB58((v0 + 368));
  v13 = *(v0 + 416);

  sub_10000DB58((v0 + 432));
  sub_10000DB58((v0 + 472));
  sub_10000DB58((v0 + 512));
  sub_10000DB58((v0 + 552));
  sub_10000DB58((v0 + 592));
  sub_10000DB58((v0 + 632));
  v14 = *(v0 + 672);

  sub_10000DB58((v0 + 680));
  sub_10000DB58((v0 + 720));
  sub_10000DB58((v0 + 760));
  v15 = *(v0 + 808);

  return _swift_deallocObject(v0, 842, 7);
}

uint64_t sub_10014C3D4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  v13 = *(v1 + 816);
  v14 = *(v1 + 800);
  v8 = *(v1 + 832);
  v9 = *(v1 + 840);
  v10 = *(v1 + 841);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_10013E494(a1, v15, v4, v1 + 32, v5, v6, v7, v1 + 200);
}

__n128 sub_10014C4EC@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result.n128_u64[0] = sub_10005E074(v9).n128_u64[0];
  if (!v2)
  {
    v7 = *v10;
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    *(a1 + 95) = *&v10[15];
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_10014C558()
{
  result = qword_10023C5D0;
  if (!qword_10023C5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10023C5D0);
  }

  return result;
}

unint64_t sub_10014C5A4()
{
  result = qword_10023D818;
  if (!qword_10023D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D818);
  }

  return result;
}

uint64_t sub_10014C5F8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 88);

  return _swift_deallocObject(v0, 168, 7);
}

__n128 sub_10014C638@<Q0>(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v5 = v1[10];
  v6 = v1[11];
  result.n128_u64[0] = sub_1000C1604(v9).n128_u64[0];
  if (!v2)
  {
    v8 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v8;
    *(a1 + 64) = v10;
    result = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10014C744(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000438D8(a1, a2);
  }

  return a1;
}

unint64_t sub_10014C758()
{
  result = qword_10023D820;
  if (!qword_10023D820)
  {
    sub_10000CCC0(&qword_10023D7A8, &qword_1001C1900);
    sub_10014C7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D820);
  }

  return result;
}

unint64_t sub_10014C7DC()
{
  result = qword_10023D828;
  if (!qword_10023D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D828);
  }

  return result;
}

uint64_t sub_10014C830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E6658(*(v1 + 72), *(v1 + 80));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10014C868()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 160, 7);
}

void sub_10014C8A8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_10004F7B0();
}

unint64_t sub_10014C928()
{
  result = qword_10023D850;
  if (!qword_10023D850)
  {
    sub_10000CCC0(&qword_10023D848, &unk_1001C19E0);
    sub_10014C9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D850);
  }

  return result;
}

unint64_t sub_10014C9AC()
{
  result = qword_10023D858;
  if (!qword_10023D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D858);
  }

  return result;
}

uint64_t sub_10014CA00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014CA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023D840, &qword_1001C19D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014CB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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

  else
  {
    v9 = type metadata accessor for Date();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10014CC00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10014CCA4()
{
  sub_100079458(319, &qword_10023D8D8);
  if (v0 <= 0x3F)
  {
    sub_10014CD90();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_100079458(319, &qword_10023A198);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10014CD90()
{
  if (!qword_10023D8E0)
  {
    sub_10000CCC0(&unk_10023D8E8, &qword_1001C7A60);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10023D8E0);
    }
  }
}

uint64_t sub_10014CDF4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014CE0C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 24))
  {
    return (*a1 + 2147483636);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014CE64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

void *sub_10014CEB8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_10014CF08(uint64_t a1)
{
  result = sub_10003FB4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10014CF34()
{
  result = qword_10023D928;
  if (!qword_10023D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D928);
  }

  return result;
}

unint64_t sub_10014CF88(uint64_t a1)
{
  result = sub_1000401C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10014CFB0(uint64_t a1)
{
  result = sub_10014C5A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10014CFDC()
{
  result = qword_10023D930;
  if (!qword_10023D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D930);
  }

  return result;
}

uint64_t sub_10014D078(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10014D084()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10014D10C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(type metadata accessor for Date() - 8) + 80);
  result = sub_1000E40C8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10014D70C()
{
  result = qword_10023D950;
  if (!qword_10023D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D950);
  }

  return result;
}

void sub_10014D770(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_10014D99C(a2);
  }
}

unint64_t sub_10014D7A8(void *a1)
{
  a1[1] = sub_10014D7E0();
  a1[2] = sub_10014D834();
  result = sub_10014D888();
  a1[3] = result;
  return result;
}

unint64_t sub_10014D7E0()
{
  result = qword_10023D998;
  if (!qword_10023D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D998);
  }

  return result;
}

unint64_t sub_10014D834()
{
  result = qword_10023D9A0;
  if (!qword_10023D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9A0);
  }

  return result;
}

unint64_t sub_10014D888()
{
  result = qword_10023D9A8;
  if (!qword_10023D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9A8);
  }

  return result;
}

unint64_t sub_10014D8E0()
{
  result = qword_10023D9B0;
  if (!qword_10023D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9B0);
  }

  return result;
}

unint64_t sub_10014D938()
{
  result = qword_10023D9B8;
  if (!qword_10023D9B8)
  {
    sub_10000CCC0(&qword_10023D9C0, &qword_1001C1F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9B8);
  }

  return result;
}

void sub_10014D99C(uint64_t a1)
{
  _StringGuts.grow(_:)(110);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for AppDistributorMetadataEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._object = 0x80000001001CA000;
  v9._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000015;
  v11._object = 0x80000001001CAEA0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C5458455420;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x737265765F707061;
  v13._object = 0xEE0064695F6E6F69;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x52454745544E4920;
  v14._object = 0xEA00000000000A2CLL;
  String.append(_:)(v14);
  v15._object = 0x80000001001CA620;
  v15._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x80000001001CB530;
  String.append(_:)(v16);
  v17._object = 0x80000001001CA000;
  v17._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD000000000000018;
  v18._object = 0x80000001001CB550;
  String.append(_:)(v18);
  v19 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v19);
}

uint64_t sub_10014DBE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6F6973726556736FLL;
  v5 = 0xE90000000000006ELL;
  if (a1 != 6)
  {
    v4 = 0x656E6F7A656D6974;
    v5 = 0xEE0074657366664FLL;
  }

  v6 = 0x56646C697542736FLL;
  v7 = 0xEE006E6F69737265;
  if (a1 != 4)
  {
    v6 = 0x656D614E736FLL;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7372655665736162;
  v9 = 0xEB000000006E6F69;
  if (a1 != 2)
  {
    v8 = 0x726556746E657665;
    v9 = 0xEC0000006E6F6973;
  }

  v10 = 0x6973726556707061;
  if (a1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  else
  {
    v10 = 7368801;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE90000000000006ELL;
        if (v11 != 0x6F6973726556736FLL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v14 = 0x656E6F7A656D6974;
      v15 = 0x74657366664FLL;
    }

    else
    {
      if (a2 != 4)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x656D614E736FLL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v14 = 0x56646C697542736FLL;
      v15 = 0x6E6F69737265;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v11 != v14)
    {
LABEL_45:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_46;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEB000000006E6F69;
      if (v11 != 0x7372655665736162)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEC0000006E6F6973;
      if (v11 != 0x726556746E657665)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006E6FLL;
    if (v11 != 0x6973726556707061)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7368801)
    {
      goto LABEL_45;
    }
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_10014DE9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x697274732D73776ALL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x676E69726564726FLL;
      v6 = 0xEE007865646E692DLL;
    }

    else
    {
      v6 = 0x80000001001CA560;
      v5 = 0xD000000000000016;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x697274732D73776ALL;
    }

    if (v4)
    {
      v6 = 0x80000001001CA540;
    }

    else
    {
      v6 = 0xEA0000000000676ELL;
    }
  }

  v7 = 0x676E69726564726FLL;
  v8 = 0x80000001001CA560;
  if (a2 == 2)
  {
    v8 = 0xEE007865646E692DLL;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (a2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001001CA540;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10014E000(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064695F6E6F69;
  v3 = 0xD000000000000012;
  v4 = 0x737265765F707061;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x737265765F707061;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5 == 2)
    {
      v7 = 0xEE0064695F6E6F69;
    }

    else
    {
      v7 = 0x80000001001CA620;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5)
    {
      v7 = 0x80000001001CAEA0;
    }

    else
    {
      v7 = 0x80000001001CA000;
    }
  }

  if (a2 != 2)
  {
    v4 = 0xD000000000000012;
    v2 = 0x80000001001CA620;
  }

  v8 = 0x80000001001CAEA0;
  if (a2)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v8 = 0x80000001001CA000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10014E12C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000064695F6E6FLL;
  v3 = 0x69737265766E6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x69737265766E6F63;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0xEF657079745F6E6FLL;
    }

    else
    {
      v6 = 0x80000001001CA620;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x69737265766E6F63;
    }

    if (v4)
    {
      v6 = 0x80000001001CA000;
    }

    else
    {
      v6 = 0xED000064695F6E6FLL;
    }
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001001CA620;
  if (a2 == 2)
  {
    v7 = 0x69737265766E6F63;
    v8 = 0xEF657079745F6E6FLL;
  }

  if (a2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001001CA000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10014E270(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7265206E656B6F74;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726F72;
    }

    else
    {
      v5 = 0x80000001001CA1A0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7265747369676572;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEE00726F72726520;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x7265206E656B6F74;
  v8 = 0x80000001001CA1A0;
  if (a2 == 2)
  {
    v8 = 0xEB00000000726F72;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x7265747369676572;
    v6 = 0xEE00726F72726520;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10014E3DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000064695F6E6FLL;
  v3 = 0x69737265766E6F63;
  v4 = a1;
  v5 = 0xD000000000000014;
  v6 = 0x6C7074656B72616DLL;
  v7 = 0xEE0064695F656361;
  if (a1 != 4)
  {
    v6 = 0x5F7972746E756F63;
    v7 = 0xEC00000065646F63;
  }

  if (a1 == 3)
  {
    v8 = 0x80000001001CA030;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0xD000000000000012;
  v10 = 0x80000001001CA000;
  v11 = 0xEF657079745F6E6FLL;
  if (a1 == 1)
  {
    v11 = 0xED000064695F6E6FLL;
  }

  if (a1)
  {
    v9 = 0x69737265766E6F63;
    v10 = v11;
  }

  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (v4 <= 2)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0xEE0064695F656361;
        if (v12 != 0x6C7074656B72616DLL)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0xEC00000065646F63;
        if (v12 != 0x5F7972746E756F63)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v2 = 0x80000001001CA030;
    v3 = 0xD000000000000014;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x80000001001CA000;
      if (v12 != 0xD000000000000012)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xEF657079745F6E6FLL;
      if (v12 != 0x69737265766E6F63)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

uint64_t sub_10014E5D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "skan_impression_data";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "agementPostbackCopies";
      v4 = 0xD000000000000031;
    }

    else
    {
      v5 = "appingConversions";
      v4 = 0xD00000000000001ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000035;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (v3)
    {
      v5 = "AttributionCopyEndpoint";
    }

    else
    {
      v5 = "skan_impression_data";
    }
  }

  if (a2 > 1u)
  {
    v2 = "agementPostbackCopies";
    v6 = "appingConversions";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000031;
    }

    else
    {
      v8 = 0xD00000000000001ELL;
    }
  }

  else
  {
    v6 = "AttributionCopyEndpoint";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000035;
    }

    else
    {
      v8 = 0xD000000000000017;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10014E6FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064695F6BLL;
  v3 = 0xD000000000000012;
  v4 = 0x63616274736F6867;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x63616274736F6867;
    }

    if (v5 == 2)
    {
      v7 = 0x80000001001CA000;
    }

    else
    {
      v7 = 0xEC00000064695F6BLL;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5)
    {
      v7 = 0x80000001001CADB0;
    }

    else
    {
      v7 = 0x80000001001CAD90;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000012;
    v2 = 0x80000001001CA000;
  }

  v8 = 0x80000001001CADB0;
  if (a2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v8 = 0x80000001001CAD90;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10014E824(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x697274732D73776ALL;
    }

    if (v2)
    {
      v3 = 0x80000001001CA540;
    }

    else
    {
      v3 = 0xEA0000000000676ELL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000001001CAD50;
    v4 = 0xD000000000000010;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000001001CAD70;
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0x2D7972746E756F63;
    v3 = 0xEC00000065646F63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x697274732D73776ALL;
    }

    if (a2)
    {
      v5 = 0x80000001001CA540;
    }

    else
    {
      v5 = 0xEA0000000000676ELL;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001001CAD50;
    if (v4 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001001CAD70;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC00000065646F63;
    if (v4 != 0x2D7972746E756F63)
    {
LABEL_31:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_10014E9D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x2D6465646E696C62;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEF746E656D656C65;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6D617473656D6974;
    v4 = 0xE900000000000070;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6564692D6D657469;
    }

    else
    {
      v3 = 0x6D6E6F7269766E65;
    }

    if (v2 == 3)
    {
      v4 = 0xEF7265696669746ELL;
    }

    else
    {
      v4 = 0xEB00000000746E65;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x2D6465646E696C62;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xEF746E656D656C65;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000070;
    if (v3 != 0x6D617473656D6974)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEF7265696669746ELL;
    if (v3 != 0x6564692D6D657469)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEB00000000746E65;
    if (v3 != 0x6D6E6F7269766E65)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_10014EBB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006F66;
  v3 = 0x6E692D6E656B6F74;
  v4 = a1;
  v5 = 0x2D7972746E756F63;
  v6 = 0xEC00000065646F63;
  if (a1 == 5)
  {
    v5 = 0x6D6E6F7269766E65;
    v6 = 0xEB00000000746E65;
  }

  v7 = 0x80000001001CAD10;
  v8 = 0xD000000000000017;
  if (a1 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x80000001001CAD30;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x80000001001CACD0;
  v10 = 0xD000000000000025;
  v11 = 0x6973736572706D69;
  v12 = 0xEB00000000736E6FLL;
  if (a1 == 1)
  {
    v11 = 0x6E692D6E656B6F74;
    v12 = 0xEA00000000006F66;
  }

  if (a1)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  if (v4 <= 2)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0x80000001001CAD10;
        if (v13 != 0xD000000000000017)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v3 = 0xD000000000000016;
      v2 = 0x80000001001CAD30;
      goto LABEL_33;
    }

    if (a2 != 5)
    {
      v2 = 0xEC00000065646F63;
      if (v13 != 0x2D7972746E756F63)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v15 = 0x6D6E6F7269766E65;
    v16 = 7630437;
LABEL_28:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v13 != v15)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    v2 = 0x80000001001CACD0;
    if (v13 != 0xD000000000000025)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (a2 != 1)
  {
    v15 = 0x6973736572706D69;
    v16 = 7564911;
    goto LABEL_28;
  }

LABEL_33:
  if (v13 != v3)
  {
LABEL_37:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

LABEL_34:
  if (v14 != v2)
  {
    goto LABEL_37;
  }

  v17 = 1;
LABEL_38:

  return v17 & 1;
}

uint64_t sub_10014EDF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x69737265766E6F63;
  v3 = a1;
  if (a1 <= 3u)
  {
    v6 = 0x5F65746176697270;
    v7 = 0xED00007475706E69;
    if (a1 != 2)
    {
      v6 = 0x657A696C616E6966;
      v7 = 0xEF6E656B6F745F64;
    }

    v8 = 0xD000000000000012;
    v9 = 0x80000001001CA000;
    if (!a1)
    {
      v8 = 0x69737265766E6F63;
      v9 = 0xED000064695F6E6FLL;
    }

    if (a1 <= 1u)
    {
      v4 = v8;
    }

    else
    {
      v4 = v6;
    }

    if (v3 <= 1)
    {
      v5 = v9;
    }

    else
    {
      v5 = v7;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v4 = 0x6D617473656D6974;
      v5 = 0xE900000000000070;
    }

    else
    {
      v4 = 0x6369666974726563;
      v5 = 0xEB00000000657461;
    }
  }

  else if (a1 == 6)
  {
    v5 = 0xEF657079745F6E6FLL;
    v4 = 0x69737265766E6F63;
  }

  else if (a1 == 7)
  {
    v4 = 0x6D6E6F7269766E65;
    v5 = 0xEB00000000746E65;
  }

  else
  {
    v4 = 0x636F6C6C615F7369;
    v5 = 0xEC00000064657461;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v12 = 0xED00007475706E69;
        if (v4 != 0x5F65746176697270)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v12 = 0xEF6E656B6F745F64;
        if (v4 != 0x657A696C616E6966)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (a2)
      {
        v2 = 0xD000000000000012;
        v12 = 0x80000001001CA000;
      }

      else
      {
        v12 = 0xED000064695F6E6FLL;
      }

      if (v4 != v2)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v12 = 0xE900000000000070;
        if (v4 != 0x6D617473656D6974)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v10 = 0x6369666974726563;
      v11 = 6648929;
    }

    else
    {
      if (a2 == 6)
      {
        v12 = 0xEF657079745F6E6FLL;
        if (v4 != 0x69737265766E6F63)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      if (a2 != 7)
      {
        v12 = 0xEC00000064657461;
        if (v4 != 0x636F6C6C615F7369)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v10 = 0x6D6E6F7269766E65;
      v11 = 7630437;
    }

    v12 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v4 != v10)
    {
LABEL_48:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_49;
    }
  }

LABEL_46:
  if (v5 != v12)
  {
    goto LABEL_48;
  }

  v13 = 1;
LABEL_49:

  return v13 & 1;
}

uint64_t sub_10014F118(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x697274732D73776ALL;
    }

    if (v2)
    {
      v4 = 0x80000001001CA540;
    }

    else
    {
      v4 = 0xEA0000000000676ELL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x676E69726564726FLL;
    v4 = 0xEE007865646E692DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001001CA560;
    }

    else
    {
      v4 = 0x80000001001CA580;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0x697274732D73776ALL;
    }

    if (a2)
    {
      v6 = 0x80000001001CA540;
    }

    else
    {
      v6 = 0xEA0000000000676ELL;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEE007865646E692DLL;
    if (v3 != 0x676E69726564726FLL)
    {
LABEL_37:
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001001CA560;
    }

    else
    {
      v6 = 0x80000001001CA580;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_10014F2BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x697274732D73776ALL;
  v4 = a1;
  v5 = 0xD000000000000015;
  v6 = 0x676E69726564726FLL;
  v7 = 0xEE007865646E692DLL;
  if (a1 != 4)
  {
    v6 = 0x2D7972746E756F63;
    v7 = 0xEC00000065646F63;
  }

  if (a1 == 3)
  {
    v8 = 0x80000001001CAA80;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0x6B63616274736F70;
  v10 = 0xEC0000006C72752DLL;
  if (a1 != 1)
  {
    v9 = 0xD000000000000013;
    v10 = 0x80000001001CA540;
  }

  if (!a1)
  {
    v9 = 0x697274732D73776ALL;
    v10 = 0xEA0000000000676ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0x6B63616274736F70;
        v14 = 1819440429;
        goto LABEL_30;
      }

      v3 = 0xD000000000000013;
      v2 = 0x80000001001CA540;
    }

    if (v11 != v3)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 == 3)
  {
    v2 = 0x80000001001CAA80;
    if (v11 != 0xD000000000000015)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 == 4)
  {
    v2 = 0xEE007865646E692DLL;
    if (v11 != 0x676E69726564726FLL)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v13 = 0x2D7972746E756F63;
  v14 = 1701080931;
LABEL_30:
  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v13)
  {
LABEL_33:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

LABEL_31:
  if (v12 != v2)
  {
    goto LABEL_33;
  }

  v15 = 1;
LABEL_34:

  return v15 & 1;
}

uint64_t sub_10014F4C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE800000000000000;
    v13 = 0x69737265766E6F63;
    v14 = 0xED000064695F6E6FLL;
    if (a1 != 2)
    {
      v13 = 0xD000000000000014;
      v14 = 0x80000001001CA030;
    }

    if (a1)
    {
      v15 = 0xD000000000000012;
    }

    else
    {
      v15 = 0x64695F79726F7473;
    }

    if (a1)
    {
      v12 = 0x80000001001CA000;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v14;
    }
  }

  else
  {
    v4 = 0x5F676E69646E6570;
    v5 = 0xEE0073746E657665;
    v6 = 0x80000001001CA0A0;
    v7 = 0xD000000000000017;
    if (a1 == 7)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x80000001001CA0C0;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x80000001001CA050;
    v9 = 0xD000000000000010;
    if (a1 != 4)
    {
      v9 = 0xD000000000000011;
      v8 = 0x80000001001CA070;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x69737265766E6F63;
        v17 = 0xED000064695F6E6FLL;
      }

      else
      {
        v17 = 0x80000001001CA030;
        v2 = 0xD000000000000014;
      }
    }

    else if (a2)
    {
      v17 = 0x80000001001CA000;
      v2 = 0xD000000000000012;
    }

    else
    {
      v17 = 0xE800000000000000;
      v2 = 0x64695F79726F7473;
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v16 = "is_story_complete";
      goto LABEL_45;
    }

    v17 = 0x80000001001CA050;
    v2 = 0xD000000000000010;
  }

  else if (a2 == 6)
  {
    v2 = 0x5F676E69646E6570;
    v17 = 0xEE0073746E657665;
  }

  else
  {
    if (a2 == 7)
    {
      v16 = "total_event_count";
LABEL_45:
      v17 = (v16 - 32) | 0x8000000000000000;
      goto LABEL_46;
    }

    v17 = 0x80000001001CA0C0;
    v2 = 0xD000000000000017;
  }

LABEL_46:
  if (v10 == v2 && v11 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

uint64_t sub_10014F764(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656DLL;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F635F7972746572;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000746E75;
    }

    else
    {
      v6 = 0x80000001001CA100;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x616E5F70756F7267;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0x6F635F7972746572;
  v8 = 0x80000001001CA100;
  if (a2 == 2)
  {
    v8 = 0xEB00000000746E75;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (a2)
  {
    v3 = 0x616E5F70756F7267;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10014F8B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65636E6F6ELL;
  if (a1 != 5)
  {
    v5 = 0x65646F6363;
    v4 = 0xE500000000000000;
  }

  v6 = 7627113;
  if (a1 != 3)
  {
    v6 = 7566185;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE300000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 0x6570797464;
  if (a1 == 1)
  {
    v8 = 6580578;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6583649;
  }

  if (a1)
  {
    v3 = v7;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6583649)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6580578)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    v12 = 0xE500000000000000;
    v13 = 1887007844;
  }

  else
  {
    if (a2 <= 4u)
    {
      v12 = 0xE300000000000000;
      if (a2 == 3)
      {
        if (v10 != 7627113)
        {
          goto LABEL_41;
        }
      }

      else if (v10 != 7566185)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    v12 = 0xE500000000000000;
    if (a2 == 5)
    {
      v13 = 1668181870;
    }

    else
    {
      v13 = 1685021539;
    }
  }

  if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
  {
LABEL_41:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_42;
  }

LABEL_39:
  if (v11 != v12)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_10014FA70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000064695F6B72;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xED000064695F6E6FLL;
    v13 = 0x80000001001CA000;
    v14 = 0x6F7774656E5F6461;
    if (a1 == 2)
    {
      v14 = 0xD000000000000012;
    }

    else
    {
      v13 = 0xED000064695F6B72;
    }

    v15 = 0xD000000000000011;
    if (a1)
    {
      v12 = 0x80000001001CA650;
    }

    else
    {
      v15 = 0x6973736572706D69;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v4 = 0x5F746361706D6F63;
    v5 = 0xEB0000000073776ALL;
    v6 = 0x80000001001CA620;
    v7 = 0x6D6E6F7269766E65;
    if (a1 == 7)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xEB00000000746E65;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x6D617473656D6974;
    if (a1 == 4)
    {
      v9 = 0xE900000000000070;
    }

    else
    {
      v8 = 0xD000000000000010;
      v9 = 0x80000001001CA670;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (v10 != 0x6F7774656E5F6461)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

      v16 = "advertised_item_id";
      goto LABEL_39;
    }

    if (a2)
    {
      v2 = 0x80000001001CA650;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v2 = 0xED000064695F6E6FLL;
      if (v10 != 0x6973736572706D69)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v17 = 0x5F746361706D6F63;
        v18 = 7567210;
      }

      else
      {
        if (a2 == 7)
        {
          v16 = "creation_timestamp";
LABEL_39:
          v2 = (v16 - 32) | 0x8000000000000000;
          if (v10 != 0xD000000000000012)
          {
            goto LABEL_55;
          }

          goto LABEL_53;
        }

        v17 = 0x6D6E6F7269766E65;
        v18 = 7630437;
      }

      v2 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v10 != v17)
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    if (a2 == 4)
    {
      v2 = 0xE900000000000070;
      if (v10 != 0x6D617473656D6974)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v2 = 0x80000001001CA670;
      if (v10 != 0xD000000000000010)
      {
LABEL_55:
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_56;
      }
    }
  }

LABEL_53:
  if (v11 != v2)
  {
    goto LABEL_55;
  }

  v19 = 1;
LABEL_56:

  return v19 & 1;
}

uint64_t sub_10014FD64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7265696669746ELL;
  v3 = 0x6564692D6D657469;
  v4 = a1;
  v5 = 0x6369666974726563;
  v6 = 0xEB00000000657461;
  if (a1 != 5)
  {
    v5 = 0x6D6E6F7269766E65;
    v6 = 0xEB00000000746E65;
  }

  v7 = 0x776F6465722D7369;
  v8 = 0xED000064616F6C6ELL;
  if (a1 != 3)
  {
    v7 = 0x6D617473656D6974;
    v8 = 0xE900000000000070;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x2D65746176697270;
  v10 = 0xED00007475706E69;
  if (a1 != 1)
  {
    v9 = 0x65696C632D667270;
    v10 = 0xEA0000000000746ELL;
  }

  if (!a1)
  {
    v9 = 0x6564692D6D657469;
    v10 = 0xEF7265696669746ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v15 = 0x6369666974726563;
        v16 = 6648929;
      }

      else
      {
        v15 = 0x6D6E6F7269766E65;
        v16 = 7630437;
      }

      v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v11 != v15)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v13 = 0x776F6465722D7369;
      v14 = 0x64616F6C6ELL;
      goto LABEL_24;
    }

    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
LABEL_31:
    if (v11 != v3)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  if (a2 != 1)
  {
    v2 = 0xEA0000000000746ELL;
    if (v11 != 0x65696C632D667270)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v13 = 0x2D65746176697270;
  v14 = 0x7475706E69;
LABEL_24:
  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  if (v11 != v13)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (v12 != v2)
  {
LABEL_37:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v17 = 1;
LABEL_38:

  return v17 & 1;
}

uint64_t sub_10014FFD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000746ELL;
  v3 = 0x65696C632D667270;
  v4 = a1;
  v5 = 0x6369666974726563;
  v6 = 0xEB00000000657461;
  v7 = 0x6564692D6D657469;
  v8 = 0xEF7265696669746ELL;
  if (a1 != 4)
  {
    v7 = 0x776F6465722D7369;
    v8 = 0xED000064616F6C6ELL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x2D65746176697270;
  v10 = 0xED00007475706E69;
  if (a1 != 1)
  {
    v9 = 0x6D617473656D6974;
    v10 = 0xE900000000000070;
  }

  if (!a1)
  {
    v9 = 0x65696C632D667270;
    v10 = 0xEA0000000000746ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0x2D65746176697270;
        v14 = 0x7475706E69;
        goto LABEL_29;
      }

      v3 = 0x6D617473656D6974;
      v2 = 0xE900000000000070;
    }

    if (v11 != v3)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 3)
  {
    v2 = 0xEB00000000657461;
    if (v11 != 0x6369666974726563)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 4)
  {
    v2 = 0xEF7265696669746ELL;
    if (v11 != 0x6564692D6D657469)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v13 = 0x776F6465722D7369;
  v14 = 0x64616F6C6ELL;
LABEL_29:
  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  if (v11 != v13)
  {
LABEL_32:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_30:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v15 = 1;
LABEL_33:

  return v15 & 1;
}

uint64_t sub_100150208(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368801;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F72685477656976;
    }

    else
    {
      v4 = 0x7268546B63696C63;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000686775;
    }

    else
    {
      v5 = 0xEC0000006867756FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 6448503;
    }

    else
    {
      v4 = 7368801;
    }

    v5 = 0xE300000000000000;
  }

  v6 = 0x6F72685477656976;
  v7 = 0xEB00000000686775;
  if (a2 != 2)
  {
    v6 = 0x7268546B63696C63;
    v7 = 0xEC0000006867756FLL;
  }

  if (a2)
  {
    v2 = 6448503;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100150354(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6973;
  v3 = 0x736572706D496461;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x746C69466B6E696CLL;
    v13 = 0xEA00000000007265;
    if (a1 != 2)
    {
      v12 = 0x68636E75616CLL;
      v13 = 0xE600000000000000;
    }

    v14 = 0x64696C6156706174;
    v15 = 0xED00006E6F697461;
    if (!a1)
    {
      v14 = 0x736572706D496461;
      v15 = 0xEC0000006E6F6973;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }

    if (v4 <= 1)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v5 = 0x80000001001CA790;
    v6 = 0xE700000000000000;
    v7 = 0x74736575716572;
    if (a1 != 7)
    {
      v7 = 0x6D6F4379726F7473;
      v6 = 0xED00006574656C70;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v5 = v6;
    }

    v8 = 0x80000001001CA760;
    v9 = 0xD000000000000019;
    if (a1 != 4)
    {
      v9 = 0x7265766E6F436461;
      v8 = 0xEC0000006E6F6973;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000007265;
        if (v10 != 0x746C69466B6E696CLL)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x68636E75616CLL)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_47;
    }

    if (a2)
    {
      v2 = 0xED00006E6F697461;
      if (v10 != 0x64696C6156706174)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x80000001001CA760;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_50;
        }
      }

      else if (v10 != 0x7265766E6F436461)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2 == 6)
    {
      v2 = 0x80000001001CA790;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2 == 7)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x74736575716572)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    v3 = 0x6D6F4379726F7473;
    v2 = 0xED00006574656C70;
  }

  if (v10 != v3)
  {
LABEL_50:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_51;
  }

LABEL_47:
  if (v11 != v2)
  {
    goto LABEL_50;
  }

  v16 = 1;
LABEL_51:

  return v16 & 1;
}

uint64_t sub_100150640(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x7A69726F68747541;
  v4 = a1;
  v5 = 0xEF65676175676E61;
  v6 = 0xD000000000000015;
  if (a1 == 5)
  {
    v6 = 0x4C2D747065636341;
  }

  else
  {
    v5 = 0x80000001001CA360;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65676E6152;
  if (a1 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001001CA330;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x2D746E65746E6F43;
  v10 = 0xEC00000065707954;
  if (a1 != 1)
  {
    v9 = 0x6567412D72657355;
    v10 = 0xEA0000000000746ELL;
  }

  if (!a1)
  {
    v9 = 0x7A69726F68747541;
    v10 = 0xED00006E6F697461;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC00000065707954;
        if (v11 != 0x2D746E65746E6F43)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEA0000000000746ELL;
        if (v11 != 0x6567412D72657355)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF65676175676E61;
        if (v11 != 0x4C2D747065636341)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0x80000001001CA360;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x65676E6152)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0xD000000000000013;
    v2 = 0x80000001001CA330;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

Swift::Int sub_100150890()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001509BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100150AF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100150C2C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100150D7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100150EB4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100151014()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100151108()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100151238()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100151384()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001514AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

__n128 Postback.payload.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 208);
  v18 = *(v1 + 192);
  v19 = v3;
  v20 = *(v1 + 224);
  v4 = *(v1 + 144);
  v14 = *(v1 + 128);
  v15 = v4;
  v5 = *(v1 + 176);
  v16 = *(v1 + 160);
  v17 = v5;
  v6 = *(v1 + 112);
  v12 = *(v1 + 96);
  v13 = v6;
  sub_10014A860(&v12, v11);
  v7 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 128) = v20;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t Postback.compactJWS.getter()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return v1;
}

void *Postback.init(compactJWS:interactionType:postbackURL:conversionValueTier:countryCode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v54 = a8;
  v16 = sub_1000BB714();
  v17 = sub_1000BB768();
  v18 = sub_1000BB7BC();
  v19 = sub_1000BB810();
  JWS.init(compactJWS:)(a1, a2, &type metadata for Postback.JWSPayload, v16, v17, v18, v19, &v41);
  if (v11)
  {
  }

  else
  {
    v38 = v51;
    v39 = v52;
    v34 = v47;
    v35 = v48;
    v37 = v50;
    v36 = v49;
    v30 = v43;
    v31 = v44;
    v33 = v46;
    v32 = v45;
    v29 = v42;
    v28 = v41;
    *&__src[224] = v51;
    *&__src[240] = v52;
    *&__src[160] = v47;
    *&__src[176] = v48;
    *&__src[192] = v49;
    *&__src[208] = v50;
    *&__src[96] = v43;
    *&__src[112] = v44;
    *&__src[128] = v45;
    *&__src[144] = v46;
    v40 = v53;
    *__src = a3;
    *&__src[8] = a4;
    *&__src[16] = a5;
    *&__src[24] = a6;
    *&__src[32] = a7;
    *&__src[40] = v54;
    *&__src[48] = a10;
    *&__src[56] = a11;
    *&__src[256] = v53;
    *&__src[64] = v41;
    *&__src[80] = v42;
    v27[0] = a3;
    v27[1] = a4;
    v27[2] = a5;
    v27[3] = a6;
    v27[4] = a7;
    v27[5] = v54;
    v27[6] = a10;
    v27[7] = a11;
    sub_1000BB8B8(__src, v25);
    sub_1000BB914(v27);
    return memcpy(a9, __src, 0x108uLL);
  }
}

void *Postback.init(postbackResponse:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = sub_1000BB714();
  v9 = sub_1000BB768();
  v10 = sub_1000BB7BC();
  v11 = sub_1000BB810();

  JWS.init(compactJWS:)(v6, v7, &type metadata for Postback.JWSPayload, v8, v9, v10, v11, v17);
  if (v3)
  {
    return sub_10001970C(a1);
  }

  __src[13] = v17[9];
  __src[14] = v17[10];
  __src[15] = v17[11];
  __src[9] = v17[5];
  __src[10] = v17[6];
  __src[11] = v17[7];
  __src[12] = v17[8];
  __src[5] = v17[1];
  __src[6] = v17[2];
  *&__src[16] = v18;
  __src[7] = v17[3];
  __src[8] = v17[4];
  v13 = *(a1 + 16);
  v22 = *(a1 + 32);
  v23 = v13;
  __src[0] = v13;
  __src[1] = v22;
  v21 = *(a1 + 48);
  __src[4] = v17[0];
  __src[2] = v21;
  v20 = *(a1 + 72);
  sub_1000C4880(&v23, v16);
  sub_1000C4880(&v22, v16);
  sub_1000C4880(&v21, v16);
  sub_10005CB44(&v20, v16);
  sub_10001970C(a1);
  __src[3] = v20;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  sub_1000BB8B8(__dst, &v14);
  sub_1000BB914(v16);
  return memcpy(a2, __dst, 0x108uLL);
}

uint64_t sub_100151AB8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100151BDC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100153334(*a1);
  *a2 = result;
  return result;
}

void sub_100151C0C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x697274732D73776ALL;
  v5 = 0x80000001001CAA80;
  v6 = 0xD000000000000015;
  v7 = 0xEE007865646E692DLL;
  v8 = 0x676E69726564726FLL;
  if (v2 != 4)
  {
    v8 = 0x2D7972746E756F63;
    v7 = 0xEC00000065646F63;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000006C72752DLL;
  v10 = 0x6B63616274736F70;
  if (v2 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = 0x80000001001CA540;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100151CF8()
{
  v1 = *v0;
  v2 = 0x697274732D73776ALL;
  v3 = 0xD000000000000015;
  v4 = 0x676E69726564726FLL;
  if (v1 != 4)
  {
    v4 = 0x2D7972746E756F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B63616274736F70;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
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

unint64_t sub_100151DE0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100153334(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100151E08(uint64_t a1)
{
  v2 = sub_100152080();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151E44(uint64_t a1)
{
  v2 = sub_100152080();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PostbackResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023D9C8, &qword_1001C1F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100152080();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v23[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[4];
  v14 = v3[5];
  v23[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[2];
  v16 = v3[3];
  v23[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v23[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[8];
  v23[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v21 = v3[9];
  v22 = v3[10];
  v23[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100152080()
{
  result = qword_10023D9D0;
  if (!qword_10023D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9D0);
  }

  return result;
}

double PostbackResponse.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001533CC(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

BOOL Postback.Version.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100216900, v2);

  return v3 != 0;
}

Swift::Int sub_1001521A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001521FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100152244@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1002164E0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1001523C4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6580587;
  }

  else
  {
    v2 = 6777953;
  }

  if (*a2)
  {
    v3 = 6580587;
  }

  else
  {
    v3 = 6777953;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10015243C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001524A4()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001524F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100152554@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100216518, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001525B4(uint64_t *a1@<X8>)
{
  v2 = 6777953;
  if (*v1)
  {
    v2 = 6580587;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1001525DC()
{
  if (*v0)
  {
    return 6580587;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_100152600@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100216518, v3);

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

uint64_t sub_100152664(uint64_t a1)
{
  v2 = sub_100153808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001526A0(uint64_t a1)
{
  v2 = sub_100153808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Postback.JWSHeader.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000CDE0(&qword_10023D9D8, &qword_1001C1F80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100153808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t Postback.JWSHeader.init(from:)(uint64_t *a1)
{
  result = sub_10015385C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10015289C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10015385C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t Postback.postbackURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Postback.conversionValueTier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Postback.JWSPayload.publisherItemID.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t Postback.JWSPayload.sourceIdentifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t Postback.JWSPayload.adNetworkID.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t Postback.JWSPayload.conversionType.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t sub_100152A04(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x69737265766E6F63;
    v6 = 0x6E69772D646964;
    if (a1 != 8)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0xD000000000000015;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6973736572706D69;
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000019;
    if (a1 != 3)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000016;
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
}

uint64_t sub_100152B5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100152A04(*a1);
  v5 = v4;
  if (v3 == sub_100152A04(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100152BE4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100152A04(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100152C48()
{
  sub_100152A04(*v0);
  String.hash(into:)();
}

Swift::Int sub_100152C9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100152A04(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100152CFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100153380(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100152D2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100152A04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100152D74@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100153380(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100152DA8(uint64_t a1)
{
  v2 = sub_100153A40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100152DE4(uint64_t a1)
{
  v2 = sub_100153A40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Postback.JWSPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023D9E8, &qword_1001C1F88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100153A40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v29[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v29[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v29[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v18 = *(v3 + 56);
  v29[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = v3[8];
  v29[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = v3[9];
  v21 = v3[10];
  v29[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v22 = v3[11];
  v23 = v3[12];
  v29[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v24 = v3[13];
  v25 = v3[14];
  v29[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v26 = *(v3 + 120);
  v29[7] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v28 = v3[16];
  v29[6] = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

__n128 Postback.JWSPayload.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100153A94(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t Postback.header.getter()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[10];
  v3 = v0[11];

  return v1;
}

uint64_t Postback.signature.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return v1;
}

uint64_t Postback.interactionType.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Postback.postbackURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Postback.conversionValueTier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Postback.countryCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Postback.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

unint64_t sub_100153334(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215700, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100153380(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002163D0, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001533CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023DA60, qword_1001C2700);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100152080();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v40[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v40[0]) = 1;
  *&v33 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v33 + 1) = v14;
  LOBYTE(v40[0]) = 2;
  *&v32 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v32 + 1) = v15;
  LOBYTE(v40[0]) = 3;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v16;
  LOBYTE(v40[0]) = 4;
  v30 = 0;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 5;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = *(v6 + 8);
  v19 = v17;
  v30 = v20;
  v18(v9, v5);
  *&v34 = v11;
  *(&v34 + 1) = v13;
  v35 = v32;
  v21 = *(&v32 + 1);
  v36 = v33;
  *&v37 = v29;
  v22 = v31;
  *(&v37 + 1) = v31;
  *&v38 = v28;
  v23 = v30;
  *(&v38 + 1) = v19;
  v39 = v30;
  sub_10015468C(&v34, v40);
  sub_10000DB58(a1);
  v40[0] = v11;
  v40[1] = v13;
  v40[2] = v32;
  v40[3] = v21;
  v41 = v33;
  v42 = v29;
  v43 = v22;
  v44 = v28;
  v45 = v19;
  v46 = v23;
  result = sub_10001970C(v40);
  v25 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v25;
  *(a2 + 64) = v38;
  *(a2 + 80) = v39;
  v26 = v35;
  *a2 = v34;
  *(a2 + 16) = v26;
  return result;
}

unint64_t sub_100153808()
{
  result = qword_10023D9E0;
  if (!qword_10023D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9E0);
  }

  return result;
}

uint64_t sub_10015385C(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023DA58, &qword_1001C26F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100153808();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000DB58(a1);
  return v8;
}

unint64_t sub_100153A40()
{
  result = qword_10023D9F0;
  if (!qword_10023D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9F0);
  }

  return result;
}

uint64_t sub_100153A94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_10000CDE0(&qword_10023DA50, &qword_1001C26F0);
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v47);
  v8 = &v31 - v7;
  v9 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100153A40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v46 = a2;
  LOBYTE(v57[0]) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v11;
  LOBYTE(v57[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v13;
  v42 = v12;
  LOBYTE(v57[0]) = 2;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v14;
  LOBYTE(v57[0]) = 3;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = v15 & 1;
  LOBYTE(v57[0]) = 4;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v57[0]) = 5;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v16;
  LOBYTE(v57[0]) = 6;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v18;
  v34 = v17;
  LOBYTE(v57[0]) = 7;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v19;
  LOBYTE(v57[0]) = 8;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v69 = 9;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v32 & 1;
  (*(v5 + 8))(v8, v47);
  *&v48 = v10;
  *(&v48 + 1) = v45;
  *&v49 = v42;
  *(&v49 + 1) = v44;
  *&v50 = v41;
  *(&v50 + 1) = v43;
  v22 = v39;
  *&v51 = v40;
  LODWORD(v47) = v68;
  BYTE8(v51) = v68;
  v24 = v36;
  v23 = v37;
  *&v52 = v39;
  *(&v52 + 1) = v36;
  *&v53 = v38;
  *(&v53 + 1) = v34;
  *&v54 = v37;
  *(&v54 + 1) = v33;
  *&v55 = v35;
  BYTE8(v55) = v21;
  v56 = v20;
  sub_10014A860(&v48, v57);
  sub_10000DB58(a1);
  v57[0] = v10;
  v57[1] = v45;
  v57[2] = v42;
  v57[3] = v44;
  v57[4] = v41;
  v57[5] = v43;
  v57[6] = v40;
  v58 = v47;
  v59 = v22;
  v60 = v24;
  v61 = v38;
  v62 = v34;
  v63 = v23;
  v64 = v33;
  v65 = v35;
  v66 = v21;
  v67 = v20;
  result = sub_1000BB864(v57);
  v26 = v55;
  v27 = v46;
  *(v46 + 96) = v54;
  *(v27 + 112) = v26;
  *(v27 + 128) = v56;
  v28 = v51;
  *(v27 + 32) = v50;
  *(v27 + 48) = v28;
  v29 = v53;
  *(v27 + 64) = v52;
  *(v27 + 80) = v29;
  v30 = v49;
  *v27 = v48;
  *(v27 + 16) = v30;
  return result;
}

unint64_t sub_100154004()
{
  result = qword_10023D9F8;
  if (!qword_10023D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9F8);
  }

  return result;
}

uint64_t sub_100154058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1001540A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10015410C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_100154154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100154204(uint64_t a1, uint64_t a2)
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

uint64_t sub_100154238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_100154280(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100154324()
{
  result = qword_10023DA00;
  if (!qword_10023DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA00);
  }

  return result;
}

unint64_t sub_10015437C()
{
  result = qword_10023DA08;
  if (!qword_10023DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA08);
  }

  return result;
}

unint64_t sub_1001543D4()
{
  result = qword_10023DA10;
  if (!qword_10023DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA10);
  }

  return result;
}

unint64_t sub_10015442C()
{
  result = qword_10023DA18;
  if (!qword_10023DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA18);
  }

  return result;
}

unint64_t sub_100154484()
{
  result = qword_10023DA20;
  if (!qword_10023DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA20);
  }

  return result;
}

unint64_t sub_1001544DC()
{
  result = qword_10023DA28;
  if (!qword_10023DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA28);
  }

  return result;
}

unint64_t sub_100154534()
{
  result = qword_10023DA30;
  if (!qword_10023DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA30);
  }

  return result;
}

unint64_t sub_10015458C()
{
  result = qword_10023DA38;
  if (!qword_10023DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA38);
  }

  return result;
}

unint64_t sub_1001545E4()
{
  result = qword_10023DA40;
  if (!qword_10023DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA40);
  }

  return result;
}

unint64_t sub_100154638()
{
  result = qword_10023DA48;
  if (!qword_10023DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DA48);
  }

  return result;
}

uint64_t sub_1001546C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10000BD30;

  return sub_10003EBDC(a2, a3, a4);
}

uint64_t sub_1001549F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100154A28()
{
  sub_10001BABC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100154A60(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000BD30;

  return sub_1001546C8(a1, a2, v7, v6);
}

uint64_t sub_100154B10()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100154B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000152E0;

  return sub_100084734(a1, a2, a3, v9);
}

uint64_t sub_100154C28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100154CC8();
}

uint64_t sub_100154CC8()
{
  v1 = type metadata accessor for Logger();
  v0[13] = v1;
  v2 = *(v1 - 8);
  v0[14] = v2;
  v3 = *(v2 + 64) + 15;
  v0[15] = swift_task_alloc();

  return _swift_task_switch(sub_100154D84, 0, 0);
}

uint64_t sub_100154D84()
{
  v17 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = Logger.developerMode.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resetting developer mode", v7, 2u);
  }

  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];

  (*(v9 + 8))(v8, v10);
  v11 = [objc_opt_self() sharedScheduler];
  v15[3] = &type metadata for ActivityManager;
  v15[4] = &off_100223E90;
  v12 = swift_allocObject();
  v15[0] = v12;
  v12[5] = &type metadata for BackgroundSystemTaskScheduler;
  v12[6] = &off_100217910;
  v12[2] = v11;
  v16[3] = &type metadata for LaunchServicesRecordFactory;
  v16[4] = &off_10021CBA8;
  sub_1000B8524(v15, v16, (v0 + 2));
  sub_1000B8AD8(0);
  sub_10014AA3C((v0 + 2));

  v13 = v0[1];

  return v13();
}

uint64_t sub_100154F48()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100154F80(uint64_t a1, void *a2)
{
  v3 = *sub_10000DA7C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return swift_continuation_resume();
}

uint64_t sub_100155010(uint64_t a1)
{
  v1 = *sub_10000DA7C((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_100155044(uint64_t a1, void *a2)
{
  v3 = sub_10000DA7C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100155110()
{
  v1 = v0[20];
  v2 = [objc_opt_self() sharedInstance];
  v0[21] = v2;
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v0[22] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100155270;
  v4 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023DAA0, &qword_1001C2840);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100154F80;
  v0[13] = &unk_100222BF0;
  v0[14] = v4;
  [v2 getImpressionsForApp:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100155270()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100155350, 0, 0);
}

uint64_t sub_100155350()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1001553C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1001553EC, 0, 0);
}

uint64_t sub_1001553EC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = [objc_opt_self() sharedInstance];
  v0[21] = v4;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[22] = isa;
  v6 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v0[23] = v6;
  v0[2] = v0;
  v0[3] = sub_100155560;
  v7 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023DA98, &qword_1001C2830);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155010;
  v0[13] = &unk_100222BC8;
  v0[14] = v7;
  [v4 storeSkannerEvents:isa advertisedItemID:v6 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100155560()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100155640, 0, 0);
}

uint64_t sub_100155640()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001556C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1001556E4, 0, 0);
}

uint64_t sub_1001556E4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = [objc_opt_self() sharedInstance];
  v0[20] = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[3] = sub_100155840;
  v5 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023DAA8, &unk_1001C2850);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155044;
  v0[13] = &unk_100222C18;
  v0[14] = v5;
  [v3 storePostbacks:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100155840()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1001559B8;
  }

  else
  {
    v3 = sub_100155950;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100155950()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001559B8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

id sub_100155BF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SoloEventEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100155C50()
{
  result = qword_10023DAD8;
  if (!qword_10023DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DAD8);
  }

  return result;
}

uint64_t sub_100155CA4()
{
  v2 = *(v0 + 16);
  os_activity_scope_leave(&v2);
  return swift_deallocClassInstance();
}

uint64_t sub_100155D30()
{
  qword_10023DAF8 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t sub_100155D6C(unint64_t description, char a2, void *dso)
{
  v3 = description;
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (qword_100239D28 == -1)
      {
LABEL_4:
        v4 = dso;
        v5 = qword_10023DAF8;

        return _os_activity_create(v4, v3, v5, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      v13 = dso;
      swift_once();
      dso = v13;
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(description))
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v7 = (description & 0x3F) << 8;
    v8 = (description >> 6) + v7 + 33217;
    v9 = (v7 | (description >> 6) & 0x3F) << 8;
    v10 = (description >> 18) + ((v9 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (description >> 12) + v9 + 8487393;
    if (description >> 16)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (description < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v6 = description + 1;
LABEL_12:
  *descriptiona = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (qword_100239D28 != -1)
  {
    v12 = dso;
    swift_once();
    dso = v12;
  }

  return _os_activity_create(dso, descriptiona, qword_10023DAF8, OS_ACTIVITY_FLAG_DEFAULT);
}

id sub_1001560CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinalizedTokenEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100156128()
{
  result = qword_10023DBC8;
  if (!qword_10023DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DBC8);
  }

  return result;
}

unint64_t sub_100156180()
{
  result = qword_10023DBE8;
  if (!qword_10023DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DBE8);
  }

  return result;
}

unint64_t sub_1001561D8()
{
  result = qword_10023DBF0;
  if (!qword_10023DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DBF0);
  }

  return result;
}

unint64_t sub_10015622C(uint64_t a1)
{
  *(a1 + 8) = sub_10015625C();
  result = sub_1000F1A64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015625C()
{
  result = qword_10023DC40;
  if (!qword_10023DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DC40);
  }

  return result;
}

uint64_t sub_1001562B0(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023DC70, &qword_1001C2B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001561D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v16[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 32);
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16[13] = *(v3 + 40);
    v16[12] = 2;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + 48);
    v16[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1001564BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100156590()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100156650()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100156720@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100156AA4(*a1);
  *a2 = result;
  return result;
}

void sub_100156750(unint64_t *a1@<X8>)
{
  v2 = 0xED000064695F6E6FLL;
  v3 = 0x69737265766E6F63;
  v4 = 0xEF657079745F6E6FLL;
  v5 = 0x69737265766E6F63;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001001CA620;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001001CA000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1001567E8()
{
  v1 = 0x69737265766E6F63;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0x69737265766E6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

unint64_t sub_100156874@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100156AA4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001568AC(uint64_t a1)
{
  v2 = sub_1001561D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001568E8(uint64_t a1)
{
  v2 = sub_1001561D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100156924@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100156AF0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_100156990()
{
  result = qword_10023DC48;
  if (!qword_10023DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DC48);
  }

  return result;
}

unint64_t sub_1001569E8()
{
  result = qword_10023DC50;
  if (!qword_10023DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DC50);
  }

  return result;
}

unint64_t sub_100156A40()
{
  result = qword_10023DC58;
  if (!qword_10023DC58)
  {
    sub_10000CCC0(&qword_10023DC60, &qword_1001C2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DC58);
  }

  return result;
}

unint64_t sub_100156AA4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002161C8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100156AF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023DC68, &qword_1001C2B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001561D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v23 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 2;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  HIDWORD(v17) = v21;
  v19 = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_10000DB58(a1);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v18;
  *(a2 + 40) = BYTE4(v17);
  *(a2 + 48) = v15;
  return result;
}

unint64_t sub_100156D7C()
{
  result = qword_10023DC78;
  if (!qword_10023DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023DC78);
  }

  return result;
}

id sub_100156DD0()
{
  v2 = [v0 connection];
  v3 = String._bridgeToObjectiveC()();

  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = [objc_opt_self() predicateWithProperty:v3 equalToValue:v4];
  swift_unknownObjectRelease();

  v6 = sub_1000873A0(v2, v5, _swiftEmptyArrayStorage, 0, 0);
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8[2] = &v9;
  sub_100037374(sub_1001570B4, v8, v6);

  if (v1)
  {
  }

  else if (v11)
  {
    v2 = v10;
  }

  else
  {
    return 0;
  }

  return v2;
}

id sub_100156FE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppMetadataDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100157038(uint64_t *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a4[4];

  *a4 = v6;
  a4[1] = v7;
  a4[2] = v8;
  a4[3] = v9;
  a4[4] = v10;
  *a3 = 1;
}

uint64_t sub_1001570CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_10015716C();
}

uint64_t sub_100157188()
{
  v23 = v0;
  v1 = objc_opt_self();
  v2 = [v1 sharedScheduler];
  v18 = &type metadata for ActivityManager;
  v19 = &off_100223E90;
  v3 = swift_allocObject();
  v17[0] = v3;
  v3[5] = &type metadata for BackgroundSystemTaskScheduler;
  v3[6] = &off_100217910;
  v3[2] = v2;
  v21 = &type metadata for LaunchServicesRecordFactory;
  v22 = &off_10021CBA8;
  sub_1000B8524(v17, v20, v0 + 616);
  sub_1000BA604();
  sub_10014AA3C(v0 + 616);
  if (qword_100239CB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 704) = sub_10000DAC0(v4, qword_10023FC58);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Scheduling postback fetch if needed", v7, 2u);
  }

  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v8 = qword_10023FC50;
  v9 = [v1 sharedScheduler];
  *(v0 + 208) = &type metadata for ActivityManager;
  *(v0 + 216) = &off_100223E90;
  v10 = swift_allocObject();
  *(v0 + 184) = v10;
  v10[5] = &type metadata for BackgroundSystemTaskScheduler;
  v10[6] = &off_100217910;
  v10[2] = v9;
  *(v0 + 272) = &type metadata for AttributionKitCanineArbiter;
  *(v0 + 280) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v11 = qword_10023FC28;
  *(v0 + 312) = type metadata accessor for TaskGreyhound();
  *(v0 + 320) = &off_1002169F0;
  *(v0 + 288) = v11;
  *(v0 + 352) = &type metadata for LaunchServicesRecordFactory;
  *(v0 + 360) = &off_10021CBA8;
  *(v0 + 392) = &type metadata for AMSDogBag;
  *(v0 + 400) = &off_100222F48;

  v12 = [v1 sharedScheduler];
  v18 = &type metadata for ActivityManager;
  v19 = &off_100223E90;
  v13 = swift_allocObject();
  v17[0] = v13;
  v13[5] = &type metadata for BackgroundSystemTaskScheduler;
  v13[6] = &off_100217910;
  v13[2] = v12;
  v21 = &type metadata for LaunchServicesRecordFactory;
  v22 = &off_10021CBA8;
  sub_1000B8524(v17, v20, v0 + 408);
  *(v0 + 520) = &type metadata for AppStoreDaemonSKANInterop;
  *(v0 + 528) = &off_100222C60;
  sub_1000B42E0((v0 + 536));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v14 = qword_10023FD90;
  *(v0 + 600) = type metadata accessor for SnoutManager();
  *(v0 + 608) = &off_100223858;
  *(v0 + 576) = v14;
  strcpy((v0 + 16), "postback_store");
  *(v0 + 31) = -18;
  *(v0 + 32) = v8;
  *(v0 + 40) = 0x63616274736F6867;
  *(v0 + 48) = 0xEF65726F74735F6BLL;
  *(v0 + 56) = v8;
  *(v0 + 64) = 0xD000000000000010;
  *(v0 + 72) = 0x80000001001CB320;
  *(v0 + 80) = v8;
  *(v0 + 88) = 0x74735F6E656B6F74;
  *(v0 + 96) = 0xEB0000000065726FLL;
  *(v0 + 104) = v8;
  *(v0 + 112) = 0xD000000000000012;
  *(v0 + 120) = 0x80000001001CB340;
  *(v0 + 128) = v8;
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x80000001001CB360;
  *(v0 + 152) = v8;
  *(v0 + 160) = 0xD000000000000018;
  *(v0 + 168) = 0x80000001001CB380;
  *(v0 + 176) = v8;
  *(v0 + 224) = 0xD000000000000011;
  *(v0 + 232) = 0x80000001001CB3A0;
  *(v0 + 240) = v8;

  v15 = swift_task_alloc();
  *(v0 + 712) = v15;
  *v15 = v0;
  v15[1] = sub_1001576B4;

  return sub_100128208();
}

uint64_t sub_1001576B4()
{
  v2 = *(*v1 + 712);
  v5 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
    v3 = sub_1001577C8;
  }

  else
  {
    v3 = sub_10004E764;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001577C8()
{
  v1 = v0[90];
  v2 = v0[88];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[90];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to schedule postback fetch with error: %@", v7, 0xCu);
    sub_1000AEA80(v8);
  }

  else
  {
    v10 = v0[90];
  }

  sub_10004E7FC((v0 + 2));
  v11 = v0[1];

  return v11();
}

uint64_t sub_100157920()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100157958(char a1)
{
  result = 0x7363697274656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000032;
      break;
    case 2:
    case 10:
      result = 0xD000000000000036;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    case 4:
    case 15:
      result = 0xD000000000000042;
      break;
    case 5:
    case 14:
      result = 0xD000000000000038;
      break;
    case 6:
    case 17:
      result = 0xD000000000000039;
      break;
    case 7:
      result = 0xD00000000000002ELL;
      break;
    case 8:
      result = 0xD00000000000003BLL;
      break;
    case 9:
    case 12:
      result = 0xD000000000000046;
      break;
    case 11:
      result = 0xD000000000000043;
      break;
    case 13:
      result = 0xD000000000000031;
      break;
    case 16:
      result = 0xD000000000000032;
      break;
    case 18:
      result = 0xD00000000000003ELL;
      break;
    case 19:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100157BD8(uint64_t a1, char a2)
{
  *(v2 + 153) = a2;
  *(v2 + 160) = a1;
  return _swift_task_switch(sub_100157BFC, 0, 0);
}

uint64_t sub_100157BFC()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 URLForKey:v5];
  *(v0 + 168) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100157DDC;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023DCB8, &qword_1001C2D38);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001596F0;
  *(v0 + 104) = &unk_100222F00;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100157DDC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_100157FA0;
  }

  else
  {
    v3 = sub_100157EEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100157EEC()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v0[20];
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100157FA0()
{
  v23 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  swift_willThrow();

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 176);
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FC70);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 176);
  if (v7)
  {
    v9 = *(v0 + 153);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    v13 = sub_100157958(v9);
    v15 = sub_10017AD04(v13, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get bag value for key %s, error: %@", v10, 0x16u);
    sub_1000AEA80(v11);

    sub_10000DB58(v12);
  }

  else
  {
    v17 = *(v0 + 176);
  }

  v18 = *(v0 + 160);
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100158210()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 integerForKey:v5];
  *(v0 + 160) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1001583F0;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023DCA8, &qword_1001C2D08);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001596F0;
  *(v0 + 104) = &unk_100222EB0;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001583F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1001596F4;
  }

  else
  {
    v3 = sub_100158500;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100158500()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = [v2 integerValue];

  v4 = v0[21] != 0;
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_1001585B4()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 doubleForKey:v5];
  *(v0 + 160) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100158794;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023DCA8, &qword_1001C2D08);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001596F0;
  *(v0 + 104) = &unk_100222E88;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100158794()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100158938;
  }

  else
  {
    v3 = sub_1001588A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001588A4()
{
  v1 = v0[20];
  v2 = v0[18];
  [v2 doubleValue];
  v4 = v3;

  v5 = v0[21] != 0;
  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_100158938()
{
  v22 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 168);
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FC70);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 168);
  if (v7)
  {
    v9 = *(v0 + 153);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315394;
    v13 = sub_100157958(v9);
    v15 = sub_10017AD04(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get bag value for key %s, error: %@", v10, 0x16u);
    sub_1000AEA80(v11);

    sub_10000DB58(v12);
  }

  else
  {
    v17 = *(v0 + 168);
  }

  v18 = *(v0 + 168) != 0;
  v19 = *(v0 + 8);

  return v19(0, v18);
}

uint64_t sub_100158B74()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 BOOLForKey:v5];
  *(v0 + 160) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100158D54;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023DCA8, &qword_1001C2D08);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001596F0;
  *(v0 + 104) = &unk_100222E60;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100158D54()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100158EEC;
  }

  else
  {
    v3 = sub_100158E64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100158E64()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = [v2 BOOLValue];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100158EEC()
{
  v21 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 168);
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FC70);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 168);
  if (v7)
  {
    v9 = *(v0 + 153);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    v13 = sub_100157958(v9);
    v15 = sub_10017AD04(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get BOOL bag value for key %s, error: %@", v10, 0x16u);
    sub_1000AEA80(v11);

    sub_10000DB58(v12);
  }

  else
  {
    v17 = *(v0 + 168);
  }

  v18 = *(v0 + 8);

  return v18(2);
}

uint64_t sub_100159134()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 stringForKey:v5];
  *(v0 + 160) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100159314;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023DCB0, &qword_1001C2D28);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001596F0;
  *(v0 + 104) = &unk_100222ED8;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100159314()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1001594AC;
  }

  else
  {
    v3 = sub_100159424;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100159424()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t sub_1001594AC()
{
  v21 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 168);
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FC70);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 168);
  if (v7)
  {
    v9 = *(v0 + 153);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    v13 = sub_100157958(v9);
    v15 = sub_10017AD04(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get bag value for key %s, error: %@", v10, 0x16u);
    sub_1000AEA80(v11);

    sub_10000DB58(v12);
  }

  else
  {
    v17 = *(v0 + 168);
  }

  v18 = *(v0 + 8);

  return v18(0, 0);
}

uint64_t sub_1001596F8(uint64_t a1, uint64_t a2)
{
  v3[167] = v2;
  v3[166] = a2;
  v3[165] = a1;
  v4 = type metadata accessor for Calendar.Component();
  v3[168] = v4;
  v5 = *(v4 - 8);
  v3[169] = v5;
  v6 = *(v5 + 64) + 15;
  v3[170] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[171] = v7;
  v8 = *(v7 - 8);
  v3[172] = v8;
  v9 = *(v8 + 64) + 15;
  v3[173] = swift_task_alloc();

  return _swift_task_switch(sub_10015981C, v2, 0);
}

uint64_t sub_10015981C()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1376);
  v3 = *(v0 + 1368);
  v4 = *(v0 + 1360);
  v5 = *(v0 + 1352);
  v6 = *(v0 + 1344);
  v7 = *(v0 + 1320);
  static Date.now.getter();
  (*(v5 + 104))(v4, enum case for Calendar.Component.hour(_:), v6);
  v8 = sub_100025808(v1, v4);
  v10 = v9;
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = [objc_opt_self() buildVersion];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v0 + 1480) = 1;
  *(v0 + 1488) = 1;
  *(v0 + 1496) = 1;
  *(v0 + 1504) = 1;
  *(v0 + 1512) = 1;
  *(v0 + 688) = 2561;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = v11;
  *(v0 + 752) = v13;
  *(v0 + 760) = v15;
  *(v0 + 768) = 0;
  *(v0 + 769) = 33686018;
  *(v0 + 773) = 2;
  *(v0 + 776) = 0;
  *(v0 + 784) = 1;
  *(v0 + 792) = 0;
  *(v0 + 800) = 769;
  *(v0 + 808) = 0;
  v16 = *(v0 + 1496);
  *(v0 + 816) = v16;
  *(v0 + 824) = 0;
  v17 = *(v0 + 1504);
  *(v0 + 832) = v17;
  *(v0 + 833) = 770;
  *(v0 + 840) = 0;
  v18 = *(v0 + 1512);
  *(v0 + 848) = v18;
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 464) = 2561;
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0u;
  *(v0 + 472) = 0u;
  *(v0 + 520) = v11;
  *(v0 + 528) = v13;
  *(v0 + 536) = v15;
  *(v0 + 544) = 0;
  *(v0 + 549) = 2;
  *(v0 + 545) = 33686018;
  *(v0 + 552) = 0;
  *(v0 + 560) = 1;
  *(v0 + 568) = 0;
  *(v0 + 576) = 769;
  *(v0 + 584) = 0;
  *(v0 + 592) = v16;
  *(v0 + 600) = 0;
  *(v0 + 608) = v17;
  *(v0 + 609) = 770;
  *(v0 + 616) = 0;
  *(v0 + 624) = v18;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_100010568(v0 + 688, v0 + 912);
  sub_10003AE8C(v0 + 464);
  v19 = *(v0 + 704);
  *(v0 + 1392) = *(v0 + 688);
  *(v0 + 1408) = v19;
  v20 = *(v0 + 872);
  *(v0 + 1264) = *(v0 + 856);
  *(v0 + 1280) = v20;
  *(v0 + 1296) = *(v0 + 888);
  v21 = *(v0 + 808);
  *(v0 + 1200) = *(v0 + 792);
  *(v0 + 1216) = v21;
  v22 = *(v0 + 840);
  *(v0 + 1232) = *(v0 + 824);
  *(v0 + 1248) = v22;
  v23 = *(v0 + 744);
  *(v0 + 1136) = *(v0 + 728);
  *(v0 + 1152) = v23;
  v24 = *(v0 + 776);
  *(v0 + 1168) = *(v0 + 760);
  *(v0 + 1424) = *(v0 + 720);
  *(v0 + 1312) = *(v0 + 904);
  *(v0 + 1184) = v24;
  v25 = v7[3];
  v26 = v7[4];
  sub_10000DA7C(v7, v25);
  if ((*(v26 + 8))(v25, v26) == 0xC181BADB23D8497BLL)
  {
    v27 = v7[3];
    v28 = v7[4];
    sub_10000DA7C(*(v0 + 1320), v27);
    if ((*(v28 + 16))(v27, v28) == 1589136771)
    {
      v29 = *(v0 + 1336);
      v30 = v7[3];
      v31 = v7[4];
      sub_10000DA7C(*(v0 + 1320), v30);
      if (*(v29 + 192) < (*(v31 + 24))(v30, v31))
      {
        v33 = v7[3];
        v32 = v7[4];
        sub_10000DA7C(*(v0 + 1320), v33);
        *(v29 + 192) = (*(v32 + 24))(v33, v32);
        v34 = swift_task_alloc();
        *(v0 + 1432) = v34;
        *v34 = v0;
        v34[1] = sub_100159E90;
        v35 = *(v0 + 1320);

        return sub_1000457E0(v35);
      }

      sub_10015A8DC();
      v37 = swift_allocError();
      v40 = 2;
    }

    else
    {
      sub_10015A8DC();
      v37 = swift_allocError();
      v40 = 1;
    }

    *v39 = v40;
  }

  else
  {
    sub_10015A8DC();
    v37 = swift_allocError();
    *v38 = 0;
  }

  swift_willThrow();
  *(v0 + 1464) = v37;
  v59 = *(v0 + 1392);
  v41 = *(v0 + 1336);
  v42 = *(v0 + 720);
  v43 = *(v0 + 704);
  v44 = sub_1000C7C10(v37);
  v46 = v45;
  v48 = v47;
  v50 = v49;

  sub_10000DA7C((v41 + 152), *(v41 + 176));
  v51 = *(v0 + 1280);
  *(v0 + 184) = *(v0 + 1264);
  *(v0 + 200) = v51;
  *(v0 + 216) = *(v0 + 1296);
  v52 = *(v0 + 1216);
  *(v0 + 120) = *(v0 + 1200);
  *(v0 + 136) = v52;
  v53 = *(v0 + 1248);
  *(v0 + 152) = *(v0 + 1232);
  *(v0 + 168) = v53;
  v54 = *(v0 + 1152);
  *(v0 + 56) = *(v0 + 1136);
  *(v0 + 72) = v54;
  v55 = *(v0 + 1184);
  *(v0 + 88) = *(v0 + 1168);
  *(v0 + 16) = v59;
  *(v0 + 24) = v44;
  *(v0 + 32) = v46;
  *(v0 + 40) = v48;
  *(v0 + 48) = v50;
  *(v0 + 232) = *(v0 + 1312);
  *(v0 + 104) = v55;
  v56 = type metadata accessor for SnoutManager();
  v57 = swift_task_alloc();
  *(v0 + 1472) = v57;
  *v57 = v0;
  v57[1] = sub_10015A6DC;
  v58 = *(v0 + 1328);

  return (sub_10016E27C)(v0 + 16, v58, 0, 0, v56, &off_100223858);
}