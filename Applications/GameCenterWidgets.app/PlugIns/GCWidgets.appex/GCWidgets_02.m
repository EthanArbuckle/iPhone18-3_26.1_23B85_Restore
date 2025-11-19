id sub_10003464C(id *a1, void *a2, uint64_t a3, void *a4)
{
  result = [*a1 items];
  if (result)
  {
    v8 = result;
    v9 = sub_100072C4C();

    v10 = v9;
    v11 = *(v9 + 16);
    if (v11)
    {
      for (i = v10 + 32; ; i += 32)
      {
        sub_10000EA40(i, v16);
        if (*a2 < a3 && (sub_10000EA40(v16, v15), sub_10000F74C(0, &qword_100094CD8, GKPlayerActivityItemInternal_ptr), (swift_dynamicCast() & 1) != 0))
        {
          v13 = v17;
          if ([v17 activityType])
          {
            v14 = v13;
            sub_100072C2C();
            if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100072C6C();
            }

            sub_100072C8C();

            result = sub_100007F50(v16);
            if (__OFADD__(*a2, 1))
            {
              __break(1u);
              return result;
            }

            ++*a2;
          }

          else
          {
            sub_100007F50(v16);
          }
        }

        else
        {
          sub_100007F50(v16);
        }

        if (!--v11)
        {
        }
      }
    }
  }

  return result;
}

void sub_10003481C(void *a1, int a2, int a3, int a4, void *a5, dispatch_group_t group)
{
  if (a1)
  {
    v9 = a1;
    v10 = [a5 playerID];
    v11 = sub_100072B3C();
    v13 = v12;

    swift_beginAccess();
    v14 = v9;
    sub_10004CB20(a1, v11, v13);
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void sub_1000348E4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, v9);
}

uint64_t sub_100034978(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v6 = sub_100071E7C();
  sub_100007DE8(v6, qword_1000999C8);

  v7 = sub_100071E5C();
  v8 = sub_100072CFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    swift_beginAccess();
    v10 = *(a1 + 16);
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v15 = *(a1 + 16);
      }

      v11 = sub_100072EDC();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v11;

    _os_log_impl(&_mh_execute_header, v7, v8, "Received %ld brick(s) from gamed", v9, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();
  v12 = *(a1 + 16);
  swift_beginAccess();
  v13 = *(a2 + 16);

  a3(v12, v13, 0);
}

void sub_100034B48(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100034BF8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100034C64(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_100034CC4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100034D20(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100034D20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100034DEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000EA40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007F50(v11);
  return v7;
}

unint64_t sub_100034DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100034EF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100072E8C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100034EF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100034F44(a1, a2);
  sub_100035074(&off_100091E30);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100034F44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100035160(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100072E8C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100072B8C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100035160(v10, 0);
        result = sub_100072E3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100035074(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000351D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100035160(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000388C(&qword_100095C10, &qword_1000750A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000351D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000388C(&qword_100095C10, &qword_1000750A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000352C8(char *a1, int64_t a2, char a3)
{
  result = sub_1000352E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000352E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000388C(&qword_100094D10, &qword_100073E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

unsigned __int8 *sub_1000353F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100072BEC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100035994();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      result = sub_100072E8C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100035994()
{
  v0 = sub_100072BFC();
  v4 = sub_100035A14(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100035A14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100072B5C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_100072D7C();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100035160(v9, 0);
  v12 = sub_100035B6C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_100072B5C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_100072E8C();
LABEL_4:

  return sub_100072B5C();
}

unint64_t sub_100035B6C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100035D8C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100072BBC();
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
          result = sub_100072E8C();
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

    result = sub_100035D8C(v12, a6, a7);
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

    result = sub_100072B9C();
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

uint64_t sub_100035D8C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100072BCC();
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
    v5 = sub_100072BAC();
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

void sub_100035E08(void (*a1)(void, void))
{
  v2 = [objc_opt_self() bagSubProfileVersion];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = sub_100072B2C();
  v5 = [objc_opt_self() bagForProfile:v4 profileVersion:v3];

  v6 = sub_100072B2C();
  v7 = [v5 doubleForKey:v6];

  v35[0] = 0;
  v8 = [v7 valueWithError:v35];
  if (v8)
  {
    v9 = v8;
    v34 = v5;
    v10 = v35[0];
    v11 = arc4random_uniform(0x64u) / 100.0;
    [v9 doubleValue];
    if (v11 >= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x675F706D615F7078;
    }

    if (v11 >= v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0xEC00000073635F63;
    }

    if (qword_100094700 != -1)
    {
      swift_once();
    }

    v15 = sub_100071E7C();
    sub_100007DE8(v15, qword_1000999B0);

    v16 = v9;
    v17 = sub_100071E5C();
    v18 = sub_100072CFC();

    if (os_log_type_enabled(v17, v18))
    {
      v33 = a1;
      v19 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v19 = 136315906;
      *(v19 + 4) = sub_100034D20(0x697274656D2D6B67, 0xEE007463702D7363, &v36);
      *(v19 + 12) = 2048;
      [v16 doubleValue];
      *(v19 + 14) = v20;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v11;
      *(v19 + 32) = 2080;
      v35[0] = v13;
      v35[1] = v14;

      sub_10000388C(&qword_100095C30, &qword_1000750B0);
      v21 = sub_100072B4C();
      v23 = sub_100034D20(v21, v22, &v36);

      *(v19 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "fetchMetricsPercentage %s - %f. Candidate Percentage: %f => Topic: %s", v19, 0x2Au);
      swift_arrayDestroy();

      a1 = v33;
    }

    a1(v13, v14);
  }

  else
  {
    v24 = v35[0];
    v25 = sub_100071C1C();

    swift_willThrow();
    if (qword_100094700 != -1)
    {
      swift_once();
    }

    v26 = sub_100071E7C();
    sub_100007DE8(v26, qword_1000999B0);
    swift_errorRetain();
    v27 = sub_100071E5C();
    v28 = sub_100072CFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_100034D20(0x697274656D2D6B67, 0xEE007463702D7363, v35);
      *(v29 + 12) = 2080;
      v36 = v25;
      swift_errorRetain();
      sub_10000388C(&qword_100094BF8, qword_100073CB0);
      v30 = sub_100072B4C();
      v32 = sub_100034D20(v30, v31, v35);

      *(v29 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "fetchMetricsPercentage %s - defaulting to 0, unable to retrieve: %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    a1(0, 0);
  }
}

void sub_10003638C(uint64_t a1, unint64_t a2, void (*a3)(double))
{
  v5 = [objc_opt_self() bagSubProfileVersion];
  if (!v5)
  {

    __break(1u);
  }

  v6 = v5;
  v7 = sub_100072B2C();
  v8 = [objc_opt_self() bagForProfile:v7 profileVersion:v6];

  v9 = sub_100072B2C();
  v30 = v8;
  v10 = [v8 doubleForKey:v9];

  v32 = 0;
  v11 = [v10 valueWithError:&v32];
  if (v11)
  {
    v12 = v11;
    v13 = qword_100094700;
    v14 = v32;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_100071E7C();
    sub_100007DE8(v15, qword_1000999B0);

    v16 = v12;
    v17 = sub_100071E5C();
    v18 = sub_100072CFC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_100034D20(a1, a2, &v32);
      *(v19 + 12) = 2048;
      [v16 doubleValue];
      *(v19 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "fetchLivePreviewRateInSeconds %s - %f", v19, 0x16u);
      sub_100007F50(v20);
    }

    (a3)([v16 doubleValue]);
  }

  else
  {
    v22 = v32;
    sub_100071C1C();

    swift_willThrow();
    if (qword_100094700 != -1)
    {
      swift_once();
    }

    v23 = sub_100071E7C();
    sub_100007DE8(v23, qword_1000999B0);

    swift_errorRetain();
    v24 = sub_100071E5C();
    v25 = sub_100072CFC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = sub_100034D20(a1, a2, &v32);
      *(v26 + 12) = 2048;
      *(v26 + 14) = 0x3FF0000000000000;
      *(v26 + 22) = 2080;
      swift_errorRetain();
      sub_10000388C(&qword_100094BF8, qword_100073CB0);
      v27 = sub_100072B4C();
      v29 = sub_100034D20(v27, v28, &v32);

      *(v26 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "fetchLivePreviewRateInSeconds %s - defaulting to %f, unable to retrieve: %s", v26, 0x20u);
      swift_arrayDestroy();
    }

    a3(1.0);
  }
}

void sub_100036850(uint64_t a1)
{
  v2 = sub_100071C9C();
  v133 = *(v2 - 8);
  v3 = *(v133 + 64);
  __chkstk_darwin(v2);
  v126 = (&v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v122 = &v121 - v6;
  __chkstk_darwin(v7);
  v9 = &v121 - v8;
  __chkstk_darwin(v10);
  v130 = &v121 - v11;
  v12 = type metadata accessor for GameCenterStore.CacheConfig(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v124 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v123 = &v121 - v16;
  __chkstk_darwin(v17);
  v19 = &v121 - v18;
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v20 = sub_100071E7C();
  v21 = sub_100007DE8(v20, qword_100099998);
  sub_10003B114(a1, v19, type metadata accessor for GameCenterStore.CacheConfig);
  v134 = v21;
  v22 = sub_100071E5C();
  v23 = sub_100072CFC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 136315138;
    v135 = v25;
    v136 = 0x5F726579616C70;
    v137 = 0xE700000000000000;
    sub_100072B7C(*&v19[*(v12 + 24)]);
    v125 = a1;
    v129 = v12;
    v26 = v2;
    v27 = v130;
    sub_100071C5C();

    sub_10003ACC8(&qword_100094C00, &type metadata accessor for URL);
    v28 = sub_100072FEC();
    v30 = v29;
    (*(v133 + 8))(v27, v26);
    sub_10003B17C(v19, type metadata accessor for GameCenterStore.CacheConfig);
    v31 = sub_100034D20(v28, v30, &v135);
    v2 = v26;
    v12 = v129;
    a1 = v125;

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Cache player metadata url = %s", v24, 0xCu);
    sub_100007F50(v25);
  }

  else
  {

    sub_10003B17C(v19, type metadata accessor for GameCenterStore.CacheConfig);
  }

  v32 = sub_10006CEA0();
  if (v32)
  {
    v33 = v32;
    v34 = [v32 alias];
    v35 = sub_100072B3C();
    v131 = v36;
    v132 = v35;
  }

  else
  {
    v132 = 0x6E776F6E6B6E75;
    v131 = 0xE700000000000000;
  }

  v136 = 0x5F726579616C70;
  v137 = 0xE700000000000000;
  v37 = (a1 + *(v12 + 24));
  v138._countAndFlagsBits = *v37;
  v127 = v37[1];
  v138._object = v127;
  countAndFlagsBits = v138._countAndFlagsBits;
  sub_100072B7C(v138);
  sub_100071C5C();

  v38 = sub_100071CAC();
  v40 = v39;
  v129 = v12;
  v41 = v133 + 8;
  v42 = *(v133 + 8);
  v42(v9, v2);
  v43 = sub_100071BBC();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_100071BAC();
  sub_100071B9C();
  v133 = v41;
  v125 = a1;
  sub_1000086B8(v38, v40);

  v47 = v136;
  v46 = v137;
  v48 = sub_100071E5C();
  v49 = sub_100072CFC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Cached player appears to exist - comparing name to logged in player...", v50, 2u);
  }

  v51 = sub_100071E5C();
  v52 = sub_100072CFC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = v2;
    v55 = swift_slowAlloc();
    v136 = v55;
    *v53 = 136315138;
    *(v53 + 4) = sub_100034D20(v47, v46, &v136);
    _os_log_impl(&_mh_execute_header, v51, v52, "Cached player is %s", v53, 0xCu);
    sub_100007F50(v55);
    v2 = v54;
  }

  v56 = v131;
  if (v47 == v132 && v46 == v131)
  {

LABEL_19:

    v58 = sub_100071E5C();
    v59 = sub_100072CFC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "The cache is still valid. Deferring to it for data where possible.", v60, 2u);
    }

    return;
  }

  v57 = sub_100072FFC();

  if (v57)
  {
    goto LABEL_19;
  }

  v61 = sub_100071E5C();
  v62 = sub_100072CFC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "The cache is out of date. Erasing it and fetching new data.", v63, 2u);
  }

  v64 = objc_opt_self();
  v65 = &SeededRandomNumberGenerator;
  v66 = [v64 defaultManager];
  v67 = v130;
  v68 = v125;
  v69 = (v125 + *(v129 + 20));
  v70 = *v69;
  v71 = v69[1];
  sub_100071C4C();
  sub_100071C3C(v72);
  v74 = v73;
  v42(v67, v2);
  v136 = 0;
  LODWORD(v67) = [v66 removeItemAtURL:v74 error:&v136];

  v75 = v136;
  if (v67)
  {
    v76 = v123;
    sub_10003B114(v68, v123, type metadata accessor for GameCenterStore.CacheConfig);
    v77 = v75;
    v78 = sub_100071E5C();
    v79 = sub_100072CFC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v136 = v121;
      *v80 = 136315138;
      v81 = v130;
      v82 = (v76 + *(v129 + 20));
      v83 = *v82;
      v84 = v82[1];
      sub_100071C4C();
      v85 = sub_100071C7C();
      v126 = v64;
      v86 = v42;
      v87 = v2;
      v89 = v88;
      v86(v81, v87);
      sub_10003B17C(v76, type metadata accessor for GameCenterStore.CacheConfig);
      v90 = sub_100034D20(v85, v89, &v136);
      v2 = v87;
      v42 = v86;
      v64 = v126;

      *(v80 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v78, v79, "Deleted cache directory at %s", v80, 0xCu);
      sub_100007F50(v121);
      v56 = v131;

      v65 = &SeededRandomNumberGenerator;
    }

    else
    {

      sub_10003B17C(v76, type metadata accessor for GameCenterStore.CacheConfig);
    }
  }

  else
  {
    v91 = v136;
    sub_100071C1C();

    swift_willThrow();
  }

  v92 = [v64 *&v65[14].ivar_base_size];
  v93 = v130;
  v94 = v125;
  sub_100071C5C();
  sub_100071C3C(v95);
  v97 = v96;
  v42(v93, v2);
  v136 = 0;
  LODWORD(v93) = [v92 removeItemAtURL:v97 error:&v136];

  v98 = v136;
  if (v93)
  {
    v99 = v124;
    sub_10003B114(v94, v124, type metadata accessor for GameCenterStore.CacheConfig);
    v100 = v98;
    v101 = sub_100071E5C();
    v102 = sub_100072CFC();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v136 = v126;
      *v103 = 136315138;
      v104 = v130;
      v105 = (v99 + *(v129 + 24));
      v106 = *v105;
      v107 = v105[1];
      sub_100071C5C();
      v108 = sub_100071C7C();
      v109 = v2;
      v111 = v110;
      v42(v104, v109);
      sub_10003B17C(v99, type metadata accessor for GameCenterStore.CacheConfig);
      v112 = sub_100034D20(v108, v111, &v136);
      v2 = v109;
      v56 = v131;

      *(v103 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v101, v102, "Deleted cache metadata at %s", v103, 0xCu);
      sub_100007F50(v126);
    }

    else
    {

      sub_10003B17C(v99, type metadata accessor for GameCenterStore.CacheConfig);
    }
  }

  else
  {
    v113 = v136;
    sub_100071C1C();

    swift_willThrow();
  }

  v114 = sub_100071BEC();
  v115 = *(v114 + 48);
  v116 = *(v114 + 52);
  swift_allocObject();
  sub_100071BDC();
  v136 = v132;
  v137 = v56;
  v117 = sub_100071BCC();
  v119 = v118;

  v136 = 0x5F726579616C70;
  v137 = 0xE700000000000000;
  v139._object = v127;
  v139._countAndFlagsBits = countAndFlagsBits;
  sub_100072B7C(v139);
  v120 = v122;
  sub_100071C5C();

  sub_100071CDC();
  v42(v120, v2);
  sub_1000086B8(v117, v119);
}

uint64_t sub_1000379B0(uint64_t a1)
{
  v2 = type metadata accessor for GameCenterStore.CacheConfig(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v156 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v154 = &v148 - v6;
  v167 = sub_100071C9C();
  v158 = *(v167 - 8);
  v7 = v158;
  v8 = *(v158 + 64);
  __chkstk_darwin(v167);
  v157 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v153 = &v148 - v11;
  __chkstk_darwin(v12);
  v155 = &v148 - v13;
  __chkstk_darwin(v14);
  v16 = &v148 - v15;
  v17 = sub_100071D4C();
  v169 = *(v17 - 8);
  v18 = v169[8];
  __chkstk_darwin(v17);
  v20 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v148 - v22;
  __chkstk_darwin(v24);
  v26 = &v148 - v25;
  __chkstk_darwin(v27);
  v163 = &v148 - v28;
  __chkstk_darwin(v29);
  v31 = &v148 - v30;
  __chkstk_darwin(v32);
  v168 = &v148 - v33;
  sub_100071D3C();
  v34 = (a1 + *(v2 + 24));
  v35 = *v34;
  v159 = v34[1];
  v160 = v35;
  v165 = a1;
  sub_100071C5C();
  v161 = sub_100071CAC();
  v162 = v36;
  v148 = v26;
  v149 = v23;
  v150 = v20;
  v151 = v2;
  v152 = v31;
  v164 = *(v7 + 8);
  v164(v16, v167);
  v37 = sub_100071BBC();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_100071BAC();
  sub_10003ACC8(&qword_100095C20, &type metadata accessor for Date);
  v41 = v162;
  v40 = v163;
  v42 = v161;
  sub_100071B9C();
  v166 = 0;
  v43 = v7 + 8;
  sub_1000086B8(v42, v41);

  v44 = v169;
  v45 = v169[4];
  v46 = v152;
  v161 = v17;
  v45(v152, v40, v17);
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v47 = sub_100071E7C();
  v163 = sub_100007DE8(v47, qword_100099998);
  v48 = sub_100071E5C();
  v49 = sub_100072CFC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Cache appears to exist - checking creation date...", v50, 2u);
  }

  v158 = v43;

  v51 = v44[2];
  v52 = v148;
  v53 = v46;
  v54 = v161;
  (v51)(v148, v53, v161);
  v55 = sub_100071E5C();
  v56 = sub_100072CFC();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v170 = v58;
    *v57 = 136315138;
    sub_10003ACC8(&qword_100095C28, &type metadata accessor for Date);
    v59 = sub_100072FEC();
    v61 = v60;
    v162 = v169[1];
    v162(v52, v54);
    v62 = sub_100034D20(v59, v61, &v170);

    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v55, v56, "Decoded cache creation date %s", v57, 0xCu);
    sub_100007F50(v58);
  }

  else
  {

    v162 = v44[1];
    v162(v52, v54);
  }

  v63 = v54;
  v64 = v149;
  v65 = v152;
  v66 = v168;
  sub_100071CEC();
  v68 = v67;
  (v51)(v64, v66, v63);
  v69 = sub_100071E5C();
  v70 = sub_100072CFC();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v169 = v51;
    v72 = v64;
    v73 = v71;
    v74 = swift_slowAlloc();
    v170 = v74;
    *v73 = 136315138;
    sub_10003ACC8(&qword_100095C28, &type metadata accessor for Date);
    v75 = sub_100072FEC();
    v77 = v76;
    v51 = v169;
    v162(v72, v161);
    v78 = sub_100034D20(v75, v77, &v170);
    v63 = v161;

    *(v73 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v69, v70, "Current date = %s", v73, 0xCu);
    sub_100007F50(v74);
  }

  else
  {

    v162(v64, v63);
  }

  v79 = v150;
  (v51)(v150, v65, v63);
  v80 = sub_100071E5C();
  v81 = sub_100072CFC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v170 = v83;
    *v82 = 136315138;
    sub_10003ACC8(&qword_100095C28, &type metadata accessor for Date);
    v84 = sub_100072FEC();
    v85 = v79;
    v87 = v86;
    v162(v85, v63);
    v88 = sub_100034D20(v84, v87, &v170);

    *(v82 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v80, v81, "Cache creation date = %s", v82, 0xCu);
    sub_100007F50(v83);
  }

  else
  {

    v162(v79, v63);
  }

  v89 = v168;
  v90 = v165;
  v91 = v156;
  v92 = v151;
  v93 = sub_100071E5C();
  v94 = sub_100072CFC();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 134217984;
    *(v95 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v93, v94, "Time since cache creation date = %f", v95, 0xCu);
  }

  v96 = v154;
  sub_10003B114(v90, v154, type metadata accessor for GameCenterStore.CacheConfig);
  v97 = sub_100071E5C();
  v98 = sub_100072CFC();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = v96;
    v101 = v99;
    *v99 = 134217984;
    v102 = *(v100 + *(v92 + 28));
    sub_10003B17C(v100, type metadata accessor for GameCenterStore.CacheConfig);
    *(v101 + 1) = v102;
    _os_log_impl(&_mh_execute_header, v97, v98, "Cache TTL = %ld", v101, 0xCu);
  }

  else
  {
    sub_10003B17C(v96, type metadata accessor for GameCenterStore.CacheConfig);
  }

  v103 = v155;

  if (v68 > *(v90 + *(v92 + 28)) && [objc_opt_self() _gkIsOnline])
  {
    v104 = sub_100071E5C();
    v105 = sub_100072CFC();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v104, v105, "The cache is out of date. Erasing it and fetching new data.", v106, 2u);
    }

    v107 = [objc_opt_self() defaultManager];
    v108 = (v90 + *(v92 + 20));
    v109 = *v108;
    v110 = v108[1];
    sub_100071C4C();
    sub_100071C3C(v111);
    v113 = v112;
    v164(v103, v167);
    v170 = 0;
    v114 = [v107 removeItemAtURL:v113 error:&v170];

    v115 = v170;
    if (v114)
    {
      sub_10003B114(v90, v91, type metadata accessor for GameCenterStore.CacheConfig);
      v116 = v115;
      v117 = sub_100071E5C();
      v118 = sub_100072CFC();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v170 = v169;
        *v119 = 136315138;
        v120 = (v91 + *(v92 + 20));
        v121 = *v120;
        v122 = v120[1];
        sub_100071C4C();
        v123 = sub_100071C7C();
        v124 = v91;
        v126 = v125;
        v164(v103, v167);
        sub_10003B17C(v124, type metadata accessor for GameCenterStore.CacheConfig);
        v127 = sub_100034D20(v123, v126, &v170);

        *(v119 + 4) = v127;
        _os_log_impl(&_mh_execute_header, v117, v118, "Deleted cache directory at %s", v119, 0xCu);
        sub_100007F50(v169);
      }

      else
      {

        sub_10003B17C(v91, type metadata accessor for GameCenterStore.CacheConfig);
      }

      v132 = v166;
    }

    else
    {
      v131 = v170;
      sub_100071C1C();

      swift_willThrow();

      v132 = 0;
    }

    v133 = sub_100071BEC();
    v134 = *(v133 + 48);
    v135 = *(v133 + 52);
    swift_allocObject();
    sub_100071BDC();
    sub_10003ACC8(&qword_100095C18, &type metadata accessor for Date);
    v136 = sub_100071BCC();
    if (v132)
    {

      swift_errorRetain();
      v141 = sub_100071E5C();
      v142 = sub_100072CFC();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        *v143 = 138412290;
        swift_errorRetain();
        v145 = _swift_stdlib_bridgeErrorToNSError();
        *(v143 + 4) = v145;
        *v144 = v145;
        _os_log_impl(&_mh_execute_header, v141, v142, "Failed to write JSON data with error: %@", v143, 0xCu);
        sub_100004890(v144, &qword_100095BD8, &qword_100075090);
      }
    }

    else
    {
      v138 = v136;
      v139 = v137;

      v140 = v153;
      sub_100071C5C();
      sub_100071CDC();
      sub_1000086B8(v138, v139);
      v164(v140, v167);
    }
  }

  else
  {
    v128 = sub_100071E5C();
    v129 = sub_100072CFC();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&_mh_execute_header, v128, v129, "The cache is still valid. Deferring to it for data where possible.", v130, 2u);
    }
  }

  v146 = v162;
  v162(v152, v63);
  return v146(v89, v63);
}

