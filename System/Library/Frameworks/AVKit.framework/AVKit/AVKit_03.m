uint64_t sub_18B4F2C78()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    *(v0 + 136) = *(v0 + 232);
    v4 = swift_allocObject();
    *(v0 + 112) = v4;
    v5 = *(v0 + 32);
    *(v4 + 16) = *(v0 + 16);
    *(v4 + 32) = v5;
    *(v4 + 48) = v3;
    *(v4 + 56) = v2;
  }

  *(v0 + 144) = v1;
  sub_18B4A6454(v0 + 112, &qword_1EA9C4FD8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 240) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_18B4F2D90, Strong, 0);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_18B4F2D90()
{
  v2 = v0[26];
  v1 = v0[27];
  swift_beginAccess();
  sub_18B4F5398(v2, v1, (v0 + 9));
  sub_18B4A6454((v0 + 9), &qword_1EA9C4FE0);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_18B4F2E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[20] = a5;
  v9 = swift_task_alloc();
  v7[23] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EC0);
  v7[24] = v10;
  *v9 = v7;
  v9[1] = sub_18B4F2F1C;
  v11 = MEMORY[0x1E69E73E0];
  v12 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v7 + 18, a4, v10, v11, v12);
}

uint64_t sub_18B4F2F1C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4F3018, 0, 0);
}

uint64_t sub_18B4F3018()
{
  v1 = *(v0 + 152);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 144);
    *(v0 + 80) = *(v0 + 192);
    *(v0 + 56) = v2;
  }

  *(v0 + 88) = v1;
  sub_18B4A6454(v0 + 56, &qword_1EA9C4FD8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 200) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_18B4F3104, Strong, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_18B4F3104()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  sub_18B4F5398(v2, v1, (v0 + 2));
  sub_18B4A6454((v0 + 2), &qword_1EA9C4FE0);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_18B4F31BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[18] = a5;
  v9 = swift_task_alloc();
  v7[21] = v9;
  *v9 = v7;
  v9[1] = sub_18B4F3260;

  return sub_18B4EF414((v7 + 7), a4);
}

uint64_t sub_18B4F3260()
{
  v1 = *v0;

  sub_18B4A6454(v1 + 56, &qword_1EA9C4FD8);

  return MEMORY[0x1EEE6DFA0](sub_18B4F3374, 0, 0);
}

uint64_t sub_18B4F3374()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_18B4F342C, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_18B4F342C()
{
  v2 = v0[19];
  v1 = v0[20];
  swift_beginAccess();
  sub_18B4F5398(v2, v1, (v0 + 2));
  sub_18B4A6454((v0 + 2), &qword_1EA9C4FE0);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_18B4F34E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = swift_task_alloc();
  v7[16] = v9;
  *v9 = v7;
  v9[1] = sub_18B4F35A4;
  v10 = MEMORY[0x1E69E6448];
  v11 = MEMORY[0x1E69E73E0];
  v12 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v7 + 18, a4, v10, v11, v12);
}

uint64_t sub_18B4F35A4()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4F36A0, 0, 0);
}

uint64_t sub_18B4F36A0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_18B4F9F8C, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_18B4F3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = swift_task_alloc();
  v7[16] = v9;
  *v9 = v7;
  v9[1] = sub_18B4F3818;
  v10 = MEMORY[0x1E69E6370];
  v11 = MEMORY[0x1E69E73E0];
  v12 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v7 + 18, a4, v10, v11, v12);
}

uint64_t sub_18B4F3818()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4F3914, 0, 0);
}

uint64_t sub_18B4F3914()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_18B4F39CC, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_18B4F39CC()
{
  v2 = v0[14];
  v1 = v0[15];
  swift_beginAccess();
  sub_18B4F5398(v2, v1, (v0 + 2));
  sub_18B4A6454((v0 + 2), &qword_1EA9C4FE0);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_18B4F3A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = swift_task_alloc();
  v7[16] = v9;
  *v9 = v7;
  v9[1] = sub_18B4F35A4;
  v10 = MEMORY[0x1E69E73E0];
  v11 = MEMORY[0x1E69E7410];
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v7 + 18, a4, v12, v10, v11);
}

uint64_t sub_18B4F3B48(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
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
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_18B4AC60C(0, &qword_1EA9C3980);
    if (((a2 | v3) & 0xC000000000000001) != 0)
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
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x18CFF7750](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x18CFF7750](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_18B6C5A6C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_18B6C5A6C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_18B6C5C6C();
  }

  result = sub_18B6C5C6C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_18B4F3D98(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = a2 + 56;
  v4 = result + 56;
  while (v2)
  {
    result = CGRectEqualToRect(*(v4 - 24), *(v3 - 24));
    if (result)
    {
      v5 = v2 == 1;
    }

    else
    {
      v5 = 1;
    }

    --v2;
    v3 += 32;
    v4 += 32;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B4F3E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_18B6C5CEC() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_18B4F3EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a2 + 40;
    for (i = a1 + 40; ; i += 56)
    {
      if (*(i + 40))
      {
        if ((*(v3 + 40) & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(v3 + 40))
      {
        return 0;
      }

      v5 = *(i - 8) == *(v3 - 8) && *i == *v3;
      if (!v5 && (sub_18B6C5CEC() & 1) == 0)
      {
        break;
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_18B4F3F5C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4F9F74;

  return v6(a1);
}

uint64_t sub_18B4F4054(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4F414C;

  return v6(a1);
}

uint64_t sub_18B4F414C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_18B4F4244(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_18B6C450C();
  v6 = sub_18B4F4310(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_18B4AF1A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_18B4F4310(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_18B4F441C(a5, a6);
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
    result = sub_18B6C5B8C();
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

uint64_t sub_18B4F441C(uint64_t a1, unint64_t a2)
{
  v3 = sub_18B4F4468(a1, a2);
  sub_18B4F4598(&unk_1EFECC780);
  return v3;
}

uint64_t sub_18B4F4468(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_18B4F4684(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_18B6C5B8C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_18B6C568C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_18B4F4684(v10, 0);
        result = sub_18B6C5B4C();
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

uint64_t sub_18B4F4598(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_18B4F46F8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18B4F4684(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18B4F46F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_18B4F47EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_18B6C450C();
    sub_18B6C450C();

    return sub_18B6C450C();
  }

  return result;
}

uint64_t sub_18B4F483C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4E0090(a1, v1);
}

char *sub_18B4F48D8(char *a1, int64_t a2, char a3)
{
  result = sub_18B4F4958(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B4F48F8(char *a1, int64_t a2, char a3)
{
  result = sub_18B4F4A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B4F4918(char *a1, int64_t a2, char a3)
{
  result = sub_18B4F4B5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18B4F4938(void *a1, int64_t a2, char a3)
{
  result = sub_18B4F4C7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B4F4958(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B4F4A68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_18B4F4B5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18B4F4C7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4318);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18B4F4DC4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5038);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_18B4F4F14(uint64_t a1, uint64_t a2)
{
  sub_18B6C5DCC();
  sub_18B6C566C();
  v4 = sub_18B6C5DEC();

  return sub_18B4F50A8(a1, a2, v4);
}

unint64_t sub_18B4F4F8C(uint64_t a1)
{
  v2 = sub_18B6C5DBC();

  return sub_18B4F5160(a1, v2);
}

unint64_t sub_18B4F4FD0(uint64_t a1)
{
  sub_18B6C562C();
  sub_18B6C5DCC();
  sub_18B6C566C();
  v2 = sub_18B6C5DEC();

  return sub_18B4F51CC(a1, v2);
}

unint64_t sub_18B4F5064(uint64_t a1)
{
  v2 = sub_18B6C5AEC();

  return sub_18B4F52D0(a1, v2);
}

unint64_t sub_18B4F50A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_18B6C5CEC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_18B4F5160(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18B4F51CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_18B6C562C();
      v8 = v7;
      if (v6 == sub_18B6C562C() && v8 == v9)
      {
        break;
      }

      v11 = sub_18B6C5CEC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18B4F52D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_18B4F9058(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x18CFF76E0](v9, a1);
      sub_18B4F90B4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_18B4F5398@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_18B4F4F14(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18B4F6370();
      v10 = v12;
    }

    sub_18B4A31D4((*(v10 + 56) + 40 * v8), a3);
    sub_18B4F5D2C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_18B4F5444@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_18B4F4F14(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18B4F6668();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 72 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_18B4F5EE8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18B4F5504(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FE8);
  v33 = a2;
  result = sub_18B6C5C8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_18B4A31D4(v24, v34);
      }

      else
      {
        sub_18B4D1D10(v24, v34);
        sub_18B6C450C();
      }

      sub_18B6C5DCC();
      sub_18B6C566C();
      result = sub_18B6C5DEC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_18B4A31D4(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_18B4F57C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5098);
  result = sub_18B6C5C8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      result = sub_18B6C5DBC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_18B4F5A2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5040);
  v40 = a2;
  result = sub_18B6C5C8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
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
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 72 * v24;
      if (v40)
      {
        v41 = *v28;
        v29 = *(v28 + 16);
        v30 = *(v28 + 32);
        v31 = *(v28 + 48);
        v45 = *(v28 + 64);
        v43 = v30;
        v44 = v31;
        v42 = v29;
      }

      else
      {
        sub_18B4A63EC(v28, &v41, &qword_1EA9C5038);
        sub_18B6C450C();
      }

      sub_18B6C5DCC();
      sub_18B6C566C();
      result = sub_18B6C5DEC();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v44;
      *(v17 + 64) = v45;
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_18B4F5D2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18B6C5ADC() + 1) & ~v5;
    do
    {
      sub_18B6C5DCC();
      sub_18B6C450C();
      sub_18B6C566C();
      v11 = sub_18B6C5DEC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_18B4F5EE8(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18B6C5ADC() + 1) & ~v5;
    do
    {
      sub_18B6C5DCC();
      sub_18B6C450C();
      sub_18B6C566C();
      v9 = sub_18B6C5DEC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 72 * v3);
        v15 = (v14 + 72 * v6);
        if (v3 != v6 || result >= v15 + 72)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_18B4F609C(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_18B4F4F8C(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_18B4F6518();
    result = v19;
    goto LABEL_8;
  }

  sub_18B4F57C8(v16, a2 & 1);
  result = sub_18B4F4F8C(a1);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a3;
      v22[1] = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a1;
    v23 = (v21[7] + 16 * result);
    *v23 = a3;
    v23[1] = a4;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_18B6C5D2C();
  __break(1u);
  return result;
}

uint64_t sub_18B4F61D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B4F4F14(a2, a3);
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
      sub_18B4F5A2C(v16, a4 & 1);
      v11 = sub_18B4F4F14(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_18B6C5D2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_18B4F6668();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    return sub_18B4F9374(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 72 * v11;
  *v25 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 64);
  *(v25 + 32) = v27;
  *(v25 + 48) = v28;
  *(v25 + 16) = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;

  return sub_18B6C450C();
}

void *sub_18B4F6370()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FE8);
  v2 = *v0;
  v3 = sub_18B6C5C7C();
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
        v22 = 40 * v17;
        sub_18B4D1D10(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_18B4A31D4(v25, *(v4 + 56) + v22);
        result = sub_18B6C450C();
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

void *sub_18B4F6518()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5098);
  v2 = *v0;
  v3 = sub_18B6C5C7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18B4F6668()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5040);
  v2 = *v0;
  v3 = sub_18B6C5C7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 72 * v17;
        sub_18B4A63EC(*(v2 + 56) + 72 * v17, v29, &qword_1EA9C5038);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = *(v4 + 56) + v22;
        *v24 = v29[0];
        v25 = v29[1];
        v26 = v29[2];
        v27 = v29[3];
        *(v24 + 64) = v30;
        *(v24 + 32) = v26;
        *(v24 + 48) = v27;
        *(v24 + 16) = v25;
        result = sub_18B6C450C();
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

        v1 = v28;
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

uint64_t sub_18B4F683C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 64) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 72) = v5;
  *v5 = v4;
  v5[1] = sub_18B4F6930;

  return v7(v4 + 16);
}

uint64_t sub_18B4F6930()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4F6A2C, 0, 0);
}

uint64_t sub_18B4F6A2C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_18B4F6A54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_18B4F6B48;

  return v7(v4 + 16);
}

uint64_t sub_18B4F6B48()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4AA9D4, 0, 0);
}

uint64_t sub_18B4F6C44(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 64) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 72) = v5;
  *v5 = v4;
  v5[1] = sub_18B4F6D38;

  return v7(v4 + 16);
}

uint64_t sub_18B4F6D38()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4F6E34, 0, 0);
}

uint64_t sub_18B4F6E34()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_18B4F6E5C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_18B4F6F50;

  return v7(v4 + 32);
}

uint64_t sub_18B4F6F50()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4F704C, 0, 0);
}

uint64_t sub_18B4F706C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_18B4F7160;

  return v7(v4 + 32);
}

uint64_t sub_18B4F7160()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4F725C, 0, 0);
}

uint64_t sub_18B4F727C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  v31 = v10;
  v32 = &off_1EFECFAC8;
  *&v30 = a1;
  v11 = *a5;
  v13 = sub_18B4F4F14(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = v19[7] + 40 * v13;
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_18B4A31D4(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_18B4F6370();
    goto LABEL_7;
  }

  sub_18B4F5504(v16, a4 & 1);
  v22 = sub_18B4F4F14(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_18B6C5D2C();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v10);
  v25 = MEMORY[0x1EEE9AC00](v24, v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  sub_18B4F76B4(v13, a2, a3, *v27, v19);
  sub_18B6C450C();
  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

uint64_t sub_18B4F7480(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = sub_18B4F4F14(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = v23[7] + 40 * v17;
      __swift_destroy_boxed_opaque_existential_1(v24);
      return sub_18B4A31D4(&v34, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_18B4F6370();
    goto LABEL_7;
  }

  sub_18B4F5504(v20, a4 & 1);
  v26 = sub_18B4F4F14(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_18B6C5D2C();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  v29 = MEMORY[0x1EEE9AC00](v28, v28);
  v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v29);
  sub_18B4F7770(v17, a2, a3, v31, v23, a6, a7);
  sub_18B6C450C();
  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t sub_18B4F76B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  v17 = &off_1EFECFAC8;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_18B4A31D4(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_18B4F7770(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_18B4A31D4(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

unint64_t sub_18B4F7848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5098);
    v3 = sub_18B6C5C9C();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_18B4F4F8C(v5);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18B4F7930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FE8);
    v3 = sub_18B6C5C9C();
    v4 = a1 + 32;

    while (1)
    {
      sub_18B4A63EC(v4, &v13, &qword_1EA9C5070);
      v5 = v13;
      v6 = v14;
      result = sub_18B4F4F14(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_18B4A31D4(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_18B4F7A64(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18B4F7A88, 0, 0);
}

uint64_t sub_18B4F7A88()
{
  v1 = *(v0[6] + 128);
  v0[7] = v1;
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_18B4AC60C(0, &qword_1EA9C39E0);
  v0[9] = v4;
  *v3 = v0;
  v3[1] = sub_18B4F7B5C;

  return MEMORY[0x1EEE6DA40](v0 + 2, v2, v4);
}

uint64_t sub_18B4F7B5C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4F7C58, 0, 0);
}

uint64_t sub_18B4F7C58()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[2];
  v0[10] = v3;
  v4 = sub_18B4AE074(v3, v2, v1);
  if (v4)
  {
    v5 = v4;

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = *(v0[6] + 136);
    v0[11] = v8;
    v9 = *(v8 + 16);

    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_18B4F7D80;
    v11 = v0[9];

    return MEMORY[0x1EEE6DA40](v0 + 3, v9, v11);
  }
}

uint64_t sub_18B4F7D80()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4F7E7C, 0, 0);
}

uint64_t sub_18B4F7E7C()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];

  v4 = v0[3];
  v5 = sub_18B4AE074(v4, v2, v3);

  v6 = v0[1];

  return v6(v5);
}

