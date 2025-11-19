uint64_t sub_23A945828(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for HullPoint();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A945890(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_23A945610(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void sub_23A945960(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for HullPoint();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_23AA0D7F4();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_23AA0D7F4();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x28223BE20](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_23A945890(v4, sub_23A946A3C);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_23A945AF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_23AA0D7F4() < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v10 = sub_23AA0D7F4();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v13 = sub_23AA0D7F4();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  sub_23A914060(v14, 1);

  sub_23A945960(v6, v5, v10, v3);
}

char *sub_23A945C0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for HullPoint();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_23AA0D7F4();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_23AA0D7F4();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_23A945D28(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23AA0D7F4();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_23AA0D7F4();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_23A914060(result, 1);

  return sub_23A945C0C(v6, v5, 1, v3);
}

uint64_t sub_23A945E44(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v7 = a4;
    v10 = a3;
    v8 = a2;
    v9 = a1;
    v11 = *v6;
    v12 = *v6 >> 62;
    if (!v12)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_23AA0D7F4();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v15 = sub_23AA0D7F4();
  }

  else
  {
    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (!v16)
  {
    v10(result, 1);
    return sub_23A9462F8(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_23A945FC8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 16 * result);
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = *(v7 + 16);
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_21;
  }

  result = v8 + 16 * a3;
  v12 = (v7 + 32 + 16 * a2);
  if (result != v12 || result >= v12 + 16 * v11)
  {
    v14 = a3;
    v15 = a4;
    result = memmove(result, v12, 16 * v11);
    a3 = v14;
    a4 = v15;
  }

  v16 = *(v7 + 16);
  v10 = __OFADD__(v16, v6);
  v17 = v16 + v6;
  if (v10)
  {
    goto LABEL_22;
  }

  *(v7 + 16) = v17;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = 16 * a3;

  return memcpy(v8, (a4 + 32), v18);
}

unint64_t sub_23A9460BC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v6;
    }

    v5 = sub_23A938E7C(isUniquelyReferenced_nonNull_native, v16, 1, v5);
    *v3 = v5;
  }

  result = sub_23A945FC8(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_23A946190(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_23A946238(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A9462F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(a4);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_23AA0D7F4();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_23AA0D7F4();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A9463FC(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0x400E000000000000;
  type metadata accessor for FrameTextureCache();
  v4 = swift_allocObject();
  sub_23A944390();
  v5 = MEMORY[0x277D84F98];
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = 998445679;
  *(v2 + 48) = 5;
  *(v2 + 128) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 120) = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  CVMetalTextureCacheCreate(0, 0, a1, 0, (v2 + 128));
  swift_endAccess();
  v6 = [objc_allocWithZone(MEMORY[0x277CD7528]) initWithDevice:a1 kernelDiameter:5];
  *(v2 + 56) = v6;
  LODWORD(v7) = 998445679;
  [v6 setEpsilon_];
  *(v2 + 64) = [objc_allocWithZone(MEMORY[0x277CD74E0]) initWithDevice_];
  return v2;
}

CVPixelBufferPoolRef sub_23A94652C(__CVBuffer *a1)
{
  poolOut[1] = *MEMORY[0x277D85DE8];
  poolOut[0] = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF840, &qword_23AA14A48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA12950;
  v6 = *MEMORY[0x277CC4E30];
  *(inited + 32) = sub_23AA0D134();
  v7 = MEMORY[0x277D84CC0];
  *(inited + 40) = v8;
  *(inited + 72) = v7;
  *(inited + 48) = PixelFormatType;
  v9 = *MEMORY[0x277CC4EC8];
  v10 = sub_23AA0D134();
  v11 = MEMORY[0x277D83B88];
  *(inited + 80) = v10;
  *(inited + 88) = v12;
  *(inited + 120) = v11;
  *(inited + 96) = Width;
  v13 = *MEMORY[0x277CC4DD8];
  *(inited + 128) = sub_23AA0D134();
  *(inited + 136) = v14;
  *(inited + 168) = v11;
  *(inited + 144) = Height;
  v15 = *MEMORY[0x277CC4DB0];
  *(inited + 176) = sub_23AA0D134();
  *(inited + 184) = v16;
  v17 = extraColumnsOnLeft;
  *(inited + 216) = v11;
  *(inited + 192) = v17;
  v18 = *MEMORY[0x277CC4DB8];
  *(inited + 224) = sub_23AA0D134();
  *(inited + 232) = v19;
  v20 = extraColumnsOnRight;
  *(inited + 264) = v11;
  *(inited + 240) = v20;
  v21 = *MEMORY[0x277CC4DC0];
  *(inited + 272) = sub_23AA0D134();
  *(inited + 280) = v22;
  v23 = extraRowsOnTop;
  *(inited + 312) = v11;
  *(inited + 288) = v23;
  v24 = *MEMORY[0x277CC4DA0];
  *(inited + 320) = sub_23AA0D134();
  *(inited + 328) = v25;
  v26 = extraRowsOnBottom;
  *(inited + 360) = v11;
  *(inited + 336) = v26;
  v27 = *MEMORY[0x277CC4DE8];
  *(inited + 368) = sub_23AA0D134();
  *(inited + 376) = v28;
  v29 = sub_23A9DCB74(MEMORY[0x277D84F90]);
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF848, &unk_23AA14A50);
  *(inited + 384) = v29;
  sub_23A9DCC9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF850, &qword_23AA1B2D0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF858, &qword_23AA14A60);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_23AA10FC0;
  v31 = *MEMORY[0x277CC4E50];
  *(v30 + 32) = sub_23AA0D134();
  *(v30 + 40) = v32;
  *(v30 + 48) = 10;
  sub_23A9DCDCC(v30);
  swift_setDeallocating();
  sub_23A946944(v30 + 32);
  v33 = *MEMORY[0x277CBECE8];
  v34 = sub_23AA0D024();

  v35 = sub_23AA0D024();

  CVPixelBufferPoolCreate(v33, v34, v35, poolOut);

  result = poolOut[0];
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_23A946858(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A9468FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_23A946944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF860, &qword_23AA14A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A9469AC()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[9];
  swift_unknownObjectRelease();
  v3 = v0[10];
  swift_unknownObjectRelease();
  v4 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A946A58(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23A977E34(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_23A947468(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23A946AC4(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vceq_f32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_23A946B38(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s32(vceqq_f32(v6, v7));
    if (((v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return (v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1;
}

uint64_t sub_23A946BB8(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A946C14(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A946C70(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A946CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 40)
  {
    result = sub_23A910674(v3, v10);
    if (!v2)
    {
      break;
    }

    sub_23A910674(i, v9);
    sub_23A9106D0();
    v6 = sub_23AA0D054();
    v7 = sub_23AA0D054();
    sub_23A910724(v9);
    sub_23A910724(v10);
    result = v6 == v7;
    v8 = v6 != v7 || v2-- == 1;
    v3 += 40;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A946DC8(float32x2_t *a1, char a2, float a3, double a4, int32x2_t a5)
{
  *a5.i32 = a3;
  v7 = v5[5];
  v8 = a1[5];
  v9 = v7[2];
  if (*&v9 == *&v8[2])
  {
    if (v9)
    {
      v10 = v7 == v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
LABEL_9:
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
        result = swift_allocObject();
        *(result + 16) = xmmword_23AA11C10;
        v15 = a1[3];
        *(result + 32) = a1[2];
        *(result + 40) = v15;
        return result;
      }

      return MEMORY[0x277D84F90];
    }

    v11 = v7 + 4;
    v12 = v8 + 4;
    while (1)
    {
      v13 = vceq_f32(*v11, *v12);
      if ((v13.i32[0] & v13.i32[1] & 1) == 0)
      {
        break;
      }

      ++v12;
      ++v11;
      if (!--*&v9)
      {
        goto LABEL_9;
      }
    }
  }

  v17 = v5[2];
  v16 = v5[3];
  v18 = vsub_f32(v16, v17);
  v20 = a1[2];
  v19 = a1[3];
  v21 = vsub_f32(v19, v20);
  v51 = a5;
  v22 = _simd_orient_vf2(v18, v21);
  v23 = vsub_f32(v20, v17);
  v24 = _simd_orient_vf2(v23, v18);
  v25 = fabsf(v24);
  if (fabsf(v22) < *v51.i32 && v25 < *v51.i32)
  {
    v27 = vcgt_f32(vdup_lane_s32(v51, 0), vabs_f32(v23));
    if (v27.i32[0] & v27.i32[1] & 1) != 0 || (sub_23A8ED98C(v5, *v51.i32, v20))
    {
      v28 = sub_23A938A28(0, 1, 1, MEMORY[0x277D84F90]);
      v29 = *(v28 + 2);
      v30 = *(v28 + 3);
      v31 = v29 + 1;
      if (v29 >= v30 >> 1)
      {
        v49 = *(v28 + 2);
        v28 = sub_23A938A28((v30 > 1), v31, 1, v28);
        v29 = v49;
      }
    }

    else
    {
      if ((sub_23A8ED98C(a1, *v51.i32, v17) & 1) == 0)
      {
        v28 = MEMORY[0x277D84F90];
        v32 = *v51.i32;
LABEL_23:
        v33 = vsub_f32(v19, v16);
        v34 = fabsf(v33.f32[1]);
        if (fabsf(v33.f32[0]) < v32 && v34 < v32)
        {
          v47 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_23A938A28(0, *(v47 + 2) + 1, 1, v47);
          }

          result = v47;
          v38 = *(v47 + 2);
          v37 = *(v47 + 3);
        }

        else
        {
          v36 = v28;
          if ((sub_23A8ED98C(v5, v32, v19) & 1) == 0)
          {
            if ((sub_23A8ED98C(a1, *v51.i32, v16) & 1) == 0)
            {
              return v36;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = sub_23A938A28(0, *(v36 + 2) + 1, 1, v36);
            }

            result = v36;
            v45 = *(v36 + 2);
            v44 = *(v36 + 3);
            if (v45 >= v44 >> 1)
            {
              result = sub_23A938A28((v44 > 1), v45 + 1, 1, v36);
            }

            *(result + 16) = v45 + 1;
            *(result + 8 * v45 + 32) = v16;
            return result;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_23A938A28(0, *(v36 + 2) + 1, 1, v36);
          }

          result = v36;
          v38 = *(v36 + 2);
          v37 = *(v36 + 3);
        }

        if (v38 >= v37 >> 1)
        {
          result = sub_23A938A28((v37 > 1), v38 + 1, 1, result);
        }

        *(result + 16) = v38 + 1;
        *(result + 8 * v38 + 32) = v19;
        return result;
      }

      v28 = sub_23A938A28(0, 1, 1, MEMORY[0x277D84F90]);
      v29 = *(v28 + 2);
      v46 = *(v28 + 3);
      v31 = v29 + 1;
      if (v29 >= v46 >> 1)
      {
        v50 = *(v28 + 2);
        v28 = sub_23A938A28((v46 > 1), v31, 1, v28);
        v29 = v50;
      }

      v20 = v17;
    }

    v32 = *v51.i32;
    *(v28 + 2) = v31;
    *&v28[8 * v29 + 32] = v20;
    goto LABEL_23;
  }

  if (v22 == 0.0 && v24 != 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  v39 = v24;
  v40 = _simd_orient_vf2(v23, v21) / v22;
  result = MEMORY[0x277D84F90];
  if (v40 >= 0.0 && v40 <= 1.0 && (v39 / v22) >= 0.0 && (v39 / v22) <= 1.0)
  {
    v52 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
    result = swift_allocObject();
    *(result + 16) = xmmword_23AA10FC0;
    if (v52 == 0.0 || v52 == 1.0)
    {
      v48 = vadd_f32(v17, vmul_n_f32(v18, v52));
    }

    else
    {
      v48 = vadd_f32(v20, vmul_n_f32(v21, v39 / v22));
    }

    *(result + 32) = v48;
  }

  return result;
}

uint64_t sub_23A947224(double a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v5 = vceq_f32(*&a1, *&a2);
  *(v2 + 32) = v5.i8[0] & v5.i8[4] & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23AA11C10;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v8 = v6;

  sub_23A946A58(&v8);

  *(v2 + 40) = v8;
  return v2;
}

uint64_t sub_23A947308()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_23A947364()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23A947DEC(v3, *(v1 + 40));
  return sub_23AA0DD54();
}

uint64_t sub_23A9473B8()
{
  sub_23AA0DD14();
  sub_23A947DEC(v2, *(*v0 + 40));
  return sub_23AA0DD54();
}

unint64_t sub_23A947414()
{
  result = qword_27DFAF868;
  if (!qword_27DFAF868)
  {
    type metadata accessor for CDTEdge();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF868);
  }

  return result;
}

uint64_t sub_23A947468(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23AA0DBA4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        v6 = sub_23AA0D324();
        *(v6 + 16) = v5;
      }

      v17[0] = v6 + 32;
      v17[1] = v5;
      sub_23A9475D0(v17, v18, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v2 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v2 >= 2)
  {
    v7 = *a1;
    v8 = -1;
    v9 = 1;
    v10 = *a1;
    do
    {
      v11 = *(v7 + 8 * v9);
      v12 = v8;
      v13 = v10;
      do
      {
        v14 = *v13;
        v15 = vcgt_f32(*v13, v11);
        if (fabsf(vsub_f32(v11, *v13).f32[0]) >= 0.00000011921)
        {
          if ((v15.i8[0] & 1) == 0)
          {
            break;
          }
        }

        else if ((v15.i8[4] & 1) == 0)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_23;
        }

        *v13 = v11;
        v13[1] = v14;
        --v13;
      }

      while (!__CFADD__(v12++, 1));
      ++v9;
      v10 += 8;
      --v8;
    }

    while (v9 != v2);
  }

  return result;
}

uint64_t sub_23A9475D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_95:
      v89 = v10;
      v81 = *(v10 + 2);
      if (v81 >= 2)
      {
        while (*a3)
        {
          v82 = *&v10[16 * v81];
          v83 = *&v10[16 * v81 + 24];
          sub_23A947BA4((*a3 + 8 * v82), (*a3 + 8 * *&v10[16 * v81 + 16]), (*a3 + 8 * v83), v5);
          if (v4)
          {
          }

          if (v83 < v82)
          {
            goto LABEL_118;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23A977E20(v10);
          }

          if (v81 - 2 >= *(v10 + 2))
          {
            goto LABEL_119;
          }

          v84 = &v10[16 * v81];
          *v84 = v82;
          *(v84 + 1) = v83;
          v89 = v10;
          result = sub_23A977D94(v81 - 1);
          v10 = v89;
          v81 = *(v89 + 2);
          if (v81 <= 1)
          {
          }
        }

        goto LABEL_129;
      }
    }

LABEL_125:
    result = sub_23A977E20(v10);
    v10 = result;
    goto LABEL_95;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = v9++;
  if (v9 < v7)
  {
    v12 = *(*a3 + 8 * v9);
    v13 = 8 * v11;
    v14 = (*a3 + 8 * v11);
    v16 = *v14;
    v15 = v14 + 2;
    v88 = vcgt_f32(v16, v12);
    v17 = *(&v88 | (4 * (fabsf(vsub_f32(v12, v16).f32[0]) < 0.00000011921)));
    v18 = v11 + 2;
    if (v7 > v11 + 2)
    {
      v18 = v7;
    }

    v19 = v18 - v11 - 2;
    while (v19)
    {
      v20 = *v15++;
      v21 = fabsf(vsub_f32(v20, v12).f32[0]);
      v87 = vcgt_f32(v12, v20);
      --v19;
      ++v9;
      v12 = v20;
      if ((v17 & 1) != (*(&v87 | (4 * (v21 < 0.00000011921))) & 1))
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }
    }

    v9 = v18;
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v9 < v11)
    {
      goto LABEL_122;
    }

    if (v11 < v9)
    {
      v22 = 8 * v9 - 8;
      v23 = v9;
      v24 = v11;
      do
      {
        if (v24 != --v23)
        {
          v26 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v25 = *(v26 + v13);
          *(v26 + v13) = *(v26 + v22);
          *(v26 + v22) = v25;
        }

        ++v24;
        v22 -= 8;
        v13 += 8;
      }

      while (v24 < v23);
      v7 = a3[1];
    }
  }

LABEL_22:
  if (v9 >= v7)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_121;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_42;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_123;
  }

  if (v11 + v8 < v7)
  {
    v7 = v11 + v8;
  }

  if (v7 < v11)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (v9 == v7)
  {
    goto LABEL_42;
  }

  v27 = *a3;
  v28 = *a3 + 8 * v9 - 8;
  v29 = v11 - v9;
LABEL_32:
  v30 = *(v27 + 8 * v9);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    v33 = *v32;
    v34 = vcgt_f32(*v32, v30);
    if (fabsf(vsub_f32(v30, *v32).f32[0]) >= 0.00000011921)
    {
      if ((v34.i8[0] & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((v34.i8[4] & 1) == 0)
    {
      goto LABEL_31;
    }

    if (!v27)
    {
      break;
    }

    *v32 = v30;
    v32[1] = v33;
    --v32;
    if (__CFADD__(v31++, 1))
    {
LABEL_31:
      ++v9;
      v28 += 8;
      --v29;
      if (v9 != v7)
      {
        goto LABEL_32;
      }

      v9 = v7;
LABEL_42:
      if (v9 < v11)
      {
        goto LABEL_120;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23A938B2C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v5 = *(v10 + 2);
      v36 = *(v10 + 3);
      v37 = v5 + 1;
      if (v5 >= v36 >> 1)
      {
        result = sub_23A938B2C((v36 > 1), v5 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v5];
      *(v38 + 4) = v11;
      *(v38 + 5) = v9;
      v39 = *v86;
      if (!*v86)
      {
        goto LABEL_130;
      }

      if (v5)
      {
        while (1)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v41 = *(v10 + 4);
            v42 = *(v10 + 5);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_62:
            if (v44)
            {
              goto LABEL_109;
            }

            v57 = &v10[16 * v37];
            v59 = *v57;
            v58 = *(v57 + 1);
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_112;
            }

            v63 = &v10[16 * v40 + 32];
            v65 = *v63;
            v64 = *(v63 + 1);
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v61, v66))
            {
              goto LABEL_116;
            }

            if (v61 + v66 >= v43)
            {
              if (v43 < v66)
              {
                v40 = v37 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v67 = &v10[16 * v37];
          v69 = *v67;
          v68 = *(v67 + 1);
          v51 = __OFSUB__(v68, v69);
          v61 = v68 - v69;
          v62 = v51;
LABEL_76:
          if (v62)
          {
            goto LABEL_111;
          }

          v70 = &v10[16 * v40];
          v72 = *(v70 + 4);
          v71 = *(v70 + 5);
          v51 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v51)
          {
            goto LABEL_114;
          }

          if (v73 < v61)
          {
            goto LABEL_3;
          }

LABEL_83:
          v5 = v40 - 1;
          if (v40 - 1 >= v37)
          {
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
LABEL_116:
            __break(1u);
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_127;
          }

          v78 = *&v10[16 * v5 + 32];
          v79 = *&v10[16 * v40 + 40];
          sub_23A947BA4((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v40 + 32]), (*a3 + 8 * v79), v39);
          if (v4)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23A977E20(v10);
          }

          if (v5 >= *(v10 + 2))
          {
            goto LABEL_106;
          }

          v80 = &v10[16 * v5];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          v89 = v10;
          result = sub_23A977D94(v40);
          v10 = v89;
          v37 = *(v89 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v45 = &v10[16 * v37 + 32];
        v46 = *(v45 - 64);
        v47 = *(v45 - 56);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_107;
        }

        v50 = *(v45 - 48);
        v49 = *(v45 - 40);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_108;
        }

        v52 = &v10[16 * v37];
        v54 = *v52;
        v53 = *(v52 + 1);
        v51 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (v51)
        {
          goto LABEL_110;
        }

        v51 = __OFADD__(v43, v55);
        v56 = v43 + v55;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v56 >= v48)
        {
          v74 = &v10[16 * v40 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v51 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v51)
          {
            goto LABEL_117;
          }

          if (v43 < v77)
          {
            v40 = v37 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_3:
      v7 = a3[1];
      v8 = a4;
      if (v9 >= v7)
      {
        goto LABEL_93;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_23A947BA4(float32x2_t *__src, float32x2_t *__dst, float32x2_t *a3, float32x2_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_27:
      v18 = v6 - 1;
      --v5;
      v19 = v14;
      do
      {
        v20 = *(v19 - 8);
        v19 -= 8;
        v21 = v20;
        v22 = vcgt_f32(*v18, v20);
        if (fabsf(vsub_f32(v20, *v18).f32[0]) >= 0.00000011921)
        {
          if (v22.i8[0])
          {
LABEL_35:
            if (&v5[1] != v6)
            {
              *v5 = *v18;
            }

            if (v14 <= v4 || (--v6, v18 <= v7))
            {
              v6 = v18;
              goto LABEL_42;
            }

            goto LABEL_27;
          }
        }

        else if (v22.i8[4])
        {
          goto LABEL_35;
        }

        if (&v5[1] != v14)
        {
          *v5 = v21;
        }

        --v5;
        v14 = v19;
      }

      while (v19 > v4);
      v14 = v19;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      do
      {
        v15 = *v6;
        v16 = vcgt_f32(*v4, *v6);
        if (fabsf(vsub_f32(*v6, *v4).f32[0]) >= 0.00000011921)
        {
          if ((v16.i8[0] & 1) == 0)
          {
LABEL_13:
            v15 = *v4;
            v17 = v7 == v4++;
            if (v17)
            {
              goto LABEL_15;
            }

LABEL_14:
            *v7 = v15;
            goto LABEL_15;
          }
        }

        else if ((v16.i8[4] & 1) == 0)
        {
          goto LABEL_13;
        }

        v17 = v7 == v6++;
        if (!v17)
        {
          goto LABEL_14;
        }

LABEL_15:
        ++v7;
      }

      while (v4 < v14 && v6 < v5);
    }

    v6 = v7;
  }

LABEL_42:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v23 >> 3));
  }

  return 1;
}

uint64_t sub_23A947DEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EE907C0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_23AA0DD44();
      result = sub_23AA0DD44();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_23A947ED8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23A8CA1F0(a1);

  *a2 = v3;
  return result;
}

void sub_23A947F18(char a1)
{
  v3 = sub_23AA0CE84();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = v1[5];
  if (a1)
  {
    if (v5 || v1[6] || v1[7] || v1[8] || v1[9])
    {
      return;
    }

    v6 = v1;
    v7 = objc_opt_self();
    v8 = [v7 systemRedColor];
    v9 = type metadata accessor for DebugArrowEntity();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_23A8EB620(v8);
    v13 = [v7 magentaColor];
    v14 = *(v9 + 48);
    v15 = *(v9 + 52);
    swift_allocObject();
    v22 = sub_23A8EB620(v13);
    v23 = [v7 systemGreenColor];
    v24 = *(v9 + 48);
    v25 = *(v9 + 52);
    swift_allocObject();
    v40 = sub_23A8EB620(v23);
    v26 = [v7 systemMintColor];
    v27 = *(v9 + 48);
    v28 = *(v9 + 52);
    swift_allocObject();
    v39 = sub_23A8EB620(v26);
    v29 = [v7 blueColor];
    v30 = *(v9 + 48);
    v31 = *(v9 + 52);
    swift_allocObject();
    v32 = sub_23A8EB620(v29);
    v33 = v6[3];
    type metadata accessor for DollHouse();

    sub_23AA0C214();

    sub_23AA0C214();

    sub_23AA0C214();

    sub_23AA0C214();

    sub_23AA0C214();
    sub_23AA0CA94();

    sub_23AA0CA94();

    sub_23AA0CA94();

    sub_23AA0CA94();

    sub_23AA0CA94();

    v34 = v6[5];
    v6[5] = v12;

    v35 = v6[6];
    v6[6] = v22;

    v36 = v6[7];
    v6[7] = v40;

    v37 = v6[8];
    v6[8] = v39;

    v38 = v6[9];
    v6[9] = v32;
  }

  else
  {
    if (!v5 || !v1[6] || !v1[7] || !v1[8] || !v1[9])
    {
      return;
    }

    v16 = v1[3];
    type metadata accessor for DollHouse();

    sub_23AA0C1F4();
    sub_23AA0C1F4();
    sub_23AA0C1F4();
    sub_23AA0C1F4();
    sub_23AA0C1F4();

    v17 = v1[5];
    v1[5] = 0;

    v18 = v1[6];
    v1[6] = 0;

    v19 = v1[7];
    v1[7] = 0;

    v20 = v1[8];
    v1[8] = 0;

    v21 = v1[9];
    v1[9] = 0;
  }
}

void sub_23A94857C(uint64_t a1)
{
  v2 = v1[4];
  if (v2)
  {
    if (v1[5])
    {
      if (v1[6])
      {
        if (v1[7])
        {
          if (v1[8])
          {
            v3 = v1[9];
            if (v3)
            {
              v4 = *(a1 + qword_27DFC09F8);

              sub_23AA0C9D4();
              v6 = COERCE_DOUBLE(vzip1_s32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)));
              v7 = vmulq_f32(v5, v5);
              v7.f32[0] = sqrtf(v7.f32[0] + v7.f32[2]);
              v8 = COERCE_DOUBLE(vdiv_f32(*&v6, vdup_lane_s32(*v7.f32, 0)));
              if (v7.f32[0] < 0.01)
              {
                v8 = v6;
              }

              v66 = *&v8;

              sub_23AA0CA94();

              sub_23AA0CA94();

              sub_23AA0CA94();

              sub_23AA0CA94();

              sub_23AA0CA94();

              v63 = *(v2 + 48);
              v65 = *(v2 + 80);
              v67 = *(v2 + 64);
              v9 = 0.5 * COERCE_FLOAT(*(v2 + 96));
              type metadata accessor for DebugArrowEntity();
              v10 = sub_23AA0C2A4();
              v12 = v11;
              sub_23AA0DCD4();
              v70 = v13;
              sub_23AA0D4D4();
              v60 = v14;
              sub_23AA0D4C4();
              *v12 = v15;
              v12[1] = v60;
              v12[2] = v70;
              v10(v73, 0);
              v16 = 0.5 * COERCE_FLOAT(*(v2 + 96));
              v17 = sub_23AA0C2A4();
              v19 = v18;
              sub_23AA0DCD4();
              v64 = v20;
              sub_23AA0D4D4();
              v61 = v21;
              sub_23AA0D4C4();
              *v19 = v22;
              v19[1] = v61;
              v19[2] = v64;
              v17(v73, 0);
              v23 = *(v2 + 100) * 0.5;
              v24 = sub_23AA0C2A4();
              v26 = v25;
              sub_23AA0DCD4();
              v62 = v27;
              sub_23AA0D4D4();
              v59 = v28;
              sub_23AA0D4C4();
              *v26 = v29;
              v26[1] = v59;
              v26[2] = v62;
              v24(v73, 0);
              v30 = *(v2 + 100) * 0.5;
              v31 = sub_23AA0C2A4();
              v33 = v32;
              sub_23AA0DCD4();
              v71 = v34;
              sub_23AA0D4D4();
              v68 = v35;
              sub_23AA0D4C4();
              *v33 = v36;
              v33[1] = v68;
              v33[2] = v71;
              v31(v73, 0);
              __asm { FMOV            V1.4S, #1.0 }

              v42 = sub_23AA0C2A4();
              v44 = v43;
              sub_23AA0DCD4();
              v72 = v45;
              sub_23AA0D4D4();
              v69 = v46;
              sub_23AA0D4C4();
              *v44 = v47;
              v44[1] = v69;
              v44[2] = v72;
              v42(v73, 0);
              v48 = *(v2 + 48);
              v49 = vaddv_f32(vmul_f32(v66, v48));
              v50 = vaddv_f32(vmul_f32(v66, vsub_f32(0, v48)));
              v51 = *(v2 + 64);
              v52 = vaddv_f32(vmul_f32(v66, v51));
              if (vaddv_f32(vmul_f32(v66, vsub_f32(0, v51))) > 0.4)
              {
                if (v49 <= 0.4)
                {
                  if (v50 <= 0.4)
                  {
                    if (v52 <= 0.4)
                    {
                      v53 = objc_opt_self();
                      v54 = &selRef_systemMintColor;
                      goto LABEL_30;
                    }
                  }

                  else if (v52 <= 0.4)
                  {
                    v53 = objc_opt_self();
                    v54 = &selRef_systemBrownColor;
                    goto LABEL_30;
                  }
                }

                else if (v50 <= 0.4 && v52 <= 0.4)
                {
                  v53 = objc_opt_self();
                  v54 = &selRef_systemOrangeColor;
LABEL_30:
                  v56 = [v53 *v54];
                  v57 = *(v3 + qword_27DFC05E8);
                  *(v3 + qword_27DFC05E8) = v56;
                  v58 = v56;
                  sub_23A8EB30C();

                  return;
                }

LABEL_29:
                v53 = objc_opt_self();
                v54 = &selRef_blackColor;
                goto LABEL_30;
              }

              if (v49 <= 0.4)
              {
                if (v50 <= 0.4)
                {
                  if (v52 > 0.4)
                  {
                    v53 = objc_opt_self();
                    v54 = &selRef_systemGreenColor;
                    goto LABEL_30;
                  }

                  goto LABEL_29;
                }

                v53 = objc_opt_self();
                v54 = &selRef_magentaColor;
                v55 = &selRef_systemPurpleColor;
              }

              else
              {
                if (v50 > 0.4)
                {
                  goto LABEL_29;
                }

                v53 = objc_opt_self();
                v54 = &selRef_systemRedColor;
                v55 = &selRef_systemYellowColor;
              }

              if (v52 > 0.4)
              {
                v54 = v55;
              }

              goto LABEL_30;
            }
          }
        }
      }
    }
  }
}

void sub_23A948D08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0C0E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 32);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8C0, &qword_23AA14E48);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_23AA11C20;
    v11 = *(v9 + 48);
    *(v10 + 32) = v11;
    *(v10 + 48) = xmmword_23AA14B20;
    *(v10 + 64) = vsub_f32(0, *&v11);
    *(v10 + 80) = xmmword_23AA14B30;
    v12 = *(v9 + 64);
    *(v10 + 96) = v12;
    *(v10 + 112) = xmmword_23AA14B40;
    *(v10 + 128) = vsub_f32(0, *&v12);
    *(v10 + 144) = xmmword_23AA14B50;
    v61 = sub_23A9DC708(v10);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v13 = *(a1 + 64);
    v51 = a1 + 64;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v13;
    v50 = (v14 + 63) >> 6;
    v17 = v5 + 16;
    v49 = v5;
    v18 = (v5 + 8);
    v52 = v9;

    v19 = 0;
    v53 = xmmword_23AA10FC0;
    v58 = v8;
    v60 = v17;
    v59 = v18;
    while (v16)
    {
      v20 = v16;
LABEL_11:
      v16 = (v20 - 1) & v20;
      if (*(v61 + 16))
      {
        v22 = __clz(__rbit64(v20)) | (v19 << 6);
        v23 = *(*(a1 + 56) + 8 * v22);
        v24 = *(*(a1 + 48) + 8 * v22);
        v55 = v16;
        v25 = sub_23A9EDEEC(v24);
        v16 = v55;
        if (v26)
        {
          v27 = *(v23 + 16);
          if (v27)
          {
            v48 = a1;
            v54 = *(*(v61 + 56) + 16 * v25);
            v47 = v2;
            v28 = *(v2 + 24);
            v29 = v23 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
            v63 = *(v49 + 72);
            v62 = *(v49 + 16);
            v46[1] = v23;

            v57 = v28;
            do
            {
              v62(v8, v29, v4);
              v30 = sub_23A8C63CC();
              swift_beginAccess();
              v31 = *(v30 + 96);

              if (*(v31 + 16) && (v32 = sub_23A9EDD28(v8), (v33 & 1) != 0))
              {
                v34 = *(*(v31 + 56) + 8 * v32);

                v35 = qword_27DFC0628;
                swift_beginAccess();
                sub_23A8CA9D8(v34 + v35, &v65);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF010, qword_23AA14E50);
                type metadata accessor for SimpleScanMaterial();
                if (swift_dynamicCast())
                {
                  swift_beginAccess();
                  v36 = sub_23AA0CC84();
                  sub_23AA0CB94();
                  v36(v64, 0);
                  swift_endAccess();
                  v8 = v58;
                }

                type metadata accessor for WallEntity();
                sub_23A94E558(&qword_27DFAF8C8, type metadata accessor for WallEntity);
                v37 = sub_23AA0CAD4();
                v39 = v38;
                v40 = sub_23AA0C4A4();
                if ((*(*(v40 - 8) + 48))(v39, 1, v40))
                {

                  v37(v64, 0);
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
                  *(swift_allocObject() + 16) = v53;
                  swift_beginAccess();
                  sub_23A8CA9D8(v34 + v35, &v65);

                  v41 = v4;
                  v42 = v66;
                  v43 = v67;
                  __swift_project_boxed_opaque_existential_1(&v65, v66);
                  v44 = *(v43 + 8);
                  v56 = v37;
                  v45 = v43;
                  v4 = v41;
                  v8 = v58;
                  v44(v42, v45);
                  __swift_destroy_boxed_opaque_existential_1(&v65);
                  sub_23AA0C494();
                  v56(v64, 0);
                }

                v18 = v59;
              }

              else
              {
              }

              (*v18)(v8, v4);
              v29 += v63;
              --v27;
            }

            while (v27);

            a1 = v48;
            v2 = v47;
            v16 = v55;
          }
        }
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v50)
      {

        return;
      }

      v20 = *(v51 + 8 * v21);
      ++v19;
      if (v20)
      {
        v19 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23A9493CC()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = [objc_opt_self() blueColor];
    v3 = *(v0 + 24);
    type metadata accessor for DebugEntityPools();
    v1 = swift_allocObject();
    v4 = MEMORY[0x277D84F98];
    *(v1 + 16) = 10;
    *(v1 + 24) = v4;
    *(v1 + 32) = xmmword_23AA14B60;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    v5 = *(v0 + 80);
    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t sub_23A94948C(uint64_t a1)
{
  v56 = sub_23AA0C0E4();
  v3 = *(v56 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v56);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8B8, &qword_23AA14E38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v45 = v1;
  v16 = sub_23A9493CC();

  sub_23A94DF34(v17, v16);

  v18 = *(a1 + 64);
  v54 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v46 = v3 + 16;
  v55 = (v3 + 32);
  v51 = v3;
  v52 = a1;
  v53 = (v3 + 8);
  v23 = v15;

  v25 = 0;
  v50 = v6;
  v47 = v15;
  v48 = v12;
  while (v21)
  {
    v26 = v25;
LABEL_16:
    v29 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v30 = v29 | (v26 << 6);
    v32 = v51;
    v31 = v52;
    (*(v51 + 16))(v49, *(v52 + 48) + *(v51 + 72) * v30, v56);
    v33 = *(*(v31 + 56) + 8 * v30);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE888, &qword_23AA14E40);
    v35 = *(v34 + 48);
    v12 = v48;
    (*(v32 + 32))();
    *&v12[v35] = v33;
    (*(*(v34 - 8) + 56))(v12, 0, 1, v34);

    v6 = v50;
    v23 = v47;
LABEL_17:
    sub_23A930208(v12, v23, &qword_27DFAF8B8, &qword_23AA14E38);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE888, &qword_23AA14E40);
    if ((*(*(v36 - 8) + 48))(v23, 1, v36) == 1)
    {
    }

    v37 = *(v23 + *(v36 + 48));
    (*v55)(v6, v23, v56);
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v38 = qword_27DFC04B0;
    swift_beginAccess();
    v39 = *(v38 + 24);
    if (*(v39 + 16))
    {

      v40 = sub_23A9EDD28(v6);
      if (v41)
      {
        v42 = *(*(v39 + 56) + 8 * v40);

        sub_23A949974(v42, v37);
      }

      else
      {
      }
    }

    result = (*v53)(v6, v56);
  }

  if (v22 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v22;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE888, &qword_23AA14E40);
      (*(*(v43 - 8) + 56))(v12, 1, 1, v43);
      v21 = 0;
      v25 = v28;
      goto LABEL_17;
    }

    v21 = *(v54 + 8 * v26);
    ++v25;
    if (v21)
    {
      v25 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A949974(uint64_t a1, uint64_t a2)
{
  sub_23A9493CC();
  v4 = sub_23A8DFAEC(a2);

  if (v4 >> 62)
  {
    result = sub_23AA0D7F4();
    v6 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EE90360](i, v4);
    }

    else
    {
      v8 = *(v4 + 8 * i + 32);
    }

    sub_23AA0CA94();
  }