uint64_t sub_100038D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a2;
  v30 = type metadata accessor for GameCenterStore.CacheConfig(0);
  v8 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100071C9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = [objc_opt_self() defaultManager];
  v20 = [v19 URLsForDirectory:13 inDomains:1];

  v21 = sub_100072C4C();
  if (*(v21 + 16))
  {
    v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v29 = a1;
    v23 = a3;
    v24 = *(v12 + 16);
    v24(v15, v21 + v22, v11);

    (*(v12 + 32))(v18, v15, v11);
    v24(v10, v18, v11);
    v25 = v30;
    v26 = &v10[*(v30 + 20)];
    *v26 = v31;
    *(v26 + 1) = a5;
    v27 = &v10[*(v25 + 24)];
    *v27 = v32;
    *(v27 + 1) = v23;
    *&v10[*(v25 + 28)] = v29;

    sub_100036850(v10);
    sub_1000379B0(v10);
    sub_10003B17C(v10, type metadata accessor for GameCenterStore.CacheConfig);
    return (*(v12 + 8))(v18, v11);
  }

  else
  {
  }
}

uint64_t sub_100039054()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003908C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000390B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000390CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100039110()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039148(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_100072FFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646944726F727265 && a2 == 0xED0000727563634FLL || (sub_100072FFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69547972746572 && a2 == 0xE900000000000065 || (sub_100072FFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44496568636163 && a2 == 0xE700000000000000 || (sub_100072FFC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6146746567646977 && a2 == 0xEC000000796C696DLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_100072FFC();

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

void sub_10003930C(uint64_t a1, unint64_t a2, void (*a3)(id))
{
  v5 = [objc_opt_self() bagSubProfileVersion];
  if (!v5)
  {

    __break(1u);
  }

  v6 = v5;
  v7 = sub_100072B2C();
  v8 = [objc_opt_self() bagForProfile:v7 profileVersion:v6];

  v9 = sub_100072B2C();
  v10 = [v8 integerForKey:v9];

  v30 = 0;
  v11 = [v10 valueWithError:&v30];
  if (v11)
  {
    v12 = v11;
    v13 = qword_100094700;
    v14 = v30;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_100071E7C();
    sub_100007DE8(v15, qword_1000999B0);

    v16 = v12;
    v17 = sub_100071E5C();
    v18 = sub_100072CFC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_100034D20(a1, a2, &v30);
      *(v19 + 12) = 2048;
      *(v19 + 14) = [v16 integerValue];

      _os_log_impl(&_mh_execute_header, v17, v18, "fetchTTLInSeconds %s - %ld", v19, 0x16u);
      sub_100007F50(v20);
    }

    else
    {
    }

    a3([v16 integerValue]);
  }

  else
  {
    v21 = v30;
    sub_100071C1C();

    swift_willThrow();
    if (qword_100094700 != -1)
    {
      swift_once();
    }

    v22 = sub_100071E7C();
    sub_100007DE8(v22, qword_1000999B0);

    swift_errorRetain();
    v23 = sub_100071E5C();
    v24 = sub_100072CFC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v25 = 136315650;
      *(v25 + 4) = sub_100034D20(a1, a2, &v30);
      *(v25 + 12) = 2048;
      *(v25 + 14) = 86400;
      *(v25 + 22) = 2080;
      swift_errorRetain();
      sub_10000388C(&qword_100094BF8, qword_100073CB0);
      v26 = sub_100072B4C();
      v28 = sub_100034D20(v26, v27, &v30);

      *(v25 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "fetchTTLInSeconds %s - defaulting to %ld, unable to retrieve: %s", v25, 0x20u);
      swift_arrayDestroy();
    }

    a3(86400);
  }
}

void sub_1000397D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v51 = a4;
  v48 = a1;
  v10 = sub_1000729DC();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  __chkstk_darwin(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v52 = v12;
  v13 = qword_1000946F8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_100071E7C();
  sub_100007DE8(v14, qword_100099998);
  v15 = sub_100071E5C();
  v16 = sub_100072CFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "fetchAppDisplayDataForContinuePlaying", v17, 2u);
  }

  v18 = sub_10006CEA0();
  if (v18)
  {
    v19 = v18;
    v20 = v18;
    v21 = sub_100071E5C();
    v22 = sub_100072CFC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v19;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "Current player is %@", v23, 0xCu);
      sub_100004890(v24, &qword_100095BD8, &qword_100075090);
    }

    v46 = a2;

    v26 = [objc_opt_self() proxyForPlayer:v20];
    v47 = [v26 gameServicePrivate];

    v27 = [v20 internal];
    v28 = [v27 playerID];

    if (!v28)
    {
      sub_100072B3C();
      v28 = sub_100072B2C();
    }

    v44 = v20;
    v45 = a3;
    if (qword_100094710 != -1)
    {
      swift_once();
    }

    v43 = qword_100095B38;
    isa = sub_100072CBC().super.super.isa;
    v30 = v49;
    v31 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v50;
    (*(v49 + 16))(v31, v48, v50);
    v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v34 = (v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = v52;
    *(v35 + 16) = sub_10003AE98;
    *(v35 + 24) = v36;
    (*(v30 + 32))(v35 + v33, v31, v32);
    *(v35 + v34) = v51;
    v37 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
    v38 = v45;
    *v37 = v46;
    v37[1] = v38;
    aBlock[4] = sub_10003AFA4;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100032D0C;
    aBlock[3] = &unk_100092868;
    v39 = _Block_copy(aBlock);

    [v47 getGamesPlayedSummaries:v28 limit:v43 withinSecs:isa handler:v39];
    _Block_release(v39);

    swift_unknownObjectRelease();
  }

  else
  {
    v40 = sub_100071E5C();
    v41 = sub_100072CFC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to get local player!", v42, 2u);
    }

    a5(&_swiftEmptyArrayStorage, 1);
  }
}

void *sub_100039D70(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return &_swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_10000388C(&qword_100095C78, &qword_1000750F8);
    v4 = sub_100072C7C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

void sub_100039E0C(void **a1, NSObject *a2, uint64_t a3)
{
  v7 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v51[-v9];
  v11 = sub_100071C9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v51[-v18];
  v20 = *a1;
  v21 = [v20 identifier];
  if (!v21)
  {
    goto LABEL_4;
  }

  v59 = a2;
  v57 = a3;
  v22 = v21;
  v56 = sub_100072B3C();
  v24 = v23;

  sub_100072D4C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_100004890(v10, &qword_100094E50, &qword_100074180);
    a3 = v57;
    a2 = v59;
LABEL_4:
    v25 = [v20 playerInternal];
    if (v25)
    {
      v26 = v25;
      dispatch_group_enter(a2);
      v27 = [objc_allocWithZone(GKPlayer) initWithInternalRepresentation:v26];
      v28 = swift_allocObject();
      v28[2] = a3;
      v28[3] = v26;
      v28[4] = a2;
      aBlock[4] = sub_10003ACBC;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000348E4;
      aBlock[3] = &unk_1000927A0;
      v29 = a2;
      v30 = _Block_copy(aBlock);

      v31 = v29;
      v32 = v26;

      [v27 playerAvatarImageWithSize:0x10000 completionHandler:v30];
      _Block_release(v30);
    }

    return;
  }

  (*(v12 + 32))(v19, v10, v11);
  v33 = v59;
  dispatch_group_enter(v59);
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v34 = sub_100071E7C();
  sub_100007DE8(v34, qword_1000999C8);
  (*(v12 + 16))(v15, v19, v11);

  v35 = sub_100071E5C();
  v36 = sub_100072CFC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v54 = v3;
    v38 = v37;
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v38 = 136315394;
    sub_10003ACC8(&qword_100094C00, &type metadata accessor for URL);
    v52 = v36;
    v39 = sub_100072FEC();
    v41 = v40;
    v42 = *(v12 + 8);
    v55 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43 = v15;
    v44 = v42;
    v42(v43, v11);
    v45 = sub_100034D20(v39, v41, aBlock);
    v33 = v59;

    *(v38 + 4) = v45;
    *(v38 + 12) = 2080;
    v46 = v56;
    *(v38 + 14) = sub_100034D20(v56, v24, aBlock);
    _os_log_impl(&_mh_execute_header, v35, v52, "Fetching avatar %s for %s", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v47 = *(v12 + 8);
    v55 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v15;
    v44 = v47;
    v47(v48, v11);
    v46 = v56;
  }

  v49 = v57;

  v50 = v33;
  sub_10000997C(v19, v46, v24, v49, v46, v24, v50);

  swift_bridgeObjectRelease_n();

  v44(v19, v11);
}

id sub_10003A3B0(void **a1, NSObject *a2, uint64_t a3)
{
  v48 = a3;
  v5 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v43[-v7];
  v9 = sub_100071C9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v47 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v49 = &v43[-v14];
  v15 = *a1;
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v16 = sub_100071E7C();
  v17 = sub_100007DE8(v16, qword_1000999C8);
  v18 = v15;
  v46 = v17;
  v19 = sub_100071E5C();
  v20 = sub_100072CFC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v45 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "game is %@", v22, 0xCu);
    sub_100004890(v23, &qword_100095BD8, &qword_100075090);

    v10 = v45;
  }

  result = [v18 identifier];
  if (result)
  {
    v26 = result;
    v27 = sub_100072B3C();
    v29 = v28;

    sub_100072D3C();
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      return sub_100004890(v8, &qword_100094E50, &qword_100074180);
    }

    else
    {
      v45 = v27;
      v30 = v49;
      (*(v10 + 32))(v49, v8, v9);
      dispatch_group_enter(a2);
      v31 = v47;
      (*(v10 + 16))(v47, v30, v9);

      v32 = sub_100071E5C();
      v33 = sub_100072CFC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v50 = v46;
        *v34 = 136315394;
        sub_10003ACC8(&qword_100094C00, &type metadata accessor for URL);
        v44 = v33;
        v35 = sub_100072FEC();
        v37 = v36;
        v47 = *(v10 + 8);
        (v47)(v31, v9);
        v38 = sub_100034D20(v35, v37, &v50);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v39 = v45;
        *(v34 + 14) = sub_100034D20(v45, v29, &v50);
        _os_log_impl(&_mh_execute_header, v32, v44, "Fetching icon %s for %s", v34, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v47 = *(v10 + 8);
        (v47)(v31, v9);
        v39 = v45;
      }

      v40 = v48;

      v41 = a2;
      v42 = v49;
      sub_10000997C(v49, v39, v29, v40, v39, v29, v41);

      swift_bridgeObjectRelease_n();

      return (v47)(v42, v9);
    }
  }

  return result;
}

void sub_10003A92C(id *a1, NSObject *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [*a1 relationships];
  v6 = [v5 players];

  if (v6)
  {
    sub_10000F74C(0, &qword_100094D00, GKPlayerActivityRelationshipPlayer_ptr);
    v7 = sub_100072C4C();

    if (v7 >> 62)
    {
      goto LABEL_14;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v4; v8; i = v4)
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_100072E6C();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v4 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v22 = v10;
        sub_100039E0C(&v22, a2, a3);

        ++v9;
        if (v4 == v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = sub_100072EDC();
    }

LABEL_15:

    v4 = i;
  }

  v12 = [v4 relationships];
  v13 = [v12 games];

  if (v13)
  {
    sub_10000F74C(0, &qword_100094CF8, GKPlayerActivityRelationshipGame_ptr);
    v14 = sub_100072C4C();

    if (v14 >> 62)
    {
      goto LABEL_29;
    }

    for (j = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100072EDC())
    {
      v16 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = sub_100072E6C();
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v22 = v17;
        sub_10003A3B0(&v22, a2, a3);

        ++v16;
        if (v19 == j)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_30:
  }
}

uint64_t sub_10003ABBC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10003AC10()
{
  result = qword_100095BF8;
  if (!qword_100095BF8)
  {
    sub_1000038D4(&qword_100095BF0, &qword_100075098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095BF8);
  }

  return result;
}

uint64_t sub_10003AC74()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003ACC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003AD30()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10003ADE4(uint64_t a1)
{
  v3 = *(sub_1000729DC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);

  return sub_10002D05C(a1, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_10003AE98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10003AEC0()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10003AFA4(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000729DC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_10002D114(a1, a2, v9, v10, v2 + v6, v8, v12, v13);
}

uint64_t sub_10003B114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003B17C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003B1DC()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

void sub_10003B2A8(uint64_t a1)
{
  v3 = *(sub_1000729DC() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10002F27C(a1, v1[2], v1[3], v1[4], v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

_OWORD *sub_10003B36C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10003B398()
{
  v1 = (type metadata accessor for AppMetadata() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_100071D4C();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7] + 8);

  v8 = *(v5 + v1[8] + 8);

  v9 = *(v5 + v1[9] + 8);

  v10 = *(v5 + v1[10] + 8);

  v11 = *(v5 + v1[12]);

  v12 = *(v5 + v1[13]);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10003B500(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppMetadata() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + 16);
  v10 = *(v3 + v8);
  v11 = *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v9, v3 + v7, v10, v11);
}

uint64_t sub_10003B5D0()
{
  v1 = (type metadata accessor for AppMetadata() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = sub_1000729DC();
  v7 = *(v23 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v6 + 16) & ~v8;
  v22 = v2 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = sub_100071D4C();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  v12 = *(v0 + v3 + v1[7] + 8);

  v13 = *(v0 + v3 + v1[8] + 8);

  v14 = *(v0 + v3 + v1[9] + 8);

  v15 = *(v0 + v3 + v1[10] + 8);

  v16 = *(v0 + v3 + v1[12]);

  v17 = *(v0 + v3 + v1[13]);

  v18 = *(v0 + v5);

  v19 = *(v0 + v6 + 8);

  (*(v7 + 8))(v0 + v9, v23);
  v20 = *(v0 + v10);

  return _swift_deallocObject(v0, v10 + 8, v22 | 7);
}

void sub_10003B7F4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppMetadata() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1000729DC() - 8);
  v12 = (*(v11 + 80) + v10 + 16) & ~*(v11 + 80);
  sub_1000306E4(a1, a2, *(v2 + 16), (v2 + v6), *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + v10), *(v2 + v10 + 8), (v2 + v12), *(v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10003B94C()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10003BA40()
{
  v1 = *(sub_1000729DC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_100031A08(v4, (v0 + v2), v5, v7, v8);
}

uint64_t sub_10003BB00(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003BB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003BBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100071D4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003BC88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100071D4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003BD44()
{
  result = sub_100071D4C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CacheType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CacheType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_10003BED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100071C9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003BFA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100071C9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003C060()
{
  result = sub_100071C9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10003C0E4()
{
  result = qword_100095DD8;
  if (!qword_100095DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095DD8);
  }

  return result;
}

void *sub_10003C138(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10003C17C()
{
  result = qword_100095DE8;
  if (!qword_100095DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetCreationAttempt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetCreationAttempt.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003C340()
{
  result = qword_100095DF8;
  if (!qword_100095DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095DF8);
  }

  return result;
}

unint64_t sub_10003C398()
{
  result = qword_100095E00;
  if (!qword_100095E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095E00);
  }

  return result;
}

unint64_t sub_10003C3F0()
{
  result = qword_100095E08;
  if (!qword_100095E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095E08);
  }

  return result;
}

uint64_t sub_10003C4A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CPTimelineEntry();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_100071F5C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[8]);
    if (v15 >= 2)
    {
      return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_10000388C(&qword_100095568, &unk_100074960);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_5;
  }

  v17 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_5;
  }

  v18 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[11];
    goto LABEL_5;
  }

  v19 = sub_10000388C(&qword_100095260, qword_100074600);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[12];

  return v20(v21, a2, v19);
}

uint64_t sub_10003C73C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CPTimelineEntry();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100071F5C();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8]) = a2 + 1;
    return result;
  }

  v16 = sub_10000388C(&qword_100095568, &unk_100074960);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v18 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v19 = sub_10000388C(&qword_100095260, qword_100074600);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[12];

  return v20(v21, a2, a2, v19);
}

