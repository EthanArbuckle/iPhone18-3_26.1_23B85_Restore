uint64_t FrameArray.iterateMutableFrames(_:)(uint64_t result)
{
  if ((*(v1 + 224) & 1) == 0)
  {
    v2 = result;
    result = (result)(v1);
    if (result)
    {
      v3 = *(v1 + 216);
      if (v3)
      {
        v4 = v3[4];
        v5 = v3[3] + v4;
        if (v3[2] < v5)
        {
          v5 = v3[2];
        }

        v11 = v3[4];
        v12 = v5;
        v6 = swift_retain_n();
        v7 = v3;
        while (1)
        {
          if (v4 == v12)
          {
            if ((sub_181AC81FC(v6) & 1) == 0)
            {
LABEL_11:
            }

            v7 = v3;
            v4 = v11;
          }

          v8 = v4 + 1;
          v11 = v4 + 1;
          v9 = v7[v4 + 5];
          swift_beginAccess();

          v10 = v2(v9 + 16);
          swift_endAccess();

          v4 = v8;
          if ((v10 & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

  return result;
}

__n128 FrameArray.init(frame:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 216) = 0;
  v2 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = *(a1 + 208);
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  result = *a1;
  v8 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v8;
  *(a2 + 224) = 0;
  return result;
}

uint64_t FrameArray.count.getter()
{
  if (*(v0 + 224))
  {
    return 0;
  }

  v2 = *(v0 + 216);
  if (v2)
  {
    v2 = *(v2 + 24);
  }

  result = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t FrameArray.peekFirstFrame<A>(_:)(uint64_t (*a1)(_OWORD *))
{
  v2 = *(v1 + 176);
  v9[10] = *(v1 + 160);
  v9[11] = v2;
  v9[12] = *(v1 + 192);
  v10 = *(v1 + 208);
  v3 = *(v1 + 112);
  v9[6] = *(v1 + 96);
  v9[7] = v3;
  v4 = *(v1 + 144);
  v9[8] = *(v1 + 128);
  v9[9] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  v6 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v6;
  v7 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v7;
  return a1(v9);
}

uint64_t sub_1820E4EE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  if (v6 == 2 && *(v0 + 48) == 0)
  {
    if ((*(v0 + 176) & 1) == 0)
    {
      v8 = *(v0 + 160);
      if (v8)
      {
        MEMORY[0x1865DF520](v8, -1, -1);
      }
    }

    sub_181F68EF4(v1, v2, v3, v4);

    return swift_deallocClassInstance();
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = v1;
    v11 = v5;
    v12 = v2;
    v13 = v6;
    sub_181F68EF4(v10, v12, v3, v4);

    result = sub_181F68F3C(v9, v11, v13);
    __break(1u);
  }

  return result;
}

void *sub_1820E4FEC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[2];
  v4 = *result - v3;
  if (__OFSUB__(*result, v3))
  {
    __break(1u);
  }

  else
  {
    v5 = result[1];
    if (v4 >= v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = result[1];
LABEL_6:
      *a3 = a2 + 16 * v3;
      *(a3 + 8) = v8;
      *(a3 + 16) = v6;
      *(a3 + 24) = v7;
      *(a3 + 32) = v4 >= v5;
      return result;
    }

    v7 = v5 - v4;
    if (!__OFSUB__(v5, v4))
    {
      v8 = *result - v3;
      v6 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1820E504C@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[2];
  v4 = *result - v3;
  if (__OFSUB__(*result, v3))
  {
    __break(1u);
  }

  else
  {
    v5 = result[1];
    if (v4 >= v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = result[1];
LABEL_6:
      *a3 = a2 + 8 * v3;
      *(a3 + 8) = v8;
      *(a3 + 16) = v6;
      *(a3 + 24) = v7;
      *(a3 + 32) = v4 >= v5;
      return result;
    }

    v7 = v5 - v4;
    if (!__OFSUB__(v5, v4))
    {
      v8 = *result - v3;
      v6 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1820E50AC(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[16 * v4], &__src[16 * v4], 16 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 16 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1820E5194(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

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

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
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

uint64_t sub_1820E5268(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

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

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
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

uint64_t sub_1820E5348(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

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

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
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

void sub_1820E541C(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[v4], &__src[v4], v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1820E5500(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

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

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
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

uint64_t sub_1820E55D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

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

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
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

uint64_t sub_1820E56D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

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

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
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

void sub_1820E57B4(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[8 * v4], &__src[8 * v4], 8 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1820E589C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

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

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
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

uint64_t sub_1820E59A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1820E5AB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

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

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
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

uint64_t sub_1820E5BC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v6 = a3[2];
  v7 = *a3 - v6;
  if (__OFSUB__(*a3, v6))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  if (v7 >= v8)
  {
    v10 = 0;
    v9 = 0;
    if (v8 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    v15 = v10;
    if (a4)
    {
      v11 = a5;
      v12 = a6;
      a6(a5);
      result = swift_arrayInitWithCopy();
      a5 = v11;
      a6 = v12;
      v10 = v15;
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = a4;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v7 < v8 && v9 >= 1)
  {
    if (v10)
    {
      a6(a5);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1820E5CF8(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[24 * v4], &__src[24 * v4], 24 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 24 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_1820E5DF0(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[20 * v4], &__src[20 * v4], 20 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 20 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1820E5F38(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v5 = *v3;
  v6 = (*v3 + 16);
  v7 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v8 = swift_allocObject();
  v9 = *(v5 + 24);
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  if (v9 >= 1)
  {
    a3(v8 + 16, v8 + 40, v6, v5 + 40);
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1820E5FD0()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838788);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_1820E5BC8(v5 + 16, v5 + 40, v2, v1 + 40, v4, type metadata accessor for FrameArrayEntry);
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1820E6084()
{
  Frame.deinit();
}

__n128 __swift_memcpy225_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1820E6108(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v9 = *(a1 + 24);
  *(a1 + 24) = v5;
  sub_181F68EF4(v6, v7, v8, v9);
  v10 = *(a2 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  v13 = *(a1 + 48);
  *(a1 + 48) = v10;
  sub_181F68F3C(v11, v12, v13);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v14 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v14;
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 193) = *(a2 + 193);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  return a1;
}

uint64_t sub_1820E6214(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 225))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 168);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1820E6270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 0;
    }

    if (a2)
    {
      *(result + 168) = a2;
    }
  }

  return result;
}

uint64_t sub_1820E6338(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v5 = *v3;
  v6 = (*v3 + 16);
  v7 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v8 = swift_allocObject();
  v9 = *(v5 + 24);
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  if (v9 >= 1)
  {
    a3(v8 + 16, v8 + 40, v6, v5 + 40);
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1820E63D0()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838778);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_1820E589C(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1820E6474()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386D0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_1820E5AB8(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1820E6558(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = result;
  result = *v4;
  v7 = *(*v4 + 24);
  if (v7 < a4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  if (*(*v4 + 16) >= v8 && (result & 1) != 0)
  {
    v12 = (v11 + 5);
    if (a4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  result = sub_181F46590(result, v8);
  v11 = *v4;
  v12 = (*v4 + 40);
  if (!a4)
  {
LABEL_10:
    v13 = v11[4];
    if (v13)
    {
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        __break(1u);
LABEL_14:

        result = sub_18207FA9C(v12, 1uLL, a4, v11 + 2, &v21);
        v16 = v21;
        if (v21)
        {
          *v21 = v6;
          v16[1] = a2;
          v16[2] = a3;
LABEL_19:

          goto LABEL_20;
        }

LABEL_28:
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v11[2];
      v14 = __OFSUB__(v17, 1);
      v15 = v17 - 1;
      if (v14)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    v18 = &v12[24 * v15];
    *v18 = v6;
    v18[1] = a2;
    v18[2] = a3;
    v11[4] = v15;
    v19 = v11[3];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v14)
    {
      v11[3] = v20;

      goto LABEL_19;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_7:
  if (v11[3] != a4)
  {
    goto LABEL_14;
  }

  sub_18207F2DC(v6, a2, a3, v11 + 2, v12);

LABEL_20:
}

uint64_t sub_1820E66DC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = v6;
  v10 = a4;
  v11 = a3;
  v12 = 0;
  v13 = a1[11];
  v271 = a1[10];
  v272 = v13;
  v273 = a1[12];
  v274 = *(a1 + 208);
  v14 = a1[7];
  v267 = a1[6];
  v268 = v14;
  v15 = a1[9];
  v269 = a1[8];
  v270 = v15;
  v16 = a1[3];
  v263 = a1[2];
  v264 = v16;
  v17 = a1[5];
  v265 = a1[4];
  v266 = v17;
  v18 = a1[1];
  v19 = &__nwlog_fault_add_description_to_list(char const*)::mutex.__opaque[48];
  v20 = &unk_1EA843000;
  v261 = *a1;
  v262 = v18;
  if ((a5 & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = *(v6 + 48);
  v5 = a4;
  v22 = a3 + a4;
  v23 = __OFADD__(a3, a4);
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v23)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v23)
  {
    __break(1u);
    goto LABEL_259;
  }

  if (v21 != v22)
  {
LABEL_259:
    sub_182AD3BA8();

    *&v247 = 0xD00000000000001CLL;
    *(&v247 + 1) = 0x8000000182BDDE20;
    v145 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v145);

    MEMORY[0x1865D9CA0](0x2077656E202CLL, 0xE600000000000000);
    v244 = v22;
    v146 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v146);

    v147 = v247;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v148 = sub_182AD2698();
    __swift_project_value_buffer(v148, qword_1EA843418);

    v149 = sub_182AD2678();
    v150 = sub_182AD38B8();

    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v247 = v12;
      *v151 = 136315650;
      v152 = sub_182AD3BF8();
      v8 = sub_181C64FFC(v152, v153, &v247);

      *(v151 + 4) = v8;
      *(v151 + 12) = 2080;
      *(v151 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v247);
      *(v151 + 22) = 2080;
      v154 = sub_181C64FFC(v147, *(&v147 + 1), &v247);

      *(v151 + 24) = v154;
      _os_log_impl(&dword_181A37000, v149, v150, "%s %s %s", v151, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v12, -1, -1);
      MEMORY[0x1865DF520](v151, -1, -1);
    }

    else
    {
    }

    v257 = v271;
    v258 = v272;
    v259 = v273;
    v260 = v274;
    v253 = v267;
    v254 = v268;
    v255 = v269;
    v256 = v270;
    v249 = v263;
    v250 = v264;
    v251 = v265;
    v252 = v266;
    v247 = v261;
    v248 = v262;
    if (sub_18206B164(&v247) == 1)
    {
      return 0;
    }

    v170 = *(&v249 + 1);
    v5 = v249;
    v7 = v250;
    if (v250 == 2 && v249 == 0)
    {
      goto LABEL_290;
    }

    sub_181F68EF4(v247, *(&v247 + 1), v248, BYTE8(v248));

    sub_181F68F3C(v5, v170, v7);
    __break(1u);
    goto LABEL_284;
  }

LABEL_10:
  *(v6 + 48) = v22;
  if (qword_1EA837250 != -1)
  {
LABEL_241:
    v126 = a2;
    swift_once();
    a2 = v126;
  }

  v10 = v5;
  if (*(v20 + 1072) == 1)
  {
    v24 = a2;
    if (!__nwlog_is_datapath_logging_enabled())
    {
      a2 = v24;
      goto LABEL_14;
    }

    v235 = v11;
    v236 = v24;
    *&v247 = 0;
    *(&v247 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v247 = 0xD000000000000012;
    *(&v247 + 1) = 0x8000000182BDDE40;
    v244 = *(v9 + 48);
    v155 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v155);

    v156 = v247;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v157 = sub_182AD2698();
    __swift_project_value_buffer(v157, qword_1EA843418);
    v158 = swift_allocObject();
    *(v158 + 16) = "append(frame:buffer:offset:length:fin:)";
    *(v158 + 24) = 39;
    *(v158 + 32) = 2;
    v159 = swift_allocObject();
    *(v159 + 16) = sub_181F8C724;
    *(v159 + 24) = v158;
    v160 = swift_allocObject();
    *(v160 + 16) = 1564427099;
    *(v160 + 24) = 0xE400000000000000;
    v161 = swift_allocObject();
    *(v161 + 16) = v156;
    v238 = *(&v156 + 1);

    oslog = sub_182AD2678();
    v162 = sub_182AD38A8();
    v229 = swift_allocObject();
    *(v229 + 16) = 32;
    v231 = swift_allocObject();
    *(v231 + 16) = 8;
    v163 = swift_allocObject();
    *(v163 + 16) = sub_181F8C71C;
    *(v163 + 24) = v159;
    v164 = swift_allocObject();
    *(v164 + 16) = sub_181F8C718;
    *(v164 + 24) = v163;
    v232 = swift_allocObject();
    *(v232 + 16) = 32;
    v8 = 32;
    v233 = swift_allocObject();
    *(v233 + 16) = 8;
    v165 = swift_allocObject();
    *(v165 + 16) = sub_181F8C720;
    *(v165 + 24) = v160;
    v166 = swift_allocObject();
    *(v166 + 16) = sub_181F8C718;
    *(v166 + 24) = v165;
    v234 = swift_allocObject();
    *(v234 + 16) = 32;
    v237 = swift_allocObject();
    *(v237 + 16) = 8;
    v167 = swift_allocObject();
    *(v167 + 16) = sub_181F8C720;
    *(v167 + 24) = v161;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_181F8C718;
    *(v7 + 24) = v167;
    v168 = v162;
    v169 = v162;
    v170 = oslog;
    if (os_log_type_enabled(oslog, v169))
    {
      v227 = v7;
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v8 = v171;
      *v171 = 770;
      v224 = v172;
      v242[0] = v172;
      v243 = 0;
      v244 = v171 + 2;
      *&v247 = sub_181F8C728;
      *(&v247 + 1) = v229;
      v7 = v12;
      sub_181F73AE0(&v247, &v244, &v243, v242);
      if (v12)
      {

        while (1)
        {

          __break(1u);
        }
      }

      *&v247 = sub_181F8C728;
      *(&v247 + 1) = v231;
      sub_181F73AE0(&v247, &v244, &v243, v242);

      *&v247 = sub_181F8C714;
      *(&v247 + 1) = v164;
      sub_181F73AE0(&v247, &v244, &v243, v242);

      *&v247 = sub_181F8C728;
      *(&v247 + 1) = v232;
      sub_181F73AE0(&v247, &v244, &v243, v242);

      *&v247 = sub_181F8C728;
      *(&v247 + 1) = v233;
      sub_181F73AE0(&v247, &v244, &v243, v242);

      *&v247 = sub_181F8C714;
      *(&v247 + 1) = v166;
      sub_181F73AE0(&v247, &v244, &v243, v242);

      *&v247 = sub_181F8C728;
      *(&v247 + 1) = v234;
      sub_181F73AE0(&v247, &v244, &v243, v242);

      *&v247 = sub_181F8C728;
      *(&v247 + 1) = v237;
      sub_181F73AE0(&v247, &v244, &v243, v242);

      *&v247 = sub_181F8C714;
      *(&v247 + 1) = v227;
      sub_181F73AE0(&v247, &v244, &v243, v242);

      _os_log_impl(&dword_181A37000, oslog, v168, "%s %s %s", v171, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v224, -1, -1);
      MEMORY[0x1865DF520](v171, -1, -1);

LABEL_285:
      v9 = v241;
      v11 = v235;
      a2 = v236;
      v10 = v5;
      v25 = v241[5];
      if (v5)
      {
        goto LABEL_15;
      }

      goto LABEL_286;
    }

LABEL_284:

    goto LABEL_285;
  }

LABEL_14:
  v25 = *(v9 + 40);
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_286:
  if (v25)
  {
    v257 = v271;
    v258 = v272;
    v259 = v273;
    v260 = v274;
    v253 = v267;
    v254 = v268;
    v255 = v269;
    v256 = v270;
    v249 = v263;
    v250 = v264;
    v251 = v265;
    v252 = v266;
    v247 = v261;
    v248 = v262;
    if (sub_18206B164(&v247) == 1)
    {
      return 0;
    }

    v32 = *(&v249 + 1);
    v5 = v249;
    LOBYTE(v33) = v250;
    if (v250 != 2 || v249 != 0)
    {
      goto LABEL_341;
    }

LABEL_290:
    if ((v257 & 1) == 0 && v256)
    {
      MEMORY[0x1865DF520](v256, -1, -1);
    }

    sub_181F68EF4(v247, *(&v247 + 1), v248, BYTE8(v248));

    return 0;
  }

LABEL_15:
  v26 = *(v9 + 16);
  if (v26 <= v11)
  {
    v236 = a2;
    v234 = v25;
    v8 = 0;
    v28 = 0;
    if (!(v10 | v11))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v5 = v10;
  v27 = __OFADD__(v11, v10);
  v10 += v11;
  if (v27)
  {
    goto LABEL_243;
  }

  if (v26 >= v10)
  {
    if (*(v19 + 592) == -1)
    {
LABEL_80:
      if (*(v20 + 1072) != 1 || !__nwlog_is_datapath_logging_enabled())
      {
        goto LABEL_82;
      }

      v228 = v12;
      *&v247 = 0;
      *(&v247 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v247 = 0xD00000000000001BLL;
      *(&v247 + 1) = 0x8000000182BDDDE0;
      v244 = v11;
      v186 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v186);

      MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
      v244 = v10;
      v187 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v187);

      v241 = *(&v247 + 1);
      v188 = v247;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v189 = sub_182AD2698();
      __swift_project_value_buffer(v189, qword_1EA843418);
      v190 = swift_allocObject();
      *(v190 + 16) = "append(frame:buffer:offset:length:fin:)";
      *(v190 + 24) = 39;
      *(v190 + 32) = 2;
      v191 = swift_allocObject();
      *(v191 + 16) = sub_181F8C724;
      *(v191 + 24) = v190;
      v192 = swift_allocObject();
      *(v192 + 16) = 1564427099;
      *(v192 + 24) = 0xE400000000000000;
      v193 = swift_allocObject();
      *(v193 + 16) = v188;
      *(v193 + 24) = v241;

      v194 = sub_182AD2678();
      v8 = sub_182AD38A8();
      v195 = swift_allocObject();
      *(v195 + 16) = 32;
      v236 = swift_allocObject();
      *(v236 + 16) = 8;
      v196 = swift_allocObject();
      *(v196 + 16) = sub_181F8C71C;
      *(v196 + 24) = v191;
      v197 = swift_allocObject();
      *(v197 + 16) = sub_181F8C718;
      *(v197 + 24) = v196;
      v11 = swift_allocObject();
      *(v11 + 16) = 32;
      v237 = swift_allocObject();
      *(v237 + 16) = 8;
      v198 = swift_allocObject();
      *(v198 + 16) = sub_181F8C720;
      *(v198 + 24) = v192;
      v199 = swift_allocObject();
      *(v199 + 16) = sub_181F8C718;
      *(v199 + 24) = v198;
      v238 = swift_allocObject();
      *(v238 + 16) = 32;
      osloga = swift_allocObject();
      LOBYTE(osloga[2].isa) = 8;
      v200 = swift_allocObject();
      *(v200 + 16) = sub_181F8C720;
      *(v200 + 24) = v193;
      v201 = swift_allocObject();
      *(v201 + 16) = sub_181F8C718;
      *(v201 + 24) = v200;
      LODWORD(v235) = v8;
      v10 = v194;
      if (os_log_type_enabled(v194, v8))
      {
        v8 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        *v8 = 770;
        v242[0] = v202;
        v243 = 0;
        v244 = (v8 + 2);
        *&v247 = sub_181F8C728;
        *(&v247 + 1) = v195;
        sub_181F73AE0(&v247, &v244, &v243, v242);
        if (v228)
        {

          while (1)
          {

            __break(1u);
          }
        }

        *&v247 = sub_181F8C728;
        *(&v247 + 1) = v236;
        sub_181F73AE0(&v247, &v244, &v243, v242);

        *&v247 = sub_181F8C714;
        *(&v247 + 1) = v197;
        sub_181F73AE0(&v247, &v244, &v243, v242);

        *&v247 = sub_181F8C728;
        *(&v247 + 1) = v11;
        sub_181F73AE0(&v247, &v244, &v243, v242);

        *&v247 = sub_181F8C728;
        *(&v247 + 1) = v237;
        sub_181F73AE0(&v247, &v244, &v243, v242);

        *&v247 = sub_181F8C714;
        *(&v247 + 1) = v199;
        sub_181F73AE0(&v247, &v244, &v243, v242);

        *&v247 = sub_181F8C728;
        *(&v247 + 1) = v238;
        sub_181F73AE0(&v247, &v244, &v243, v242);

        *&v247 = sub_181F8C728;
        *(&v247 + 1) = osloga;
        sub_181F73AE0(&v247, &v244, &v243, v242);

        *&v247 = sub_181F8C714;
        *(&v247 + 1) = v201;
        sub_181F73AE0(&v247, &v244, &v243, v242);

        _os_log_impl(&dword_181A37000, v10, v235, "%s %s %s", v8, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v202, -1, -1);
        MEMORY[0x1865DF520](v8, -1, -1);

        goto LABEL_82;
      }

      goto LABEL_315;
    }

LABEL_269:
    swift_once();
    goto LABEL_80;
  }

  v236 = a2;
  v234 = v25;
  v8 = v26 - v11;
  if (__OFSUB__(v26, v11))
  {
    __break(1u);
    goto LABEL_269;
  }

  v10 = v5;
  if (*(v19 + 592) != -1)
  {
    swift_once();
  }

  if (*(v20 + 1072) != 1 || !__nwlog_is_datapath_logging_enabled())
  {
    v27 = __OFADD__(v11, v8);
    v11 += v8;
    if (!v27)
    {
      goto LABEL_24;
    }

LABEL_319:
    __break(1u);
    goto LABEL_320;
  }

  *&v247 = 0;
  *(&v247 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v247 = 0xD00000000000001ALL;
  *(&v247 + 1) = 0x8000000182BDDE00;
  v244 = v11;
  v203 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v203);

  MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
  v235 = v11;
  if (__OFADD__(v11, v8))
  {
    __break(1u);
  }

  else
  {
    v244 = (v11 + v8);
    v204 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v204);

    oslog = *(&v247 + 1);
    v9 = v247;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_303;
    }
  }

  swift_once();
LABEL_303:
  v205 = sub_182AD2698();
  __swift_project_value_buffer(v205, qword_1EA843418);
  v206 = swift_allocObject();
  *(v206 + 16) = "append(frame:buffer:offset:length:fin:)";
  *(v206 + 24) = 39;
  *(v206 + 32) = 2;
  v207 = swift_allocObject();
  *(v207 + 16) = sub_181F8C724;
  *(v207 + 24) = v206;
  v208 = swift_allocObject();
  *(v208 + 16) = 1564427099;
  *(v208 + 24) = 0xE400000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = v9;
  *(v7 + 24) = oslog;

  v222 = sub_182AD2678();
  v209 = sub_182AD38A8();
  v225 = swift_allocObject();
  *(v225 + 16) = 32;
  v229 = swift_allocObject();
  *(v229 + 16) = 8;
  v210 = swift_allocObject();
  *(v210 + 16) = sub_181F8C71C;
  *(v210 + 24) = v207;
  v211 = swift_allocObject();
  *(v211 + 16) = sub_181F8C718;
  *(v211 + 24) = v210;
  v231 = swift_allocObject();
  *(v231 + 16) = 32;
  v232 = swift_allocObject();
  *(v232 + 16) = 8;
  v212 = swift_allocObject();
  *(v212 + 16) = sub_181F8C720;
  *(v212 + 24) = v208;
  v213 = swift_allocObject();
  *(v213 + 16) = sub_181F8C718;
  *(v213 + 24) = v212;
  v233 = swift_allocObject();
  *(v233 + 16) = 32;
  v237 = swift_allocObject();
  *(v237 + 16) = 8;
  v214 = swift_allocObject();
  *(v214 + 16) = sub_181F8C720;
  *(v214 + 24) = v7;
  v215 = swift_allocObject();
  *(v215 + 16) = sub_181F8C718;
  *(v215 + 24) = v214;
  v238 = v215;
  if (os_log_type_enabled(v222, v209))
  {
    v7 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    *v7 = 770;
    v242[0] = v220;
    v243 = 0;
    v244 = (v7 + 2);
    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v225;
    sub_181F73AE0(&v247, &v244, &v243, v242);
    if (v12)
    {

      while (1)
      {

        __break(1u);
      }
    }

    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v229;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C714;
    *(&v247 + 1) = v211;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v231;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v232;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C714;
    *(&v247 + 1) = v213;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v233;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v237;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C714;
    *(&v247 + 1) = v238;
    sub_181F73AE0(&v247, &v244, &v243, v242);
    v12 = 0;

    _os_log_impl(&dword_181A37000, v222, v209, "%s %s %s", 0, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v220, -1, -1);
    MEMORY[0x1865DF520](0, -1, -1);

    v9 = v241;
    v216 = v235;
  }

  else
  {

    v9 = v241;
    v216 = v235;
  }

  v10 = v5;
  v27 = __OFADD__(v216, v8);
  v11 = v216 + v8;
  if (v27)
  {
    goto LABEL_319;
  }

LABEL_24:
  v27 = __OFSUB__(v10, v8);
  v10 -= v8;
  if (v27)
  {
    __break(1u);
    goto LABEL_271;
  }

  if (!(v11 | v10))
  {
    v11 = 0;
    *(v9 + 24) = 0;
LABEL_45:
    v257 = v271;
    v258 = v272;
    v259 = v273;
    v260 = v274;
    v253 = v267;
    v254 = v268;
    v255 = v269;
    v256 = v270;
    v249 = v263;
    v250 = v264;
    v251 = v265;
    v252 = v266;
    v247 = v261;
    v248 = v262;
    if (sub_18206B164(&v247) != 1)
    {
      v33 = *(&v249 + 1);
      v32 = v249;
      LOBYTE(v10) = v250;
      if (v250 != 2 || v249 != 0)
      {
        goto LABEL_340;
      }

      if ((v257 & 1) == 0 && v256)
      {
        MEMORY[0x1865DF520](v256, -1, -1);
      }

      sub_181F68EF4(v247, *(&v247 + 1), v248, BYTE8(v248));
    }

    v10 = 0;
    v237 = MEMORY[0x1E69E7CC0];
    goto LABEL_53;
  }

LABEL_28:
  v29 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    goto LABEL_248;
  }

  v27 = __OFSUB__(v29, 1);
  v28 = v29 - 1;
  if (v27)
  {
    goto LABEL_249;
  }

  if (v28 <= *(v9 + 24))
  {
    v28 = *(v9 + 24);
  }

LABEL_32:
  *(v9 + 24) = v28;
  if (!v10)
  {
    goto LABEL_45;
  }

  v5 = v10 - v8;
  if (v10 < v8)
  {
    goto LABEL_250;
  }

  if (v8 < 0)
  {
    goto LABEL_251;
  }

  v30 = *(v236 + 16);
  if (v30 < v8 || v30 < v10)
  {
    goto LABEL_252;
  }

  v237 = swift_unknownObjectRetain();
  if (v30 != v5)
  {
    goto LABEL_253;
  }

LABEL_38:
  v257 = v271;
  v258 = v272;
  v259 = v273;
  v260 = v274;
  v253 = v267;
  v254 = v268;
  v255 = v269;
  v256 = v270;
  v249 = v263;
  v250 = v264;
  v251 = v265;
  v252 = v266;
  v247 = v261;
  v248 = v262;
  if (sub_18206B164(&v247) == 1)
  {
    goto LABEL_53;
  }

  v31 = v11;
  v33 = *(&v249 + 1);
  v32 = v249;
  v11 = v250;
  if (v250 == 2 && v249 == 0)
  {
    v11 = v31;
    if ((v257 & 1) == 0 && v256)
    {
      MEMORY[0x1865DF520](v256, -1, -1);
    }

    sub_181F68EF4(v247, *(&v247 + 1), v248, BYTE8(v248));

LABEL_53:
    if (*(v19 + 592) != -1)
    {
      goto LABEL_239;
    }

    goto LABEL_54;
  }

  sub_181F68EF4(v247, *(&v247 + 1), v248, BYTE8(v248));

  sub_181F68F3C(v32, v33, v11);
  __break(1u);
LABEL_340:
  sub_181F68EF4(v247, *(&v247 + 1), v248, BYTE8(v248));

  sub_181F68F3C(v32, v33, v10);
  __break(1u);
LABEL_341:
  sub_181F68EF4(v247, *(&v247 + 1), v248, BYTE8(v248));

  sub_181F68F3C(v5, v32, v33);
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_343:
    swift_once();
LABEL_255:
    v130 = sub_182AD2698();
    __swift_project_value_buffer(v130, qword_1EA843418);
    v131 = swift_allocObject();
    *(v131 + 16) = "append(frame:buffer:offset:length:fin:)";
    *(v131 + 24) = 39;
    *(v131 + 32) = 2;
    v132 = swift_allocObject();
    *(v132 + 16) = sub_181F8C724;
    *(v132 + 24) = v131;
    v133 = swift_allocObject();
    *(v133 + 16) = 1564427099;
    *(v133 + 24) = 0xE400000000000000;
    v134 = swift_allocObject();
    *(v134 + 16) = v9;
    *(v134 + 24) = v11;

    v135 = sub_182AD2678();
    v136 = sub_182AD38A8();
    v223 = swift_allocObject();
    *(v223 + 16) = 32;
    v226 = swift_allocObject();
    *(v226 + 16) = 8;
    v137 = swift_allocObject();
    *(v137 + 16) = sub_181F8C71C;
    *(v137 + 24) = v132;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C718;
    *(v20 + 24) = v137;
    v230 = swift_allocObject();
    *(v230 + 16) = 32;
    v231 = swift_allocObject();
    *(v231 + 16) = 8;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_181F8C720;
    *(v138 + 24) = v133;
    v139 = swift_allocObject();
    *(v139 + 16) = sub_181F8C718;
    *(v139 + 24) = v138;
    v232 = v139;
    v233 = swift_allocObject();
    *(v233 + 16) = 32;
    v19 = swift_allocObject();
    *(v19 + 16) = 8;
    v140 = swift_allocObject();
    *(v140 + 16) = sub_181F8C720;
    *(v140 + 24) = v134;
    v141 = swift_allocObject();
    *(v141 + 16) = sub_181F8C718;
    *(v141 + 24) = v140;
    v142 = v136;
    v9 = v135;
    if (!os_log_type_enabled(v135, v136))
    {
      goto LABEL_273;
    }

    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *v143 = 770;
    v221 = v144;
    v242[0] = v144;
    v243 = 0;
    v244 = v143 + 2;
    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v223;
    sub_181F73AE0(&v247, &v244, &v243, v242);
    if (v12)
    {

      while (1)
      {

        __break(1u);
      }
    }

    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v226;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C714;
    *(&v247 + 1) = v20;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v230;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v231;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C714;
    *(&v247 + 1) = v232;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v233;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C728;
    *(&v247 + 1) = v19;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    *&v247 = sub_181F8C714;
    *(&v247 + 1) = v141;
    sub_181F73AE0(&v247, &v244, &v243, v242);

    _os_log_impl(&dword_181A37000, v135, v142, "%s %s %s", v143, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v221, -1, -1);
    MEMORY[0x1865DF520](v143, -1, -1);

LABEL_274:
    v9 = v241;
    v11 = v235;
    v10 = v238;
    while (1)
    {
      swift_beginAccess();
      v34 = *(v9 + 64);
      v35 = *(v34 + 3);
      if (!v35)
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = *(v9 + 64);
        if (*(v52 + 16) < 1 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_181F46590(isUniquelyReferenced_nonNull_native, 1);
          v52 = *(v9 + 64);
        }

        sub_181F46BDC((v52 + 16), v52 + 40, v11, v10, v237);
        swift_endAccess();
        *(v9 + 40) = v10;
        if (*(v9 + 16) == v11)
        {
          *(v9 + 32) = v10;
        }

        else
        {
          *(v9 + 32) = 0;
        }

        goto LABEL_95;
      }

      v36 = v35 - 1;
      if (__OFSUB__(v35, 1))
      {
        goto LABEL_244;
      }

      if (v36 < 0)
      {
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        v5 = v236;
        sub_1822D0918(v236, v236 + 32, v8, (2 * v10) | 1);
        v237 = v127;

        goto LABEL_38;
      }

      if (v36 >= v35)
      {
        goto LABEL_246;
      }

      v7 = *(v34 + 4);
      v37 = v7 + v36;
      v38 = *(v34 + 2);
      if (v37 >= v38)
      {
        v39 = *(v34 + 2);
      }

      else
      {
        v39 = 0;
      }

      v40 = &v34[24 * (v37 - v39)];
      v42 = *(v40 + 5);
      v41 = *(v40 + 6);
      v27 = __OFADD__(v42, v41);
      v43 = v42 + v41;
      if (v27)
      {
        goto LABEL_247;
      }

      if (v11 == v43)
      {
        swift_beginAccess();
        v44 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:

          goto LABEL_274;
        }

        v45 = swift_isUniquelyReferenced_nonNull_native();
        v46 = *(v9 + 64);
        v5 = v237;
        if (*(v46 + 16) < v44 || (v45 & 1) == 0)
        {
          sub_181F46590(v45, v44);
          v46 = *(v9 + 64);
        }

        sub_181F46BDC((v46 + 16), v46 + 40, v11, v10, v237);
        swift_endAccess();
        v48 = *(v9 + 32);
        v47 = *(v9 + 40);
        if (v48 != v47)
        {
LABEL_72:
          v27 = __OFADD__(v47, v10);
          v50 = v47 + v10;
          if (!v27)
          {
            *(v9 + 40) = v50;
LABEL_95:

            return v10;
          }

          goto LABEL_272;
        }

        v27 = __OFADD__(v48, v10);
        v49 = v48 + v10;
        if (!v27)
        {
          *(v9 + 32) = v49;
          goto LABEL_72;
        }

        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

LABEL_86:
      if (v38 >= v7 + v35)
      {
        v5 = v7 + v35;
      }

      else
      {
        v5 = v38;
      }

      v244 = v34;
      v245 = v7;
      v246 = v5;

      if (v7 == v5)
      {
        v54 = sub_181AC81FC(v53);
        v34 = v244;
        if ((v54 & 1) == 0)
        {
          v9 = 1;
          goto LABEL_104;
        }

        v7 = v245;
      }

      v19 = v7 + 1;
      v245 = v7 + 1;
      v55 = &v34[24 * v7];
      v58 = *(v55 + 5);
      v56 = v55 + 40;
      v57 = v58;
      if (v11 < v58)
      {
        break;
      }

      v10 = 0;
      v20 = 0;
      v9 = 1;
      v12 = 24;
      while (1)
      {
        oslog = v57;
        v7 = v20;
        v5 = v56[1];
        v20 = v56[2];

        if (v19 == v246)
        {
          v60 = sub_181AC81FC(v59);
          v34 = v244;
          if ((v60 & 1) == 0)
          {
            goto LABEL_215;
          }

          v19 = v245;
        }

        v245 = v19 + 1;
        if (__OFADD__(v10 + 1, 1))
        {
          break;
        }

        v61 = &v34[24 * v19];
        v62 = *(v61 + 5);
        v56 = v61 + 40;
        v57 = v62;
        v63 = v10++;
        ++v19;
        if (v11 < v62)
        {
          v229 = v63;
          v9 = 0;
          goto LABEL_216;
        }
      }

LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      swift_once();
LABEL_54:
      v238 = v10;
      if (*(v20 + 1072) == 1 && __nwlog_is_datapath_logging_enabled())
      {
        *&v247 = 0;
        *(&v247 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v247 = 0xD00000000000001CLL;
        *(&v247 + 1) = 0x8000000182BDDDC0;
        v235 = v11;
        v244 = v11;
        v128 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v128);

        MEMORY[0x1865D9CA0](0x206E656C20, 0xE500000000000000);
        v244 = v10;
        v129 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v129);

        v11 = *(&v247 + 1);
        v9 = v247;
        if (qword_1EA837248 != -1)
        {
          goto LABEL_343;
        }

        goto LABEL_255;
      }
    }

    v9 = 0;
LABEL_104:

    v10 = 0;
    v20 = 0;
    oslog = 0;
    v229 = 0;
    v64 = 1;
    v65 = 1;
LABEL_105:
    v12 = v237;
    v19 = v238;
LABEL_106:
    while (2)
    {
      v237 = v12;
      v12 = v10 + v9;
      v9 = v241;
      v66 = v241[8];
      v232 = v19;
      LOBYTE(v231) = v64;
      LOBYTE(v233) = v65;
      if (v12 >= v66[3])
      {
        goto LABEL_164;
      }

      v236 = v11 + v19;
      if (__OFADD__(v11, v19))
      {
        goto LABEL_307;
      }

      v10 = v238;
      if (v12 < 0)
      {
        goto LABEL_308;
      }

      v8 = v12 + 1;
      v5 = 24;
      v235 = v11;
      while (1)
      {
        v67 = v66[4] + v12;
        v68 = v66[2];
        if (v67 < v68)
        {
          v68 = 0;
        }

        v69 = &v66[3 * (v67 - v68)];
        v71 = v69[5];
        v70 = v69 + 5;
        v7 = v236 - v71;
        if (__OFSUB__(v236, v71))
        {
          goto LABEL_237;
        }

        if (v7 < 1)
        {
          goto LABEL_164;
        }

        if (v7 < v70[1])
        {
          break;
        }

        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1820E63D0();
        }

        v72 = *(v9 + 64);
        if (v12 >= *(v72 + 24))
        {
          goto LABEL_238;
        }

        v73 = *(v72 + 32);
        v74 = *(v72 + 16);
        if (v73 + v12 >= v74)
        {
          v75 = *(v72 + 16);
        }

        else
        {
          v75 = 0;
        }

        v76 = v73 + v12 - v75;
        v77 = v73 + v8;
        if (v77 >= v74)
        {
          v78 = *(v72 + 16);
        }

        else
        {
          v78 = 0;
        }

        v79 = v77 - v78;
        v7 = v72 + 40;
        if (v76 >= v79)
        {
          v9 = v74 - v76;
          if (__OFSUB__(v74, v76))
          {
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
            goto LABEL_245;
          }

          v80 = v72 + 40;
          v81 = v79;
        }

        else
        {
          v80 = 0;
          v81 = 0;
        }

        v19 = v7 + 24 * v76;
        v82 = v76 < v79 || v81 == 0;
        v83 = v82;
        if (v82)
        {
          v84 = 0;
        }

        else
        {
          v84 = v80;
        }

        swift_arrayDestroy();
        if ((v83 & 1) == 0 && v84)
        {
          swift_arrayDestroy();
        }

        sub_18226F1D0(v12, v12 + 1, (v72 + 16), (v72 + 40));
        swift_endAccess();

        v9 = v241;
        v66 = v241[8];
        v11 = v235;
        v10 = v238;
        v5 = 24;
        if (v12 >= v66[3])
        {
          goto LABEL_164;
        }
      }

      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1820E63D0();
      }

      v85 = *(v9 + 64);
      v86 = *(v85 + 32) + v12;
      v87 = *(v85 + 16);
      if (v86 < v87)
      {
        v87 = 0;
      }

      v88 = v85 + 24 * (v86 - v87);
      v90 = *(v88 + 40);
      v89 = (v88 + 40);
      v91 = v90 + v7;
      if (__OFADD__(v90, v7))
      {
        goto LABEL_325;
      }

      *v89 = v91;
      if (v12 >= *(*(v9 + 64) + 24))
      {
        goto LABEL_326;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1820E63D0();
      }

      v92 = *(v9 + 64);
      v93 = *(v92 + 32) + v12;
      v94 = *(v92 + 16);
      if (v93 < v94)
      {
        v94 = 0;
      }

      v95 = v92 + 24 * (v93 - v94);
      v97 = *(v95 + 48);
      v96 = (v95 + 48);
      v98 = v97 - v7;
      if (__OFSUB__(v97, v7))
      {
        goto LABEL_327;
      }

      *v96 = v98;
      swift_endAccess();
      v5 = v10 - v7;
      if (v10 < v7)
      {
        goto LABEL_328;
      }

      v99 = *(v9 + 64);
      if (v12 >= v99[3])
      {
        goto LABEL_329;
      }

      v100 = v99[4] + v12;
      v101 = v99[2];
      if (v100 < v101)
      {
        v101 = 0;
      }

      v8 = v99[3 * (v100 - v101) + 7];
      v102 = *(v8 + 16);
      if (v102 < v10)
      {
        goto LABEL_330;
      }

      swift_unknownObjectRetain();
      if (v102 != v5)
      {
        goto LABEL_331;
      }

LABEL_158:
      swift_beginAccess();
      if (v12 >= *(*(v9 + 64) + 24))
      {
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        sub_1822D0918(v12, v12 + 32, v102, (2 * v238) | 1);
        v219 = v218;

        v64 = 0;
        v65 = 0;
        v12 = v219;
        continue;
      }

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1820E63D0();
    }

    v103 = *(v9 + 64);
    v104 = *(v103 + 32) + v12;
    v105 = *(v103 + 16);
    if (v104 < v105)
    {
      v105 = 0;
    }

    *(v103 + 24 * (v104 - v105) + 56) = v8;
    swift_endAccess();

LABEL_164:
    if ((v233 & 1) == 0)
    {
LABEL_174:
      v10 = v237;
      if (v231)
      {
        continue;
      }

      if (v11 < oslog)
      {

LABEL_180:
        if (!__OFADD__(v229, 1))
        {
          swift_beginAccess();
          sub_1820E6558(v11, v232, v237, v229 + 1);
          swift_endAccess();
          goto LABEL_185;
        }

        __break(1u);
LABEL_315:

LABEL_82:
        v257 = v271;
        v258 = v272;
        v259 = v273;
        v260 = v274;
        v253 = v267;
        v254 = v268;
        v255 = v269;
        v256 = v270;
        v249 = v263;
        v250 = v264;
        v251 = v265;
        v252 = v266;
        v247 = v261;
        v248 = v262;
        if (sub_18206B164(&v247) == 1)
        {
          return 0;
        }

        v34 = *(&v249 + 1);
        v35 = v249;
        v7 = v250;
        if (v250 == 2 && v249 == 0)
        {
          goto LABEL_290;
        }

        sub_181F68EF4(v247, *(&v247 + 1), v248, BYTE8(v248));

        sub_181F68F3C(v35, v34, v7);
        __break(1u);
        goto LABEL_86;
      }

      v111 = *(v237 + 16);
      v5 = v11 + v111;
      if (__OFADD__(v11, v111))
      {
LABEL_322:
        __break(1u);
      }

      else
      {
        v112 = *(v20 + 16);

        if (!__OFADD__(oslog, v112))
        {
          if (oslog + v112 >= v5)
          {
            goto LABEL_223;
          }

          goto LABEL_180;
        }
      }

      __break(1u);
      goto LABEL_324;
    }

    break;
  }

  swift_beginAccess();
  v106 = *(*(v9 + 64) + 24);
  v5 = v237;
  if (v106 < 0)
  {
    goto LABEL_309;
  }

  v7 = v106 + 1;
  if (__OFADD__(v106, 1))
  {
    goto LABEL_310;
  }

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *(v9 + 64);
  if (v108[2] < v7 || (v107 & 1) == 0)
  {
    sub_181F46590(v107, v7);
    v108 = *(v9 + 64);
  }

  v109 = v108[4];
  if (v109)
  {
    v27 = __OFSUB__(v109, 1);
    v110 = v109 - 1;
    if (!v27)
    {
      goto LABEL_183;
    }

    __break(1u);
    goto LABEL_174;
  }

  v113 = v108[2];
  v27 = __OFSUB__(v113, 1);
  v110 = v113 - 1;
  if (v27)
  {
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    __break(1u);
LABEL_331:
    sub_1822D0918(v8, v8 + 32, v7, (2 * v10) | 1);
    v102 = v217;

    v8 = v102;
    goto LABEL_158;
  }

LABEL_183:
  v114 = &v108[3 * v110];
  v114[5] = v11;
  v114[6] = v232;
  v114[7] = v237;
  v108[4] = v110;
  v115 = v108[3];
  v27 = __OFADD__(v115, 1);
  v116 = v115 + 1;
  if (v27)
  {
    goto LABEL_311;
  }

  v108[3] = v116;
  swift_endAccess();

LABEL_185:
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  oslog = (v9 + 32);
  v117 = *(v9 + 64);
  v10 = *(v117 + 4);
  if (*(v117 + 2) >= *(v117 + 3) + v10)
  {
    v12 = *(v117 + 3) + v10;
  }

  else
  {
    v12 = *(v117 + 2);
  }

  v244 = *(v9 + 64);
  v245 = v10;
  v246 = v12;

  v8 = 0;
  v11 = 0;
  v5 = 0;
  v7 = 0;
  while (2)
  {
    if (v10 != v12)
    {
LABEL_195:
      v119 = &v117[24 * v10++];
      v245 = v10;
      v20 = *(v119 + 6);
      v120 = *(v9 + 40);
      v27 = __OFADD__(v120, v20);
      v121 = v120 + v20;
      if (v27)
      {
        goto LABEL_233;
      }

      v122 = v9;
      v9 = *(v119 + 7);
      v19 = *(v119 + 5);
      *(v122 + 40) = v121;
      if (v8)
      {
        v9 = v241;
        while (1)
        {
          if (v10 == v246)
          {
            v118 = sub_181AC81FC(v118);
            if ((v118 & 1) == 0)
            {
              goto LABEL_211;
            }

            v117 = v244;
            v10 = v245;
            v121 = v241[5];
          }

          v245 = v10 + 1;
          v123 = *&v117[24 * v10 + 48];
          v27 = __OFADD__(v121, v123);
          v121 += v123;
          if (v27)
          {
            break;
          }

          v241[5] = v121;
          ++v10;
        }

LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
        goto LABEL_235;
      }

      if (v7)
      {

        if (__OFADD__(v11, v5))
        {
          goto LABEL_234;
        }

        if (v11 + v5 == v19)
        {
          if (__OFADD__(oslog->isa, v20))
          {
            goto LABEL_236;
          }

          v8 = 0;
          oslog->isa = (oslog->isa + v20);
          goto LABEL_191;
        }
      }

      else
      {
        if (v19 == v241[2])
        {
          if (__OFADD__(oslog->isa, v20))
          {
            __break(1u);
            goto LABEL_241;
          }

          oslog->isa = (oslog->isa + v20);

          v8 = 0;
          goto LABEL_191;
        }
      }

      v8 = 1;
LABEL_191:
      v12 = v246;
      v11 = v19;
      v5 = v20;
      v7 = v9;
      v9 = v241;
      continue;
    }

    break;
  }

  v118 = sub_181AC81FC(v118);
  if (v118)
  {
    v117 = v244;
    v10 = v245;
    goto LABEL_195;
  }

LABEL_211:

  v5 = *(v9 + 40);
  if (v5 < v234)
  {
    v244 = 0;
    v245 = 0xE000000000000000;
    sub_182AD3BA8();

    v244 = 0xD00000000000001DLL;
    v245 = 0x8000000182BDDDA0;
    v243 = *(v9 + 40);
    v173 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v173);

    MEMORY[0x1865D9CA0](2112544, 0xE300000000000000);
    v243 = v234;
    v174 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v174);

    v176 = v244;
    v175 = v245;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v177 = sub_182AD2698();
    __swift_project_value_buffer(v177, qword_1EA843418);

    v5 = sub_182AD2678();
    v178 = sub_182AD38C8();

    if (os_log_type_enabled(v5, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v244 = v180;
      *v179 = 136315650;
      v181 = sub_182AD3BF8();
      v183 = sub_181C64FFC(v181, v182, &v244);

      *(v179 + 4) = v183;
      *(v179 + 12) = 2080;
      *(v179 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v244);
      *(v179 + 22) = 2080;
      v184 = sub_181C64FFC(v176, v175, &v244);

      *(v179 + 24) = v184;
      _os_log_impl(&dword_181A37000, v5, v178, "%s %s %s", v179, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v180, -1, -1);
      MEMORY[0x1865DF520](v179, -1, -1);
LABEL_313:

      return 0;
    }

LABEL_312:

    goto LABEL_313;
  }

  v10 = v5 - v234;
  if (!__OFSUB__(v5, v234))
  {
    return v10;
  }

  __break(1u);
LABEL_215:
  v229 = v10;
LABEL_216:

  if (!v20)
  {
    v65 = 0;
    v64 = 1;
    goto LABEL_105;
  }

  v124 = oslog + v5;
  if (__OFADD__(oslog, v5))
  {
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
    goto LABEL_322;
  }

  v27 = __OFSUB__(v124, v11);
  v125 = &v124[-v11];
  if (v27)
  {
    goto LABEL_321;
  }

  if (v125 < 1)
  {
    v64 = 0;
    v65 = 0;
    goto LABEL_105;
  }

  v19 = v238 - v125;
  if (v238 >= v125)
  {
    v102 = v8 + v125;
    if (__OFADD__(v8, v125))
    {
      goto LABEL_333;
    }

    v27 = __OFADD__(v11, v125);
    v11 += v125;
    v12 = v236;
    if (v27)
    {
      goto LABEL_334;
    }

    v8 = v237;
    v5 = v238 - v102;
    if (v238 < v102)
    {
      goto LABEL_335;
    }

    if ((v102 & 0x8000000000000000) == 0)
    {
      v7 = *(v236 + 16);
      if (v7 < v102 || v7 < v238)
      {
        goto LABEL_337;
      }

      swift_unknownObjectRetain();
      if (v7 != v5)
      {
        goto LABEL_338;
      }

      v64 = 0;
      v65 = 0;
      goto LABEL_106;
    }

    goto LABEL_336;
  }

LABEL_223:

  return 0;
}

uint64_t sub_1820E99EC(uint8_t *a1, uint64_t a2)
{
  v4 = v2;

  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  swift_beginAccess();
  v7 = *(v4 + 64);
  v8 = v7[3];
  if (!v8)
  {
    return 0;
  }

  if (v8 < 1)
  {
    __break(1u);
    goto LABEL_41;
  }

  v9 = v7[4];
  v10 = v7[2];
  if (v9 < v10)
  {
    v10 = 0;
  }

  v11 = &v7[3 * (v9 - v10)];
  v3 = v11[5];
  v12 = *(v4 + 16);
  if (v12 != v3)
  {
    if (v3 >= v12)
    {
      if (qword_1EA837250 == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_47;
    }

LABEL_42:
    sub_182AD3BA8();

    v101 = 0x20746E6572727563;
    v102 = 0xEF2074657366666FLL;
    v60 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v60);

    MEMORY[0x1865D9CA0](2113056, 0xE300000000000000);
    v103 = v3;
    v61 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v61);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v62 = sub_182AD2698();
    __swift_project_value_buffer(v62, qword_1EA843418);

    v4 = sub_182AD2678();
    v63 = sub_182AD38C8();

    if (os_log_type_enabled(v4, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v101 = v65;
      *v64 = 136315650;
      v66 = sub_182AD3BF8();
      v68 = sub_181C64FFC(v66, v67, &v101);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      *(v64 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v101);
      *(v64 + 22) = 2080;
      v69 = sub_181C64FFC(0x20746E6572727563, 0xEF2074657366666FLL, &v101);

      *(v64 + 24) = v69;
      _os_log_impl(&dword_181A37000, v4, v63, "%s %s %s", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v65, -1, -1);
      MEMORY[0x1865DF520](v64, -1, -1);
LABEL_54:

      return 0;
    }

LABEL_53:

    goto LABEL_54;
  }

  v14 = v11[6];
  v13 = v11[7];
  *a2 = v3;
  *(a2 + 8) = v14;
  *(a2 + 24) = v13;
  v15 = &v14[v3];
  if (__OFADD__(v3, v14))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v4 + 16) = v15;
  if (v15 == *(v4 + 48))
  {
    *(a2 + 16) = 1;
  }

  v16 = *(v4 + 40);
  v17 = __OFSUB__(v16, v14);
  v18 = v16 - v14;
  if (v17)
  {
    __break(1u);
LABEL_47:
    swift_once();
LABEL_29:
    if (byte_1EA843430 != 1)
    {
LABEL_36:
      result = 0;
      *(v4 + 56) = 1;
      return result;
    }

    v101 = 0;
    v102 = 0xE000000000000000;
    sub_182AD3BA8();
    v42 = MEMORY[0x1E69E6590];
    v43 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v43);

    MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BDDD00);
    v44 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v44);

    MEMORY[0x1865D9CA0](44, 0xE100000000000000);
    v103 = v3;
    v45 = sub_182AD41B8();
    v47 = v46;
    MEMORY[0x1865D9CA0](v45);

    MEMORY[0x1865D9CA0](2629673, 0xE300000000000000);
    v48 = *(v4 + 16);
    v17 = __OFSUB__(v3, v48);
    v49 = &v3[-v48];
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v103 = v49;
      v50 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v50);

      MEMORY[0x1865D9CA0](0x29736574796220, 0xE700000000000000);
      v42 = v101;
      v47 = v102;
      if (qword_1EA837248 == -1)
      {
LABEL_32:
        v51 = sub_182AD2698();
        __swift_project_value_buffer(v51, qword_1EA843418);

        v52 = sub_182AD2678();
        v53 = sub_182AD38A8();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v101 = v55;
          *v54 = 136315650;
          v56 = sub_182AD3BF8();
          v58 = sub_181C64FFC(v56, v57, &v101);

          *(v54 + 4) = v58;
          *(v54 + 12) = 2080;
          *(v54 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v101);
          *(v54 + 22) = 2080;
          v59 = sub_181C64FFC(v42, v47, &v101);

          *(v54 + 24) = v59;
          _os_log_impl(&dword_181A37000, v52, v53, "%s %s %s", v54, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v55, -1, -1);
          MEMORY[0x1865DF520](v54, -1, -1);
        }

        else
        {
        }

        goto LABEL_36;
      }
    }

    swift_once();
    goto LABEL_32;
  }

  *(v4 + 40) = v18;
  v19 = *(v4 + 32);
  v17 = __OFSUB__(v19, v14);
  v20 = v19 - v14;
  if (v17)
  {
    __break(1u);
    goto LABEL_49;
  }

  *(v4 + 32) = v20;
  v21 = qword_1EA837250;

  if (v21 != -1)
  {
LABEL_49:
    swift_once();
  }

  v22 = byte_1EA843430;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    sub_182AD3BA8();
    v70 = sub_182AD41B8();
    v72 = v71;

    v101 = v70;
    v102 = v72;
    MEMORY[0x1865D9CA0](0x65636E6176646120, 0xEA00000000002064);
    v103 = v14;
    v73 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v73);

    MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BDDD50);
    v103 = *(v4 + 16);
    v74 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v74);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v75 = sub_182AD2698();
    __swift_project_value_buffer(v75, qword_1EA843418);
    v76 = swift_allocObject();
    *(v76 + 16) = "dequeue(streamID:dequeueItem:)";
    *(v76 + 24) = 30;
    *(v76 + 32) = 2;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_181F8C258;
    *(v77 + 24) = v76;
    v78 = swift_allocObject();
    *(v78 + 16) = 1564427099;
    *(v78 + 24) = 0xE400000000000000;
    v79 = swift_allocObject();
    *(v79 + 16) = v70;
    *(v79 + 24) = v72;

    v80 = sub_182AD2678();
    v81 = sub_182AD38A8();
    v93 = swift_allocObject();
    *(v93 + 16) = 32;
    v94 = swift_allocObject();
    *(v94 + 16) = 8;
    v82 = swift_allocObject();
    *(v82 + 16) = sub_181F8C264;
    *(v82 + 24) = v77;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_181F8C27C;
    *(v83 + 24) = v82;
    v92 = swift_allocObject();
    *(v92 + 16) = 32;
    v95 = swift_allocObject();
    *(v95 + 16) = 8;
    v84 = swift_allocObject();
    *(v84 + 16) = sub_181F8C26C;
    *(v84 + 24) = v78;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_181F8C718;
    *(v85 + 24) = v84;
    v96 = swift_allocObject();
    *(v96 + 16) = 32;
    v97 = swift_allocObject();
    *(v97 + 16) = 8;
    v86 = swift_allocObject();
    *(v86 + 16) = sub_181F8C26C;
    *(v86 + 24) = v79;
    v87 = swift_allocObject();
    *(v87 + 16) = sub_181F8C718;
    *(v87 + 24) = v86;
    v98 = v87;
    v88 = v80;
    if (os_log_type_enabled(v80, v81))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v99 = v90;
      v100 = 0;
      *v89 = 770;
      v91 = v90;
      v103 = v89 + 2;
      v101 = sub_181F8C274;
      v102 = v93;
      sub_181F73AE0(&v101, &v103, &v100, &v99);

      v101 = sub_181F8C728;
      v102 = v94;
      sub_181F73AE0(&v101, &v103, &v100, &v99);

      v101 = sub_181F8C284;
      v102 = v83;
      sub_181F73AE0(&v101, &v103, &v100, &v99);

      v101 = sub_181F8C728;
      v102 = v92;
      sub_181F73AE0(&v101, &v103, &v100, &v99);

      v101 = sub_181F8C728;
      v102 = v95;
      sub_181F73AE0(&v101, &v103, &v100, &v99);

      v101 = sub_181F8C714;
      v102 = v85;
      sub_181F73AE0(&v101, &v103, &v100, &v99);

      v101 = sub_181F8C728;
      v102 = v96;
      sub_181F73AE0(&v101, &v103, &v100, &v99);

      v101 = sub_181F8C728;
      v102 = v97;
      sub_181F73AE0(&v101, &v103, &v100, &v99);

      v101 = sub_181F8C714;
      v102 = v98;
      sub_181F73AE0(&v101, &v103, &v100, &v99);

      _os_log_impl(&dword_181A37000, v88, v81, "%s %s %s", v89, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v91, -1, -1);
      MEMORY[0x1865DF520](v89, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  if (!*(*(v4 + 64) + 24))
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1820E63D0();
  }

  v23 = *(v4 + 64);
  v24 = v23[4];
  v25 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    goto LABEL_51;
  }

  v26 = v23[3];
  if (v25 >= v23[2])
  {
    v25 = 0;
  }

  v23[4] = v25;
  if (__OFSUB__(v26, 1))
  {
    goto LABEL_52;
  }

  v23[3] = v26 - 1;
  swift_endAccess();

  if ((v22 & *(v4 + 56)) == 1)
  {
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_182AD3BA8();
    v103 = a1;
    v27 = sub_182AD41B8();
    v29 = v28;

    v101 = v27;
    v102 = v29;
    MEMORY[0x1865D9CA0](0xD00000000000001FLL, 0x8000000182BDDD30);
    v31 = v101;
    v30 = v102;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v32 = sub_182AD2698();
    __swift_project_value_buffer(v32, qword_1EA843418);

    v33 = sub_182AD2678();
    v34 = sub_182AD38A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v101 = v36;
      *v35 = 136315650;
      v37 = sub_182AD3BF8();
      v39 = sub_181C64FFC(v37, v38, &v101);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v101);
      *(v35 + 22) = 2080;
      v40 = sub_181C64FFC(v31, v30, &v101);

      *(v35 + 24) = v40;
      _os_log_impl(&dword_181A37000, v33, v34, "%s %s %s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v36, -1, -1);
      MEMORY[0x1865DF520](v35, -1, -1);
    }

    else
    {
    }
  }

  *(v4 + 56) = 0;
  return 1;
}

uint64_t sub_1820EAAD4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1820EAB30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1820EAB78(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1820EABE4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5 && (swift_beginAccess(), v6 = *(v5 + 48), , , v7 = *(v6 + 152), v8 = v7, , v7))
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double _nw_protocol_create_swift_quic_instance()
{
  type metadata accessor for QUICConnectionImplementation();
  swift_allocObject();
  return QUICConnectionImplementation.init()();
}

uint64_t sub_1820EAD0C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + 64);
      if (a2)
      {
        if ((*(v7 + 64) & 2) == 0)
        {
          v9 = v8 | 2;
LABEL_8:
          *(v7 + 64) = v9;
        }
      }

      else if ((*(v7 + 64) & 2) != 0)
      {
        v9 = v8 & 0xFD;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t _nw_quic_stream_set_associated_stream_id(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      swift_beginAccess();
      *(v7 + 16) = a2;
      *(v7 + 24) = 0;
    }
  }

  return result;
}