LABEL_10:
  v9 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges;
  v10 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

  v12 = sub_23A8DC460(v11);

  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = 0;
    while (v14 < *(*(v26 + 80) + 16))
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE90360](v14, v4);
      }

      else
      {
        if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v15 = *(v4 + 8 * v14 + 32);
      }

      v16 = *(a1 + v9);

      v18 = sub_23A8DC460(v17);

      if (v14 >= *(v18 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v28 = *(v18 + 16 * v14 + 32);

      v19 = *(a1 + v9);

      v21 = sub_23A8DC460(v20);

      v22 = *(a1 + v9);

      v24 = sub_23A8DC460(v23);

      v25 = *(v24 + 16);

      if (!v25)
      {
        goto LABEL_27;
      }

      if (++v14 % v25 >= *(v21 + 16))
      {
        goto LABEL_28;
      }

      v27 = *(v21 + 16 * (v14 % v25) + 32);

      sub_23AA0C164();
      sub_23AA0C234();

      sub_23AA0CA94();

      if (v13 == v14)
      {
        break;
      }
    }
  }
}

uint64_t sub_23A949DD0()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v2 = [objc_opt_self() redColor];
    v3 = *(v0 + 24);
    type metadata accessor for DebugEntityPools();
    v1 = swift_allocObject();
    v4 = MEMORY[0x277D84F98];
    *(v1 + 16) = 40;
    *(v1 + 24) = v4;
    *(v1 + 32) = xmmword_23AA14B90;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    v5 = *(v0 + 88);
    *(v0 + 88) = v1;
  }

  return v1;
}