uint64_t type metadata accessor for CPAppGridView()
{
  result = qword_100095E68;
  if (!qword_100095E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003CA00()
{
  type metadata accessor for CPTimelineEntry();
  if (v0 <= 0x3F)
  {
    sub_100071F5C();
    if (v1 <= 0x3F)
    {
      sub_10003CB68(319, &qword_1000955D8, &type metadata accessor for RedactionReasons);
      if (v2 <= 0x3F)
      {
        sub_10003CB68(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode);
        if (v3 <= 0x3F)
        {
          sub_10003CB68(319, &qword_100094858, &type metadata accessor for WidgetFamily);
          if (v4 <= 0x3F)
          {
            sub_10003CB68(319, &unk_1000952D0, &type metadata accessor for ColorScheme);
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

void sub_10003CB68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100071EBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003CBD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CPAppGridView();
  sub_100004C94(v1 + *(v12 + 44), v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10003CDE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_100094900, &qword_1000762D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CPAppGridView();
  sub_100004C94(v1 + *(v12 + 48), v11, &qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100071EAC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10003CFE8()
{
  v1 = sub_100071EAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_10007297C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = *(type metadata accessor for CPAppGridView() + 40);
  v25 = v0;
  sub_1000129F8(v16);
  sub_10007296C();
  v18 = sub_10007295C();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v19(v16, v9);
  v20 = [objc_opt_self() systemGray4Color];
  sub_10007274C();
  if ((v18 & 1) == 0)
  {
    sub_10003CDE0(v8);
    (*(v2 + 104))(v5, enum case for ColorScheme.dark(_:), v1);
    sub_100071E9C();
    v21 = *(v2 + 8);
    v21(v5, v1);
    v21(v8, v1);
  }

  v22 = sub_1000726FC();

  return v22;
}

uint64_t sub_10003D284@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_100071EAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10007297C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = *(type metadata accessor for CPAppGridView() + 40);
  v29 = v1;
  sub_1000129F8(v17);
  sub_10007296C();
  sub_10004279C(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode);
  v19 = sub_100072B1C();
  v20 = *(v11 + 8);
  v20(v14, v10);
  v20(v17, v10);
  if (v19)
  {
    v21 = enum case for BlendMode.normal(_:);
    v22 = sub_1000728BC();
    return (*(*(v22 - 8) + 104))(v30, v21, v22);
  }

  else
  {
    v24 = v30;
    sub_10003CDE0(v9);
    (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
    v25 = sub_100071E9C();
    v26 = *(v3 + 8);
    v26(v6, v2);
    v26(v9, v2);
    v27 = sub_1000728BC();
    if (v25)
    {
      v28 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v28 = &enum case for BlendMode.plusDarker(_:);
    }

    return (*(*(v27 - 8) + 104))(v24, *v28, v27);
  }
}

double sub_10003D5A4()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CBD8(v5);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for WidgetFamily.systemSmall(_:) || v6 == enum case for WidgetFamily.systemMedium(_:))
  {
    v8 = v0 + *(type metadata accessor for CPAppGridView() + 20);
    sub_100071F3C();
    v10 = 0.43;
LABEL_7:
    v11 = v9 * v10;
    return round(v11);
  }

  if (v6 == enum case for WidgetFamily.systemLarge(_:))
  {
    v12 = v0 + *(type metadata accessor for CPAppGridView() + 20);
    sub_100071F3C();
    v11 = v13 * 0.26;
    return round(v11);
  }

  if (v6 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v16 = v0 + *(type metadata accessor for CPAppGridView() + 20);
    sub_100071F3C();
    v10 = 0.28;
    goto LABEL_7;
  }

  v17 = enum case for WidgetFamily.accessoryCircular(_:);
  v18 = enum case for WidgetFamily.accessoryRectangular(_:);
  v19 = enum case for WidgetFamily.accessoryInline(_:);
  v20 = v6;
  v21 = v0 + *(type metadata accessor for CPAppGridView() + 20);
  sub_100071F3C();
  v14 = round(v22 * 0.43);
  if (v20 != v17 && v20 != v18 && v20 != v19)
  {
    (*(v2 + 8))(v5, v1);
  }

  return v14;
}

double sub_10003D7B4()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003D5A4();
  sub_10003CBD8(v4);
  v6 = (*(v1 + 88))(v4, v0);
  if (v6 == enum case for WidgetFamily.systemSmall(_:) || v6 == enum case for WidgetFamily.systemMedium(_:))
  {
    v8 = 4.0;
    return v5 + v8;
  }

  if (v6 == enum case for WidgetFamily.systemLarge(_:))
  {
    return v5;
  }

  if (v6 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v8 = 8.0;
    return v5 + v8;
  }

  if (v6 != enum case for WidgetFamily.accessoryCircular(_:) && v6 != enum case for WidgetFamily.accessoryRectangular(_:) && v6 != enum case for WidgetFamily.accessoryInline(_:))
  {
    (*(v1 + 8))(v4, v0);
  }

  return v5;
}

double sub_10003D93C()
{
  v1 = sub_10007218C();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v22 - v7);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPAppGridView();
  v15 = *(v14 + 44);
  v23 = v0;
  sub_100004C94(v0 + v15, v8, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v16 = *v8;
    sub_100072CEC();
    v17 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v24 + 8))(v4, v25);
  }

  v18 = (*(v10 + 88))(v13, v9);
  result = 0.0;
  if (v18 != enum case for WidgetFamily.systemSmall(_:) && v18 != enum case for WidgetFamily.systemMedium(_:) && v18 != enum case for WidgetFamily.systemLarge(_:))
  {
    if (v18 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v20 = v23 + *(v14 + 20);
      sub_100071F3C();
      return round(v21 * 0.08);
    }

    else if (v18 != enum case for WidgetFamily.accessoryCircular(_:) && v18 != enum case for WidgetFamily.accessoryRectangular(_:) && v18 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v10 + 8))(v13, v9, 0.0);
      return 0.0;
    }
  }

  return result;
}

double sub_10003DC90()
{
  v1 = sub_10007218C();
  v22 = *(v1 - 8);
  v23 = v1;
  v2 = *(v22 + 64);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v21 - v7);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPAppGridView();
  v15 = *(v14 + 44);
  v24 = v0;
  sub_100004C94(v0 + v15, v8, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v16 = *v8;
    sub_100072CEC();
    v17 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v22 + 8))(v4, v23);
  }

  if ((*(v10 + 88))(v13, v9) == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v18 = v24 + *(v14 + 20);
    sub_100071F3C();
    return round(v19 * 0.14);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    return 0.0;
  }
}

double sub_10003DF68()
{
  v20 = sub_10007218C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPAppGridView();
  sub_100004C94(v0 + *(v14 + 44), v8, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  result = 16.0;
  if (v17 != enum case for WidgetFamily.systemExtraLarge(_:))
  {
    (*(v10 + 8))(v13, v9, 16.0);
    return 0.0;
  }

  return result;
}

uint64_t sub_10003E21C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CPAppGridView();
  v5 = v4 - 8;
  v69 = *(v4 - 8);
  v6 = *(v69 + 64);
  __chkstk_darwin(v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_100095EC0, &qword_1000753D8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v67 - v10);
  v70 = sub_10000388C(&qword_100095EC8, &qword_1000753E0);
  v12 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  __chkstk_darwin(v18);
  v20 = &v67 - v19;
  v21 = sub_10000388C(&qword_100095ED0, &qword_1000753E8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v67 - v23;
  sub_10003DC90();
  sub_10003DF68();
  *v24 = sub_10007223C();
  *(v24 + 1) = 0;
  v71 = v24;
  v24[16] = 0;
  v25 = sub_10003D5A4();
  v27 = v26;
  v28 = sub_10003D7B4();
  v29 = sub_10003D93C();
  result = sub_10007223C();
  *v11 = result;
  v11[1] = v29;
  *(v11 + 16) = 0;
  if ((*(a1 + *(v5 + 32)) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v67 = v14;
    v68 = a2;
    v31 = *(sub_10000388C(&qword_100095ED8, &qword_1000753F0) + 44);
    sub_100041758(a1, &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v33 = (v6 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    sub_100041AB4(v7, v34 + v32);
    v35 = (v34 + v33);
    *v35 = v25;
    *(v35 + 1) = v27;
    *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v28;
    sub_10000388C(&qword_100095EE0, &qword_1000753F8);
    sub_100004C3C(&qword_100095EE8, &qword_100095EE0, &qword_1000753F8);
    sub_10007285C();
    LOBYTE(v34) = sub_1000723BC();
    v36 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v34)
    {
      v36 = sub_1000723EC();
    }

    v37 = sub_10000388C(&qword_100095EF0, &qword_100075400);
    v38 = v71;
    v39 = &v71[*(v37 + 44)];
    sub_100071E8C();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_100014DEC(v11, v17, &qword_100095EC0, &qword_1000753D8);
    v48 = &v17[*(v70 + 36)];
    *v48 = v36;
    *(v48 + 1) = v41;
    *(v48 + 2) = v43;
    *(v48 + 3) = v45;
    *(v48 + 4) = v47;
    v48[40] = 0;
    sub_100014DEC(v17, v20, &qword_100095EC8, &qword_1000753E0);
    v49 = v67;
    sub_100004C94(v20, v67, &qword_100095EC8, &qword_1000753E0);
    *v39 = 0;
    v39[8] = 0;
    v50 = sub_10000388C(&qword_100095EF8, &qword_100075408);
    sub_100004C94(v49, &v39[*(v50 + 48)], &qword_100095EC8, &qword_1000753E0);
    v51 = &v39[*(v50 + 64)];
    *v51 = 0;
    v51[8] = 0;
    sub_100004890(v20, &qword_100095EC8, &qword_1000753E0);
    sub_100004890(v49, &qword_100095EC8, &qword_1000753E0);
    sub_10000388C(&qword_100094F68, &qword_1000740E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100074030;
    LOBYTE(v50) = sub_1000723CC();
    *(inited + 32) = v50;
    v53 = sub_1000723FC();
    *(inited + 33) = v53;
    v54 = sub_1000723DC();
    *(inited + 34) = v54;
    v55 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v50)
    {
      v55 = sub_1000723EC();
    }

    sub_1000723EC();
    v56 = sub_1000723EC();
    v57 = v68;
    if (v56 != v53)
    {
      v55 = sub_1000723EC();
    }

    sub_1000723EC();
    if (sub_1000723EC() != v54)
    {
      v55 = sub_1000723EC();
    }

    sub_100071E8C();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    sub_100014DEC(v38, v57, &qword_100095ED0, &qword_1000753E8);
    result = sub_10000388C(&qword_100095F00, &qword_100075410);
    v66 = v57 + *(result + 36);
    *v66 = v55;
    *(v66 + 8) = v59;
    *(v66 + 16) = v61;
    *(v66 + 24) = v63;
    *(v66 + 32) = v65;
    *(v66 + 40) = 0;
  }

  return result;
}

uint64_t sub_10003E7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v46 = a3;
  v11 = type metadata accessor for CPAppGridView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000388C(&qword_100095F08, &qword_100075418);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v40 - v20;
  *v21 = sub_1000721CC();
  *(v21 + 1) = 0;
  v21[16] = 0;
  result = sub_10000388C(&qword_100095F10, &qword_100075420);
  v23 = *(a2 + *(v11 + 28));
  v24 = a1 * v23;
  if ((a1 * v23) >> 64 != (a1 * v23) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26 * v23;
  if ((v26 * v23) >> 64 != (v26 * v23) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v28 < v25)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v44 = *(result + 44);
  v40[1] = v25;
  sub_100041758(a2, v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v12 + 80);
  v45 = a1;
  v30 = (v29 + 16) & ~v29;
  v41 = v15;
  v42 = a2;
  v31 = (v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = v11;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = v46;
  v34 = swift_allocObject();
  sub_100041AB4(v14, v34 + v30);
  v35 = (v34 + v31);
  *v35 = a4;
  v35[1] = a5;
  *(v34 + v32) = a6;
  *(v34 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  sub_10000388C(&qword_100095F18, &qword_100075428);
  sub_100004C3C(&qword_100095F20, &qword_100095F18, &qword_100075428);
  sub_10007285C();
  *&v21[*(v41 + 36)] = 0x4024000000000000;
  v36 = *(v42 + *(v43 + 24));
  v38 = v36 < 2 || v36 - 1 != v45;
  sub_100004C94(v21, v18, &qword_100095F08, &qword_100075418);
  sub_100004C94(v18, v33, &qword_100095F08, &qword_100075418);
  v39 = v33 + *(sub_10000388C(&qword_100095F28, &qword_100075430) + 48);
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 9) = v38;
  sub_100004890(v21, &qword_100095F08, &qword_100075418);
  return sub_100004890(v18, &qword_100095F08, &qword_100075418);
}

uint64_t sub_10003EB88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v93 = a3;
  v95 = a1;
  v12 = sub_10000388C(&qword_100095F30, &qword_100075438);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v76 - v15;
  v92 = sub_10000388C(&qword_100095F38, &qword_100075440);
  v17 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v19 = &v76 - v18;
  v88 = sub_10007221C();
  v87 = *(v88 - 8);
  v20 = *(v87 + 64);
  __chkstk_darwin(v88);
  v86 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10007234C();
  v80 = *(v82 - 8);
  v22 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000388C(&qword_100095F40, &qword_100075448);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = (&v76 - v26);
  v89 = sub_10000388C(&qword_100095F48, &qword_100075450);
  v28 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v78 = &v76 - v29;
  v84 = sub_10000388C(&qword_100095F50, &qword_100075458);
  v83 = *(v84 - 8);
  v30 = *(v83 + 64);
  __chkstk_darwin(v84);
  v90 = &v76 - v31;
  v94 = sub_10000388C(&qword_100095F58, &qword_100075460);
  v32 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v81 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v85 = &v76 - v35;
  v36 = sub_10000388C(&qword_100095F60, &qword_100075468);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v76 - v41;
  v91 = *(a2 + *(type metadata accessor for CPAppGridView() + 32));
  v43 = type metadata accessor for CPTimelineEntry();
  if (*(a2 + v43[6]) != 1 || *(a2 + v43[9]) != 1)
  {
    goto LABEL_18;
  }

  v44 = *(a2 + v43[5]);
  if (v44 >> 62)
  {
    if (v44 < 0)
    {
      v69 = *(a2 + v43[5]);
    }

    else
    {
      v69 = v44 & 0xFFFFFFFFFFFFFF8;
    }

    v77 = v69;
    if (!sub_100072EDC() || v95 < 0)
    {
      goto LABEL_18;
    }

    v45 = sub_100072EDC();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v45 || v95 < 0)
    {
      goto LABEL_18;
    }
  }

  if (v45 <= v95)
  {
LABEL_18:
    sub_10003F680(a5, a6, a7);
    (*(v13 + 16))(v19, v16, v12);
    swift_storeEnumTagMultiPayload();
    a2 = sub_10004233C();
    v27 = sub_1000038D4(&qword_100095F80, &qword_100075470);
    v70 = sub_1000424EC();
    *&v98 = v27;
    *(&v98 + 1) = v70;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    (*(v13 + 8))(v16, v12);
    goto LABEL_19;
  }

  if ((v44 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v95)
  {
    __break(1u);
    sub_100072CEC();
    v75 = sub_10007239C();
    sub_100071E4C();

    v46 = v77;
    goto LABEL_11;
  }

  v46 = *(v44 + 8 * v95 + 32);

  while (1)
  {
    *v27 = sub_10007289C();
    v27[1] = v47;
    v48 = sub_10000388C(&qword_100095FA8, &qword_100075488);
    sub_10003F8BC(v46, a2, v27 + *(v48 + 44), a5, a6, a7);
    sub_1000728AC();
    v77 = v46;
LABEL_11:
    sub_100071FFC();
    v49 = v78;
    sub_100014DEC(v27, v78, &qword_100095F40, &qword_100075448);
    v50 = (v49 + *(v89 + 36));
    v51 = v103;
    v50[4] = v102;
    v50[5] = v51;
    v50[6] = v104;
    v52 = v99;
    *v50 = v98;
    v50[1] = v52;
    v53 = v101;
    v50[2] = v100;
    v50[3] = v53;
    v54 = v79;
    sub_10007232C();
    v55 = sub_100042434();
    sub_10007266C();
    (*(v80 + 8))(v54, v82);
    sub_100004890(v49, &qword_100095F48, &qword_100075450);
    v56 = *(v46 + 48);
    v96 = *(v46 + 40);
    v97 = v56;
    sub_100004A78();

    v57 = sub_10007259C();
    v59 = v58;
    LODWORD(v80) = v60;
    v82 = v61;
    v96 = v89;
    v97 = v55;
    swift_getOpaqueTypeConformance2();
    v62 = v81;
    v63 = v84;
    v64 = v90;
    sub_10007260C();
    sub_100004C84(v57, v59, v80 & 1);

    (*(v83 + 8))(v64, v63);
    v65 = v86;
    sub_10007220C();
    v66 = v85;
    sub_100071FAC();
    (*(v87 + 8))(v65, v88);
    a2 = &qword_100095F58;
    v27 = &qword_100075460;
    sub_100004890(v62, &qword_100095F58, &qword_100075460);
    sub_100004C94(v66, v19, &qword_100095F58, &qword_100075460);
    swift_storeEnumTagMultiPayload();
    sub_10004233C();
    v67 = sub_1000038D4(&qword_100095F80, &qword_100075470);
    v68 = sub_1000424EC();
    v96 = v67;
    v97 = v68;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();

    sub_100004890(v66, &qword_100095F58, &qword_100075460);
LABEL_19:
    if (!__OFSUB__(v93, 1))
    {
      break;
    }

    __break(1u);
LABEL_22:
    v46 = sub_100072E6C();
  }

  v71 = v93 - 1 <= v95;
  sub_100004C94(v42, v39, &qword_100095F60, &qword_100075468);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 9) = v91 ^ 1;
  v72 = sub_10000388C(&qword_100095FA0, &qword_100075480);
  sub_100004C94(v39, a4 + *(v72 + 48), &qword_100095F60, &qword_100075468);
  v73 = a4 + *(v72 + 64);
  *v73 = 0;
  *(v73 + 8) = 0;
  *(v73 + 9) = v71;
  sub_100004890(v42, &qword_100095F60, &qword_100075468);
  return sub_100004890(v39, &qword_100095F60, &qword_100075468);
}

uint64_t sub_10003F680(double a1, double a2, double a3)
{
  v5 = sub_10000388C(&qword_100095F98, &qword_100075478);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_10000388C(&qword_100095F80, &qword_100075470);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  *v8 = sub_10007223C();
  *(v8 + 1) = 0x4018000000000000;
  v8[16] = 0;
  v13 = sub_10000388C(&qword_100096030, &qword_100075550);
  sub_100040F14(&v8[*(v13 + 44)], a1, a3);
  sub_1000728AC();
  sub_100071FFC();
  sub_10004272C(v8, v12);
  v14 = &v12[*(v9 + 36)];
  v15 = v25;
  *(v14 + 4) = v24;
  *(v14 + 5) = v15;
  *(v14 + 6) = v26;
  v16 = v21;
  *v14 = v20;
  *(v14 + 1) = v16;
  v17 = v23;
  *(v14 + 2) = v22;
  *(v14 + 3) = v17;
  sub_1000424EC();
  sub_1000725FC();
  return sub_100004890(v12, &qword_100095F80, &qword_100075470);
}

uint64_t sub_10003F8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v99 = a2;
  v97 = a3;
  v10 = sub_10000388C(&qword_100095FB0, &qword_100075490);
  v96 = *(v10 - 8);
  v11 = *(v96 + 64);
  __chkstk_darwin(v10);
  v95 = &v80 - v12;
  v88 = sub_1000729DC();
  v87 = *(v88 - 8);
  v13 = *(v87 + 64);
  __chkstk_darwin(v88);
  v86 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100071C9C();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v89 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000388C(&qword_100095FB8, &qword_100075498);
  v93 = *(v18 - 8);
  v94 = v18;
  v19 = *(v93 + 64);
  __chkstk_darwin(v18);
  v91 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v90 = &v80 - v22;
  v23 = sub_10000388C(&qword_1000956E0, &qword_100074AA0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v80 - v25;
  v83 = sub_10007277C();
  v82 = *(v83 - 8);
  v27 = *(v82 + 64);
  __chkstk_darwin(v83);
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000388C(&qword_100095FC0, &qword_1000754A0);
  v84 = *(v30 - 8);
  v31 = *(v84 + 64);
  __chkstk_darwin(v30);
  v33 = &v80 - v32;
  v34 = sub_10007297C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v80 - v40;
  v42 = sub_10000388C(&qword_100095FC8, &qword_1000754A8);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v85 = &v80 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v100 = &v80 - v46;
  v92 = a1;
  v47 = sub_10004D174(0x6C616D726F6ELL, 0xE600000000000000);
  if (v47)
  {
    v98 = v47;
    v81 = v10;
    v48 = v99 + *(type metadata accessor for CPAppGridView() + 40);
    sub_1000129F8(v41);
    sub_10007296C();
    v49 = sub_10007295C();
    v50 = *(v35 + 8);
    v50(v38, v34);
    v50(v41, v34);
    v51 = 1;
    v52 = v30;
    if (v49)
    {
      v53 = v98;
      sub_10007275C();
      v54 = v82;
      v55 = v83;
      (*(v82 + 104))(v29, enum case for Image.ResizingMode.stretch(_:), v83);
      sub_1000727DC();

      (*(v54 + 8))(v29, v55);
      sub_1000729AC();
      v56 = sub_1000729BC();
      (*(*(v56 - 8) + 56))(v26, 0, 1, v56);
      sub_1000727CC();

      sub_100004890(v26, &qword_1000956E0, &qword_100074AA0);
      v57 = &v33[*(sub_10000388C(&qword_100095FE8, &qword_1000754C0) + 36)];
      *v57 = 0;
      *(v57 + 4) = 1;
      *&v33[*(sub_10000388C(&qword_100095FF0, &qword_1000754C8) + 36)] = a4;
      sub_1000728AC();
      sub_100071F2C();
      v58 = &v33[*(v52 + 36)];
      v59 = v102;
      *v58 = v101;
      *(v58 + 1) = v59;
      *(v58 + 2) = v103;
      sub_100014DEC(v33, v100, &qword_100095FC0, &qword_1000754A0);
      v51 = 0;
    }

    v60 = v100;
    (*(v84 + 56))(v100, v51, 1, v52);
    v61 = v86;
    v62 = v99;
    sub_10003CBD8(v86);
    v63 = v92;
    sub_10004CE40(0xD000000000000015, 0x80000001000776C0, v61, v89);
    v64 = (*(v87 + 8))(v61, v88);
    __chkstk_darwin(v64);
    v65 = v98;
    *(&v80 - 6) = v62;
    *(&v80 - 5) = v65;
    *(&v80 - 4) = a4;
    *(&v80 - 3) = a5;
    *(&v80 - 2) = v63;
    *(&v80 - 1) = a6;
    sub_10000388C(&qword_100095FD0, &qword_1000754B0);
    sub_100004C3C(&qword_100095FD8, &qword_100095FD0, &qword_1000754B0);
    v66 = v90;
    sub_10007254C();
    v67 = v60;
    v68 = v85;
    sub_100004C94(v67, v85, &qword_100095FC8, &qword_1000754A8);
    v70 = v93;
    v69 = v94;
    v71 = *(v93 + 16);
    v72 = v91;
    v71(v91, v66, v94);
    v73 = v95;
    sub_100004C94(v68, v95, &qword_100095FC8, &qword_1000754A8);
    v74 = sub_10000388C(&qword_100095FE0, &qword_1000754B8);
    v71((v73 + *(v74 + 48)), v72, v69);

    v75 = *(v70 + 8);
    v75(v66, v69);
    sub_100004890(v100, &qword_100095FC8, &qword_1000754A8);
    v75(v72, v69);
    sub_100004890(v68, &qword_100095FC8, &qword_1000754A8);
    v76 = v97;
    sub_100014DEC(v73, v97, &qword_100095FB0, &qword_100075490);
    return (*(v96 + 56))(v76, 0, 1, v81);
  }

  else
  {
    v78 = v97;
    v79 = *(v96 + 56);

    return v79(v78, 1, 1, v10);
  }
}

void *sub_1000402A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D2>)
{
  v65 = a4;
  v11 = sub_1000724DC();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  __chkstk_darwin(v11);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000729DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10007223C();
  v105 = 0;
  sub_100040AD0(a1, a2, &v82, a5);
  v62 = *(&v82 + 1);
  v63 = v82;
  v61 = v83;
  v67 = v84;
  LODWORD(a2) = v85;
  sub_1000728AC();
  sub_100071F2C();
  v66 = a2;
  LOBYTE(v82) = a2;
  *&v103[7] = v106;
  *&v103[23] = v107;
  *&v103[39] = v108;
  v19 = *(a3 + 48);
  *&v82 = *(a3 + 40);
  *(&v82 + 1) = v19;
  sub_100004A78();

  v57 = sub_10007259C();
  v21 = v20;
  v56 = v22;
  v60 = a1;
  sub_10003CBD8(v18);
  v23 = *(v15 + 88);
  v54 = v14;
  v24 = v23(v18, v14);
  if (v24 == enum case for WidgetFamily.systemSmall(_:) || v24 == enum case for WidgetFamily.systemMedium(_:) || v24 == enum case for WidgetFamily.systemLarge(_:))
  {
    v27 = v21;
    sub_10007251C();
LABEL_12:
    v29 = v59;
    goto LABEL_13;
  }

  v28 = v24;
  if (v24 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v27 = v21;
    sub_10007252C();
    goto LABEL_12;
  }

  v52 = enum case for WidgetFamily.accessoryCircular(_:);
  sub_10007251C();
  if (v28 != v52)
  {
    if (v28 == enum case for WidgetFamily.accessoryRectangular(_:) || v28 == enum case for WidgetFamily.accessoryInline(_:))
    {
      v27 = v21;
    }

    else
    {
      v27 = v21;
      (*(v15 + 8))(v18, v54);
    }

    goto LABEL_12;
  }

  v27 = v21;
  v29 = v59;
LABEL_13:
  v30 = v58;
  v31 = v55;
  (*(v58 + 104))(v55, enum case for Font.Leading.tight(_:), v29);
  sub_10007250C();

  (*(v30 + 8))(v31, v29);
  v32 = v56;
  v33 = v57;
  v34 = sub_10007257C();
  v36 = v35;
  v38 = v37;

  sub_100004C84(v33, v27, v32 & 1);

  sub_100043050();
  v39 = sub_10007256C();
  v58 = v40;
  v59 = v39;
  v42 = v41;
  v60 = v43;

  sub_100004C84(v34, v36, v38 & 1);

  KeyPath = swift_getKeyPath();
  v57 = swift_getKeyPath();
  v101 = v42 & 1;
  v98 = 0;
  sub_1000728AC();
  if (a6 < 0.0)
  {
    sub_100072CEC();
    v45 = sub_10007239C();
    sub_100071E4C();
  }

  sub_100071FFC();
  *&v102[55] = v112;
  *&v102[71] = v113;
  *&v102[87] = v114;
  *&v102[103] = v115;
  *&v102[7] = v109;
  *&v102[23] = v110;
  *&v102[39] = v111;
  v47 = v62;
  v46 = v63;
  *&v74 = v63;
  *(&v74 + 1) = v62;
  v48 = v61;
  *&v75 = v61;
  *(&v75 + 1) = v67;
  v76[0] = v66;
  *&v76[1] = *v103;
  *&v76[17] = *&v103[16];
  *&v76[33] = *&v103[32];
  v73[0] = v74;
  v73[1] = v75;
  v73[2] = *v76;
  v73[3] = *&v76[16];
  v73[4] = *&v76[32];
  *&v77 = v59;
  *(&v77 + 1) = v58;
  LOBYTE(v78) = v42 & 1;
  DWORD1(v78) = *&v100[3];
  *(&v78 + 1) = *v100;
  *(&v78 + 1) = v60;
  *&v79 = KeyPath;
  BYTE8(v79) = 1;
  HIDWORD(v79) = *&v99[3];
  *(&v79 + 9) = *v99;
  *&v80 = v57;
  *(&v80 + 1) = 1;
  v81[0] = 0;
  *&v81[49] = *&v102[48];
  *&v81[33] = *&v102[32];
  *&v81[17] = *&v102[16];
  *&v81[1] = *v102;
  *&v81[112] = *(&v115 + 1);
  *&v81[97] = *&v102[96];
  *&v81[81] = *&v102[80];
  *&v81[65] = *&v102[64];
  *(&v73[8] + 8) = v80;
  *(&v73[7] + 8) = v79;
  *(&v73[6] + 8) = v78;
  *(&v73[5] + 8) = v77;
  *(&v73[12] + 8) = *&v81[48];
  *(&v73[11] + 8) = *&v81[32];
  *(&v73[10] + 8) = *&v81[16];
  *(&v73[9] + 8) = *v81;
  *(&v73[15] + 8) = *&v81[96];
  *(&v73[14] + 8) = *&v81[80];
  *(&v73[13] + 8) = *&v81[64];
  v94 = *&v102[48];
  v93 = *&v102[32];
  *&v76[48] = *&v103[47];
  *&v73[5] = *&v103[47];
  *(&v73[16] + 1) = *&v81[112];
  *&v82 = v59;
  *(&v82 + 1) = v58;
  LOBYTE(v83) = v42 & 1;
  *(&v83 + 1) = *v100;
  HIDWORD(v83) = *&v100[3];
  v84 = v60;
  v85 = KeyPath;
  v86 = 1;
  *v87 = *v99;
  *&v87[3] = *&v99[3];
  v88 = v57;
  v89 = 1;
  v90 = 0;
  v92 = *&v102[16];
  v91 = *v102;
  *(v97 + 15) = *(&v115 + 1);
  v97[0] = *&v102[96];
  v96 = *&v102[80];
  v95 = *&v102[64];
  sub_100004C94(&v74, v68, &qword_100095FF8, &qword_100075530);
  sub_100004C94(&v77, v68, &qword_100096000, &qword_100075538);
  sub_100004890(&v82, &qword_100096000, &qword_100075538);
  v68[0] = v46;
  v68[1] = v47;
  v68[2] = v48;
  v68[3] = v67;
  v69 = v66;
  v70 = *v103;
  v71 = *&v103[16];
  v72[0] = *&v103[32];
  *(v72 + 15) = *&v103[47];
  sub_100004890(v68, &qword_100095FF8, &qword_100075530);
  memcpy(&v104[7], v73, 0x110uLL);
  v49 = v105;
  v50 = v65;
  *v65 = v64;
  v50[1] = 0x4020000000000000;
  *(v50 + 16) = v49;
  return memcpy(v50 + 17, v104, 0x117uLL);
}

double sub_100040AD0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v42 = a2;
  v46 = a3;
  v6 = sub_10007277C();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100071FCC();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v40 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_10007297C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  v23 = type metadata accessor for CPAppGridView();
  v24 = a1;
  v25 = a1 + *(v23 + 40);
  sub_1000129F8(v22);
  sub_10007296C();
  LOBYTE(v25) = sub_10007295C();
  v26 = *(v16 + 8);
  v26(v19, v15);
  v26(v22, v15);
  if ((v25 & 1) == 0)
  {
    goto LABEL_4;
  }

  v27 = v24 + *(v23 + 36);
  sub_100012A48(v14);
  sub_10004279C(&qword_100095708, &type metadata accessor for RedactionReasons);
  v28 = v40;
  sub_100072DAC();
  sub_10004279C(&qword_100095710, &type metadata accessor for RedactionReasons);
  v29 = sub_100072B1C();
  v30 = *(v41 + 8);
  v30(v28, v9);
  v30(v14, v9);
  if (v29)
  {
    v47 = sub_1000726DC();
    v48 = 0uLL;
    v49 = 0.0;
    v50 = 0;
  }

  else
  {
LABEL_4:
    v31 = v42;
    sub_10007275C();
    v33 = v43;
    v32 = v44;
    v34 = v45;
    (*(v44 + 104))(v43, enum case for Image.ResizingMode.stretch(_:), v45);
    v35 = sub_1000727DC();

    (*(v32 + 8))(v33, v34);
    v47 = v35;
    v48 = xmmword_100075360;
    v49 = a4;
    v50 = 1;
  }

  sub_10000388C(&qword_100096008, &qword_100075540);
  sub_1000425C8();
  sub_10007230C();
  result = *&v51;
  v37 = v52;
  v38 = v53;
  v39 = v46;
  *v46 = v51;
  v39[1] = v37;
  *(v39 + 32) = v38;
  return result;
}