uint64_t _nw_quic_stream_set_datagram_context_id(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      *(v7 + 32) = a2;
      *(v7 + 40) = 0;
    }
  }

  return result;
}

uint64_t _nw_quic_stream_set_usable_datagram_frame_size(uint64_t a1, __int16 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      *(v6 + 64) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_stream_set_datagram_variant_flow_id(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      *(v6 + 24) = a2;
      *(v6 + 32) = 0;
    }
  }

  return result;
}

uint64_t _nw_quic_stream_set_application_error_internal(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      *(v6 + 40) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_stream_get_usable_datagram_frame_size(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  v2 = sub_181A93260(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 64);

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 64);

  return v5;
}

uint64_t sub_1820EB1AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  result = sub_181A93260(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      v5 = *(v4 + 24);
      v6 = *(v4 + 32);

      if (v6)
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _nw_quic_stream_get_type(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  v2 = sub_181A93260(a1);
  if (v2 && (v3 = v2, swift_beginAccess(), v4 = *(v3 + 64), , , v4))
  {
    v5 = *(v4 + 66);

    return (v5 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1820EB2EC(uint64_t a1, void (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 72) + 16));
      a2();
      os_unfair_lock_unlock((*(v6 + 72) + 16));
    }
  }

  return result;
}

uint64_t sub_1820EB3A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  if (!v3)
  {
    sub_1820EBA0C();
    swift_allocError();
    v14 = 5;
    goto LABEL_10;
  }

  v52 = a1;
  v4 = *v1;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (v6 = *(v1 + 24), v7 = *(v1 + 32), v8 = *(v1 + 40), v10 = *(v1 + 48), v9 = *(v1 + 56), v38 = *(v1 + 64), v39 = *(v1 + 16), v41 = *(v1 + 72), v12 = *(v1 + 88), v11 = *(v1 + 96), (sub_181CA3274(v4, v3) & 1) == 0))
  {
    sub_1820EBA0C();
    swift_allocError();
    v14 = 6;
    goto LABEL_10;
  }

  if (v12)
  {
    sub_1820EBA0C();
    swift_allocError();
    v14 = 7;
LABEL_10:
    *v13 = v14;
    return swift_willThrow();
  }

  *&v42 = v4;
  *(&v42 + 1) = v3;
  *&v43 = v39;
  *(&v43 + 1) = v6;
  v44 = v7;
  v45 = v8;
  v46 = v10;
  v47 = v9;
  v48 = v38;
  v49 = v41;
  v50 = 0;
  v51 = v11;

  sub_181DE0824();
  if (v2)
  {
  }

  v16 = v39;
  if (!v6)
  {
    v16 = 0;
  }

  v35 = v16;
  v36 = v11;
  if (v8)
  {
    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

  v40 = v17;
  if (v9)
  {
    v18 = v10;
  }

  else
  {
    v18 = 0;
  }

  v37 = v18;
  type metadata accessor for HTTPRequest.PseudoHeaderFields._Storage();
  v19 = swift_allocObject();
  *(v19 + 128) = 0u;
  *(v19 + 144) = 0u;
  *(v19 + 160) = 0u;
  *(v19 + 176) = 0u;
  *(v19 + 192) = 0u;
  *(v19 + 208) = 0u;
  *(v19 + 224) = 0u;
  *(v19 + 240) = 0u;
  *(v19 + 256) = 0u;
  *(v19 + 272) = 0u;
  *(v19 + 288) = 0;
  *(v19 + 16) = 0x646F6874656D3ALL;
  *(v19 + 24) = 0xE700000000000000;
  *(v19 + 32) = 0x646F6874656D3ALL;
  *(v19 + 40) = 0xE700000000000000;
  *(v19 + 48) = 0;
  *(v19 + 56) = v4;
  *(v19 + 64) = v3;
  v20 = vdup_n_s32(v6 == 0);
  v21.i64[0] = v20.u32[0];
  v21.i64[1] = v20.u32[1];
  v22 = vandq_s8(vcgezq_s64(vshlq_n_s64(v21, 0x3FuLL)), xmmword_182AE94B0);
  *(v19 + 88) = v22;
  *(v19 + 72) = v22;
  *(v19 + 104) = 0;
  *(v19 + 112) = v35;
  *(v19 + 120) = v6;

  v23 = v36;

  sub_181D04D28(0, 0);
  v24 = *(v19 + 128);
  v25 = *(v19 + 136);
  v26 = vdup_n_s32(v8 == 0);
  v21.i64[0] = v26.u32[0];
  v21.i64[1] = v26.u32[1];
  v27 = vandq_s8(vcgezq_s64(vshlq_n_s64(v21, 0x3FuLL)), xmmword_182AE94A0);
  *(v19 + 128) = v27;
  *(v19 + 144) = v27;
  *(v19 + 160) = 0;
  *(v19 + 168) = v40;
  *(v19 + 176) = v8;
  sub_181D04D28(v24, v25);
  v28 = *(v19 + 184);
  v29 = *(v19 + 192);
  v30 = vdup_n_s32(v9 == 0);
  v21.i64[0] = v30.u32[0];
  v21.i64[1] = v30.u32[1];
  v31 = vandq_s8(vcgezq_s64(vshlq_n_s64(v21, 0x3FuLL)), xmmword_182AE94C0);
  *(v19 + 184) = v31;
  *(v19 + 200) = v31;
  *(v19 + 216) = 0;
  *(v19 + 224) = v37;
  *(v19 + 232) = v9;
  sub_181D04D28(v28, v29);
  v32 = *(v19 + 240);
  v33 = *(v19 + 248);
  *(v19 + 240) = 0u;
  *(v19 + 256) = 0u;
  *(v19 + 272) = 0u;
  *(v19 + 288) = 0;
  sub_181D04D28(v32, v33);
  result = v41;
  if (v41)
  {
    v42 = xmmword_182AF58C0;
    v43 = xmmword_182AF58C0;
    v44 = 0;
    v45 = v38;
    v46 = v41;

    result = HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.setter(&v42);
    v23 = v36;
  }

  v34 = v52;
  *v52 = v19;
  v34[1] = v23;
  return result;
}