uint64_t sub_23A949E90(uint64_t a1)
{
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v229.i64[0] = *(v203 - 8);
  v3 = *(v229.i64[0] + 64);
  MEMORY[0x28223BE20](v203);
  v202 = &v176 - v4;
  v5 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v228 = *(v5 - 8);
  v6 = *(v228 + 64);
  MEMORY[0x28223BE20](v5);
  v204 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v225 = (&v176 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v201 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v176 - v14;
  MEMORY[0x28223BE20](v16);
  v224 = &v176 - v17;
  MEMORY[0x28223BE20](v18);
  v231 = &v176 - v19;
  MEMORY[0x28223BE20](v20);
  v194 = &v176 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v176 - v23;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v25 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v183 = &v176 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v180 = &v176 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v176 - v31;
  v33 = sub_23AA0C0E4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v177 = &v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v176 - v38;
  v179 = v1;
  v40 = sub_23A949DD0();

  sub_23A94DF34(v41, v40);

  v42 = v39;

  v43 = *(a1 + 64);
  v189 = a1 + 64;
  v44 = 1 << *(a1 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & v43;
  v188 = (v44 + 63) >> 6;
  v191 = (v34 + 16);
  v190 = (v34 + 8);
  v182 = (v34 + 56);
  v181 = (v34 + 48);
  v176 = (v34 + 32);
  v47 = v33;
  v228 += 48;
  v200 = (v229.i64[0] + 8);

  v49 = 0;
  v223 = xmmword_23AA11AF0;
  v187 = a1;
  v206 = v15;
  v207 = v24;
  v193 = v32;
  v50 = v46;
  v186 = v33;
  v230 = v5;
  v178 = v42;
  while (1)
  {
    if (!v50)
    {
      do
      {
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if (v51 >= v188)
        {
        }

        v50 = *(v189 + 8 * v51);
        ++v49;
      }

      while (!v50);
      v49 = v51;
    }

    v52 = *(v187 + 56);
    v192 = v49;
    v53 = *(v52 + ((v49 << 9) | (8 * __clz(__rbit64(v50)))));
    v54 = qword_27DFAE368;

    if (v54 != -1)
    {
      swift_once();
    }

    v50 &= v50 - 1;
    v55 = qword_27DFC04B0;
    v229.i64[0] = *v191;
    (v229.i64[0])(v42, v53 + qword_27DFC0620, v47);
    swift_beginAccess();
    v56 = v42;
    v57 = *(v55 + 24);
    if (!*(v57 + 16))
    {
      goto LABEL_6;
    }

    v58 = *(v55 + 24);

    v59 = sub_23A9EDD28(v56);
    if ((v60 & 1) == 0)
    {

LABEL_6:

      result = (*v190)(v56, v47);
      v42 = v56;
      goto LABEL_7;
    }

    v185 = v50;
    v61 = *(*(v57 + 56) + 8 * v59);
    v62 = *v190;

    v63 = v56;
    v64 = v47;
    v219.i64[0] = v62;
    v62(v63, v47);

    v227 = v61;
    v65 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    if (*(v61 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) == 2)
    {
      break;
    }

LABEL_38:
    v232 = v65;
    v221 = v66;
    if (v66 >> 62)
    {
      v89 = sub_23AA0D7F4();
    }

    else
    {
      v89 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v185;
    v47 = v64;
    v226 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
    result = swift_beginAccess();
    v205 = v53;
    if (v89)
    {
      v90 = 0;
      v91 = v221;
      v229.i64[0] = v221 & 0xC000000000000001;
      v222 = (v221 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v229.i64[0])
        {
          result = MEMORY[0x23EE90360](v90, v91);
          v92 = result;
          v93 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v90 >= v222[2])
          {
            goto LABEL_98;
          }

          v92 = *(v91 + 8 * v90 + 32);

          v93 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            goto LABEL_97;
          }
        }

        sub_23A8D5194(v227 + v226, v24, &qword_27DFAEB38, &unk_23AA11B60);
        v94 = *v228;
        v95 = v230;
        if ((*v228)(v24, 1, v230) == 1)
        {

          result = sub_23A8D50D0(v24, &qword_27DFAEB38, &unk_23AA11B60);
          v53 = v205;
        }

        else
        {
          sub_23A8D50D0(v24, &qword_27DFAEB38, &unk_23AA11B60);
          v96 = v194;
          sub_23A8D5194(v92 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, v194, &qword_27DFAEB38, &unk_23AA11B60);
          if (v94(v96, 1, v95) == 1)
          {

            result = sub_23A8D50D0(v96, &qword_27DFAEB38, &unk_23AA11B60);
          }

          else
          {
            sub_23A8D50D0(v96, &qword_27DFAEB38, &unk_23AA11B60);
            sub_23AA0D944();
            v97 = *(v232 + 16);
            sub_23AA0D974();
            v24 = v207;
            sub_23AA0D984();
            result = sub_23AA0D954();
          }

          v53 = v205;
          v91 = v221;
        }

        ++v90;
      }

      while (v93 != v89);
      v98 = v232;
      v15 = v206;
      v47 = v186;
      v50 = v185;
    }

    else
    {
      v98 = MEMORY[0x277D84F90];
    }

    if ((v98 & 0x8000000000000000) != 0 || (v98 & 0x4000000000000000) != 0)
    {
      v99 = sub_23AA0D7F4();
      if (v99)
      {
LABEL_60:
        v232 = MEMORY[0x277D84F90];
        result = sub_23AA0D964();
        if (v99 < 0)
        {
          goto LABEL_100;
        }

        v197 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
        v196 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
        v195 = v98 & 0xC000000000000001;
        v222 = objc_opt_self();
        swift_beginAccess();
        v100 = v98;
        v101 = 0;
        v199 = v100;
        v198 = v99;
        do
        {
          v148 = v228;
          v221 = v101;
          if (v195)
          {
            v149 = MEMORY[0x23EE90360](v101);
          }

          else
          {
            v149 = *(v100 + 8 * v101 + 32);
          }

          v150 = v230;
          v151 = v201;
          *v152.i64 = MEMORY[0x23EE8FF80](*(v149 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition), *(v149 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation), v223);
          v216 = v152;
          v217 = v153;
          v219 = v154;
          v218 = v155;
          v156 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
          swift_beginAccess();
          v157 = sub_23A8D5194(v149 + v156, v231, &qword_27DFAEB38, &unk_23AA11B60);
          v158 = *(v149 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions + 4);
          v159 = v227;
          *v233.columns[0].i64 = MEMORY[0x23EE8FF80](v157, *(v227 + v197), *(v227 + v196), v223);
          v234 = __invert_f4(v233);
          v212 = v234.columns[0];
          v213 = v234.columns[1];
          v214 = v234.columns[2];
          v215 = v234.columns[3];
          v160 = v159 + v226;
          v161 = v224;
          sub_23A8D5194(v160, v224, &qword_27DFAEB38, &unk_23AA11B60);
          sub_23A8D5194(v161, v15, &qword_27DFAEB38, &unk_23AA11B60);
          v162 = *v148;
          v163 = (*v148)(v15, 1, v150);
          v220 = v149;
          if (v163 == 1)
          {
            v164 = v222;
            v165 = [v222 degrees];
            v166 = *(v150 + 24);
            sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
            v167 = v225;
            sub_23AA0BC64();
            v168 = [v164 degrees];
            v169 = v167 + *(v230 + 28);
            sub_23AA0BC64();
            *v167 = 0;
            *(v167 + 2) = 0;
            v150 = v230;
            if (v162(v15, 1, v230) != 1)
            {
              sub_23A8D50D0(v15, &qword_27DFAEB38, &unk_23AA11B60);
            }
          }

          else
          {
            sub_23A8D5130(v15, v225);
          }

          sub_23A8D5194(v231, v151, &qword_27DFAEB38, &unk_23AA11B60);
          if (v162(v151, 1, v150) == 1)
          {
            v170 = v222;
            v171 = [v222 degrees];
            v172 = *(v150 + 24);
            sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
            v102 = v204;
            sub_23AA0BC64();
            v173 = [v170 degrees];
            v174 = v102 + *(v150 + 28);
            sub_23AA0BC64();
            *v102 = 0;
            *(v102 + 8) = 0;
            if (v162(v151, 1, v150) != 1)
            {
              sub_23A8D50D0(v151, &qword_27DFAEB38, &unk_23AA11B60);
            }
          }

          else
          {
            v102 = v204;
            sub_23A8D5130(v151, v204);
          }

          v103.i64[0] = *v102;
          v229 = v103;
          v104 = *(v102 + 8);
          v105 = *(v150 + 24);
          v106 = v222;
          v107 = [v222 radians];
          v108 = v202;
          v109 = v203;
          sub_23AA0BC84();

          sub_23AA0BC74();
          v111 = v110;
          v112 = *v200;
          v113 = (*v200)(v108, v109);
          *&v111 = v111;
          v113.n128_f32[0] = v158 * -0.5;
          v211 = v113;
          *&v114 = v229.f32[0] + (v104 * cosf(*&v111));
          v210 = v114;
          v115 = v229.f32[1];
          *&v116 = v115 + (v104 * sinf(*&v111));
          v209 = v116;
          v117 = *(v150 + 28);
          v118 = [v106 byte_278B655E4];
          sub_23AA0BC84();

          sub_23AA0BC74();
          v120 = v119;
          v121 = v112(v108, v109);
          *&v120 = v120;
          v121.n128_f32[0] = v158 * 0.5;
          v208 = v121;
          v122.f32[0] = v229.f32[0] + (v104 * cosf(*&v120));
          v229 = v122;
          v123 = sinf(*&v120);
          v124 = vaddq_f32(v218, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v216, *&v210), v217, v211.n128_f32[0]), v219, *&v209));
          v125 = vaddq_f32(v218, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v216, v229.f32[0]), v217, v208.n128_f32[0]), v219, v115 + (v104 * v123)));
          v229 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v212, v124.f32[0]), v213, *v124.f32, 1), v214, v124, 2), v215, v124, 3);
          v219 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v212, v125.f32[0]), v213, *v125.f32, 1), v214, v125, 2), v215, v125, 3);
          v126 = v150;
          v127 = v225;
          LODWORD(v128) = HIDWORD(*v225);
          *&v120 = v219.f32[0] - COERCE_FLOAT(*v225);
          v129 = v219.f32[2] - v128;
          v130 = atan2f(v229.f32[2] - v128, v229.f32[0] - COERCE_FLOAT(*v225));
          v131 = atan2f(v129, *&v120);
          v132 = v130 + 6.2832;
          if (v130 >= 0.0)
          {
            v132 = v130;
          }

          else
          {
            v131 = v131 + 6.2832;
          }

          if (v132 < 6.2832)
          {
            v133 = v132;
          }

          else
          {
            v133 = v132 + -6.2832;
          }

          if (v132 >= 6.2832)
          {
            v131 = v131 + -6.2832;
          }

          if (v131 >= v133)
          {
            v134 = v131;
          }

          else
          {
            v134 = v131 + 6.2832;
          }

          v135 = *(v126 + 24);
          v136 = [v106 radians];
          sub_23AA0BC84();

          sub_23AA0BC74();
          v138 = v137;
          v112(v108, v109);
          v139 = v138;
          if (v133 < v139)
          {
            v133 = v138;
          }

          v140 = *(v126 + 28);
          v141 = [v106 radians];
          sub_23AA0BC84();

          sub_23AA0BC74();
          v143 = v142;
          sub_23A8D50D0(v224, &qword_27DFAEB38, &unk_23AA11B60);
          sub_23A8D50D0(v231, &qword_27DFAEB38, &unk_23AA11B60);
          v112(v108, v109);
          sub_23A94E4FC(v102);
          sub_23A94E4FC(v127);
          v144 = v143;
          if (v134 >= v144)
          {
            v145 = v143;
          }

          else
          {
            v145 = v134;
          }

          v101 = v221 + 1;
          type metadata accessor for CurvedElement();
          v146 = swift_allocObject();
          *(v146 + 16) = v133;
          *(v146 + 20) = v145;
          *(v146 + 24) = vzip2_s32(*v229.f32, *v219.f32);

          sub_23AA0D944();
          v147 = *(v232 + 16);
          sub_23AA0D974();
          sub_23AA0D984();
          sub_23AA0D954();
          v15 = v206;
          v24 = v207;
          v100 = v199;
        }

        while (v198 != v101);

        v175 = v232;
        v47 = v186;
        v50 = v185;
        v53 = v205;
        goto LABEL_94;
      }
    }

    else
    {
      v99 = *(v98 + 16);
      if (v99)
      {
        goto LABEL_60;
      }
    }

    v175 = MEMORY[0x277D84F90];
LABEL_94:
    sub_23A94B5E8(v175, v53);

    v42 = v178;
LABEL_7:
    v49 = v192;
  }

  v67 = *(v55 + 24);
  v232 = MEMORY[0x277D84F90];
  v68 = (v67 + 64);
  v69 = 1 << *(v67 + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v71 = v70 & *(v67 + 64);
  v221 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v72 = (v69 + 63) >> 6;
  v226 = v67;

  v73 = 0;
  v222 = v68;
  while (v71)
  {
LABEL_29:
    v75 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v76 = *(*(v226 + 56) + ((v73 << 9) | (8 * v75)));
    v77 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
    v78 = v193;
    v79 = v186;
    (v229.i64[0])(v193, v227 + v221, v186);
    (*v182)(v78, 0, 1, v79);
    v80 = *(v184 + 48);
    v81 = v183;
    sub_23A8D5194(v76 + v77, v183, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D5194(v193, v81 + v80, &unk_27DFB0970, &qword_23AA14E00);
    v82 = *v181;
    if ((*v181)(v81, 1, v79) == 1)
    {

      sub_23A8D50D0(v193, &unk_27DFB0970, &qword_23AA14E00);
      if (v82(v81 + v80, 1, v79) != 1)
      {

LABEL_23:
        v68 = v222;
        result = sub_23A8D50D0(v81, &qword_27DFAEC28, &unk_23AA1AA40);
        continue;
      }

      sub_23A8D50D0(v81, &unk_27DFB0970, &qword_23AA14E00);
      v68 = v222;
LABEL_35:
      sub_23AA0D944();
      v88 = *(v232 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      result = sub_23AA0D954();
      continue;
    }

    v220 = v76;
    v83 = v180;
    sub_23A8D5194(v81, v180, &unk_27DFB0970, &qword_23AA14E00);
    if (v82(v81 + v80, 1, v79) == 1)
    {
      sub_23A8D50D0(v193, &unk_27DFB0970, &qword_23AA14E00);
      (v219.i64[0])(v83, v79);
      goto LABEL_23;
    }

    v84 = v81 + v80;
    v85 = v177;
    (*v176)(v177, v84, v79);
    sub_23A94E558(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);

    v86 = v83;
    v218.i32[0] = sub_23AA0D084();
    v87 = v219.i64[0];
    (v219.i64[0])(v85, v79);
    sub_23A8D50D0(v193, &unk_27DFB0970, &qword_23AA14E00);
    v87(v86, v79);
    sub_23A8D50D0(v81, &unk_27DFB0970, &qword_23AA14E00);
    v68 = v222;
    if (v218.i8[0])
    {
      goto LABEL_35;
    }
  }

  while (1)
  {
    v74 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v74 >= v72)
    {

      v66 = v232;
      v15 = v206;
      v24 = v207;
      v64 = v186;
      v65 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    v71 = v68[v74];
    ++v73;
    if (v71)
    {
      v73 = v74;
      goto LABEL_29;
    }
  }

LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

uint64_t sub_23A94B5E8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v62 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v60 - v7);
  v9 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_23AA0C0E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A949DD0();
  v72 = sub_23A8DFAEC(a2);

  if (qword_27DFAE368 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v19 = qword_27DFC04B0;
    (*(v15 + 16))(v18, a2 + qword_27DFC0620, v14);
    swift_beginAccess();
    v20 = *(v19 + 24);
    if (!*(v20 + 16))
    {
      break;
    }

    v21 = sub_23A9EDD28(v18);
    if ((v22 & 1) == 0)
    {

      break;
    }

    v61 = v13;
    v23 = *(*(v20 + 56) + 8 * v21);
    v24 = *(v15 + 8);

    v24(v18, v14);

    v25 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
    swift_beginAccess();
    sub_23A8D5194(v23 + v25, v8, &qword_27DFAEB38, &unk_23AA11B60);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      return sub_23A8D50D0(v8, &qword_27DFAEB38, &unk_23AA11B60);
    }

    v13 = v61;
    v27 = sub_23A8D5130(v8, v61);
    *v28.i64 = MEMORY[0x23EE8FF80](v27, *(v23 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition), *(v23 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation), xmmword_23AA11AF0);
    v75 = v29;
    v76 = v28;
    v73 = v31;
    v74 = v30;
    v32 = v62;
    v60 = v23;
    if (v62 >> 62)
    {
LABEL_48:
      v15 = v32 & 0xFFFFFFFFFFFFFF8;
      v65 = sub_23AA0D7F4();
    }

    else
    {
      v15 = v62 & 0xFFFFFFFFFFFFFF8;
      v65 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v64 = v32 & 0xC000000000000001;
    v63 = v32 + 32;
    a2 = v72 & 0xC000000000000001;
    v70 = v72 & 0xFFFFFFFFFFFFFF8;
    v18 = (v72 + 56);
    v10 = 3;
    while (1)
    {
      if (v65 == v14)
      {
LABEL_39:
        sub_23A94E4FC(v13);
        goto LABEL_40;
      }

      if (!v64)
      {
        break;
      }

      v8 = MEMORY[0x23EE90360](v14, v62);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_41;
      }

LABEL_17:
      v36.i64[0] = *v13;
      v77 = v36;
      v37 = v13[2];
      v38 = v8[4];
      v36.f32[0] = v8[6];
      v71 = v36;
      v39 = cosf(v38);
      v40 = sinf(v38);
      if (a2)
      {
        MEMORY[0x23EE90360](v10 - 3, v72);
      }

      else
      {
        if ((v10 - 3) >= *(v70 + 16))
        {
          goto LABEL_43;
        }

        v41 = *(v18 - 3);
      }

      v42 = v77.f32[1];
      v43 = vaddq_f32(v73, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v76, v77.f32[0] + (v37 * v39)), v75, v71.f32[0]), v74, v77.f32[1] + (v37 * v40)));
      v43.i32[3] = v69.i32[3];
      v71 = v43;
      v9 = sub_23AA0C164();
      sub_23AA0C294();

      sub_23AA0CA94();

      v32 = v10 - 2;
      if (v10 - 2 >= *(*(v3 + 88) + 16))
      {
        goto LABEL_38;
      }

      v45 = v8[5];
      v44.f32[0] = v8[6];
      v69 = v44;
      v46 = cosf(v45);
      v47 = sinf(v45);
      if (a2)
      {
        MEMORY[0x23EE90360](v10 - 2, v72);
      }

      else
      {
        if (v32 >= *(v70 + 16))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v48 = *(v18 - 2);
      }

      v49 = vaddq_f32(v73, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v76, v77.f32[0] + (v37 * v46)), v75, v69.f32[0]), v74, v42 + (v37 * v47)));
      v49.i32[3] = v68.i32[3];
      v69 = v49;
      sub_23AA0C294();

      sub_23AA0CA94();

      v32 = v10 - 1;
      if (v10 - 1 >= *(*(v3 + 88) + 16))
      {
        goto LABEL_38;
      }

      v51 = v8[4];
      v50.f32[0] = v8[7];
      v68 = v50;
      v52 = cosf(v51);
      v53 = sinf(v51);
      if (a2)
      {
        v32 = MEMORY[0x23EE90360](v10 - 1, v72);
      }

      else
      {
        if (v32 >= *(v70 + 16))
        {
          goto LABEL_46;
        }

        v32 = *(v18 - 1);
      }

      v54 = vaddq_f32(v73, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v76, v77.f32[0] + (v37 * v52)), v75, v68.f32[0]), v74, v42 + (v37 * v53)));
      v54.i32[3] = v67.i32[3];
      v68 = v54;
      sub_23AA0C294();

      sub_23AA0CA94();

      if (v10 >= *(*(v3 + 88) + 16))
      {
LABEL_38:
        sub_23A94E4FC(v13);

LABEL_40:
      }

      v56 = v8[5];
      v55.f32[0] = v8[7];
      v67 = v55;
      v57 = cosf(v56);
      v58 = sinf(v56);
      if (a2)
      {
        MEMORY[0x23EE90360](v10, v72);
      }

      else
      {
        if (v10 >= *(v70 + 16))
        {
          goto LABEL_47;
        }

        v59 = *v18;
      }

      v33 = vaddq_f32(v73, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v76, v77.f32[0] + (v37 * v57)), v75, v67.f32[0]), v74, v42 + (v37 * v58)));
      v33.i32[3] = v66.i32[3];
      v77 = v33;
      sub_23AA0C294();

      sub_23AA0CA94();

      ++v14;
      v34 = v10 + 1;
      v35 = *(*(v3 + 88) + 16);
      v10 += 4;
      v18 += 4;
      v67 = v68;
      v68 = v69;
      v69 = v71;
      v66 = v77;
      if (v34 >= v35)
      {
        goto LABEL_39;
      }
    }

    if (v14 >= *(v15 + 16))
    {
      goto LABEL_42;
    }

    v8 = *(v63 + 8 * v14);

    if (!__OFADD__(v14, 1))
    {
      goto LABEL_17;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_23A94BEE4()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = [objc_opt_self() whiteColor];
    v3 = *(v0 + 24);
    type metadata accessor for DebugEntityPools();
    v1 = swift_allocObject();
    v4 = MEMORY[0x277D84F98];
    *(v1 + 16) = 20;
    *(v1 + 24) = v4;
    *(v1 + 32) = xmmword_23AA14BA0;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    v5 = *(v0 + 96);
    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t sub_23A94BFA4(uint64_t a1)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v3 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v91 = v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v90 = v75 - v9;
  v10 = sub_23AA0C0E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v96 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF890, &qword_23AA14E08);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v75 - v21;
  v23 = sub_23A94BEE4();

  sub_23A94DF34(v24, v23);

  if (qword_27DFAE368 != -1)
  {
    goto LABEL_56;
  }

LABEL_2:
  v25 = qword_27DFC04B0;
  swift_beginAccess();
  v98 = v25;
  v26 = *(v25 + 24);

  sub_23A94D0B8(v27);
  v29 = v28;

  v75[1] = v1;
  v30 = *(v1 + 96);

  sub_23A94DF34(v29, v30);

  v1 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(a1 + 64);
  v77 = (v31 + 63) >> 6;
  v101 = (v11 + 16);
  v103 = (v11 + 32);
  v80 = (v11 + 56);
  v79 = (v11 + 48);
  v87 = v11;
  v100 = (v11 + 8);
  v88 = a1;

  v34 = 0;
  v97 = v10;
  v35 = v96;
  v92 = v22;
  v93 = v19;
  v94 = a1 + 64;
  if (!v33)
  {
LABEL_10:
    if (v77 <= v34 + 1)
    {
      v37 = v34 + 1;
    }

    else
    {
      v37 = v77;
    }

    v11 = v37 - 1;
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v36 >= v77)
      {
        break;
      }

      v33 = *(v1 + 8 * v36);
      ++v34;
      if (v33)
      {
        v34 = v36;
        goto LABEL_18;
      }
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF898, &qword_23AA14E10);
    (*(*(v59 - 8) + 56))(v19, 1, 1, v59);
    v33 = 0;
    v34 = v11;
    goto LABEL_19;
  }

  while (1)
  {
    v36 = v34;
LABEL_18:
    v38 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v39 = v38 | (v36 << 6);
    v40 = v88;
    v41 = v87;
    v42 = v95;
    (*(v87 + 16))(v95, *(v88 + 48) + *(v87 + 72) * v39, v10);
    v43 = *(*(v40 + 56) + 8 * v39);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF898, &qword_23AA14E10);
    v45 = *(v44 + 48);
    v46 = *(v41 + 32);
    v19 = v93;
    v46(v93, v42, v10);
    *&v19[v45] = v43;
    (*(*(v44 - 8) + 56))(v19, 0, 1, v44);

    v35 = v96;
    v22 = v92;