uint64_t sub_100040F14@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>)
{
  v68 = a1;
  v5 = sub_1000724DC();
  *(&v66 + 1) = *(v5 - 8);
  v67 = v5;
  v6 = *(*(&v66 + 1) + 64);
  __chkstk_darwin(v5);
  *&v66 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000729DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000388C(&qword_100096038, &qword_100075558);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v69 = &v62[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v62[-v18];
  v20 = sub_10003CFE8();
  v21 = sub_10000388C(&qword_100096040, &qword_100075560);
  sub_10003D284(&v19[*(v21 + 36)]);
  *v19 = v20;
  *(v19 + 4) = 256;
  sub_1000728AC();
  v22 = v9;
  sub_100071F2C();
  v23 = &v19[*(sub_10000388C(&qword_100096048, &qword_100075568) + 36)];
  v24 = *(&v96[8] + 8);
  *v23 = *(&v96[7] + 8);
  v23[1] = v24;
  v23[2] = *(&v96[9] + 8);
  v25 = *(v14 + 44);
  v26 = v8;
  *&v19[v25] = a2;
  sub_1000721DC();
  v27 = sub_10007258C();
  v64 = v28;
  KeyPath = v29;
  v31 = v30;
  sub_10003CBD8(v12);
  v32 = (*(v9 + 88))(v12, v26);
  if (v32 == enum case for WidgetFamily.systemSmall(_:) || (v33 = v32, v32 == enum case for WidgetFamily.systemMedium(_:)) || v32 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_10007251C();
    v34 = v66;
  }

  else
  {
    v34 = v66;
    if (v32 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      sub_10007252C();
    }

    else
    {
      v63 = enum case for WidgetFamily.accessoryCircular(_:);
      sub_10007251C();
      if (v33 != v63 && v33 != enum case for WidgetFamily.accessoryRectangular(_:) && v33 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v22 + 8))(v12, v26);
      }
    }
  }

  v35 = *(&v66 + 1);
  v36 = v67;
  (*(*(&v66 + 1) + 104))(v34, enum case for Font.Leading.tight(_:), v67);
  sub_10007250C();

  (*(v35 + 8))(v34, v36);
  v37 = v64;
  *&v66 = sub_10007257C();
  *(&v66 + 1) = v38;
  v40 = v39;
  v67 = v41;

  sub_100004C84(v27, v37, v31 & 1);

  KeyPath = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v43 = v40 & 1;
  v95 = v40 & 1;
  v92 = 0;
  sub_1000728AC();
  if (a3 < 0.0)
  {
    sub_100072CEC();
    v44 = sub_10007239C();
    sub_100071E4C();
  }

  sub_100071FFC();
  *(&v96[3] + 7) = *(&v96[13] + 8);
  *(&v96[4] + 7) = *(&v96[14] + 8);
  *(&v96[5] + 7) = *(&v96[15] + 8);
  *(&v96[6] + 7) = *(&v96[16] + 8);
  *(v96 + 7) = *(&v96[10] + 8);
  *(&v96[1] + 7) = *(&v96[11] + 8);
  *(&v96[2] + 7) = *(&v96[12] + 8);
  v45 = v69;
  sub_100004C94(v19, v69, &qword_100096038, &qword_100075558);
  v46 = v45;
  v47 = v68;
  sub_100004C94(v46, v68, &qword_100096038, &qword_100075558);
  v48 = v47 + *(sub_10000388C(&qword_100096050, &qword_100075570) + 48);
  v49 = v66;
  v70 = v66;
  LOBYTE(v71) = v43;
  *(&v71 + 1) = *v94;
  DWORD1(v71) = *&v94[3];
  v50 = v67;
  v51 = KeyPath;
  *(&v71 + 1) = v67;
  *&v72 = KeyPath;
  BYTE8(v72) = 1;
  *(&v72 + 9) = *v93;
  HIDWORD(v72) = *&v93[3];
  LODWORD(v68) = v43;
  *&v73 = v42;
  *(&v73 + 1) = 1;
  v74[0] = 0;
  *&v74[1] = v96[0];
  *&v74[49] = v96[3];
  *&v74[33] = v96[2];
  *&v74[17] = v96[1];
  *&v74[112] = *(&v96[6] + 15);
  *&v74[97] = v96[6];
  *&v74[81] = v96[5];
  *&v74[65] = v96[4];
  v52 = v66;
  v53 = v71;
  v54 = v73;
  *(v48 + 32) = v72;
  *(v48 + 48) = v54;
  *v48 = v52;
  *(v48 + 16) = v53;
  v55 = *v74;
  v56 = *&v74[16];
  v57 = *&v74[48];
  *(v48 + 96) = *&v74[32];
  *(v48 + 112) = v57;
  *(v48 + 64) = v55;
  *(v48 + 80) = v56;
  v58 = *&v74[64];
  v59 = *&v74[80];
  v60 = *&v74[96];
  *(v48 + 176) = *&v74[112];
  *(v48 + 144) = v59;
  *(v48 + 160) = v60;
  *(v48 + 128) = v58;
  sub_100004C94(&v70, &v75, &qword_100096000, &qword_100075538);
  sub_100004890(v19, &qword_100096038, &qword_100075558);
  v89 = v96[4];
  v90 = v96[5];
  *v91 = v96[6];
  v85 = v96[0];
  v86 = v96[1];
  v87 = v96[2];
  v75 = v49;
  v76 = v68;
  *v77 = *v94;
  *&v77[3] = *&v94[3];
  v78 = v50;
  v79 = v51;
  v80 = 1;
  *v81 = *v93;
  *&v81[3] = *&v93[3];
  v82 = v42;
  v83 = 1;
  v84 = 0;
  *&v91[15] = *(&v96[6] + 15);
  v88 = v96[3];
  sub_100004890(&v75, &qword_100096000, &qword_100075538);
  return sub_100004890(v69, &qword_100096038, &qword_100075558);
}

uint64_t sub_10004166C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100041758(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100041AB4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_100041B18;
  a2[1] = v7;
  return result;
}

uint64_t sub_100041758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPAppGridView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000417BC()
{
  v1 = type metadata accessor for CPAppGridView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100071D4C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + *(type metadata accessor for CPTimelineEntry() + 20));

  v8 = v1[5];
  v9 = sub_100071F5C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  sub_10000388C(&qword_100094908, &qword_100073A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100071FCC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v1[10];
  sub_10000388C(&qword_100094910, &unk_100076340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10007297C();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = v1[11];
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000729DC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[12];
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_100071EAC();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100041AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPAppGridView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041B18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CPAppGridView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10003E21C(v4, a1);
}

uint64_t sub_100041B98()
{
  v1 = type metadata accessor for CPAppGridView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100071D4C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + *(type metadata accessor for CPTimelineEntry() + 20));

  v8 = v1[5];
  v9 = sub_100071F5C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  sub_10000388C(&qword_100094908, &qword_100073A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100071FCC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v1[10];
  sub_10000388C(&qword_100094910, &unk_100076340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10007297C();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = v1[11];
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000729DC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[12];
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_100071EAC();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100041EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CPAppGridView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return sub_10003E7FC(a1, v2 + v6, a2, v10, v11, v12);
}

uint64_t sub_100041F60()
{
  v1 = type metadata accessor for CPAppGridView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100071D4C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + *(type metadata accessor for CPTimelineEntry() + 20));

  v8 = v1[5];
  v9 = sub_100071F5C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  sub_10000388C(&qword_100094908, &qword_100073A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100071FCC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v1[10];
  sub_10000388C(&qword_100094910, &unk_100076340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10007297C();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = v1[11];
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000729DC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[12];
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_100071EAC();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100042274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CPAppGridView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);
  v13 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003EB88(a1, (v2 + v6), v13, a2, v10, v11, v12);
}

unint64_t sub_10004233C()
{
  result = qword_100095F68;
  if (!qword_100095F68)
  {
    sub_1000038D4(&qword_100095F58, &qword_100075460);
    sub_1000038D4(&qword_100095F48, &qword_100075450);
    sub_100042434();
    swift_getOpaqueTypeConformance2();
    sub_10004279C(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095F68);
  }

  return result;
}

unint64_t sub_100042434()
{
  result = qword_100095F70;
  if (!qword_100095F70)
  {
    sub_1000038D4(&qword_100095F48, &qword_100075450);
    sub_100004C3C(&qword_100095F78, &qword_100095F40, &qword_100075448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095F70);
  }

  return result;
}

unint64_t sub_1000424EC()
{
  result = qword_100095F88;
  if (!qword_100095F88)
  {
    sub_1000038D4(&qword_100095F80, &qword_100075470);
    sub_100004C3C(&qword_100095F90, &qword_100095F98, &qword_100075478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095F88);
  }

  return result;
}

unint64_t sub_1000425C8()
{
  result = qword_100096010;
  if (!qword_100096010)
  {
    sub_1000038D4(&qword_100096008, &qword_100075540);
    sub_100042654();
    sub_1000426D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096010);
  }

  return result;
}

unint64_t sub_100042654()
{
  result = qword_100096018;
  if (!qword_100096018)
  {
    sub_1000038D4(&qword_100096020, &qword_100075548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096018);
  }

  return result;
}

unint64_t sub_1000426D8()
{
  result = qword_100096028;
  if (!qword_100096028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096028);
  }

  return result;
}

uint64_t sub_10004272C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100095F98, &qword_100075478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004279C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100042828()
{

  sub_10000388C(&qword_100096070, &qword_1000755E8);
  sub_100071EDC();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000428DC();
  sub_100071F1C();
  return 0;
}

unint64_t sub_1000428DC()
{
  result = qword_100096068;
  if (!qword_100096068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096068);
  }

  return result;
}

unint64_t sub_100042960()
{
  result = qword_100096078;
  if (!qword_100096078)
  {
    sub_1000038D4(&qword_100096080, &qword_1000755F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096078);
  }

  return result;
}