uint64_t HTTPFields.init(parsedTrailerFields:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = sub_181C9FCB4();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  result = sub_181C9FCB4();
  v39 = result;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 40);
    while (v6 < *(a1 + 16))
    {
      v8 = v7[4];
      v9 = v7[5];
      v10 = *(v7 + 24);
      v11 = v7[1];
      v12 = v7[2];
      v13 = *v7;
      *&v19 = *(v7 - 1);
      *(&v19 + 1) = v13;
      *&v20 = v11;
      *(&v20 + 1) = v12;
      LOBYTE(v21) = v10;
      *(&v21 + 1) = v8;
      *&v22 = v9;

      sub_181DDFD08(&v19);
      if (v2)
      {
        v30 = v37;
        v31 = v38;
        v32 = v39;
        v26 = v33;
        v27 = v34;
        v28 = v35;
        v29 = v36;
        sub_181DE132C(&v26);
      }

      ++v6;
      v7 += 7;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v32 = v39;
    if (*(&v33 + 1) || *(&v27 + 1) || *(&v28 + 1) || *(&v29 + 1) || *(&v30 + 1) || *(&v31 + 1))
    {
      sub_1820EBA0C();
      swift_allocError();
      *v15 = 11;
      swift_willThrow();
      sub_181DE00E0(&v26, &v19);
    }

    else
    {
      v23 = v37;
      v24 = v38;
      v25 = v39;
      v19 = v33;
      v20 = v34;
      v21 = v35;
      v22 = v36;
      sub_181DE00E0(&v26, v17);
      sub_181DE0824();
      if (!v2)
      {
        v14 = v32;
        v17[4] = v37;
        v17[5] = v38;
        v18 = v39;
        v17[0] = v33;
        v17[1] = v34;
        v17[2] = v35;
        v17[3] = v36;

        sub_181DE132C(v17);

        result = sub_181DE132C(&v26);
        *a2 = v14;
        return result;
      }
    }

    v23 = v37;
    v24 = v38;
    v25 = v39;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    sub_181DE132C(&v19);

    return sub_181DE132C(&v26);
  }

  return result;
}