LABEL_19:
    sub_23A930208(v19, v22, &qword_27DFAF890, &qword_23AA14E08);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF898, &qword_23AA14E10);
    if ((*(*(v47 - 8) + 48))(v22, 1, v47) == 1)
    {
    }

    a1 = *(v22 + *(v47 + 48));
    v48 = *v103;
    (*v103)(v35, v22, v10);
    v49 = *(v98 + 24);
    if (!*(v49 + 16))
    {
      goto LABEL_8;
    }

    v50 = *(v98 + 24);

    v51 = sub_23A9EDD28(v35);
    if (v52)
    {
      v78 = v48;
      v53 = *(*(v49 + 56) + 8 * v51);

      v99 = v53;
      v54 = MEMORY[0x277D84F90];
      if (*(v53 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) == 3)
      {
        v55 = *(v98 + 24);
        v104 = MEMORY[0x277D84F90];
        v11 = v55 + 64;
        v56 = 1 << *(v55 + 32);
        if (v56 < 64)
        {
          v57 = ~(-1 << v56);
        }

        else
        {
          v57 = -1;
        }

        v22 = v57 & *(v55 + 64);
        v84 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
        v1 = (v56 + 63) >> 6;
        v89 = v55;

        v58 = 0;
        v19 = v90;
        v85 = v11;
        v83 = v1;
        v86 = a1;
        while (2)
        {
          if (!v22)
          {
            while (1)
            {
              v60 = v58 + 1;
              if (__OFADD__(v58, 1))
              {
                break;
              }

              if (v60 >= v1)
              {

                v54 = v104;
                v35 = v96;
                v22 = v92;
                v19 = v93;
                goto LABEL_46;
              }

              v22 = *(v11 + 8 * v60);
              ++v58;
              if (v22)
              {
                v58 = v60;
                goto LABEL_36;
              }
            }

LABEL_55:
            __break(1u);
LABEL_56:
            swift_once();
            goto LABEL_2;
          }

LABEL_36:
          v61 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v62 = *(*(v89 + 56) + ((v58 << 9) | (8 * v61)));
          v63 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
          v64 = v97;
          (*v101)(v19, v99 + v84, v97);
          (*v80)(v19, 0, 1, v64);
          v65 = *(v82 + 48);
          v102 = v62;
          v66 = v91;
          sub_23A8D5194(v62 + v63, v91, &unk_27DFB0970, &qword_23AA14E00);
          sub_23A8D5194(v19, v66 + v65, &unk_27DFB0970, &qword_23AA14E00);
          v67 = *v79;
          if ((*v79)(v66, 1, v64) == 1)
          {

            sub_23A8D50D0(v19, &unk_27DFB0970, &qword_23AA14E00);
            if (v67(v66 + v65, 1, v64) == 1)
            {
              sub_23A8D50D0(v66, &unk_27DFB0970, &qword_23AA14E00);
              a1 = v86;
              v11 = v85;
              goto LABEL_41;
            }

            v10 = v97;
            a1 = v86;
            v11 = v85;
            v19 = v90;
LABEL_29:
            sub_23A8D50D0(v91, &qword_27DFAEC28, &unk_23AA1AA40);
          }

          else
          {
            sub_23A8D5194(v66, v81, &unk_27DFB0970, &qword_23AA14E00);
            if (v67(v66 + v65, 1, v64) == 1)
            {
              v19 = v90;
              sub_23A8D50D0(v90, &unk_27DFB0970, &qword_23AA14E00);
              (*v100)(v81, v64);
              v10 = v64;
              a1 = v86;
              v11 = v85;
              goto LABEL_29;
            }

            v68 = v66 + v65;
            v69 = v95;
            v78(v95, v68, v64);
            sub_23A94E558(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);

            v70 = v81;
            v76 = sub_23AA0D084();
            v71 = *v100;
            (*v100)(v69, v64);
            sub_23A8D50D0(v90, &unk_27DFB0970, &qword_23AA14E00);
            v71(v70, v64);
            sub_23A8D50D0(v66, &unk_27DFB0970, &qword_23AA14E00);
            a1 = v86;
            v11 = v85;
            if (v76)
            {
LABEL_41:
              sub_23AA0D944();
              v72 = *(v104 + 16);
              sub_23AA0D974();
              sub_23AA0D984();
              sub_23AA0D954();
            }

            else
            {
            }

            v10 = v97;
            v19 = v90;
          }

          v1 = v83;
          continue;
        }
      }

LABEL_46:
      if (v54 >> 62)
      {
        v73 = sub_23AA0D7F4();
      }

      else
      {
        v73 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v73 > 0)
      {
        sub_23A94CAEC(v99, a1);

        goto LABEL_8;
      }

      (*v100)(v35, v10);

      v1 = v94;
      if (!v33)
      {
        goto LABEL_10;
      }
    }

    else
    {

LABEL_8:

      (*v100)(v35, v10);
      v1 = v94;
      if (!v33)
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_23A94CAEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_23A94BEE4();
  v5 = sub_23A8DFAEC(a2);

  if (v5 >> 62)
  {
    result = sub_23AA0D7F4();
    v7 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EE90360](i, v5);
    }

    else
    {
      v9 = *(v5 + 8 * i + 32);
    }

    sub_23AA0CA94();
  }

LABEL_10:
  result = sub_23A9C28D4();
  v10 = result;
  v11 = *(result + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (result + 48);
    while (v12 < *(*(v3 + 96) + 16))
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v15 = *v13;
      v16 = *(v13 - 1);
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE90360](v12, v5);
      }

      else
      {
        if (v12 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v14 = *(v5 + 8 * v12 + 32);
      }

      ++v12;
      sub_23AA0C164();
      sub_23AA0C234();

      sub_23AA0CA94();

      v13 += 2;
      if (v11 == v12)
      {
        break;
      }
    }
  }
}

void *sub_23A94CE88()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[10];

  v9 = v0[11];

  v10 = v0[12];

  return v0;
}

uint64_t sub_23A94CEF0()
{
  sub_23A94CE88();

  return swift_deallocClassInstance();
}

unint64_t sub_23A94CF5C()
{
  result = qword_27DFAF870;
  if (!qword_27DFAF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF870);
  }

  return result;
}

unint64_t sub_23A94CFB4()
{
  result = qword_27DFAF878;
  if (!qword_27DFAF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF878);
  }

  return result;
}

unint64_t sub_23A94D00C()
{
  result = qword_27DFAF880;
  if (!qword_27DFAF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF880);
  }

  return result;
}

unint64_t sub_23A94D064()
{
  result = qword_27DFAF888;
  if (!qword_27DFAF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF888);
  }

  return result;
}

void sub_23A94D0B8(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      sub_23A94DB1C(v8, v4, v2);
      MEMORY[0x23EE91710](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_23A94D218(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
}

void sub_23A94D218(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v63[0] = a2;
  v64 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v4 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v92 = v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v87 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v63 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8B0, &qword_23AA14E28);
  v12 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v77 = v63 - v13;
  v14 = sub_23AA0C0E4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v69 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v17);
  v76 = v63 - v21;
  v65 = 0;
  v22 = 0;
  v23 = a3 + 64;
  v24 = 1 << *(a3 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(a3 + 64);
  v66 = (v24 + 63) >> 6;
  v90 = v19 + 16;
  v80 = (v19 + 48);
  v81 = (v19 + 56);
  v68 = (v19 + 32);
  v72 = v19;
  v78 = (v19 + 8);
  v71 = a3 + 64;
  v67 = a3;
  v91 = v11;
  v79 = v18;
  while (1)
  {
    if (v26)
    {
      v74 = (v26 - 1) & v26;
      v75 = v22;
      v27 = __clz(__rbit64(v26)) | (v22 << 6);
      goto LABEL_12;
    }

    v28 = v22;
    do
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v29 >= v66)
      {
        sub_23A94DB94(v64, v63[0], v65, a3);
        return;
      }

      v30 = *(v23 + 8 * v29);
      ++v28;
    }

    while (!v30);
    v74 = (v30 - 1) & v30;
    v75 = v29;
    v27 = __clz(__rbit64(v30)) | (v29 << 6);
LABEL_12:
    v31 = *(v72 + 16);
    v32 = v76;
    v31(v76, *(a3 + 48) + *(v72 + 72) * v27, v14, v20);
    v33 = *(a3 + 56);
    v70 = v27;
    v34 = *(v33 + 8 * v27);
    v35 = v14;
    v36 = v77;
    v89 = v31;
    (v31)(v77, v32, v35);
    *(v36 + *(v73 + 48)) = v34;
    if (*(v34 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) == 3)
    {
      v37 = qword_27DFAE368;
      swift_retain_n();
      if (v37 != -1)
      {
        swift_once();
      }

      v38 = qword_27DFC04B0;
      swift_beginAccess();
      v39 = *(v38 + 24);
      v94 = MEMORY[0x277D84F90];
      v40 = v39 + 64;
      v41 = 1 << *(v39 + 32);
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v43 = v42 & *(v39 + 64);
      v85 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
      v44 = (v41 + 63) >> 6;
      v88 = v39;

      v45 = 0;
      v14 = v79;
      v86 = v40;
      v83 = v34;
      v84 = v44;
      while (2)
      {
        if (!v43)
        {
          while (1)
          {
            v46 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
              goto LABEL_46;
            }

            if (v46 >= v44)
            {
              break;
            }

            v43 = *(v40 + 8 * v46);
            ++v45;
            if (v43)
            {
              v45 = v46;
              goto LABEL_27;
            }
          }

          v60 = v94;
          a3 = v67;
          if (!(v94 >> 62))
          {
            goto LABEL_37;
          }

LABEL_43:
          v61 = sub_23AA0D7F4();
          v14 = v79;
          goto LABEL_38;
        }

LABEL_27:
        v47 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v48 = *(*(v88 + 56) + ((v45 << 9) | (8 * v47)));
        v49 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
        v50 = v34 + v85;
        v51 = v91;
        v89(v91, v50, v14);
        (*v81)(v51, 0, 1, v14);
        v52 = v14;
        v53 = *(v82 + 48);
        v93 = v48;
        v54 = v92;
        sub_23A8D5194(v48 + v49, v92, &unk_27DFB0970, &qword_23AA14E00);
        sub_23A8D5194(v51, v54 + v53, &unk_27DFB0970, &qword_23AA14E00);
        v55 = *v80;
        if ((*v80)(v54, 1, v52) == 1)
        {

          sub_23A8D50D0(v51, &unk_27DFB0970, &qword_23AA14E00);
          if (v55(v54 + v53, 1, v52) == 1)
          {
            sub_23A8D50D0(v54, &unk_27DFB0970, &qword_23AA14E00);
            v34 = v83;
            goto LABEL_32;
          }

          v14 = v52;

LABEL_20:
          v34 = v83;
          sub_23A8D50D0(v92, &qword_27DFAEC28, &unk_23AA1AA40);
        }

        else
        {
          sub_23A8D5194(v54, v87, &unk_27DFB0970, &qword_23AA14E00);
          if (v55(v54 + v53, 1, v52) == 1)
          {
            sub_23A8D50D0(v91, &unk_27DFB0970, &qword_23AA14E00);
            (*v78)(v87, v52);
            v14 = v52;
            goto LABEL_20;
          }

          v56 = v69;
          (*v68)(v69, v54 + v53, v52);
          sub_23A94E558(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);

          v57 = sub_23AA0D084();
          v58 = *v78;
          (*v78)(v56, v52);
          sub_23A8D50D0(v91, &unk_27DFB0970, &qword_23AA14E00);
          v58(v87, v52);
          sub_23A8D50D0(v54, &unk_27DFB0970, &qword_23AA14E00);
          v34 = v83;
          if (v57)
          {
LABEL_32:
            sub_23AA0D944();
            v59 = *(v94 + 16);
            sub_23AA0D974();
            sub_23AA0D984();
            sub_23AA0D954();
          }

          else
          {
          }

          v14 = v79;
        }

        v40 = v86;
        v44 = v84;
        continue;
      }
    }

    swift_retain_n();
    v60 = MEMORY[0x277D84F90];
    v14 = v79;
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_43;
    }

LABEL_37:
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:

    sub_23A8D50D0(v77, &qword_27DFAF8B0, &qword_23AA14E28);

    (*v78)(v76, v14);
    v23 = v71;
    v22 = v75;
    v26 = v74;
    if (v61 >= 1)
    {
      *(v64 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      if (__OFADD__(v65++, 1))
      {
        break;
      }
    }
  }

LABEL_47:
  __break(1u);
}

void *sub_23A94DB1C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_23A94D218(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_23A94DB94(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = sub_23AA0C0E4();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF080, &qword_23AA14E30);
  result = sub_23AA0DA44();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_23A94E558(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
    v44 = v24;

    result = sub_23AA0D054();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23A94DF34(uint64_t a1, uint64_t a2)
{
  v64 = sub_23AA0C0E4();
  v4 = *(v64 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v64);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8A0, &qword_23AA14E18);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  swift_beginAccess();
  v17 = *(a2 + 24);
  v18 = *(v17 + 64);
  v57 = v17 + 64;
  v58 = v4;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v51 = (v19 + 63) >> 6;
  v53 = v4 + 16;
  v63 = (v4 + 32);
  v59 = (v4 + 8);
  v56 = v17;

  v23 = 0;
  v60 = v16;
  v61 = v7;
  v54 = v13;
  v52 = a2;
  v62 = a1;
  v24 = v57;
  if (!v21)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v26 = v23;
LABEL_16:
      v29 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v30 = v29 | (v26 << 6);
      v31 = v56;
      v32 = v58;
      (*(v58 + 16))(v55, *(v56 + 48) + *(v58 + 72) * v30, v64);
      v33 = *(*(v31 + 56) + 8 * v30);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8A8, &qword_23AA14E20);
      v35 = *(v34 + 48);
      v13 = v54;
      (*(v32 + 32))();
      *&v13[v35] = v33;
      (*(*(v34 - 8) + 56))(v13, 0, 1, v34);

      v16 = v60;
      v7 = v61;
      a1 = v62;
LABEL_17:
      sub_23A930208(v13, v16, &qword_27DFAF8A0, &qword_23AA14E18);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8A8, &qword_23AA14E20);
      if ((*(*(v36 - 8) + 48))(v16, 1, v36) == 1)
      {
      }

      v37 = *&v16[*(v36 + 48)];
      result = (*v63)(v7, v16, v64);
      if (!*(a1 + 16))
      {
        break;
      }

      result = sub_23A9EDD28(v7);
      if ((v38 & 1) == 0)
      {
        break;
      }

      (*v59)(v7, v64);

      v24 = v57;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

    if (v37 >> 62)
    {
      result = sub_23AA0D7F4();
      v39 = result;
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v39)
    {
      if (v39 < 1)
      {
        goto LABEL_38;
      }

      v40 = 0;
      do
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          MEMORY[0x23EE90360](v40, v37);
        }

        else
        {
          v41 = *(v37 + 8 * v40 + 32);
        }

        ++v40;
        sub_23AA0C164();
        sub_23AA0C204();
      }

      while (v39 != v40);
    }

    v42 = v52;
    swift_beginAccess();
    v43 = *(v42 + 24);
    v7 = v61;
    v44 = sub_23A9EDD28(v61);
    a1 = v62;
    v16 = v60;
    if (v45)
    {
      v46 = v44;
      v47 = *(v42 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(v42 + 24);
      v65 = v49;
      *(v42 + 24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23A90D874();
        v49 = v65;
      }

      (*(v58 + 8))(*(v49 + 48) + *(v58 + 72) * v46, v64);
      v25 = *(*(v49 + 56) + 8 * v46);

      sub_23A90BA78(v46, v49);
      *(v42 + 24) = v49;
    }

    swift_endAccess();
    result = (*v59)(v7, v64);
    v24 = v57;
  }

  while (v21);
LABEL_8:
  if (v51 <= v23 + 1)
  {
    v27 = v23 + 1;
  }

  else
  {
    v27 = v51;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v51)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8A8, &qword_23AA14E20);
      (*(*(v50 - 8) + 56))(v13, 1, 1, v50);
      v21 = 0;
      v23 = v28;
      goto LABEL_17;
    }

    v21 = *(v24 + 8 * v26);
    ++v23;
    if (v21)
    {
      v23 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_23A94E4FC(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A94E558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ARViewCameraEntity()
{
  result = qword_27DFAF8D0;
  if (!qword_27DFAF8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

CGFloat sub_23A94E62C(void *a1, float32x4_t a2)
{
  v16 = a2;
  v3 = sub_23AA0C184();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C9D4();
  v18 = __invert_f4(v17);
  v16 = vaddq_f32(v18.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18.columns[0], v16.f32[0]), v18.columns[1], *v16.f32, 1), v18.columns[2], v16, 2));
  sub_23AA0C9A4();
  sub_23AA0C114();
  (*(v4 + 8))(v7, v3);
  RECustomMatrixCameraComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RECustomMatrixCameraComponentGetProjectionMatrix();
  v12 = vaddq_f32(v11, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, v16.f32[0]), v9, *v16.f32, 1), v10, v16, 2));
  v13 = ((v12.f32[0] / v12.f32[3]) + 1.0) * 0.5;
  [a1 bounds];
  v14 = CGRectGetWidth(v19) * v13;
  [a1 bounds];
  CGRectGetHeight(v20);
  return v14;
}

unint64_t sub_23A94E7E8()
{
  v0 = sub_23AA0C184();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C9A4();
  sub_23AA0C114();
  (*(v1 + 8))(v4, v0);
  RECameraViewDescriptorsComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RECameraViewDescriptorsComponentClearCameraViewDescriptors();
  RECameraViewDescriptorsComponentAddViewDescriptor();
  v5 = RECameraViewDescriptorsComponentCameraViewDescriptorCopySettingStruct();
  RERenderGraphDataStructAddFloat4();
  MEMORY[0x23EE90D30](v5, "disableTonemapping", 1);
  RECameraViewDescriptorsComponentCameraViewDescriptorSetSettingStruct();
  result = sub_23AA0C914();
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    RECameraViewDescriptorsComponentAddSpecifyCommandFromLayer();
    return RERelease();
  }

  return result;
}

uint64_t sub_23A94E974()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_23AA0C1A4();
}

uint64_t sub_23A94E9A8()
{
  sub_23AA0CAC4();

  return swift_deallocClassInstance();
}

unint64_t sub_23A94E9F4()
{
  result = qword_27DFAF8E0;
  if (!qword_27DFAF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF8E0);
  }

  return result;
}

uint64_t sub_23A94EA48(int a1)
{
  if ((a1 & 0x66) == 0x64)
  {
    v1 = a1 | 2;
  }

  else
  {
    v1 = a1;
  }

  if ((~a1 & 0x62) == 0)
  {
    v1 |= 4u;
  }

  if ((~a1 & 0x46) == 0)
  {
    v1 |= 0x20u;
  }

  if ((~a1 & 0x26) == 0)
  {
    v1 |= 0x40u;
  }

  if (~a1 & 0x91 | v1 & 8)
  {
    v2 = v1 | ((~a1 & 0x98 | v1 & 1) == 0);
  }

  else
  {
    v2 = v1 | ((~a1 & 0x98 | v1 & 1) == 0) | 8;
  }

  if ((~a1 & 0x89) == 0)
  {
    v2 |= 0x10u;
  }

  if ((~a1 & 0x19) == 0)
  {
    v2 |= 0x80u;
  }

  if ((~a1 & 0xC8) == 0)
  {
    v2 |= 4u;
  }

  if ((~a1 & 0x31) == 0)
  {
    v2 |= 2u;
  }

  if ((~a1 & 0xC4) == 0)
  {
    v2 |= 8u;
  }

  if (~a1 & 0x8C | v2 & 0x40)
  {
    v3 = v2 | ((~a1 & 0x32 | v2 & 1) == 0);
  }

  else
  {
    v3 = v2 | ((~a1 & 0x32 | v2 & 1) == 0) | 0x40;
  }

  if ((~a1 & 0x13) == 0)
  {
    v3 |= 0x20u;
  }

  if ((~a1 & 0x4C) == 0)
  {
    v3 |= 0x80u;
  }

  if ((~a1 & 0x23) == 0)
  {
    v3 |= 0x10u;
  }

  if ((~a1 & 0xD0) == 0)
  {
    v3 |= 0x20u;
  }

  if ((~a1 & 0xB0) == 0)
  {
    v3 |= 0x40u;
  }

  if ((~a1 & 0xE0) == 0)
  {
    v3 |= 0x10u;
  }

  if ((~a1 & 0x70) == 0)
  {
    v3 |= 0x80u;
  }

  if ((~a1 & 0xD) == 0)
  {
    v3 |= 2u;
  }

  if ((~a1 & 0xB) == 0)
  {
    v3 |= 4u;
  }

  v4 = v3 | ((~a1 & 0xE | v3 & 1) == 0);
  if (v3 & 8 | ~a1 & 7)
  {
    return v4;
  }

  else
  {
    return v4 | 8;
  }
}