uint64_t sub_1000429F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v37 = a1;
  v5 = sub_100071FEC();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_10000388C(&qword_100096088, &qword_100075680);
  v10 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v12 = &v36 - v11;
  v13 = a3 / 4.7;
  v14 = (a2 + *(sub_10000388C(&qword_100096090, &qword_100075688) + 36));
  v15 = *(v6 + 28);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = sub_1000721FC();
  v18 = *(*(v17 - 8) + 104);
  v18(v14 + v15, v16, v17);
  *v14 = v13;
  v14[1] = v13;
  *(v14 + *(sub_10000388C(&qword_100096098, &qword_100075690) + 36)) = 256;
  v19 = sub_10000388C(&qword_1000960A0, &qword_100075698);
  (*(*(v19 - 8) + 16))(a2, v37, v19);
  v18(v9 + *(v6 + 28), v16, v17);
  *v9 = v13;
  v9[1] = v13;
  LODWORD(v18) = sub_10007231C();
  sub_100071ECC();
  sub_100042D88(v9, v12);
  v20 = *&v39 * 0.5;
  v21 = &v12[*(v38 + 68)];
  sub_100042D88(v9, v21);
  *(v21 + *(sub_100071FDC() + 20)) = v20;
  v22 = v21 + *(sub_10000388C(&qword_1000960A8, &qword_1000756A0) + 36);
  v23 = v40;
  *v22 = v39;
  *(v22 + 16) = v23;
  *(v22 + 32) = v41;
  v24 = sub_10000388C(&qword_1000960B0, &qword_1000756A8);
  v25 = (v21 + *(v24 + 52));
  *v25 = v18;
  v25[1] = 1034147594;
  *(v21 + *(v24 + 56)) = 256;
  v26 = sub_1000728AC();
  v28 = v27;
  sub_100042DEC(v9);
  v29 = (v21 + *(sub_10000388C(&qword_1000960B8, &qword_1000756B0) + 36));
  *v29 = v26;
  v29[1] = v28;
  v30 = a2 + *(sub_10000388C(&qword_1000960C0, &qword_1000756B8) + 36);
  sub_100004C3C(&qword_1000960C8, &qword_100096088, &qword_100075680);
  sub_10007264C();
  sub_100042E48(v12);
  v31 = sub_1000728AC();
  v33 = v32;
  result = sub_10000388C(&qword_1000960D0, &qword_1000756C0);
  v35 = (v30 + *(result + 36));
  *v35 = v31;
  v35[1] = v33;
  return result;
}