unint64_t sub_18B4F7F0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FB8);
    v3 = sub_18B6C5C9C();
    v4 = a1 + 32;

    while (1)
    {
      sub_18B4A63EC(v4, &v11, &qword_1EA9C4FA0);
      v5 = v11;
      result = sub_18B4F4FD0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_18B4AF200(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_18B4F8078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4F683C(a1, v4, v5, v6);
}

uint64_t sub_18B4F8144(uint64_t a1)
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
  v10[1] = sub_18B4CCBCC;

  return sub_18B4F2AA8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_18B4F8218(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18B4F82BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CC5A0;

  return sub_18B4E0090(a1, v1);
}

uint64_t sub_18B4F8358(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4D6F70(a1, v4, v5, v6);
}

uint64_t sub_18B4F840C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4DC298(a1, v1);
}

uint64_t sub_18B4F84A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4D8638(a1, v1);
}

uint64_t sub_18B4F8544(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4EDB88(a1, v1);
}

uint64_t sub_18B4F85E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B4CCBCC;

  return sub_18B4E573C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_85Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B4F86E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B4CCBCC;

  return sub_18B4E6E38(a1, v4, v5, v7, v6);
}

uint64_t sub_18B4F87A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4E85C0(a1, v4, v5, v6);
}

uint64_t sub_18B4F885C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4EAE14(a1, v4, v5, v6);
}

uint64_t sub_18B4F8910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4EB9D0(a1, v4, v5, v6);
}

uint64_t sub_18B4F89C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4E9AE4(a1, v4, v5, v6);
}

unint64_t sub_18B4F8A78()
{
  result = qword_1EA9C3A00;
  if (!qword_1EA9C3A00)
  {
    sub_18B6C59AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3A00);
  }

  return result;
}

uint64_t sub_18B4F8AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4F29B0(a1, v4, v5, v6);
}

uint64_t sub_18B4F8B90(uint64_t a1)
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
  v10[1] = sub_18B4CCBCC;

  return sub_18B4F3A84(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_18B4F8C64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CC5A0;

  return sub_18B4F3F5C(a1, v4);
}

uint64_t sub_18B4F8D1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B4CCBCC;

  return sub_18B4EC4FC(a1, v4, v5);
}

uint64_t sub_18B4F8DCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4E2290(a1, v1);
}

uint64_t sub_18B4F8E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4F6C44(a1, v4, v5, v6);
}

uint64_t sub_18B4F8F34(uint64_t a1)
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
  v10[1] = sub_18B4CCBCC;

  return sub_18B4F31BC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_18B4F9008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_18B4F9130(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_18B6C5C9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_18B6C450C();
      v9 = v8;
      result = sub_18B4F4F14(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18B4F922C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5040);
    v3 = sub_18B6C5C9C();
    v4 = a1 + 32;

    while (1)
    {
      sub_18B4A63EC(v4, &v17, &qword_1EA9C5048);
      v5 = v17;
      v6 = v18;
      result = sub_18B4F4F14(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 72 * result;
      *v10 = v19;
      v11 = v20;
      v12 = v21;
      v13 = v22;
      *(v10 + 64) = v23;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *(v10 + 16) = v11;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 88;
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

uint64_t sub_18B4F9374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5038);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B4F93E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4F6E5C(a1, v4, v5, v6);
}

uint64_t sub_18B4F94B0(uint64_t a1)
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
  v10[1] = sub_18B4CCBCC;

  return sub_18B4F34E4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_18B4F9584(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4F706C(a1, v4, v5, v6);
}

uint64_t sub_18B4F9650(uint64_t a1)
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
  v10[1] = sub_18B4CCBCC;

  return sub_18B4F3758(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_18B4F9724(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4E1F1C(a1, v1);
}

uint64_t sub_18B4F97C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4E1828(a1, v1);
}

uint64_t sub_18B4F985C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4F6A54(a1, v4, v5, v6);
}

uint64_t objectdestroy_42Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_18B4F9978(uint64_t a1)
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
  v10[1] = sub_18B4CCBCC;

  return sub_18B4F2E48(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_18B4F9A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4E5504(a1, v4, v5, v6);
}

uint64_t sub_18B4F9B00()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_18B4CCBCC;

  return sub_18B4E2A38(v0);
}

uint64_t sub_18B4F9B90()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_18B4CCBCC;

  return sub_18B4E35CC(v0);
}

uint64_t sub_18B4F9C20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B4DFC50(a1, v4);
}

uint64_t sub_18B4F9CD8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B4CCBCC;

  return sub_18B4E3E38(v2);
}

uint64_t sub_18B4F9D6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4DE330(v2, v3);
}

uint64_t objectdestroy_414Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B4F9E44()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4DF270(v2, v3);
}

uint64_t sub_18B4F9EDC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B4CCBCC;

  return sub_18B4DFD38(v2);
}

uint64_t type metadata accessor for MediaInfo()
{
  result = qword_1EA9C3B70;
  if (!qword_1EA9C3B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B4FA004()
{
  sub_18B4FA358(319, &qword_1EA9C3AC0);
  if (v0 <= 0x3F)
  {
    sub_18B4FA238();
    if (v1 <= 0x3F)
    {
      sub_18B4FA358(319, &unk_1EA9C3DB8);
      if (v2 <= 0x3F)
      {
        sub_18B4FA358(319, &qword_1EA9C3B88);
        if (v3 <= 0x3F)
        {
          sub_18B4FA29C();
          if (v4 <= 0x3F)
          {
            sub_18B4FA358(319, &qword_1EA9C3B80);
            if (v5 <= 0x3F)
            {
              sub_18B4FA358(319, &qword_1EA9C3B90);
              if (v6 <= 0x3F)
              {
                sub_18B4FA304(319, &qword_1EA9C39B0, type metadata accessor for CMTime);
                if (v7 <= 0x3F)
                {
                  sub_18B4FA304(319, &qword_1EA9C3DA8, MEMORY[0x1E6969530]);
                  if (v8 <= 0x3F)
                  {
                    sub_18B4FA358(319, &qword_1EA9C3A78);
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_18B4FA238()
{
  if (!qword_1EA9C3DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4540);
    v0 = sub_18B6C5A7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9C3DB0);
    }
  }
}

void sub_18B4FA29C()
{
  if (!qword_1EA9C3A28)
  {
    sub_18B4AC60C(255, &qword_1EA9C3A30);
    v0 = sub_18B6C5A7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9C3A28);
    }
  }
}

void sub_18B4FA304(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18B6C5A7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18B4FA358(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_18B6C5A7C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaInfo.AudioFormat(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaInfo.AudioFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaInfo.TomatoRating(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaInfo.TomatoRating(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_18B4FA5D4()
{
  result = qword_1EA9C50A0;
  if (!qword_1EA9C50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C50A0);
  }

  return result;
}

void sub_18B4FA628(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v4 = objc_opt_self();
  for (i = (a1 + 32); ; ++i)
  {
    v6 = *i;
    v7 = [v1 externalMetadata];
    if (!v7)
    {
      sub_18B4AC60C(0, &qword_1EA9C3A58);
      sub_18B6C576C();
      v7 = sub_18B6C575C();
    }

    v8 = [v4 metadataItemsFromArray:v7 filteredByIdentifier:v6];

    sub_18B4AC60C(0, &qword_1EA9C3A58);
    v9 = sub_18B6C576C();

    if (v9 >> 62)
    {
      break;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_7:

    if (!--v2)
    {
      return;
    }
  }

  if (!sub_18B6C5C6C())
  {
    goto LABEL_7;
  }

LABEL_10:
  if ((v9 & 0xC000000000000001) != 0)
  {
    MEMORY[0x18CFF7750](0, v9);
LABEL_13:
  }

  else
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 32);
      goto LABEL_13;
    }

    __break(1u);
  }
}

uint64_t sub_18B4FA7DC()
{
  v1[4] = v0;
  v1[5] = sub_18B6C580C();
  v1[6] = sub_18B6C57FC();
  v3 = sub_18B6C57CC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B4FA878, v3, v2);
}

uint64_t sub_18B4FA878()
{
  *(v0 + 72) = [*(v0 + 32) asset];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50D0);
  v1 = sub_18B6C42CC();
  *(v0 + 80) = v1;
  v2 = sub_18B6C57FC();
  *(v0 + 88) = v2;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_18B4FA980;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE68140](v0 + 16, v1, v2, v4);
}

uint64_t sub_18B4FA980()
{
  v2 = *v1;
  v2[13] = v0;

  v3 = v2[9];
  if (v0)
  {

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_18B4FABE4;
  }

  else
  {

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_18B4FAB10;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_18B4FAB10()
{

  v1 = v0[2];
  v0[3] = *MEMORY[0x1E6987578];
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 3;
  v3 = sub_18B5138C8(sub_18B50544C, v2, v1);

  v4 = v0[1];

  return v4(v3 & 1);
}

uint64_t sub_18B4FABE4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_18B4FAC48()
{
  v1[4] = v0;
  v1[5] = sub_18B6C580C();
  v1[6] = sub_18B6C57FC();
  v3 = sub_18B6C57CC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B4FACE4, v3, v2);
}

uint64_t sub_18B4FACE4()
{
  *(v0 + 72) = [*(v0 + 32) asset];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50D0);
  v1 = sub_18B6C42CC();
  *(v0 + 80) = v1;
  v2 = sub_18B6C57FC();
  *(v0 + 88) = v2;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_18B4FADEC;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE68140](v0 + 16, v1, v2, v4);
}

uint64_t sub_18B4FADEC()
{
  v2 = *v1;
  v2[13] = v0;

  v3 = v2[9];
  if (v0)
  {

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_18B505448;
  }

  else
  {

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_18B4FAF7C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_18B4FAF7C()
{

  v1 = v0[2];
  v0[3] = *MEMORY[0x1E69874F8];
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 3;
  v3 = sub_18B5138C8(sub_18B50507C, v2, v1);

  v4 = v0[1];

  return v4(v3 & 1);
}

uint64_t sub_18B4FB050()
{
  result = sub_18B6C55FC();
  qword_1EA9CE350 = result;
  return result;
}

uint64_t sub_18B4FB088()
{
  result = sub_18B6C55FC();
  qword_1EA9CE3E0 = result;
  return result;
}

uint64_t sub_18B4FB0C0()
{
  result = sub_18B6C55FC();
  qword_1EA9CE348 = result;
  return result;
}

uint64_t sub_18B4FB0F8()
{
  result = sub_18B6C55FC();
  qword_1EA9CE358 = result;
  return result;
}

unint64_t sub_18B4FB180()
{
  result = qword_1EA9C50A8;
  if (!qword_1EA9C50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C50A8);
  }

  return result;
}

unint64_t sub_18B4FB1D8()
{
  result = qword_1EA9C50B0;
  if (!qword_1EA9C50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C50B0);
  }

  return result;
}

unint64_t sub_18B4FB230()
{
  result = qword_1EA9C50B8;
  if (!qword_1EA9C50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C50B8);
  }

  return result;
}

unint64_t sub_18B4FB284@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18B4FFF44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18B4FB2BC(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46A8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4FB364, 0, 0);
}

uint64_t sub_18B4FB364()
{
  v1 = v0[21];
  v2 = sub_18B6C41BC();
  v0[25] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[26] = v4;
  v0[27] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = objc_opt_self();
  v6 = [v5 identifierForKey:*MEMORY[0x1E6987688] keySpace:*MEMORY[0x1E6987838]];
  v0[28] = v6;
  if (v6)
  {
    v7 = v6;
    v8 = [v5 identifierForKey:*MEMORY[0x1E6987898] keySpace:*MEMORY[0x1E6987850]];
    v0[29] = v8;
    if (v8)
    {
      v9 = v8;
      v10 = [v5 identifierForKey:*MEMORY[0x1E6987930] keySpace:*MEMORY[0x1E6987860]];
      v0[30] = v10;
      if (v10)
      {
        v11 = v10;
        v12 = [v5 identifierForKey:*MEMORY[0x1E6987730] keySpace:*MEMORY[0x1E6987840]];
        v0[31] = v12;
        if (v12)
        {
          v13 = v12;
          v14 = [v5 identifierForKey:*MEMORY[0x1E6987618] keySpace:*MEMORY[0x1E6987848]];
          v0[32] = v14;
          if (v14)
          {
            v15 = v14;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
            inited = swift_initStackObject();
            v0[33] = inited;
            *(inited + 16) = xmmword_18B6E8E00;
            *(inited + 32) = v7;
            *(inited + 40) = v9;
            *(inited + 48) = v11;
            *(inited + 56) = v13;
            *(inited + 64) = v15;
            v0[34] = sub_18B6C580C();
            v17 = v7;
            v18 = v9;
            v19 = v11;
            v20 = v13;
            v21 = v15;
            v0[35] = sub_18B6C57FC();
            v22 = sub_18B6C57CC();
            v24 = v23;
            v25 = sub_18B4FB6A4;
            goto LABEL_14;
          }
        }
      }
    }
  }

  v0[50] = 0;
  v0[51] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  v26 = swift_initStackObject();
  v0[52] = v26;
  *(v26 + 16) = xmmword_18B6E8750;
  if (qword_1EA9C3A20 != -1)
  {
    v30 = v26;
    swift_once();
    v26 = v30;
  }

  v27 = qword_1EA9CE358;
  *(v26 + 32) = qword_1EA9CE358;
  sub_18B6C580C();
  v28 = v27;
  v0[53] = sub_18B6C57FC();
  v22 = sub_18B6C57CC();
  v24 = v29;
  v25 = sub_18B4FC498;
LABEL_14:

  return MEMORY[0x1EEE6DFA0](v25, v22, v24);
}

uint64_t sub_18B4FB6A4()
{
  v1 = *(v0 + 264);

  sub_18B4FA628(v1);
  *(v0 + 288) = v2;
  swift_setDeallocating();
  type metadata accessor for AVMetadataIdentifier(0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6DFA0](sub_18B4FB740, 0, 0);
}

uint64_t sub_18B4FB740()
{
  if (v0[36])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5118);
    v1 = sub_18B6C42BC();
    v0[37] = v1;
    v2 = swift_task_alloc();
    v0[38] = v2;
    *v2 = v0;
    v2[1] = sub_18B4FB87C;
    v3 = v0[24];

    return MEMORY[0x1EEE68140](v3, v1, 0, 0);
  }

  else
  {
    v0[41] = 0;
    v0[42] = 0;
    v0[43] = sub_18B6C57FC();
    v5 = sub_18B6C57CC();

    return MEMORY[0x1EEE6DFA0](sub_18B4FBCB8, v5, v4);
  }
}

uint64_t sub_18B4FB87C()
{

  if (v0)
  {

    v1 = sub_18B4FC810;
  }

  else
  {

    v1 = sub_18B4FB9C4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18B4FB9C4()
{
  sub_18B4A6454(v0[21], &qword_1EA9C46A8);
  sub_18B4B1DB4(v0[24], v0[21], &qword_1EA9C46A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F8);
  v1 = sub_18B6C429C();
  v0[39] = v1;
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_18B4FBAD0;

  return MEMORY[0x1EEE68140](v0 + 18, v1, 0, 0);
}

uint64_t sub_18B4FBAD0()
{

  if (v0)
  {

    v1 = sub_18B4FC940;
  }

  else
  {

    v1 = sub_18B4FBC18;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18B4FBC18()
{
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4FBCB8, v2, v1);
}

uint64_t sub_18B4FBCB8()
{
  v1 = *(v0 + 176);

  *(v0 + 352) = [v1 asset];

  return MEMORY[0x1EEE6DFA0](sub_18B4FBD40, 0, 0);
}

uint64_t sub_18B4FBD40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5110);
  v1 = sub_18B6C42DC();
  *(v0 + 360) = v1;
  v2 = swift_task_alloc();
  *(v0 + 368) = v2;
  *v2 = v0;
  v2[1] = sub_18B4FBE0C;

  return MEMORY[0x1EEE68140](v0 + 160, v1, 0, 0);
}

uint64_t sub_18B4FBE0C()
{
  v2 = *v1;

  v3 = *(v2 + 352);
  if (v0)
  {

    v4 = sub_18B4FC9D8;
  }

  else
  {

    v4 = sub_18B4FBF70;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_18B4FBF70()
{
  v1 = *(v0 + 160);
  *(v0 + 376) = v1;
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5118);
    v2 = sub_18B6C42BC();
    *(v0 + 384) = v2;
    v3 = swift_task_alloc();
    *(v0 + 392) = v3;
    *v3 = v0;
    v3[1] = sub_18B4FC1DC;
    v4 = *(v0 + 184);

    return MEMORY[0x1EEE68140](v4, v2, 0, 0);
  }

  else
  {
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v9 = *(v0 + 224);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    v12 = *(v0 + 184);
    sub_18B4A6454(*(v0 + 168), &qword_1EA9C46A8);

    v11(v12, 1, 1, v10);
    sub_18B4B1DB4(*(v0 + 184), *(v0 + 168), &qword_1EA9C46A8);
    *(v0 + 400) = *(v0 + 328);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
    inited = swift_initStackObject();
    *(v0 + 416) = inited;
    *(inited + 16) = xmmword_18B6E8750;
    if (qword_1EA9C3A20 != -1)
    {
      v18 = inited;
      swift_once();
      inited = v18;
    }

    v14 = qword_1EA9CE358;
    *(inited + 32) = qword_1EA9CE358;
    sub_18B6C580C();
    v15 = v14;
    *(v0 + 424) = sub_18B6C57FC();
    v17 = sub_18B6C57CC();

    return MEMORY[0x1EEE6DFA0](sub_18B4FC498, v17, v16);
  }
}

uint64_t sub_18B4FC1DC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 376);

    v4 = sub_18B50543C;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_18B4FC318;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_18B4FC318()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 168);

  sub_18B4A6454(v5, &qword_1EA9C46A8);
  sub_18B4B1DB4(*(v0 + 184), *(v0 + 168), &qword_1EA9C46A8);
  *(v0 + 400) = *(v0 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  inited = swift_initStackObject();
  *(v0 + 416) = inited;
  *(inited + 16) = xmmword_18B6E8750;
  if (qword_1EA9C3A20 != -1)
  {
    v11 = inited;
    swift_once();
    inited = v11;
  }

  v7 = qword_1EA9CE358;
  *(inited + 32) = qword_1EA9CE358;
  sub_18B6C580C();
  v8 = v7;
  *(v0 + 424) = sub_18B6C57FC();
  v10 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4FC498, v10, v9);
}