unint64_t sub_1820EBA0C()
{
  result = qword_1EA8364F8;
  if (!qword_1EA8364F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8364F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPParsedFields.ParsingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPParsedFields.ParsingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1820EBBDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1820EBC24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1820EBC90()
{
  result = qword_1EA83A418;
  if (!qword_1EA83A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A418);
  }

  return result;
}

unint64_t sub_1820EBCE4()
{
  result = qword_1EA83A428;
  if (!qword_1EA83A428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A428);
  }

  return result;
}

void *sub_1820EBD48()
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = nw_protocol_definition_get_options_serializer(*(v0 + 24));
  if (result)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      v6[0] = 0;
      result = (result)(*(v0 + 24), v2, v6);
      if (result)
      {
        v3 = result;
        v4 = v6[0];
        if (v6[0])
        {
          v5 = sub_181AC1BE8(v6[0], 0);
          memcpy(v5 + 4, v3, v4);
        }

        else
        {
          v5 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1865DF520](v3, -1, -1);
        return v5;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820EBE80(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 24);
  if (!v2)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  result = nw_protocol_definition_get_metadata_comparator(*(v1 + 16));
  if (result)
  {
    if (*(v1 + 24))
    {
      if (*(a1 + 24))
      {
        return (result)(*(v1 + 16));
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1820EBF78()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t sub_1820EC054(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  type metadata accessor for CProtocol.COptions();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  v3 = swift_unknownObjectRetain();
  options_allocator = nw_protocol_definition_get_options_allocator(v3);
  if (options_allocator)
  {
    *(v2 + 16) = options_allocator(a1);
  }

  return v2;
}

uint64_t sub_1820EC0BC(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    type metadata accessor for CProtocol.COptions();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = a2;
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    if (v5)
    {
      options_copy = nw_protocol_definition_get_options_copy(a2);
      if (options_copy)
      {
        *(v4 + 16) = options_copy(a2, v5);
      }
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1820EC13C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1820EC054(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1820EC168@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1820EC0BC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1820EC198@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    type metadata accessor for CProtocol.COptions();
    swift_allocObject();
    swift_unknownObjectRetain();

    result = sub_181E09FDC(v4, v3);
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

void sub_1820EC204(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    type metadata accessor for CProtocol.CMetadata();
    v3 = swift_allocObject();
    v4 = swift_unknownObjectRetain();
    sub_181A92460(v4);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

uint64_t sub_1820EC264(uint64_t a1)
{
  result = sub_181CA7AF4(&unk_1EA83A430, type metadata accessor for CProtocol.CMetadata);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1820EC2BC()
{
  type metadata accessor for CProtocol.CInstance();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

Swift::Void __swiftcall NWActivity.submitMetrics(_:name:)(Swift::OpaquePointer _, Swift::String name)
{
  if (sub_1820ECF38(_._rawValue))
  {
    v3 = *(v2 + 16);
    sub_182AD3048();
    nw_activity_submit_metrics(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_182AD3EA8();
    __break(1u);
  }
}

uint64_t NWActivity.ReportingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t NWActivity.CompletionReason.description.getter()
{
  if (*(v0 + 24) >= 2u)
  {
    v2 = *v0;
    if (v0[1] | v0[2] | *v0)
    {
      if (*(v0 + 1) == 0 && v2 == 2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 4;
      }

      if (v2 == 1 && *(v0 + 1) == 0)
      {
        v1 = 2;
      }

      else
      {
        v1 = v4;
      }
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 3;
  }

  nw_activity_completion_reason_to_string(v1);

  return sub_182AD3158();
}

id static NWActivity.CompletionReason.failure(withUnderlyingError:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_182AD2F88();
  v7 = v6;

  result = [a1 code];
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = result;
  *(a2 + 24) = 1;
  return result;
}

uint64_t static NWActivity.CompletionReason.failure(withUnderlyingError:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 4) > 1u || *(a1 + 4))
  {
    result = sub_182AD2F88();
  }

  else
  {
    v4 = sub_182AD2F88();
    v6 = v5;
    v7 = sub_182AD2768();
    v8 = v6;
    v3 = v7;
    result = v4;
  }

  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v3;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_1820EC618()
{
  if (*(v0 + 24) >= 2u)
  {
    v2 = *v0;
    if (v0[1] | v0[2] | *v0)
    {
      if (*(v0 + 1) == 0 && v2 == 2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 4;
      }

      if (v2 == 1 && *(v0 + 1) == 0)
      {
        v1 = 2;
      }

      else
      {
        v1 = v4;
      }
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 3;
  }

  nw_activity_completion_reason_to_string(v1);

  return sub_182AD3158();
}

uint64_t NWActivity.nw.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return swift_unknownObjectRetain();
}

uint64_t NWActivity.reportingStrategy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = nw_activity_get_reporting_strategy(*(v1 + 16));
  if (result >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a1 = v4;
  return result;
}

void (*NWActivity.reportingStrategy.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  reporting_strategy = nw_activity_get_reporting_strategy(v3);
  if (reporting_strategy >= 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = reporting_strategy;
  }

  *(a1 + 8) = v5;
  return sub_1820EC780;
}

uint64_t sub_1820EC78C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = nw_activity_copy_parent_activity(*(*a1 + 16));
  if (result)
  {
    v4 = result;
    v6[3] = swift_getObjectType();
    v6[0] = v4;
    type metadata accessor for NWActivity();
    v5 = swift_allocObject();
    result = NWActivity.init(_:)(v6);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1820EC7FC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    nw_activity_set_parent_activity(*(v2 + 16), *(*a1 + 16));
  }

  else
  {
    nw_activity_set_parent_activity(*(v2 + 16), 0);
  }
}

uint64_t NWActivity.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NWActivity.init(_:)(a1);
  return v2;
}

void (*NWActivity.parentActivity.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  v4 = nw_activity_copy_parent_activity(v3);
  if (v4)
  {
    v5 = v4;
    v8[3] = swift_getObjectType();
    v8[0] = v5;
    v6 = swift_allocObject();
    NWActivity.init(_:)(v8);
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1820EC920;
}

void sub_1820EC920(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      v3 = *(v2 + 16);
    }

    else
    {
      v3 = 0;
    }

    v4 = a1[1];
    goto LABEL_8;
  }

  v4 = a1[1];
  if (v2)
  {
    v3 = *(v2 + 16);
LABEL_8:
    nw_activity_set_parent_activity(v4, v3);

    return;
  }

  nw_activity_set_parent_activity(v4, 0);
}

uint64_t NWActivity.completionReason.getter@<X0>(uint64_t a1@<X8>)
{
  result = nw_activity_get_completion_reason(*(v1 + 16));
  v4 = (result - 2);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v5;
  *(a1 + 24) = 2;
  return result;
}

uint64_t NWActivity.__allocating_init(retryOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = nw_activity_create_retry(*(a1 + 16));
  v4 = *(a1 + 24);

  *(v2 + 24) = v4;
  return v2;
}

void *NWActivity.init(retryOf:)(uint64_t a1)
{
  v1[2] = nw_activity_create_retry(*(a1 + 16));
  v1[3] = *(a1 + 24);
  v3 = *(a1 + 32);

  v1[4] = v3;
  return v1;
}

uint64_t NWActivity.__allocating_init(token:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NWActivity.init(token:)(a1);
  return v2;
}

uint64_t NWActivity.init(_:)(uint64_t a1)
{
  sub_181C65504(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A440);
  if (swift_dynamicCast())
  {
    v1[2] = v6;
    v3 = swift_unknownObjectRetain();
    v1[3] = nw_activity_get_domain(v3);
    label = nw_activity_get_label(v6);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v1[4] = label;
    return v1;
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

xpc_object_t sub_1820ECC68(uint64_t a1)
{
  v2 = xpc_array_create(0, 0);
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_181C65504(i, v12);
      sub_181C65504(v12, v11);
      if (swift_dynamicCast())
      {
        v5 = sub_182AD3048();

        v6 = xpc_string_create((v5 + 32));

        if (!v6)
        {
          goto LABEL_3;
        }

LABEL_12:
        xpc_array_append_value(v2, v6);
        swift_unknownObjectRelease();
        goto LABEL_3;
      }

      sub_181C65504(v12, v11);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_181C65504(v12, v11);
      if (swift_dynamicCast())
      {
        v7 = xpc_uint64_create(value);
      }

      else
      {
        sub_181C65504(v12, v11);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_181C65504(v12, v11);
        if (swift_dynamicCast())
        {
          v7 = xpc_double_create(*&value);
        }

        else
        {
          sub_181C65504(v12, v11);
          if (!swift_dynamicCast())
          {
            sub_181C65504(v12, v11);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A458);
            if (swift_dynamicCast())
            {
              v8 = (sub_1820ECC68)();
            }

            else
            {
              sub_181C65504(v12, v11);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A460);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_3;
              }

              v8 = (sub_1820ECF38)();
            }

            v6 = v8;

            if (!v6)
            {
              goto LABEL_3;
            }

            goto LABEL_12;
          }

          v7 = xpc_BOOL_create(value);
        }
      }

LABEL_11:
      v6 = v7;
      if (v7)
      {
        goto LABEL_12;
      }

LABEL_3:
      __swift_destroy_boxed_opaque_existential_1(v12);
      if (!--v3)
      {
        return v2;
      }
    }

    v7 = xpc_int64_create(value);
    goto LABEL_11;
  }

  return v2;
}

xpc_object_t sub_1820ECF38(uint64_t a1)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
LABEL_5:
  if (v4)
  {
    while (1)
    {
      v9 = v7;
LABEL_14:
      v12 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v13 = v12 | (v9 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      sub_181C65504(*(a1 + 56) + 32 * v13, v23);
      *&v24 = v15;
      *(&v24 + 1) = v16;
      sub_181E7BFC4(v23, &v25);

      v11 = v9;
LABEL_15:
      v27 = v24;
      v28[0] = v25;
      v28[1] = v26;
      if (!*(&v24 + 1))
      {
        break;
      }

      sub_181E7BFC4(v28, &v24);
      sub_181C65504(&v24, v23);
      if (swift_dynamicCast())
      {
        v17 = sub_182AD3048();

        v18 = xpc_string_create((v17 + 32));

        if (!v18)
        {
          goto LABEL_32;
        }

        goto LABEL_4;
      }

      sub_181C65504(&v24, v23);
      if (swift_dynamicCast())
      {
        goto LABEL_29;
      }

      sub_181C65504(&v24, v23);
      if (swift_dynamicCast())
      {
        v19 = xpc_uint64_create(value);
        goto LABEL_31;
      }

      sub_181C65504(&v24, v23);
      if (swift_dynamicCast())
      {
LABEL_29:
        v19 = xpc_int64_create(value);
        goto LABEL_31;
      }

      sub_181C65504(&v24, v23);
      if (swift_dynamicCast())
      {
        v19 = xpc_double_create(*&value);
        goto LABEL_31;
      }

      sub_181C65504(&v24, v23);
      if (swift_dynamicCast())
      {
        v19 = xpc_BOOL_create(value);
LABEL_31:
        v18 = v19;
        if (!v19)
        {
LABEL_32:
          __swift_destroy_boxed_opaque_existential_1(&v24);

          v7 = v11;
          goto LABEL_5;
        }

LABEL_4:
        v8 = sub_182AD3048();
        swift_unknownObjectRetain_n();

        xpc_dictionary_set_value(xdict, (v8 + 32), v18);
        swift_unknownObjectRelease_n();
        __swift_destroy_boxed_opaque_existential_1(&v24);

        v7 = v11;
        goto LABEL_5;
      }

      sub_181C65504(&v24, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A458);
      if (swift_dynamicCast())
      {
        v20 = sub_1820ECC68(value);
        goto LABEL_37;
      }

      sub_181C65504(&v24, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A460);
      if (swift_dynamicCast())
      {
        v20 = sub_1820ECF38();
LABEL_37:
        v18 = v20;

        if (!v18)
        {
          goto LABEL_32;
        }

        goto LABEL_4;
      }

      __swift_destroy_boxed_opaque_existential_1(&v24);

      v7 = v11;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    return xdict;
  }

  else
  {
LABEL_7:
    if (v5 <= v7 + 1)
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v5)
      {
        v4 = 0;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        goto LABEL_15;
      }

      v4 = *(a1 + 64 + 8 * v9);
      ++v7;
      if (v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1820ED384()
{
  v1 = [*(v0 + 16) description];
  v2 = sub_182AD2F88();

  return v2;
}

void NWActivity.playgroundDescription.getter(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) description];
  v4 = sub_182AD2F88();
  v6 = v5;

  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v4;
  a1[1] = v6;
}

void sub_1820ED440(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) description];
  v4 = sub_182AD2F88();
  v6 = v5;

  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v4;
  a1[1] = v6;
}

uint64_t NSURLSessionTask._nwActivity.getter()
{
  v1 = [v0 _nw_activity];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v5[3] = swift_getObjectType();
  v5[0] = v2;
  type metadata accessor for NWActivity();
  v3 = swift_allocObject();
  NWActivity.init(_:)(v5);
  return v3;
}

id sub_1820ED520@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 _nw_activity];
  if (result)
  {
    v4 = result;
    v6[3] = swift_getObjectType();
    v6[0] = v4;
    type metadata accessor for NWActivity();
    v5 = swift_allocObject();
    result = NWActivity.init(_:)(v6);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t (*NSURLSessionTask._nwActivity.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 _nw_activity];
  if (v3)
  {
    v4 = v3;
    v7[3] = swift_getObjectType();
    v7[0] = v4;
    type metadata accessor for NWActivity();
    v5 = swift_allocObject();
    NWActivity.init(_:)(v7);
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1820ED638;
}

uint64_t sub_1820ED638(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_181C58A34(v3);
  }

  else
  {
    sub_181C58A34(v2);
  }
}

uint64_t _s7Network10NWActivityC16CompletionReasonO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      sub_1820EDB80(*a1, v2, v4, 0);
      sub_1820EDB80(v7, v6, v8, 0);
      return v3 == v7 && v2 == v6;
    }

    goto LABEL_46;
  }

  if (v5 != 1)
  {
    v15 = v4 | v2;
    if (!(v4 | v2 | v3))
    {
      if (v9 != 2 || (v8 | v6 | v7) != 0)
      {
        goto LABEL_46;
      }

      sub_1820EDB80(0, 0, 0, 2);
      v17 = 0;
      goto LABEL_45;
    }

    if (v3 != 1 || v15 != 0)
    {
      if (v3 != 2 || v15)
      {
        if (v9 != 2 || v7 != 3 || v8 | v6)
        {
          goto LABEL_46;
        }

        sub_1820EDB80(3, 0, 0, 2);
        v17 = 3;
      }

      else
      {
        if (v9 != 2 || v7 != 2 || v8 | v6)
        {
          goto LABEL_46;
        }

        sub_1820EDB80(2, 0, 0, 2);
        v17 = 2;
      }

LABEL_45:
      sub_1820EDB80(v17, 0, 0, 2);
      return 1;
    }

    if (v9 == 2 && v7 == 1 && !(v8 | v6))
    {
      v13 = 1;
      sub_1820EDB80(1, 0, 0, 2);
      sub_1820EDB80(1, 0, 0, 2);
      return v13;
    }

LABEL_46:
    sub_1820EDB68(v7, v6, v8, v9);
    sub_1820EDB80(v3, v2, v4, v5);
    sub_1820EDB80(v7, v6, v8, v9);
    return 0;
  }

  if (v9 != 1)
  {

    goto LABEL_46;
  }

  v10 = *a1;
  if (v3 == v7 && v2 == v6)
  {
    sub_1820EDB68(v10, v2, v8, 1);
    sub_1820EDB68(v3, v2, v4, 1);
    sub_1820EDB80(v3, v2, v4, 1);
    sub_1820EDB80(v3, v2, v8, 1);
  }

  else
  {
    v12 = sub_182AD4268();
    sub_1820EDB68(v7, v6, v8, 1);
    sub_1820EDB68(v3, v2, v4, 1);
    sub_1820EDB80(v3, v2, v4, 1);
    sub_1820EDB80(v7, v6, v8, 1);
    v13 = 0;
    if ((v12 & 1) == 0)
    {
      return v13;
    }
  }

  return v4 == v8;
}