uint64_t sub_100042D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100071FEC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042DEC(uint64_t a1)
{
  v2 = sub_100071FEC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042E48(uint64_t a1)
{
  v2 = sub_10000388C(&qword_100096088, &qword_100075680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100042EB4()
{
  result = qword_1000960D8;
  if (!qword_1000960D8)
  {
    sub_1000038D4(&qword_1000960C0, &qword_1000756B8);
    sub_100042F6C();
    sub_100004C3C(&qword_1000960F8, &qword_1000960D0, &qword_1000756C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000960D8);
  }

  return result;
}

unint64_t sub_100042F6C()
{
  result = qword_1000960E0;
  if (!qword_1000960E0)
  {
    sub_1000038D4(&qword_100096090, &qword_100075688);
    sub_100004C3C(&qword_1000960E8, &qword_1000960A0, &qword_100075698);
    sub_100004C3C(&qword_1000960F0, &qword_100096098, &qword_100075690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000960E0);
  }

  return result;
}

int *sub_100043050()
{
  result = type metadata accessor for CPTimelineEntry();
  if (*(v0 + result[6]) != 1 || (*(v0 + result[7]) & 1) != 0 || (*(v0 + result[8]) & 1) != 0 || *(v0 + result[9]) != 1)
  {
    goto LABEL_23;
  }

  v2 = *(v0 + result[5]);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_23:

    return sub_10007270C();
  }

  if (v2 < 0)
  {
    v10 = *(v0 + result[5]);
  }

  if (sub_100072EDC() < 1)
  {
    goto LABEL_23;
  }

  result = sub_100072EDC();
  if (!result)
  {

    return sub_1000726EC();
  }

LABEL_7:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_100072E6C();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
  }

  v4 = *(v3 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
  if (v4)
  {
    v5 = *(v3 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
  }

  else
  {
    v6 = *(v3 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
    }
  }

  v8 = v4;
  sub_1000726AC();

  v9 = sub_1000726EC();

  return v9;
}

uint64_t sub_100043208()
{
  v1 = type metadata accessor for CPTimelineEntry();
  v2 = *(v0 + *(v1 + 20));
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    sub_1000726EC();
    v10 = sub_1000726FC();
LABEL_16:

    return v10;
  }

  if (v2 < 0)
  {
    v11 = *(v0 + *(v1 + 20));
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = sub_100072E6C();
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);

LABEL_6:
    v5 = *(v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
    if (v5)
    {
      v6 = *(v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
    }

    else
    {
      v7 = *(v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
      }
    }

    v9 = v5;
    sub_1000726AC();

    sub_1000726EC();
    v10 = sub_1000726FC();

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100043374(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_10000388C(&qword_100095260, qword_100074600);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for CPTimelineEntry();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = sub_100071F5C();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[10] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100043594(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_10000388C(&qword_100095260, qword_100074600);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = type metadata accessor for CPTimelineEntry();
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          result = sub_100071F5C();
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[10] + 8) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[9];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPMessageView()
{
  result = qword_100096158;
  if (!qword_100096158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000437E8()
{
  sub_100043980(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    sub_100043980(319, &qword_100094858, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      sub_100043980(319, &unk_1000952D0, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_1000439D4(319, &qword_100094860, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CPTimelineEntry();
          if (v4 <= 0x3F)
          {
            sub_100071F5C();
            if (v5 <= 0x3F)
            {
              sub_1000439D4(319, &qword_100096168, &type metadata for String, &type metadata accessor for Optional);
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

void sub_100043980(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100071EBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000439D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100043A64(uint64_t a1)
{
  v2 = sub_100071FCC();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1000720BC();
}

uint64_t sub_100043B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CPMessageView();
  sub_100004C94(v1 + *(v12 + 20), v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100043D34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_100094900, &qword_1000762D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CPMessageView();
  sub_100004C94(v1 + *(v12 + 24), v11, &qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100071EAC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_100043F3C()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  sub_100043B2C(v15 - v7);
  (*(v2 + 104))(v5, enum case for WidgetFamily.systemLarge(_:), v1);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v8, v1);
  v11 = v15[0];
  v10 = v15[1];
  v12 = v0 + *(type metadata accessor for CPMessageView() + 36);
  sub_100071F3C();
  result = v13 * 0.5629;
  if (v10 != v11)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1000440FC()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100043B2C(v4);
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for WidgetFamily.systemSmall(_:) || v5 == enum case for WidgetFamily.systemMedium(_:))
  {
    return sub_10007252C();
  }

  if (v5 == enum case for WidgetFamily.systemLarge(_:) || v5 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    return sub_1000724EC();
  }

  v7 = enum case for WidgetFamily.accessoryCircular(_:);
  v8 = enum case for WidgetFamily.accessoryRectangular(_:);
  v9 = enum case for WidgetFamily.accessoryInline(_:);
  v10 = v5;
  result = sub_10007252C();
  if (v10 != v7 && v10 != v8 && v10 != v9)
  {
    v13 = result;
    (*(v1 + 8))(v4, v0);
    return v13;
  }

  return result;
}

uint64_t sub_10004428C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_100071EAC();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  __chkstk_darwin(v1);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v39 = &v38 - v5;
  v6 = sub_1000729DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007297C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  sub_1000129F8(&v38 - v17);
  sub_10007296C();
  sub_10004C730(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode);
  v19 = sub_100072B1C();
  v20 = *(v12 + 8);
  v20(v15, v11);
  v20(v18, v11);
  if ((v19 & 1) == 0)
  {
    sub_100043B2C(v10);
    v25 = (*(v7 + 88))(v10, v6);
    v26 = v43;
    if (v25 == enum case for WidgetFamily.systemSmall(_:))
    {
      goto LABEL_4;
    }

    if (v25 != enum case for WidgetFamily.systemMedium(_:))
    {
      if (v25 == enum case for WidgetFamily.systemLarge(_:) || v25 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
LABEL_4:
        v27 = v39;
        sub_100043D34(v39);
        v29 = v40;
        v28 = v41;
        v30 = v42;
        (*(v41 + 104))(v40, enum case for ColorScheme.dark(_:), v42);
        v31 = sub_100071E9C();
        v32 = *(v28 + 8);
        v32(v29, v30);
        v32(v27, v30);
        v22 = sub_1000728BC();
        v23 = *(*(v22 - 8) + 104);
        if (v31)
        {
          v33 = &enum case for BlendMode.plusLighter(_:);
        }

        else
        {
          v33 = &enum case for BlendMode.plusDarker(_:);
        }

        v34 = *v33;
        v24 = v26;
        return v23(v24, v34, v22);
      }

      if (v25 != enum case for WidgetFamily.accessoryCircular(_:) && v25 != enum case for WidgetFamily.accessoryRectangular(_:) && v25 != enum case for WidgetFamily.accessoryInline(_:))
      {
        v36 = enum case for BlendMode.normal(_:);
        v37 = sub_1000728BC();
        (*(*(v37 - 8) + 104))(v26, v36, v37);
        return (*(v7 + 8))(v10, v6);
      }
    }

    v21 = enum case for BlendMode.normal(_:);
    v22 = sub_1000728BC();
    v23 = *(*(v22 - 8) + 104);
    v24 = v26;
    goto LABEL_8;
  }

  v21 = enum case for BlendMode.normal(_:);
  v22 = sub_1000728BC();
  v23 = *(*(v22 - 8) + 104);
  v24 = v43;
LABEL_8:
  v34 = v21;
  return v23(v24, v34, v22);
}

uint64_t sub_10004477C()
{
  v0 = sub_1000729DC();
  v22 = *(v0 - 8);
  v1 = *(v22 + 64);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_10007297C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  sub_1000129F8(&v21 - v13);
  sub_10007296C();
  v15 = sub_10007295C();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v14, v7);
  sub_10007270C();
  if ((v15 & 1) == 0)
  {
    sub_100043B2C(v6);
    v17 = v22;
    (*(v22 + 104))(v3, enum case for WidgetFamily.systemMedium(_:), v0);
    sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily);
    sub_100072C1C();
    sub_100072C1C();
    v18 = *(v17 + 8);
    v18(v3, v0);
    v18(v6, v0);
  }

  v19 = sub_1000726FC();

  return v19;
}

uint64_t sub_100044A4C()
{
  v20 = sub_10007218C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPMessageView();
  sub_100004C94(v0 + *(v14 + 20), v8, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  result = 4;
  if (v17 != enum case for WidgetFamily.systemSmall(_:) && v17 != enum case for WidgetFamily.systemMedium(_:) && v17 != enum case for WidgetFamily.systemLarge(_:))
  {
    if (v17 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      return 5;
    }

    else
    {
      result = 4;
      if (v17 != enum case for WidgetFamily.accessoryCircular(_:) && v17 != enum case for WidgetFamily.accessoryRectangular(_:) && v17 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v10 + 8))(v13, v9);
        return 4;
      }
    }
  }

  return result;
}

double sub_100044D88()
{
  v20 = sub_10007218C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPMessageView();
  sub_100004C94(v0 + *(v14 + 20), v8, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  result = 2.0;
  if (v17 != enum case for WidgetFamily.systemSmall(_:))
  {
    result = 3.0;
    if (v17 != enum case for WidgetFamily.systemMedium(_:))
    {
      result = 6.0;
      if (v17 != enum case for WidgetFamily.systemLarge(_:) && v17 != enum case for WidgetFamily.systemExtraLarge(_:) && v17 != enum case for WidgetFamily.accessoryCircular(_:) && v17 != enum case for WidgetFamily.accessoryRectangular(_:) && v17 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v10 + 8))(v13, v9, 6.0);
        return 6.0;
      }
    }
  }

  return result;
}

double sub_1000450BC()
{
  v20 = sub_10007218C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPMessageView();
  sub_100004C94(v0 + *(v14 + 20), v8, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  result = 4.0;
  if (v17 != enum case for WidgetFamily.systemSmall(_:))
  {
    result = 5.0;
    if (v17 != enum case for WidgetFamily.systemMedium(_:))
    {
      result = 6.0;
      if (v17 != enum case for WidgetFamily.systemLarge(_:))
      {
        result = 8.0;
        if (v17 != enum case for WidgetFamily.systemExtraLarge(_:) && v17 != enum case for WidgetFamily.accessoryCircular(_:) && v17 != enum case for WidgetFamily.accessoryRectangular(_:) && v17 != enum case for WidgetFamily.accessoryInline(_:))
        {
          (*(v10 + 8))(v13, v9, 8.0);
          return 8.0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000453F4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_100071EAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_10007297C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v28 = v1;
  sub_1000129F8(&v28 - v16);
  sub_10007296C();
  sub_10004C730(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode);
  v18 = sub_100072B1C();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v19(v17, v10);
  if (v18)
  {
    v20 = enum case for BlendMode.normal(_:);
    v21 = sub_1000728BC();
    return (*(*(v21 - 8) + 104))(v29, v20, v21);
  }

  else
  {
    v23 = v29;
    sub_100043D34(v9);
    (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
    v24 = sub_100071E9C();
    v25 = *(v3 + 8);
    v25(v6, v2);
    v25(v9, v2);
    v26 = sub_1000728BC();
    if (v24)
    {
      v27 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v27 = &enum case for BlendMode.plusDarker(_:);
    }

    return (*(*(v26 - 8) + 104))(v23, *v27, v26);
  }
}

uint64_t sub_100045704@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v231 = a1;
  v219 = a2;
  v216 = sub_10000388C(&qword_100096340, &qword_100075938);
  v215 = *(v216 - 8);
  v2 = *(v215 + 64);
  __chkstk_darwin(v216);
  v186 = (&v185 - v3);
  v4 = sub_10000388C(&qword_100096348, &qword_100075940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v218 = &v185 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v217 = &v185 - v8;
  v206 = sub_10000388C(&qword_100096350, &qword_100075948);
  v9 = *(*(v206 - 8) + 64);
  __chkstk_darwin(v206);
  v205 = &v185 - v10;
  v213 = sub_10000388C(&qword_100096358, &qword_100075950);
  v212 = *(v213 - 8);
  v11 = *(v212 + 64);
  __chkstk_darwin(v213);
  v211 = &v185 - v12;
  v210 = sub_10000388C(&qword_100096360, &qword_100075958);
  v13 = *(*(v210 - 8) + 64);
  __chkstk_darwin(v210);
  v214 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v209 = &v185 - v16;
  __chkstk_darwin(v17);
  v229 = &v185 - v18;
  v225 = sub_1000724DC();
  v227 = *(v225 - 8);
  v19 = *(v227 + 64);
  __chkstk_darwin(v225);
  v224 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000729DC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v222 = &v185 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v221 = &v185 - v26;
  __chkstk_darwin(v27);
  v29 = &v185 - v28;
  v196 = sub_10000388C(&qword_100096368, &qword_100075960);
  v195 = *(v196 - 8);
  v30 = *(v195 + 64);
  __chkstk_darwin(v196);
  v194 = &v185 - v31;
  v193 = sub_10000388C(&qword_100096370, &qword_100075968);
  v32 = *(*(v193 - 8) + 64);
  __chkstk_darwin(v193);
  v220 = &v185 - v33;
  v201 = sub_10000388C(&qword_100096378, &qword_100075970);
  v34 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v201);
  v202 = &v185 - v35;
  v204 = sub_10000388C(&qword_100096380, &qword_100075978);
  v36 = *(*(v204 - 8) + 64);
  __chkstk_darwin(v204);
  v203 = &v185 - v37;
  v208 = sub_10000388C(&qword_100096388, &qword_100075980);
  v207 = *(v208 - 8);
  v38 = *(v207 + 64);
  __chkstk_darwin(v208);
  v226 = &v185 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v228 = &v185 - v41;
  sub_1000721DC();
  v42 = sub_10007258C();
  v44 = v43;
  v46 = v45;
  sub_10007248C();
  v47 = sub_10007255C();
  v49 = v48;
  v51 = v50;
  v223 = v52;
  sub_100004C84(v42, v44, v46 & 1);

  sub_100043B2C(v29);
  v230 = v22;
  v53 = (*(v22 + 88))(v29, v21);
  v192 = enum case for WidgetFamily.systemSmall(_:);
  if (v53 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_10007251C();
  }

  else
  {
    v54 = v53;
    if (v53 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_10007252C();
    }

    else if (v53 == enum case for WidgetFamily.systemLarge(_:) || v53 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      sub_1000724EC();
    }

    else
    {
      v55 = enum case for WidgetFamily.accessoryCircular(_:);
      sub_10007252C();
      if (v54 != v55 && v54 != enum case for WidgetFamily.accessoryRectangular(_:) && v54 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v230 + 8))(v29, v21);
      }
    }
  }

  v56 = v227;
  v57 = *(v227 + 104);
  v58 = v224;
  v199 = enum case for Font.Leading.tight(_:);
  v59 = v225;
  v200 = v227 + 104;
  v198 = v57;
  v57(v224);
  sub_10007250C();

  v60 = *(v56 + 8);
  v227 = v56 + 8;
  v197 = v60;
  v60(v58, v59);
  v61 = sub_10007257C();
  v63 = v62;
  v65 = v64;

  sub_100004C84(v47, v49, v51 & 1);

  v223 = type metadata accessor for CPMessageView();
  v66 = v231 + v223[8];
  sub_100043050();
  v188 = sub_10007256C();
  v187 = v67;
  v69 = v68;
  v71 = v70;

  sub_100004C84(v61, v63, v65 & 1);

  v72 = v221;
  sub_100043B2C(v221);
  v73 = v230;
  v74 = *(v230 + 104);
  v75 = v222;
  v76 = v192;
  v191 = v230 + 104;
  v190 = v74;
  v74(v222, v192, v21);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v77 = *(v73 + 8);
  v77(v75, v21);
  v230 = v73 + 8;
  v189 = v77;
  v77(v72, v21);
  if (*&v239[0] == v233)
  {
    v78 = 2;
  }

  else
  {
    v78 = 1;
  }

  KeyPath = swift_getKeyPath();
  v80 = v69 & 1;
  v242 = v80;
  v241 = 0;
  v81 = swift_getKeyPath();
  v82 = swift_getKeyPath();
  *&v233 = v188;
  *(&v233 + 1) = v187;
  LOBYTE(v234) = v80;
  *(&v234 + 1) = v71;
  *&v235 = KeyPath;
  *(&v235 + 1) = v78;
  LOBYTE(v236) = 0;
  *(&v236 + 1) = 256;
  *(&v236 + 1) = v81;
  LOBYTE(v237) = 1;
  *(&v237 + 1) = v82;
  v238 = 0x3FE8000000000000;
  sub_10000388C(&qword_100096390, &qword_100075A18);
  sub_10004BA10();
  v83 = v194;
  sub_1000725FC();
  v239[2] = v235;
  v239[3] = v236;
  v239[4] = v237;
  v240 = v238;
  v239[0] = v233;
  v239[1] = v234;
  sub_100004890(v239, &qword_100096390, &qword_100075A18);
  sub_1000726CC();
  v84 = sub_1000726FC();

  v86 = v220;
  (*(v195 + 32))(v220, v83, v196);
  v85 = &v86[*(v193 + 36)];
  *v85 = v84;
  *(v85 + 8) = xmmword_1000756D0;
  *(v85 + 3) = 0x3FF0000000000000;
  LOBYTE(v84) = sub_1000723FC();
  LODWORD(v86) = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v84)
  {
    LODWORD(v86) = sub_1000723EC();
  }

  v87 = v221;
  v88 = v231;
  sub_100043B2C(v221);
  v89 = v222;
  v90 = v190;
  v190(v222, v76, v21);
  sub_100072C1C();
  sub_100072C1C();
  v91 = v189;
  (v189)(v89, v21);
  (v91)(v87, v21);
  if (v233 == v232)
  {
    v92 = v88;
  }

  else
  {
    v93 = v87;
    LODWORD(v196) = v86;
    v86 = v91;
    v94 = v88;
    v95 = v87;
    v92 = v94;
    sub_100043B2C(v93);
    v90(v89, enum case for WidgetFamily.systemLarge(_:), v21);
    sub_100072C1C();
    sub_100072C1C();
    (v86)(v89, v21);
    (v86)(v95, v21);
    LOBYTE(v86) = v196;
  }

  sub_100071E8C();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v202;
  sub_100014DEC(v220, v202, &qword_100096370, &qword_100075968);
  v105 = v104 + *(v201 + 36);
  *v105 = v86;
  *(v105 + 8) = v97;
  *(v105 + 16) = v99;
  *(v105 + 24) = v101;
  *(v105 + 32) = v103;
  *(v105 + 40) = 0;
  v106 = sub_1000723CC();
  v107 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v106)
  {
    v107 = sub_1000723EC();
  }

  v108 = v92;
  sub_100044D88();
  sub_100071E8C();
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = v203;
  sub_100014DEC(v104, v203, &qword_100096378, &qword_100075970);
  v118 = v117 + *(v204 + 36);
  *v118 = v107;
  *(v118 + 8) = v110;
  *(v118 + 16) = v112;
  *(v118 + 24) = v114;
  *(v118 + 32) = v116;
  *(v118 + 40) = 0;
  sub_10004BCC4();
  sub_1000725AC();
  sub_100004890(v117, &qword_100096380, &qword_100075978);
  v119 = (v108 + v223[10]);
  v120 = *v119;
  v121 = v119[1];

  sub_1000721EC();
  v222 = sub_10007258C();
  v123 = v122;
  v125 = v124;
  v230 = v126;
  sub_1000440FC();
  v127 = v224;
  v128 = v225;
  v198(v224, v199, v225);
  v129 = sub_10007250C();

  v197(v127, v128);
  v130 = sub_10000388C(&qword_100095388, &qword_100074738);
  v131 = v205;
  v132 = &v205[*(v130 + 36)];
  v133 = type metadata accessor for DynamicTypeFont();
  v134 = v133[6];
  v135 = enum case for ContentSizeCategory.extraLarge(_:);
  v136 = sub_10007222C();
  v137 = *(v136 - 8);
  (*(v137 + 104))(v132 + v134, v135, v136);
  (*(v137 + 56))(v132 + v134, 0, 1, v136);
  sub_10007248C();
  v139 = v138;
  *v132 = swift_getKeyPath();
  sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v132 + v133[5]) = v129;
  v140 = v133[7];
  v141 = v231;
  *(v132 + v140) = v139;
  *v131 = v222;
  *(v131 + 8) = v123;
  *(v131 + 16) = v125 & 1;
  *(v131 + 24) = v230;
  v142 = sub_10004477C();
  v143 = swift_getKeyPath();
  v144 = (v131 + *(sub_10000388C(&qword_100095398, &qword_100074778) + 36));
  *v144 = v143;
  v144[1] = v142;
  v145 = sub_10000388C(&qword_1000953A0, &unk_100074780);
  sub_10004428C(v131 + *(v145 + 36));
  v146 = sub_100044A4C();
  v147 = swift_getKeyPath();
  v148 = v131 + *(sub_10000388C(&qword_1000963F8, &qword_100075A90) + 36);
  *v148 = v147;
  *(v148 + 8) = v146;
  *(v148 + 16) = 0;
  *(v131 + *(sub_10000388C(&qword_100096400, &qword_100076E60) + 36)) = 256;
  v149 = swift_getKeyPath();
  v150 = v131 + *(sub_10000388C(&qword_100096408, &qword_100075A98) + 36);
  *v150 = v149;
  *(v150 + 8) = 1;
  v151 = swift_getKeyPath();
  v152 = (v131 + *(v206 + 36));
  *v152 = v151;
  v152[1] = 0x3FE3333333333333;
  sub_10004BEB4();
  v153 = v211;
  sub_1000725FC();
  sub_100004890(v131, &qword_100096350, &qword_100075948);
  LOBYTE(v149) = sub_1000723CC();
  v154 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v149)
  {
    v154 = sub_1000723EC();
  }

  v155 = (v141 + v223[11]);
  v157 = *v155;
  v156 = v155[1];
  v158 = v217;
  if (v156)
  {
    sub_1000450BC();
  }

  sub_100071E8C();
  v160 = v159;
  v162 = v161;
  v164 = v163;
  v166 = v165;
  v167 = v209;
  (*(v212 + 32))(v209, v153, v213);
  v168 = v167 + *(v210 + 36);
  *v168 = v154;
  *(v168 + 8) = v160;
  *(v168 + 16) = v162;
  *(v168 + 24) = v164;
  *(v168 + 32) = v166;
  *(v168 + 40) = 0;
  sub_100014DEC(v167, v229, &qword_100096360, &qword_100075958);
  if (v156)
  {
    v169 = sub_1000721CC();
    v170 = v186;
    *v186 = v169;
    *(v170 + 8) = 0x4010000000000000;
    *(v170 + 16) = 0;
    v171 = sub_10000388C(&qword_100096438, &qword_100075AA8);
    sub_100046D34(v157, v141, (v170 + *(v171 + 44)));
    sub_100014DEC(v170, v158, &qword_100096340, &qword_100075938);
    v172 = 0;
  }

  else
  {
    v172 = 1;
  }

  (*(v215 + 56))(v158, v172, 1, v216);
  v173 = v207;
  v174 = *(v207 + 16);
  v175 = v226;
  v176 = v208;
  v174(v226, v228, v208);
  v177 = v158;
  v178 = v214;
  sub_100004C94(v229, v214, &qword_100096360, &qword_100075958);
  v179 = v218;
  sub_100004C94(v177, v218, &qword_100096348, &qword_100075940);
  v180 = v219;
  v174(v219, v175, v176);
  v181 = sub_10000388C(&qword_100096430, &qword_100075AA0);
  sub_100004C94(v178, &v180[v181[12]], &qword_100096360, &qword_100075958);
  sub_100004C94(v179, &v180[v181[16]], &qword_100096348, &qword_100075940);
  v182 = &v180[v181[20]];
  *v182 = 0;
  v182[8] = 1;
  sub_100004890(v177, &qword_100096348, &qword_100075940);
  sub_100004890(v229, &qword_100096360, &qword_100075958);
  v183 = *(v173 + 8);
  v183(v228, v176);
  sub_100004890(v179, &qword_100096348, &qword_100075940);
  sub_100004890(v178, &qword_100096360, &qword_100075958);
  return (v183)(v226, v176);
}

uint64_t sub_100046D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v174 = a1;
  v169 = a3;
  v157 = sub_10000388C(&qword_100096440, &unk_100076E00);
  v4 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v162 = &v128 - v5;
  v160 = sub_10000388C(&qword_100096448, &qword_100075AB0);
  v6 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v161 = &v128 - v7;
  v159 = sub_10000388C(&qword_100096450, &qword_100076E10);
  v8 = *(*(v159 - 8) + 64);
  __chkstk_darwin(v159);
  v166 = &v128 - v9;
  v158 = sub_10000388C(&qword_100096458, &qword_100075AB8);
  v10 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v163 = &v128 - v11;
  v165 = sub_10000388C(&qword_100096460, &qword_100075AC0);
  v12 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v164 = &v128 - v13;
  v14 = sub_10000388C(&qword_100096468, &unk_100076DE0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v175 = &v128 - v20;
  v172 = sub_1000724DC();
  v177 = *(v172 - 8);
  v21 = *(v177 + 64);
  __chkstk_darwin(v172);
  v171 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000729DC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v154 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v128 - v28;
  v141 = sub_10000388C(&qword_100095388, &qword_100074738);
  v30 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v32 = &v128 - v31;
  v152 = sub_10000388C(&qword_100095398, &qword_100074778);
  v33 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v153 = &v128 - v34;
  v145 = sub_10000388C(&qword_1000953A0, &unk_100074780);
  v35 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v150 = &v128 - v36;
  v147 = sub_10000388C(&qword_1000963F8, &qword_100075A90);
  v37 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v149 = &v128 - v38;
  v146 = sub_10000388C(&qword_100096470, &qword_100075AC8);
  v39 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v148 = &v128 - v40;
  v151 = sub_10000388C(&qword_100096478, &qword_100075AD0);
  v41 = *(*(v151 - 8) + 64);
  __chkstk_darwin(v151);
  v43 = &v128 - v42;
  v156 = sub_10000388C(&qword_100096480, &qword_100075AD8);
  v155 = *(v156 - 8);
  v44 = *(v155 + 64);
  __chkstk_darwin(v156);
  v173 = &v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v178 = &v128 - v47;

  sub_1000721EC();
  v132 = sub_10007258C();
  v131 = v48;
  v130 = v49;
  v133 = v50;
  v174 = a2;
  sub_100043B2C(v29);
  v128 = v24;
  v51 = *(v24 + 88);
  v170 = v23;
  v143 = v51;
  v52 = v51(v29, v23);
  v142 = enum case for WidgetFamily.systemSmall(_:);
  v167 = v15;
  v168 = v14;
  v176 = v18;
  v144 = v24 + 88;
  v129 = enum case for WidgetFamily.systemMedium(_:);
  v137 = v43;
  if (v52 == enum case for WidgetFamily.systemSmall(_:) || v52 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_1000724FC();
  }

  else if (v52 == enum case for WidgetFamily.systemLarge(_:) || v52 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_10007241C();
  }

  else
  {
    v53 = enum case for WidgetFamily.accessoryCircular(_:);
    v54 = v52;
    sub_1000724FC();
    if (v54 != v53 && v54 != enum case for WidgetFamily.accessoryRectangular(_:) && v54 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v128 + 8))(v29, v170);
    }
  }

  v55 = v177;
  v56 = *(v177 + 104);
  v57 = v171;
  v140 = enum case for Font.Leading.tight(_:);
  v58 = v172;
  v139 = v56;
  v56(v171);
  v59 = sub_10007250C();

  v60 = *(v55 + 8);
  v177 = v55 + 8;
  v138 = v60;
  v60(v57, v58);
  v61 = &v32[*(v141 + 36)];
  v62 = type metadata accessor for DynamicTypeFont();
  v63 = v62[6];
  v64 = enum case for ContentSizeCategory.extraLarge(_:);
  v65 = sub_10007222C();
  v66 = *(v65 - 8);
  v67 = *(v66 + 104);
  LODWORD(v141) = v64;
  v136 = v67;
  v67(v61 + v63, v64, v65);
  v135 = *(v66 + 56);
  v135(v61 + v63, 0, 1, v65);
  sub_10007246C();
  v69 = v68;
  *v61 = swift_getKeyPath();
  v134 = sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v61 + v62[5]) = v59;
  *(v61 + v62[7]) = v69;
  v70 = v131;
  *v32 = v132;
  *(v32 + 1) = v70;
  v32[16] = v130 & 1;
  *(v32 + 3) = v133;
  v71 = sub_10007271C();
  KeyPath = swift_getKeyPath();
  v73 = v32;
  v74 = v153;
  sub_100014DEC(v73, v153, &qword_100095388, &qword_100074738);
  v75 = (v74 + *(v152 + 36));
  *v75 = KeyPath;
  v75[1] = v71;
  v76 = v150;
  sub_1000453F4(&v150[*(v145 + 36)]);
  sub_100014DEC(v74, v76, &qword_100095398, &qword_100074778);
  v77 = swift_getKeyPath();
  v78 = v149;
  sub_100014DEC(v76, v149, &qword_1000953A0, &unk_100074780);
  v79 = v78 + *(v147 + 36);
  *v79 = v77;
  *(v79 + 8) = 2;
  *(v79 + 16) = 0;
  v80 = swift_getKeyPath();
  v81 = v78;
  v82 = v148;
  sub_100014DEC(v81, v148, &qword_1000963F8, &qword_100075A90);
  v83 = v82 + *(v146 + 36);
  *v83 = v80;
  *(v83 + 8) = 1;
  v84 = swift_getKeyPath();
  v85 = v137;
  sub_100014DEC(v82, v137, &qword_100096470, &qword_100075AC8);
  v86 = (v85 + *(v151 + 36));
  *v86 = v84;
  v86[1] = 0x3FECCCCCCCCCCCCDLL;
  sub_10004C168();
  sub_1000725FC();
  sub_100004890(v85, &qword_100096478, &qword_100075AD0);
  v87 = sub_10007276C();
  v88 = v154;
  sub_100043B2C(v154);
  v89 = v143(v88, v170);
  if (v89 == v142 || v89 == v129)
  {
    sub_1000724FC();
  }

  else if (v89 == enum case for WidgetFamily.systemLarge(_:) || v89 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_10007241C();
  }

  else
  {
    v90 = enum case for WidgetFamily.accessoryCircular(_:);
    v91 = v89;
    sub_1000724FC();
    if (v91 != v90 && v91 != enum case for WidgetFamily.accessoryRectangular(_:) && v91 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v128 + 8))(v88, v170);
    }
  }

  v93 = v171;
  v92 = v172;
  v139(v171, v140, v172);
  v94 = sub_10007250C();

  v138(v93, v92);
  v95 = v162;
  v96 = &v162[*(v157 + 36)];
  v97 = v62[6];
  v136(v96 + v97, v141, v65);
  v135(v96 + v97, 0, 1, v65);
  sub_10007248C();
  v99 = v98;
  *v96 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v96 + v62[5]) = v94;
  *(v96 + v62[7]) = v99;
  *v95 = v87;
  *(v95 + 8) = 1;
  v100 = sub_10007271C();
  v101 = swift_getKeyPath();
  v102 = v161;
  sub_100014DEC(v95, v161, &qword_100096440, &unk_100076E00);
  v103 = (v102 + *(v160 + 36));
  *v103 = v101;
  v103[1] = v100;
  v104 = v166;
  sub_1000453F4(&v166[*(v159 + 36)]);
  sub_100014DEC(v102, v104, &qword_100096448, &qword_100075AB0);
  v105 = v163;
  v106 = &v163[*(v158 + 36)];
  v107 = *(sub_10000388C(&qword_100096498, &qword_100076930) + 28);
  v108 = enum case for Image.Scale.small(_:);
  v109 = sub_1000727BC();
  (*(*(v109 - 8) + 104))(v106 + v107, v108, v109);
  *v106 = swift_getKeyPath();
  sub_100014DEC(v104, v105, &qword_100096450, &qword_100076E10);
  v110 = swift_getKeyPath();
  v111 = v164;
  sub_100014DEC(v105, v164, &qword_100096458, &qword_100075AB8);
  v112 = (v111 + *(v165 + 36));
  *v112 = v110;
  v112[1] = 0x3FECCCCCCCCCCCCDLL;
  sub_10004C2E0();
  v113 = v175;
  sub_1000725FC();
  sub_100004890(v111, &qword_100096460, &qword_100075AC0);
  v114 = v155;
  v115 = *(v155 + 16);
  v116 = v173;
  v117 = v156;
  v115(v173, v178, v156);
  v119 = v167;
  v118 = v168;
  v120 = *(v167 + 16);
  v120(v176, v113, v168);
  v121 = v169;
  v115(v169, v116, v117);
  v122 = sub_10000388C(&qword_1000964E8, &qword_100075B18);
  v123 = v176;
  v120(&v121[*(v122 + 48)], v176, v118);
  v124 = &v121[*(v122 + 64)];
  *v124 = 0;
  v124[8] = 1;
  v125 = *(v119 + 8);
  v125(v175, v118);
  v126 = *(v114 + 8);
  v126(v178, v117);
  v125(v123, v118);
  return (v126)(v173, v117);
}

uint64_t sub_100047DF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for CPAppGridView();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10000388C(&qword_1000962C0, &qword_100076240);
  v8 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v10 = &v64 - v9;
  v65 = sub_10000388C(&qword_1000962C8, &qword_100077400);
  v11 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v13 = &v64 - v12;
  v66 = sub_10000388C(&qword_1000962D0, &qword_1000774A0);
  v14 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v68 = &v64 - v15;
  v67 = sub_10000388C(&qword_1000962D8, &qword_100075810);
  v16 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v70 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v64 - v19;
  __chkstk_darwin(v21);
  v69 = &v64 - v22;
  v23 = type metadata accessor for CPMessageView();
  sub_100016544(a1 + *(v23 + 32), v7);
  v24 = *(v23 + 36);
  v25 = v4[7];
  v26 = sub_100071F5C();
  (*(*(v26 - 8) + 16))(&v7[v25], a1 + v24, v26);
  *&v7[v4[13]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v7[v4[14]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v7[v4[8]] = 1;
  *&v7[v4[9]] = 2;
  v7[v4[10]] = 0;
  v27 = v4[11];
  *&v7[v27] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v28 = v4[12];
  *&v7[v28] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  v30 = sub_1000723FC();
  *(inited + 32) = v30;
  v31 = sub_1000723CC();
  *(inited + 33) = v31;
  v32 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v30)
  {
    v32 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v31)
  {
    v32 = sub_1000723EC();
  }

  sub_100041AB4(v7, v10);
  v33 = &v10[*(v64 + 36)];
  *v33 = v32;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  v34 = sub_1000723DC();
  v35 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v34)
  {
    v35 = sub_1000723EC();
  }

  sub_100071F3C();
  sub_100071E8C();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_100014DEC(v10, v13, &qword_1000962C0, &qword_100076240);
  v44 = &v13[*(v65 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = sub_1000723BC();
  v46 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v45)
  {
    v46 = sub_1000723EC();
  }

  sub_100071E8C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v68;
  sub_100014DEC(v13, v68, &qword_1000962C8, &qword_100077400);
  v56 = v55 + *(v66 + 36);
  *v56 = v46;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v54;
  *(v56 + 40) = 0;
  sub_100071F3C();
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  sub_100014DEC(v55, v20, &qword_1000962D0, &qword_1000774A0);
  v57 = &v20[*(v67 + 36)];
  v58 = v73;
  *v57 = v72;
  *(v57 + 1) = v58;
  *(v57 + 2) = v74;
  v59 = v69;
  sub_100014DEC(v20, v69, &qword_1000962D8, &qword_100075810);
  v60 = v70;
  sub_100004C94(v59, v70, &qword_1000962D8, &qword_100075810);
  v61 = v71;
  *v71 = 0;
  *(v61 + 8) = 1;
  v62 = sub_10000388C(&qword_1000962E0, &qword_1000758D8);
  sub_100004C94(v60, v61 + *(v62 + 48), &qword_1000962D8, &qword_100075810);
  sub_100004890(v59, &qword_1000962D8, &qword_100075810);
  return sub_100004890(v60, &qword_1000962D8, &qword_100075810);
}

uint64_t sub_1000484CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000388C(&qword_1000962E8, &qword_1000758E0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for CPMessageView();
  sub_100016544(a1 + *(v12 + 32), v11);
  v13 = *(v12 + 36);
  v14 = type metadata accessor for CPAppGridView();
  v15 = v14[5];
  v16 = sub_100071F5C();
  (*(*(v16 - 8) + 16))(&v11[v15], a1 + v13, v16);
  *&v11[v14[11]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v11[v14[12]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v11[v14[6]] = 1;
  *&v11[v14[7]] = 3;
  v11[v14[8]] = 0;
  v17 = v14[9];
  *&v11[v17] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v18 = v14[10];
  *&v11[v18] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v14) = sub_1000723AC();
  v19 = &v11[*(sub_10000388C(&qword_1000962C0, &qword_100076240) + 36)];
  *v19 = v14;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  sub_100071F3C();
  sub_100043F3C();
  sub_1000728AC();
  sub_100071F2C();
  v20 = &v11[*(v5 + 44)];
  v21 = v24[1];
  *v20 = v24[0];
  *(v20 + 1) = v21;
  *(v20 + 2) = v24[2];
  sub_100004C94(v11, v8, &qword_1000962E8, &qword_1000758E0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v22 = sub_10000388C(&qword_1000962F0, &qword_1000758E8);
  sub_100004C94(v8, a2 + *(v22 + 48), &qword_1000962E8, &qword_1000758E0);
  sub_100004890(v11, &qword_1000962E8, &qword_1000758E0);
  return sub_100004890(v8, &qword_1000962E8, &qword_1000758E0);
}

uint64_t sub_100048804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_1000729DC();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000962F8, &qword_1000758F0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for CPMessageView();
  sub_100016544(a1 + *(v16 + 32), v15);
  v17 = *(v16 + 36);
  v18 = type metadata accessor for CPAppGridView();
  v19 = v18[5];
  v20 = sub_100071F5C();
  (*(*(v20 - 8) + 16))(&v15[v19], a1 + v17, v20);
  *&v15[v18[11]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v15[v18[12]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v15[v18[6]] = 2;
  *&v15[v18[7]] = 3;
  v15[v18[8]] = 0;
  v21 = v18[9];
  *&v15[v21] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v22 = v18[10];
  *&v15[v22] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_100071F3C();
  sub_100043B2C(v7);
  sub_100022F7C(a1 + v17, v7);
  (*(v4 + 8))(v7, v28);
  sub_1000728AC();
  sub_100071F2C();
  v23 = &v15[*(v9 + 44)];
  v24 = v30;
  *v23 = v29;
  *(v23 + 1) = v24;
  *(v23 + 2) = v31;
  sub_100004C94(v15, v12, &qword_1000962F8, &qword_1000758F0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v25 = sub_10000388C(&qword_100096300, &qword_1000758F8);
  sub_100004C94(v12, a2 + *(v25 + 48), &qword_1000962F8, &qword_1000758F0);
  sub_100004890(v15, &qword_1000962F8, &qword_1000758F0);
  return sub_100004890(v12, &qword_1000962F8, &qword_1000758F0);
}

double sub_100048BB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000729DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000946E0 != -1)
  {
    swift_once();
  }

  v9 = qword_100099978;
  v10 = *(type metadata accessor for CPMessageView() + 36);

  sub_100071F3C();
  sub_100043B2C(v8);
  sub_100022F7C(a1 + v10, v8);
  (*(v5 + 8))(v8, v4);
  sub_1000728AC();
  sub_100071F2C();
  v11 = v16[1];
  v12 = v17;
  v13 = v18;
  v14 = v19;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  result = *&v20;
  *(a2 + 56) = v20;
  return result;
}

uint64_t sub_100048D6C@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v54 = sub_10000388C(&qword_100096218, &qword_1000757A0);
  v2 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v49 = (&v47 - v3);
  v51 = sub_10000388C(&qword_100096220, &qword_1000757A8);
  v4 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v53 = &v47 - v5;
  v61 = sub_10000388C(&qword_100096228, &qword_1000757B0);
  v6 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v55 = &v47 - v7;
  v52 = sub_10000388C(&qword_100096230, &qword_1000757B8);
  v8 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v50 = (&v47 - v9);
  v59 = sub_10000388C(&qword_100096238, &qword_1000757C0);
  v10 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v56 = (&v47 - v11);
  v62 = sub_10000388C(&qword_100096240, &qword_1000757C8);
  v12 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v60 = &v47 - v13;
  v58 = sub_10000388C(&qword_100096248, &qword_1000757D0);
  v14 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v16 = &v47 - v15;
  v17 = sub_10000388C(&qword_100096250, &qword_1000757D8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v47 - v19;
  v21 = sub_10000388C(&qword_100096258, &qword_1000757E0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v47 - v23;
  v63 = sub_10000388C(&qword_100096260, &qword_1000757E8);
  v25 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v27 = &v47 - v26;
  v28 = sub_1000729DC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  sub_100043B2C(v32);
  v48 = v29;
  v33 = (*(v29 + 88))(v32, v28);
  if (v33 == enum case for WidgetFamily.systemSmall(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100096280, &qword_100096238, &qword_1000757C0);
    sub_10007230C();
    sub_100004C94(v24, v16, &qword_100096258, &qword_1000757E0);
    swift_storeEnumTagMultiPayload();
    sub_10004B7A4();
    sub_10004B85C();
    sub_10007230C();
    sub_100004890(v24, &qword_100096258, &qword_1000757E0);
    sub_100004C94(v27, v60, &qword_100096260, &qword_1000757E8);
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10004B718();
    sub_10004B940();
    sub_10007230C();
    return sub_100004890(v27, &qword_100096260, &qword_1000757E8);
  }

  else
  {
    v35 = v60;
    v47 = v21;
    if (v33 == enum case for WidgetFamily.systemMedium(_:))
    {
      v36 = sub_1000721CC();
      v37 = v56;
      *v56 = v36;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      v38 = sub_10000388C(&qword_1000962B8, &qword_100075808);
      sub_100047DF0(v57, (v37 + *(v38 + 44)));
      sub_100004C94(v37, v20, &qword_100096238, &qword_1000757C0);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100096280, &qword_100096238, &qword_1000757C0);
      sub_10007230C();
      sub_100004C94(v24, v16, &qword_100096258, &qword_1000757E0);
      swift_storeEnumTagMultiPayload();
      sub_10004B7A4();
      sub_10004B85C();
      sub_10007230C();
      sub_100004890(v24, &qword_100096258, &qword_1000757E0);
      sub_100004C94(v27, v35, &qword_100096260, &qword_1000757E8);
      swift_storeEnumTagMultiPayload();
      sub_10000388C(&qword_100096268, &qword_1000757F0);
      sub_10004B718();
      sub_10004B940();
      sub_10007230C();
      sub_100004890(v27, &qword_100096260, &qword_1000757E8);
      return sub_100004890(v37, &qword_100096238, &qword_1000757C0);
    }

    else if (v33 == enum case for WidgetFamily.systemLarge(_:))
    {
      v39 = sub_10007223C();
      v40 = v50;
      *v50 = v39;
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      v41 = sub_10000388C(&qword_1000962B0, &qword_100075800);
      sub_1000484CC(v57, v40 + *(v41 + 44));
      sub_100004C94(v40, v53, &qword_100096230, &qword_1000757B8);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100096290, &qword_100096230, &qword_1000757B8);
      sub_100004C3C(&qword_100096298, &qword_100096218, &qword_1000757A0);
      v42 = v55;
      sub_10007230C();
      sub_100004C94(v42, v16, &qword_100096228, &qword_1000757B0);
      swift_storeEnumTagMultiPayload();
      sub_10004B7A4();
      sub_10004B85C();
      sub_10007230C();
      sub_100004890(v42, &qword_100096228, &qword_1000757B0);
      sub_100004C94(v27, v35, &qword_100096260, &qword_1000757E8);
      swift_storeEnumTagMultiPayload();
      sub_10000388C(&qword_100096268, &qword_1000757F0);
      sub_10004B718();
      sub_10004B940();
      sub_10007230C();
      sub_100004890(v27, &qword_100096260, &qword_1000757E8);
      return sub_100004890(v40, &qword_100096230, &qword_1000757B8);
    }

    else if (v33 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v43 = sub_1000721CC();
      v44 = v49;
      *v49 = v43;
      *(v44 + 8) = 0;
      *(v44 + 16) = 0;
      v45 = sub_10000388C(&qword_1000962A8, &qword_1000757F8);
      sub_100048804(v57, v44 + *(v45 + 44));
      sub_100004C94(v44, v53, &qword_100096218, &qword_1000757A0);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100096290, &qword_100096230, &qword_1000757B8);
      sub_100004C3C(&qword_100096298, &qword_100096218, &qword_1000757A0);
      v46 = v55;
      sub_10007230C();
      sub_100004C94(v46, v16, &qword_100096228, &qword_1000757B0);
      swift_storeEnumTagMultiPayload();
      sub_10004B7A4();
      sub_10004B85C();
      sub_10007230C();
      sub_100004890(v46, &qword_100096228, &qword_1000757B0);
      sub_100004C94(v27, v35, &qword_100096260, &qword_1000757E8);
      swift_storeEnumTagMultiPayload();
      sub_10000388C(&qword_100096268, &qword_1000757F0);
      sub_10004B718();
      sub_10004B940();
      sub_10007230C();
      sub_100004890(v27, &qword_100096260, &qword_1000757E8);
      return sub_100004890(v44, &qword_100096218, &qword_1000757A0);
    }

    else if (v33 == enum case for WidgetFamily.accessoryCircular(_:) || v33 == enum case for WidgetFamily.accessoryRectangular(_:) || v33 == enum case for WidgetFamily.accessoryInline(_:))
    {
      v65 = 0;
      sub_10007230C();
      *v35 = v66;
      swift_storeEnumTagMultiPayload();
      sub_10000388C(&qword_100096268, &qword_1000757F0);
      sub_10004B718();
      sub_10004B940();
      return sub_10007230C();
    }

    else
    {
      v67 = 1;
      sub_10007230C();
      *v35 = v68;
      swift_storeEnumTagMultiPayload();
      sub_10000388C(&qword_100096268, &qword_1000757F0);
      sub_10004B718();
      sub_10004B940();
      sub_10007230C();
      return (*(v48 + 8))(v32, v28);
    }
  }
}

uint64_t sub_100049A74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000729DC();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = &v49 - v8;
  v9 = sub_10007297C();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  __chkstk_darwin(v9);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v53 = &v49 - v13;
  v14 = sub_10007218C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CPMessageView();
  v20 = *(result + 28);
  v57 = v1;
  v21 = v1 + v20;
  v22 = *v21;
  if (*(v21 + 8) == 1)
  {
    v79 = v22 & 1;
    if ((v22 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_100072CEC();
    v50 = v14;
    v23 = v3;
    v24 = sub_10007239C();
    sub_100071E4C();

    v3 = v23;
    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v22, 0);
    result = (*(v15 + 8))(v18, v50);
    if (v79 != 1)
    {
LABEL_6:
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 255;
      goto LABEL_15;
    }
  }

  v25 = v53;
  sub_1000129F8(v53);
  v26 = v54;
  sub_10007296C();
  sub_10004C730(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode);
  v27 = v56;
  v28 = sub_100072B1C();
  v29 = *(v55 + 8);
  v29(v26, v27);
  result = (v29)(v25, v27);
  if (v28)
  {
    goto LABEL_6;
  }

  v45 = v51;
  sub_100043B2C(v51);
  v46 = v52;
  (*(v52 + 104))(v6, enum case for WidgetFamily.systemSmall(_:), v3);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v47 = *(v46 + 8);
  v47(v6, v3);
  v47(v45, v3);
  if (*&v77[0] == v71)
  {
    if (qword_1000946E0 != -1)
    {
      swift_once();
    }

    *&v71 = qword_100099978;
    BYTE8(v71) = 0;
  }

  else
  {
    if (qword_1000946D8 != -1)
    {
      swift_once();
    }

    *&v71 = qword_100099970;
    BYTE8(v71) = 1;
  }

  sub_10007230C();
  v30 = *&v77[0];
  v48 = BYTE8(v77[0]);

  sub_10004A108(&v65);
  v63 = v69;
  *v64 = *v70;
  *&v64[15] = *&v70[15];
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v58 = v48;
  v71 = v65;
  v72 = v66;
  v73 = v67;
  v74 = v68;
  *(v76 + 15) = *&v70[15];
  v76[0] = *v70;
  v75 = v69;

  sub_100004C94(&v71, v77, &qword_1000964F0, &qword_100075B20);

  v56 = *(&v71 + 1);
  v57 = v71;
  v54 = *(&v72 + 1);
  v55 = v72;
  v52 = *(&v73 + 1);
  v53 = v73;
  v38 = *(&v74 + 1);
  v51 = v74;
  v40 = *(&v75 + 1);
  v39 = v75;
  v42 = *(&v76[0] + 1);
  v41 = *&v76[0];
  v43 = LOWORD(v76[1]) | (BYTE2(v76[1]) << 16);
  v44 = v58;
  v77[0] = v59;
  v77[1] = v60;
  v77[2] = v61;
  *&v78[15] = *&v64[15];
  v77[4] = v63;
  *v78 = *v64;
  v77[3] = v62;
  sub_100004890(v77, &qword_1000964F0, &qword_100075B20);

  v37 = v51;
  v36 = v52;
  v35 = v53;
  v34 = v54;
  v33 = v55;
  v32 = v56;
  v31 = v57;
LABEL_15:
  *a1 = v30;
  *(a1 + 8) = v44;
  *(a1 + 16) = v31;
  *(a1 + 24) = v32;
  *(a1 + 32) = v33;
  *(a1 + 40) = v34;
  *(a1 + 48) = v35;
  *(a1 + 56) = v36;
  *(a1 + 64) = v37;
  *(a1 + 72) = v38;
  *(a1 + 80) = v39;
  *(a1 + 88) = v40;
  *(a1 + 96) = v41;
  *(a1 + 104) = v42;
  *(a1 + 112) = v43;
  *(a1 + 114) = BYTE2(v43);
  return result;
}

__n128 sub_10004A108@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000729DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100043B2C(v8);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v9 == enum case for WidgetFamily.systemMedium(_:))
    {
      v10 = sub_1000721CC();
      v22[0] = 0;
      if (qword_1000946E0 != -1)
      {
        swift_once();
      }

      v11 = qword_100099978;
      v12 = *(type metadata accessor for CPMessageView() + 36);

      sub_100071F3C();
      sub_100071F3C();
      sub_1000728AC();
      sub_100071F2C();
      v25 = 1;
      v24 = BYTE8(v33);
      v23 = BYTE8(v34);
      v38 = v10;
      LOBYTE(v39[0]) = v22[0];
      *(&v39[0] + 1) = 0;
      LOBYTE(v39[1]) = 1;
      *(&v39[1] + 1) = v11;
      *&v39[2] = v33;
      BYTE8(v39[2]) = BYTE8(v33);
      *&v39[3] = v34;
      BYTE8(v39[3]) = BYTE8(v34);
      v39[4] = v35;
      *&v49[32] = v39[1];
      *&v49[48] = v39[2];
      *&v49[64] = v39[3];
      *v50 = v35;
      *v49 = v10;
      *&v49[16] = *&v39[0];
      v40 = 1;
      v50[16] = 1;
      sub_100004C94(&v38, &v43, &qword_100096520, &qword_100075B38);
      sub_10000388C(&qword_100096520, &qword_100075B38);
      sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38);
      sub_10007230C();
      *&v49[64] = v47;
      *v50 = v48[0];
      *&v50[16] = LOBYTE(v48[1]);
      *v49 = v43;
      *&v49[16] = v44;
      *&v49[32] = v45;
      *&v49[48] = v46;
      v41 = 0;
    }

    else
    {
      if (v9 == enum case for WidgetFamily.systemLarge(_:))
      {
        v13 = sub_10007223C();
        v22[0] = 0;
        if (qword_1000946E0 != -1)
        {
          swift_once();
        }

        v14 = qword_100099978;
        v15 = *(type metadata accessor for CPMessageView() + 36);

        sub_100071F3C();
        sub_100043F3C();
        sub_1000728AC();
        sub_100071F2C();
        v25 = 1;
        v24 = BYTE8(v33);
        v23 = BYTE8(v34);
        v38 = v13;
        LOBYTE(v39[0]) = v22[0];
        *(&v39[0] + 1) = 0;
        LOBYTE(v39[1]) = 1;
        *(&v39[1] + 1) = v14;
        *&v39[2] = v33;
        BYTE8(v39[2]) = BYTE8(v33);
        *&v39[3] = v34;
        BYTE8(v39[3]) = BYTE8(v34);
        v39[4] = v35;
        *&v49[32] = v39[1];
        *&v49[48] = v39[2];
        *&v49[64] = v39[3];
        *v50 = v35;
        *v49 = v13;
        *&v49[16] = *&v39[0];
        v40 = 0;
        v50[16] = 0;
        sub_100004C94(&v38, &v43, &qword_100096540, &qword_100075B48);
        sub_10000388C(&qword_100096540, &qword_100075B48);
        sub_10000388C(&qword_100096520, &qword_100075B38);
        sub_100004C3C(&qword_100096538, &qword_100096540, &qword_100075B48);
        sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38);
        sub_10007230C();
        *&v49[64] = v47;
        *v50 = v48[0];
        v50[16] = v48[1];
        *v49 = v43;
        *&v49[16] = v44;
        *&v49[32] = v45;
        *&v49[48] = v46;
        v41 = 1;
        v50[17] = 1;
        sub_10000388C(&qword_100096510, &qword_100075B30);
        sub_10000388C(&qword_100096530, &qword_100075B40);
        sub_10004C804();
        sub_10004C8BC();
        sub_10007230C();
        *&v49[64] = v30;
        *v50 = v31;
        *&v50[16] = v32;
        *v49 = v26;
        *&v49[16] = v27;
        *&v49[32] = v28;
        *&v49[48] = v29;
        v42 = 0;
        v50[18] = 0;
        sub_10000388C(&qword_1000964F8, &qword_100075B28);
        sub_10000388C(&qword_100096268, &qword_1000757F0);
        sub_10004C778();
        sub_10004B940();
        sub_10007230C();
        sub_100004890(&v38, &qword_100096540, &qword_100075B48);
        *&v49[64] = v47;
        *v50 = v48[0];
        goto LABEL_14;
      }

      if (v9 != enum case for WidgetFamily.systemExtraLarge(_:))
      {
        if (v9 == enum case for WidgetFamily.accessoryCircular(_:) || v9 == enum case for WidgetFamily.accessoryRectangular(_:) || v9 == enum case for WidgetFamily.accessoryInline(_:))
        {
          v49[0] = 0;
          sub_10007230C();
          LOBYTE(v38) = 1;
          LOBYTE(v43) = v26;
          BYTE2(v48[1]) = 1;
          goto LABEL_3;
        }

        v49[0] = 1;
        sub_10007230C();
        LOBYTE(v38) = 1;
        v49[0] = v26;
        v50[18] = 1;
        sub_10000388C(&qword_1000964F8, &qword_100075B28);
        sub_10000388C(&qword_100096268, &qword_1000757F0);
        sub_10004C778();
        sub_10004B940();
        sub_10007230C();
        (*(v5 + 8))(v8, v4);
        goto LABEL_9;
      }

      v19 = sub_1000721CC();
      LOBYTE(v43) = 0;
      sub_100048BB0(v2, &v33);
      *&v49[7] = v33;
      *&v49[23] = v34;
      *&v49[39] = v35;
      *&v49[55] = v36;
      *&v49[71] = v37;
      v38 = v19;
      LOBYTE(v39[0]) = v43;
      *(v39 + 1) = *v49;
      v39[4] = *&v49[63];
      *(&v39[3] + 1) = *&v49[48];
      *(&v39[2] + 1) = *&v49[32];
      *(&v39[1] + 1) = *&v49[16];
      *&v49[32] = v39[1];
      *&v49[48] = v39[2];
      *&v49[64] = v39[3];
      *v50 = v39[4];
      *v49 = v19;
      *&v49[16] = v39[0];
      v40 = 1;
      v50[16] = 1;
      sub_100004C94(&v38, &v43, &qword_100096520, &qword_100075B38);
      sub_10000388C(&qword_100096540, &qword_100075B48);
      sub_10000388C(&qword_100096520, &qword_100075B38);
      sub_100004C3C(&qword_100096538, &qword_100096540, &qword_100075B48);
      sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38);
      sub_10007230C();
      *&v49[64] = v47;
      *v50 = v48[0];
      v50[16] = v48[1];
      *v49 = v43;
      *&v49[16] = v44;
      *&v49[32] = v45;
      *&v49[48] = v46;
      v41 = 1;
      v50[17] = 1;
    }

    sub_10000388C(&qword_100096510, &qword_100075B30);
    sub_10000388C(&qword_100096530, &qword_100075B40);
    sub_10004C804();
    sub_10004C8BC();
    sub_10007230C();
    *&v49[64] = v30;
    *v50 = v31;
    *&v50[16] = v32;
    *v49 = v26;
    *&v49[16] = v27;
    *&v49[32] = v28;
    *&v49[48] = v29;
    v42 = 0;
    v50[18] = 0;
    sub_10000388C(&qword_1000964F8, &qword_100075B28);
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10004C778();
    sub_10004B940();
    sub_10007230C();
    sub_100004890(&v38, &qword_100096520, &qword_100075B38);