uint64_t sub_18B4FC498()
{
  v1 = *(v0 + 416);

  sub_18B4FA628(v1);
  *(v0 + 432) = v2;
  swift_setDeallocating();
  sub_18B505228(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_18B4FC520, 0, 0);
}

uint64_t sub_18B4FC520()
{
  if (v0[54])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F8);
    v1 = sub_18B6C429C();
    v0[55] = v1;
    v2 = swift_task_alloc();
    v0[56] = v2;
    *v2 = v0;
    v2[1] = sub_18B4FC640;

    return MEMORY[0x1EEE68140](v0 + 16, v1, 0, 0);
  }

  else
  {

    v3 = v0[1];
    v4 = v0[50];
    v5 = v0[51];

    return v3(v4, v5, 0, 0);
  }
}

uint64_t sub_18B4FC640()
{

  if (v0)
  {

    v1 = sub_18B4FCB84;
  }

  else
  {

    v1 = sub_18B4FC788;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18B4FC788()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  v3 = *(v0 + 8);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);

  return v3(v4, v5, v2, v1);
}

uint64_t sub_18B4FC810()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[25];
  sub_18B4A6454(v0[21], &qword_1EA9C46A8);
  v1(v2, 1, 1, v3);
  sub_18B4B1DB4(v0[24], v0[21], &qword_1EA9C46A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F8);
  v4 = sub_18B6C429C();
  v0[39] = v4;
  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_18B4FBAD0;

  return MEMORY[0x1EEE68140](v0 + 18, v4, 0, 0);
}

uint64_t sub_18B4FC940()
{
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 344) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4FBCB8, v2, v1);
}

uint64_t sub_18B4FC9D8()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);

  sub_18B4A6454(v8, &qword_1EA9C46A8);
  v6(v7, 1, 1, v5);
  sub_18B4B1DB4(*(v0 + 184), *(v0 + 168), &qword_1EA9C46A8);
  *(v0 + 400) = *(v0 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  inited = swift_initStackObject();
  *(v0 + 416) = inited;
  *(inited + 16) = xmmword_18B6E8750;
  if (qword_1EA9C3A20 != -1)
  {
    v14 = inited;
    swift_once();
    inited = v14;
  }

  v10 = qword_1EA9CE358;
  *(inited + 32) = qword_1EA9CE358;
  sub_18B6C580C();
  v11 = v10;
  *(v0 + 424) = sub_18B6C57FC();
  v13 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4FC498, v13, v12);
}

uint64_t sub_18B4FCB84()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);

  return v1(v2, v3, 0, 0);
}

uint64_t sub_18B4FCC00(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4540);
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[33] = v5;
  *v5 = v2;
  v5[1] = sub_18B4FCD14;

  return sub_18B4FFF54(a2);
}

uint64_t sub_18B4FCD14(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[30];
  v6 = *v2;

  *(v4 + 126) = *(v5 + 48);
  *(v4 + 127) = *(v5 + 64);
  v7 = swift_task_alloc();
  v4[34] = v7;
  *v7 = v6;
  v7[1] = sub_18B4FCE98;
  v8 = v3[32];
  v9 = v3[29];

  return sub_18B4FB2BC(v8, v9);
}

uint64_t sub_18B4FCE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *v4;
  v11 = *(*v4 + 256);
  v12 = (v11 + *(*v4 + 508));
  v13 = (v11 + *(*v4 + 504));
  v17 = *v4;

  *v13 = a1;
  v13[1] = a2;
  *v12 = a3;
  v12[1] = a4;
  v14 = swift_task_alloc();
  *(v10 + 280) = v14;
  *v14 = v17;
  v14[1] = sub_18B4FD048;
  v15 = *(v9 + 232);

  return sub_18B500324(v15);
}

uint64_t sub_18B4FD048(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *v2;

  v6 = swift_task_alloc();
  v4[36] = v6;
  *v6 = v5;
  v6[1] = sub_18B4FD1A8;
  v7 = v3[29];

  return sub_18B5007C0(v7);
}

uint64_t sub_18B4FD1A8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *v2;

  v6 = swift_task_alloc();
  v4[37] = v6;
  *v6 = v5;
  v6[1] = sub_18B4FD308;
  v7 = v3[29];

  return sub_18B500C58(v7);
}

uint64_t sub_18B4FD308(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *v2;

  v6 = swift_task_alloc();
  v4[38] = v6;
  *v6 = v5;
  v6[1] = sub_18B4FD468;
  v7 = v3[29];

  return sub_18B500D4C(v7);
}

uint64_t sub_18B4FD468(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[14] = v2;
  v4[15] = a1;
  v4[16] = a2;
  v5 = *v2;

  v6 = swift_task_alloc();
  v4[39] = v6;
  *v6 = v5;
  v6[1] = sub_18B4FD5C8;
  v7 = v3[29];

  return sub_18B5011A4(v7);
}

uint64_t sub_18B4FD5C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[17] = v2;
  v3[18] = a1;
  v3[19] = a2;

  return MEMORY[0x1EEE6DFA0](sub_18B4FD6CC, 0, 0);
}

uint64_t sub_18B4FD6CC()
{
  if ([*(v0 + 232) hasEnabledAudio] && !objc_msgSend(*(v0 + 232), sel_hasEnabledVideo))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  *(v0 + 520) = v1;
  v2 = swift_task_alloc();
  *(v0 + 320) = v2;
  *v2 = v0;
  v2[1] = sub_18B4FD7AC;
  v3 = *(v0 + 232);

  return sub_18B5016C8(v3);
}

uint64_t sub_18B4FD7AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[20] = v1;
  v3[21] = a1;
  v4 = *v1;

  v5 = swift_task_alloc();
  v3[41] = v5;
  *v5 = v4;
  v5[1] = sub_18B4FD908;
  v6 = v2[29];

  return sub_18B5020F0(v6);
}

uint64_t sub_18B4FD908(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[22] = v1;
  v3[23] = a1;
  v4 = *v1;

  v5 = swift_task_alloc();
  v3[42] = v5;
  *v5 = v4;
  v5[1] = sub_18B4FDA64;
  v6 = v2[29];

  return sub_18B50268C(v6);
}

uint64_t sub_18B4FDA64(char a1)
{
  v2 = *v1;
  *(v2 + 200) = a1;
  *(v2 + 192) = v1;

  return MEMORY[0x1EEE6DFA0](sub_18B4FDB68, 0, 0);
}

uint64_t sub_18B4FDB68()
{
  sub_18B503B44(*(v0 + 232));
  *(v0 + 521) = v1;
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_18B4FDC1C;
  v3 = *(v0 + 232);

  return sub_18B503CC0(v3);
}

uint64_t sub_18B4FDC1C(char a1)
{
  v2 = *v1;
  *(v2 + 216) = a1;
  *(v2 + 208) = v1;

  return MEMORY[0x1EEE6DFA0](sub_18B4FDD20, 0, 0);
}

uint64_t sub_18B4FDD20()
{
  v12 = *(v0 + 216);
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v17 = *(v0 + 120);
  v18 = *(v0 + 144);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v15 = *(v0 + 72);
  v16 = *(v0 + 96);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v13 = *(v0 + 24);
  v14 = *(v0 + 48);
  [*(v0 + 232) duration];
  *(v0 + 512) = v20;
  *(v0 + 516) = v21;
  *(v0 + 352) = v19;
  *(v0 + 360) = v22;
  *(v0 + 522) = sub_18B6C59FC() & 1;
  *(v0 + 523) = v12;
  *(v0 + 524) = v1;
  *(v0 + 368) = v2;
  *(v0 + 376) = v3;
  *(v0 + 384) = v4;
  *(v0 + 392) = v18;
  *(v0 + 400) = v5;
  *(v0 + 408) = v17;
  *(v0 + 416) = v6;
  *(v0 + 424) = v16;
  *(v0 + 432) = v7;
  *(v0 + 440) = v15;
  *(v0 + 448) = v8;
  *(v0 + 456) = v14;
  *(v0 + 464) = v9;
  *(v0 + 472) = v13;
  *(v0 + 480) = sub_18B6C580C();
  sub_18B6C57FC();

  v10 = swift_task_alloc();
  *(v0 + 488) = v10;
  *v10 = v0;
  v10[1] = sub_18B4FDE90;

  return sub_18B4FA7DC();
}

uint64_t sub_18B4FDE90(char a1)
{
  *(*v1 + 525) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4FDF90, 0, 0);
}

uint64_t sub_18B4FDF90()
{
  sub_18B6C57FC();

  v1 = swift_task_alloc();
  *(v0 + 496) = v1;
  *v1 = v0;
  v1[1] = sub_18B4FE02C;

  return sub_18B4FAC48();
}

uint64_t sub_18B4FE02C(char a1)
{
  *(*v1 + 526) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4FE12C, 0, 0);
}