uint64_t _s7Network10NWActivityC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD2258();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  if (nw_activity_is_activated(*(a1 + 16)) && nw_activity_is_activated(*(a2 + 16)))
  {
    NWActivity.token.getter();
    NWActivity.token.getter();
    v11 = sub_182AD2218();
    v12 = *(v5 + 8);
    v12(v7, v4);
    v12(v10, v4);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_1820EDAB0()
{
  result = qword_1EA83A448;
  if (!qword_1EA83A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A448);
  }

  return result;
}

uint64_t sub_1820EDB68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t sub_1820EDB80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t sub_1820EDB9C(uint64_t a1)
{
  v3 = *(*v1 + 24);
  if (!v3)
  {
    goto LABEL_7;
  }

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);

  sub_181E6550C(v9);
  if (v8 != 1)
  {
    goto LABEL_9;
  }

  if (!v4)
  {
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_7:

    v12 = 0;
    goto LABEL_10;
  }

  v11 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v11 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!(v11 | v9))
  {
    goto LABEL_7;
  }

LABEL_9:
  type metadata accessor for EndpointCommon.EndpointCommonBacking();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = v5;
  *(v12 + 40) = v4;
  *(v12 + 48) = v6;
  *(v12 + 56) = v7;
  *(v12 + 64) = v8;