uint64_t sub_23A94EC08(int a1)
{
  if (a1 == 0xFF)
  {
    return 15;
  }

  v3 = (~a1 & 0x22) == 0;
  if ((~a1 & 0x11) == 0)
  {
    v3 = 1;
  }

  if ((~a1 & 0x44) != 0 && (a1 & 0x88) != 0x88)
  {
    if (v3)
    {
      result = 2;
LABEL_11:
      if ((~a1 & 0x60) != 0 && (a1 & 0x90) != 0x90)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    LODWORD(result) = 0;
    if ((~a1 & 0x60) != 0 && (a1 & 0x90) != 0x90)
    {
      result = 0;
      goto LABEL_20;
    }

LABEL_23:
    result = result | 8;
LABEL_24:
    v4 = (~a1 & 9) == 0 || (~a1 & 6) == 0;
    if (v4 && (result & 4) == 0)
    {
      return result | 4;
    }

    return result;
  }

  if (v3)
  {
    result = 3;
    goto LABEL_11;
  }

  result = 1;
  if ((~a1 & 0x60) == 0 || (a1 & 0x90) == 0x90)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((~a1 & 6) == 0 || (a1 & 9) == 9)
  {
    return result | 4;
  }

  return result;
}

uint64_t sub_23A94ED3C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_23AA0D9C4();

    if (v3)
    {
      type metadata accessor for ScanEntityDebugUtility();
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_23A9EDC7C(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

void *sub_23A94EDF0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_23AA0D9C4();

    if (v3)
    {
      type metadata accessor for CVPixelBufferPool(0);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_23A9EE458(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

void *sub_23A94EEA8(uint64_t a1, void *a2)
{
  v5 = 10;
  *(v2 + 40) = 10;
  v14 = MEMORY[0x277D84F90];
  sub_23AA0C3F4();
  do
  {
    sub_23AA0C3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23AA10FC0;
    *(v6 + 56) = sub_23AA0C444();
    *(v6 + 64) = MEMORY[0x277CDAC30];
    __swift_allocate_boxed_opaque_existential_1((v6 + 32));
    v7 = a2;
    sub_23AA0C434();
    v8 = sub_23AA0C164();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_23AA0C154();
    sub_23AA0CAB4();
    sub_23AA0C214();
    sub_23AA0CA94();

    MEMORY[0x23EE8FD70](v11);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23AA0D314();
    }

    sub_23AA0D334();

    --v5;
  }

  while (v5);
  result = v13;
  v13[2] = v14;
  v13[3] = a1;
  v13[4] = v7;
  return result;
}

uint64_t sub_23A94F07C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = MEMORY[0x277CDAC30];
  while (1)
  {
    v5 = v1[2];
    if (v5 >> 62)
    {
      break;
    }

    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_10;
    }

LABEL_4:
    v8 = v1[3];
    v7 = v1[4];
    sub_23AA0C3F4();
    sub_23AA0C3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_23AA10FC0;
    *(v9 + 56) = sub_23AA0C444();
    *(v9 + 64) = v4;
    __swift_allocate_boxed_opaque_existential_1((v9 + 32));
    v10 = v7;
    sub_23AA0C434();
    v11 = sub_23AA0C164();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_23AA0C154();
    sub_23AA0CAB4();
    sub_23AA0C214();
    sub_23AA0CA94();
    swift_beginAccess();

    MEMORY[0x23EE8FD70](v14);
    if (*((v1[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v1[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23AA0D314();
    }

    sub_23AA0D334();
    swift_endAccess();
  }

  if (v5 < 0)
  {
    v15 = v1[2];
  }

  result = sub_23AA0D7F4();
  if (result <= a1)
  {
    goto LABEL_4;
  }

LABEL_10:
  v17 = v1[2];
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = v2[2];

    v18 = MEMORY[0x23EE90360](a1, v17);

    return v18;
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v18 = *(v17 + 8 * a1 + 32);

      return v18;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23A94F2E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_23A94F354()
{
  if (dword_27DFC06F8)
  {
    type metadata accessor for ScanEntityDebugUtilityManager();
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x277D84F98];
    *(result + 24) = 1;
  }

  else
  {
    result = 0;
  }

  qword_27DFC0700 = result;
  return result;
}

uint64_t sub_23A94F3AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v3 + 16);

  v12 = sub_23A94ED3C(a1, v11);

  if (v12)
  {
  }

  (*(v7 + 16))(v10, a2, v6);

  v14 = sub_23A950504(v13, v10);
  v15 = *(v3 + 24);
  v16 = *(v14 + 16);
  *(v14 + 16) = v15;
  if (v15 != v16)
  {
    v17 = *(v14 + 32);
    sub_23AA0CA94();
    if (*(v14 + 24))
    {
      v18 = *(v14 + 16);
      v19 = *(v14 + 24);

      sub_23AA0CA94();
    }
  }

  swift_beginAccess();
  v20 = *(v3 + 16);
  if ((v20 & 0xC000000000000001) == 0)
  {
    v23 = *(v3 + 16);

    goto LABEL_12;
  }

  if (v20 < 0)
  {
    v21 = *(v3 + 16);
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_23AA0D7F4();
  if (!__OFADD__(result, 1))
  {
    *(v3 + 16) = sub_23A905BDC(v21, result + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v3 + 16);
    sub_23A9D991C(v14, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v26;
    swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_23A94F5B8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_23A94F614()
{
  if (v0[3])
  {
    sub_23AA0C164();

    sub_23AA0C204();

    v1 = v0[3];
  }

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  return v0;
}

uint64_t sub_23A94F6C0()
{
  sub_23A94F614();

  return swift_deallocClassInstance();
}

uint64_t sub_23A94F714(int8x16_t a1)
{
  v2 = v1;
  sub_23AA0C3F4();
  v3 = objc_opt_self();
  [v3 systemFontSize];
  v4 = [v3 systemFontOfSize_];
  sub_23AA0C3C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23AA10FC0;
  v6 = objc_opt_self();

  v7 = [v6 whiteColor];
  v8 = sub_23AA0C444();
  v9 = MEMORY[0x277CDAC30];
  *(v5 + 56) = v8;
  *(v5 + 64) = v9;
  __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  sub_23AA0C434();
  v10 = sub_23AA0C164();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23AA0C154();
  *&v14 = *a1.i32 + (*(v2 + 64) * -0.5);
  v15 = vadd_f32(vext_s8(*a1.i8, *&vextq_s8(a1, a1, 8uLL), 4uLL), 0x3C23D70A00000000);
  DWORD1(v14) = v15.i32[0];
  *(&v14 + 1) = v15.u32[1];
  v27 = v14;
  v16 = sub_23AA0C2A4();
  *(v17 + 32) = v27;
  v16(v29, 0);
  v18 = *(v2 + 64);
  sub_23AA0C3E4();
  sub_23AA0C144();
  *v20.i32 = v18 / v19;
  v21 = vdupq_lane_s32(v20, 0);
  v21.i32[3] = 0;
  v28 = v21;
  v22 = sub_23AA0C2A4();
  *v23 = v28;
  v22(v29, 0);
  v24 = *(v2 + 40);
  type metadata accessor for ScanEntity();
  sub_23AA0C214();

  return v13;
}

void *sub_23A94F9A0()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = objc_opt_self();

    v4 = [v3 systemYellowColor];
    type metadata accessor for LinePool();
    swift_allocObject();
    v5 = v4;
    v6 = v0;
    v1 = sub_23A94EEA8(v2, v5);
    v7 = *(v0 + 72);
    *(v6 + 72) = v1;
  }

  return v1;
}

void *sub_23A94FA5C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = objc_opt_self();

    v4 = [v3 redColor];
    type metadata accessor for LinePool();
    swift_allocObject();
    v5 = v4;
    v6 = v0;
    v1 = sub_23A94EEA8(v2, v5);
    v7 = *(v0 + 80);
    *(v6 + 80) = v1;
  }

  return v1;
}

void *sub_23A94FB18()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = objc_opt_self();

    v4 = [v3 greenColor];
    type metadata accessor for LinePool();
    swift_allocObject();
    v5 = v4;
    v6 = v0;
    v1 = sub_23A94EEA8(v2, v5);
    v7 = *(v0 + 88);
    *(v6 + 88) = v1;
  }

  return v1;
}

void *sub_23A94FBD4()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = objc_opt_self();

    v4 = [v3 cyanColor];
    type metadata accessor for LinePool();
    swift_allocObject();
    v5 = v4;
    v6 = v0;
    v1 = sub_23A94EEA8(v2, v5);
    v7 = *(v0 + 96);
    *(v6 + 96) = v1;
  }

  return v1;
}

uint64_t sub_23A94FC90(uint64_t a1)
{
  v3 = type metadata accessor for LineAnimation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA12120;
  *(inited + 32) = sub_23A94F9A0();
  v38 = inited + 32;
  *(inited + 40) = sub_23A94FA5C();
  *(inited + 48) = sub_23A94FBD4();
  v39 = v1;
  *(inited + 56) = sub_23A94FB18();
  v41 = MEMORY[0x277D84F90];
  result = sub_23A975EC4(0, 4, 0);
  v10 = v41;
  v40 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) == 0 && *((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v36 = v4;
  v37 = a1;
  for (i = 0; i != 4; ++i)
  {
    if (v40)
    {
      v12 = MEMORY[0x23EE90360](i, inited);
    }

    else
    {
      v12 = *(v38 + 8 * i);
    }

    result = swift_beginAccess();
    v13 = *(v12 + 16);
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v17 = *(v12 + 16);
      }

      result = sub_23AA0D7F4();
      v14 = result;
      if (!result)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    if (v14 < 1)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE90360](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      sub_23AA0CA94();
    }

LABEL_20:
    v41 = v10;
    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      sub_23A975EC4((v18 > 1), v19 + 1, 1);
      v10 = v41;
    }

    *(v10 + 16) = v20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8E8, &qword_23AA15030);
  v21 = swift_initStackObject();
  v21[1] = xmmword_23AA11C20;
  v21[2] = 0u;
  v22 = v21 + 2;
  v21[3] = 0u;
  v23 = *(v37 + 16);
  if (v23)
  {
    v24 = v37 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v25 = *(v36 + 72);
    do
    {
      sub_23A9400FC(v24, v7);
      if (*v7 == 1)
      {
        if (v7[104] > 1u)
        {
          if (v7[104] == 2)
          {
            v26 = v39[12];

            v27 = 2;
          }

          else
          {
            v26 = v39[9];

            v27 = 0;
          }
        }

        else if (v7[104])
        {
          v26 = v39[10];

          v27 = 1;
        }

        else
        {
          v26 = v39[11];

          v27 = 3;
        }

        v28 = *(v21 + 2);
        if (v27 >= v28)
        {
          goto LABEL_40;
        }

        v41 = *(v22 + v27);

        sub_23A9500E8(v7, v29, v30, v31, v32, v33, v26, &v41);

        v34 = qword_23AA15038[v7[104]];
        v35 = v41;

        result = sub_23A940160(v7);
        if (v34 >= v28)
        {
          goto LABEL_41;
        }

        *(v22 + v34) = v35;
      }

      else
      {
        sub_23A940160(v7);
      }

      v24 += v25;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_23A9500E8(uint64_t result, double a2, __n128 a3, double a4, double a5, __n128 a6, uint64_t a7, uint64_t *a8)
{
  v9 = *(result + 112);
  v10 = v9[1].i64[0];
  if (v10)
  {
    v11 = v10 - 1;
    if (v10 != 1)
    {
      v13 = v9 + 3;
      v14 = 0;
      do
      {
        v15 = v13[-1];
        v16 = vsubq_f32(*v13, v15);
        v16.f32[2] = COERCE_FLOAT(v13->i64[1]) - COERCE_FLOAT(v13[-1].i64[1]);
        v17 = vmulq_f32(v16, v16);
        if (sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) != 0.0)
        {
          v23 = a6.n128_u32[3];
          v21 = v14;
          v22 = a3.n128_u32[3];
          v18 = vaddq_f32(v15, *v13);
          v19 = *a8;
          sub_23A94F07C(*a8);
          v20 = *(v8 + 40);
          sub_23AA0C164();
          sub_23AA0C234();

          sub_23AA0CA94();

          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_10;
          }

          *a8 = v19 + 1;
          v14 = v21;
          a3.n128_u32[3] = v22;
          a6.n128_u32[3] = v23;
        }

        ++v13;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A95038C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_23AA0D1F4();
  if (a2)
  {
    a1 = 15;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_23A950448(uint64_t a1)
{
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 1056964608;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 40) = a1;
  v2 = sub_23AA0CAB4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  *(v1 + 32) = sub_23AA0C1A4();
  type metadata accessor for ScanEntity();

  sub_23AA0C214();

  return v1;
}

uint64_t sub_23A950504(uint64_t a1, uint64_t a2)
{
  v3 = sub_23AA0C074();
  v6 = sub_23A95038C(6uLL, v3, v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x23EE8FC60](v6, v8, v10, v12);
  v15 = v14;

  type metadata accessor for ScanEntityDebugUtility();
  swift_allocObject();

  v17 = sub_23A950448(v16);

  v18 = *(v17 + 56);
  *(v17 + 48) = v13;
  *(v17 + 56) = v15;

  *(v17 + 64) = 1056964608;
  v19 = sub_23A94F714(0);

  v20 = sub_23AA0C0E4();
  (*(*(v20 - 8) + 8))(a2, v20);
  v21 = *(v17 + 24);
  *(v17 + 24) = v19;

  return v17;
}

id sub_23A950668()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v0 setCornerRadius_];
  [v0 setCornerCurve_];
  [v0 setCompositingFilter_];
  v1 = [objc_opt_self() blackColor];
  v2 = [v1 CGColor];

  [v0 setBackgroundColor_];
  return v0;
}

id sub_23A95074C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v0 setBorderWidth_];
  [v0 setCornerRadius_];
  [v0 setCornerCurve_];
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v2 CGColor];

  [v0 setBorderColor_];
  v4 = [v1 whiteColor];
  v5 = [v4 CGColor];

  [v0 setBackgroundColor_];
  return v0;
}

id sub_23A95087C()
{
  v1 = *v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  *(v0 + 64) = v3 == 1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_23AA0D104();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 withConfiguration:0];

  return v7;
}