uint64_t sub_18B4FE12C()
{
  v49 = *(v0 + 525);
  v50 = *(v0 + 526);
  v31 = *(v0 + 464);
  v32 = *(v0 + 472);
  v36 = *(v0 + 448);
  v37 = *(v0 + 456);
  v1 = *(v0 + 432);
  v30 = *(v0 + 440);
  v34 = *(v0 + 416);
  v35 = *(v0 + 424);
  v38 = *(v0 + 400);
  v39 = *(v0 + 408);
  v40 = *(v0 + 384);
  v41 = *(v0 + 392);
  v2 = *(v0 + 376);
  v46 = *(v0 + 368);
  v47 = *(v0 + 524);
  v48 = *(v0 + 523);
  v3 = *(v0 + 522);
  v4 = *(v0 + 512);
  v5 = *(v0 + 360);
  v43 = *(v0 + 521);
  v33 = *(v0 + 520);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 240);
  if (!v3)
  {
    v5 = 0;
  }

  v45 = v5;
  if (!*(v0 + 522))
  {
    v4 = 0;
  }

  v44 = v4;
  if (*(v0 + 522))
  {
    v9 = *(v0 + 352);
  }

  else
  {
    v9 = 0;
  }

  v42 = v9;
  v10 = *(v0 + 224);
  v11 = type metadata accessor for MediaInfo();
  v12 = v11[7];
  sub_18B4B1DB4(v6, &v10[v12], &qword_1EA9C4540);
  (*(v7 + 56))(&v10[v12], 0, 1, v8);
  v13 = v11[22];
  v14 = sub_18B6C41BC();
  (*(*(v14 - 8) + 56))(&v10[v13], 1, 1, v14);
  *v10 = v32;
  *(v10 + 1) = v31;
  *(v10 + 2) = v30;
  *(v10 + 3) = v1;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  v15 = &v10[v11[8]];
  *v15 = v37;
  *(v15 + 1) = v36;
  v16 = &v10[v11[9]];
  *v16 = v35;
  *(v16 + 1) = v34;
  v17 = &v10[v11[10]];
  *v17 = v39;
  *(v17 + 1) = v38;
  v18 = &v10[v11[11]];
  *v18 = v41;
  *(v18 + 1) = v40;
  v10[v11[12]] = v33;
  v19 = &v10[v11[13]];
  v19[4] = BYTE4(v2);
  *v19 = v2;
  *&v10[v11[14]] = v46;
  v10[v11[15]] = v47;
  v10[v11[16]] = v43;
  v10[v11[17]] = v48;
  v20 = &v10[v11[18]];
  *v20 = 0;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  v20[24] = 1;
  v21 = &v10[v11[19]];
  *v21 = v42;
  *(v21 + 1) = v44;
  *(v21 + 2) = v45;
  v21[24] = v3 ^ 1;
  v10[v11[20]] = v49;
  v10[v11[21]] = v50;
  v10[v11[23]] = 0;
  v22 = &v10[v11[24]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v10[v11[25]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v10[v11[26]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v10[v11[27]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v10[v11[28]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v10[v11[29]];
  *v27 = 0;
  v27[4] = 1;

  v28 = *(v0 + 8);

  return v28();
}

double sub_18B4FE418@<D0>(char *a1@<X8>)
{
  v2 = type metadata accessor for MediaInfo();
  v3 = v2[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4540);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[22];
  v6 = sub_18B6C41BC();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v7 = &a1[v2[8]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[v2[9]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a1[v2[10]];
  *v9 = 0;
  *(v9 + 1) = 0;
  result = 0.0;
  *&a1[v2[11]] = xmmword_18B6E8E10;
  a1[v2[12]] = 0;
  v11 = &a1[v2[13]];
  v11[4] = 4;
  *v11 = 0;
  *&a1[v2[14]] = 0;
  a1[v2[15]] = 0;
  a1[v2[16]] = 0;
  a1[v2[17]] = 0;
  v12 = &a1[v2[18]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  v12[24] = 1;
  v13 = &a1[v2[19]];
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v13[24] = 1;
  a1[v2[20]] = 0;
  a1[v2[21]] = 0;
  a1[v2[23]] = 0;
  v14 = &a1[v2[24]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &a1[v2[25]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &a1[v2[26]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &a1[v2[27]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &a1[v2[28]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &a1[v2[29]];
  *v19 = 0;
  v19[4] = 1;
  return result;
}

uint64_t sub_18B4FE5F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_18B6C401C();
    if (v10)
    {
      v11 = sub_18B6C403C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_18B6C402C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_18B6C401C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_18B6C403C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_18B6C402C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_18B4FE820(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_18B4FEA40(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_18B4BB100(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_18B4FE5F0(v13, a3, a4, &v12);
  v10 = v4;
  sub_18B4BB100(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_18B4FE9B0()
{
  v0 = sub_18B6C562C();
  v2 = v1;
  if (v0 == sub_18B6C562C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_18B6C5CEC();
  }

  return v5 & 1;
}

uint64_t sub_18B4FEA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_18B6C401C();
  v11 = result;
  if (result)
  {
    result = sub_18B6C403C();
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

  sub_18B6C402C();
  sub_18B4FE5F0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_18B4FEAF8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_18B4C2690(a3, a4);
          return sub_18B4FE820(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_18B4FEC60(void *a1, void *a2)
{
  v4 = sub_18B6C41BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50C0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v202 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46A8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v202 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v221 = &v202 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v222 = &v202 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46A0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](&v202 - v41, v42);
  v49 = a2;
  v50 = &v202 - v45;
  v51 = a1[1];
  v52 = v49[1];
  if (v51)
  {
    if (!v52)
    {
      return 0;
    }

    v220 = v43;
    if (*a1 != *v49 || v51 != v52)
    {
      v218 = v24;
      v219 = v44;
      v215 = v9;
      v216 = v16;
      v217 = v20;
      v53 = v8;
      v54 = v12;
      v55 = v5;
      v56 = v4;
      v57 = a1;
      v58 = v49;
      v59 = v46;
      v60 = &v202 - v45;
      v61 = v47;
      v62 = v48;
      v63 = sub_18B6C5CEC();
      v48 = v62;
      v47 = v61;
      v50 = v60;
      v46 = v59;
      v49 = v58;
      a1 = v57;
      v4 = v56;
      v5 = v55;
      v12 = v54;
      v8 = v53;
      v16 = v216;
      v20 = v217;
      v9 = v215;
      v24 = v218;
      v44 = v219;
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v220 = v43;
    if (v52)
    {
      return 0;
    }
  }

  v64 = a1[3];
  v65 = v49[3];
  if (v64)
  {
    if (!v65)
    {
      return 0;
    }

    if (a1[2] != v49[2] || v64 != v65)
    {
      v218 = v24;
      v219 = v44;
      v215 = v9;
      v216 = v16;
      v217 = v20;
      v66 = v8;
      v67 = v12;
      v68 = v5;
      v69 = v4;
      v70 = a1;
      v71 = v49;
      v72 = v46;
      v73 = v50;
      v74 = v47;
      v75 = v48;
      v76 = sub_18B6C5CEC();
      v48 = v75;
      v47 = v74;
      v50 = v73;
      v46 = v72;
      v49 = v71;
      a1 = v70;
      v4 = v69;
      v5 = v68;
      v12 = v67;
      v8 = v66;
      v16 = v216;
      v20 = v217;
      v9 = v215;
      v24 = v218;
      v44 = v219;
      if ((v76 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v65)
  {
    return 0;
  }

  v77 = a1[5];
  v78 = v49[5];
  if (v77)
  {
    if (!v78)
    {
      return 0;
    }

    v219 = v44;
    v212 = v48;
    v209 = v47;
    v210 = v46;
    v79 = a1[4];
    v214 = v49;
    if ((v79 != v49[4] || v77 != v78) && (sub_18B6C5CEC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v219 = v44;
    v212 = v48;
    v209 = v47;
    v210 = v46;
    v214 = v49;
    if (v78)
    {
      return 0;
    }
  }

  v205 = v5;
  v217 = v20;
  v80 = type metadata accessor for MediaInfo();
  v207 = *(v80 + 28);
  sub_18B4A63EC(a1 + v207, v50, &qword_1EA9C46A0);
  v81 = v50;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4540);
  v83 = *(v82 - 8);
  v215 = *(v83 + 48);
  v213 = v83 + 48;
  if ((v215)(v81, 1, v82) == 1)
  {
    sub_18B4A6454(v81, &qword_1EA9C46A0);
    v204 = 0;
    v211 = 0;
  }

  else
  {

    v84 = (v81 + *(v82 + 64));
    v86 = *v84;
    v85 = v84[1];
    v204 = v86;
    v211 = v85;
    sub_18B4A6454(v81, &qword_1EA9C46A8);
  }

  v203 = v80;
  v206 = *(v80 + 28);
  v87 = v220;
  sub_18B4A63EC(v214 + v206, v220, &qword_1EA9C46A0);
  v88 = (v215)(v87, 1, v82);
  v218 = v24;
  v208 = v82;
  if (v88 == 1)
  {
    sub_18B4A6454(v87, &qword_1EA9C46A0);
    if (v211)
    {
      goto LABEL_49;
    }
  }

  else
  {

    v89 = &v87[*(v82 + 64)];
    v90 = *v89;
    v91 = *(v89 + 1);
    sub_18B4A6454(v87, &qword_1EA9C46A8);
    if (v211)
    {
      if (!v91)
      {
        goto LABEL_49;
      }

      if (v204 == v90 && v211 == v91)
      {
      }

      else
      {
        v92 = sub_18B6C5CEC();

        if ((v92 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v91)
    {
      goto LABEL_49;
    }
  }

  v93 = v219;
  sub_18B4A63EC(a1 + v207, v219, &qword_1EA9C46A0);
  v94 = v208;
  v95 = (v215)(v93, 1, v208);
  v216 = v16;
  if (v95 == 1)
  {
    sub_18B4A6454(v93, &qword_1EA9C46A0);
    v220 = 0;
    v96 = 0;
  }

  else
  {
    v97 = v93 + *(v94 + 48);
    v96 = *(v97 + 8);
    v220 = *v97;

    sub_18B4A6454(v93, &qword_1EA9C46A8);
  }

  v98 = v212;
  sub_18B4A63EC(v214 + v206, v212, &qword_1EA9C46A0);
  if ((v215)(v98, 1, v94) == 1)
  {
    sub_18B4A6454(v98, &qword_1EA9C46A0);
    if (!v96)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  v99 = (v98 + *(v94 + 48));
  v101 = *v99;
  v100 = v99[1];

  sub_18B4A6454(v98, &qword_1EA9C46A8);
  if (!v96)
  {
    if (!v100)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  if (!v100)
  {
LABEL_49:

    return 0;
  }

  if (v220 == v101 && v96 == v100)
  {

    goto LABEL_53;
  }

  v103 = sub_18B6C5CEC();

  if ((v103 & 1) == 0)
  {
    return 0;
  }

LABEL_53:
  v104 = v209;
  sub_18B4A63EC(a1 + v207, v209, &qword_1EA9C46A0);
  v105 = v208;
  if ((v215)(v104, 1, v208) == 1)
  {
    sub_18B4A6454(v104, &qword_1EA9C46A0);
    v106 = v205;
    (*(v205 + 56))(v222, 1, 1, v4);
    v107 = v221;
  }

  else
  {

    sub_18B4B1DB4(v104, v222, &qword_1EA9C46A8);
    v107 = v221;
    v106 = v205;
  }

  v108 = v210;
  sub_18B4A63EC(v214 + v206, v210, &qword_1EA9C46A0);
  v109 = (v215)(v108, 1, v105);
  v202 = v8;
  if (v109 == 1)
  {
    sub_18B4A6454(v108, &qword_1EA9C46A0);
    (*(v106 + 56))(v107, 1, 1, v4);
  }

  else
  {

    sub_18B4B1DB4(v108, v107, &qword_1EA9C46A8);
  }

  v110 = v106;
  v215 = v9;
  v111 = *(v9 + 48);
  v112 = v222;
  v113 = v216;
  sub_18B4A63EC(v222, v216, &qword_1EA9C46A8);
  sub_18B4A63EC(v107, v113 + v111, &qword_1EA9C46A8);
  v114 = *(v110 + 48);
  if ((v114)(v113, 1, v4) == 1)
  {
    v220 = v114;
    sub_18B4A6454(v107, &qword_1EA9C46A8);
    sub_18B4A6454(v112, &qword_1EA9C46A8);
    v115 = (v220)(v113 + v111, 1, v4) == 1;
    v116 = v113;
    if (!v115)
    {
      goto LABEL_65;
    }

    sub_18B4A6454(v113, &qword_1EA9C46A8);
    v117 = v203;
  }

  else
  {
    v118 = v218;
    sub_18B4A63EC(v113, v218, &qword_1EA9C46A8);
    if ((v114)(v113 + v111, 1, v4) == 1)
    {
      sub_18B4A6454(v221, &qword_1EA9C46A8);
      sub_18B4A6454(v222, &qword_1EA9C46A8);
      (*(v205 + 8))(v118, v4);
      v116 = v113;
LABEL_65:
      sub_18B4A6454(v116, &qword_1EA9C50C0);
      return 0;
    }

    v220 = v114;
    v119 = v205;
    v120 = v113 + v111;
    v121 = v202;
    (*(v205 + 32))(v202, v120, v4);
    sub_18B4FFEEC();
    LODWORD(v219) = sub_18B6C55EC();
    v122 = *(v119 + 8);
    v122(v121, v4);
    sub_18B4A6454(v221, &qword_1EA9C46A8);
    sub_18B4A6454(v222, &qword_1EA9C46A8);
    v122(v118, v4);
    v117 = v203;
    sub_18B4A6454(v113, &qword_1EA9C46A8);
    if ((v219 & 1) == 0)
    {
      return 0;
    }
  }

  v123 = v117[8];
  v124 = (a1 + v123);
  v125 = *(a1 + v123 + 8);
  v126 = v214;
  v127 = (v214 + v123);
  v128 = v127[1];
  if (v125)
  {
    if (!v128)
    {
      return 0;
    }

    if (*v124 != *v127 || v125 != v128)
    {
      v129 = v214;
      v130 = sub_18B6C5CEC();
      v126 = v129;
      if ((v130 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v128)
  {
    return 0;
  }

  v131 = v117[9];
  v132 = (a1 + v131);
  v133 = *(a1 + v131 + 8);
  v134 = (v126 + v131);
  v135 = v134[1];
  if (v133)
  {
    if (!v135)
    {
      return 0;
    }

    if (*v132 != *v134 || v133 != v135)
    {
      v136 = v126;
      v137 = sub_18B6C5CEC();
      v126 = v136;
      if ((v137 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v135)
  {
    return 0;
  }

  v222 = v12;
  v138 = v117[11];
  v140 = *(a1 + v138);
  v139 = *(a1 + v138 + 8);
  v141 = (v126 + v138);
  v143 = *v141;
  v142 = v141[1];
  if (v139 >> 60 == 15)
  {
    if (v142 >> 60 == 15)
    {
      v144 = v126;
      sub_18B4FFED8(v140, v139);
      sub_18B4FFED8(v143, v142);
      sub_18B4C26E4(v140, v139);
      goto LABEL_87;
    }

LABEL_85:
    sub_18B4FFED8(v140, v139);
    sub_18B4FFED8(v143, v142);
    sub_18B4C26E4(v140, v139);
    sub_18B4C26E4(v143, v142);
    return 0;
  }

  if (v142 >> 60 == 15)
  {
    goto LABEL_85;
  }

  v144 = v126;
  sub_18B4FFED8(v140, v139);
  sub_18B4FFED8(v143, v142);
  v145 = sub_18B4FEAF8(v140, v139, v143, v142);
  sub_18B4C26E4(v143, v142);
  sub_18B4C26E4(v140, v139);
  if ((v145 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  v146 = v117[10];
  v147 = (a1 + v146);
  v148 = *(a1 + v146 + 8);
  v149 = &v144[v146];
  v150 = *(v149 + 1);
  if (v148)
  {
    if (!v150 || (*v147 != *v149 || v148 != v150) && (sub_18B6C5CEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v150)
  {
    return 0;
  }

  if (*(a1 + v117[12]) != v144[v117[12]])
  {
    return 0;
  }

  v151 = v117;
  v152 = v117[15];
  v153 = a1;
  v154 = *(a1 + v152);
  v155 = v144;
  v156 = v144[v152];
  if (v154 == 4)
  {
    if (v156 != 4)
    {
      return 0;
    }
  }

  else if (v154 != v156)
  {
    return 0;
  }

  v157 = v117[16];
  v158 = *(a1 + v157);
  v159 = v144[v157];
  if (v158 == 4)
  {
    if (v159 != 4)
    {
      return 0;
    }
  }

  else if (v158 != v159)
  {
    return 0;
  }

  if (*(a1 + v117[17]) != v144[v117[17]] || *(a1 + v117[20]) != v144[v117[20]] || *(a1 + v117[21]) != v144[v117[21]])
  {
    return 0;
  }

  v160 = v117[22];
  v161 = *(v215 + 48);
  v162 = a1 + v160;
  v163 = v222;
  sub_18B4A63EC(v162, v222, &qword_1EA9C46A8);
  v164 = &v144[v160];
  v165 = v161;
  sub_18B4A63EC(v164, v163 + v161, &qword_1EA9C46A8);
  if ((v220)(v163, 1, v4) == 1)
  {
    if ((v220)(&v222[v161], 1, v4) == 1)
    {
      sub_18B4A6454(v222, &qword_1EA9C46A8);
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  v166 = v222;
  sub_18B4A63EC(v222, v217, &qword_1EA9C46A8);
  if ((v220)(v166 + v161, 1, v4) == 1)
  {
    (*(v205 + 8))(v217, v4);
LABEL_111:
    v116 = v222;
    goto LABEL_65;
  }

  v167 = v205;
  v168 = v222;
  v169 = v202;
  (*(v205 + 32))(v202, &v222[v165], v4);
  sub_18B4FFEEC();
  v170 = v217;
  v171 = sub_18B6C55EC();
  v172 = *(v167 + 8);
  v172(v169, v4);
  v172(v170, v4);
  sub_18B4A6454(v168, &qword_1EA9C46A8);
  if ((v171 & 1) == 0)
  {
    return 0;
  }

LABEL_113:
  if (*(v153 + v151[23]) != v155[v151[23]])
  {
    return 0;
  }

  v173 = v151[24];
  v174 = (v153 + v173);
  v175 = *(v153 + v173 + 8);
  v176 = &v155[v173];
  v177 = *(v176 + 1);
  if (v175)
  {
    if (!v177 || (*v174 != *v176 || v175 != v177) && (sub_18B6C5CEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v177)
  {
    return 0;
  }

  v178 = v151[25];
  v179 = (v153 + v178);
  v180 = *(v153 + v178 + 8);
  v181 = &v155[v178];
  v182 = *(v181 + 1);
  if (v180)
  {
    if (!v182 || (*v179 != *v181 || v180 != v182) && (sub_18B6C5CEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v182)
  {
    return 0;
  }

  v183 = v151[26];
  v184 = (v153 + v183);
  v185 = *(v153 + v183 + 8);
  v186 = &v155[v183];
  v187 = *(v186 + 1);
  if (v185)
  {
    if (!v187 || (*v184 != *v186 || v185 != v187) && (sub_18B6C5CEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v187)
  {
    return 0;
  }

  v188 = v151[27];
  v189 = (v153 + v188);
  v190 = *(v153 + v188 + 8);
  v191 = &v155[v188];
  v192 = *(v191 + 1);
  if (v190)
  {
    if (!v192 || (*v189 != *v191 || v190 != v192) && (sub_18B6C5CEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v192)
  {
    return 0;
  }

  v193 = v151[28];
  v194 = (v153 + v193);
  v195 = *(v153 + v193 + 8);
  v196 = &v155[v193];
  v197 = *(v196 + 1);
  if (v195)
  {
    if (!v197 || (*v194 != *v196 || v195 != v197) && (sub_18B6C5CEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v197)
  {
    return 0;
  }

  v198 = v151[29];
  v199 = (v153 + v198);
  v200 = *(v153 + v198 + 4);
  v201 = &v155[v198];
  result = v201[4];
  if ((v200 & 1) == 0)
  {
    return (*v199 == *v201) & ~result;
  }

  return result;
}

uint64_t sub_18B4FFED8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18B4C2690(a1, a2);
  }

  return a1;
}

unint64_t sub_18B4FFEEC()
{
  result = qword_1EA9C50C8;
  if (!qword_1EA9C50C8)
  {
    sub_18B6C41BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C50C8);
  }

  return result;
}

unint64_t sub_18B4FFF44(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_18B4FFF74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  inited = swift_initStackObject();
  *(v0 + 80) = inited;
  *(inited + 16) = xmmword_18B6E8750;
  v2 = *MEMORY[0x1E6987668];
  *(inited + 32) = *MEMORY[0x1E6987668];
  sub_18B6C580C();
  v3 = v2;
  *(v0 + 88) = sub_18B6C57FC();
  v5 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B500048, v5, v4);
}

uint64_t sub_18B500048()
{
  v1 = *(v0 + 80);

  sub_18B4FA628(v1);
  *(v0 + 96) = v2;
  swift_setDeallocating();
  sub_18B505228(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_18B5000D0, 0, 0);
}

uint64_t sub_18B5000D0()
{
  if (v0[12])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F8);
    v1 = sub_18B6C429C();
    v0[13] = v1;
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_18B5001DC;

    return MEMORY[0x1EEE68140](v0 + 7, v1, 0, 0);
  }

  else
  {
    v3 = v0[1];

    return v3(0, 0);
  }
}

uint64_t sub_18B5001DC()
{

  if (v0)
  {

    v1 = sub_18B50542C;
  }

  else
  {

    v1 = sub_18B505440;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18B500344()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  inited = swift_initStackObject();
  *(v0 + 80) = inited;
  *(inited + 16) = xmmword_18B6E8750;
  *(inited + 32) = @"avkt/com.apple.avkit.programScheduledTime";
  sub_18B6C580C();
  v2 = @"avkt/com.apple.avkit.programScheduledTime";
  *(v0 + 88) = sub_18B6C57FC();
  v4 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B500418, v4, v3);
}

uint64_t sub_18B500418()
{
  v1 = *(v0 + 80);

  sub_18B4FA628(v1);
  *(v0 + 96) = v2;
  swift_setDeallocating();
  sub_18B505228(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_18B5004A0, 0, 0);
}

uint64_t sub_18B5004A0()
{
  if (v0[12])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F8);
    v1 = sub_18B6C429C();
    v0[13] = v1;
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_18B5005AC;

    return MEMORY[0x1EEE68140](v0 + 7, v1, 0, 0);
  }

  else
  {
    v3 = v0[1];

    return v3(0, 0);
  }
}

uint64_t sub_18B5005AC()
{

  if (v0)
  {

    v1 = sub_18B500758;
  }

  else
  {

    v1 = sub_18B5006F4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18B5006F4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_18B500758()
{
  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t sub_18B5007E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 16) = xmmword_18B6E6E50;
  if (qword_1EA9C3A18 != -1)
  {
    v8 = inited;
    swift_once();
    inited = v8;
  }

  v2 = qword_1EA9CE350;
  v3 = *MEMORY[0x1E6987808];
  *(inited + 32) = qword_1EA9CE350;
  *(inited + 40) = v3;
  sub_18B6C580C();
  v4 = v2;
  v5 = v3;
  *(v0 + 96) = sub_18B6C57FC();
  v7 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B500904, v7, v6);
}

uint64_t sub_18B500904()
{
  v1 = *(v0 + 88);

  sub_18B4FA628(v1);
  *(v0 + 104) = v2;
  swift_setDeallocating();
  type metadata accessor for AVMetadataIdentifier(0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6DFA0](sub_18B50099C, 0, 0);
}

uint64_t sub_18B50099C()
{
  if (v0[13])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F8);
    v1 = sub_18B6C429C();
    v0[14] = v1;
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_18B500AA8;

    return MEMORY[0x1EEE68140](v0 + 8, v1, 0, 0);
  }

  else
  {
    v3 = v0[1];

    return v3(0, 0);
  }
}

uint64_t sub_18B500AA8()
{

  if (v0)
  {

    v1 = sub_18B500BF0;
  }

  else
  {

    v1 = sub_18B505444;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18B500BF0()
{
  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t sub_18B500C78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  inited = swift_initStackObject();
  *(v0 + 80) = inited;
  *(inited + 16) = xmmword_18B6E8750;
  v2 = *MEMORY[0x1E6987640];
  *(inited + 32) = *MEMORY[0x1E6987640];
  sub_18B6C580C();
  v3 = v2;
  *(v0 + 88) = sub_18B6C57FC();
  v5 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B500048, v5, v4);
}

uint64_t sub_18B500D6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 16) = xmmword_18B6E6E50;
  v2 = objc_opt_self();
  v3 = [v2 identifierForKey:*MEMORY[0x1E6987928] keySpace:*MEMORY[0x1E6987860]];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = MEMORY[0x1E69878B8];
  *(inited + 32) = v3;
  v3 = [v2 identifierForKey:*v6 keySpace:*MEMORY[0x1E6987850]];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  *(inited + 40) = v3;
  sub_18B6C580C();
  *(v0 + 96) = sub_18B6C57FC();
  v7 = sub_18B6C57CC();
  v9 = v8;
  v3 = sub_18B500EB8;
  v4 = v7;
  v5 = v9;

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18B500EB8()
{
  v1 = *(v0 + 88);

  sub_18B4FA628(v1);
  *(v0 + 104) = v2;
  swift_setDeallocating();
  type metadata accessor for AVMetadataIdentifier(0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6DFA0](sub_18B500F50, 0, 0);
}

uint64_t sub_18B500F50()
{
  if (v0[13])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F8);
    v1 = sub_18B6C429C();
    v0[14] = v1;
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_18B50105C;

    return MEMORY[0x1EEE68140](v0 + 8, v1, 0, 0);
  }

  else
  {
    v3 = v0[1];

    return v3(0, 0);
  }
}

uint64_t sub_18B50105C()
{

  if (v0)
  {

    v1 = sub_18B505430;
  }

  else
  {

    v1 = sub_18B505444;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18B5011C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 16) = xmmword_18B6E6E50;
  v2 = objc_opt_self();
  v3 = [v2 identifierForKey:*MEMORY[0x1E6987680] keySpace:*MEMORY[0x1E6987838]];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = MEMORY[0x1E6987920];
  *(inited + 32) = v3;
  v3 = [v2 identifierForKey:*v6 keySpace:*MEMORY[0x1E6987860]];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  *(inited + 40) = v3;
  sub_18B6C580C();
  *(v0 + 96) = sub_18B6C57FC();
  v7 = sub_18B6C57CC();
  v9 = v8;
  v3 = sub_18B501310;
  v4 = v7;
  v5 = v9;

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18B501310()
{
  v1 = *(v0 + 88);

  sub_18B4FA628(v1);
  *(v0 + 104) = v2;
  swift_setDeallocating();
  type metadata accessor for AVMetadataIdentifier(0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6DFA0](sub_18B5013A8, 0, 0);
}

uint64_t sub_18B5013A8()
{
  if (v0[13])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5108);
    v1 = sub_18B6C42AC();
    v0[14] = v1;
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_18B5014B4;

    return MEMORY[0x1EEE68140](v0 + 8, v1, 0, 0);
  }

  else
  {
    v3 = v0[1];

    return v3(0, 0xF000000000000000);
  }
}

uint64_t sub_18B5014B4()
{

  if (v0)
  {

    v1 = sub_18B501660;
  }

  else
  {

    v1 = sub_18B5015FC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18B5015FC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_18B501660()
{
  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t sub_18B5016E8()
{
  v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 16) = xmmword_18B6E8750;
  if (qword_1EA9C3A10 != -1)
  {
    v6 = inited;
    swift_once();
    inited = v6;
  }

  v2 = qword_1EA9CE348;
  *(inited + 32) = qword_1EA9CE348;
  v0[17] = sub_18B6C580C();
  v3 = v2;
  v0[18] = sub_18B6C57FC();
  v5 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B5017FC, v5, v4);
}

uint64_t sub_18B5017FC()
{
  v1 = *(v0 + 128);

  sub_18B4FA628(v1);
  *(v0 + 152) = v2;
  swift_setDeallocating();
  sub_18B505228(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_18B501888, 0, 0);
}

uint64_t sub_18B501888()
{
  if (v0[19])
  {
    inited = swift_initStackObject();
    v0[20] = inited;
    *(inited + 16) = xmmword_18B6E8750;
    if (qword_1EA9C3E10 != -1)
    {
      v7 = inited;
      swift_once();
      inited = v7;
    }

    v2 = qword_1EA9CE3E0;
    *(inited + 32) = qword_1EA9CE3E0;
    v3 = v2;
    v0[21] = sub_18B6C57FC();
    v5 = sub_18B6C57CC();

    return MEMORY[0x1EEE6DFA0](sub_18B5019B8, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6(0x400000000);
  }
}

uint64_t sub_18B5019B8()
{
  v1 = *(v0 + 160);

  sub_18B4FA628(v1);
  *(v0 + 176) = v2;
  swift_setDeallocating();
  sub_18B505228(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_18B501A40, 0, 0);
}

uint64_t sub_18B501A40()
{
  if (*(v0 + 176))
  {
    *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5100);
    v1 = sub_18B6C428C();
    *(v0 + 192) = v1;
    v2 = swift_task_alloc();
    *(v0 + 200) = v2;
    *v2 = v0;
    v2[1] = sub_18B501B58;

    return MEMORY[0x1EEE68140](v0 + 96, v1, 0, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0x400000000);
  }
}

uint64_t sub_18B501B58()
{

  if (v0)
  {

    v1 = sub_18B501FC0;
  }

  else
  {

    v1 = sub_18B501CA0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18B501CA0()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    [*(v0 + 96) floatValue];
    v3 = v2;

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 232) = v1 == 0;
  *(v0 + 208) = v4;
  v5 = sub_18B6C428C();
  *(v0 + 216) = v5;
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = sub_18B501DA0;

  return MEMORY[0x1EEE68140](v0 + 104, v5, 0, 0);
}

uint64_t sub_18B501DA0()
{

  if (v0)
  {

    v1 = sub_18B502084;
  }

  else
  {

    v1 = sub_18B501EE8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

void sub_18B501EE8()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 232);
    v3 = *(v0 + 176);
    v4 = *(v0 + 152);
    v5 = [*(v0 + 104) integerValue];

    if (v2)
    {
      v6 = 0x400000000;
    }

    else
    {
      if (v5 > 3)
      {
        __break(1u);
        return;
      }

      v6 = *(v0 + 208) + (v5 << 32);
    }
  }

  else
  {
    v7 = *(v0 + 152);

    v6 = 0x400000000;
  }

  v8 = *(v0 + 8);

  v8(v6);
}

uint64_t sub_18B501FC0()
{
  *(v0 + 232) = 1;
  *(v0 + 208) = 0;
  v1 = sub_18B6C428C();
  *(v0 + 216) = v1;
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_18B501DA0;

  return MEMORY[0x1EEE68140](v0 + 104, v1, 0, 0);
}

uint64_t sub_18B502084()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2(0x400000000);
}

uint64_t sub_18B502110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F0);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 16) = xmmword_18B6E6E50;
  v2 = objc_opt_self();
  v3 = [v2 identifierForKey:*MEMORY[0x1E6987918] keySpace:*MEMORY[0x1E6987860]];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = MEMORY[0x1E6987610];
  *(inited + 32) = v3;
  v3 = [v2 identifierForKey:*v6 keySpace:*MEMORY[0x1E6987848]];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  *(inited + 40) = v3;
  sub_18B6C580C();
  *(v0 + 96) = sub_18B6C57FC();
  v7 = sub_18B6C57CC();
  v9 = v8;
  v3 = sub_18B50225C;
  v4 = v7;
  v5 = v9;

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18B50225C()
{
  v1 = *(v0 + 88);

  sub_18B4FA628(v1);
  *(v0 + 104) = v2;
  swift_setDeallocating();
  type metadata accessor for AVMetadataIdentifier(0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6DFA0](sub_18B5022F4, 0, 0);
}

uint64_t sub_18B5022F4()
{
  if (v0[13])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50F8);
    v1 = sub_18B6C429C();
    v0[14] = v1;
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_18B5023FC;

    return MEMORY[0x1EEE68140](v0 + 8, v1, 0, 0);
  }

  else
  {
    v3 = v0[1];

    return v3(0);
  }
}

uint64_t sub_18B5023FC()
{

  if (v0)
  {

    v1 = sub_18B502628;
  }

  else
  {

    v1 = sub_18B502544;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18B502544()
{
  v1 = v0[9];
  v2 = v0[13];
  if (v1)
  {
    v3 = [objc_opt_self() shared];
    v4 = sub_18B6C55FC();

    v1 = [v3 findRatingString_];
  }

  else
  {
  }

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_18B502628()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_18B50268C(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = sub_18B6C580C();
  v1[5] = sub_18B6C57FC();
  v3 = sub_18B6C57CC();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B502728, v3, v2);
}

uint64_t sub_18B502728()
{
  v1 = [*(v0 + 24) asset];
  *(v0 + 64) = v1;
  [v1 maximumVideoResolution];
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  if (v3 <= 0.0)
  {
    v7 = 0;
  }

  else
  {
    if (v2 < 3648.0 && v3 < 3648.0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    if (v3 < 720.0 && v2 < 1280.0)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }
  }

  v8 = [*(v0 + 24) tracks];
  sub_18B4AC60C(0, &qword_1EA9C3A40);
  v9 = sub_18B6C576C();

  v46 = MEMORY[0x1E69E7CC0];
  if (v9 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18B6C5C6C())
  {
    v41 = v0;
    v42 = v1;
    v43 = v7;
    v11 = 0;
    v44 = v9 & 0xFFFFFFFFFFFFFF8;
    v45 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v45)
      {
        v12 = MEMORY[0x18CFF7750](v11, v9);
      }

      else
      {
        if (v11 >= *(v44 + 16))
        {
          goto LABEL_37;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 assetTrack];
      if (v14)
      {
        v0 = v9;
        v15 = i;
        v16 = v14;
        v17 = [v14 mediaType];

        v18 = sub_18B6C562C();
        v20 = v19;
        v21 = sub_18B6C562C();
        v1 = v22;
        if (v18 == v21 && v20 == v22)
        {
        }

        else
        {
          v24 = sub_18B6C5CEC();

          if ((v24 & 1) == 0)
          {

LABEL_33:
            i = v15;
            v9 = v0;
            goto LABEL_19;
          }
        }

        sub_18B6C5B9C();
        v1 = *(v46 + 16);
        sub_18B6C5BBC();
        sub_18B6C5BCC();
        sub_18B6C5BAC();
        goto LABEL_33;
      }

LABEL_19:
      ++v11;
      if (v7 == i)
      {
        v25 = v46;
        v7 = v43;
        v0 = v41;
        v1 = v42;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_40:
  *(v0 + 88) = v25;

  if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
  {
    v26 = *(v25 + 16);
    *(v0 + 96) = v26;
    if (v26)
    {
      goto LABEL_43;
    }

LABEL_53:

    v32 = *(v0 + 8);

    return v32(v7);
  }

LABEL_63:
  v40 = sub_18B6C5C6C();
  *(v0 + 96) = v40;
  if (!v40)
  {
    goto LABEL_53;
  }

LABEL_43:
  v27 = 0;
  while (1)
  {
    *(v0 + 185) = v7;
    v28 = *(v0 + 88);
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x18CFF7750](v27);
    }

    else
    {
      if (v27 >= *(v28 + 16))
      {
        goto LABEL_62;
      }

      v29 = *(v28 + 8 * v27 + 32);
    }

    *(v0 + 104) = v29;
    *(v0 + 112) = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v30 = [v29 assetTrack];
    *(v0 + 120) = v30;
    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E8);
      v34 = sub_18B6C427C();
      *(v0 + 128) = v34;
      v35 = sub_18B6C57FC();
      *(v0 + 136) = v35;
      v36 = swift_task_alloc();
      *(v0 + 144) = v36;
      *v36 = v0;
      v36[1] = sub_18B502C98;
      v37 = MEMORY[0x1E69E85E0];
      v38 = v0 + 184;
      goto LABEL_58;
    }

    v31 = [*(v0 + 104) assetTrack];
    *(v0 + 152) = v31;
    if (v31)
    {
      break;
    }

    v7 = *(v0 + 185);
    v27 = *(v0 + 112);
    if (v27 == *(v0 + 96))
    {
      v1 = *(v0 + 64);
      goto LABEL_53;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E0);
  v34 = sub_18B6C426C();
  *(v0 + 160) = v34;
  v35 = sub_18B6C57FC();
  *(v0 + 168) = v35;
  v39 = swift_task_alloc();
  *(v0 + 176) = v39;
  *v39 = v0;
  v39[1] = sub_18B50309C;
  v37 = MEMORY[0x1E69E85E0];
  v38 = v0 + 16;
LABEL_58:

  return MEMORY[0x1EEE68140](v38, v34, v35, v37);
}

uint64_t sub_18B502C98()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 120);
  if (v0)
  {

    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
    v7 = sub_18B5035FC;
  }

  else
  {

    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
    v7 = sub_18B502E24;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_18B502E24()
{
  if ((*(v0 + 184) & 1) == 0)
  {
    goto LABEL_9;
  }

  while (1)
  {

    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    if (v4 == *(v0 + 96))
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x18CFF7750](*(v0 + 112));
    }

    else
    {
      if (v4 >= *(v5 + 16))
      {
        goto LABEL_19;
      }

      v1 = *(v5 + 8 * v4 + 32);
    }

    *(v0 + 104) = v1;
    *(v0 + 112) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return MEMORY[0x1EEE68140](v1, v5, v2, v3);
    }

    v6 = [v1 assetTrack];
    *(v0 + 120) = v6;
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E8);
      v8 = sub_18B6C427C();
      *(v0 + 128) = v8;
      v9 = sub_18B6C57FC();
      *(v0 + 136) = v9;
      v15 = swift_task_alloc();
      *(v0 + 144) = v15;
      *v15 = v0;
      v15[1] = sub_18B502C98;
      v3 = MEMORY[0x1E69E85E0];
      v1 = (v0 + 184);
LABEL_15:
      v5 = v8;
      v2 = v9;

      return MEMORY[0x1EEE68140](v1, v5, v2, v3);
    }

LABEL_9:
    v7 = [*(v0 + 104) assetTrack];
    *(v0 + 152) = v7;
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E0);
      v8 = sub_18B6C426C();
      *(v0 + 160) = v8;
      v9 = sub_18B6C57FC();
      *(v0 + 168) = v9;
      v10 = swift_task_alloc();
      *(v0 + 176) = v10;
      *v10 = v0;
      v10[1] = sub_18B50309C;
      v3 = MEMORY[0x1E69E85E0];
      v1 = (v0 + 16);
      goto LABEL_15;
    }
  }

  v11 = *(v0 + 64);
  v12 = *(v0 + 185);

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_18B50309C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 152);
  if (v0)
  {

    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
    v7 = sub_18B503890;
  }

  else
  {

    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
    v7 = sub_18B503228;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_18B503228(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 16;
  v6 = *(v4 + 16);
  if (v6 >> 62)
  {
    a1 = sub_18B6C5C6C();
    v7 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_28:

    v9 = *(v4 + 185);
    goto LABEL_29;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v7 < 1)
  {
LABEL_48:
    __break(1u);
    return MEMORY[0x1EEE68140](a1, a2, a3, a4);
  }

  v8 = 0;
  v9 = *(v4 + 185);
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x18CFF7750](v8, v6);
    }

    else
    {
      v12 = *(v6 + 8 * v8 + 32);
    }

    v13 = v12;
    Dimensions = CMVideoFormatDescriptionGetDimensions(v12);

    if (Dimensions.height >= 1)
    {
      v16 = *(v4 + 72);
      v15 = *(v4 + 80);
      if (v15 < 720.0 && v16 < 1280.0)
      {
        if ((v9 & 0xFE) != 0)
        {
          v9 = v9;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v10 = v9;
        if (v9 <= 2u)
        {
          v10 = 2;
        }

        if (v16 < 3648.0 && v15 < 3648.0)
        {
          v9 = v10;
        }

        else
        {
          v9 = 3;
        }
      }
    }

    ++v8;
  }

  while (v7 != v8);

  v5 = v4 + 16;
LABEL_29:
  v18 = *(v4 + 112);
  if (v18 != *(v4 + 96))
  {
    while (1)
    {
      *(v4 + 185) = v9;
      a2 = *(v4 + 88);
      if ((a2 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x18CFF7750](v18);
      }

      else
      {
        if (v18 >= *(a2 + 16))
        {
          goto LABEL_47;
        }

        a1 = *(a2 + 8 * v18 + 32);
      }

      *(v4 + 104) = a1;
      *(v4 + 112) = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v19 = [a1 assetTrack];
      *(v4 + 120) = v19;
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E8);
        v24 = sub_18B6C427C();
        *(v4 + 128) = v24;
        v25 = sub_18B6C57FC();
        *(v4 + 136) = v25;
        v26 = swift_task_alloc();
        *(v4 + 144) = v26;
        *v26 = v4;
        v26[1] = sub_18B502C98;
        a4 = MEMORY[0x1E69E85E0];
        a1 = (v5 + 168);
        goto LABEL_43;
      }

      v20 = [*(v4 + 104) assetTrack];
      *(v4 + 152) = v20;
      if (v20)
      {
        break;
      }

      v9 = *(v4 + 185);
      v18 = *(v4 + 112);
      if (v18 == *(v4 + 96))
      {
        goto LABEL_38;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E0);
    v24 = sub_18B6C426C();
    *(v4 + 160) = v24;
    v25 = sub_18B6C57FC();
    *(v4 + 168) = v25;
    v27 = swift_task_alloc();
    *(v4 + 176) = v27;
    *v27 = v4;
    v27[1] = sub_18B50309C;
    a4 = MEMORY[0x1E69E85E0];
    a1 = v5;
LABEL_43:
    a2 = v24;
    a3 = v25;

    return MEMORY[0x1EEE68140](a1, a2, a3, a4);
  }

LABEL_38:
  v21 = *(v4 + 64);

  v22 = *(v4 + 8);

  return v22(v9);
}

uint64_t sub_18B5035FC()
{
  while (1)
  {
    v1 = [*(v0 + 104) assetTrack];
    *(v0 + 152) = v1;
    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E0);
      v8 = sub_18B6C426C();
      *(v0 + 160) = v8;
      v9 = sub_18B6C57FC();
      *(v0 + 168) = v9;
      v10 = swift_task_alloc();
      *(v0 + 176) = v10;
      *v10 = v0;
      v10[1] = sub_18B50309C;
      v4 = MEMORY[0x1E69E85E0];
      v2 = (v0 + 16);
      v6 = v8;
      v3 = v9;
      goto LABEL_11;
    }

    v5 = *(v0 + 112);
    if (v5 == *(v0 + 96))
    {
      break;
    }

    v6 = *(v0 + 88);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x18CFF7750](*(v0 + 112));
    }

    else
    {
      if (v5 >= *(v6 + 16))
      {
        goto LABEL_19;
      }

      v2 = *(v6 + 8 * v5 + 32);
    }

    *(v0 + 104) = v2;
    *(v0 + 112) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return MEMORY[0x1EEE68140](v2, v6, v3, v4);
    }

    v7 = [v2 assetTrack];
    *(v0 + 120) = v7;
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E8);
      v15 = sub_18B6C427C();
      *(v0 + 128) = v15;
      v16 = sub_18B6C57FC();
      *(v0 + 136) = v16;
      v17 = swift_task_alloc();
      *(v0 + 144) = v17;
      *v17 = v0;
      v17[1] = sub_18B502C98;
      v4 = MEMORY[0x1E69E85E0];
      v2 = (v0 + 184);
      v6 = v15;
      v3 = v16;
LABEL_11:

      return MEMORY[0x1EEE68140](v2, v6, v3, v4);
    }
  }

  v11 = *(v0 + 64);
  v12 = *(v0 + 185);

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_18B503890()
{
  v4 = *(v0 + 185);
  v5 = *(v0 + 112);
  if (v5 == *(v0 + 96))
  {
LABEL_10:
    v9 = *(v0 + 64);

    v10 = *(v0 + 8);

    return v10(v4);
  }

  else
  {
    while (1)
    {
      *(v0 + 185) = v4;
      v6 = *(v0 + 88);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x18CFF7750](v5);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_19;
        }

        v1 = *(v6 + 8 * v5 + 32);
      }

      *(v0 + 104) = v1;
      *(v0 + 112) = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return MEMORY[0x1EEE68140](v1, v6, v2, v3);
      }

      v7 = [v1 assetTrack];
      *(v0 + 120) = v7;
      if (v7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E8);
        v12 = sub_18B6C427C();
        *(v0 + 128) = v12;
        v13 = sub_18B6C57FC();
        *(v0 + 136) = v13;
        v14 = swift_task_alloc();
        *(v0 + 144) = v14;
        *v14 = v0;
        v14[1] = sub_18B502C98;
        v3 = MEMORY[0x1E69E85E0];
        v1 = (v0 + 184);
        goto LABEL_15;
      }

      v8 = [*(v0 + 104) assetTrack];
      *(v0 + 152) = v8;
      if (v8)
      {
        break;
      }

      v4 = *(v0 + 185);
      v5 = *(v0 + 112);
      if (v5 == *(v0 + 96))
      {
        goto LABEL_10;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E0);
    v12 = sub_18B6C426C();
    *(v0 + 160) = v12;
    v13 = sub_18B6C57FC();
    *(v0 + 168) = v13;
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_18B50309C;
    v3 = MEMORY[0x1E69E85E0];
    v1 = (v0 + 16);
LABEL_15:
    v6 = v12;
    v2 = v13;

    return MEMORY[0x1EEE68140](v1, v6, v2, v3);
  }
}

uint64_t sub_18B503B24(unint64_t a1)
{
  if (a1 > 8)
  {
    return 7;
  }

  else
  {
    return byte_18B6E920E[a1];
  }
}

void sub_18B503B44(void *a1)
{
  v9 = [a1 asset];
  v1 = [v9 availableVideoDynamicRanges];
  sub_18B4AC60C(0, &qword_1EA9C3988);
  v2 = sub_18B6C576C();

  v3 = sub_18B52C244(v2);

  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 32);
    v7 = 1;
    while (v5 < *(v3 + 2))
    {
      sub_18B4AF1A4(v6, v11);
      if (swift_dynamicCast())
      {
        ++v5;
        v8 = [v10 integerValue];

        if (v7 <= v8)
        {
          v7 = v8;
        }

        v6 += 32;
        if (v4 != v5)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    v7 = 1;
LABEL_10:

    sub_18B503B24(v7);
  }
}

uint64_t sub_18B503CC0(uint64_t a1)
{
  v1[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50D8);
  v1[11] = swift_task_alloc();
  v2 = sub_18B6C559C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_18B6C580C();
  v1[16] = sub_18B6C57FC();
  v4 = sub_18B6C57CC();
  v1[17] = v4;
  v1[18] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18B503DF0, v4, v3);
}

uint64_t sub_18B503DF0()
{
  v1 = [*(v0 + 80) tracks];
  sub_18B4AC60C(0, &qword_1EA9C3A40);
  v2 = sub_18B6C576C();

  v31 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18B6C5C6C())
  {
    v30 = v0;
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x18CFF7750](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v0 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v7 = [v5 assetTrack];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 mediaType];

        v10 = sub_18B6C562C();
        v12 = v11;
        if (v10 == sub_18B6C562C() && v12 == v13)
        {

LABEL_18:
          sub_18B6C5B9C();
          sub_18B6C5BBC();
          sub_18B6C5BCC();
          sub_18B6C5BAC();
          goto LABEL_5;
        }

        v15 = sub_18B6C5CEC();

        if (v15)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v4;
      if (v0 == i)
      {
        v16 = v31;
        v0 = v30;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_25:
  *(v0 + 152) = v16;

  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    if (sub_18B6C5C6C())
    {
      v17 = sub_18B6C5C6C();
      *(v0 + 160) = v17;
      *(v0 + 65) = 256;
      *(v0 + 68) = 1;
      if (v17)
      {
        goto LABEL_29;
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  v20 = *(v16 + 16);
  if (!v20)
  {
    goto LABEL_39;
  }

  *(v0 + 160) = v20;
  *(v0 + 65) = 256;
  *(v0 + 68) = 1;
LABEL_29:
  v21 = *(v0 + 152);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x18CFF7750](0);
  }

  else
  {
    if (!*(v21 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE68140](v17, v21, v18, v19);
    }

    v22 = *(v21 + 32);
  }

  v23 = v22;
  *(v0 + 168) = v22;
  *(v0 + 176) = 1;
  v24 = [v22 assetTrack];
  *(v0 + 184) = v24;
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E0);
    v25 = sub_18B6C426C();
    *(v0 + 192) = v25;
    v26 = sub_18B6C57FC();
    *(v0 + 200) = v26;
    v27 = swift_task_alloc();
    *(v0 + 208) = v27;
    *v27 = v0;
    v27[1] = sub_18B50422C;
    v19 = MEMORY[0x1E69E85E0];
    v17 = v0 + 72;
    v21 = v25;
    v18 = v26;

    return MEMORY[0x1EEE68140](v17, v21, v18, v19);
  }

LABEL_40:

  v28 = *(v0 + 8);

  return v28(0);
}

uint64_t sub_18B50422C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = *(v3 + 168);
    *(v3 + 67) = *(v3 + 66);
    *(v3 + 264) = v5;

    v6 = *(v3 + 136);
    v7 = *(v3 + 144);
    v8 = sub_18B504FC0;
  }

  else
  {

    v6 = *(v3 + 136);
    v7 = *(v3 + 144);
    v8 = sub_18B5043D4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_18B5043D4()
{
  v2 = v0 + 72;
  v1 = *(v0 + 72);
  if (v1 >> 62)
  {
LABEL_27:
    v27 = v1;
    v3 = sub_18B6C5C6C();
    v1 = v27;
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
        goto LABEL_52;
      }

      v37 = v5;
      v38 = v4;
      v6 = 0;
      v39 = v2;
      v40 = v3;
      v42 = v1 & 0xC000000000000001;
      v2 = *(v0 + 65);
      v7 = *(v0 + 68);
      v41 = v1;
      while (1)
      {
        if (v42)
        {
          v10 = MEMORY[0x18CFF7750](v6);
        }

        else
        {
          v10 = *(v1 + 8 * v6 + 32);
        }

        v11 = v10;
        v12 = *(v0 + 96);
        v13 = *(v0 + 104);
        v14 = *(v0 + 88);
        v44 = CMAudioFormatDescriptionIsAtmos(v10) != 0;
        sub_18B6C59DC();
        v43 = *(v0 + 56);
        v15 = *(v0 + 64);
        sub_18B6C59CC();
        if ((*(v13 + 48))(v14, 1, v12) == 1)
        {
          v8 = *(v0 + 88);

          sub_18B4A6454(v8, &qword_1EA9C50D8);
          LODWORD(v9) = 0;
        }

        else
        {
          (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
          v16 = *(v0 + 104);
          v17 = *(v0 + 112);
          v18 = v0;
          v0 = *(v0 + 96);
          v19 = (v16 + 8);
          if ((v15 & 1) != 0 || !v43)
          {
            sub_18B6C558C();
            v9 = sub_18B6C557C();

            (*v19)(v17, v0);
            if ((v9 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_27;
            }

            v0 = v18;
            if (HIDWORD(v9))
            {
              __break(1u);
LABEL_19:

              *(v0 + 66) = 0;
              *(v0 + 65) = v2 & 1;
              *(v0 + 68) = v7;
              v4 = v38;
              v2 = v39;
              if (v38 == *(v0 + 160))
              {
                goto LABEL_29;
              }

              v1 = *(v0 + 152);
              if ((v1 & 0xC000000000000001) != 0)
              {
                goto LABEL_54;
              }

              if (v38 >= *(v1 + 16))
              {
                goto LABEL_53;
              }

              for (i = *(v1 + 8 * v38 + 32); ; i = MEMORY[0x18CFF7750](v4, v1))
              {
                v21 = i;
                *(v0 + 168) = i;
                *(v0 + 176) = v4 + 1;
                if (!__OFADD__(v4, 1))
                {
                  break;
                }

LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                ;
              }

              v22 = [i assetTrack];
              *(v0 + 184) = v22;
              if (v22)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E0);
                v23 = sub_18B6C426C();
                *(v0 + 192) = v23;
                v24 = sub_18B6C57FC();
                *(v0 + 200) = v24;
                v25 = swift_task_alloc();
                *(v0 + 208) = v25;
                *v25 = v0;
                v26 = sub_18B50422C;
                goto LABEL_36;
              }

LABEL_39:

LABEL_40:

              if (*(v0 + 65))
              {
                v32 = 4;
              }

              else
              {
                v33 = *(v0 + 68);
                if (v33 <= 1)
                {
                  v34 = 1;
                }

                else
                {
                  v34 = 2;
                }

                if (v33 <= 3)
                {
                  v32 = v34;
                }

                else
                {
                  v32 = 3;
                }
              }

              v35 = *(v0 + 8);

              return v35(v32);
            }
          }

          else
          {
            (*v19)(v17, v0);

            LODWORD(v9) = 0;
            v0 = v18;
          }
        }

        ++v6;
        v2 = v44 | v2;
        if (v7 <= v9)
        {
          v7 = v9;
        }

        v1 = v41;
        if (v40 == v6)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v28 = *(v0 + 160);

  if (v4 == v28)
  {
LABEL_29:

    goto LABEL_40;
  }

  v4 = *(v0 + 176);
  v1 = *(v0 + 152);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x18CFF7750](*(v0 + 176));
  }

  else
  {
    if (v4 >= *(v1 + 16))
    {
      goto LABEL_53;
    }

    v29 = *(v1 + 8 * v4 + 32);
  }

  v21 = v29;
  *(v0 + 216) = v29;
  *(v0 + 224) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_52;
  }

  v30 = [v29 assetTrack];
  *(v0 + 232) = v30;
  if (!v30)
  {
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E0);
  v23 = sub_18B6C426C();
  *(v0 + 240) = v23;
  v24 = sub_18B6C57FC();
  *(v0 + 248) = v24;
  v25 = swift_task_alloc();
  *(v0 + 256) = v25;
  *v25 = v0;
  v26 = sub_18B5048F8;
LABEL_36:
  v25[1] = v26;
  v31 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE68140](v2, v23, v24, v31);
}

uint64_t sub_18B5048F8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = *(v3 + 216);
    *(v3 + 67) = 0;
    *(v3 + 264) = v5;

    v6 = *(v3 + 136);
    v7 = *(v3 + 144);
    v8 = sub_18B504FC0;
  }

  else
  {

    v6 = *(v3 + 136);
    v7 = *(v3 + 144);
    v8 = sub_18B504A9C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_18B504A9C()
{
  v2 = v0 + 72;
  v1 = *(v0 + 72);
  if (v1 >> 62)
  {
LABEL_27:
    v27 = v1;
    v3 = sub_18B6C5C6C();
    v1 = v27;
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
        goto LABEL_52;
      }

      v37 = v5;
      v38 = v4;
      v6 = 0;
      v39 = v2;
      v40 = v3;
      v42 = v1 & 0xC000000000000001;
      v2 = *(v0 + 65);
      v7 = *(v0 + 68);
      v41 = v1;
      while (1)
      {
        if (v42)
        {
          v10 = MEMORY[0x18CFF7750](v6);
        }

        else
        {
          v10 = *(v1 + 8 * v6 + 32);
        }

        v11 = v10;
        v12 = *(v0 + 96);
        v13 = *(v0 + 104);
        v14 = *(v0 + 88);
        v44 = CMAudioFormatDescriptionIsAtmos(v10) != 0;
        sub_18B6C59DC();
        v43 = *(v0 + 56);
        v15 = *(v0 + 64);
        sub_18B6C59CC();
        if ((*(v13 + 48))(v14, 1, v12) == 1)
        {
          v8 = *(v0 + 88);

          sub_18B4A6454(v8, &qword_1EA9C50D8);
          LODWORD(v9) = 0;
        }

        else
        {
          (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
          v16 = *(v0 + 104);
          v17 = *(v0 + 112);
          v18 = v0;
          v0 = *(v0 + 96);
          v19 = (v16 + 8);
          if ((v15 & 1) != 0 || !v43)
          {
            sub_18B6C558C();
            v9 = sub_18B6C557C();

            (*v19)(v17, v0);
            if ((v9 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_27;
            }

            v0 = v18;
            if (HIDWORD(v9))
            {
              __break(1u);
LABEL_19:

              *(v0 + 66) = 0;
              *(v0 + 65) = v2 & 1;
              *(v0 + 68) = v7;
              v4 = v38;
              v2 = v39;
              if (v38 == *(v0 + 160))
              {
                goto LABEL_29;
              }

              v1 = *(v0 + 152);
              if ((v1 & 0xC000000000000001) != 0)
              {
                goto LABEL_54;
              }

              if (v38 >= *(v1 + 16))
              {
                goto LABEL_53;
              }

              for (i = *(v1 + 8 * v38 + 32); ; i = MEMORY[0x18CFF7750](v4, v1))
              {
                v21 = i;
                *(v0 + 168) = i;
                *(v0 + 176) = v4 + 1;
                if (!__OFADD__(v4, 1))
                {
                  break;
                }

LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                ;
              }

              v22 = [i assetTrack];
              *(v0 + 184) = v22;
              if (v22)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E0);
                v23 = sub_18B6C426C();
                *(v0 + 192) = v23;
                v24 = sub_18B6C57FC();
                *(v0 + 200) = v24;
                v25 = swift_task_alloc();
                *(v0 + 208) = v25;
                *v25 = v0;
                v26 = sub_18B50422C;
                goto LABEL_36;
              }

LABEL_39:

LABEL_40:

              if (*(v0 + 65))
              {
                v32 = 4;
              }

              else
              {
                v33 = *(v0 + 68);
                if (v33 <= 1)
                {
                  v34 = 1;
                }

                else
                {
                  v34 = 2;
                }

                if (v33 <= 3)
                {
                  v32 = v34;
                }

                else
                {
                  v32 = 3;
                }
              }

              v35 = *(v0 + 8);

              return v35(v32);
            }
          }

          else
          {
            (*v19)(v17, v0);

            LODWORD(v9) = 0;
            v0 = v18;
          }
        }

        ++v6;
        v2 = v44 | v2;
        if (v7 <= v9)
        {
          v7 = v9;
        }

        v1 = v41;
        if (v40 == v6)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v28 = *(v0 + 160);

  if (v4 == v28)
  {
LABEL_29:

    goto LABEL_40;
  }

  v4 = *(v0 + 224);
  v1 = *(v0 + 152);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x18CFF7750](*(v0 + 224));
  }

  else
  {
    if (v4 >= *(v1 + 16))
    {
      goto LABEL_53;
    }

    v29 = *(v1 + 8 * v4 + 32);
  }

  v21 = v29;
  *(v0 + 216) = v29;
  *(v0 + 224) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_52;
  }

  v30 = [v29 assetTrack];
  *(v0 + 232) = v30;
  if (!v30)
  {
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C50E0);
  v23 = sub_18B6C426C();
  *(v0 + 240) = v23;
  v24 = sub_18B6C57FC();
  *(v0 + 248) = v24;
  v25 = swift_task_alloc();
  *(v0 + 256) = v25;
  *v25 = v0;
  v26 = sub_18B5048F8;
LABEL_36:
  v25[1] = v26;
  v31 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE68140](v2, v23, v24, v31);
}

uint64_t sub_18B504FC0()
{

  if (*(v0 + 67))
  {
    v1 = 0;
  }

  else
  {
    v1 = 4;
  }

  if ((*(v0 + 67) & 1) == 0 && (*(v0 + 65) & 1) == 0)
  {
    v2 = *(v0 + 68);
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (v2 <= 3)
    {
      v1 = v3;
    }

    else
    {
      v1 = 3;
    }
  }

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t CMAudioFormatDescriptionIsAtmos(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  result = 1;
  if (MediaSubType <= 1885692722)
  {
    if (MediaSubType > 1700997938)
    {
      if (MediaSubType == 1700997939)
      {
        return result;
      }

      if (MediaSubType != 1700998451)
      {
        v4 = 1885547315;
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (MediaSubType == 1667574579)
    {
      return result;
    }

    v5 = 1667575091;
LABEL_12:
    if (MediaSubType != v5)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (MediaSubType > 1902469938)
  {
    if (MediaSubType == 2053464883)
    {
      goto LABEL_16;
    }

    if (MediaSubType == 2053319475)
    {
      return result;
    }

    v5 = 1902469939;
    goto LABEL_12;
  }

  if (MediaSubType != 1885692723)
  {
    v4 = 1902324531;
    goto LABEL_24;
  }

LABEL_16:
  sizeOut = 0;
  FormatList = CMAudioFormatDescriptionGetFormatList(a1, &sizeOut);
  result = 0;
  if (FormatList && sizeOut >= 0x30)
  {
    MediaSubType = FormatList->mASBD.mFormatID;
    result = 1;
    if (MediaSubType <= 1885547314)
    {
      if (MediaSubType == 1667574579)
      {
        return result;
      }

      v4 = 1700997939;
LABEL_24:
      if (MediaSubType == v4)
      {
        return result;
      }

      return 0;
    }

    if (MediaSubType != 1885547315 && MediaSubType != 1902324531)
    {
      v4 = 2053319475;
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_18B505228(uint64_t a1)
{
  type metadata accessor for AVMetadataIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B505284(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t sub_18B505314(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18B5053D8()
{
  result = qword_1EA9C5120;
  if (!qword_1EA9C5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AVGlassButtonStyle(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_18B505578(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = sub_18B6C4F3C();

  *a3 = v4;
  return result;
}

uint64_t sub_18B5055C0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v89 = a1;
  v85[1] = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5128);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v2);
  v95 = v85 - v3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5130);
  MEMORY[0x1EEE9AC00](v94, v4);
  v6 = v85 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5138);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v7);
  v91 = v85 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5140);
  MEMORY[0x1EEE9AC00](v90, v9);
  v11 = v85 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5148);
  MEMORY[0x1EEE9AC00](v88, v12);
  v14 = v85 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5150);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v85 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5158);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v85 - v22;
  sub_18B6C4D4C();
  KeyPath = swift_getKeyPath();
  v25 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5160) + 36)];
  *v25 = KeyPath;
  *(v25 + 1) = 2;
  v25[16] = 0;
  sub_18B6C54BC();
  sub_18B6C479C();
  v26 = &v23[*(v20 + 44)];
  v27 = v101;
  *v26 = v100;
  *(v26 + 1) = v27;
  *(v26 + 2) = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18B6E6E50;
  v29 = sub_18B6C4EEC();
  *(inited + 32) = v29;
  v30 = sub_18B6C4F0C();
  *(inited + 33) = v30;
  v31 = sub_18B6C4EFC();
  sub_18B6C4EFC();
  if (sub_18B6C4EFC() != v29)
  {
    v31 = sub_18B6C4EFC();
  }

  sub_18B6C4EFC();
  if (sub_18B6C4EFC() != v30)
  {
    v31 = sub_18B6C4EFC();
  }

  v32 = v94;
  v33 = v89 & 1;
  sub_18B6C466C();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_18B4B1DB4(v23, v18, &qword_1EA9C5158);
  v42 = &v18[*(v15 + 36)];
  *v42 = v31;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  if (!v33)
  {
    if (qword_1EA9C3E20 != -1)
    {
      swift_once();
    }

    v43 = &qword_1EA9CE3F0;
    goto LABEL_11;
  }

  if (qword_1EA9C3E18 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v43 = &qword_1EA9CE3E8;
LABEL_11:
    v44 = *v43;

    v45 = swift_getKeyPath();
    sub_18B4B1DB4(v18, v14, &qword_1EA9C5150);
    v46 = &v14[*(v88 + 36)];
    *v46 = v45;
    v46[1] = v44;
    v47 = sub_18B6C521C();
    v48 = swift_getKeyPath();
    sub_18B4B1DB4(v14, v11, &qword_1EA9C5148);
    v49 = &v11[*(v90 + 36)];
    *v49 = v48;
    v49[1] = v47;
    v50 = sub_18B6C48BC();
    v51 = *(v50 - 8);
    MEMORY[0x1EEE9AC00](v50, v52);
    v54 = v85 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C494C();
    sub_18B5060AC();
    sub_18B506538(&qword_1EA9C51B0, MEMORY[0x1EEE7B928]);
    v55 = v91;
    sub_18B6C508C();
    (*(v51 + 8))(v54, v50);
    sub_18B4A6454(v11, &qword_1EA9C5140);
    v18 = swift_getKeyPath();
    v56 = &v6[*(v32 + 9)];
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C51B8) + 28);
    v58 = *MEMORY[0x1E697DBB0];
    v59 = sub_18B6C46CC();
    (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
    *v56 = v18;
    (v92[4])(v6, v55, v93);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C51C0);
    MEMORY[0x1EEE9AC00](v11, v60);
    v14 = v85 - v61;
    v62 = *MEMORY[0x1E697E710];
    v63 = sub_18B6C48AC();
    (*(*(v63 - 8) + 104))(v14, v62, v63);
    sub_18B506538(&qword_1EA9C51C8, MEMORY[0x1EEE7E9C8]);
    if (sub_18B6C55EC())
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  v93 = sub_18B50638C();
  v64 = sub_18B5064D4();
  sub_18B6C50CC();
  sub_18B4A6454(v14, &qword_1EA9C51C0);
  sub_18B4A19F4(v6);
  v65 = sub_18B6C526C();
  v94 = v85;
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v67);
  v69 = v85 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = v85 - v72;
  sub_18B6C524C();
  MEMORY[0x18CFF6E40](1);
  v74 = *(v66 + 8);
  v74(v73, v65);
  v75 = sub_18B6C543C();
  v92 = v85;
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = v85 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v32;
  v80 = *MEMORY[0x1E697F470];
  v81 = sub_18B6C4AAC();
  (*(*(v81 - 8) + 104))(v78, v80, v81);
  v96 = v79;
  v97 = v11;
  v98 = v93;
  v99 = v64;
  swift_getOpaqueTypeConformance2();
  sub_18B506538(&qword_1EA9C51E8, MEMORY[0x1EEE81BF8]);
  v82 = v87;
  v83 = v95;
  sub_18B6C507C();
  sub_18B506580(v78);
  v74(v69, v65);
  return (*(v86 + 8))(v83, v82);
}

unint64_t sub_18B5060AC()
{
  result = qword_1EA9C5170;
  if (!qword_1EA9C5170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5140);
    sub_18B506144();
    sub_18B50648C(&qword_1EA9C45B0, &qword_1EA9C45B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5170);
  }

  return result;
}

unint64_t sub_18B506144()
{
  result = qword_1EA9C5178;
  if (!qword_1EA9C5178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5148);
    sub_18B5061DC();
    sub_18B50648C(&unk_1EA9C3B08, &qword_1EA9C57D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5178);
  }

  return result;
}

unint64_t sub_18B5061DC()
{
  result = qword_1EA9C5180;
  if (!qword_1EA9C5180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5150);
    sub_18B50625C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5180);
  }

  return result;
}