LABEL_10:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = v14[3];
    v20[1] = v14[2];
    v20[2] = v15;
    v16 = v14[5];
    v20[3] = v14[4];
    v20[4] = v16;
    v20[0] = v14[1];
    type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
    v17 = swift_allocObject();
    memmove((v17 + 16), v14 + 1, 0x50uLL);
    sub_1820F5388(v20, &v19);

    *v1 = v17;
    v14 = v17;
  }

  *(v14 + 2) = a1;
  *(v14 + 3) = v12;
}

uint64_t sub_1820EDCFC(void *a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = a1[4];
  v3 = a1[3] + v2;
  if (a1[2] < v3)
  {
    v3 = a1[2];
  }

  v6 = a1[4];
  v7 = v3;
  v8 = MEMORY[0x1E69E7CC0];

  while (v2 != v7)
  {
LABEL_4:
    v6 = ++v2;
    type metadata accessor for Endpoint(0);
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1865D9F10]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_182AD3408();
      }

      v4 = sub_182AD3448();
      v1 = v8;
    }

    else
    {
      v4 = swift_unknownObjectRelease();
    }
  }

  if (sub_181AC81FC(v4))
  {
    v2 = v6;
    goto LABEL_4;
  }

  return v1;
}

id sub_1820EDE2C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = 0;
  if (a1 && a2)
  {
    v15 = 0;
    sub_182AD3158();
    v6 = sub_182AD3158();
    sub_18217A25C(v6, v7, &v15, &v10);
    v8 = v10;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    if (v10 == 1)
    {
      return 0;
    }

    else
    {
      *a3 = v15;
      v10 = v8;
      v11 = v16;
      v12 = v17;
      v13 = v18;
      v14 = v19;
      v9 = objc_allocWithZone(type metadata accessor for Endpoint(0));
      return Endpoint.init(_:)(&v10);
    }
  }

  return result;
}

char *sub_1820EDF20(unsigned __int8 *__src, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = __src[1];
  v4 = 1;
  v5 = v3 > 0x1E;
  v6 = (1 << v3) & 0x40000006;
  if (v5 || v6 == 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 4;
  }

  else
  {
    v8 = *__src;
    if (v8 > 0x80)
    {
      return 0;
    }

    memset(v22, 0, sizeof(v22));
    memcpy(v22, __src, v8);
    sub_181AD2530(v22, v26);
    v9 = *v26;
    if (*v26 == 1)
    {
      return 0;
    }

    v4 = v26[52];
    v15 = *&v26[56];
    v14 = *&v26[48];
    v13 = *&v26[46];
    v12 = *&v26[44];
    v18 = v26[42];
    v11 = *&v26[40];
    v16 = *&v26[8];
    v17 = *&v26[24];
  }

  *v26 = v9;
  *&v26[8] = v16;
  *&v26[24] = v17;
  *&v26[40] = v11;
  v26[42] = v18;
  *&v26[44] = v12;
  *&v26[46] = v13;
  *&v26[48] = v14;
  v26[52] = v4 & 1;
  *&v26[56] = v15;
  v24[0] = *v26;
  v24[1] = *&v26[16];
  v25[0] = *&v26[32];
  *(v25 + 12) = *&v26[44];
  v19 = objc_allocWithZone(type metadata accessor for Endpoint(0));
  sub_181D6B080(v26, v23);
  v20 = Endpoint.init(_:)(v24);
  v21 = swift_slowAlloc();
  *v21 = *a2;
  *(v21 + 4) = *(a2 + 4);
  sub_181AA57B4(v26);
  result = v20;
  *&v20[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage] = v21;
  return result;
}