LABEL_9:
    *&v49[64] = v47;
    *v50 = v48[0];
LABEL_14:
    *&v50[15] = *(v48 + 15);
    *v49 = v43;
    *&v49[16] = v44;
    *&v49[32] = v45;
    *&v49[48] = v46;
    goto LABEL_15;
  }

  v42 = 0;
  v50[16] = 0;
  sub_10000388C(&qword_100096520, &qword_100075B38);
  sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38);
  sub_10007230C();
  *&v49[64] = v47;
  *v50 = v48[0];
  *&v50[16] = LOBYTE(v48[1]);
  *v49 = v43;
  *&v49[16] = v44;
  *&v49[32] = v45;
  *&v49[48] = v46;
  LOBYTE(v33) = 0;
  sub_10000388C(&qword_100096510, &qword_100075B30);
  sub_10000388C(&qword_100096530, &qword_100075B40);
  sub_10004C804();
  sub_10004C8BC();
  sub_10007230C();
  v47 = v30;
  v48[0] = v31;
  LOWORD(v48[1]) = v32;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  LOBYTE(v38) = 0;
  BYTE2(v48[1]) = 0;
LABEL_3:
  sub_10000388C(&qword_1000964F8, &qword_100075B28);
  sub_10000388C(&qword_100096268, &qword_1000757F0);
  sub_10004C778();
  sub_10004B940();
  sub_10007230C();
LABEL_15:
  v16 = *v50;
  *(a1 + 64) = *&v49[64];
  *(a1 + 80) = v16;
  *(a1 + 95) = *&v50[15];
  v17 = *&v49[16];
  *a1 = *v49;
  *(a1 + 16) = v17;
  result = *&v49[48];
  *(a1 + 32) = *&v49[32];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10004AC24()
{
  v1 = sub_10007236C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_1000961B0, &qword_100075748);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v16 - v8);
  *v9 = sub_1000728AC();
  v9[1] = v10;
  v11 = sub_10000388C(&qword_1000961B8, &qword_100075750);
  sub_10004AE60(v0, v9 + *(v11 + 44));
  v12 = *(type metadata accessor for CPMessageView() + 36);
  sub_100071F3C();
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v13 = (v9 + *(v6 + 36));
  v14 = v16[1];
  *v13 = v16[0];
  v13[1] = v14;
  v13[2] = v16[2];
  sub_10007235C();
  sub_1000728AC();
  sub_10004B660();
  sub_10007265C();
  (*(v2 + 8))(v5, v1);
  return sub_100004890(v9, &qword_1000961B0, &qword_100075748);
}