unint64_t sub_18B50625C()
{
  result = qword_1EA9C5188;
  if (!qword_1EA9C5188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5158);
    sub_18B5062DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5188);
  }

  return result;
}

unint64_t sub_18B5062DC()
{
  result = qword_1EA9C5190;
  if (!qword_1EA9C5190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5160);
    sub_18B506538(&qword_1EA9C5198, MEMORY[0x1EEE7C288]);
    sub_18B50648C(&qword_1EA9C51A0, &qword_1EA9C51A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5190);
  }

  return result;
}

unint64_t sub_18B50638C()
{
  result = qword_1EA9C51D0;
  if (!qword_1EA9C51D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5140);
    sub_18B6C48BC();
    sub_18B5060AC();
    sub_18B506538(&qword_1EA9C51B0, MEMORY[0x1EEE7B928]);
    swift_getOpaqueTypeConformance2();
    sub_18B50648C(&qword_1EA9C51D8, &qword_1EA9C51B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C51D0);
  }

  return result;
}

uint64_t sub_18B50648C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B5064D4()
{
  result = qword_1EA9C51E0;
  if (!qword_1EA9C51E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C51C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C51E0);
  }

  return result;
}

uint64_t sub_18B506538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B506580(uint64_t a1)
{
  v2 = sub_18B6C543C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18B506744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVGlassBackedGroupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18B50679C(void *a1)
{
  v1 = [a1 containerView];
  [v1 layoutIfNeeded];
}

double sub_18B50684C()
{
  v1 = [v0 containerView];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC5AVKit37InputPickeriPadPresentationController_presentedViewPreferredSize];
  v4 = [v0 sourceView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v5 window];
    [v5 convertRect:v14 toView:{v7, v9, v11, v13}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_18B51F0FC();
    v23 = sub_18B51F1D0();
    v28.origin.x = v16;
    v28.origin.y = v18;
    v28.size.width = v20;
    v28.size.height = v22;
    MinX = CGRectGetMinX(v28);
    if (v23)
    {
      v25 = MinX;
    }

    else
    {
      v25 = MinX - v3;
    }

    v29.origin.x = v16;
    v29.origin.y = v18;
    v29.size.width = v20;
    v29.size.height = v22;
    CGRectGetMinY(v29);
  }

  else
  {
    [v2 bounds];
    UIRectCenteredRect();
    v25 = v26;
  }

  return v25;
}