void sub_1820EE0E0(unsigned __int8 *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v3 = sub_182AD3158();
  v5 = HIBYTE(v4) & 0xF;
  v6 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      __dst[0] = v3;
      __dst[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      if (v3 == 43)
      {
        if (v5)
        {
          v6 = v5 - 1;
          if (v5 != 1)
          {
            LOWORD(v10) = 0;
            v17 = __dst + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              if (((10 * v10) & 0xF0000) != 0)
              {
                break;
              }

              v10 = (10 * v10) + v18;
              if ((v10 & 0x10000) != 0)
              {
                break;
              }

              ++v17;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_82:
        __break(1u);
      }

      if (v3 != 45)
      {
        if (v5)
        {
          LOWORD(v10) = 0;
          v20 = __dst;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            if (((10 * v10) & 0xF0000) != 0)
            {
              break;
            }

            v10 = (10 * v10) + v21;
            if ((v10 & 0x10000) != 0)
            {
              break;
            }

            ++v20;
            if (!--v5)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_62;
      }

      if (v5)
      {
        v6 = v5 - 1;
        if (v5 != 1)
        {
          LOWORD(v10) = 0;
          v13 = __dst + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            if (((10 * v10) & 0xF0000) != 0)
            {
              break;
            }

            v10 = (10 * v10) - v14;
            if ((v10 & 0xFFFF0000) != 0)
            {
              break;
            }

            ++v13;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v8 = sub_182AD3CF8();
        v6 = v31;
      }

      v9 = *v8;
      if (v9 == 43)
      {
        if (v6 >= 1)
        {
          if (--v6)
          {
            LOWORD(v10) = 0;
            if (v8)
            {
              v15 = v8 + 1;
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_62;
                }

                if (((10 * v10) & 0xF0000) != 0)
                {
                  goto LABEL_62;
                }

                v10 = (10 * v10) + v16;
                if ((v10 & 0x10000) != 0)
                {
                  goto LABEL_62;
                }

                ++v15;
                if (!--v6)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_62;
        }

        goto LABEL_81;
      }

      if (v9 != 45)
      {
        if (v6)
        {
          LOWORD(v10) = 0;
          if (v8)
          {
            while (1)
            {
              v19 = *v8 - 48;
              if (v19 > 9)
              {
                goto LABEL_62;
              }

              if (((10 * v10) & 0xF0000) != 0)
              {
                goto LABEL_62;
              }

              v10 = (10 * v10) + v19;
              if ((v10 & 0x10000) != 0)
              {
                goto LABEL_62;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_62:
        LOWORD(v10) = 0;
        LOBYTE(v6) = 1;
LABEL_63:
        LOBYTE(v39) = v6;
        v22 = v6;

        if (v22)
        {
          return;
        }

        goto LABEL_64;
      }

      if (v6 >= 1)
      {
        if (--v6)
        {
          LOWORD(v10) = 0;
          if (v8)
          {
            v11 = v8 + 1;
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_62;
              }

              if (((10 * v10) & 0xF0000) != 0)
              {
                goto LABEL_62;
              }

              v10 = (10 * v10) - v12;
              if ((v10 & 0xFFFF0000) != 0)
              {
                goto LABEL_62;
              }

              ++v11;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_61:
          LOBYTE(v6) = 0;
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  LOBYTE(v39) = 0;
  v10 = sub_1820F3A10(v3, v4, 10);

  if ((v10 & 0x10000) != 0)
  {
    return;
  }

LABEL_64:
  v23 = *a1;
  if (v23 > 0x80)
  {
    return;
  }

  v44 = 0u;
  memset(__dst, 0, sizeof(__dst));
  memcpy(__dst, a1, v23);
  v24 = __dst[1];
  v25 = __dst[2];
  v32 = *&__dst[5];
  switch(BYTE1(__dst[0]))
  {
    case 1u:
      *(&__dst[6] + 6) = *&__dst[7];
      *(&__dst[8] + 6) = *&__dst[9];
      *(&__dst[10] + 6) = *&__dst[11];
      *(&__dst[2] + 6) = *&__dst[3];
      LOWORD(__dst[0]) = WORD1(__dst[0]);
      *(__dst + 2) = HIDWORD(__dst[0]);
      *(&__dst[1] + 6) = v25;
      *(__dst + 6) = v24;
      HIWORD(__dst[12]) = __dst[13];
      *(&__dst[4] + 6) = v32;
      MEMORY[0x1EEE9AC00](v24);
      v28 = sub_182AD30D8();
      sub_18217AB24(v28, v29, __dst);
      v39 = *&__dst[1];
      v40 = *&__dst[3];
      v41 = *&__dst[5];
      v42 = __dst[7];
      if (__dst[0] == 1)
      {
        __break(1u);
        return;
      }

      *&__dst[1] = v39;
      *&__dst[3] = v40;
      *&__dst[5] = v41;
      LODWORD(__dst[7]) = v42;
      goto LABEL_73;
    case 0x1Eu:
      sub_181C2EC98(__dst[1], __dst[2], v10, __dst);
LABEL_73:
      v30 = objc_allocWithZone(type metadata accessor for Endpoint(0));
      v27 = __dst;
      goto LABEL_74;
    case 2u:
      v36 = 0;
      v37 = 1;
      v38 = 0;
      v33[0] = 0;
      v33[1] = 0;
      v33[2] = HIDWORD(__dst[0]);
      v33[3] = 0;
      v33[4] = v10;
      v34 = 0;
      v35 = 0;
      sub_181AD2448(0);
      v26 = objc_allocWithZone(type metadata accessor for Endpoint(0));
      v27 = v33;
LABEL_74:
      Endpoint.init(_:)(v27);
      break;
  }
}

id _nw_endpoint_create_application_service_with_alias_0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v52 = a2;
  v2 = sub_182AD3158();
  v51 = v2;
  v4 = v3;
  v5 = sub_181ADC1F8();
  v7 = v6;
  v50[2] = v5 >> 40;
  v50[3] = HIWORD(v5);
  *&v54 = v2;
  *(&v54 + 1) = v4;
  v50[1] = HIBYTE(v5);

  MEMORY[0x1865D9CA0](47, 0xE100000000000000);
  v50[4] = v50;
  v8 = v54;
  MEMORY[0x1EEE9AC00](HIWORD(v7));
  v9 = sub_182AD30D8();
  v11 = v10;
  v54 = v8;

  MEMORY[0x1865D9CA0](v9, v11);

  v12 = v54;
  type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  *(v13 + 24) = 0;
  *(v13 + 32) = v12;
  v15 = v51;
  *(v13 + 40) = *(&v12 + 1);
  *(v13 + 48) = v15;
  *(v13 + 56) = v4;
  *(v13 + 64) = v5;
  *(v13 + 72) = v7;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0;
  *(v13 + 132) = 3;
  *(v13 + 133) = v63;
  *(v13 + 135) = v64;
  *(v13 + 136) = xmmword_182AF5DF0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = *(v13 + 128);
    v60 = *(v13 + 112);
    v61 = v16;
    v62 = *(v13 + 144);
    v17 = *(v13 + 64);
    v56 = *(v13 + 48);
    v57 = v17;
    v18 = *(v13 + 96);
    v58 = *(v13 + 80);
    v59 = v18;
    v19 = *(v13 + 32);
    v54 = *v14;
    v55 = v19;
    v20 = swift_allocObject();
    v21 = *(v13 + 128);
    *(v20 + 112) = *(v13 + 112);
    *(v20 + 128) = v21;
    *(v20 + 144) = *(v13 + 144);
    v22 = *(v13 + 64);
    *(v20 + 48) = *(v13 + 48);
    *(v20 + 64) = v22;
    v23 = *(v13 + 96);
    *(v20 + 80) = *(v13 + 80);
    *(v20 + 96) = v23;
    v24 = *(v13 + 32);
    *(v20 + 16) = *v14;
    *(v20 + 32) = v24;
    sub_181E63A90(&v54, v53);

    v13 = v20;
  }

  *(v13 + 80) = 0;
  *(v13 + 88) = 0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = *(v13 + 128);
    v60 = *(v13 + 112);
    v61 = v25;
    v62 = *(v13 + 144);
    v26 = *(v13 + 64);
    v56 = *(v13 + 48);
    v57 = v26;
    v27 = *(v13 + 96);
    v58 = *(v13 + 80);
    v59 = v27;
    v28 = *(v13 + 32);
    v54 = *(v13 + 16);
    v55 = v28;
    v29 = swift_allocObject();
    v30 = *(v13 + 128);
    *(v29 + 112) = *(v13 + 112);
    *(v29 + 128) = v30;
    *(v29 + 144) = *(v13 + 144);
    v31 = *(v13 + 64);
    *(v29 + 48) = *(v13 + 48);
    *(v29 + 64) = v31;
    v32 = *(v13 + 96);
    *(v29 + 80) = *(v13 + 80);
    *(v29 + 96) = v32;
    v33 = *(v13 + 32);
    *(v29 + 16) = *(v13 + 16);
    *(v29 + 32) = v33;
    sub_181E63A90(&v54, v53);

    v13 = v29;
  }

  *(v13 + 96) = 0;
  *(v13 + 104) = 0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = *(v13 + 128);
    v60 = *(v13 + 112);
    v61 = v34;
    v62 = *(v13 + 144);
    v35 = *(v13 + 64);
    v56 = *(v13 + 48);
    v57 = v35;
    v36 = *(v13 + 96);
    v58 = *(v13 + 80);
    v59 = v36;
    v37 = *(v13 + 32);
    v54 = *(v13 + 16);
    v55 = v37;
    v38 = swift_allocObject();
    memmove((v38 + 16), (v13 + 16), 0x88uLL);
    sub_181E63A90(&v54, v53);

    v13 = v38;
  }

  *(v13 + 112) = 0;
  *(v13 + 120) = 0;

  if (v52)
  {
    v39 = sub_182AD3158();
    v41 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = *(v13 + 128);
      v60 = *(v13 + 112);
      v61 = v42;
      v62 = *(v13 + 144);
      v43 = *(v13 + 64);
      v56 = *(v13 + 48);
      v57 = v43;
      v44 = *(v13 + 96);
      v58 = *(v13 + 80);
      v59 = v44;
      v45 = *(v13 + 32);
      v54 = *(v13 + 16);
      v55 = v45;
      v46 = swift_allocObject();
      memmove((v46 + 16), (v13 + 16), 0x88uLL);
      sub_181E63A90(&v54, v53);

      v13 = v46;
    }

    *(v13 + 136) = v39;
    *(v13 + 144) = v41;
  }

  *&v54 = v13;
  v47 = objc_allocWithZone(type metadata accessor for Endpoint(0));

  v48 = Endpoint.init(_:)(&v54);

  return v48;
}

id sub_1820EEAD4(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = 0;
    if (a2)
    {
      if (a3)
      {
        v3 = sub_182AD3158();
        v5 = v4;
        v6 = sub_182AD3158();
        v8 = v7;
        v9 = sub_182AD3158();
        sub_1821784FC(v3, v5, v6, v8, v9, v10, &v12);
        if (v12)
        {
          v11 = objc_allocWithZone(type metadata accessor for Endpoint(0));
          return Endpoint.init(_:)(&v12);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

id sub_1820EEBA0(id result)
{
  if (result)
  {
    v3 = 0uLL;
    v4 = sub_182AD3158();
    v5 = v1;
    v2 = objc_allocWithZone(type metadata accessor for Endpoint(0));
    return Endpoint.init(_:)(&v3);
  }

  return result;
}

id sub_1820EEC0C(id result)
{
  if (result)
  {
    v1 = sub_182AD3158();
    sub_18217AB24(v1, v2, &v4);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (v4 == 1)
    {
      return 0;
    }

    else
    {
      v5 = v9;
      v6 = v10;
      v7 = v11;
      v8 = v12;
      v3 = objc_allocWithZone(type metadata accessor for Endpoint(0));
      return Endpoint.init(_:)(&v4);
    }
  }

  return result;
}

void *_nw_endpoint_serialize_into_buffer(void *a1, size_t *a2)
{
  v3 = a1;
  v4 = sub_18217BF34();

  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = swift_slowAlloc();
    memcpy(v6, (v4 + 32), v5);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v5;
  return v6;
}

char *sub_1820EED2C(const void *a1, size_t a2)
{
  if (a2)
  {
    v4 = sub_181AC1BE8(a2, 0);
    memcpy(v4 + 4, a1, a2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = v4;
  v5 = objc_allocWithZone(type metadata accessor for Endpoint(0));
  v6 = sub_18217CE9C(&v8);

  return v6;
}

BOOL sub_1820EEDD8(void *a1, uint64_t a2, unsigned __int16 a3, int a4, char a5)
{
  v10 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v13 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v14 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v13, v12, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    sub_181A5513C(v12, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  v26 = a4;
  v16 = *(v12 + 2);
  v15 = *(v12 + 3);
  v17 = *(v12 + 16);
  if (v16 == sub_182AD3158() && v15 == v18)
  {

    goto LABEL_13;
  }

  v20 = sub_182AD4268();

  if (v20)
  {
LABEL_13:
    v21 = v17 != a3;
    goto LABEL_14;
  }

  v21 = 1;
LABEL_14:
  sub_181AB5F54(&v27);

  if (v27)
  {
    v23 = *(v27 + 16);

    v24 = v26;
    if (v21 || (a5 & 1) == 0)
    {
      return !v21;
    }
  }

  else
  {
    v24 = v26;
    if (v21 || (a5 & 1) == 0)
    {
      return !v21;
    }

    v23 = 0;
  }

  return v23 == v24;
}

uint64_t sub_1820EEFF0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;
  if (!sub_181B53584(19))
  {

LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

  sub_182AD3158();
  v6 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v7 = v5;
  swift_beginAccess();
  sub_181A546E0(v5 + v6, v4, type metadata accessor for Endpoint.EndpointType);
  v8 = v7;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v9 = v7;
    do
    {
      sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
      v10 = *&v9[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint];
      if (!v10)
      {
        goto LABEL_12;
      }

      v8 = v10;

      v11 = OBJC_IVAR____TtC7Network8Endpoint_type;
      swift_beginAccess();
      sub_181A546E0(&v8[v11], v4, type metadata accessor for Endpoint.EndpointType);
      v9 = v8;
    }

    while (swift_getEnumCaseMultiPayload() != 3);
  }

  v13 = *(v4 + 2);
  v12 = *(v4 + 3);

  if (!v12)
  {
    v9 = v8;
LABEL_12:

    goto LABEL_13;
  }

  v18[1] = v13;
  v18[2] = v12;

  v14 = sub_182AD31F8();

  if (v14)
  {
    sub_1820F1C20(v15);
  }

  v16 = sub_182AD31F8();

  return v16 & 1;
}

uint64_t _nw_endpoint_access_custom_metadata_for_key(void *a1, uint64_t a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  LOBYTE(a2) = sub_1820F4F70(a1, a2, v5);
  _Block_release(v5);
  return a2 & 1;
}

uint64_t sub_1820EF2A0@<X0>(uint64_t result@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, uint64_t a3@<X4>, unint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a4);
LABEL_11:
    result = a2(result, v7);
    *a5 = result & 1;
    return result;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v7 = HIDWORD(a3) - a3;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1820EF334(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_182AD3158();
    v9 = v8;
    v10 = a1;
    sub_181AA5FF0(&v21);

    if (v21)
    {
      v23 = v21;
      if (a3)
      {
LABEL_4:
        v11 = sub_181E63D00(a3, a4);
        NWTXTRecord.Entry.init(_:)(v11, v12, &v21);
        v19 = v21;
        v20 = v22;
        NWTXTRecord.setEntry(_:for:)(&v19, v7, v9);

        sub_1820F5168(v19, *(&v19 + 1), v20);
LABEL_9:
        v17 = v23;
        v18 = v10;
        v21 = v17;

        swift_unknownObjectRetain();
        sub_181E689C0(&v21);
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      v13 = sub_18225A6AC(MEMORY[0x1E69E7CC0]);
      NWTXTRecord.init(_:)(v13, &v23);
      if (a3)
      {
        goto LABEL_4;
      }
    }

    v14 = sub_182AD3048();
    v15 = swift_unknownObjectRetain();
    v16 = nw_txt_record_remove_key(v15, (v14 + 32));
    swift_unknownObjectRelease();

    if (v16)
    {
      sub_182250074(v7, v9, &v21);

      sub_1820F5188(v21, *(&v21 + 1), v22);
    }

    else
    {
    }

    goto LABEL_9;
  }
}

void sub_1820EF4D0(void *a1, unsigned int a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v18 - v8);
  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v11 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v10, v9, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v9;
    if (a2 >= 4)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0x2010003u >> (8 * a2);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(v12 + 112);
      v20[5] = *(v12 + 96);
      v20[6] = v14;
      v20[7] = *(v12 + 128);
      v21 = *(v12 + 144);
      v15 = *(v12 + 48);
      v20[1] = *(v12 + 32);
      v20[2] = v15;
      v16 = *(v12 + 80);
      v20[3] = *(v12 + 64);
      v20[4] = v16;
      v20[0] = *(v12 + 16);
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v17 = swift_allocObject();
      memmove((v17 + 16), (v12 + 16), 0x88uLL);
      sub_181E63A90(v20, &v19);

      v12 = v17;
    }

    *(v12 + 132) = v13;
    *v6 = v12;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_181B74E48(v6, a1 + v10);
    swift_endAccess();
  }

  else
  {

    sub_181A5513C(v9, type metadata accessor for Endpoint.EndpointType);
  }
}

void _nw_endpoint_set_agent_identifier_0(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  sub_181E29948(a2, &v6);
  v4 = v6;
  v5 = 0;
  sub_181E29CDC(&v4);
  if ((*&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x100) != 0)
  {
    *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] &= ~0x100u;
  }
}

void sub_1820EF778(char *a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_flags];
  v4 = a1;
  if ((v3 & 0x100) != 0 && (sub_181B532CC(&v7), (v9 & 1) == 0))
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v5 = &v7;
  }

  uuid_copy(a2, v5);
}

void sub_1820EF89C(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  sub_181E29948(a2, &v6);
  v4 = v6;
  v5 = 0;
  sub_181E29CDC(&v4);
  if ((*&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x100) == 0)
  {
    *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] |= 0x100u;
  }
}

void sub_1820EF924(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v20 - v8);
  if (a2)
  {
    v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
    v11 = a1;
    swift_beginAccess();
    sub_181A546E0(a1 + v10, v9, type metadata accessor for Endpoint.EndpointType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = *v9;
      v13 = sub_182AD3158();
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v12 + 7);
        v22[5] = *(v12 + 6);
        v22[6] = v16;
        v22[7] = *(v12 + 8);
        v23 = v12[18];
        v17 = *(v12 + 3);
        v22[1] = *(v12 + 2);
        v22[2] = v17;
        v18 = *(v12 + 5);
        v22[3] = *(v12 + 4);
        v22[4] = v18;
        v22[0] = *(v12 + 1);
        type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
        v19 = swift_allocObject();
        memmove((v19 + 16), v12 + 2, 0x88uLL);
        sub_181E63A90(v22, &v21);

        v12 = v19;
      }

      v12[6] = v13;
      v12[7] = v15;

      *v6 = v12;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_181B74E48(v6, a1 + v10);
      swift_endAccess();
    }

    else
    {

      sub_181A5513C(v9, type metadata accessor for Endpoint.EndpointType);
    }
  }
}

void sub_1820EFB48(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8 - 8];
  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v11 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v10, v9, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v9;
    if (a2)
    {
      v13 = sub_182AD3158();
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v12 + 112);
        v31 = *(v12 + 96);
        v32 = v16;
        v33 = *(v12 + 128);
        v34 = *(v12 + 144);
        v17 = *(v12 + 48);
        v27 = *(v12 + 32);
        v28 = v17;
        v18 = *(v12 + 80);
        v29 = *(v12 + 64);
        v30 = v18;
        v26 = *(v12 + 16);
        type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
        v19 = swift_allocObject();
        memmove((v19 + 16), (v12 + 16), 0x88uLL);
        sub_181E63A90(&v26, v25);

        v12 = v19;
      }

      *(v12 + 112) = v13;
      *(v12 + 120) = v15;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v12 + 112);
        v31 = *(v12 + 96);
        v32 = v20;
        v33 = *(v12 + 128);
        v34 = *(v12 + 144);
        v21 = *(v12 + 48);
        v27 = *(v12 + 32);
        v28 = v21;
        v22 = *(v12 + 80);
        v29 = *(v12 + 64);
        v30 = v22;
        v26 = *(v12 + 16);
        type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
        v23 = swift_allocObject();
        memmove((v23 + 16), (v12 + 16), 0x88uLL);
        sub_181E63A90(&v26, v25);

        v12 = v23;
      }

      *(v12 + 112) = 0;
      *(v12 + 120) = 0;
    }

    *v6 = v12;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_181B74E48(v6, a1 + v10);
    swift_endAccess();
  }

  else
  {

    sub_181A5513C(v9, type metadata accessor for Endpoint.EndpointType);
  }
}

void sub_1820EFDF4(void *a1, int a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v11 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v10, v9, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v12 + 112);
      v19[5] = *(v12 + 96);
      v19[6] = v13;
      v19[7] = *(v12 + 128);
      v20 = *(v12 + 144);
      v14 = *(v12 + 48);
      v19[1] = *(v12 + 32);
      v19[2] = v14;
      v15 = *(v12 + 80);
      v19[3] = *(v12 + 64);
      v19[4] = v15;
      v19[0] = *(v12 + 16);
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v16 = swift_allocObject();
      memmove((v16 + 16), (v12 + 16), 0x88uLL);
      sub_181E63A90(v19, &v18);

      v12 = v16;
    }

    *(v12 + 128) = a2;
    *v6 = v12;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_181B74E48(v6, a1 + v10);
    swift_endAccess();
  }

  else
  {

    sub_181A5513C(v9, type metadata accessor for Endpoint.EndpointType);
  }
}

void sub_1820EFFFC(void *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v11 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v10, v9, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v9;
    sub_181E29948(a2, &v21);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v12 + 112);
      v19[5] = *(v12 + 96);
      v19[6] = v13;
      v19[7] = *(v12 + 128);
      v20 = *(v12 + 144);
      v14 = *(v12 + 48);
      v19[1] = *(v12 + 32);
      v19[2] = v14;
      v15 = *(v12 + 80);
      v19[3] = *(v12 + 64);
      v19[4] = v15;
      v19[0] = *(v12 + 16);
      type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
      v16 = swift_allocObject();
      memmove((v16 + 16), (v12 + 16), 0x88uLL);
      sub_181E63A90(v19, &v18);

      v12 = v16;
    }

    *(v12 + 64) = v21;
    *v6 = v12;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_181B74E48(v6, a1 + v10);
    swift_endAccess();
  }

  else
  {

    sub_181A5513C(v9, type metadata accessor for Endpoint.EndpointType);
  }
}

uint64_t _nw_endpoint_clear_alternatives(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints;
  v3 = a1;
  swift_beginAccess();
  *&a1[v2] = MEMORY[0x1E69E7CC0];
}

BOOL _nw_endpoint_has_alternatives(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints;
  v3 = a1;
  swift_beginAccess();
  v4 = *&a1[v2];

  v5 = *(v4 + 16);

  return v5 != 0;
}