uint64_t sub_10004AE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000388C(&qword_1000961D8, &qword_100075760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v37 - v8;
  v9 = sub_10000388C(&qword_1000961E0, &qword_100075768);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = sub_10000388C(&qword_1000961E8, &qword_100075770);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  sub_100049A74(v46);
  *v22 = sub_10007223C();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = &v22[*(sub_10000388C(&qword_1000961F0, &qword_100075778) + 44)];
  *v15 = sub_1000721CC();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v24 = sub_10000388C(&qword_1000961F8, &qword_100075780);
  sub_10004B2A4(a1, &v15[*(v24 + 44)]);
  sub_100004C94(v15, v12, &qword_1000961E0, &qword_100075768);
  sub_100004C94(v12, v23, &qword_1000961E0, &qword_100075768);
  v25 = v23 + *(sub_10000388C(&qword_100096200, &qword_100075788) + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_100004890(v15, &qword_1000961E0, &qword_100075768);
  sub_100004890(v12, &qword_1000961E0, &qword_100075768);
  v26 = v37;
  sub_100048D6C(v37);
  v43 = v46[4];
  v44 = v46[5];
  *v45 = *v47;
  v39 = v46[0];
  v40 = v46[1];
  *&v45[15] = *&v47[15];
  v41 = v46[2];
  v42 = v46[3];
  sub_100004C94(v22, v19, &qword_1000961E8, &qword_100075770);
  v27 = v38;
  sub_100004C94(v26, v38, &qword_1000961D8, &qword_100075760);
  v28 = v43;
  v29 = v44;
  v48[4] = v43;
  v48[5] = v44;
  v30 = *v45;
  v49[0] = *v45;
  *(v49 + 15) = *&v45[15];
  v31 = v39;
  v32 = v40;
  v48[0] = v39;
  v48[1] = v40;
  v33 = v41;
  v34 = v42;
  v48[2] = v41;
  v48[3] = v42;
  *(a2 + 111) = *&v45[15];
  *(a2 + 80) = v29;
  *(a2 + 96) = v30;
  *(a2 + 48) = v34;
  *(a2 + 64) = v28;
  *(a2 + 16) = v32;
  *(a2 + 32) = v33;
  *a2 = v31;
  v35 = sub_10000388C(&qword_100096208, &qword_100075790);
  sub_100004C94(v19, a2 + *(v35 + 48), &qword_1000961E8, &qword_100075770);
  sub_100004C94(v27, a2 + *(v35 + 64), &qword_1000961D8, &qword_100075760);
  sub_100004C94(v48, v50, &qword_100096210, &qword_100075798);
  sub_100004890(v26, &qword_1000961D8, &qword_100075760);
  sub_100004890(v22, &qword_1000961E8, &qword_100075770);
  sub_100004890(v27, &qword_1000961D8, &qword_100075760);
  sub_100004890(v19, &qword_1000961E8, &qword_100075770);
  v50[4] = v43;
  v50[5] = v44;
  v51[0] = *v45;
  *(v51 + 15) = *&v45[15];
  v50[0] = v39;
  v50[1] = v40;
  v50[2] = v41;
  v50[3] = v42;
  return sub_100004890(v50, &qword_100096210, &qword_100075798);
}

uint64_t sub_10004B2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1000729DC();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_100096308, &qword_100075900);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_10000388C(&qword_100096310, &qword_100075908);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v33 - v20;
  *v21 = sub_1000721CC();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = &v21[*(sub_10000388C(&qword_100096318, &qword_100075910) + 44)];
  *v13 = sub_10007224C();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v23 = sub_10000388C(&qword_100096320, &qword_100075918);
  sub_100045704(a1, &v13[*(v23 + 44)]);
  sub_100004C94(v13, v10, &qword_100096308, &qword_100075900);
  sub_100004C94(v10, v22, &qword_100096308, &qword_100075900);
  v24 = v22 + *(sub_10000388C(&qword_100096328, &qword_100075920) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100004890(v13, &qword_100096308, &qword_100075900);
  sub_100004890(v10, &qword_100096308, &qword_100075900);
  v25 = sub_1000723AC();
  v26 = &v21[*(sub_10000388C(&qword_100096330, &qword_100075928) + 36)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  v27 = *(type metadata accessor for CPMessageView() + 36);
  sub_100043B2C(v6);
  sub_100022F7C(a1 + v27, v6);
  (*(v34 + 8))(v6, v35);
  sub_100043F3C();
  sub_1000728AC();
  sub_100071F2C();
  v28 = &v21[*(v15 + 44)];
  v29 = v38;
  *v28 = v37;
  *(v28 + 1) = v29;
  *(v28 + 2) = v39;
  sub_100004C94(v21, v18, &qword_100096310, &qword_100075908);
  v30 = v36;
  sub_100004C94(v18, v36, &qword_100096310, &qword_100075908);
  v31 = v30 + *(sub_10000388C(&qword_100096338, &qword_100075930) + 48);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_100004890(v21, &qword_100096310, &qword_100075908);
  return sub_100004890(v18, &qword_100096310, &qword_100075908);
}

unint64_t sub_10004B660()
{
  result = qword_1000961C0;
  if (!qword_1000961C0)
  {
    sub_1000038D4(&qword_1000961B0, &qword_100075748);
    sub_100004C3C(&qword_1000961C8, &qword_1000961D0, &qword_100075758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000961C0);
  }

  return result;
}

unint64_t sub_10004B718()
{
  result = qword_100096270;
  if (!qword_100096270)
  {
    sub_1000038D4(&qword_100096260, &qword_1000757E8);
    sub_10004B7A4();
    sub_10004B85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096270);
  }

  return result;
}

unint64_t sub_10004B7A4()
{
  result = qword_100096278;
  if (!qword_100096278)
  {
    sub_1000038D4(&qword_100096258, &qword_1000757E0);
    sub_100004C3C(&qword_100096280, &qword_100096238, &qword_1000757C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096278);
  }

  return result;
}

unint64_t sub_10004B85C()
{
  result = qword_100096288;
  if (!qword_100096288)
  {
    sub_1000038D4(&qword_100096228, &qword_1000757B0);
    sub_100004C3C(&qword_100096290, &qword_100096230, &qword_1000757B8);
    sub_100004C3C(&qword_100096298, &qword_100096218, &qword_1000757A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096288);
  }

  return result;
}

unint64_t sub_10004B940()
{
  result = qword_1000962A0;
  if (!qword_1000962A0)
  {
    sub_1000038D4(&qword_100096268, &qword_1000757F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000962A0);
  }

  return result;
}

unint64_t sub_10004BA10()
{
  result = qword_100096398;
  if (!qword_100096398)
  {
    sub_1000038D4(&qword_100096390, &qword_100075A18);
    sub_10004BAC8();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096398);
  }

  return result;
}

unint64_t sub_10004BAC8()
{
  result = qword_1000963A0;
  if (!qword_1000963A0)
  {
    sub_1000038D4(&qword_1000963A8, &qword_100075A20);
    sub_10004BB80();
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963A0);
  }

  return result;
}

unint64_t sub_10004BB80()
{
  result = qword_1000963B0;
  if (!qword_1000963B0)
  {
    sub_1000038D4(&qword_1000963B8, &qword_100075A28);
    sub_10004BC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963B0);
  }

  return result;
}

unint64_t sub_10004BC0C()
{
  result = qword_1000963C0;
  if (!qword_1000963C0)
  {
    sub_1000038D4(&qword_1000963C8, &unk_100076910);
    sub_100004C3C(&qword_100095788, &qword_100095790, &qword_100074BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963C0);
  }

  return result;
}

unint64_t sub_10004BCC4()
{
  result = qword_1000963E0;
  if (!qword_1000963E0)
  {
    sub_1000038D4(&qword_100096380, &qword_100075978);
    sub_10004BD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963E0);
  }

  return result;
}

unint64_t sub_10004BD50()
{
  result = qword_1000963E8;
  if (!qword_1000963E8)
  {
    sub_1000038D4(&qword_100096378, &qword_100075970);
    sub_10004BDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963E8);
  }

  return result;
}

unint64_t sub_10004BDDC()
{
  result = qword_1000963F0;
  if (!qword_1000963F0)
  {
    sub_1000038D4(&qword_100096370, &qword_100075968);
    sub_1000038D4(&qword_100096390, &qword_100075A18);
    sub_10004BA10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000963F0);
  }

  return result;
}

unint64_t sub_10004BEB4()
{
  result = qword_100096410;
  if (!qword_100096410)
  {
    sub_1000038D4(&qword_100096350, &qword_100075948);
    sub_10004BF6C();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096410);
  }

  return result;
}

unint64_t sub_10004BF6C()
{
  result = qword_100096418;
  if (!qword_100096418)
  {
    sub_1000038D4(&qword_100096408, &qword_100075A98);
    sub_10004C024();
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096418);
  }

  return result;
}

unint64_t sub_10004C024()
{
  result = qword_100096420;
  if (!qword_100096420)
  {
    sub_1000038D4(&qword_100096400, &qword_100076E60);
    sub_10004C0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096420);
  }

  return result;
}

unint64_t sub_10004C0B0()
{
  result = qword_100096428;
  if (!qword_100096428)
  {
    sub_1000038D4(&qword_1000963F8, &qword_100075A90);
    sub_10001D1D4();
    sub_100004C3C(&qword_100095788, &qword_100095790, &qword_100074BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096428);
  }

  return result;
}

unint64_t sub_10004C168()
{
  result = qword_100096488;
  if (!qword_100096488)
  {
    sub_1000038D4(&qword_100096478, &qword_100075AD0);
    sub_10004C220();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096488);
  }

  return result;
}

unint64_t sub_10004C220()
{
  result = qword_100096490;
  if (!qword_100096490)
  {
    sub_1000038D4(&qword_100096470, &qword_100075AC8);
    sub_10004C0B0();
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096490);
  }

  return result;
}

unint64_t sub_10004C2E0()
{
  result = qword_1000964A0;
  if (!qword_1000964A0)
  {
    sub_1000038D4(&qword_100096460, &qword_100075AC0);
    sub_10004C398();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964A0);
  }

  return result;
}

unint64_t sub_10004C398()
{
  result = qword_1000964A8;
  if (!qword_1000964A8)
  {
    sub_1000038D4(&qword_100096458, &qword_100075AB8);
    sub_10004C450();
    sub_100004C3C(&qword_1000964E0, &qword_100096498, &qword_100076930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964A8);
  }

  return result;
}

unint64_t sub_10004C450()
{
  result = qword_1000964B0;
  if (!qword_1000964B0)
  {
    sub_1000038D4(&qword_100096450, &qword_100076E10);
    sub_10004C4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964B0);
  }

  return result;
}

unint64_t sub_10004C4DC()
{
  result = qword_1000964B8;
  if (!qword_1000964B8)
  {
    sub_1000038D4(&qword_100096448, &qword_100075AB0);
    sub_10004C594();
    sub_100004C3C(&qword_1000953D0, &qword_1000953D8, &qword_1000769A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964B8);
  }

  return result;
}

unint64_t sub_10004C594()
{
  result = qword_1000964C0;
  if (!qword_1000964C0)
  {
    sub_1000038D4(&qword_100096440, &unk_100076E00);
    sub_10004C650();
    sub_10004C730(&qword_1000953C8, type metadata accessor for DynamicTypeFont);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964C0);
  }

  return result;
}

unint64_t sub_10004C650()
{
  result = qword_1000964C8;
  if (!qword_1000964C8)
  {
    sub_1000038D4(&qword_1000964D0, &qword_100075B10);
    sub_10004C6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964C8);
  }

  return result;
}

unint64_t sub_10004C6DC()
{
  result = qword_1000964D8;
  if (!qword_1000964D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000964D8);
  }

  return result;
}

uint64_t sub_10004C730(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004C778()
{
  result = qword_100096500;
  if (!qword_100096500)
  {
    sub_1000038D4(&qword_1000964F8, &qword_100075B28);
    sub_10004C804();
    sub_10004C8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096500);
  }

  return result;
}

unint64_t sub_10004C804()
{
  result = qword_100096508;
  if (!qword_100096508)
  {
    sub_1000038D4(&qword_100096510, &qword_100075B30);
    sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096508);
  }

  return result;
}

unint64_t sub_10004C8BC()
{
  result = qword_100096528;
  if (!qword_100096528)
  {
    sub_1000038D4(&qword_100096530, &qword_100075B40);
    sub_100004C3C(&qword_100096538, &qword_100096540, &qword_100075B48);
    sub_100004C3C(&qword_100096518, &qword_100096520, &qword_100075B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096528);
  }

  return result;
}

uint64_t sub_10004C9A0()
{
  sub_1000038D4(&qword_1000961B0, &qword_100075748);
  sub_10004B660();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_10004EA7C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_10004DCC0(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_10004EF04();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_10004E71C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_10004CB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10004ED8C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10004DCC0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_10004F1F0();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_10004E8CC(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10004CC18()
{
  v1 = v0;
  v2 = sub_100071D4C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_lastPlayedDate;
  swift_beginAccess();
  v8 = v3[2];
  v8(v6, v1 + v7, v2);
  sub_100071D1C();
  v10 = v9;
  v11 = v3[1];
  v11(v6, v2);
  if (v10 > -3600.0)
  {
    return 0x414C505F5453554ALL;
  }

  v13 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v13 setUnitsStyle:0];
  v8(v6, v1 + v7, v2);
  isa = sub_100071CFC().super.isa;
  v11(v6, v2);
  sub_100071D3C();
  v15 = sub_100071CFC().super.isa;
  v11(v6, v2);
  v16 = [v13 localizedStringForDate:isa relativeToDate:v15];

  v17 = sub_100072B3C();
  return v17;
}

void sub_10004CE40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v36 = a1;
  v37 = a2;
  v38 = a4;
  v7 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - v9;
  v39 = v4[2];
  v35 = sub_100072FEC();
  v12 = *(v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID);
  v11 = *(v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID + 8);
  v32 = (v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID);

  v34 = a3;
  sub_1000729CC();
  v13 = v4[5];
  v14 = v4[6];
  v16 = *(v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic);
  v15 = *(v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic + 8);
  v33 = (v4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic);

  sub_100071E0C();

  v17 = sub_100071C9C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    sub_100012BA4(v10);
    v39 = v5[2];
    sub_100072FEC();
    v19 = sub_100072B2C();

    v20 = *v32;
    v21 = v32[1];

    v22 = sub_100072B2C();

    v23 = sub_100072B2C();
    v24 = sub_1000729CC();
    v25 = v5[5];
    v26 = v5[6];

    v27 = sub_100072B2C();

    if (v33[1])
    {
      v28 = *v33;
      v29 = v33[1];

      v30 = sub_100072B2C();
    }

    else
    {
      v30 = 0;
    }

    v31 = [objc_opt_self() URLWithAdamId:v19 bundleId:v22 widgetId:v23 widgetSize:v24 localizedName:v27 topic:v30];

    sub_100071C6C();
  }

  else
  {
    (*(v18 + 32))(v38, v10, v17);
  }
}

uint64_t sub_10004D174(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_icons;
  if (!v3)
  {
    swift_beginAccess();
    v18 = *(v2 + v4);
    if (*(v18 + 16))
    {

      v19 = sub_10004DCC0(a1, a2);
      if (v20)
      {
        v21 = (*(v18 + 56) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];

        v24 = objc_allocWithZone(UIImage);
        v25 = sub_100072B2C();

        v15 = [v24 initWithContentsOfFile:v25];

        return v15;
      }
    }

    return 0;
  }

  v5 = *(v2 + 24);
  result = swift_beginAccess();
  v7 = *(v2 + v4);
  if (*(v7 + 16))
  {

    v8 = sub_10004DCC0(v5, v3);
    v10 = v9;

    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v8);
      v12 = *v11;
      v13 = v11[1];

      v14 = sub_100072B2C();

      v15 = [objc_opt_self() imageNamed:v14];

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004D324()
{
  result = sub_100071DBC();
  qword_100096548 = v1;
  return result;
}

uint64_t sub_10004D34C()
{
  v0 = sub_100071D4C();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100094718 != -1)
  {
    swift_once();
  }

  sub_100071D0C();
  v4 = sub_10004F35C(&_swiftEmptyArrayStorage);
  v5 = type metadata accessor for AppDisplayData();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v8[2] = 973039644;
  v8[3] = 0;
  v27 = v3;
  v8[4] = 0;
  v8[5] = 0xD000000000000011;
  v8[6] = 0x8000000100077C60;
  v9 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_lastPlayedDate;
  sub_100071D3C();
  v10 = (v8 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID);
  *v10 = 0xD00000000000001FLL;
  v10[1] = 0x8000000100077C80;
  v11 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_icons;
  *(v8 + v11) = sub_10004F35C(&_swiftEmptyArrayStorage);
  *(v8 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor) = 0;
  *(v8 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor) = 0;
  v12 = (v8 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic);
  *v12 = 0;
  v12[1] = 0;
  v8[2] = 973039644;
  v13 = v8[6];
  v8[5] = 0xD000000000000011;
  v8[6] = 0x8000000100077C60;

  swift_beginAccess();
  v15 = v28;
  v14 = v29;
  v16 = v8 + v9;
  v17 = v27;
  (*(v28 + 24))(v16, v27, v29);
  swift_endAccess();
  v18 = v10[1];
  *v10 = 0xD00000000000001FLL;
  v10[1] = 0x8000000100077C80;

  swift_beginAccess();
  v19 = *(v8 + v11);
  *(v8 + v11) = v4;

  v20 = v12[1];
  *v12 = 0;
  v12[1] = 0;

  v21 = v8[4];
  *(v8 + 3) = xmmword_100075B50;

  v22 = sub_10004F35C(&_swiftEmptyArrayStorage);
  v23 = *(v8 + v11);
  *(v8 + v11) = v22;

  swift_beginAccess();
  v24 = *(v8 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v8 + v11);
  *(v8 + v11) = 0x8000000000000000;
  sub_10004EA7C(0x6E6F63496B636F4DLL, 0xE900000000000036, 0x6E6F63496B636F4DLL, 0xE900000000000036, isUniquelyReferenced_nonNull_native);
  *(v8 + v11) = v30;
  swift_endAccess();
  result = (*(v15 + 8))(v17, v14);
  qword_100096550 = v8;
  return result;
}

uint64_t sub_10004D680()
{
  sub_10000388C(&qword_100094CE8, &qword_100073E40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100075B60;
  if (qword_100094720 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  v1 = qword_100096550;
  *(v0 + 32) = qword_100096550;
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = v1;
  *(v0 + 80) = v1;
  *(v0 + 88) = v1;
  *(v0 + 96) = v1;
  *(v0 + 104) = v1;
  *(v0 + 112) = v1;
  qword_1000999E8 = v0;
  return swift_retain_n();
}

uint64_t sub_10004D738()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_lastPlayedDate;
  v4 = sub_100071D4C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID + 8);

  v6 = *(v0 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_icons);

  v7 = *(v0 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic + 8);

  return v0;
}

uint64_t sub_10004D800()
{
  sub_10004D738();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppDisplayData()
{
  result = qword_100096580;
  if (!qword_100096580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004D8AC()
{
  result = sub_100071D4C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Int sub_10004D984()
{
  v1 = *v0;
  sub_10007303C();
  sub_10007304C(*(v1 + 16));
  return sub_10007305C();
}

Swift::Int sub_10004D9FC()
{
  sub_10007303C();
  sub_10007304C(*(*v0 + 16));
  return sub_10007305C();
}

uint64_t sub_10004DA5C()
{
  v1 = v0;
  sub_100072E4C(71);
  v13._object = 0x8000000100077DB0;
  v13._countAndFlagsBits = 0xD000000000000019;
  sub_100072B7C(v13);
  v12 = v0[2];
  v14._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v14);

  v15._countAndFlagsBits = 0x6C746974090A202CLL;
  v15._object = 0xEB00000000203A65;
  sub_100072B7C(v15);
  v2 = v0[5];
  v3 = v0[6];

  v16._countAndFlagsBits = v2;
  v16._object = v3;
  sub_100072B7C(v16);

  v17._countAndFlagsBits = 0x646E7562090A202CLL;
  v17._object = 0xEE00203A4449656CLL;
  sub_100072B7C(v17);
  v4 = *(v0 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID);
  v5 = *(v0 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID + 8);

  v18._countAndFlagsBits = v4;
  v18._object = v5;
  sub_100072B7C(v18);

  v19._countAndFlagsBits = 0x6E6F6369090A202CLL;
  v19._object = 0xEB00000000203A73;
  sub_100072B7C(v19);
  v6 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_icons;
  swift_beginAccess();
  v7 = *(v1 + v6);

  v8 = sub_100072ADC();
  v10 = v9;

  v20._countAndFlagsBits = v8;
  v20._object = v10;
  sub_100072B7C(v20);

  v21._countAndFlagsBits = 10506;
  v21._object = 0xE200000000000000;
  sub_100072B7C(v21);
  return 0;
}

unint64_t sub_10004DC68()
{
  result = qword_100096778;
  if (!qword_100096778)
  {
    type metadata accessor for AppDisplayData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096778);
  }

  return result;
}

unint64_t sub_10004DCC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10007303C();
  sub_100072B6C();
  v6 = sub_10007305C();

  return sub_10004DD7C(a1, a2, v6);
}

unint64_t sub_10004DD38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100072DDC(*(v2 + 40));

  return sub_10004DE34(a1, v4);
}

unint64_t sub_10004DD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100072FFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004DE34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003B064(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100072DEC();
      sub_10003B0C0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10004DEFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000388C(&qword_100096780, &qword_100075C80);
  v40 = a2;
  result = sub_100072F0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_10007303C();
      sub_100072B6C();
      result = sub_10007305C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}