uint64_t sub_18B506AA8(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for InputPickeriPadPresentationController();
  objc_msgSendSuper2(&v12, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  [a1 preferredContentSize];
  v3 = &v1[OBJC_IVAR____TtC5AVKit37InputPickeriPadPresentationController_presentedViewPreferredSize];
  *v3 = v4;
  *(v3 + 1) = v5;
  v6 = [v1 containerView];
  [v6 setNeedsLayout];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v10 = swift_allocObject();
    v10[2] = sub_18B506FA0;
    v10[3] = v9;
    v10[4] = v8;
    sub_18B4AEB5C();
    v11 = v1;

    swift_unknownObjectRetain();
    sub_18B6C5A3C();

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_18B506C8C(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for InputPickeriPadPresentationController();
  objc_msgSendSuper2(&v9, sel_presentationTransitionDidEnd_, a1 & 1);
  v3 = [v1 containerView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 layer];

    [v5 setHitTestsAsOpaque_];
  }

  v6 = [v1 containerView];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_backgroundTapHandler];
    [v7 addGestureRecognizer_];
  }
}

id sub_18B506EF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InputPickeriPadPresentationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B506FB4()
{
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  sub_18B6C421C();

  return *(v0 + 81);
}

double sub_18B507054()
{
  swift_getKeyPath();
  sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);
  sub_18B6C421C();

  return *(v0 + 88);
}