void sub_23A9509B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0x3FF0000000000000;
  *(v0 + 32) = sub_23A950668();
  v1 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v1 setCornerRadius_];
  [v1 setMasksToBounds_];
  [v1 setCornerCurve_];
  *(v0 + 40) = v1;
  v2 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v2 setAllowsEdgeAntialiasing_];
  v3 = [objc_opt_self() whiteColor];
  v4 = [v3 CGColor];

  [v2 setBackgroundColor_];
  CGAffineTransformMakeRotation(&v20, 1.09955743);
  [v2 setAffineTransform_];
  *(v0 + 48) = v2;
  *(v0 + 56) = sub_23A95074C();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  sub_23A951D24(&v20);
  v5 = v22;
  *(v0 + 216) = v23;
  v6 = v25;
  *(v0 + 232) = v24;
  *(v0 + 248) = v6;
  v7 = *&v20.a;
  *(v0 + 152) = *&v20.c;
  v8 = v21;
  *(v0 + 168) = *&v20.tx;
  *(v0 + 184) = v8;
  *(v0 + 200) = v5;
  *(v0 + 264) = v26;
  *(v0 + 136) = v7;
  *(v0 + 268) = 0;
  *(v0 + 272) = 1;
  *(v0 + 280) = 0x4052000000000000;
  [*(v0 + 40) addSublayer_];
  v9 = sub_23A95087C();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v12 = *(v0 + 16);
    *(v0 + 16) = v11;
    v13 = v11;

    if (v13)
    {
      v14 = [v10 CGImage];
      [v13 setContents_];

      v15 = *(v0 + 16);
      if (v15)
      {
        [v15 setAllowsEdgeAntialiasing_];
        if (*(v0 + 16))
        {
          [*(v0 + 56) setMask_];
          [v10 size];
          v17 = v16;
          [v10 size];
          v19 = v18;

          *(v0 + 24) = v17 / v19;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_23A950C78()
{
  if (*(v0 + 104))
  {
    __break(1u);
    goto LABEL_13;
  }

  [*(v0 + 32) setBounds_];
  if (*(v0 + 104))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [*(v0 + 56) setBounds_];
  v1 = *(v0 + 16);
  if (!v1)
  {
    return;
  }

  if (*(v0 + 104))
  {
    goto LABEL_14;
  }

  [v1 setBounds_];
  v2 = *(v0 + 16);
  if (!v2)
  {
    return;
  }

  if (*(v0 + 104))
  {
    goto LABEL_15;
  }

  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = v2;
  v10.origin.x = v6;
  v10.origin.y = v5;
  v10.size.width = v4;
  v10.size.height = v3;
  MidX = CGRectGetMidX(v10);
  if (*(v0 + 104))
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v8 setPosition_];
}

uint64_t sub_23A950DAC()
{

  return swift_deallocClassInstance();
}

void sub_23A950E28(void *a1, float a2)
{
  [a1 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v11 / 500.0;
  if (!*(v2 + 64))
  {
    v13 = 1.0;
  }

  v122 = v13;
  v14 = cosf(a2);
  v172.origin.x = v6;
  v172.origin.y = v8;
  v172.size.width = v10;
  v172.size.height = v12;
  Width = CGRectGetWidth(v172);
  v173.origin.x = v6;
  v173.origin.y = v8;
  v173.size.width = v10;
  v173.size.height = v12;
  Height = CGRectGetHeight(v173);
  v174.origin.x = v6;
  v174.origin.y = v8;
  v174.size.width = v10;
  v174.size.height = v12;
  v16 = CGRectGetHeight(v174);
  v17 = objc_opt_self();
  [v17 setDisableActions_];
  v18 = *(v2 + 24) * 72.0;
  v19 = vdupq_lane_s64(0x4052000000000000, 0);
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  v19.f64[0] = v18;
  *(v2 + 88) = vmulq_n_f64(v19, v122);
  *(v2 + 104) = 0;
  sub_23A950C78();
  v175.origin.x = v6;
  v175.origin.y = v8;
  v175.size.width = v10;
  v175.size.height = v12;
  MidX = CGRectGetMidX(v175);
  v176.origin.x = v6;
  v176.origin.y = v8;
  v176.size.width = v10;
  v176.size.height = v12;
  MidY = CGRectGetMidY(v176);
  *(v2 + 112) = MidX;
  *(v2 + 120) = MidY;
  *(v2 + 128) = 0;
  v22 = *(v2 + 32);
  [v22 setPosition_];
  if (*(v2 + 128))
  {
    __break(1u);
    goto LABEL_27;
  }

  v23 = *(v2 + 56);
  [v23 setPosition_];
  v24 = *(MEMORY[0x277CD9DE8] + 48);
  v163 = *(MEMORY[0x277CD9DE8] + 32);
  v164 = v24;
  v165 = *(MEMORY[0x277CD9DE8] + 64);
  *&v166 = *(MEMORY[0x277CD9DE8] + 80);
  v25 = *(MEMORY[0x277CD9DE8] + 16);
  v161 = *MEMORY[0x277CD9DE8];
  v162 = v25;
  *(&v166 + 1) = -1.0 / (v12 * 0.615763547);
  v26 = *(MEMORY[0x277CD9DE8] + 112);
  v167 = *(MEMORY[0x277CD9DE8] + 96);
  v168 = v26;
  sub_23A951D00(&v161);
  v27 = v166;
  *(v2 + 216) = v166;
  v28 = v167;
  *(v2 + 232) = v167;
  v29 = v168;
  *(v2 + 248) = v168;
  v30 = v162;
  *(v2 + 152) = v162;
  v31 = v163;
  *(v2 + 168) = v163;
  v32 = v164;
  *(v2 + 184) = v164;
  v33 = v165;
  *(v2 + 200) = v165;
  v34 = v161;
  *(v2 + 136) = v161;
  *&v170.m41 = v28;
  *&v170.m43 = v29;
  *&v170.m21 = v31;
  *&v170.m23 = v32;
  *&v170.m33 = v27;
  *&v170.m31 = v33;
  *(v2 + 264) = v169;
  v171 = v169;
  *&v170.m13 = v30;
  *&v170.m11 = v34;
  if (sub_23A951D08(&v170) == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v159 = v170;
  [v22 setTransform_];
  v35 = *(v2 + 216);
  v36 = *(v2 + 248);
  *&v159.m41 = *(v2 + 232);
  *&v159.m43 = v36;
  v160 = *(v2 + 264);
  v37 = *(v2 + 152);
  v38 = *(v2 + 184);
  *&v159.m21 = *(v2 + 168);
  *&v159.m23 = v38;
  v39 = *(v2 + 200);
  *&v159.m33 = v35;
  *&v159.m31 = v39;
  v40 = *(v2 + 136);
  *&v159.m13 = v37;
  *&v159.m11 = v40;
  if (sub_23A951D08(&v159) == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v157 = v159;
  [v23 setTransform_];
  v41 = *(v2 + 216);
  v42 = *(v2 + 248);
  *&v157.m41 = *(v2 + 232);
  *&v157.m43 = v42;
  v158 = *(v2 + 264);
  v43 = *(v2 + 152);
  v44 = *(v2 + 184);
  *&v157.m21 = *(v2 + 168);
  *&v157.m23 = v44;
  v45 = *(v2 + 200);
  *&v157.m33 = v41;
  *&v157.m31 = v45;
  v46 = *(v2 + 136);
  *&v157.m13 = v43;
  *&v157.m11 = v46;
  if (sub_23A951D08(&v157) == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v155 = v157;
  CATransform3DScale(&v152, &v155, 0.85, 0.85, 1.0);
  v153 = v152;
  sub_23A951D00(&v153);
  v47 = *&v153.m33;
  *(v2 + 216) = *&v153.m33;
  v48 = *&v153.m41;
  *(v2 + 232) = *&v153.m41;
  v49 = *&v153.m43;
  *(v2 + 248) = *&v153.m43;
  v50 = *&v153.m13;
  *(v2 + 152) = *&v153.m13;
  v51 = *&v153.m21;
  *(v2 + 168) = *&v153.m21;
  v52 = *&v153.m23;
  *(v2 + 184) = *&v153.m23;
  v53 = *&v153.m31;
  *(v2 + 200) = *&v153.m31;
  v54 = *&v153.m11;
  *(v2 + 136) = *&v153.m11;
  *&v155.m41 = v48;
  *&v155.m43 = v49;
  *&v155.m21 = v51;
  *&v155.m23 = v52;
  *&v155.m33 = v47;
  *&v155.m31 = v53;
  *(v2 + 264) = v154;
  v156 = v154;
  *&v155.m13 = v50;
  *&v155.m11 = v54;
  if (sub_23A951D08(&v155) == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v150 = v155;
  [v22 setTransform_];
  v55 = *(v2 + 216);
  v56 = *(v2 + 248);
  *&v150.m41 = *(v2 + 232);
  *&v150.m43 = v56;
  v151 = *(v2 + 264);
  v57 = *(v2 + 152);
  v58 = *(v2 + 184);
  *&v150.m21 = *(v2 + 168);
  *&v150.m23 = v58;
  v59 = *(v2 + 200);
  *&v150.m33 = v55;
  *&v150.m31 = v59;
  v60 = *(v2 + 136);
  *&v150.m13 = v57;
  *&v150.m11 = v60;
  if (sub_23A951D08(&v150) == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v148 = v150;
  [v23 setTransform_];
  v61 = *(v2 + 216);
  v62 = *(v2 + 248);
  *&v148.m41 = *(v2 + 232);
  *&v148.m43 = v62;
  v149 = *(v2 + 264);
  v63 = *(v2 + 152);
  v64 = *(v2 + 184);
  *&v148.m21 = *(v2 + 168);
  *&v148.m23 = v64;
  v65 = *(v2 + 200);
  *&v148.m33 = v61;
  *&v148.m31 = v65;
  v66 = *(v2 + 136);
  *&v148.m13 = v63;
  *&v148.m11 = v66;
  if (sub_23A951D08(&v148) == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v67 = v14;
  v146 = v148;
  CATransform3DRotate(&v144, &v146, v67 * 3.14159265 * -0.08, 0.0, 1.0, 0.0);
  sub_23A951D00(&v144);
  *(v2 + 216) = *&v144.m33;
  *(v2 + 232) = *&v144.m41;
  *(v2 + 248) = *&v144.m43;
  *(v2 + 264) = v145;
  *(v2 + 152) = *&v144.m13;
  *(v2 + 168) = *&v144.m21;
  *(v2 + 184) = *&v144.m23;
  *(v2 + 200) = *&v144.m31;
  *(v2 + 136) = *&v144.m11;
  v146 = v144;
  v147 = v145;
  if (sub_23A951D08(&v146) == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v142 = v146;
  [v22 setTransform_];
  v68 = *(v2 + 216);
  v69 = *(v2 + 248);
  *&v142.m41 = *(v2 + 232);
  *&v142.m43 = v69;
  v143 = *(v2 + 264);
  v70 = *(v2 + 152);
  v71 = *(v2 + 184);
  *&v142.m21 = *(v2 + 168);
  *&v142.m23 = v71;
  v72 = *(v2 + 200);
  *&v142.m33 = v68;
  *&v142.m31 = v72;
  v73 = *(v2 + 136);
  *&v142.m13 = v70;
  *&v142.m11 = v73;
  if (sub_23A951D08(&v142) == 1)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v140 = v142;
  [v23 setTransform_];
  v74 = *(v2 + 216);
  v75 = *(v2 + 248);
  *&v140.m41 = *(v2 + 232);
  *&v140.m43 = v75;
  v141 = *(v2 + 264);
  v76 = *(v2 + 152);
  v77 = *(v2 + 184);
  *&v140.m21 = *(v2 + 168);
  *&v140.m23 = v77;
  v78 = *(v2 + 200);
  *&v140.m33 = v74;
  *&v140.m31 = v78;
  v79 = *(v2 + 136);
  *&v140.m13 = v76;
  *&v140.m11 = v79;
  if (sub_23A951D08(&v140) == 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v138 = v140;
  CATransform3DRotate(&v136, &v138, v67 * 3.14159265 * 0.08, 1.0, 0.0, 0.0);
  sub_23A951D00(&v136);
  v80 = *&v136.m31;
  *(v2 + 216) = *&v136.m33;
  v81 = *&v136.m33;
  *(v2 + 232) = *&v136.m41;
  v82 = *&v136.m41;
  *(v2 + 248) = *&v136.m43;
  v83 = *&v136.m11;
  *(v2 + 152) = *&v136.m13;
  v84 = *&v136.m13;
  *(v2 + 168) = *&v136.m21;
  v85 = *&v136.m21;
  *(v2 + 184) = *&v136.m23;
  v86 = *&v136.m23;
  *(v2 + 200) = *&v136.m31;
  *(v2 + 136) = *&v136.m11;
  *&v138.m41 = v82;
  *&v138.m43 = *&v136.m43;
  *&v138.m21 = v85;
  *&v138.m23 = v86;
  *&v138.m33 = v81;
  *&v138.m31 = v80;
  *(v2 + 264) = v137;
  v139 = v137;
  *&v138.m13 = v84;
  *&v138.m11 = v83;
  if (sub_23A951D08(&v138) == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v134 = v138;
  [v22 setTransform_];
  v87 = *(v2 + 216);
  v88 = *(v2 + 248);
  *&v134.m41 = *(v2 + 232);
  *&v134.m43 = v88;
  v135 = *(v2 + 264);
  v89 = *(v2 + 152);
  v90 = *(v2 + 184);
  *&v134.m21 = *(v2 + 168);
  *&v134.m23 = v90;
  *&v134.m31 = *(v2 + 200);
  *&v134.m33 = v87;
  *&v134.m11 = *(v2 + 136);
  *&v134.m13 = v89;
  if (sub_23A951D08(&v134) == 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v132 = v134;
  [v23 setTransform_];
  v91 = *(v2 + 216);
  v92 = *(v2 + 248);
  *&v132.m41 = *(v2 + 232);
  *&v132.m43 = v92;
  v133 = *(v2 + 264);
  v93 = *(v2 + 152);
  v94 = *(v2 + 184);
  *&v132.m21 = *(v2 + 168);
  *&v132.m23 = v94;
  *&v132.m31 = *(v2 + 200);
  *&v132.m33 = v91;
  *&v132.m11 = *(v2 + 136);
  *&v132.m13 = v93;
  if (sub_23A951D08(&v132) == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v130 = v132;
  CATransform3DTranslate(&v128, &v130, Width * 0.15, Height * 0.175 * v67 + v16 * -0.125, 1.0);
  sub_23A951D00(&v128);
  v95 = *&v128.m31;
  *(v2 + 216) = *&v128.m33;
  v96 = *&v128.m33;
  *(v2 + 232) = *&v128.m41;
  v97 = *&v128.m41;
  *(v2 + 248) = *&v128.m43;
  v98 = *&v128.m11;
  *(v2 + 152) = *&v128.m13;
  v99 = *&v128.m13;
  *(v2 + 168) = *&v128.m21;
  v100 = *&v128.m21;
  *(v2 + 184) = *&v128.m23;
  v101 = *&v128.m23;
  *(v2 + 200) = *&v128.m31;
  *(v2 + 136) = *&v128.m11;
  *&v130.m41 = v97;
  *&v130.m43 = *&v128.m43;
  *&v130.m21 = v100;
  *&v130.m23 = v101;
  *&v130.m31 = v95;
  *&v130.m33 = v96;
  *(v2 + 264) = v129;
  v131 = v129;
  *&v130.m11 = v98;
  *&v130.m13 = v99;
  if (sub_23A951D08(&v130) == 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v126 = v130;
  [v22 setTransform_];
  v102 = *(v2 + 216);
  v103 = *(v2 + 248);
  *&v126.m41 = *(v2 + 232);
  *&v126.m43 = v103;
  v127 = *(v2 + 264);
  v104 = *(v2 + 152);
  v105 = *(v2 + 184);
  *&v126.m21 = *(v2 + 168);
  *&v126.m23 = v105;
  *&v126.m31 = *(v2 + 200);
  *&v126.m33 = v102;
  *&v126.m11 = *(v2 + 136);
  *&v126.m13 = v104;
  if (sub_23A951D08(&v126) == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v124 = v126;
  [v23 setTransform_];
  *(v2 + 268) = 1065353216;
  *(v2 + 272) = 0;
  LODWORD(v106) = 1.0;
  [v22 setOpacity_];
  if (*(v2 + 272))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  LODWORD(v107) = *(v2 + 268);
  [v23 setOpacity_];
  v108 = *(v2 + 16);
  if (v108)
  {
    v109 = v108;
    [a1 contentsScale];
    [v109 setContentsScale_];
  }

  if (*(v2 + 104))
  {
    goto LABEL_42;
  }

  v110 = *(v2 + 40);
  [v110 setBounds_];
  if (*(v2 + 272))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  LODWORD(v111) = *(v2 + 268);
  [v110 setOpacity_];
  v112 = *(v2 + 216);
  v113 = *(v2 + 248);
  *&v124.m41 = *(v2 + 232);
  *&v124.m43 = v113;
  v125 = *(v2 + 264);
  v114 = *(v2 + 152);
  v115 = *(v2 + 184);
  *&v124.m21 = *(v2 + 168);
  *&v124.m23 = v115;
  *&v124.m31 = *(v2 + 200);
  *&v124.m33 = v112;
  *&v124.m11 = *(v2 + 136);
  *&v124.m13 = v114;
  if (sub_23A951D08(&v124) == 1)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v123 = v124;
  [v110 setTransform_];
  if ((*(v2 + 128) & 1) == 0)
  {
    [v110 setPosition_];
    v116 = *(v2 + 48);
    LODWORD(v117) = 1053609165;
    [v116 setOpacity_];
    [v110 bounds];
    v118 = CGRectGetWidth(v177) * 7.0;
    [v110 bounds];
    v119 = CGRectGetHeight(v178);
    [v116 setBounds_];
    [v110 bounds];
    v120 = CGRectGetMidX(v179) + 5.0;
    [v110 bounds];
    [v116 setPosition_];
    [v17 setDisableActions_];
    return;
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_23A951D08(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_23A951D24(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

void *sub_23A951D44(void *result, void *a2, id a3)
{
  v4 = OBJC_IVAR____TtC8RoomPlan10TmpTexture_wasUpdated;
  if ((*(v3 + OBJC_IVAR____TtC8RoomPlan10TmpTexture_wasUpdated) & 1) == 0)
  {
    v5 = result;
    v6 = [result width];
    v7 = [v5 height];
    v8 = [v5 pixelFormat];
    v9 = OBJC_IVAR____TtC8RoomPlan10TmpTexture_texture;
    swift_beginAccess();
    v10 = *(v3 + v9);
    if (v10 && [*(v3 + v9) width] == v6 && objc_msgSend(v10, sel_height) == v7 && objc_msgSend(v10, sel_pixelFormat) == v8)
    {
      v11 = [v10 usage] == a3 || v6 == 0;
    }

    else
    {
      v11 = v6 == 0;
    }

    if (!v11 && v7 != 0)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
      [v13 setPixelFormat_];
      [v13 setWidth_];
      [v13 setHeight_];
      [v13 setUsage_];
      v14 = [a2 newTextureWithDescriptor_];

      *(v3 + v9) = v14;
      swift_unknownObjectRelease();
    }

    result = swift_endAccess();
    *(v3 + v4) = 1;
  }

  return result;
}

id sub_23A951F5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TmpTexture();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23A951FC4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
LABEL_5:
    swift_unknownObjectRetain();
    return v1;
  }

  result = [*(v0 + 16) newBufferWithLength:64 options:0];
  if (result)
  {
    v1 = result;
    v3 = *(v0 + 32);
    *(v0 + 32) = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_23A95203C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
LABEL_5:
    swift_unknownObjectRetain();
    return v1;
  }

  result = [*(v0 + 16) newBufferWithLength:48 options:0];
  if (result)
  {
    v1 = result;
    v3 = *(v0 + 40);
    *(v0 + 40) = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_23A9520B4(int a1, id a2, void *a3)
{
  v4 = [a2 device];
  v5 = [a3 width];
  v6 = [a3 height];
  v7 = [a3 pixelFormat];
  v8 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v8 setPixelFormat_];
  [v8 setWidth_];
  [v8 setHeight_];
  [v8 setUsage_];
  v9 = [v4 newTextureWithDescriptor_];
  swift_unknownObjectRelease();

  if (v9)
  {
    return v9;
  }

  result = sub_23AA0D9E4();
  __break(1u);
  return result;
}

uint64_t sub_23A952224(uint64_t a1)
{
  v2 = v1;
  v48[3] = *MEMORY[0x277D85DE8];
  v4 = sub_23AA0CE84();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v44 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for TmpTexture();
  *(v2 + 80) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 88) = [objc_allocWithZone(v12) init];
  *(v2 + 96) = [objc_allocWithZone(v12) init];
  *(v2 + 104) = sub_23A9520B4;
  *(v2 + 112) = 0;
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  *(v2 + 16) = sub_23A93BFA4();
  v13 = sub_23A93C058();
  *(v2 + 24) = a1;

  v14 = sub_23AA0D104();
  v15 = [v13 newFunctionWithName_];

  if (v15)
  {
    v16 = *(v2 + 16);
    v48[0] = 0;
    v17 = [v16 newComputePipelineStateWithFunction:v15 error:v48];
    v18 = v48[0];
    if (!v17)
    {
      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_23A8D4E5C();
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v19 = sub_23AA0CE54();
    v20 = sub_23AA0D494();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v44 = v4;
      v22 = v21;
      *v21 = 0;
      _os_log_impl(&dword_23A8B4000, v19, v20, "Cannot create occlusion stage", v21, 2u);
      v4 = v44;
      MEMORY[0x23EE91710](v22, -1, -1);
    }

    (*(v47 + 8))(v11, v4);
    v17 = 0;
  }

  v23 = *(v2 + 56);
  *(v2 + 56) = v17;
  swift_unknownObjectRelease();
  v24 = sub_23AA0D104();
  v25 = [v13 newFunctionWithName_];

  if (v25)
  {
    v26 = *(v2 + 16);
    v48[0] = 0;
    v27 = [v26 newComputePipelineStateWithFunction:v25 error:v48];
    v18 = v48[0];
    if (!v27)
    {
      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_23A8D4E5C();
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v28 = sub_23AA0CE54();
    v29 = sub_23AA0D494();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_23A8B4000, v28, v29, "Cannot create compositing stage", v30, 2u);
      MEMORY[0x23EE91710](v30, -1, -1);
    }

    (*(v47 + 8))(v46, v4);
    v27 = 0;
  }

  v31 = *(v2 + 64);
  *(v2 + 64) = v27;
  swift_unknownObjectRelease();
  v32 = sub_23AA0D104();
  v33 = [v13 newFunctionWithName_];

  if (!v33)
  {
    sub_23A8D4E5C();
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v37 = sub_23AA0CE54();
    v38 = sub_23AA0D494();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_23A8B4000, v37, v38, "Cannot create occlusion/compositing stage", v39, 2u);
      MEMORY[0x23EE91710](v39, -1, -1);
    }

    (*(v47 + 8))(v45, v4);
    v35 = 0;
    goto LABEL_26;
  }

  v34 = *(v2 + 16);
  v48[0] = 0;
  v35 = [v34 newComputePipelineStateWithFunction:v33 error:v48];
  v18 = v48[0];
  if (v35)
  {
    swift_unknownObjectRelease();
LABEL_26:
    v40 = *(v2 + 72);
    *(v2 + 72) = v35;
    swift_unknownObjectRelease();
    v41 = *(v2 + 16);
    swift_beginAccess();
    swift_unknownObjectRetain();
    CVMetalTextureCacheCreate(0, 0, v41, 0, (v2 + 80));
    swift_endAccess();

    swift_unknownObjectRelease();
    goto LABEL_27;
  }

LABEL_20:
  v36 = v18;
  sub_23AA0BE74();

  swift_willThrow();
  swift_unknownObjectRelease();

LABEL_27:
  swift_unknownObjectRelease();
  v42 = *MEMORY[0x277D85DE8];
  return v2;
}

__n128 sub_23A952978(double a1, double a2, __n128 a3, __n128 a4)
{
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v4 = off_27DFB17B0;
  swift_beginAccess();
  v5 = v4[30];
  swift_beginAccess();
  v6 = v4[29];
  swift_beginAccess();
  v7 = *(v4 + 34);
  swift_beginAccess();
  v8 = v4[28];
  swift_beginAccess();
  v9 = v4[27];
  swift_beginAccess();
  v10 = *(v4 + 104);
  v11 = sub_23A98DF14(a1, a2, a3, a4);
  v13.n128_f32[0] = v11 * v12;
  v13.n128_f32[1] = v12 - v11;
  v13.n128_u64[1] = LODWORD(v11);
  v22 = v13;
  v14 = sub_23A95203C();
  v15 = [v14 contents];
  v16 = v14;
  result = v22;
  *v15 = v22;
  v15[4] = v8;
  v15[5] = v9;
  *(v15 + 24) = v7;
  *(v15 + 25) = v10;
  v15[7] = v6;
  v15[8] = v5;
  return result;
}

uint64_t sub_23A952AEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = v8(v9, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_23A952B84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);
  swift_unknownObjectRelease();
  v5 = *(v0 + 48);
  swift_unknownObjectRelease();
  v6 = *(v0 + 56);
  swift_unknownObjectRelease();
  v7 = *(v0 + 64);
  swift_unknownObjectRelease();
  v8 = *(v0 + 72);
  swift_unknownObjectRelease();

  v9 = *(v0 + 112);

  return v0;
}

uint64_t sub_23A952BFC()
{
  sub_23A952B84();

  return swift_deallocClassInstance();
}

uint64_t sub_23A952C54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  if (a2)
  {

    if (a3)
    {
LABEL_3:
      if (a4)
      {
        return v6;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v7 = *(result + 16);
    if (v7)
    {
      v8 = 0;
      while (*(result + v8 + 32))
      {
        if (v7 == ++v8)
        {
          goto LABEL_9;
        }
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_102;
      }

      if (v8 + 1 != v7)
      {
        v19 = (v8 + 33);
        while ((v19 - 32) < v7)
        {
          v21 = v19[v6];
          if (v21)
          {
            if (v19 - 32 != v8)
            {
              if (v8 >= v7)
              {
                goto LABEL_90;
              }

              v22 = v6[v8 + 32];
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_23A975D14(v6);
                v6 = result;
              }

              v6[v8 + 32] = v21;
              v19[v6] = v22;
              v7 = *(v6 + 2);
            }

            ++v8;
          }

          v20 = v19 - 31;
          ++v19;
          if (v20 == v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_88;
      }

LABEL_12:
      if (v7 < v8)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (v8 < 0)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    else
    {
LABEL_9:

      v8 = v7;
    }

    if (__OFADD__(v7, v8 - v7))
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v8 > *(v6 + 3) >> 1)
    {
      if (v7 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }

      v6 = sub_23A939D50(isUniquelyReferenced_nonNull_native, v10, 1, v6);
    }

    result = sub_23A946858(v8, v7, 0);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v6 + 2);
  if (v11)
  {
    v12 = 0;
    while (v6[v12 + 32] != 2)
    {
      if (v11 == ++v12)
      {
        goto LABEL_26;
      }
    }

    if (__OFADD__(v12, 1))
    {
      goto LABEL_103;
    }

    if (v12 + 1 == v11)
    {
LABEL_29:
      if (v11 < v12)
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      if (v12 < 0)
      {
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      goto LABEL_31;
    }

    v23 = (v12 + 33);
    while ((v23 - 32) < v11)
    {
      v25 = v23[v6];
      if (v25 != 2)
      {
        if (v23 - 32 != v12)
        {
          if (v12 >= v11)
          {
            goto LABEL_91;
          }

          v26 = v6[v12 + 32];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_23A975D14(v6);
            v6 = result;
          }

          v6[v12 + 32] = v25;
          v23[v6] = v26;
          v11 = *(v6 + 2);
        }

        ++v12;
      }

      v24 = v23 - 31;
      ++v23;
      if (v24 == v11)
      {
        goto LABEL_29;
      }
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_26:
  v12 = *(v6 + 2);
LABEL_31:
  if (__OFADD__(v11, v12 - v11))
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v13 = swift_isUniquelyReferenced_nonNull_native();
  if (!v13 || v12 > *(v6 + 3) >> 1)
  {
    if (v11 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    v6 = sub_23A939D50(v13, v14, 1, v6);
  }

  result = sub_23A946858(v12, v11, 0);
  if (a4)
  {
    return v6;
  }

LABEL_39:
  v15 = *(v6 + 2);
  if (!v15)
  {
LABEL_43:
    v16 = *(v6 + 2);
LABEL_48:
    if (!__OFADD__(v15, v16 - v15))
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      if (!v17 || v16 > *(v6 + 3) >> 1)
      {
        if (v15 <= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v15;
        }

        v6 = sub_23A939D50(v17, v18, 1, v6);
      }

      sub_23A946858(v16, v15, 0);
      return v6;
    }

    goto LABEL_95;
  }

  v16 = 0;
  while (v6[v16 + 32] != 3)
  {
    if (v15 == ++v16)
    {
      goto LABEL_43;
    }
  }

  if (__OFADD__(v16, 1))
  {
    goto LABEL_104;
  }

  if (v16 + 1 != v15)
  {
    v27 = (v16 + 33);
    while ((v27 - 32) < v15)
    {
      v29 = v27[v6];
      if (v29 != 3)
      {
        if (v27 - 32 != v16)
        {
          if (v16 >= v15)
          {
            goto LABEL_92;
          }

          v30 = v6[v16 + 32];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_23A975D14(v6);
            v6 = result;
          }

          v6[v16 + 32] = v29;
          v27[v6] = v30;
          v15 = *(v6 + 2);
        }

        ++v16;
      }

      v28 = v27 - 31;
      ++v27;
      if (v28 == v15)
      {
        goto LABEL_46;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_46:
  if (v15 < v16)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_23A953064()
{
  v1 = v0;
  v140[1] = *MEMORY[0x277D85DE8];
  if (qword_27DFAE518 != -1)
  {
LABEL_85:
    swift_once();
  }

  v2 = off_27DFB17B0;
  v3 = *(sub_23A9FF620() + 2);

  if (v3)
  {
    v4 = sub_23A9FF620();
    v5 = v1;
    v6 = v1[7];
    v7 = v1[8];
    v8 = v5[9];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v125 = sub_23A952C54(v4, v6, v7, v8);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v5[11][OBJC_IVAR____TtC8RoomPlan10TmpTexture_wasUpdated] = 0;
    v5[12][OBJC_IVAR____TtC8RoomPlan10TmpTexture_wasUpdated] = 0;
    v139 = 0;
    v140[0] = 0;
    v138 = 0;
    v137 = 0.0;
    v9 = *(MEMORY[0x277D860B0] + 16);
    v10 = *(MEMORY[0x277D860B0] + 32);
    v134 = *MEMORY[0x277D860B0];
    v135 = v9;
    v136 = v10;
    v114 = v5;
    v11 = *(*(v5[3] + 3) + 24);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &v138;
    v13[4] = v140;
    v13[5] = &v139;
    v13[6] = &v137;
    v13[7] = &v134;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_23A954348;
    *(v14 + 24) = v13;
    v132 = sub_23A916670;
    v133 = v14;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v130 = sub_23AA08C40;
    v131 = &block_descriptor_2;
    v15 = _Block_copy(&aBlock);

    dispatch_sync(v11, v15);
    _Block_release(v15);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else if (qword_27DFAE498 == -1)
    {
      goto LABEL_5;
    }

    swift_once();
LABEL_5:
    v16 = qword_27DFC07E8;
    if (*(qword_27DFC07E8 + 32) == 1)
    {
      v17 = v137;
      if (v137 > 0.0)
      {
        v18 = *(qword_27DFC07E8 + 40);
        v19 = swift_allocObject();
        *(v19 + 16) = v16;
        *(v19 + 24) = v17;
        v20 = swift_allocObject();
        *(v20 + 16) = sub_23A9543C8;
        *(v20 + 24) = v19;
        v132 = sub_23A9166DC;
        v133 = v20;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v130 = sub_23AA08C40;
        v131 = &block_descriptor_60;
        v21 = _Block_copy(&aBlock);

        dispatch_sync(v18, v21);
        _Block_release(v21);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_92;
        }
      }
    }

    swift_beginAccess();
    if ((v2[34] & 1) == 0)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v139 = 0;
      v140[0] = 0;
    }

    swift_beginAccess();
    if (v2[33] == 1)
    {
      v23 = v140[0];
      if (v140[0])
      {
        v24 = v138;
        if (v138)
        {
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v25 = sub_23AA0C8C4();
          swift_unknownObjectRetain();
          v26 = sub_23A944A1C(v25, v24, v23);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
          v140[0] = v26;
        }
      }
    }

    v126 = v134;
    v123 = v135;
    v121 = v136;
    swift_beginAccess();
    v27 = *(v2 + 31);
    v28 = v5;
    v29 = sub_23A951FC4();
    v30 = [v29 contents];
    v31 = v29;
    *v30 = v126;
    v30[1] = v123;
    v30[2] = v121;
    *(v30 + 12) = v27;
    sub_23AA0C8B4();
    sub_23A952978(v32, v33, v34, v35);
    if (!*(v125 + 16))
    {

      v106 = 0;
LABEL_75:
      v107 = [sub_23AA0C8C4() blitCommandEncoder];
      swift_unknownObjectRelease();
      if (v106)
      {
        v108 = v106;
        if (!v107)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v108 = sub_23AA0C8D4();
        if (!v107)
        {
          goto LABEL_78;
        }
      }

      v109 = v108;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      [v107 copyFromTexture:v109 toTexture:sub_23AA0C8F4()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      [swift_unknownObjectRetain() endEncoding];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      goto LABEL_78;
    }

    v112 = (v2 + 132);
    v36 = *(v125 + 16);
    swift_beginAccess();
    v37 = 0;
    v38 = 0;
    v111 = v36;
    v122 = v36 - 1;
    while (1)
    {
      v40 = v139;
      v39 = v140[0];
      v42 = v28[11];
      v41 = v28[12];
      if (*(v125 + v38 + 32) > 1u)
      {
        break;
      }

      if (!*(v125 + v38 + 32))
      {
        v115 = v28[12];
        v43 = v42;
        v44 = v41;
        if (v37)
        {
          v45 = v37;
        }

        else
        {
          v45 = sub_23AA0C8D4();
        }

        swift_unknownObjectRetain();
        v58 = sub_23AA0C8F4();
        v59 = sub_23AA0C904();
        sub_23A951D44(v58, v59, 3);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v60 = OBJC_IVAR____TtC8RoomPlan10TmpTexture_texture;
        swift_beginAccess();
        if (!*&v42[v60])
        {
          goto LABEL_94;
        }

        v124 = *&v42[v60];
        swift_unknownObjectRetain();
        v61 = [sub_23AA0C8C4() computeCommandEncoder];
        swift_unknownObjectRelease();
        v28 = v114;
        if (v61)
        {
          v113 = v45;
          v62 = v114[7];
          if (v62)
          {
            v63 = v114[7];
            swift_unknownObjectRetain();
            [v61 setComputePipelineState_];
            [v61 setBuffer:sub_23A951FC4() offset:0 atIndex:0];
            swift_unknownObjectRelease();
            [v61 setBuffer:sub_23A95203C() offset:0 atIndex:1];
            swift_unknownObjectRelease();
            v1 = &selRef_initWithDevice_;
            [v61 setTexture:v113 atIndex:0];
            [v61 setTexture:sub_23AA0C8E4() atIndex:1];
            swift_unknownObjectRelease();
            [v61 setTexture:v39 atIndex:2];
            [v61 setTexture:v40 atIndex:3];
            [v61 setTexture:v124 atIndex:4];
            v64 = [sub_23AA0C8D4() width];
            swift_unknownObjectRelease();
            v65 = [sub_23AA0C8D4() height];
            swift_unknownObjectRelease();
            v66 = [v62 threadExecutionWidth];
            v67 = [v62 maxTotalThreadsPerThreadgroup];
            if (!v66)
            {
              goto LABEL_84;
            }

            if (v67 == 0x8000000000000000 && v66 == -1)
            {
              goto LABEL_90;
            }

            MTLSizeMake(v66, v67 / v66, &aBlock);
            v68 = v130;
            v69 = aBlock;
            *&aBlock = v64;
            *(&aBlock + 1) = v65;
            v130 = 1;
            v127 = v69;
            v128 = v68;
            [v61 dispatchThreads:&aBlock threadsPerThreadgroup:&v127];
            [v61 endEncoding];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v28 = v114;
            goto LABEL_61;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
        goto LABEL_61;
      }

      v117 = v28[11];
      v52 = v42;
      v53 = v41;
      if (v37)
      {
        v54 = v37;
      }

      else
      {
        v54 = sub_23AA0C8D4();
      }

      v79 = v41;
      v120 = v38;
      swift_unknownObjectRetain();
      v80 = sub_23AA0C8F4();
      v81 = sub_23AA0C904();
      sub_23A951D44(v80, v81, 3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v82 = OBJC_IVAR____TtC8RoomPlan10TmpTexture_texture;
      swift_beginAccess();
      if (!*&v41[v82])
      {
        goto LABEL_93;
      }

      *&v127 = *&v41[v82];
      swift_unknownObjectRetain();
      v83 = sub_23AA0C904();
      v84 = sub_23AA0C8C4();
      v85 = *v112;
      v86 = objc_allocWithZone(MEMORY[0x277CD7520]);
      LODWORD(v87) = v85;
      v88 = [v86 initWithDevice:v83 sigma:v87];
      [v88 encodeToCommandBuffer:v84 sourceTexture:v54 destinationTexture:v127];
      v89 = [objc_allocWithZone(MEMORY[0x277CD74C0]) initWithDevice_];
      v28 = v114;
      v90 = v114[14];
      v132 = v114[13];
      v133 = v90;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v130 = sub_23A952AEC;
      v131 = &block_descriptor_50;
      v91 = _Block_copy(&aBlock);

      [v89 encodeToCommandBuffer:v84 primaryTexture:v54 inPlaceSecondaryTexture:&v127 fallbackCopyAllocator:v91];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v91);

      v37 = v127;
      swift_unknownObjectRelease();

      v38 = v120;
LABEL_63:
      if (v122 == v38)
      {
        if (v111 > *(v125 + 16))
        {
          goto LABEL_91;
        }

        v101 = *(v125 + 32 + v111 - 1);

        if (v101 != 2 && v101 != 3)
        {
          v106 = v37;
          goto LABEL_75;
        }

LABEL_78:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
LABEL_79:
        v110 = *MEMORY[0x277D85DE8];
        return result;
      }

      ++v38;
    }

    v46 = v138;
    if (*(v125 + v38 + 32) == 2)
    {
      v47 = v28[11];
      v48 = v42;
      v49 = v41;
      v50 = v41;
      if (v37)
      {
        v51 = v37;
      }

      else
      {
        v51 = sub_23AA0C8D4();
      }

      swift_unknownObjectRetain();
      v70 = sub_23AA0C8F4();
      v71 = [sub_23AA0C8C4() computeCommandEncoder];
      swift_unknownObjectRelease();
      if (v71)
      {
        v72 = v28;
        v1 = v28[8];
        if (v1)
        {
          swift_unknownObjectRetain();
          [v71 setComputePipelineState_];
          [v71 setBuffer:sub_23A951FC4() offset:0 atIndex:0];
          swift_unknownObjectRelease();
          [v71 setTexture:v51 atIndex:0];
          [v71 setTexture:v46 atIndex:1];
          [v71 setTexture:v70 atIndex:2];
          v73 = [sub_23AA0C8D4() width];
          swift_unknownObjectRelease();
          v74 = [sub_23AA0C8D4() height];
          swift_unknownObjectRelease();
          v75 = [v1 threadExecutionWidth];
          v76 = [v1 maxTotalThreadsPerThreadgroup];
          if (!v75)
          {
            goto LABEL_83;
          }

          if (v76 == 0x8000000000000000 && v75 == -1)
          {
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
          }

          MTLSizeMake(v75, v76 / v75, &aBlock);
          v77 = v130;
          v78 = aBlock;
          *&aBlock = v73;
          *(&aBlock + 1) = v74;
          v130 = 1;
          v127 = v78;
          v128 = v77;
          [v71 dispatchThreads:&aBlock threadsPerThreadgroup:&v127];
          [v71 endEncoding];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v28 = v114;
        }

        else
        {

          swift_unknownObjectRelease();
          v28 = v72;
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
      v37 = v70;
    }

    else
    {
      v118 = v28[11];
      v119 = v38;
      v116 = v28[12];
      v55 = v42;
      v56 = v41;
      if (v37)
      {
        v57 = v37;
      }

      else
      {
        v57 = sub_23AA0C8D4();
      }

      swift_unknownObjectRetain();
      v124 = sub_23AA0C8F4();
      v92 = [sub_23AA0C8C4() computeCommandEncoder];
      swift_unknownObjectRelease();
      if (v92)
      {
        v93 = v28[9];
        if (v93)
        {
          v94 = v28[9];
          swift_unknownObjectRetain();
          [v92 setComputePipelineState_];
          [v92 setBuffer:sub_23A951FC4() offset:0 atIndex:0];
          swift_unknownObjectRelease();
          [v92 setBuffer:sub_23A95203C() offset:0 atIndex:1];
          swift_unknownObjectRelease();
          v1 = &selRef_initWithDevice_;
          [v92 setTexture:v57 atIndex:0];
          [v92 setTexture:sub_23AA0C8E4() atIndex:1];
          swift_unknownObjectRelease();
          [v92 setTexture:v46 atIndex:2];
          [v92 setTexture:v39 atIndex:3];
          [v92 setTexture:v40 atIndex:4];
          [v92 setTexture:v124 atIndex:5];
          v95 = [sub_23AA0C8D4() width];
          swift_unknownObjectRelease();
          v96 = [sub_23AA0C8D4() height];
          swift_unknownObjectRelease();
          v97 = [v93 threadExecutionWidth];
          v98 = [v93 maxTotalThreadsPerThreadgroup];
          if (!v97)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          if (v98 == 0x8000000000000000 && v97 == -1)
          {
            goto LABEL_89;
          }

          MTLSizeMake(v97, v98 / v97, &aBlock);
          v99 = v130;
          v100 = aBlock;
          *&aBlock = v95;
          *(&aBlock + 1) = v96;
          v130 = 1;
          v127 = v100;
          v128 = v99;
          [v92 dispatchThreads:&aBlock threadsPerThreadgroup:&v127];
          [v92 endEncoding];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v28 = v114;
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
      v38 = v119;
LABEL_61:
      v37 = v124;
    }

    swift_unknownObjectRelease();
    goto LABEL_63;
  }

  v102 = [sub_23AA0C8C4() blitCommandEncoder];
  result = swift_unknownObjectRelease();
  if (!v102)
  {
    goto LABEL_79;
  }

  swift_unknownObjectRetain();
  v104 = sub_23AA0C8D4();
  [v102 copyFromTexture:v104 toTexture:sub_23AA0C8F4()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  [v102 endEncoding];
  v105 = *MEMORY[0x277D85DE8];

  return swift_unknownObjectRelease();
}

uint64_t sub_23A9542D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A954310()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t sub_23A954390()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_23A954484@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A954514(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23A9544C0()
{
  result = qword_27DFAFA80;
  if (!qword_27DFAFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFA80);
  }

  return result;
}

unint64_t sub_23A954514(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

void sub_23A954560()
{
  v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_fire];
  v2 = *(v0 + 32);
  *(v0 + 32) = v1;
  v3 = v1;

  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v3 setPreferredFramesPerSecond_];

  v4 = *(v0 + 32);
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 mainRunLoop];
  [v6 addToRunLoop:v7 forMode:*MEMORY[0x277CBE640]];
}

void sub_23A9546D0()
{
  v1 = [*(v0 + 40) commandBuffer];
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 24) nextDrawable];
    if (v3)
    {
      v4 = v3;
      v5 = sub_23AA0D104();
      [v2 setLabel_];

      v6 = CACurrentMediaTime();
      v7 = *(v0 + 64);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        __break(1u);
        return;
      }

      v10 = (v0 + 56);
      v11 = *(v0 + 56);
      *(v0 + 64) = v9;
      v12 = v6 - *(v0 + 48);
      *(v0 + 72) = v12;
      *(v0 + 48) = v6;
      *(v0 + 56) = v12 + v11;
      if (v9 >= 60)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          v13 = 1.0 / (*v10 / 60.0);
          sub_23AA0D3D4();
        }

        *v10 = 0.0;
        *(v0 + 64) = 0;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (*(Strong + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderer))
        {
          v15 = *(Strong + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderer);

          sub_23A9FBE84(v4);
        }

        swift_unknownObjectRelease();
      }

      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        if (*(v16 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderer))
        {
          v17 = *(*(v16 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderTimer) + 72);

          sub_23A9FB2E4(v4, v2, v17);
        }

        swift_unknownObjectRelease();
      }

      [v2 commit];
      [v2 waitUntilScheduled];
      [v4 present];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void *sub_23A954908()
{
  result = *(v0 + 32);
  if (result)
  {
    [result invalidate];
    v2 = *(v0 + 16);
    swift_unknownObjectRelease();

    v3 = *(v0 + 40);
    swift_unknownObjectRelease();
    sub_23A8E9694(v0 + 80);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23A95499C(void *a1, void *a2)
{
  *(v2 + 32) = 0;
  *(v2 + 48) = CACurrentMediaTime();
  *(v2 + 88) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 96) = 60;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectRetain();
  v5 = a2;
  [v5 setDevice_];
  [v5 setPresentsWithTransaction_];
  result = [a1 newCommandQueue];
  if (result)
  {
    *(v2 + 40) = result;
    v7 = result;
    swift_unknownObjectRetain();
    v8 = sub_23AA0D104();
    [v7 setLabel_];
    swift_unknownObjectRelease();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23A954A94()
{
  if (*(v0 + OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple) == 1)
  {
    v1 = objc_opt_self();
    v2 = [v1 currentDevice];
    v3 = [v2 model];

    if (!v3)
    {
      sub_23AA0D134();
      v3 = sub_23AA0D104();
    }

    v4 = [v1 currentDevice];
    v5 = [v4 systemName];

    if (!v5)
    {
      sub_23AA0D134();
      v5 = sub_23AA0D104();
    }

    v6 = [v1 currentDevice];
    v7 = [v6 systemVersion];

    if (!v7)
    {
      sub_23AA0D134();
      v7 = sub_23AA0D104();
    }

    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 bundleIdentifier];

    if (v9)
    {
      sub_23AA0D134();
    }

    v10 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
    swift_beginAccess();
    v11 = *(v0 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + v10);
    *(v0 + v10) = 0x8000000000000000;
    sub_23A9DB06C(v3, 0x6F4D656369766544, 0xEB000000006C6564, isUniquelyReferenced_nonNull_native);
    *(v0 + v10) = v18;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v0 + v10);
    *(v0 + v10) = 0x8000000000000000;
    sub_23A9DB06C(v5, 0x656D614E534FLL, 0xE600000000000000, v13);
    *(v0 + v10) = v19;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v0 + v10);
    *(v0 + v10) = 0x8000000000000000;
    sub_23A9DB06C(v7, 0x6F6973726556534FLL, 0xE90000000000006ELL, v14);
    *(v0 + v10) = v20;
    swift_endAccess();
    v15 = sub_23AA0D104();

    swift_beginAccess();
    v16 = *(v0 + v10);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v0 + v10);
    *(v0 + v10) = 0x8000000000000000;
    sub_23A9DB06C(v15, 0x646E75426E69614DLL, 0xEC0000004449656CLL, v17);
    *(v0 + v10) = v21;
    swift_endAccess();
  }
}

id sub_23A954DD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
    v5 = sub_23AA0D024();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_23A954F80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19[-v3];
  v5 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  v6 = *(v0 + v5);
  *(v0 + v5) = MEMORY[0x277D84F98];

  v7 = sub_23AA0C064();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  v9 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_launchTimeStart;
  swift_beginAccess();
  sub_23A95F174(v4, v0 + v9);
  swift_endAccess();
  v8(v4, 1, 1, v7);
  v10 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineScanTimeStart;
  swift_beginAccess();
  sub_23A95F174(v4, v0 + v10);
  swift_endAccess();
  v11 = *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray);
  v12 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray) = MEMORY[0x277D84F90];

  v13 = v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeLastTimeInterval;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray);
  *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray) = v12;

  v15 = v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeLastTimeInterval;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray);
  *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray) = v12;

  v18 = v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateLastTimeInterval;
  *v18 = 0;
  *(v18 + 8) = 1;
  return result;
}

uint64_t sub_23A9551AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_23A954F80();
  sub_23AA0C054();
  v6 = sub_23AA0C064();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_launchTimeStart;
  swift_beginAccess();
  sub_23A95F174(v5, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_23A9552D4(uint64_t result, double a2)
{
  v3 = result + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeLastTimeInterval;
  if ((*(result + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeLastTimeInterval + 8) & 1) == 0)
  {
    v4 = result;
    v5 = *v3;
    v6 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray;
    v7 = *(result + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v6) = v7;
    if ((result & 1) == 0)
    {
      result = sub_23A939D64(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
      *(v4 + v6) = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_23A939D64((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + 8 * v9 + 32) = a2 - v5;
    *(v4 + v6) = v7;
  }

  *v3 = a2;
  *(v3 + 8) = 0;
  return result;
}

void sub_23A9553E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23AA0CEC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CF24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v22[1] = *&v4[*a1];
    v23 = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    aBlock[4] = a3;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = a4;
    v20 = _Block_copy(aBlock);
    v21 = v4;
    sub_23AA0CEE4();
    v24 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v18, v12, v20);
    _Block_release(v20);
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v18, v23);
  }
}

uint64_t sub_23A9556A0(uint64_t a1)
{
  result = sub_23AA0C004();
  v4 = v3;
  v5 = a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeLastTimeInterval;
  if ((*(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeLastTimeInterval + 8) & 1) == 0)
  {
    v6 = *v5;
    v7 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray;
    v8 = *(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v7) = v8;
    if ((result & 1) == 0)
    {
      result = sub_23A939D64(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
      *(a1 + v7) = result;
    }

    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_23A939D64((v9 > 1), v10 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v10 + 1;
    *(v8 + 8 * v10 + 32) = v4 - v6;
    *(a1 + v7) = v8;
  }

  *v5 = v4;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_23A9557B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_23AA0C064();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  sub_23AA0C004();
  v18 = v17;
  v19 = a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateLastTimeInterval;
  if (*(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateLastTimeInterval + 8))
  {
    v20 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_launchTimeStart;
    swift_beginAccess();
    sub_23A8D5194(a1 + v20, v8, &qword_27DFAEB30, &unk_23AA11B50);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_23A8D50D0(v8, &qword_27DFAEB30, &unk_23AA11B50);
    }

    else
    {
      (*(v10 + 32))(v16, v8, v9);
      sub_23AA0C054();
      sub_23AA0C014();
      v27 = sub_23AA0D3C4();
      v28 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
      swift_beginAccess();
      v29 = *(a1 + v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(a1 + v28);
      *(a1 + v28) = 0x8000000000000000;
      sub_23A9DB06C(v27, 0x4C79636E6574614CLL, 0xED000068636E7561, isUniquelyReferenced_nonNull_native);
      *(a1 + v28) = v34;
      swift_endAccess();
      v31 = *(v10 + 8);
      v31(v13, v9);
      v31(v16, v9);
    }

    sub_23AA0C054();
    (*(v10 + 56))(v5, 0, 1, v9);
    v32 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineScanTimeStart;
    swift_beginAccess();
    sub_23A95F174(v5, a1 + v32);
    result = swift_endAccess();
  }

  else
  {
    v21 = *v19;
    v22 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray;
    v23 = *(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v22) = v23;
    if ((result & 1) == 0)
    {
      result = sub_23A939D64(0, *(v23 + 16) + 1, 1, v23);
      v23 = result;
      *(a1 + v22) = result;
    }

    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_23A939D64((v25 > 1), v26 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 16) = v26 + 1;
    *(v23 + 8 * v26 + 32) = v18 - v21;
    *(a1 + v22) = v23;
  }

  *v19 = v18;
  *(v19 + 8) = 0;
  return result;
}

void sub_23A955B84(uint64_t a1, uint64_t a2)
{
  v5 = sub_23AA0CEC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CF24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v19[1] = *&v2[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_queue];
    v20 = v13;
    v16 = swift_allocObject();
    v16[2] = v2;
    v16[3] = a1;
    v16[4] = a2;
    aBlock[4] = sub_23A95F758;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_235;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    sub_23AA0CEE4();
    v21 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v15, v9, v17);
    _Block_release(v17);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v15, v20);
  }
}

void sub_23A955E64(void *a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CF24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v18[1] = *&v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_queue];
    v19 = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = a1;
    aBlock[4] = sub_23A95F6FC;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_229;
    v15 = _Block_copy(aBlock);
    v16 = v1;
    v17 = a1;
    sub_23AA0CEE4();
    v20 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v13, v7, v15);
    _Block_release(v15);
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v13, v19);
  }
}

uint64_t sub_23A956138(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v208 - v6;
  v8 = sub_23AA0C064();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v208 - v14;
  v16 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineScanTimeStart;
  swift_beginAccess();
  sub_23A8D5194(a1 + v16, v7, &qword_27DFAEB30, &unk_23AA11B50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_23A8D50D0(v7, &qword_27DFAEB30, &unk_23AA11B50);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    sub_23AA0C054();
    sub_23AA0C014();
    v17 = sub_23AA0D3C4();
    v18 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
    swift_beginAccess();
    v19 = *(a1 + v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v215 = *(a1 + v18);
    *(a1 + v18) = 0x8000000000000000;
    sub_23A9DB06C(v17, 0xD000000000000011, 0x800000023AA205C0, isUniquelyReferenced_nonNull_native);
    *(a1 + v18) = v215;
    swift_endAccess();
    v21 = *(v9 + 8);
    v21(v12, v8);
    v21(v15, v8);
  }

  v22 = *(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray);
  v23 = *(v22 + 16);
  if (v23)
  {
    if (v23 <= 3)
    {
      v24 = 0;
      v25 = 0.0;
LABEL_11:
      v29 = v23 - v24;
      v30 = (v22 + 8 * v24 + 32);
      do
      {
        v31 = *v30++;
        v25 = v25 + v31;
        --v29;
      }

      while (v29);
      goto LABEL_13;
    }

    v24 = v23 & 0x7FFFFFFFFFFFFFFCLL;
    v26 = (v22 + 48);
    v25 = 0.0;
    v27 = v23 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v28 = *v26;
      v25 = v25 + *(v26 - 2) + *(v26 - 1) + *v26 + v26[1];
      v26 += 4;
      v27 -= 4;
    }

    while (v27);
    if (v23 != v24)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v32 = 0xEA0000000000656DLL;
  v33 = sub_23AA0D434();
  v34 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  v35 = *(a1 + v34);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *(a1 + v34);
  *(a1 + v34) = 0x8000000000000000;
  sub_23A9DB06C(v33, 0x61724652416D754ELL, 0xEA0000000000656DLL, v36);
  *(a1 + v34) = v215;
  swift_endAccess();
  if (v23)
  {
    v37 = sub_23AA0D3C4();
    swift_beginAccess();
    v38 = *(a1 + v34);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v215 = *(a1 + v34);
    *(a1 + v34) = 0x8000000000000000;
    sub_23A9DB06C(v37, 0xD000000000000011, 0x800000023AA205A0, v39);
    *(a1 + v34) = v215;
    swift_endAccess();
  }

  v210 = v34;
  v40 = *(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray);
  v41 = *(v40 + 16);
  if (!v41)
  {
    v42 = v210;
    goto LABEL_24;
  }

  v42 = v210;
  if (v41 <= 3)
  {
    v43 = 0;
    v44 = 0.0;
LABEL_22:
    v48 = v41 - v43;
    v49 = (v40 + 8 * v43 + 32);
    do
    {
      v50 = *v49++;
      v44 = v44 + v50;
      --v48;
    }

    while (v48);
    goto LABEL_24;
  }

  v43 = v41 & 0x7FFFFFFFFFFFFFFCLL;
  v45 = (v40 + 48);
  v44 = 0.0;
  v46 = v41 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v47 = *v45;
    v44 = v44 + *(v45 - 2) + *(v45 - 1) + *v45 + v45[1];
    v45 += 4;
    v46 -= 4;
  }

  while (v46);
  if (v41 != v43)
  {
    goto LABEL_22;
  }

LABEL_24:
  v51 = sub_23AA0D434();
  swift_beginAccess();
  v52 = *(a1 + v42);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *(a1 + v42);
  *(a1 + v42) = 0x8000000000000000;
  sub_23A9DB06C(v51, 0x726679654B6D754ELL, 0xEB00000000656D61, v53);
  *(a1 + v42) = v215;
  swift_endAccess();
  if (v41)
  {
    v54 = sub_23AA0D3C4();
    swift_beginAccess();
    v55 = *(a1 + v42);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v215 = *(a1 + v42);
    *(a1 + v42) = 0x8000000000000000;
    sub_23A9DB06C(v54, 0xD000000000000015, 0x800000023AA20580, v56);
    *(a1 + v42) = v215;
    swift_endAccess();
  }

  v57 = *(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray);
  v58 = *(v57 + 16);
  if (!v58)
  {
    v59 = v210;
    goto LABEL_35;
  }

  v59 = v210;
  if (v58 <= 3)
  {
    v60 = 0;
    v61 = 0.0;
LABEL_33:
    v65 = v58 - v60;
    v66 = (v57 + 8 * v60 + 32);
    do
    {
      v67 = *v66++;
      v61 = v61 + v67;
      --v65;
    }

    while (v65);
    goto LABEL_35;
  }

  v60 = v58 & 0x7FFFFFFFFFFFFFFCLL;
  v62 = (v57 + 48);
  v61 = 0.0;
  v63 = v58 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v64 = *v62;
    v61 = v61 + *(v62 - 2) + *(v62 - 1) + *v62 + v62[1];
    v62 += 4;
    v63 -= 4;
  }

  while (v63);
  if (v58 != v60)
  {
    goto LABEL_33;
  }

LABEL_35:
  v68 = sub_23AA0D434();
  swift_beginAccess();
  v69 = *(a1 + v59);
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *(a1 + v59);
  *(a1 + v59) = 0x8000000000000000;
  sub_23A9DB06C(v68, 0x6E696C6E4F6D754ELL, 0xEF65746164705565, v70);
  *(a1 + v59) = v215;
  swift_endAccess();
  if (v58)
  {
    v71 = sub_23AA0D3C4();
    swift_beginAccess();
    v72 = *(a1 + v59);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v215 = *(a1 + v59);
    *(a1 + v59) = 0x8000000000000000;
    sub_23A9DB06C(v71, 0xD00000000000001CLL, 0x800000023AA20560, v73);
    *(a1 + v59) = v215;
    swift_endAccess();
  }

  v209 = a1;
  v74 = [a2 walls];
  sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
  v75 = sub_23AA0D2F4();

  if (v75 >> 62)
  {
    goto LABEL_92;
  }

  v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_39:
  v77 = v209;

  v78 = sub_23AA0D434();
  v79 = v210;
  swift_beginAccess();
  v80 = *(v77 + v79);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *(v77 + v79);
  *(v77 + v79) = 0x8000000000000000;
  sub_23A9DB06C(v78, 0x6C6C61576D754ELL, 0xE700000000000000, v81);
  *(v77 + v79) = v215;
  swift_endAccess();
  v82 = [a2 windows];
  v83 = sub_23AA0D2F4();

  if (v83 >> 62)
  {
    sub_23AA0D7F4();
  }

  else
  {
    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = sub_23AA0D434();
  v86 = v210;
  swift_beginAccess();
  v87 = *(v77 + v86);
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *(v77 + v86);
  *(v77 + v86) = 0x8000000000000000;
  sub_23A9DB06C(v85, 0x6F646E69576D754ELL, 0xE900000000000077, v88);
  *(v77 + v86) = v215;
  swift_endAccess();
  v89 = [a2 openings];
  v90 = sub_23AA0D2F4();

  if (v90 >> 62)
  {
    sub_23AA0D7F4();
  }

  else
  {
    v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = sub_23AA0D434();
  v93 = v210;
  swift_beginAccess();
  v94 = *(v77 + v93);
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *(v77 + v93);
  *(v77 + v93) = 0x8000000000000000;
  sub_23A9DB06C(v92, 0x696E65704F6D754ELL, v32 + 513, v95);
  *(v77 + v93) = v215;
  swift_endAccess();
  v96 = [a2 objects];
  v32 = sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
  v97 = sub_23AA0D2F4();

  if (v97 >> 62)
  {
    sub_23AA0D7F4();
  }

  else
  {
    v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = sub_23AA0D434();
  v100 = v209;
  v101 = v210;
  swift_beginAccess();
  v102 = *(v100 + v101);
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *(v100 + v101);
  *(v100 + v101) = 0x8000000000000000;
  sub_23A9DB06C(v99, 0x63656A624F6D754ELL, 0xE900000000000074, v103);
  *(v100 + v101) = v215;
  swift_endAccess();
  v104 = [a2 doors];
  v105 = sub_23AA0D2F4();

  if (v105 >> 62)
  {
    sub_23AA0D7F4();
  }

  else
  {
    v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v107 = sub_23AA0D434();
  v108 = v209;
  v109 = v210;
  swift_beginAccess();
  v110 = *(v108 + v109);
  v111 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *(v108 + v109);
  *(v108 + v109) = 0x8000000000000000;
  sub_23A9DB06C(v107, 0x65736F6C436D754ELL, 0xEC000000726F6F44, v111);
  *(v108 + v109) = v215;
  swift_endAccess();
  v112 = [a2 opendoors];
  v113 = sub_23AA0D2F4();

  if (v113 >> 62)
  {
    sub_23AA0D7F4();
  }

  else
  {
    v114 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = sub_23AA0D434();
  v116 = v209;
  v117 = v210;
  swift_beginAccess();
  v118 = *(v116 + v117);
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *(v116 + v117);
  *(v116 + v117) = 0x8000000000000000;
  sub_23A9DB06C(v115, 0x446E65704F6D754ELL, 0xEB00000000726F6FLL, v119);
  *(v116 + v117) = v215;
  swift_endAccess();
  v120 = [a2 objects];
  v121 = sub_23AA0D2F4();

  if (v121 >> 62)
  {
    v122 = sub_23AA0D7F4();
    if (v122)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v122 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v122)
    {
LABEL_51:
      v123 = 0;
      v213 = v121 & 0xFFFFFFFFFFFFFF8;
      v214 = v121 & 0xC000000000000001;
      a2 = MEMORY[0x277D84F98];
      v211 = v122;
      v212 = v121;
      while (1)
      {
        if (v214)
        {
          v124 = MEMORY[0x23EE90360](v123, v121);
        }

        else
        {
          if (v123 >= *(v213 + 16))
          {
            goto LABEL_87;
          }

          v124 = *(v121 + 8 * v123 + 32);
        }

        v125 = v124;
        v126 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          sub_23AA0D7F4();
          goto LABEL_39;
        }

        v127 = [v124 type];
        if (!v127)
        {
          goto LABEL_124;
        }

        v128 = v127;
        type metadata accessor for RSCoreAdaptor();
        sub_23A99BA54(&v216);

        v129 = v216;
        v130 = sub_23AA0D1A4();
        if (*(a2 + 16))
        {
          sub_23A9EDDFC(v130, v131);
          v133 = v132;

          if (v133)
          {
            LOBYTE(v216) = v129;
            v134 = sub_23AA0D1A4();
            v136 = v135;
            v32 = swift_isUniquelyReferenced_nonNull_native();
            v216 = a2;
            v138 = sub_23A9EDDFC(v134, v136);
            v139 = *(a2 + 16);
            v140 = (v137 & 1) == 0;
            v141 = v139 + v140;
            if (__OFADD__(v139, v140))
            {
              goto LABEL_90;
            }

            v142 = v137;
            if (*(a2 + 24) >= v141)
            {
              if (v32)
              {
                if ((v137 & 1) == 0)
                {
                  goto LABEL_85;
                }
              }

              else
              {
                sub_23A90F200();
                if ((v142 & 1) == 0)
                {
                  goto LABEL_85;
                }
              }
            }

            else
            {
              sub_23A90A29C(v141, v32);
              v143 = sub_23A9EDDFC(v134, v136);
              if ((v142 & 1) != (v144 & 1))
              {
                goto LABEL_125;
              }

              v138 = v143;
              if ((v142 & 1) == 0)
              {
LABEL_85:
                __break(1u);
                goto LABEL_86;
              }
            }

            v160 = *(*(v216 + 56) + 8 * v138);

            if (__OFADD__(v160, 1))
            {
              goto LABEL_91;
            }

            a2 = v216;
            *(*(v216 + 56) + 8 * v138) = v160 + 1;
            goto LABEL_53;
          }
        }

        else
        {
        }

        LOBYTE(v216) = v129;
        v145 = sub_23AA0D1A4();
        v147 = v146;
        v32 = swift_isUniquelyReferenced_nonNull_native();
        v216 = a2;
        v149 = sub_23A9EDDFC(v145, v147);
        v150 = *(a2 + 16);
        v151 = (v148 & 1) == 0;
        v152 = v150 + v151;
        if (__OFADD__(v150, v151))
        {
          goto LABEL_88;
        }

        v153 = v148;
        if (*(a2 + 24) >= v152)
        {
          if (v32)
          {
            if (v148)
            {
              goto LABEL_52;
            }
          }

          else
          {
            sub_23A90F200();
            if (v153)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          sub_23A90A29C(v152, v32);
          v154 = sub_23A9EDDFC(v145, v147);
          if ((v153 & 1) != (v155 & 1))
          {
            goto LABEL_125;
          }

          v149 = v154;
          if (v153)
          {
LABEL_52:

            a2 = v216;
            *(*(v216 + 56) + 8 * v149) = 1;
LABEL_53:

            goto LABEL_54;
          }
        }

        a2 = v216;
        *(v216 + 8 * (v149 >> 6) + 64) |= 1 << v149;
        v156 = (*(a2 + 48) + 16 * v149);
        *v156 = v145;
        v156[1] = v147;
        *(*(a2 + 56) + 8 * v149) = 1;

        v157 = *(a2 + 16);
        v158 = __OFADD__(v157, 1);
        v159 = v157 + 1;
        if (v158)
        {
          goto LABEL_89;
        }

        *(a2 + 16) = v159;
LABEL_54:
        v121 = v212;
        ++v123;
        if (v126 == v211)
        {
          goto LABEL_100;
        }
      }
    }
  }

  a2 = MEMORY[0x277D84F98];
LABEL_100:

  v161 = a2 + 64;
  v162 = 1 << *(a2 + 32);
  v163 = -1;
  if (v162 < 64)
  {
    v163 = ~(-1 << v162);
  }

  v164 = v163 & *(a2 + 64);
  v165 = (v162 + 63) >> 6;
  v213 = 0x800000023AA201A0;

  v166 = 0;
  v167 = v209;
  v168 = v210;
  v212 = a2 + 64;
  while (v164)
  {
LABEL_110:
    v174 = __clz(__rbit64(v164)) | (v166 << 6);
    v175 = (*(a2 + 48) + 16 * v174);
    v176 = *v175;
    v177 = v175[1];
    v178 = *(*(a2 + 56) + 8 * v174);
    v216 = 0xD000000000000012;
    v217 = v213;
    MEMORY[0x23EE8FCA0](v176, v177);
    v180 = v216;
    v179 = v217;
    v214 = sub_23AA0D434();
    v181 = v209;
    swift_beginAccess();
    v182 = *(v181 + v168);
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v215 = *(v181 + v168);
    v184 = v215;
    *(v181 + v168) = 0x8000000000000000;
    v185 = sub_23A9EDDFC(v180, v179);
    v187 = v184[2];
    v188 = (v186 & 1) == 0;
    v158 = __OFADD__(v187, v188);
    v189 = v187 + v188;
    if (v158)
    {
      goto LABEL_122;
    }

    v190 = v186;
    if (v184[3] < v189)
    {
      sub_23A909FF8(v189, v183);
      v185 = sub_23A9EDDFC(v180, v179);
      if ((v190 & 1) != (v191 & 1))
      {
        goto LABEL_125;
      }

LABEL_115:
      if (v190)
      {
        goto LABEL_103;
      }

      goto LABEL_116;
    }

    if (v183)
    {
      goto LABEL_115;
    }

    v195 = v185;
    sub_23A90F094();
    v185 = v195;
    if (v190)
    {
LABEL_103:
      v169 = v185;

      v170 = v215;
      v171 = v215[7];
      v172 = *(v171 + 8 * v169);
      *(v171 + 8 * v169) = v214;

      goto LABEL_104;
    }

LABEL_116:
    v170 = v215;
    v215[(v185 >> 6) + 8] |= 1 << v185;
    v192 = (v170[6] + 16 * v185);
    *v192 = v180;
    v192[1] = v179;
    *(v170[7] + 8 * v185) = v214;
    v193 = v170[2];
    v158 = __OFADD__(v193, 1);
    v194 = v193 + 1;
    if (v158)
    {
      goto LABEL_123;
    }

    v170[2] = v194;
LABEL_104:
    v164 &= v164 - 1;
    v167 = v209;
    *(v209 + v210) = v170;
    swift_endAccess();
    v161 = v212;
  }

  while (1)
  {
    v173 = v166 + 1;
    if (__OFADD__(v166, 1))
    {
      break;
    }

    if (v173 >= v165)
    {

      v196 = *(v167 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_errorType);
      v197 = *(v167 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_errorType + 8);
      v198 = objc_allocWithZone(MEMORY[0x277CCACA8]);

      v199 = sub_23AA0D104();

      v200 = [v198 initWithString_];

      v201 = v210;
      swift_beginAccess();
      v202 = *(v167 + v201);
      v203 = swift_isUniquelyReferenced_nonNull_native();
      v215 = *(v167 + v201);
      *(v167 + v201) = 0x8000000000000000;
      sub_23A9DB06C(v200, 0x7245656E696C6E4FLL, 0xEF65707954726F72, v203);
      *(v167 + v201) = v215;
      swift_endAccess();
      v204 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      swift_beginAccess();
      v205 = *(v167 + v201);
      v206 = swift_isUniquelyReferenced_nonNull_native();
      v215 = *(v167 + v201);
      *(v167 + v201) = 0x8000000000000000;
      sub_23A9DB06C(v204, 0xD000000000000011, 0x800000023AA20540, v206);
      *(v167 + v201) = v215;
      swift_endAccess();
    }

    v164 = *(v161 + 8 * v173);
    ++v166;
    if (v164)
    {
      v166 = v173;
      goto LABEL_110;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}