uint64_t sub_1820F0304(void *a1)
{
  v1 = a1;
  Endpoint.port.getter();

  sub_182AD41B8();
  v2 = sub_182AD30F8();
  v3 = __OFADD__(v2, 1);
  result = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_slowAlloc();
    result = sub_182AD30F8();
    v6 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v7 = sub_182AD3048();

      memcpy(v5, (v7 + 32), v6);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t _nw_endpoint_get_address_0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  else
  {
    v8 = v4[1];
    v14[0] = *v4;
    v14[1] = v8;
    v10 = *v4;
    v9 = v4[1];
    v15[0] = v4[2];
    *(v15 + 12) = *(v4 + 44);
    v12[0] = v10;
    v12[1] = v9;
    v13[0] = v4[2];
    *(v13 + 12) = *(v4 + 44);
    sub_181AA5564(v12);
    sub_181AA57B4(v14);
    v7 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_addressStorage];
  }

  return v7;
}

uint64_t sub_1820F0530(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v4;
    v8 = *(v7 + 80);
    v9 = *(v7 + 88);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 8, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t sub_1820F06A0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v4;
    v8 = *(v7 + 64);
    v9 = *(v7 + 72);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 9, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t sub_1820F0810(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v4;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 10, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t sub_1820F0980(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v4;
    v8 = *(v7 + 48);
    v9 = *(v7 + 56);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 11, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t sub_1820F0AF0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB2BF0(v6, 13, v8, v7, &v11);
    os_unfair_lock_unlock((*&v6[v9] + 16));

    return v11;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t _nw_endpoint_get_remote_interface_type(char *a1)
{
  v1 = a1[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType];

  return dword_182AF5E2C[v1];
}

void sub_1820F0CA0(void *a1, unsigned int a2)
{
  v3 = a1;
  if (a2 >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v3[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = v4;
}

void _nw_endpoint_clear_description(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v3 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_storageLock];
  v4 = a1;
  os_unfair_lock_lock(v3 + 4);
  sub_181F5FB48(v4);
  os_unfair_lock_unlock((*&a1[v2] + 16));
}

void _nw_endpoint_set_ech_config(char *a1, void *a2)
{
  v5 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_echConfig];
  *&a1[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = a2;
  v3 = a1;
  v4 = a2;
}

uint64_t _nw_endpoint_set_signature(void *a1, const void *a2, size_t a3)
{
  v5 = a1;
  *&v5[OBJC_IVAR____TtC7Network8Endpoint_signature] = xpc_data_create(a2, a3);

  return swift_unknownObjectRelease();
}

void _nw_endpoint_set_public_keys(void *a1)
{
  v2 = sub_182AD33C8();
  v3 = a1;
  sub_18217C31C(v2);
}

uint64_t _nw_endpoint_append_public_key(char *a1, void *a2)
{
  v3 = a2;
  v4 = sub_182AD2158();
  v6 = v5;

  sub_1820F0F24(a1, v4, v6);

  return sub_181C1F2E4(v4, v6);
}

void sub_1820F0F24(char *a1, uint64_t a2, unint64_t a3)
{
  v6 = *&a1[OBJC_IVAR____TtC7Network8Endpoint__publicKeys];

  v10 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_181F59F7C(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_181F59F7C((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  sub_181F49B58(a2, a3);
  sub_18217C31C(v6);
}

void sub_1820F1050(void *a1, char a2)
{
  v3 = a1;
  v4 = *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if (a2)
  {
    if ((v4 & 2) != 0)
    {
      goto LABEL_7;
    }

    v5 = v4 | 2;
  }

  else
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    v5 = v4 & 0xFFFD;
  }

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] = v5;
LABEL_7:
}

void sub_1820F10B4(void *a1, char a2)
{
  v3 = a1;
  v4 = *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if (a2)
  {
    if ((*&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x200) != 0)
    {
      goto LABEL_7;
    }

    v5 = v4 | 0x200;
  }

  else
  {
    if ((*&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x200) == 0)
    {
      goto LABEL_7;
    }

    v5 = v4 & 0xFDFF;
  }

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] = v5;
LABEL_7:
}

uint64_t sub_1820F1118(void *a1)
{
  v2 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v8, v7, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181B2BEE4(v7, v4);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_1820F12D0(v9, 17, &v13);
    os_unfair_lock_unlock((*&v9[v10] + 16));

    v11 = v13;
    sub_181A5513C(v4, type metadata accessor for URLEndpoint);
  }

  else
  {

    sub_181A5513C(v7, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  return v11;
}

uint64_t sub_1820F12D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16) && (sub_181A41ED0(a2), (v7 & 1) != 0))
  {
    swift_endAccess();
    swift_beginAccess();
    sub_18224FFEC(a2);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  sub_181B4B8F0();
  if (v8)
  {
    v9 = swift_slowAlloc();
    v10 = sub_182AD3048();

    __nwlog_create_hash_from_private_string((v10 + 32), v9);

    v11 = sub_182AD3158();
    v13 = v12;
    MEMORY[0x1865DF520](v9, -1, -1);
  }

  else
  {
    v13 = 0xE600000000000000;
    v11 = 0x3E6C6C756E3CLL;
  }

  v14 = sub_181AB284C(v11, v13);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + v6);
  *(a1 + v6) = 0x8000000000000000;
  sub_181AB36FC(v14, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v19;
  result = swift_endAccess();
  v17 = *(v19 + 16);
  if (v17)
  {
    result = sub_181A41ED0(a2);
    if (v18)
    {
      v17 = *(*(v19 + 56) + 8 * result) + 24;
    }

    else
    {
      v17 = 0;
    }
  }

  *a3 = v17;
  return result;
}

uint64_t sub_1820F14D0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);

  if (swift_getEnumCaseMultiPayload())
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
LABEL_3:
    v7 = 0;
    return v7 & 1;
  }

  v10 = *(v4 + 2);
  v9 = *(v4 + 3);
  v11 = *(v4 + 4);
  v12 = *(v4 + 20);
  v13 = v4[42];
  if (v13 > 1)
  {
    if (v13 == 2)
    {

      sub_181AD1DE4(v10, v9, v11, v12, 2u);
    }

    else if (v13 == 3)
    {

      sub_181AD1DE4(v10, v9, v11, v12, 3u);
    }

    else
    {

      sub_181AD1DE4(v10, v9, v11, v12, 4u);
    }

    goto LABEL_3;
  }

  if (v4[42])
  {
    v19 = *(v4 + 2);
    v20 = v9;
    v21 = v11;
    v15 = qword_1EA836528;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_1EA839428;
    v17 = unk_1EA839430;
    v18 = qword_1EA839438;

    v7 = _s7Network11IPv6AddressV2eeoiySbAC_ACtFZ_0(&v19, &v16);

    sub_181AD1DE4(v10, v9, v11, v12, 1u);

    sub_181AD1DE4(v10, v9, v11, v12, 1u);
  }

  else
  {
    LODWORD(v19) = *(v4 + 2);
    v20 = v9;
    v14 = qword_1EA837070;

    if (v14 != -1)
    {
      swift_once();
    }

    LODWORD(v16) = dword_1EA8393C0;
    v17 = qword_1EA8393C8;

    v7 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v19, &v16);

    sub_181AD1DE4(v10, v9, v11, v12, 0);

    sub_181AD1DE4(v10, v9, v11, v12, 0);
  }

  return v7 & 1;
}

void sub_1820F1810(void *a1, unsigned int a2)
{
  v3 = a1;
  if (a2 >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v3[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = v4;
}

void sub_1820F1860(void *a1, char a2)
{
  v3 = a1;
  v4 = *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if (a2)
  {
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = v4 | 1;
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    v5 = v4 & 0xFFFE;
  }

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] = v5;
LABEL_7:
}

uint64_t sub_1820F18C4(void *a1)
{
  v1 = a1;
  v2 = sub_182AD3158();
  v4 = v3;
  v5 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  os_unfair_lock_lock((*&v1[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
  v6 = sub_181AB284C(v2, v4);
  v7 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *&v1[v7];
  *&v1[v7] = 0x8000000000000000;
  sub_181AB36FC(v6, 0x13u, isUniquelyReferenced_nonNull_native);
  *&v1[v7] = v10;
  swift_endAccess();
  os_unfair_lock_unlock((*&v1[v5] + 16));
}

void sub_1820F19B4(char *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = sub_182AD3158();
    v5 = v4;
    v6 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v2[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    v7 = sub_181AB284C(v3, v5);
    v8 = OBJC_IVAR____TtC7Network8Endpoint_storage;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *&v2[v8];
    *&v2[v8] = 0x8000000000000000;
    sub_181AB36FC(v7, 0x14u, isUniquelyReferenced_nonNull_native);
    *&v2[v8] = v14;
    swift_endAccess();
    os_unfair_lock_unlock((*&v2[v6] + 16));
  }

  else
  {
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_storageLock];
    v13 = a1;
    os_unfair_lock_lock(v11 + 4);
    os_unfair_lock_unlock((*&a1[v10] + 16));
  }
}

void sub_1820F1B04(void *a1, char a2)
{
  v3 = a1;
  v4 = *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if (a2)
  {
    if ((v4 & 8) != 0)
    {
      goto LABEL_7;
    }

    v5 = v4 | 8;
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    v5 = v4 & 0xFFF7;
  }

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] = v5;
LABEL_7:
}

uint64_t _nw_endpoint_set_cname_array(void *a1, void *a2)
{
  v3 = a1;
  swift_beginAccess();
  v4 = a2;

  v6 = sub_1820EDCFC(v5);

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_cnames] = v6;
}

uint64_t sub_1820F1C20(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = sub_182AD3118();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t sub_1820F1C88(void *a1, int64_t a2, uint64_t a3, char a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v4;
  v5 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v5;
  v6 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v6;
  v11 = *(a3 + 96);
  if (a4)
  {
    for (i = 0; i != 104; ++i)
    {
      if (!*(v10 + i))
      {
        break;
      }
    }
  }

  else
  {
    i = 104;
  }

  if (i && a2)
  {
    if (i >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = i;
    }

    memcpy(a1, v10, v8);
    if (v8 >= 0x69)
    {
      __break(1u);
    }
  }

  return i;
}

unsigned __int8 *sub_1820F1D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
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
      result = sub_182AD3CF8();
      v7 = v74;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
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

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_126;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
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
          LOBYTE(v35) = 0;
          v36 = a3;
          v16 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v32)
            {
              if (v37 < 0x41 || v37 >= v33)
              {
                v19 = 0;
                if (v37 < 0x61 || v37 >= v34)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v35 * v36;
            v40 = (v35 * v36);
            if (v40 != v39)
            {
              goto LABEL_126;
            }

            v35 = v40 + (v37 + v38);
            if (v35 != v35)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v16 = 0;
          v19 = v35;
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
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_127;
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

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_126;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
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
        v19 = 0;
        v16 = 0;
LABEL_127:

        return (v19 | (v16 << 8));
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

  v43 = HIBYTE(v5) & 0xF;
  v75 = v6;
  v76 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOBYTE(v45) = 0;
        v65 = a3 + 48;
        v66 = a3 + 55;
        v67 = a3 + 87;
        if (a3 > 10)
        {
          v65 = 58;
        }

        else
        {
          v67 = 97;
          v66 = 65;
        }

        v68 = &v75;
        v69 = a3;
        v16 = 1;
        while (1)
        {
          v70 = *v68;
          if (v70 < 0x30 || v70 >= v65)
          {
            if (v70 < 0x41 || v70 >= v66)
            {
              v19 = 0;
              if (v70 < 0x61 || v70 >= v67)
              {
                goto LABEL_127;
              }

              v71 = -87;
            }

            else
            {
              v71 = -55;
            }
          }

          else
          {
            v71 = -48;
          }

          v72 = v45 * v69;
          v73 = (v45 * v69);
          if (v73 != v72)
          {
            goto LABEL_126;
          }

          v45 = v73 + (v70 + v71);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOBYTE(v45) = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v75 + 1;
        v50 = a3;
        v16 = 1;
        while (1)
        {
          v51 = *v49;
          if (v51 < 0x30 || v51 >= v46)
          {
            if (v51 < 0x41 || v51 >= v47)
            {
              v19 = 0;
              if (v51 < 0x61 || v51 >= v48)
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

          v53 = v45 * v50;
          v54 = (v45 * v50);
          if (v54 != v53)
          {
            goto LABEL_126;
          }

          v45 = v54 - (v51 + v52);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v55 = v43 - 1;
    if (v55)
    {
      LOBYTE(v45) = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v75 + 1;
      v60 = a3;
      v16 = 1;
      do
      {
        v61 = *v59;
        if (v61 < 0x30 || v61 >= v56)
        {
          if (v61 < 0x41 || v61 >= v57)
          {
            v19 = 0;
            if (v61 < 0x61 || v61 >= v58)
            {
              goto LABEL_127;
            }

            v62 = -87;
          }

          else
          {
            v62 = -55;
          }
        }

        else
        {
          v62 = -48;
        }

        v63 = v45 * v60;
        v64 = (v45 * v60);
        if (v64 != v63)
        {
          goto LABEL_126;
        }

        v45 = v64 + (v61 + v62);
        if (v45 != v45)
        {
          goto LABEL_126;
        }

        ++v59;
        --v55;
      }

      while (v55);
LABEL_125:
      v16 = 0;
      v19 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1820F2348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
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
      result = sub_182AD3CF8();
      v7 = v74;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
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

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_126;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
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
          LOWORD(v35) = 0;
          v36 = a3;
          v16 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v32)
            {
              if (v37 < 0x41 || v37 >= v33)
              {
                v19 = 0;
                if (v37 < 0x61 || v37 >= v34)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v35 * v36;
            v40 = (v35 * v36);
            if (v40 != v39)
            {
              goto LABEL_126;
            }

            v35 = v40 + (v37 + v38);
            if (v35 != v35)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v16 = 0;
          v19 = v35;
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
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_127;
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

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_126;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
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
        v19 = 0;
        v16 = 0;
LABEL_127:

        return (v19 | (v16 << 16));
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

  v43 = HIBYTE(v5) & 0xF;
  v75 = v6;
  v76 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOWORD(v45) = 0;
        v65 = a3 + 48;
        v66 = a3 + 55;
        v67 = a3 + 87;
        if (a3 > 10)
        {
          v65 = 58;
        }

        else
        {
          v67 = 97;
          v66 = 65;
        }

        v68 = &v75;
        v69 = a3;
        v16 = 1;
        while (1)
        {
          v70 = *v68;
          if (v70 < 0x30 || v70 >= v65)
          {
            if (v70 < 0x41 || v70 >= v66)
            {
              v19 = 0;
              if (v70 < 0x61 || v70 >= v67)
              {
                goto LABEL_127;
              }

              v71 = -87;
            }

            else
            {
              v71 = -55;
            }
          }

          else
          {
            v71 = -48;
          }

          v72 = v45 * v69;
          v73 = (v45 * v69);
          if (v73 != v72)
          {
            goto LABEL_126;
          }

          v45 = v73 + (v70 + v71);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOWORD(v45) = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v75 + 1;
        v50 = a3;
        v16 = 1;
        while (1)
        {
          v51 = *v49;
          if (v51 < 0x30 || v51 >= v46)
          {
            if (v51 < 0x41 || v51 >= v47)
            {
              v19 = 0;
              if (v51 < 0x61 || v51 >= v48)
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

          v53 = v45 * v50;
          v54 = (v45 * v50);
          if (v54 != v53)
          {
            goto LABEL_126;
          }

          v45 = v54 - (v51 + v52);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v55 = v43 - 1;
    if (v55)
    {
      LOWORD(v45) = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v75 + 1;
      v60 = a3;
      v16 = 1;
      do
      {
        v61 = *v59;
        if (v61 < 0x30 || v61 >= v56)
        {
          if (v61 < 0x41 || v61 >= v57)
          {
            v19 = 0;
            if (v61 < 0x61 || v61 >= v58)
            {
              goto LABEL_127;
            }

            v62 = -87;
          }

          else
          {
            v62 = -55;
          }
        }

        else
        {
          v62 = -48;
        }

        v63 = v45 * v60;
        v64 = (v45 * v60);
        if (v64 != v63)
        {
          goto LABEL_126;
        }

        v45 = v64 + (v61 + v62);
        if (v45 != v45)
        {
          goto LABEL_126;
        }

        ++v59;
        --v55;
      }

      while (v55);
LABEL_125:
      v16 = 0;
      v19 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1820F2934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = sub_182AD3CF8();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
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

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
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
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
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

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
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

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
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

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
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

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}