uint64_t sub_18B5070F4(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23[-1] - v6;
  v23[3] = &type metadata for FeatureFlags;
  v23[4] = sub_18B51370C();
  v8 = sub_18B6C42EC();
  result = __swift_destroy_boxed_opaque_existential_1(v23);
  if (v8)
  {
    v10 = *(v2 + 64);
    swift_getKeyPath();
    v23[0] = v10;
    sub_18B5144D4(&qword_1EA9C3BB0, type metadata accessor for RoutingControllerInputPickerViewModel.State);

    sub_18B6C421C();

    v11 = *(v10 + 88);

    if (vabdd_f64(a1, v11) >= 0.01)
    {
      v12 = *(v2 + 64);
      if (*(v12 + 88) == a1)
      {
        *(v12 + 88) = a1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v14);
        *(&v22 - 2) = v12;
        *(&v22 - 1) = a1;
        v23[0] = v12;

        sub_18B6C420C();
      }

      v15 = *(v2 + 64);
      swift_getKeyPath();
      v23[0] = v15;

      sub_18B6C421C();

      v16 = *(v15 + 81);

      if (v16 == 1)
      {
        v17 = sub_18B6C584C();
        (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
        v18 = swift_allocObject();
        swift_weakInit();
        sub_18B6C580C();

        v19 = sub_18B6C57FC();
        v20 = swift_allocObject();
        v21 = MEMORY[0x1E69E85E0];
        *(v20 + 16) = v19;
        *(v20 + 24) = v21;
        *(v20 + 32) = v18;
        *(v20 + 40) = a1;

        sub_18B5280B4(0, 0, v7, &unk_18B6E9800, v20);
      }
    }
  }

  return result;
}