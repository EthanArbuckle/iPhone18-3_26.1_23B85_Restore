uint64_t sub_19A62AB48(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_19A62AD3C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (fabs(*v6) <= fabs(*v4))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (fabs(v20) <= fabs(*v17))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_19A62AF40(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_19A69B4E0(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_19A62B054(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v47 << 9) | (8 * v18)));
        v19 = sub_19A7AC174();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v49 = v45;
    v50 = v47;
    v51 = v11;
    v48[0] = v46;
    v48[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, (v6 + 56), v14);
      v40 = sub_19A62B4B0(v39, v4, v6, v5, v48);

      MEMORY[0x19A907A30](v39, -1, -1);
      v45 = v49;
      v47 = v50;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v4;
    v43 = &v41;
    MEMORY[0x1EEE9AC00](v22);
    v5 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v14);
    v24 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v47 << 9) | (8 * v29)));
      v30 = sub_19A7AC174();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_19A62B66C(v5, v42, v44, v6);
LABEL_43:
    sub_19A62B858();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}

uint64_t sub_19A62B4B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = sub_19A7AC174();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_19A62B66C(v8, a2, v10, a3);
}

uint64_t sub_19A62B66C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC898);
  result = sub_19A7ABC94();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_19A7AC174();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_19A62B8F4(void *a1, void *a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_numberOfItems;
  *&v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_numberOfItems] = 0;
  v11 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v5[v11] = v12;
  v13 = &v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_cachedAttributes;
  *&v5[v14] = sub_19A69C9E8(MEMORY[0x1E69E7CC0]);
  *&v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___alignmentEdges] = 0;
  *&v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___isolationEdges] = 0;
  *&v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_sectionIndex] = a1;
  v15 = &v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
  *v15 = a3;
  v15[1] = a4;
  *&v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_dataSource] = a2;
  v16 = a2;
  v17 = sub_19A653658(a1);
  *&v5[v10] = v17;
  v18 = sub_19A658EB4(a1);
  *&v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_glyphType] = v18;
  v19 = *&v16[OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig];
  if (v19)
  {
    v20 = *&v16[OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig];
  }

  else
  {
    v20 = *&v16[OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig];
  }

  v21 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  swift_beginAccess();
  if (v20[v21] == 1)
  {
    sub_19A794FA8(v18, v20, v32);
  }

  else
  {
    sub_19A795104(v18, v20, v32);
  }

  v40 = v32[6];
  v41 = v32[7];
  v42 = v33;
  v36 = v32[2];
  v37 = v32[3];
  v38 = v32[4];
  v39 = v32[5];
  v34 = v32[0];
  v35 = v32[1];
  v22 = v19;

  v23 = &v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration];
  v24 = v41;
  *(v23 + 6) = v40;
  *(v23 + 7) = v24;
  *(v23 + 64) = v42;
  v25 = v37;
  *(v23 + 2) = v36;
  *(v23 + 3) = v25;
  v26 = v39;
  *(v23 + 4) = v38;
  *(v23 + 5) = v26;
  v27 = v35;
  *v23 = v34;
  *(v23 + 1) = v27;
  v28 = objc_allocWithZone(type metadata accessor for ImageGlyphSectionSolver());
  sub_19A62C0A0(v32, &v31);
  *&v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver] = sub_19A711BC4(a1, v17, &v34);
  v30.receiver = v5;
  v30.super_class = type metadata accessor for ImageGlyphLayoutSection();
  return objc_msgSendSuper2(&v30, sel_init);
}

uint64_t sub_19A62BB78(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration);
  v10 = sub_19A711DD0();
  if (v9 == 1)
  {
    if (a2 - a4 > v11 + v11)
    {
      if (*(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize + 8) + a4 - a2 <= v11 + v11)
      {
        v12 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
        v13 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
        v31.size.width = sub_19A711D4C();
        v31.size.height = v14;
        v31.origin.x = v12;
        v31.origin.y = v13;
        CGRectGetMaxY(v31);
        return 0;
      }

      return 0;
    }

    v19 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
    v20 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
    v32.size.width = sub_19A711D4C();
    v32.size.height = v21;
    v32.origin.x = v19;
    v32.origin.y = v20;
    CGRectGetMinY(v32);
    return 0;
  }

  else
  {
    v16 = v10 + v10;
    if (a1 - a3 <= v16)
    {
      v22 = floor(v16 - (a1 - a3));
      v23 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
      v24 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
      v33.size.width = sub_19A711D4C();
      v33.size.height = v25;
      v33.origin.x = v23;
      v33.origin.y = v24;
      MinX = CGRectGetMinX(v33);
      if (MinX <= a3 - v22)
      {
        MinX = a3 - v22;
      }
    }

    else
    {
      v17 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize;
      v18 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize) + a3 - a1;
      if (v18 > v16)
      {
        return 0;
      }

      v27 = ceil(v16 - v18);
      v28 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
      v29 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
      v34.size.width = sub_19A711D4C();
      v34.size.height = v30;
      v34.origin.x = v28;
      v34.origin.y = v29;
      MinX = CGRectGetMaxX(v34) - *(v4 + v17);
      if (v27 + a3 < MinX)
      {
        MinX = v27 + a3;
      }
    }

    return *&MinX;
  }
}

uint64_t sub_19A62BD88(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration);
  if (((*(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 16) ^ v5) & 1) == 0)
  {
    return 0;
  }

  v6 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver);
  v8 = *(v7 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfItems);
  v9 = *(*(v7 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 120) + 16);
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_27;
  }

  v12 = *(v7 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_maxItemCount);
  if (__OFSUB__(v12, v11))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = a1;
  if (v12 == v11)
  {
    v14 = v6;
    v15 = sub_19A711DD0();
    v17 = (v14 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize);
    if (v5)
    {
      v18 = v16;
      v19 = v17[1] + a2;
      v4 = *(v14 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
      v20 = *(v14 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
      v37.size.width = sub_19A711D4C();
      v37.size.height = v21;
      v37.origin.x = v4;
      v37.origin.y = v20;
      MinY = CGRectGetMinY(v37);
      v23 = a2;
    }

    else
    {
      v4 = v15;
      v19 = *v17 + v3;
      v25 = *(v14 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
      v26 = *(v14 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
      v38.size.width = sub_19A711D4C();
      v38.size.height = v27;
      v38.origin.x = v25;
      v38.origin.y = v26;
      MinY = CGRectGetMinX(v38);
      v18 = v4;
      v23 = v3;
    }

    if (v23 <= v19)
    {
      if (MinY < v19 && v23 <= MinY)
      {
        return *&v3;
      }

      v4 = -v18;
      if (!v5)
      {
        if (qword_1EAFCAAF8 != -1)
        {
          swift_once();
        }

        v33 = sub_19A7A9384();
        __swift_project_value_buffer(v33, qword_1EAFCAB00);
        v34 = sub_19A7A9364();
        v35 = sub_19A7AB574();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          *(v36 + 4) = v4;
          _os_log_impl(&dword_19A5EE000, v34, v35, "adjusting X by %f", v36, 0xCu);
          MEMORY[0x19A907A30](v36, -1, -1);
        }

        v3 = v3 - v18;
        return *&v3;
      }

      if (qword_1EAFCAAF8 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
LABEL_17:
    v29 = sub_19A7A9384();
    __swift_project_value_buffer(v29, qword_1EAFCAB00);
    v30 = sub_19A7A9364();
    v31 = sub_19A7AB574();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v4;
      _os_log_impl(&dword_19A5EE000, v30, v31, "adjusting Y by %f", v32, 0xCu);
      MEMORY[0x19A907A30](v32, -1, -1);
    }
  }

  return *&v3;
}

void sub_19A62C11C(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  v7 = *&v4[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
  v8 = *&v4[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8];
  v34.size.width = sub_19A711D4C();
  v34.size.height = v9;
  v35.size.width = *&v4[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize];
  v35.size.height = *&v4[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize + 8];
  v34.origin.x = v7;
  v34.origin.y = v8;
  v35.origin.x = a3;
  v35.origin.y = a4;
  v10 = CGRectIntersectsRect(v34, v35);
  v11 = 0uLL;
  v12 = 0.0;
  if (v10)
  {
    sub_19A628584(a1, v31, a3, a4);
    v13 = v32;
    if (v32 == 3)
    {
      *&v14 = COERCE_DOUBLE(sub_19A627B84(a4));
      if (v15)
      {
        v16 = 0;
        v13 = 3;
        v11 = 0uLL;
      }

      else
      {
        v17 = *&v14;
        if (qword_1EAFCAAF8 != -1)
        {
          swift_once();
        }

        v12 = v17 + a4;
        v18 = sub_19A7A9384();
        __swift_project_value_buffer(v18, qword_1EAFCAB00);
        v19 = v4;
        v20 = sub_19A7A9364();
        v21 = sub_19A7AB574();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v30 = v23;
          *v22 = 134218498;
          *(v22 + 4) = a4;
          *(v22 + 12) = 2048;
          *(v22 + 14) = v12;
          *(v22 + 22) = 2080;
          sub_19A627384();
          v24 = MEMORY[0x19A9056A0]();
          v26 = v25;

          v27 = sub_19A62540C(v24, v26, &v30);

          *(v22 + 24) = v27;
          _os_log_impl(&dword_19A5EE000, v20, v21, "Proposed: %f FINAL: %f for %s", v22, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v23);
          MEMORY[0x19A907A30](v23, -1, -1);
          MEMORY[0x19A907A30](v22, -1, -1);
        }

        v16 = 0;
        *&v11 = a3;
        *(&v11 + 1) = a4;
        v13 = 2;
      }
    }

    else
    {
      v11 = v33;
      v12 = *&v31[1];
      v16 = v31[0];
    }
  }

  else
  {
    v16 = 0;
    v13 = 3;
  }

  *a2 = v16;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v11;
}

void sub_19A62C3A8(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  v7 = *&v4[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
  v8 = *&v4[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8];
  v36.size.width = sub_19A711D4C();
  v36.size.height = v9;
  v10 = &v4[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize];
  v37.size.width = *&v4[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize];
  v37.size.height = *&v4[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize + 8];
  v36.origin.x = v7;
  v36.origin.y = v8;
  v37.origin.y = a4;
  v37.origin.x = a3;
  v11 = CGRectIntersectsRect(v36, v37);
  v12 = 0uLL;
  v13 = 0.0;
  if (v11)
  {
    sub_19A62829C(a1, v33, a3, a4);
    v14 = v34;
    if (v34 == 3)
    {
      v15 = a3;
      if (v4[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 16] == 1)
      {
        v15 = *v10 + a3;
      }

      *&v16 = COERCE_DOUBLE(sub_19A627B84(v15));
      if (v17)
      {
        v18 = 0;
        v14 = 3;
        v12 = 0uLL;
      }

      else
      {
        v19 = *&v16;
        if (qword_1EAFCAAF8 != -1)
        {
          swift_once();
        }

        v13 = v19 + a3;
        v20 = sub_19A7A9384();
        __swift_project_value_buffer(v20, qword_1EAFCAB00);
        v21 = v4;
        v22 = sub_19A7A9364();
        v23 = sub_19A7AB574();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v32 = v25;
          *v24 = 134218498;
          *(v24 + 4) = a3;
          *(v24 + 12) = 2048;
          *(v24 + 14) = v13;
          *(v24 + 22) = 2080;
          sub_19A627384();
          v26 = MEMORY[0x19A9056A0]();
          v28 = v27;

          v29 = sub_19A62540C(v26, v28, &v32);

          *(v24 + 24) = v29;
          _os_log_impl(&dword_19A5EE000, v22, v23, "Proposed: %f FINAL: %f for %s", v24, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x19A907A30](v25, -1, -1);
          MEMORY[0x19A907A30](v24, -1, -1);
        }

        v18 = 0;
        *&v12 = a3;
        *(&v12 + 1) = a4;
        v14 = 2;
      }
    }

    else
    {
      v12 = v35;
      v18 = v33[1];
      v13 = *v33;
    }
  }

  else
  {
    v18 = 0;
    v14 = 3;
  }

  *a2 = v13;
  *(a2 + 8) = v18;
  *(a2 + 16) = v14;
  *(a2 + 24) = v12;
}

uint64_t sub_19A62C66C()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1ED8B2228);
  __swift_project_value_buffer(v0, qword_1ED8B2228);
  return sub_19A7A9374();
}

uint64_t sub_19A62C6EC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    sub_19A7A8B84();
    swift_allocObject();
    v1 = sub_19A7A8B74();
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_19A62C760()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    sub_19A7A8B54();
    swift_allocObject();
    v1 = sub_19A7A8B44();
    *(v2 + 32) = v1;
  }

  return v1;
}

void sub_19A62C7D4(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_1ED8B2220 != -1)
  {
    swift_once();
  }

  v6 = sub_19A7A9384();
  __swift_project_value_buffer(v6, qword_1ED8B2228);

  v7 = sub_19A7A9364();
  v8 = sub_19A7AB574();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 134218242;
    *(v9 + 4) = a1;
    *(v9 + 12) = 2080;
    type metadata accessor for UIKeyboardEmojiCategoryType(0);
    type metadata accessor for EmojiKeyboardWaypoint();
    sub_19A62DBE4(&qword_1EAFCC8D0, type metadata accessor for UIKeyboardEmojiCategoryType);
    v11 = sub_19A7AAF54();
    v13 = sub_19A62540C(v11, v12, &v28);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_19A5EE000, v7, v8, "Will save categoryType %ld and waypoints %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x19A907A30](v10, -1, -1);
    MEMORY[0x19A907A30](v9, -1, -1);
  }

  v14 = *(v3 + 16);
  v15 = sub_19A7AAFE4();
  [v14 setInteger:a1 forKey:v15];

  v16 = a2[2];
  if (v16)
  {
    v17 = sub_19A73DD2C(v16, 0);
    v18 = *(type metadata accessor for EmojiKeyboardWaypoint() - 8);
    v19 = sub_19A62D920(&v28, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v16, a2);

    sub_19A62B858();
    if (v19 != v16)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_19A62C6EC();
  v28 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8A8);
  sub_19A62DB48(&qword_1EAFCC8C0, &qword_1EAFCC8C8);
  v20 = sub_19A7A8B64();
  v22 = v21;

  v23 = sub_19A7A8E14();
  v24 = sub_19A7AAFE4();
  [v14 setObject:v23 forKey:v24];

  v25 = sub_19A7A9364();
  v26 = sub_19A7AB564();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_19A5EE000, v25, v26, "Did save waypoints", v27, 2u);
    MEMORY[0x19A907A30](v27, -1, -1);
  }

  sub_19A612F14(v20, v22);
}

uint64_t sub_19A62CD24()
{
  v1 = type metadata accessor for EmojiKeyboardWaypoint();
  v67 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v58 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  v10 = *(v0 + 16);
  v11 = sub_19A7AAFE4();
  v12 = [v10 dataForKey_];

  if (v12)
  {
    v13 = sub_19A7A8E34();
    v15 = v14;

    v63 = v15;
    v64 = v13;
    v16 = sub_19A62D34C();
    if (qword_1ED8B2220 != -1)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v17 = sub_19A7A9384();
      __swift_project_value_buffer(v17, qword_1ED8B2228);

      v18 = sub_19A7A9364();
      v19 = sub_19A7AB574();

      v20 = os_log_type_enabled(v18, v19);
      v66 = v16;
      if (v20)
      {
        v62 = v3;
        v21 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v69 = v61;
        *v21 = 136315138;
        v22 = *(v16 + 16);
        v23 = MEMORY[0x1E69E7CC0];
        if (v22)
        {
          v58 = v21;
          v59 = v19;
          v60 = v18;
          v68 = MEMORY[0x1E69E7CC0];
          sub_19A5F6074(0, v22, 0);
          v23 = v68;
          v24 = v16 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
          v65 = *(v67 + 72);
          do
          {
            sub_19A62D798(v24, v9);
            v25 = sub_19A712D80();
            v27 = v26;
            sub_19A62D860(v9);
            v68 = v23;
            v29 = *(v23 + 16);
            v28 = *(v23 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_19A5F6074((v28 > 1), v29 + 1, 1);
              v23 = v68;
            }

            *(v23 + 16) = v29 + 1;
            v30 = v23 + 16 * v29;
            *(v30 + 32) = v25;
            *(v30 + 40) = v27;
            v24 += v65;
            --v22;
          }

          while (v22);
          v16 = v66;
          v18 = v60;
          LOBYTE(v19) = v59;
          v21 = v58;
        }

        v68 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
        sub_19A6179D4();
        v52 = sub_19A7AAF94();
        v54 = v53;

        v55 = sub_19A62540C(v52, v54, &v69);

        *(v21 + 4) = v55;
        _os_log_impl(&dword_19A5EE000, v18, v19, "Decoded waypoints %s", v21, 0xCu);
        v56 = v61;
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x19A907A30](v56, -1, -1);
        MEMORY[0x19A907A30](v21, -1, -1);

        v3 = v62;
        v36 = *(v16 + 16);
        if (!v36)
        {
LABEL_31:
          v35 = MEMORY[0x1E69E7CC8];
LABEL_32:
          sub_19A612F14(v64, v63);

          return v35;
        }
      }

      else
      {

        v36 = *(v16 + 16);
        if (!v36)
        {
          goto LABEL_31;
        }
      }

      v9 = 0;
      v37 = v16 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v35 = MEMORY[0x1E69E7CC8];
      while (v9 < *(v16 + 16))
      {
        v38 = *(v67 + 72);
        sub_19A62D798(v37 + v38 * v9, v6);
        v39 = *v6;
        v16 = v3;
        sub_19A62D798(v6, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v35;
        v41 = sub_19A695774(v39);
        v43 = v35[2];
        v44 = (v42 & 1) == 0;
        v45 = __OFADD__(v43, v44);
        v46 = v43 + v44;
        if (v45)
        {
          goto LABEL_35;
        }

        v47 = v42;
        if (v35[3] < v46)
        {
          sub_19A696F94(v46, isUniquelyReferenced_nonNull_native);
          v41 = sub_19A695774(v39);
          if ((v47 & 1) != (v48 & 1))
          {
            type metadata accessor for UIKeyboardEmojiCategoryType(0);
            result = sub_19A7AC0C4();
            __break(1u);
            return result;
          }

LABEL_25:
          v35 = v69;
          if (v47)
          {
            goto LABEL_17;
          }

          goto LABEL_26;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_25;
        }

        v51 = v41;
        sub_19A6996AC();
        v41 = v51;
        v35 = v69;
        if (v47)
        {
LABEL_17:
          v3 = v16;
          sub_19A62D8BC(v16, v35[7] + v41 * v38);
          sub_19A62D860(v6);
          goto LABEL_18;
        }

LABEL_26:
        v35[(v41 >> 6) + 8] |= 1 << v41;
        *(v35[6] + 8 * v41) = v39;
        v3 = v16;
        sub_19A62D7FC(v16, v35[7] + v41 * v38);
        sub_19A62D860(v6);
        v49 = v35[2];
        v45 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v45)
        {
          goto LABEL_36;
        }

        v35[2] = v50;
LABEL_18:
        ++v9;
        v16 = v66;
        if (v36 == v9)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
    }
  }

  if (qword_1ED8B2220 != -1)
  {
    swift_once();
  }

  v31 = sub_19A7A9384();
  __swift_project_value_buffer(v31, qword_1ED8B2228);
  v32 = sub_19A7A9364();
  v33 = sub_19A7AB5A4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_19A5EE000, v32, v33, "No waypoints to fetch", v34, 2u);
    MEMORY[0x19A907A30](v34, -1, -1);
  }

  return 0;
}

uint64_t sub_19A62D34C()
{
  v0 = sub_19A7AB054();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7AB044();
  sub_19A7AB034();
  if (v4 && (sub_19A7AB044(), v5 = sub_19A7AB024(), v7 = v6, , (*(v1 + 8))(v3, v0), v7 >> 60 != 15))
  {
    sub_19A62C760();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8A8);
    sub_19A62DB48(&qword_1EAFCC8B0, &qword_1EAFCC8B8);
    sub_19A7A8B34();
    sub_19A612F00(v5, v7);

    return v13[5];
  }

  else
  {
    if (qword_1ED8B2220 != -1)
    {
      swift_once();
    }

    v8 = sub_19A7A9384();
    __swift_project_value_buffer(v8, qword_1ED8B2228);
    v9 = sub_19A7A9364();
    v10 = sub_19A7AB584();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_19A5EE000, v9, v10, "Could not underestand waypoints data", v11, 2u);
      MEMORY[0x19A907A30](v11, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_19A62D72C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A62D798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiKeyboardWaypoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A62D7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiKeyboardWaypoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A62D860(uint64_t a1)
{
  v2 = type metadata accessor for EmojiKeyboardWaypoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A62D8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiKeyboardWaypoint();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A62D920(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for EmojiKeyboardWaypoint();
  v32 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_19A62D798(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_19A62D7FC(v11, v14);
      sub_19A62D7FC(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_19A62DB48(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8A8);
    sub_19A62DBE4(a2, type metadata accessor for EmojiKeyboardWaypoint);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A62DBE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A62DC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A7A9D54();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_19A7A9D64();
}

uint64_t sub_19A62DD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19A7A9D54();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_19A7A9D64();
}

id sub_19A62DE1C()
{
  v0 = objc_opt_self();

  return [v0 setAnimationsEnabled_];
}

uint64_t sub_19A62DE58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC900);
  sub_19A7AA554();
  return v1;
}

uint64_t sub_19A62DEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = *(a1 + 16);
  v30 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v28 - v8;
  v10 = *(v7 + 24);
  v36 = MEMORY[0x1E6981840];
  v37 = v3;
  v38 = MEMORY[0x1E6981838];
  v39 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v29 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = sub_19A7A9D74();
  v31 = *(v17 - 8);
  v32 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - v19;
  if (*v2)
  {
    v36 = 0;
    LOBYTE(v37) = 1;
    sub_19A62DE58();
    v21 = MEMORY[0x1E6981840];
    sub_19A7AA144();

    v36 = v21;
    v37 = v3;
    v38 = MEMORY[0x1E6981838];
    v39 = v10;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_19A754E70(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v23 = *(v29 + 8);
    v23(v14, OpaqueTypeMetadata2);
    sub_19A754E70(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    sub_19A62DC2C(v14, OpaqueTypeMetadata2);
    v23(v14, OpaqueTypeMetadata2);
    v23(v16, OpaqueTypeMetadata2);
  }

  else
  {
    (*(v2 + 32))(v18);
    sub_19A754E70(v6, v3, v10);
    v24 = *(v30 + 8);
    v24(v6, v3);
    sub_19A754E70(v9, v3, v10);
    v36 = MEMORY[0x1E6981840];
    v37 = v3;
    v38 = MEMORY[0x1E6981838];
    v39 = v10;
    swift_getOpaqueTypeConformance2();
    sub_19A62DD24(v6, OpaqueTypeMetadata2, v3);
    v24(v6, v3);
    v24(v9, v3);
  }

  v36 = MEMORY[0x1E6981840];
  v37 = v3;
  v38 = MEMORY[0x1E6981838];
  v39 = v10;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v10;
  v25 = v32;
  WitnessTable = swift_getWitnessTable();
  sub_19A754E70(v20, v25, WitnessTable);
  return (*(v31 + 8))(v20, v25);
}

uint64_t sub_19A62E3A8()
{
  result = sub_19A7AAFE4();
  qword_1EAFDD570 = result;
  return result;
}

uint64_t sub_19A62E3E0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC900);
  MEMORY[0x19A904960](&v5, v3);
  return v5;
}

void sub_19A62E494()
{
  v1 = sub_19A7A9D84();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7A9D94();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9E04();
  sub_19A7A98A4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  sub_19A7A9DF4();
  sub_19A7A98A4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v2 + 8))(v4, v1);
  if (!*(v0 + 64))
  {
    v10 = v18;
    v12 = v20;
    v14 = v22;
    v16 = v24;
  }

  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  MidY = CGRectGetMidY(v29);
  CGPointMake(MidX, MidY);
}

uint64_t sub_19A62E6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v72 = a2;
  v2 = a1 - 8;
  v70 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = v3;
  v74 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A7AB804();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8E0);
  v73 = *(v2 + 24);
  swift_getTupleTypeMetadata2();
  sub_19A7AA724();
  swift_getWitnessTable();
  sub_19A7AA514();
  sub_19A7A9994();
  sub_19A7A9994();
  swift_getTupleTypeMetadata2();
  sub_19A7AA724();
  swift_getWitnessTable();
  sub_19A7AA514();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC588);
  sub_19A7A9994();
  v5 = sub_19A7A9994();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_19A623714(&qword_1EAFCC8E8, &qword_1EAFCC588);
  v95 = WitnessTable;
  v96 = v7;
  v93 = swift_getWitnessTable();
  v94 = MEMORY[0x1E6980318];
  v8 = swift_getWitnessTable();
  *&v83 = v5;
  *(&v83 + 1) = v8;
  swift_getOpaqueTypeMetadata2();
  *&v83 = v5;
  *(&v83 + 1) = v8;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for FullScreenView();
  v9 = sub_19A7A9994();
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x1E69805D0];
  v10 = swift_getWitnessTable();
  v11 = MEMORY[0x1E69E6370];
  *&v83 = v9;
  *(&v83 + 1) = MEMORY[0x1E69E6370];
  v12 = MEMORY[0x1E69E6388];
  *&v84 = v10;
  *(&v84 + 1) = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v83 = v9;
  *(&v83 + 1) = v11;
  *&v84 = v10;
  *(&v84 + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v83 = OpaqueTypeMetadata2;
  *(&v83 + 1) = v11;
  *&v84 = OpaqueTypeConformance2;
  *(&v84 + 1) = v12;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_19A7A9994();
  *&v83 = OpaqueTypeMetadata2;
  *(&v83 + 1) = v11;
  *&v84 = OpaqueTypeConformance2;
  *(&v84 + 1) = v12;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = MEMORY[0x1E697E040];
  v89 = v16;
  v90 = MEMORY[0x1E697E040];
  v18 = swift_getWitnessTable();
  v56 = v15;
  v58 = v18;
  v19 = sub_19A7A98F4();
  v20 = sub_19A7A9994();
  v21 = sub_19A631F48(&qword_1EAFCC8F0, MEMORY[0x1E6969F20]);
  v59 = v19;
  v57 = swift_getWitnessTable();
  v87 = v57;
  v88 = v17;
  v22 = swift_getWitnessTable();
  v69 = v4;
  *&v83 = v4;
  *(&v83 + 1) = v20;
  v66 = v20;
  v63 = v21;
  *&v84 = v21;
  *(&v84 + 1) = v22;
  v60 = v22;
  v23 = sub_19A7A9A34();
  v64 = *(v23 - 8);
  v65 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v61 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v62 = &v50 - v26;
  v27 = v67;
  if (*(v67 + 80) == 1)
  {
    v51 = sub_19A7AA624() ^ 1;
  }

  else
  {
    v51 = 0;
  }

  v50 = sub_19A7AA624();
  v29 = v70;
  v28 = v71;
  v30 = *(v70 + 16);
  v54 = v70 + 16;
  v55 = v30;
  v31 = v74;
  v30(v74, v27, v71);
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = v32 + v68;
  v52 = v32 + v68;
  v53 = v32;
  v34 = swift_allocObject();
  v68 = *(v28 + 24);
  v35 = v68;
  *(v34 + 16) = v73;
  *(v34 + 24) = v35;
  v36 = *(v29 + 32);
  v36(v34 + v32, v31, v28);
  v37 = (v34 + v33);
  v38 = v50;
  *v37 = v51 & 1;
  v37[1] = (v38 & 1) == 0;
  *&v83 = sub_19A7A98E4();
  *(&v83 + 1) = v39;
  sub_19A7AA654();
  sub_19A7AA1C4();

  v83 = v79;
  v84 = v80;
  v85 = v81;
  v86 = v82;
  v75 = v79;
  v76 = v80;
  v77 = v81;
  v78 = v82;
  v40 = v74;
  v55(v74, v27, v28);
  v41 = swift_allocObject();
  v42 = v68;
  *(v41 + 16) = v73;
  *(v41 + 24) = v42;
  v36(v41 + v53, v40, v28);
  v43 = v61;
  v44 = v66;
  sub_19A7AA264();

  (*(*(v44 - 8) + 8))(&v83, v44);
  v45 = v65;
  v46 = swift_getWitnessTable();
  v47 = v62;
  sub_19A754E70(v43, v45, v46);
  v48 = *(v64 + 8);
  v48(v43, v45);
  sub_19A754E70(v47, v45, v46);
  return (v48)(v47, v45);
}

uint64_t sub_19A62EED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v117 = a4;
  LODWORD(v126) = a3;
  v129 = a1;
  v118 = a7;
  v10 = sub_19A7A98B4();
  v115 = *(v10 - 8);
  v116 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v123 = v11;
  v124 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a6;
  v125 = type metadata accessor for PopupView();
  v12 = *(v125 - 8);
  v128 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v130 = &v93 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8E0);
  v131 = a5;
  swift_getTupleTypeMetadata2();
  sub_19A7AA724();
  swift_getWitnessTable();
  sub_19A7AA514();
  sub_19A7A9994();
  sub_19A7A9994();
  swift_getTupleTypeMetadata2();
  sub_19A7AA724();
  swift_getWitnessTable();
  sub_19A7AA514();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC588);
  sub_19A7A9994();
  v14 = sub_19A7A9994();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_19A623714(&qword_1EAFCC8E8, &qword_1EAFCC588);
  v155 = WitnessTable;
  v156 = v16;
  v153 = swift_getWitnessTable();
  v154 = MEMORY[0x1E6980318];
  v17 = swift_getWitnessTable();
  *&v146 = v14;
  *(&v146 + 1) = v17;
  swift_getOpaqueTypeMetadata2();
  *&v146 = v14;
  *(&v146 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  v18 = type metadata accessor for FullScreenView();
  v19 = sub_19A7A9994();
  v100 = v18;
  v101 = swift_getWitnessTable();
  v151 = v101;
  v152 = MEMORY[0x1E69805D0];
  v20 = swift_getWitnessTable();
  v21 = MEMORY[0x1E69E6370];
  *&v146 = v19;
  *(&v146 + 1) = MEMORY[0x1E69E6370];
  v22 = MEMORY[0x1E69E6388];
  *&v147 = v20;
  *(&v147 + 1) = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v109 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v102 = v19;
  v103 = &v93 - v24;
  *&v146 = v19;
  *(&v146 + 1) = v21;
  v104 = v20;
  *&v147 = v20;
  *(&v147 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v112 = OpaqueTypeMetadata2;
  *&v146 = OpaqueTypeMetadata2;
  *(&v146 + 1) = v21;
  v105 = OpaqueTypeConformance2;
  *&v147 = OpaqueTypeConformance2;
  *(&v147 + 1) = v22;
  v26 = swift_getOpaqueTypeMetadata2();
  v110 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v106 = &v93 - v27;
  v111 = v28;
  v29 = sub_19A7A9994();
  v113 = *(v29 - 8);
  v114 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v107 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v93 - v32;
  v33 = *(a2 + 40) + *(a2 + 40);
  v34 = *(a2 + 8);
  v35 = v33 + v34 + *(a2 + 32);
  v36 = *(a2 + 56);
  v37 = *(a2 + 48) + *(a2 + 48);
  v38 = *(a2 + 16) + v37;
  v39 = *(a2 + 24) + v37;
  v40 = *(a2 + 72);
  if (LOBYTE(v126))
  {
    v41 = (*a2 + v33) * 0.5;
    v126 = *a2;
    v42 = v35 * 0.5;
    v43 = -(v35 * 0.5);
    v122 = v34;
    v44 = v38 * 0.5 + v40;
    v119 = v43 - v39;
    v120 = v40 - v38 * 0.5;
    v45 = (-v41 - v120) * 0.5;
    if (v45 >= v36)
    {
      v45 = v36;
    }

    v121 = v45;
    if ((v44 - v41) * 0.5 >= v36)
    {
      v46 = v36;
    }

    else
    {
      v46 = (v44 - v41) * 0.5;
    }

    v47 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
    [v47 moveToPoint_];
    [v47 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
    [v47 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
    [v47 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
    [v47 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
    v48 = v119;
    [v47 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
    v49 = v120;
    [v47 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
    v50 = v49;
    v51 = v121;
    [v47 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
    [v47 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
    [v47 closePath];
  }

  else
  {
    v47 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:v40 + v38 * -0.5 cornerRadii:{v35 * -0.5 - v39, v38, v39, v36, v36}];
  }

  v96 = [v47 CGPath];

  v95 = *(a2 + 64);
  v99 = *(a2 + 112);
  v98 = *(a2 + 120);
  LOBYTE(v141) = v99;
  *(&v141 + 1) = v98;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
  sub_19A7AA484();
  v93 = v146;
  v94 = v147;
  v52 = v12;
  v53 = *(v12 + 16);
  *&v121 = v12 + 16;
  v122 = *(&v146 + 1);
  v126 = *&v53;
  v54 = v125;
  v53(v130, a2, v125);
  v56 = v115;
  v55 = v116;
  (*(v115 + 16))(v124, v129, v116);
  v57 = *(v52 + 80);
  v58 = (v57 + 32) & ~v57;
  *&v120 = v58 + v128;
  v128 = v57 | 7;
  v129 = v58;
  v59 = (*&v120 + *(v56 + 80)) & ~*(v56 + 80);
  v127 = a2;
  v60 = (v123 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v132;
  *(v61 + 16) = v131;
  *(v61 + 24) = v62;
  v63 = *(v52 + 32);
  *&v119 = v52 + 32;
  v64 = v61 + v58;
  v65 = v130;
  v63(v64, v130, v54);
  v123 = v63;
  (*(v56 + 32))(v61 + v59, v124, v55);
  v66 = v61 + v60;
  v67 = v96;
  *v66 = v96;
  *(v66 + 8) = v117 & 1;
  v159[0] = v93;
  LOBYTE(v146) = v95;
  *(&v146 + 1) = *v158;
  DWORD1(v146) = *&v158[3];
  *(&v146 + 1) = v93;
  *&v147 = v122;
  BYTE8(v147) = v94;
  *(&v147 + 9) = *v157;
  HIDWORD(v147) = *&v157[3];
  *&v148 = sub_19A6320E0;
  *(&v148 + 1) = v61;
  (*&v126)(v65, v127, v54);
  v68 = swift_allocObject();
  v69 = v132;
  *(v68 + 16) = v131;
  *(v68 + 24) = v69;
  v63(v68 + v129, v65, v54);
  v124 = v67;
  swift_checkMetadataState();
  sub_19A7AA214();

  sub_19A632208(v159);

  v138 = v143;
  v139 = v144;
  v140 = v145;
  v136 = v141;
  v137 = v142;
  v70 = v127;
  v135 = sub_19A62E3E0() & 1;
  v71 = v130;
  v72 = v70;
  v73 = v125;
  (*&v126)(v130, v72, v125);
  v74 = swift_allocObject();
  v75 = v132;
  *(v74 + 16) = v131;
  *(v74 + 24) = v75;
  v123(v74 + v129, v71, v73);
  v76 = swift_checkMetadataState();
  v77 = v103;
  v78 = MEMORY[0x1E69E6370];
  sub_19A7AA234();

  v148 = v138;
  v149 = v139;
  v150 = v140;
  v146 = v136;
  v147 = v137;
  (*(*(v76 - 8) + 8))(&v146, v76);
  LOBYTE(v141) = v99;
  *(&v141 + 1) = v98;
  sub_19A7AA464();
  LOBYTE(v141) = v136;
  (*&v126)(v71, v127, v73);
  v79 = swift_allocObject();
  v80 = v132;
  *(v79 + 16) = v131;
  *(v79 + 24) = v80;
  v123(v79 + v129, v71, v73);
  v81 = v106;
  v82 = v112;
  v83 = v78;
  v84 = v105;
  sub_19A7AA234();

  (*(v109 + 8))(v77, v82);
  sub_19A7AA654();
  *&v141 = v82;
  *(&v141 + 1) = v83;
  *&v142 = v84;
  *(&v142 + 1) = MEMORY[0x1E69E6388];
  v85 = swift_getOpaqueTypeConformance2();
  v86 = v107;
  v87 = v111;
  sub_19A7AA1C4();

  (*(v110 + 8))(v81, v87);
  v133 = v85;
  v134 = MEMORY[0x1E697E040];
  v88 = v114;
  v89 = swift_getWitnessTable();
  v90 = v108;
  sub_19A754E70(v86, v88, v89);
  v91 = *(v113 + 8);
  v91(v86, v88);
  sub_19A754E70(v90, v88, v89);
  return (v91)(v90, v88);
}

uint64_t sub_19A62FD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a6;
  v34 = a3;
  v35 = a4;
  v32 = a2;
  v30 = a1;
  v36 = a7;
  v31 = sub_19A7A9954();
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8E0);
  swift_getTupleTypeMetadata2();
  sub_19A7AA724();
  swift_getWitnessTable();
  sub_19A7AA514();
  sub_19A7A9994();
  sub_19A7A9994();
  swift_getTupleTypeMetadata2();
  sub_19A7AA724();
  swift_getWitnessTable();
  v11 = sub_19A7AA514();
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC588);
  v14 = sub_19A7A9994();
  v28 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v27 = sub_19A7A9994();
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v18 = &v25 - v17;
  v37 = a5;
  v38 = v33;
  v39 = v30;
  v40 = v32;
  v41 = v34;
  v42 = v35;
  sub_19A7AA654();
  sub_19A7AA504();
  swift_getKeyPath();
  v19 = v31;
  (*(v8 + 104))(v10, *MEMORY[0x1E697E7D0], v31);
  WitnessTable = swift_getWitnessTable();
  sub_19A7AA0E4();

  (*(v8 + 8))(v10, v19);
  (*(v26 + 8))(v13, v11);
  sub_19A7A9F04();
  v21 = sub_19A623714(&qword_1EAFCC8E8, &qword_1EAFCC588);
  v45 = WitnessTable;
  v46 = v21;
  v22 = swift_getWitnessTable();
  sub_19A7AA1A4();
  (*(v28 + 8))(v16, v14);
  v43 = v22;
  v44 = MEMORY[0x1E6980318];
  v23 = v27;
  swift_getWitnessTable();
  sub_19A7AA184();
  return (*(v29 + 8))(v18, v23);
}

uint64_t sub_19A630294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v76 = a6;
  v70 = a4;
  v59 = a3;
  v78 = a2;
  v79 = a1;
  v74 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8E0);
  v75 = a5;
  swift_getTupleTypeMetadata2();
  v66 = sub_19A7AA724();
  WitnessTable = swift_getWitnessTable();
  v63 = sub_19A7AA514();
  v69 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = v53 - v8;
  v67 = sub_19A7A9994();
  v72 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = v53 - v9;
  v71 = sub_19A7A9994();
  v73 = *(v71 - 8);
  v10 = MEMORY[0x1EEE9AC00](v71);
  v64 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = v53 - v12;
  v77 = sub_19A7A9D84();
  v56 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v54 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19A7A98B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = type metadata accessor for PopupView();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v53 - v20;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8D8);
  v58 = *(v60 - 8);
  v22 = MEMORY[0x1EEE9AC00](v60);
  v57 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v80 = v53 - v24;
  sub_19A7AA2B4();
  v25 = sub_19A7AA2F4();
  v53[1] = v25;

  v26 = sub_19A7A9F04();
  OpaqueTypeConformance2 = 0;
  LOWORD(v87) = 1;
  v88 = v25;
  LOBYTE(v89) = v26;
  v27 = *(v18 + 16);
  v53[2] = v17;
  v27(v21, v79, v17);
  (*(v15 + 16))(v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v78, v14);
  v28 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v29 = (v19 + *(v15 + 80) + v28) & ~*(v15 + 80);
  v30 = swift_allocObject();
  v31 = v76;
  *(v30 + 16) = v75;
  *(v30 + 24) = v31;
  (*(v18 + 32))(v30 + v28, v21, v17);
  (*(v15 + 32))(v30 + v29, v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v32 = v59;
  *(v30 + ((v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
  v33 = v32;
  v34 = v54;
  sub_19A7A9DF4();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC908);
  v55 = sub_19A632620();
  v35 = v77;
  sub_19A7AA0F4();

  (*(v56 + 8))(v34, v35);

  sub_19A7AA654();
  v81 = v75;
  v82 = v76;
  v83 = v33;
  v84 = v70;
  v85 = v79;
  v36 = v61;
  sub_19A7AA504();
  sub_19A7AA654();
  v37 = v63;
  v38 = swift_getWitnessTable();
  v39 = v62;
  sub_19A7AA1C4();
  (*(v69 + 8))(v36, v37);
  sub_19A62E494();
  v91[4] = v38;
  v91[5] = MEMORY[0x1E697E040];
  v40 = v67;
  v41 = swift_getWitnessTable();
  v42 = v64;
  sub_19A7AA244();
  (*(v72 + 8))(v39, v40);
  v91[2] = v41;
  v91[3] = MEMORY[0x1E697E8E8];
  v43 = v71;
  v44 = swift_getWitnessTable();
  v45 = v68;
  sub_19A754E70(v42, v43, v44);
  v46 = v73;
  v47 = *(v73 + 8);
  v47(v42, v43);
  v48 = v58;
  v49 = v57;
  v50 = v60;
  (*(v58 + 16))(v57, v80, v60);
  v91[0] = v49;
  (*(v46 + 16))(v42, v45, v43);
  v91[1] = v42;
  v90[0] = v50;
  v90[1] = v43;
  OpaqueTypeConformance2 = v59;
  v87 = v77;
  v88 = v55;
  v89 = MEMORY[0x1E697FA08];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = v44;
  sub_19A7475D8(v91, 2uLL, v90);
  v47(v45, v43);
  v51 = *(v48 + 8);
  v51(v80, v50);
  v47(v42, v43);
  return (v51)(v49, v50);
}

uint64_t sub_19A630CB8(uint64_t a1)
{
  v2 = sub_19A7A9144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PopupView();
  sub_19A62E494();
  (*(v3 + 104))(v5, *MEMORY[0x1E695EEB8], v2);
  v11 = 0x3FF0000000000000;
  v12 = 0;
  v13 = 0;
  v14 = 0x3FF0000000000000;
  v15 = 0;
  v16 = 0;
  v6 = sub_19A7ABA74();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    sub_19A631724();
    v8 = *(a1 + 120);
    v9[16] = *(a1 + 112);
    v10 = v8;
    v9[15] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
    return sub_19A7AA474();
  }

  return result;
}

uint64_t sub_19A630E64@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a5;
  v75 = a3;
  v71 = a2;
  v80 = a6;
  v81 = a4;
  v76 = *(a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v78 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v63 - v9;
  v10 = sub_19A7AA614();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC948);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v63 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC950);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v63 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC958);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v63 - v18;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8E0);
  v19 = MEMORY[0x1EEE9AC00](v72);
  v74 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v67 = &v63 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v63 - v23;
  v24 = a1;
  sub_19A7AA034();
  sub_19A7A9814();
  v26 = v87;
  v25 = v88;
  v28 = v89;
  v27 = v90;
  *&v86[7] = v92;
  *&v86[23] = v93;
  *&v86[39] = v94;
  v29 = v91;
  v65 = sub_19A7AA654();
  v64 = v30;
  sub_19A7AA604();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC960);
  (*(v11 + 16))(&v16[*(v31 + 52)], v13, v10);
  *v16 = v26;
  *(v16 + 1) = v25;
  *(v16 + 2) = v28;
  *(v16 + 3) = v27;
  v16[32] = v29;
  *&v16[*(v31 + 56)] = 256;
  sub_19A6327A4(v26, v25, v28, v27, v29);
  v32 = sub_19A7AA654();
  v63 = v33;
  (*(v11 + 8))(v13, v10);
  v34 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC968) + 36)];
  v35 = *&v86[16];
  *(v34 + 33) = *v86;
  *v34 = v26;
  *(v34 + 1) = v25;
  *(v34 + 2) = v28;
  *(v34 + 3) = v27;
  v34[32] = v29;
  *(v34 + 49) = v35;
  *(v34 + 4) = *&v86[31];
  *(v34 + 40) = 256;
  v36 = v64;
  *(v34 + 11) = v65;
  *(v34 + 12) = v36;
  v37 = v63;
  *(v34 + 13) = v32;
  *(v34 + 14) = v37;
  if (v71)
  {
    sub_19A7AA2C4();
    v38 = sub_19A7AA2F4();
  }

  else
  {
    v38 = sub_19A7AA2D4();
  }

  v39 = v75;
  v40 = *(v75 + 56);
  v41 = v69;
  sub_19A62376C(v16, v69, &qword_1EAFCC948);
  v42 = v41 + *(v66 + 36);
  *v42 = v38;
  *(v42 + 8) = v40;
  *(v42 + 16) = xmmword_19A7B7D10;
  v43 = *v39;
  v44 = v39[1];
  sub_19A7AA654();
  sub_19A7A9864();
  v45 = v70;
  sub_19A62376C(v41, v70, &qword_1EAFCC950);
  v46 = (v45 + *(v68 + 36));
  v47 = v96;
  *v46 = v95;
  v46[1] = v47;
  v46[2] = v97;
  v48 = v39[5] + v39[6] + (v44 - v39[4]) * 0.5;
  v49 = v45;
  v50 = v67;
  sub_19A62376C(v49, v67, &qword_1EAFCC958);
  v51 = v72;
  v52 = (v50 + *(v72 + 36));
  *v52 = v43 * 0.5;
  v52[1] = v48;
  v53 = v73;
  sub_19A62376C(v50, v73, &qword_1EAFCC8E0);
  v54 = v81;
  v55 = v79;
  v56 = *(v39 + *(type metadata accessor for PopupView() + 80));
  v57 = v78;
  v56();
  v58 = v77;
  sub_19A754E70(v57, v54, v55);
  v59 = v76;
  v60 = *(v76 + 8);
  v60(v57, v54);
  v61 = v74;
  sub_19A6327BC(v53, v74);
  v85[0] = v61;
  (*(v59 + 16))(v57, v58, v54);
  v85[1] = v57;
  v84[0] = v51;
  v84[1] = v54;
  v82 = sub_19A63282C();
  v83 = v55;
  sub_19A7475D8(v85, 2uLL, v84);
  v60(v58, v54);
  sub_19A6329FC(v53);
  v60(v57, v54);
  return sub_19A6329FC(v61);
}

uint64_t sub_19A6315EC()
{
  sub_19A631724();
  sub_19A62E3E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
  return sub_19A7AA474();
}

uint64_t sub_19A631658()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
  sub_19A7AA464();
  return sub_19A62E438();
}

uint64_t sub_19A6316BC()
{
  sub_19A631724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
  return sub_19A7AA474();
}

uint64_t sub_19A631724()
{
  v19 = sub_19A7AA764();
  v22 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v1 = &v16 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_19A7AA7B4();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7AA7D4();
  v18 = v5;
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  [objc_opt_self() setAnimationsEnabled_];
  sub_19A631AE0();
  v12 = sub_19A7AB794();
  sub_19A7AA7C4();
  sub_19A7AA814();
  v17 = *(v6 + 8);
  v17(v9, v5);
  aBlock[4] = sub_19A62DE1C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);
  sub_19A7AA784();
  v23 = MEMORY[0x1E69E7CC0];
  sub_19A631F48(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
  v14 = v19;
  sub_19A7ABB54();
  MEMORY[0x19A905B40](v11, v4, v1, v13);
  _Block_release(v13);

  (*(v22 + 8))(v1, v14);
  (*(v20 + 8))(v4, v21);
  return (v17)(v11, v18);
}

unint64_t sub_19A631AE0()
{
  result = qword_1ED8B2040;
  if (!qword_1ED8B2040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8B2040);
  }

  return result;
}

void sub_19A631B34(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [objc_opt_self() mainScreen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v19.origin.x = v11;
  v19.origin.y = v13;
  v19.size.width = v15;
  v19.size.height = v17;
  if (CGRectGetWidth(v19) != 0.0)
  {
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    if (CGRectGetMidX(v20) - a1 * 0.5 >= 0.0)
    {
      v21.origin.x = a2;
      v21.origin.y = a3;
      v21.size.width = a4;
      v21.size.height = a5;
      CGRectGetMidX(v21);
      v22.origin.x = v11;
      v22.origin.y = v13;
      v22.size.width = v15;
      v22.size.height = v17;
      CGRectGetWidth(v22);
    }
  }
}

void sub_19A631C6C()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_19A631DF0(319, &qword_1EAFCA638, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_19A631DF0(319, &qword_1EAFCA678, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_19A631E44();
        if (v3 <= 0x3F)
        {
          sub_19A631E9C();
          if (v4 <= 0x3F)
          {
            sub_19A7AB804();
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

void sub_19A631DF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19A631E44()
{
  if (!qword_1EAFCA820)
  {
    sub_19A7A9954();
    v0 = sub_19A7A97F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA820);
    }
  }
}

unint64_t sub_19A631E9C()
{
  result = qword_1EAFCA3D8;
  if (!qword_1EAFCA3D8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EAFCA3D8);
  }

  return result;
}

uint64_t sub_19A631F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A631F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PopupView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = (v8 + *(v7 + 64));
  v10 = *v9;
  v11 = v9[1];

  return sub_19A62EED4(a1, v8, v10, v11, v5, v6, a2);
}

uint64_t sub_19A632054()
{
  type metadata accessor for PopupView();

  return sub_19A6316BC();
}

uint64_t sub_19A6320E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for PopupView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_19A7A98B4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_19A62FD50(v1 + v6, v1 + v9, v11, v12, v3, v4, a1);
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for PopupView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_19A7A9954();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 84);
  v9 = sub_19A7AB804();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A63245C()
{
  type metadata accessor for PopupView();

  return sub_19A631658();
}

uint64_t sub_19A6324F4()
{
  v1 = *(type metadata accessor for PopupView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  sub_19A7A98B4();

  return sub_19A630CB8(v0 + v2);
}

unint64_t sub_19A632620()
{
  result = qword_1EAFCC910;
  if (!qword_1EAFCC910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC908);
    sub_19A6326D8();
    sub_19A623714(&qword_1EAFCC938, &qword_1EAFCC940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC910);
  }

  return result;
}

unint64_t sub_19A6326D8()
{
  result = qword_1EAFCC918;
  if (!qword_1EAFCC918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC920);
    sub_19A623714(&qword_1EAFCC928, &qword_1EAFCC930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC918);
  }

  return result;
}

uint64_t sub_19A6327A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_19A6327BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A63282C()
{
  result = qword_1EAFCC970;
  if (!qword_1EAFCC970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8E0);
    sub_19A6328B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC970);
  }

  return result;
}

unint64_t sub_19A6328B8()
{
  result = qword_1EAFCC978;
  if (!qword_1EAFCC978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC958);
    sub_19A632944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC978);
  }

  return result;
}

unint64_t sub_19A632944()
{
  result = qword_1EAFCC980;
  if (!qword_1EAFCC980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC950);
    sub_19A623714(qword_1EAFCC988, &qword_1EAFCC948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC980);
  }

  return result;
}

uint64_t sub_19A6329FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A632A94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19A632ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_19A632B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A632BD0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_19A7AC064();
  }
}

uint64_t sub_19A632C1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCB58);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v22 - v8;
  v10 = sub_19A7A9C14();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCB60);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  if (a2)
  {
    sub_19A7A9C04();
    v23 = a4;
    v24 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCB68);
    sub_19A623714(&qword_1EAFCCB78, &qword_1EAFCCB68);
    sub_19A7AA1B4();
    (*(v11 + 8))(v13, v10);
    v28 = v25;
    v29 = v23;
    sub_19A639920();
    sub_19A7A9964();
    sub_19A5F2B54(v17, &qword_1EAFCCB60);
    sub_19A60F0CC(v19, v9, &qword_1EAFCCB60);
    swift_storeEnumTagMultiPayload();
    sub_19A639838();
    sub_19A7A9D64();
    return sub_19A5F2B54(v19, &qword_1EAFCCB60);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCB68);
    (*(*(v21 - 8) + 16))(v9, v26, v21);
    swift_storeEnumTagMultiPayload();
    sub_19A639838();
    sub_19A623714(&qword_1EAFCCB78, &qword_1EAFCCB68);
    return sub_19A7A9D64();
  }
}

uint64_t sub_19A632FA4()
{
  swift_getKeyPath();
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_19A633054@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_19A633100(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_19A7AC064() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
    sub_19A7A90B4();
  }
}

uint64_t sub_19A633260()
{
  swift_getKeyPath();
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();
}

uint64_t sub_19A633304@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  *a2 = *(v3 + 48);
}

uint64_t sub_19A6333B0(uint64_t a1)
{
  if (sub_19A72AE70(*(v1 + 48), a1))
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
    sub_19A7A90B4();
  }
}

uint64_t sub_19A6334F4()
{
  swift_getKeyPath();
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  return *(v0 + 56);
}

uint64_t sub_19A633598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  v5 = *(v3 + 64);
  *a2 = *(v3 + 56);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_19A63367C(uint64_t result, char a2)
{
  if ((*(v2 + 64) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 56) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 56) = result;
    *(v2 + 64) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90B4();
}

uint64_t sub_19A6337B0()
{
  swift_getKeyPath();
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  return *(v0 + 65);
}

uint64_t sub_19A633850(uint64_t result)
{
  if (*(v1 + 65) == (result & 1))
  {
    *(v1 + 65) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
    sub_19A7A90B4();
  }

  return result;
}

uint64_t sub_19A633968()
{
  swift_getKeyPath();
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  return *(v0 + 72);
}

uint64_t sub_19A633A0C(uint64_t result, uint64_t a2, char a3)
{
  *(result + 72) = a2;
  *(result + 80) = a3;
  return result;
}

uint64_t sub_19A633A18()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    type metadata accessor for SelectionFeedbackGenerator();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v0 + 88) = v1;
  }

  return v1;
}

uint64_t sub_19A633A74(uint64_t a1, char a2, char a3)
{
  if ((*(v3 + 64) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v3 + 56) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v3 + 56) = a1;
    *(v3 + 64) = a2 & 1;
    goto LABEL_8;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *&v18 = v3;
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90B4();

LABEL_8:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    *&v18 = v7;
    sub_19A638300(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
    sub_19A7A90C4();

    v8 = *(v7 + 104);
    if (v8 <= 0xFD)
    {
      v9 = *(v7 + 88);
      v10 = *(v7 + 96);
      if ((v8 & 0x80) != 0)
      {
        sub_19A60EF28(*(v7 + 88), *(v7 + 96), *(v7 + 104));
        swift_unknownObjectRelease();
      }

      else
      {

        sub_19A63F9D4(v9, v10, v8 & 1, &v14);
        sub_19A60EF74(v9, v10, v8);
        v21 = v17;
        v19 = v15;
        v20 = v16;
        v18 = v14;
        sub_19A60F01C(&v18, v13);
        sub_19A63F030(&v14);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v7 + 24);
          ObjectType = swift_getObjectType();
          v14 = v18;
          v15 = v19;
          v16 = v20;
          v17 = v21;
          (*(v11 + 8))(v7, &v14, 1, a3 & 1, ObjectType, v11);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        return sub_19A60F078(&v18);
      }
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_19A633D78(unsigned __int16 a1)
{
  swift_getKeyPath();
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  if (*(v1 + 65) != 1)
  {
    return 0;
  }

  if (a1 >> 14 != 1)
  {
    if (a1 >> 14 || a1)
    {
      return 0;
    }

    swift_getKeyPath();
    sub_19A7A90C4();

    if (*(v1 + 64))
    {
      v4 = 0;
LABEL_23:
      sub_19A63367C(v4, 0);
      return 1;
    }

    v5 = *(v1 + 56);
    if ((a1 & 0x100) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    v7 = v5 + v6;
    if (__OFADD__(v5, v6))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      sub_19A7A90C4();

      v8 = *(*(v1 + 48) + 16);
      if (v8 - 1 >= (v7 & ~(v7 >> 63)))
      {
        v9 = v7 & ~(v7 >> 63);
      }

      else
      {
        v9 = v8 - 1;
      }

      swift_getKeyPath();
      sub_19A7A90C4();

      if (v8)
      {
        v10 = *(v1 + 48);
        if (v9 < *(v10 + 16))
        {
          if (!*(v10 + 16 * v9 + 40))
          {
            v11 = v9 + v6;
            swift_getKeyPath();
            sub_19A7A90C4();

            if (*(*(v1 + 48) + 16) - 1 >= (v11 & ~(v11 >> 63)))
            {
              v9 = v11 & ~(v11 >> 63);
            }

            else
            {
              v9 = *(*(v1 + 48) + 16) - 1;
            }
          }

          v4 = v9;
          goto LABEL_23;
        }

LABEL_28:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  swift_getKeyPath();
  sub_19A7A90C4();

  sub_19A633A74(*(v1 + 56), *(v1 + 64), a1 & 1);
  return 1;
}

uint64_t sub_19A634004()
{
  sub_19A601244(v0 + 16);

  v1 = OBJC_IVAR____TtC10StickerKit24VariantSelectorViewModel___observationRegistrar;
  v2 = sub_19A7A9104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_19A6340E8()
{
  result = sub_19A7A9104();
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

uint64_t sub_19A6341C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A634214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_19A634268(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_19A634280(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A6342B0()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  sub_19A7A90F4();
  return v0;
}

uint64_t sub_19A634310@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A7A9B34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VariantSelectorView(0);
  sub_19A60F0CC(v1 + *(v10 + 60), v9, &qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A9954();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_19A7AB594();
    v13 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

char *sub_19A634518()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA40);
  sub_19A7AA464();
  swift_getKeyPath();
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  v2 = *(v14 + 48);

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *v4;
      v4 += 2;
      v7 = v1[6];
      if (v6)
      {
        v8 = v1[4];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_19A76C19C(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          v5 = sub_19A76C19C((v9 > 1), v10 + 1, 1, v5);
        }
      }

      else
      {
        v8 = v1[7];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_19A76C19C(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v12 = *(v5 + 3);
        v11 = v10 + 1;
        if (v10 >= v12 >> 1)
        {
          v5 = sub_19A76C19C((v12 > 1), v10 + 1, 1, v5);
        }
      }

      *(v5 + 2) = v11;
      *&v5[8 * v10 + 32] = v8 + v7;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  return v5;
}

double sub_19A63472C()
{
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v0 = MEMORY[0x1E69DDCE0];
  v1 = qword_1ED8B2AA0;
  v2 = OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig;
  v3 = *(qword_1ED8B2AA0 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  if (v3)
  {
    v4 = *(qword_1ED8B2AA0 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  }

  else
  {
    v4 = *(qword_1ED8B2AA0 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
  }

  v5 = *v0;
  v6 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  LODWORD(v6) = v4[v6];
  v7 = v3;

  if (v6 == 1)
  {
    v8 = [objc_opt_self() sharedPreferencesController];
    if (v8)
    {
      v9 = v8;
      if ([v8 handBias])
      {

        v10 = *(v1 + v2);
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = *(v1 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
        }

        swift_beginAccess();
        v12 = v10;
      }

      else
      {
      }
    }
  }

  return v5;
}

void sub_19A6348E8(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  sub_19A63472C();
  v11 = v10;
  v13 = v12;
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v14 = *(qword_1ED8B2AA0 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  if (v14)
  {
    v15 = *(qword_1ED8B2AA0 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  }

  else
  {
    v15 = *(qword_1ED8B2AA0 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
  }

  v16 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth;
  swift_beginAccess();
  v17 = *&v15[v16];
  v18 = v14;

  if (v17 - v11 - v13 != 0.0)
  {
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    if (CGRectGetMidX(v19) - a1 * 0.5 >= 0.0)
    {
      v20.origin.x = a2;
      v20.origin.y = a3;
      v20.size.width = a4;
      v20.size.height = a5;
      CGRectGetMidX(v20);
    }
  }
}

uint64_t sub_19A634A54(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_19A7A9954();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v49 - v14;
  v16 = sub_19A634518();
  v17 = v16;
  v18 = *(v16 + 2);
  v50 = v9;
  if (v18)
  {
    if (v18 > 3)
    {
      v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      v21 = (v16 + 48);
      v20 = 0.0;
      v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
        v21 += 4;
        v22 -= 4;
      }

      while (v22);
      if (v18 == v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0.0;
    }

    v23 = v18 - v19;
    v24 = &v16[8 * v19 + 32];
    do
    {
      v25 = *v24++;
      v20 = v20 + v25;
      --v23;
    }

    while (v23);
  }

  else
  {
    v20 = 0.0;
  }

LABEL_10:
  sub_19A631B34(v20, a1, a2, a3, a4);
  v27 = v26;
  v28 = *v4;
  v53 = v4[1];
  v54 = v28;
  *&v57 = v28;
  *(&v57 + 1) = v53;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA40);
  sub_19A7AA464();
  v29 = v55;
  swift_getKeyPath();
  *&v57 = v29;
  v51 = sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  v30 = *(*&v29 + 56);
  v31 = *(*&v29 + 64);

  v32 = *(v4 + 120);
  v33 = v4[16];
  v57 = *(v4 + 13);
  v58 = v32;
  v59 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC550);
  sub_19A7AA464();
  if (v56 >= 2u || ((v34 = v10, v35 = v30, v49[3] = v31, v36 = v20 * 0.5 + v55 - v27, sub_19A634310(v15), v37 = v50, (*(v34 + 104))(v13, *MEMORY[0x1E697E7D8], v50), v38 = sub_19A7A9944(), v39 = *(v34 + 8), v39(v13, v37), result = (v39)(v15, v37), (v38 & 1) == 0) ? (v41 = v36) : (v41 = v20 - v36), v41 >= 0.0 ? (v42 = v18 == 0) : (v42 = 1), v42))
  {
LABEL_27:

    return v30;
  }

  else
  {
    v30 = 0;
    v43 = 0.0;
    v44 = 40;
    v45 = v35;
    while (v30 < *(v17 + 2))
    {
      v43 = v43 + *&v17[8 * v30 + 32];
      if (v41 < v43)
      {
        *&v57 = v54;
        *(&v57 + 1) = v53;
        sub_19A7AA464();
        v46 = v55;
        swift_getKeyPath();
        *&v57 = v46;
        sub_19A7A90C4();

        v47 = *(*&v46 + 48);

        if (v30 >= *(v47 + 16))
        {
          goto LABEL_29;
        }

        v48 = *(v47 + v44);

        v45 = v35;
        if (v48)
        {

          goto LABEL_27;
        }
      }

      ++v30;
      v44 += 16;
      if (v18 == v30)
      {
        v30 = v45;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

double sub_19A634EB8@<D0>(double a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v4 = sub_19A7A9D84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A7A9D94();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19A634518();
  v13 = *(v12 + 2);
  v14 = 0.0;
  if (!v13)
  {
    goto LABEL_9;
  }

  if (v13 > 3)
  {
    v15 = v13 & 0x7FFFFFFFFFFFFFFCLL;
    v16 = (v12 + 48);
    v17 = v13 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = v14 + *(v16 - 2) + *(v16 - 1) + *v16 + v16[1];
      v16 += 4;
      v17 -= 4;
    }

    while (v17);
    if (v13 == v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = v13 - v15;
  v19 = &v12[8 * v15 + 32];
  do
  {
    v20 = *v19++;
    v14 = v14 + v20;
    --v18;
  }

  while (v18);
LABEL_9:
  v62 = v12;
  v21 = sub_19A7AA624();
  sub_19A7A9E04();
  sub_19A7A98A4();
  v23 = v22;
  v56 = v24;
  v57 = v22;
  v25 = v24;
  v64 = v26;
  v58 = v27;
  (*(v9 + 8))(v11, v8);
  sub_19A7A9DF4();
  sub_19A7A98A4();
  v29 = v28;
  v63 = v28;
  v31 = v30;
  v60 = v32;
  v61 = v30;
  v33 = v32;
  v35 = v34;
  v59 = v34;
  (*(v5 + 8))(v7, v4);
  if (*(v2 + 88))
  {
    v36 = v25;
  }

  else
  {
    v23 = v29;
    v36 = v31;
  }

  if (*(v2 + 88))
  {
    v37 = v64;
  }

  else
  {
    v37 = v33;
  }

  v38 = v58;
  if (*(v2 + 88))
  {
    v39 = v58;
  }

  else
  {
    v39 = v35;
  }

  v65.origin.x = v23;
  v65.origin.y = v36;
  v65.size.width = v37;
  v65.size.height = v39;
  MidX = CGRectGetMidX(v65);
  v66.origin.x = v23;
  v66.origin.y = v36;
  v66.size.width = v37;
  v66.size.height = v39;
  MidY = CGRectGetMidY(v66);
  v42 = CGPointMake(MidX, MidY);
  v44 = v43;
  v45 = 20.0;
  if ((v21 & 1) == 0)
  {
    v45 = 0.0;
  }

  v47 = v56;
  v46 = v57;
  v48 = v64;
  sub_19A6348E8(v14 + v45, v57, v56, v64, v38);
  v50 = v49;
  v51 = sub_19A634A54(v46, v47, v48, v38);
  *a2 = v62;
  *(a2 + 8) = v14;
  *(a2 + 16) = v46;
  *(a2 + 24) = v47;
  *(a2 + 32) = v48;
  v53 = v63;
  *(a2 + 40) = v38;
  *(a2 + 48) = v53;
  v54 = v60;
  *(a2 + 56) = v61;
  *(a2 + 64) = v54;
  result = v59;
  *(a2 + 72) = v59;
  *(a2 + 80) = v42;
  *(a2 + 88) = v44;
  *(a2 + 96) = v50;
  *(a2 + 104) = v51;
  *(a2 + 112) = v52 & 1;
  return result;
}

double sub_19A635220@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VariantSelectorView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_19A638610(v1, (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 6));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_19A6397D0((v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 6), v7 + v6, type metadata accessor for VariantSelectorView);
  LOBYTE(v5) = sub_19A7A9F04();
  sub_19A7A9754();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_19A7AA654();
  v21 = 0;
  sub_19A7A9A44();
  *&v22[55] = v26;
  *&v22[71] = v27;
  *&v22[87] = v28;
  *&v22[103] = v29;
  *&v22[7] = v23;
  *&v22[23] = v24;
  v16 = v21;
  *&v22[39] = v25;
  *a1 = sub_19A638674;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  v17 = *&v22[80];
  *(a1 + 121) = *&v22[64];
  *(a1 + 137) = v17;
  *(a1 + 153) = *&v22[96];
  *(a1 + 168) = *&v22[111];
  v18 = *&v22[16];
  *(a1 + 57) = *v22;
  *(a1 + 73) = v18;
  result = *&v22[32];
  v20 = *&v22[48];
  *(a1 + 89) = *&v22[32];
  *(a1 + 105) = v20;
  return result;
}

uint64_t sub_19A6354D0@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_19A7AA654();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA10);
  return sub_19A635530(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_19A635530@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>)
{
  v159 = a2;
  v145 = a3;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA18);
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v118 - v4;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA20);
  v143 = *(v152 - 8);
  v5 = MEMORY[0x1EEE9AC00](v152);
  v120 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v121 = &v118 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA28);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v144 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v149 = &v118 - v11;
  v12 = sub_19A7A98B4();
  v156 = *(v12 - 8);
  v157 = v12;
  v158 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v155 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VariantSelectorView(0);
  v151 = *(v14 - 8);
  v146 = *(v151 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v118 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v147 = &v118 - v17;
  v154 = type metadata accessor for DraggableLabel(0);
  MEMORY[0x1EEE9AC00](v154);
  v19 = (&v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA30);
  v137 = *(v20 - 8);
  v138 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v134 = &v118 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA38);
  v22 = MEMORY[0x1EEE9AC00](v135);
  v142 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v136 = &v118 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v118 - v26;
  v28 = *(a1 + 8);
  *&v176 = *a1;
  v27 = v176;
  *(&v176 + 1) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA40);
  sub_19A7AA464();
  v30 = v161;
  swift_getKeyPath();
  *&v176 = v30;
  v31 = sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  v32 = *(v30 + 40);
  v127 = *(v30 + 32);

  v33 = a1;
  v34 = *(a1 + 104);
  v132 = *(a1 + 112);
  v133 = v34;
  v131 = *(a1 + 120);
  v130 = *(a1 + 128);
  v150 = a1;
  *&v161 = v34;
  *(&v161 + 1) = v132;
  LOBYTE(v162) = v131;
  v163 = v130;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC550);
  sub_19A7AA484();
  v126 = v176;
  v124 = *(&v177 + 1);
  v125 = v177;
  v123 = v178;
  v140 = v28;
  v141 = v27;
  *&v176 = v27;
  *(&v176 + 1) = v28;
  v139 = v29;
  sub_19A7AA464();
  v35 = v161;
  swift_getKeyPath();
  *&v176 = v35;
  v153 = v31;
  sub_19A7A90C4();

  v36 = *(v35 + 48);

  v37 = *(v36 + 16);

  LOBYTE(v36) = v37 < 2;
  *v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v39 = v154;
  v40 = v19 + *(v154 + 20);
  *v40 = KeyPath;
  v40[8] = 0;
  v41 = v19 + v39[6];
  *v41 = swift_getKeyPath();
  *(v41 + 1) = 0;
  v41[16] = 0;
  v42 = v39[7];
  v128 = v19;
  v43 = (v19 + v42);
  *v43 = v127;
  v43[1] = v32;
  v44 = v19 + v39[8];
  *v44 = v126;
  v45 = v124;
  *(v44 + 2) = v125;
  *(v44 + 3) = v45;
  v44[32] = v123;
  *(v19 + v39[9]) = 0;
  *(v19 + v39[10]) = v36;
  v46 = (v19 + v39[11]);
  *v46 = 0;
  v46[1] = 0;
  v47 = v147;
  sub_19A638610(v33, v147);
  v49 = v155;
  v48 = v156;
  v127 = *(v156 + 16);
  v50 = v157;
  v127(v155, *&v159, v157);
  v51 = *(v151 + 80);
  v52 = (v51 + 16) & ~v51;
  v53 = v52 + v146;
  v151 = v52;
  v146 = v51 | 7;
  v54 = *(v48 + 80);
  v125 = v53;
  v55 = (v53 + v54) & ~v54;
  v56 = swift_allocObject();
  *&v126 = type metadata accessor for VariantSelectorView;
  sub_19A6397D0(v47, v56 + v52, type metadata accessor for VariantSelectorView);
  v156 = *(v156 + 32);
  (v156)(v56 + v55, v49, v50);
  *v46 = sub_19A6386F4;
  v46[1] = v56;
  *&v176 = v133;
  *(&v176 + 1) = v132;
  LOBYTE(v177) = v131;
  *(&v177 + 1) = v130;
  sub_19A7AA464();
  v176 = v161;
  LOBYTE(v177) = v162;
  v57 = v150;
  sub_19A638610(v150, v47);
  v58 = v155;
  v59 = v157;
  v127(v155, *&v159, v157);
  v60 = swift_allocObject();
  v61 = v47;
  v62 = v134;
  sub_19A6397D0(v61, v60 + v151, v126);
  (v156)(v60 + v55, v58, v59);
  sub_19A638300(&qword_1EAFCAF18, type metadata accessor for DraggableLabel);
  sub_19A622558();
  v63 = v128;
  sub_19A7AA224();

  sub_19A6225AC(v63);
  v64 = *(v57 + 16);
  v65 = *(v57 + 24);
  sub_19A7AA654();
  v66 = 1;
  sub_19A7A9A44();
  v67 = v136;
  (*(v137 + 32))(v136, v62, v138);
  v68 = (v67 + *(v135 + 36));
  v69 = v174;
  v68[4] = v173;
  v68[5] = v69;
  v68[6] = v175;
  v70 = v170;
  *v68 = v169;
  v68[1] = v70;
  v71 = v172;
  v68[2] = v171;
  v68[3] = v71;
  v72 = v148;
  sub_19A62376C(v67, v148, &qword_1EAFCCA38);
  v73 = v140;
  v74 = v141;
  *&v176 = v141;
  *(&v176 + 1) = v140;
  sub_19A7AA464();
  v75 = v161;
  swift_getKeyPath();
  *&v176 = v75;
  sub_19A7A90C4();

  LOBYTE(v67) = *(v75 + 65);

  v76 = v152;
  if (v67)
  {
    *&v176 = v74;
    *(&v176 + 1) = v73;
    sub_19A7AA464();
    v77 = v161;
    swift_getKeyPath();
    *&v176 = v77;
    sub_19A7A90C4();

    v78 = *(v77 + 48);

    v79 = *(v78 + 16);

    if (v79 < 2)
    {
      v66 = 1;
      v76 = v152;
    }

    else
    {
      v80 = v150;
      sub_19A634EB8(v159, &v176);
      v81 = *(v80 + 40);
      v82 = *(v80 + 72);
      LODWORD(v159) = *(v80 + 88);
      *&v161 = v74;
      *(&v161 + 1) = v73;
      sub_19A7AA464();
      v83 = v167;
      swift_getKeyPath();
      *&v161 = v83;
      sub_19A7A90C4();

      v158 = *(v83 + 72);

      *&v167 = v74;
      *(&v167 + 1) = v73;
      sub_19A7AA484();
      v84 = v161;
      v85 = v162;
      swift_getKeyPath();
      v167 = v84;
      v168 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA50);
      sub_19A7AA544();

      v86 = v165;
      v157 = v164;
      LODWORD(v156) = v166;

      v87 = v118;
      sub_19A638610(v80, v118);
      v88 = (v125 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      sub_19A6397D0(v87, v89 + v151, type metadata accessor for VariantSelectorView);
      v90 = v89 + v88;
      v91 = v181;
      *(v90 + 64) = v180;
      *(v90 + 80) = v91;
      *(v90 + 96) = v182;
      *(v90 + 112) = v183;
      v92 = v177;
      *v90 = v176;
      *(v90 + 16) = v92;
      v93 = v179;
      *(v90 + 32) = v178;
      *(v90 + 48) = v93;
      sub_19A638B00(&v176, &v161);
      if (sub_19A7AA624())
      {
        v94 = 10.0;
      }

      else
      {
        v94 = 3.0;
      }

      if (sub_19A7AA624())
      {
        v95 = 20.0;
      }

      else
      {
        v95 = 8.0;
      }

      v96 = *(&v176 + 1);
      v97 = v182;
      v98 = v158 != 1;
      v99 = swift_getKeyPath();
      v100 = v119;
      v101 = v122;
      *&v122[*(v119 + 76)] = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
      swift_storeEnumTagMultiPayload();
      *v101 = v64;
      *(v101 + 8) = v65;
      *(v101 + 16) = v96;
      *(v101 + 24) = v81;
      *(v101 + 32) = v82;
      *(v101 + 40) = 0x4000000000000000;
      *(v101 + 48) = v94;
      *(v101 + 56) = v95;
      *(v101 + 64) = LOBYTE(v159);
      *(v101 + 72) = v97;
      *(v101 + 80) = v98;
      *(v101 + 88) = v157;
      *(v101 + 96) = v86;
      *(v101 + 104) = v156;
      v160 = 0;
      sub_19A7AA454();
      v102 = *(&v161 + 1);
      *(v101 + 112) = v161;
      *(v101 + 120) = v102;
      v103 = (v101 + *(v100 + 80));
      *v103 = sub_19A638A64;
      v103[1] = v89;
      v104 = [objc_opt_self() defaultCenter];
      if (qword_1EAFCABA8 != -1)
      {
        swift_once();
      }

      sub_19A7AB814();

      sub_19A638B38(&v176);
      v105 = v147;
      sub_19A638610(v150, v147);
      v106 = swift_allocObject();
      sub_19A6397D0(v105, v106 + v151, type metadata accessor for VariantSelectorView);
      v107 = v120;
      sub_19A62376C(v101, v120, &qword_1EAFCCA18);
      v108 = v152;
      v109 = (v107 + *(v152 + 36));
      *v109 = 0;
      v109[1] = 0;
      v109[2] = sub_19A638B68;
      v109[3] = v106;
      v110 = v107;
      v111 = v121;
      sub_19A62376C(v110, v121, &qword_1EAFCCA20);
      sub_19A62376C(v111, v149, &qword_1EAFCCA20);
      v76 = v108;
      v66 = 0;
      v72 = v148;
    }
  }

  v112 = v149;
  (*(v143 + 56))(v149, v66, 1, v76);
  v113 = v142;
  sub_19A60F0CC(v72, v142, &qword_1EAFCCA38);
  v114 = v144;
  sub_19A60F0CC(v112, v144, &qword_1EAFCCA28);
  v115 = v145;
  sub_19A60F0CC(v113, v145, &qword_1EAFCCA38);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA48);
  sub_19A60F0CC(v114, v115 + *(v116 + 48), &qword_1EAFCCA28);
  sub_19A5F2B54(v112, &qword_1EAFCCA28);
  sub_19A5F2B54(v72, &qword_1EAFCCA38);
  sub_19A5F2B54(v114, &qword_1EAFCCA28);
  return sub_19A5F2B54(v113, &qword_1EAFCCA38);
}

BOOL sub_19A63653C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v12 = *(a1 + 104);
  v13 = v4;
  v14 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC550);
  sub_19A7AA464();
  result = 0;
  if (!v11)
  {
    sub_19A634EB8(*&a2, &v12);
    sub_19A638B38(&v12);
    v7 = *(a1 + 96);
    if (v9 - v15 < *(&v12 + 1) * -0.5 - v7)
    {
      return 1;
    }

    if (*(&v12 + 1) * 0.5 + v7 < v9 - v15)
    {
      return 1;
    }

    v8 = *(a1 + 16);
    if (v10 < v8 * -0.5 - *(a1 + 32) - v7 || v7 + v8 * 0.5 < v10)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_19A63664C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a2 + 16);
  sub_19A634EB8(*&a4, v40);
  if (v8 == 2)
  {
    if (!(v7 & 0xFFFFFFFFFFFFFFFDLL | v6))
    {
      result = sub_19A638B38(v40);
      if (v7 != 2 || v6 != 0)
      {
        return result;
      }

      goto LABEL_4;
    }

LABEL_10:
    v16 = *a3;
    v17 = *(a3 + 8);
    v42 = *a3;
    v43 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA40);
    sub_19A7AA464();
    swift_getKeyPath();
    v42 = v38;
    sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
    sub_19A7A90C4();

    v18 = *(v38 + 65);

    if ((v18 & 1) == 0)
    {
      v42 = v16;
      v43 = v17;
      sub_19A7AA464();
      v19 = v38;
      if (*(v38 + 65) == 1)
      {
        *(v38 + 65) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v36 = v35;
        MEMORY[0x1EEE9AC00](KeyPath);
        v42 = v19;
        sub_19A7A90B4();
      }

      v42 = v16;
      v43 = v17;
      sub_19A7AA464();
      sub_19A633A18();

      sub_19A786230();

      v42 = v16;
      v43 = v17;
      sub_19A7AA464();
      v24 = sub_19A633A18();

      if ((*(v24 + 24) & 1) == 0)
      {
        sub_19A786230();
      }

      v25 = *(v24 + 16);
      [v25 selectionChanged];
    }

    if (v8)
    {
      return sub_19A638B38(v40);
    }

    v36 = v16;
    v26 = v40[13];
    v27 = v41;
    v28 = *(a3 + 136);
    v29 = *(a3 + 144);
    v30 = *(a3 + 152);
    v42 = v28;
    LOBYTE(v43) = v29;
    v44 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCAB0);
    sub_19A7AA464();
    result = sub_19A638B38(v40);
    v31 = v39;
    if (v27)
    {
      if (v39)
      {
        return result;
      }
    }

    else
    {
      if (v26 != v38)
      {
        v31 = 1;
      }

      if ((v31 & 1) == 0)
      {
        return result;
      }
    }

    v42 = v28;
    LOBYTE(v43) = v29;
    v44 = v30;
    v38 = v26;
    LOBYTE(v39) = v27;
    sub_19A7AA474();
    v42 = v36;
    v43 = v17;
    sub_19A7AA464();
    v33 = sub_19A633A18();

    if ((*(v33 + 24) & 1) == 0)
    {
      sub_19A786230();
    }

    v34 = *(v33 + 16);
    [v34 selectionChanged];
  }

  if (v8 != 1)
  {
    goto LABEL_10;
  }

  sub_19A638B38(v40);
LABEL_4:
  sub_19A634EB8(*&a4, &v42);
  sub_19A638B38(&v42);
  if ((v46 & 1) == 0)
  {
    v9 = v45;
    v10 = *(a3 + 8);
    v38 = *a3;
    v39 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA40);
    sub_19A7AA464();
    sub_19A63367C(v9, 0);
  }

  sub_19A631724();
  v12 = *a3;
  v11 = *(a3 + 8);
  v38 = *a3;
  v39 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA40);
  sub_19A7AA464();
  v13 = v37;
  if (*(v37 + 65))
  {
    v14 = swift_getKeyPath();
    v36 = v6;
    v35[1] = v35;
    MEMORY[0x1EEE9AC00](v14);
    v38 = v13;
    sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
    sub_19A7A90B4();

    v6 = v36;

    if (v8 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(v37 + 65) = 0;

    if (v8 != 2)
    {
LABEL_16:
      v38 = v12;
      v39 = v11;
      sub_19A7AA464();
      v38 = v12;
      v39 = v11;
      sub_19A7AA464();
      v20 = v37;
      swift_getKeyPath();
      v38 = v20;
      sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
      sub_19A7A90C4();

      v21 = v20[7];
      v22 = *(v20 + 64);

      sub_19A633A74(v21, v22, 1);
    }
  }

  if (v7 != 2 || v6)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_19A636C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_19A7A9BA4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA58);
  sub_19A636DD0(a1, a2);
  KeyPath = swift_getKeyPath();
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA60) + 36));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC588);
  sub_19A634310(v7 + *(v8 + 28));
  *v7 = KeyPath;
  sub_19A7AA654();
  sub_19A7A9864();
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA68) + 36));
  *v9 = v14;
  v9[1] = v15;
  v9[2] = v16;
  v10 = *(a2 + 96);
  v11 = -*(a1 + 40) - *(a1 + 72);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA70);
  v13 = a3 + *(result + 36);
  *v13 = v10;
  *(v13 + 8) = v11;
  return result;
}

uint64_t sub_19A636DD0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for VariantSelectorView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = a1[1];
  v19[0] = *a1;
  v19[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA40);
  sub_19A7AA464();
  v8 = v20;
  swift_getKeyPath();
  v19[0] = v8;
  sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  v9 = *(v8 + 48);

  v10 = sub_19A6B7C04(v9);

  v20 = v10;
  swift_getKeyPath();
  sub_19A638610(a1, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_19A6397D0(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for VariantSelectorView);
  v13 = v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *(a2 + 80);
  *(v13 + 64) = *(a2 + 64);
  *(v13 + 80) = v14;
  *(v13 + 96) = *(a2 + 96);
  *(v13 + 112) = *(a2 + 112);
  v15 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v15;
  v16 = *(a2 + 48);
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_19A638D10;
  *(v17 + 24) = v12;
  sub_19A638B00(a2, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA80);
  sub_19A623714(&qword_1EAFCCA88, &qword_1EAFCCA78);
  sub_19A638E08();
  return sub_19A7AA584();
}

uint64_t sub_19A6370D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v31 = a5;
  v35 = a6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCAA8);
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA80);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for VariantSelectorView(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_19A638610(a4, &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_19A6397D0(&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for VariantSelectorView);
  *(v19 + ((v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v20 = *(a4 + 64);
  LOBYTE(a1) = (*(v31 + 104) == a1) & ~*(v31 + 112);
  v21 = *(a4 + 80);
  v36 = 0uLL;
  LOBYTE(v37) = 2;
  swift_bridgeObjectRetain_n();
  v22 = *(a4 + 48);
  v31 = *(a4 + 32);
  v30 = v22;
  sub_19A7AA454();
  *&v36 = a2;
  v23 = a2;
  *(&v36 + 1) = a3;
  v38 = v30;
  v37 = v31;
  *&v39 = v20;
  BYTE8(v39) = a1;
  *v40 = v21;
  *&v40[8] = v42;
  v40[24] = v43;
  v41 = *(&v43 + 1);
  sub_19A638EC0();
  v24 = v32;
  sub_19A7AA104();
  v46 = *v40;
  v47 = *&v40[16];
  v48 = v41;
  v42 = v36;
  v43 = v37;
  v44 = v38;
  v45 = v39;
  sub_19A638FF8(&v42);
  if (a3)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (a3)
  {
    v26 = a3;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = sub_19A7AB0C4();

  (*(v33 + 32))(v14, v24, v34);
  v28 = &v14[*(v12 + 44)];
  *v28 = v27 > 0;
  *(v28 + 1) = v25;
  *(v28 + 2) = v26;
  sub_19A62376C(v14, v35, &qword_1EAFCCA80);
}

void sub_19A6374F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA40);
    sub_19A7AA464();
    sub_19A63367C(a4, 0);

    sub_19A631724();
    sub_19A7AA464();
    if (*(v6 + 65))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_19A638300(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
      sub_19A7A90B4();
    }

    else
    {
      *(v6 + 65) = 0;
    }

    sub_19A7AA464();
    sub_19A633A74(a4, 0, 1);
  }
}

void sub_19A6376BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCA40);
  sub_19A7AA464();
  v0 = sub_19A633A18();

  if (*(v0 + 24) == 1)
  {
    *(v0 + 24) = 0;
    [*(v0 + 16) userInteractionEnded];
    v1 = *(v0 + 16);
    *(v0 + 16) = 0;
  }

  else
  {
  }
}

uint64_t sub_19A637760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCAD8);
  MEMORY[0x1EEE9AC00](v90);
  v5 = (&v78 - v4);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCAE0);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v78 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCAE8);
  MEMORY[0x1EEE9AC00](v85);
  v10 = (&v78 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCAF0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v78 - v14;
  v15 = sub_19A7A9A14();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6D0);
  MEMORY[0x1EEE9AC00](v81);
  v19 = &v78 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6C8);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  *&v82 = &v78 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC7B0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v84 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v91 = &v78 - v29;
  if ((a1[7] & 1) != 0 && a1[1])
  {
    v79 = v5;
    v80 = a2;
    v30 = a1[8];
    v31 = *(sub_19A7A9A24() + 20);
    v32 = *MEMORY[0x1E697F468];
    v33 = sub_19A7A9BC4();
    (*(*(v33 - 8) + 104))(&v17[v31], v32, v33);
    *v17 = v30;
    *(v17 + 1) = v30;
    *&v17[*(v15 + 20)] = 0x4000000000000000;
    if (sub_19A7AA624())
    {
      v34 = [objc_opt_self() tertiarySystemFillColor];
      v35 = sub_19A7AA274();
    }

    else
    {
      v35 = sub_19A7AA2A4();
    }

    v59 = v35;
    sub_19A6397D0(v17, v19, MEMORY[0x1E697EAB8]);
    *&v19[*(v81 + 36)] = v59;
    sub_19A7AA654();
    sub_19A7A9864();
    sub_19A62376C(v19, v24, &qword_1EAFCC6D0);
    v60 = &v24[*(v20 + 36)];
    v61 = v95;
    *v60 = v94;
    *(v60 + 1) = v61;
    *(v60 + 2) = v96;
    v62 = v82;
    sub_19A62376C(v24, v82, &qword_1EAFCC6C8);
    v63 = v62;
    v64 = v91;
    sub_19A62376C(v63, v91, &qword_1EAFCC6C8);
    (*(v21 + 56))(v64, 0, 1, v20);
    a2 = v80;
    v5 = v79;
    v36 = a1[1];
    if (!v36)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (*(v21 + 56))(v91, 1, 1, v20);
    v36 = a1[1];
    if (!v36)
    {
LABEL_9:
      sub_19A7A9C54();
      v10 = v5;
      sub_19A7AA654();
      sub_19A7A9864();
      v65 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCAF8) + 36);
      v66 = v98;
      *v65 = v97;
      *(v65 + 1) = v66;
      *(v65 + 2) = v99;
      v67 = sub_19A7A9F04();
      sub_19A7A9754();
      v68 = v10 + *(v90 + 36);
      *v68 = v67;
      *(v68 + 1) = v69;
      *(v68 + 2) = v70;
      *(v68 + 3) = v71;
      *(v68 + 4) = v72;
      v68[40] = 0;
      v57 = &qword_1EAFCCAD8;
      sub_19A60F0CC(v10, v87, &qword_1EAFCCAD8);
      swift_storeEnumTagMultiPayload();
      sub_19A639438();
      sub_19A6395AC();
      v58 = v88;
      goto LABEL_10;
    }
  }

  v37 = *a1;
  v38 = *(a1 + 11);
  v92 = *(a1 + 9);
  v93 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC550);
  sub_19A7AA484();
  v82 = v97;
  v39 = a2;
  v41 = *(&v98 + 1);
  v40 = v98;
  v42 = v99;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v44 = type metadata accessor for DraggableLabel(0);
  v45 = v10 + v44[5];
  *v45 = KeyPath;
  v45[8] = 0;
  v46 = v10 + v44[6];
  *v46 = swift_getKeyPath();
  *(v46 + 1) = 0;
  v46[16] = 0;
  v47 = (v10 + v44[7]);
  *v47 = v37;
  v47[1] = v36;
  v48 = v10 + v44[8];
  *v48 = v82;
  *(v48 + 2) = v40;
  *(v48 + 3) = v41;
  a2 = v39;
  v48[32] = v42;
  *(v10 + v44[9]) = 0;
  *(v10 + v44[10]) = 1;
  v49 = (v10 + v44[11]);
  v50 = sub_19A7A9F84();
  *v49 = 0;
  v49[1] = 0;
  v51 = v83;
  (*(*(v50 - 8) + 56))(v83, 1, 1, v50);
  v52 = sub_19A7A9FC4();
  sub_19A5F2B54(v51, &qword_1EAFCFFF0);
  v53 = swift_getKeyPath();
  v54 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCB10) + 36));
  *v54 = v53;
  v54[1] = v52;
  sub_19A7AA654();
  sub_19A7A9864();
  v55 = (v10 + *(v85 + 36));
  v56 = v98;
  *v55 = v97;
  v55[1] = v56;
  v55[2] = v99;
  v57 = &qword_1EAFCCAE8;
  sub_19A60F0CC(v10, v87, &qword_1EAFCCAE8);
  swift_storeEnumTagMultiPayload();
  sub_19A639438();
  sub_19A6395AC();
  v58 = v88;
LABEL_10:
  sub_19A7A9D64();
  sub_19A5F2B54(v10, v57);
  v73 = v91;
  v74 = v84;
  sub_19A60F0CC(v91, v84, &qword_1EAFCC7B0);
  v75 = v89;
  sub_19A60F0CC(v58, v89, &qword_1EAFCCAF0);
  sub_19A60F0CC(v74, a2, &qword_1EAFCC7B0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCB50);
  sub_19A60F0CC(v75, a2 + *(v76 + 48), &qword_1EAFCCAF0);
  sub_19A5F2B54(v58, &qword_1EAFCCAF0);
  sub_19A5F2B54(v73, &qword_1EAFCC7B0);
  sub_19A5F2B54(v75, &qword_1EAFCCAF0);
  return sub_19A5F2B54(v74, &qword_1EAFCC7B0);
}

uint64_t sub_19A6381EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  *a1 = sub_19A7AA654();
  a1[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCAD0);
  return sub_19A637760(v9, a1 + *(v7 + 44));
}

uint64_t sub_19A638260()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_19A63829C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

void sub_19A6382EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 56) = *(v0 + 24);
  *(v1 + 64) = v2;
}

uint64_t sub_19A638300(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_19A638390()
{
  sub_19A638590(319, &qword_1EAFCA6A0, type metadata accessor for VariantSelectorViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_19A6384DC();
      if (v2 <= 0x3F)
      {
        sub_19A63852C();
        if (v3 <= 0x3F)
        {
          sub_19A638590(319, &qword_1EAFCA820, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_19A6384DC()
{
  if (!qword_1EAFCA6A8)
  {
    v0 = sub_19A7AA494();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA6A8);
    }
  }
}

void sub_19A63852C()
{
  if (!qword_1EAFCA668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCD20);
    v0 = sub_19A7AA494();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA668);
    }
  }
}

void sub_19A638590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_19A638610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariantSelectorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A638674@<X0>(double a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for VariantSelectorView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_19A6354D0(a1, v6, a2);
}

BOOL sub_19A6386F4()
{
  v1 = *(type metadata accessor for VariantSelectorView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_19A7A98B4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_19A63653C(v0 + v2, v5);
}

uint64_t objectdestroy_42Tm()
{
  v1 = (type metadata accessor for VariantSelectorView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_19A7A98B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_19A7A9954();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v8, v11 | 7);
}

uint64_t sub_19A638980(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for VariantSelectorView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_19A7A98B4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_19A63664C(a1, a2, v2 + v6, v9);
}

uint64_t sub_19A638A64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VariantSelectorView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_19A636C7C(v1 + v4, v5, a1);
}

void sub_19A638B68()
{
  type metadata accessor for VariantSelectorView(0);

  sub_19A6376BC();
}

uint64_t objectdestroy_48Tm()
{
  v1 = (type metadata accessor for VariantSelectorView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_19A7A9954();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 113, v2 | 7);
}

uint64_t sub_19A638D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for VariantSelectorView(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_19A6370D0(a1, a2, a3, v4 + v10, v11, a4);
}

unint64_t sub_19A638E08()
{
  result = qword_1EAFCCA90;
  if (!qword_1EAFCCA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCA80);
    sub_19A638EC0();
    swift_getOpaqueTypeConformance2();
    sub_19A638F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCA90);
  }

  return result;
}

unint64_t sub_19A638EC0()
{
  result = qword_1EAFCCA98;
  if (!qword_1EAFCCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCA98);
  }

  return result;
}

unint64_t sub_19A638F14()
{
  result = qword_1EAFCCAA0;
  if (!qword_1EAFCCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCAA0);
  }

  return result;
}

void sub_19A638F68()
{
  v1 = *(type metadata accessor for VariantSelectorView(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_19A6374F8(v3, v4, v0 + v2, v5);
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_19A639054(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_19A63909C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_19A639120(uint64_t a1, int a2)
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

uint64_t sub_19A639168(uint64_t result, int a2, int a3)
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

uint64_t sub_19A6391E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_19A639240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_19A6392BC()
{
  result = qword_1EAFCA750;
  if (!qword_1EAFCA750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCAB8);
    sub_19A639348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA750);
  }

  return result;
}

unint64_t sub_19A639348()
{
  result = qword_1EAFCA798;
  if (!qword_1EAFCA798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCAC0);
    sub_19A623714(&qword_1EAFCA7E0, &qword_1EAFCCAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA798);
  }

  return result;
}

unint64_t sub_19A639438()
{
  result = qword_1EAFCCB00;
  if (!qword_1EAFCCB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCAE8);
    sub_19A6394C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCB00);
  }

  return result;
}

unint64_t sub_19A6394C4()
{
  result = qword_1EAFCCB08;
  if (!qword_1EAFCCB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCB10);
    sub_19A638300(&qword_1EAFCAF18, type metadata accessor for DraggableLabel);
    sub_19A623714(&unk_1EAFCA6C0, &qword_1EAFCC7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCB08);
  }

  return result;
}

unint64_t sub_19A6395AC()
{
  result = qword_1EAFCCB18;
  if (!qword_1EAFCCB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCAD8);
    sub_19A639638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCB18);
  }

  return result;
}

unint64_t sub_19A639638()
{
  result = qword_1EAFCCB20;
  if (!qword_1EAFCCB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCAF8);
    sub_19A6396C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCB20);
  }

  return result;
}

unint64_t sub_19A6396C4()
{
  result = qword_1EAFCCB28;
  if (!qword_1EAFCCB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCB30);
    sub_19A63977C();
    sub_19A623714(&qword_1EAFCCB40, &qword_1EAFCCB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCB28);
  }

  return result;
}

unint64_t sub_19A63977C()
{
  result = qword_1EAFCCB38;
  if (!qword_1EAFCCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCB38);
  }

  return result;
}

uint64_t sub_19A6397D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A639838()
{
  result = qword_1EAFCCB70;
  if (!qword_1EAFCCB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCB60);
    sub_19A623714(&qword_1EAFCCB78, &qword_1EAFCCB68);
    sub_19A638300(&qword_1EAFCCB80, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCB70);
  }

  return result;
}

unint64_t sub_19A639920()
{
  result = qword_1EAFCA5E0;
  if (!qword_1EAFCA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA5E0);
  }

  return result;
}

unint64_t sub_19A639974()
{
  result = qword_1EAFCCB98;
  if (!qword_1EAFCCB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCBA0);
    sub_19A639838();
    sub_19A623714(&qword_1EAFCCB78, &qword_1EAFCCB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCB98);
  }

  return result;
}

uint64_t sub_19A639A5C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_19A7ABB94();
    v5 = v4;
    v6 = sub_19A7ABC24();
    v8 = v7;
    v9 = MEMORY[0x19A905FF0](v3, v5, v6, v7);
    sub_19A63DD24(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_19A63DD24(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_19A7ABB64();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_19A63D274(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_19A63DD24(v3, v5, v2 != 0);
  return v12;
}

void sub_19A639B94(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &qword_1EAFCCC08);
  sub_19A63D890();
  v6 = sub_19A7AB484();
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_touchesBegan_withEvent_, v6, a2);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(Strong + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_hasMoved) = 0;
    v9 = sub_19A639A5C(a1);
    if (v9)
    {
      v10 = v9;
      [v9 locationInView_];
      v12 = v11;
      v14 = v13;

      v15 = &v8[OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_beginPoint];
      *v15 = v12;
      *(v15 + 1) = v14;
    }
  }
}

void sub_19A639E64(uint64_t a1, uint64_t a2, SEL *a3)
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &qword_1EAFCCC08);
  sub_19A63D890();
  v7 = sub_19A7AB484();
  v10.receiver = v3;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a3, v7, a2);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_lastTouch];
    *&Strong[OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_lastTouch] = 0;
  }
}

uint64_t sub_19A639F38(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_19A5F5028(0, &qword_1EAFCCC08);
  sub_19A63D890();
  v8 = sub_19A7AB494();
  v9 = a4;
  v10 = a1;
  sub_19A639E64(v8, a4, a5);
}

id sub_19A63A098(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10StickerKit16DraggableUILabel_swiftUIFont] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit16DraggableUILabel_fontDescriptor] = 0;
  v4 = &v1[OBJC_IVAR____TtC10StickerKit16DraggableUILabel_usageSource];
  *v4 = 0;
  *(v4 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_19A63A16C()
{
  MEMORY[0x19A907B20](v0 + OBJC_IVAR____TtC10StickerKit16DraggableUILabel_touchDelegate);
}

uint64_t sub_19A63A268()
{
  v1 = sub_19A7A9B34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for DraggableLabel(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_19A7AB594();
    v8 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_19A63A3BC()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCCBA8);
  __swift_project_value_buffer(v0, qword_1EAFCCBA8);
  return sub_19A7A9374();
}

id sub_19A63A440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_19A60F0CC(a1, v16, &unk_1EAFCD750);
  v7 = v17;
  if (v17)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v9 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_19A7AC054();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithTarget_action_, v12, a2);
  swift_unknownObjectRelease();
  sub_19A5F2B54(a1, &unk_1EAFCD750);
  return v13;
}

id sub_19A63A66C()
{
  v1 = sub_19A7A9FF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7A9B34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DraggableLabel(0);
  v10 = (v0 + *(v9 + 20));
  v11 = *v10;
  v12 = *(v10 + 8);

  if ((v12 & 1) == 0)
  {
    sub_19A7AB594();
    v13 = sub_19A7A9EB4();
    v27[0] = v5;
    v14 = v2;
    v15 = v1;
    v16 = v13;
    sub_19A7A9324();

    v1 = v15;
    v2 = v14;
    sub_19A7A9B24();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v6 + 8))(v8, v27[0]);
    v11 = v27[1];
  }

  if (v11)
  {
    sub_19A63C970(v4);
    v17 = sub_19A7A9F64();
    (*(v2 + 8))(v4, v1);
    v18 = *(v0 + *(v9 + 36));
    if (v18)
    {
      v19 = v18;
      Size = CTFontGetSize(v17);
      v21 = [objc_opt_self() fontWithDescriptor:v19 size:Size];
LABEL_10:
      v26 = v21;

      return v26;
    }

    v24 = CTFontCopyName(v17, *MEMORY[0x1E6965830]);
    if (v24)
    {
      v19 = v24;
      v25 = CTFontGetSize(v17);
      v21 = [objc_opt_self() fontWithName:v19 size:v25];
      goto LABEL_10;
    }
  }

  else
  {
    v22 = *(v0 + *(v9 + 36));
    if (v22)
    {
      return [objc_opt_self() fontWithDescriptor:v22 size:32.0];
    }
  }

  return 0;
}

id sub_19A63A998()
{
  v1 = type metadata accessor for DraggableLabel(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A63C8B0(v0, v3);
  v4 = type metadata accessor for DraggableLabel.Coordinator(0);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_beginPoint];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v5[OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_translation];
  *v7 = 0;
  v7[1] = 0;
  *&v5[OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_lastTouch] = 0;
  v5[OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_hasMoved] = 0;
  swift_unknownObjectWeakInit();
  sub_19A63C8B0(v3, &v5[OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_control]);
  v10.receiver = v5;
  v10.super_class = v4;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_19A6225AC(v3);
  return v8;
}

char *sub_19A63AAAC()
{
  type metadata accessor for DraggableUILabel();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView__dragEnabled] = *(v0 + *(type metadata accessor for DraggableLabel(0) + 40));
  v2 = v1;
  sub_19A610BDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCBF8);
  sub_19A7A9E74();
  *&v2[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_delegate + 8] = &off_1F0DC6B30;
  swift_unknownObjectWeakAssign();

  sub_19A7A9E74();
  swift_unknownObjectWeakAssign();

  sub_19A7A9E74();
  v3 = [objc_allocWithZone(type metadata accessor for DraggableLabel.LongPressGestureRecognizer()) initWithTarget:v15 action:sel_longPressGestureRecognized_];

  v4 = v3;
  [v4 setCancelsTouchesInView_];
  [v4 setDelaysTouchesBegan_];

  v5 = [v2 gestureRecognizers];
  if (v5)
  {
    v6 = v5;
    v14 = v4;
    sub_19A5F5028(0, &qword_1EAFCA4C0);
    v7 = sub_19A7AB254();

    if (v7 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x19A906130](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (swift_dynamicCastClass())
        {
          [v2 removeGestureRecognizer_];
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:

    v4 = v14;
  }

  [v2 addGestureRecognizer_];
  sub_19A7A9E74();

  swift_unknownObjectWeakAssign();
  return v2;
}

void sub_19A63AD90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19A7A9B34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DraggableLabel(0);
  v9 = (v1 + v8[7]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text);
  v13 = *(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text);
  v14 = *(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text + 8);
  *v12 = v11;
  v12[1] = v10;

  sub_19A60FCB8(v13, v14);

  v15 = (v2 + v8[6]);
  v16 = *v15;
  LODWORD(v15) = *(v15 + 16);
  v35[0] = v16;
  if (v15 == 1)
  {

    v17 = v35[0];
  }

  else
  {
    v18 = v16;

    sub_19A7AB594();
    v19 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();
    sub_19A63C914(v18, *(&v35[0] + 1), 0);
    (*(v5 + 8))(v7, v4);
    v17 = v35[1];
  }

  *(a1 + OBJC_IVAR____TtC10StickerKit16DraggableUILabel_usageSource) = v17;

  v20 = OBJC_IVAR____TtC10StickerKit16DraggableUILabel_swiftUIFont;
  v21 = *(a1 + OBJC_IVAR____TtC10StickerKit16DraggableUILabel_swiftUIFont);

  v22 = sub_19A63A268();
  if (v21)
  {
    if (v22)
    {
      v23 = sub_19A7A9F74();

      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v22)
  {
    goto LABEL_9;
  }

LABEL_13:
  v30 = *(a1 + OBJC_IVAR____TtC10StickerKit16DraggableUILabel_fontDescriptor);
  v31 = *(v2 + v8[9]);
  if (v30)
  {
    if (v31)
    {
      sub_19A5F5028(0, &unk_1EAFCA538);
      v32 = v31;
      v33 = v30;
      v34 = sub_19A7AB924();

      if (v34)
      {
        goto LABEL_12;
      }
    }
  }

  else if (!v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  *(a1 + v20) = sub_19A63A268();

  v24 = *(v2 + v8[9]);
  v25 = *(a1 + OBJC_IVAR____TtC10StickerKit16DraggableUILabel_fontDescriptor);
  *(a1 + OBJC_IVAR____TtC10StickerKit16DraggableUILabel_fontDescriptor) = v24;
  v26 = v24;

  v27 = sub_19A63A66C();
  if (v27)
  {
    v28 = *(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font);
    *(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font) = v27;
    v29 = v27;

    [*(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel) setFont_];
  }

LABEL_12:
  *(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView__dragEnabled) = *(v2 + v8[10]);
  sub_19A610BDC();
}

void sub_19A63B0E0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DraggableLabel(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v57 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - v14;
  if ([a1 state] == 1)
  {
    v16 = (v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_translation);
    *v16 = 0;
    v16[1] = 0;
    sub_19A63C8B0(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_control, v15);
    v17 = &v15[*(v4 + 32)];
    v18 = *(v17 + 1);
    v19 = v17[32];
    v59 = *v17;
    v60 = v18;
    v61 = *(v17 + 1);
    v62 = v19;
    v57 = xmmword_19A7B8570;
    v58 = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCC00);
    sub_19A7AA534();
    sub_19A6225AC(v15);

    return;
  }

  if ([a1 state] != 2)
  {
    v40 = [a1 state];
    v41 = OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_control;
    if (v40 == 3)
    {
      sub_19A63C8B0(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_control, v10);
      if (*(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_hasMoved) == 1)
      {
        v42 = *(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_translation);
        v43 = 1;
      }

      else
      {
        v42 = 0uLL;
        v43 = 2;
      }

      v52 = &v10[*(v4 + 32)];
      v53 = *(v52 + 1);
      v54 = v52[32];
      v59 = *v52;
      v60 = v53;
      v61 = *(v52 + 1);
      v62 = v54;
      v57 = v42;
      v58 = v43;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCC00);
      sub_19A7AA534();
      sub_19A6225AC(v10);
    }

    else
    {
      sub_19A63C8B0(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_control, v7);
      v44 = &v7[*(v4 + 32)];
      v45 = *(v44 + 1);
      v46 = v44[32];
      v59 = *v44;
      v60 = v45;
      v61 = *(v44 + 1);
      v62 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCC00);
      MEMORY[0x19A904960](&v57);
      v47 = v57;
      v48 = v58;
      sub_19A6225AC(v7);
      if (v48 >= 2 && v47 > 1)
      {
        return;
      }

      sub_19A63C8B0(v2 + v41, v15);
      v49 = &v15[*(v4 + 32)];
      v50 = *(v49 + 1);
      v51 = v49[32];
      v59 = *v49;
      v60 = v50;
      v61 = *(v49 + 1);
      v62 = v51;
      v57 = 0uLL;
      v58 = 2;

      sub_19A7AA534();
      sub_19A6225AC(v15);
    }

    v55 = *(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_lastTouch);
    *(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_lastTouch) = 0;

    return;
  }

  v20 = OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_hasMoved;
  if (*(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_hasMoved) == 1)
  {
    v21 = v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_control;
    sub_19A63C8B0(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_control, v13);
    v22 = &v13[*(v4 + 32)];
    v23 = *(v22 + 1);
    v24 = v22[32];
    v59 = *v22;
    v60 = v23;
    v61 = *(v22 + 1);
    v62 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCC00);
    MEMORY[0x19A904960](&v57);
    v25 = v57;
    v26 = v58;
    sub_19A6225AC(v13);
    if (v26 < 2 || v25 <= 1)
    {
      sub_19A63C8B0(v21, v15);
      v27 = &v15[*(v4 + 32)];
      v28 = *(v27 + 1);
      v29 = v27[32];
      v59 = *v27;
      v60 = v28;
      v61 = *(v27 + 1);
      v62 = v29;
      v57 = *(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_translation);
      v58 = 0;

      sub_19A7AA534();
      sub_19A6225AC(v15);

      v30 = *(v21 + *(v4 + 44));
      if (v30)
      {

        if (v30(v31))
        {
          *(v2 + v20) = 0;
          sub_19A63C8B0(v21, v15);
          v32 = &v15[*(v4 + 32)];
          v33 = *(v32 + 1);
          v34 = v32[32];
          v59 = *v32;
          v60 = v33;
          v61 = *(v32 + 1);
          v62 = v34;
          v57 = xmmword_19A7B8560;
          v58 = 2;

          sub_19A7AA534();
          sub_19A6225AC(v15);

          v35 = OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_lastTouch;
          v36 = *(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_lastTouch);
          if (v36 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
          {
            v38 = Strong;
            v39 = v36;
            sub_19A611234(v39);
            sub_19A60126C(v30);
          }

          else
          {
            sub_19A60126C(v30);
          }

          v56 = *(v2 + v35);
          *(v2 + v35) = 0;
        }

        else
        {
          sub_19A60126C(v30);
        }
      }
    }
  }
}

uint64_t sub_19A63B710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x1EEE6DFA0](sub_19A63B730, 0, 0);
}

uint64_t sub_19A63B730()
{
  sub_19A7AAB34();
  v0[8] = sub_19A7AAB24();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_19A63B7E0;
  v3 = v0[6];
  v2 = v0[7];

  return MEMORY[0x1EEE42808](v3, v2);
}

uint64_t sub_19A63B7E0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_19A63BC78;
  }

  else
  {

    v2 = sub_19A63B8FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A63B8FC()
{
  *(v0 + 88) = sub_19A7AB354();
  *(v0 + 96) = sub_19A7AB344();
  v2 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A63B994, v2, v1);
}

uint64_t sub_19A63B994()
{

  if (qword_1EAFCB500 != -1)
  {
    swift_once();
  }

  v1 = sub_19A7A9384();
  *(v0 + 104) = __swift_project_value_buffer(v1, qword_1EAFCCBA8);

  return MEMORY[0x1EEE6DFA0](sub_19A63BA44, 0, 0);
}

uint64_t sub_19A63BA44()
{
  *(v0 + 112) = sub_19A7AB344();
  v2 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A63BAD0, v2, v1);
}

uint64_t sub_19A63BAD0()
{

  return MEMORY[0x1EEE6DFA0](sub_19A63BB38, 0, 0);
}

uint64_t sub_19A63BB38()
{
  v10 = v0;

  v1 = sub_19A7A9364();
  v2 = sub_19A7AB574();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_19A62540C(v4, v3, &v9);
    _os_log_impl(&dword_19A5EE000, v1, v2, "Did record engagement for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x19A907A30](v6, -1, -1);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_19A63BC78()
{

  *(v0 + 120) = sub_19A7AB354();
  *(v0 + 128) = sub_19A7AB344();
  v2 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A63BD18, v2, v1);
}

uint64_t sub_19A63BD18()
{

  if (qword_1EAFCB500 != -1)
  {
    swift_once();
  }

  v1 = sub_19A7A9384();
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_1EAFCCBA8);

  return MEMORY[0x1EEE6DFA0](sub_19A63BDC8, 0, 0);
}

uint64_t sub_19A63BDC8()
{
  *(v0 + 144) = sub_19A7AB344();
  v2 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A63BE54, v2, v1);
}

uint64_t sub_19A63BE54()
{

  return MEMORY[0x1EEE6DFA0](sub_19A63BEBC, 0, 0);
}

uint64_t sub_19A63BEBC()
{
  v17 = v0;
  v1 = v0[10];

  v2 = v1;
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB584();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v7 = v0[6];
    v6 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_19A62540C(v7, v6, &v16);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = sub_19A7AC124();
    v12 = sub_19A62540C(v10, v11, &v16);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_19A5EE000, v3, v4, "Could not record engagement for %s. %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A907A30](v9, -1, -1);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  else
  {
    v13 = v0[10];
  }

  v14 = v0[1];

  return v14();
}

id sub_19A63C11C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A63C1D8()
{
  result = type metadata accessor for DraggableLabel(319);
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

void sub_19A63C2D8()
{
  sub_19A63C450();
  if (v0 <= 0x3F)
  {
    sub_19A63C560(319, &qword_1EAFCA810, &qword_1EAFCCBE8, &unk_19A7B8660, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_19A63C560(319, &qword_1EAFCA808, qword_1EAFCEEB0, &unk_19A7B9800, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_19A63C4A8();
        if (v3 <= 0x3F)
        {
          sub_19A63C4F8();
          if (v4 <= 0x3F)
          {
            sub_19A63C560(319, &qword_1EAFCA3D0, &qword_1EAFCCBF0, &unk_19A7B8670, MEMORY[0x1E69E6720]);
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

void sub_19A63C450()
{
  if (!qword_1EAFCA818)
  {
    sub_19A7A9FF4();
    v0 = sub_19A7A97F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA818);
    }
  }
}

void sub_19A63C4A8()
{
  if (!qword_1EAFCA640)
  {
    v0 = sub_19A7AA564();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA640);
    }
  }
}

void sub_19A63C4F8()
{
  if (!qword_1EAFCA530)
  {
    sub_19A5F5028(255, &unk_1EAFCA538);
    v0 = sub_19A7ABA94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA530);
    }
  }
}

void sub_19A63C560(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DragState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DragState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_19A63C664(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_19A63C67C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_19A63C6C0@<X0>(void *a1@<X8>)
{
  result = sub_19A63A998();
  *a1 = result;
  return result;
}

uint64_t sub_19A63C6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A63C928(&qword_1EAFCAF20, type metadata accessor for DraggableLabel);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_19A63C77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A63C928(&qword_1EAFCAF20, type metadata accessor for DraggableLabel);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_19A63C810()
{
  sub_19A63C928(&qword_1EAFCAF20, type metadata accessor for DraggableLabel);
  sub_19A7A9D24();
  __break(1u);
}

uint64_t sub_19A63C8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DraggableLabel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A63C914(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_19A63C928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A63C970@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_19A7A9B34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_19A60F0CC(v2, &v14 - v9, &qword_1EAFCC558);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A9FF4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_19A7AB594();
    v13 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_19A63CB70()
{
  v1 = sub_19A7A9FF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7A9B34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NonDraggableLabel(0);
  v10 = (v0 + *(v9 + 20));
  v11 = *v10;
  v12 = *(v10 + 8);

  if ((v12 & 1) == 0)
  {
    sub_19A7AB594();
    v13 = sub_19A7A9EB4();
    v27[0] = v5;
    v14 = v2;
    v15 = v1;
    v16 = v13;
    sub_19A7A9324();

    v1 = v15;
    v2 = v14;
    sub_19A7A9B24();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v6 + 8))(v8, v27[0]);
    v11 = v27[1];
  }

  if (v11)
  {
    sub_19A63C970(v4);
    v17 = sub_19A7A9F64();
    (*(v2 + 8))(v4, v1);
    v18 = *(v0 + *(v9 + 28));
    if (v18)
    {
      v19 = v18;
      Size = CTFontGetSize(v17);
      v21 = [objc_opt_self() fontWithDescriptor:v19 size:Size];
LABEL_10:
      v26 = v21;

      return v26;
    }

    v24 = CTFontCopyName(v17, *MEMORY[0x1E6965830]);
    if (v24)
    {
      v19 = v24;
      v25 = CTFontGetSize(v17);
      v21 = [objc_opt_self() fontWithName:v19 size:v25];
      goto LABEL_10;
    }
  }

  else
  {
    v22 = *(v0 + *(v9 + 28));
    if (v22)
    {
      return [objc_opt_self() fontWithDescriptor:v22 size:32.0];
    }
  }

  return 0;
}

char *sub_19A63CE9C()
{
  type metadata accessor for DraggableUILabel();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = (v0 + *(type metadata accessor for NonDraggableLabel(0) + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = &v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text];
  v6 = *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text];
  v7 = *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text + 8];
  *v5 = v3;
  *(v5 + 1) = v4;
  v8 = v1;

  sub_19A60FCB8(v6, v7);

  v9 = sub_19A63CB70();
  v10 = v8;
  if (v9)
  {
    v11 = v9;
    v12 = sub_19A63CB70();
    v13 = *&v8[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font];
    *&v8[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font] = v12;
    v14 = v12;

    if (v12)
    {
      v15 = *&v8[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel];
      v16 = v14;
      v17 = v15;
      [v17 setFont_];
    }

    v10 = v11;
  }

  return v8;
}

void sub_19A63CFC8(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for NonDraggableLabel(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = (a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text);
  v7 = *(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text);
  v8 = *(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text + 8);
  *v6 = v5;
  v6[1] = v4;

  sub_19A60FCB8(v7, v8);

  v9 = sub_19A63CB70();
  if (v9)
  {
    v10 = *(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font);
    *(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font) = v9;
    v11 = v9;

    [*(a1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel) setFont_];
  }
}

uint64_t sub_19A63D0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A63C928(&qword_1EAFCCC28, type metadata accessor for NonDraggableLabel);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_19A63D188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A63C928(&qword_1EAFCCC28, type metadata accessor for NonDraggableLabel);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_19A63D21C()
{
  sub_19A63C928(&qword_1EAFCCC28, type metadata accessor for NonDraggableLabel);
  sub_19A7A9D24();
  __break(1u);
}

void sub_19A63D274(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x19A906040](a1, a2, v7);
      sub_19A5F5028(0, &qword_1EAFCCC08);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_19A5F5028(0, &qword_1EAFCCC08);
    if (sub_19A7ABBC4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_19A7ABBD4();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_19A7AB914();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_19A7AB924();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

BOOL sub_19A63D498(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      if (a1 | a2)
      {
        if (a1 ^ 1 | a2)
        {
          if (a6 == 2 && a4 == 2 && *&a5 == 0.0)
          {
            return 1;
          }
        }

        else if (a6 == 2 && a4 == 1 && *&a5 == 0.0)
        {
          return 1;
        }
      }

      else if (a6 == 2 && !(a5 | a4))
      {
        return 1;
      }

      return 0;
    }

    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  return *&a2 == *&a5 && *&a1 == *&a4;
}

void sub_19A63D55C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - v5;
  v7 = type metadata accessor for DraggableLabel(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A63C8B0(v2 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_control, v10);
  v11 = &v10[*(v8 + 40)];
  v12 = *(v11 + 1);
  v13 = v11[32];
  v24 = *v11;
  v25 = v12;
  v26 = *(v11 + 1);
  v27 = v13;
  v22[0] = 0;
  v22[1] = 0;
  v23 = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCC00);
  sub_19A7AA534();
  sub_19A6225AC(v10);

  if (a1 == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text);
      v15 = *(Strong + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text + 8);
      v17 = Strong;

      if (v15)
      {
        v18 = sub_19A7AAFE4();
        IsSingleEmoji = CEMStringIsSingleEmoji();

        if (IsSingleEmoji)
        {
          v20 = sub_19A7AB394();
          (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
          v21 = swift_allocObject();
          v21[2] = 0;
          v21[3] = 0;
          v21[4] = v16;
          v21[5] = v15;
          sub_19A755944(0, 0, v6, &unk_19A7B87C8, v21);

          sub_19A5F2B54(v6, &unk_1EAFCD690);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_19A63D7D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A60F860;

  return sub_19A63B710(a1, v4, v5, v7, v6);
}

unint64_t sub_19A63D890()
{
  result = qword_1EAFCCC10;
  if (!qword_1EAFCCC10)
  {
    sub_19A5F5028(255, &qword_1EAFCCC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCC10);
  }

  return result;
}

uint64_t sub_19A63D8F8(uint64_t a1)
{
  v2 = sub_19A69C364(MEMORY[0x1E69E7CC0]);
  if (a1)
  {
    v3 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v37 = a1 + 64;
    v38 = a1;
    while (v6)
    {
      v11 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v6)) | (v11 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);
      v17 = v16;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = sub_19A6955C0(v15, v14);
      v21 = v2[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_32;
      }

      v25 = v20;
      if (v2[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v19;
          sub_19A6993E0();
          v19 = v30;
        }
      }

      else
      {
        sub_19A696A88(v24, isUniquelyReferenced_nonNull_native);
        v19 = sub_19A6955C0(v15, v14);
        if ((v25 & 1) != (v26 & 1))
        {
          result = sub_19A7AC0C4();
          __break(1u);
          return result;
        }
      }

      v6 &= v6 - 1;
      if (v25)
      {
        v9 = v2[7];
        v10 = *(v9 + 8 * v19);
        *(v9 + 8 * v19) = v16;
      }

      else
      {
        v2[(v19 >> 6) + 8] |= 1 << v19;
        v27 = (v2[6] + 16 * v19);
        *v27 = v15;
        v27[1] = v14;
        *(v2[7] + 8 * v19) = v16;
        v28 = v2[2];
        v23 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v23)
        {
          goto LABEL_33;
        }

        v2[2] = v29;
      }

      v8 = v11;
      v3 = v37;
      a1 = v38;
    }

    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        goto LABEL_22;
      }

      v6 = *(v3 + 8 * v11);
      ++v8;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_22:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v32 = *(Strong + OBJC_IVAR____TtC10StickerKit16DraggableUILabel_usageSource + 8), v33 = Strong, , v33, !v32))
    {
    }

    v34 = sub_19A7AAFE4();

    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A64FE0C(v34, 0x756F536567617355, 0xEB00000000656372, v35);
    v11 = v2;
    if (qword_1EAFCAD68 == -1)
    {
      goto LABEL_26;
    }
  }

  swift_once();
LABEL_26:
  if (qword_1EAFCB558 != -1)
  {
    swift_once();
  }

  sub_19A661F84(qword_1EAFDD6C8, 0x6567617355, 0xE500000000000000, 0, 0, 0, 0, 2, 0, 1, v11);
}

void sub_19A63DC84(uint64_t a1)
{
  v2 = sub_19A639A5C(a1);
  v3 = OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_lastTouch;
  v4 = *(v1 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_lastTouch);
  *(v1 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_lastTouch) = v2;

  v5 = *(v1 + v3);
  if (v5)
  {
    [v5 locationInView_];
    v8 = CGPointMake(v6 - *(v1 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_beginPoint), v7 - *(v1 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_beginPoint + 8));
    v9 = (v1 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_translation);
    *v9 = v8;
    v9[1] = v10;
    v11 = fabs(v10);
    if (fabs(v8) > 10.0 || v11 > 10.0)
    {
      *(v1 + OBJC_IVAR____TtCV10StickerKit14DraggableLabel11Coordinator_hasMoved) = 1;
    }
  }
}

uint64_t sub_19A63DD24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_19A63DD78()
{
  sub_19A63C450();
  if (v0 <= 0x3F)
  {
    sub_19A63C560(319, &qword_1EAFCA810, &qword_1EAFCCBE8, &unk_19A7B8660, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_19A63C4F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_19A63DED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v5 = *(v3 + 96);
  *a2 = *(v3 + 88);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_19A63DF88()
{
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90B4();
}

uint64_t sub_19A63E05C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_19A63E12C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  v5 = *(v3 + 80);
  *a2 = *(v3 + 72);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_19A63E1DC()
{
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90B4();
}

void sub_19A63E2B0()
{
  *&xmmword_1EAFDD5D0 = 0;
  *(&xmmword_1EAFDD5D0 + 1) = 0xE000000000000000;
  qword_1EAFDD5E0 = 0;
  unk_1EAFDD5E8 = 0xE000000000000000;
  xmmword_1EAFDD5F0 = 0uLL;
  word_1EAFDD600 = 254;
}

uint64_t sub_19A63E2D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v3 = *(v1 + 72);
  v8[0] = *(v1 + 56);
  v8[1] = v3;
  v9 = *(v1 + 88);
  v4 = v9;
  v10 = *(v1 + 104);
  v5 = v10;
  *a1 = v8[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return sub_19A60F01C(v8, v7);
}

uint64_t sub_19A63E3A8()
{
  sub_19A63E5F0();
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90B4();

  sub_19A63E724();
  swift_getKeyPath();
  sub_19A7A90C4();

  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90B4();
}

uint64_t sub_19A63E5F0()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for VariantSelectorViewModel(0);
    swift_allocObject();
    v1 = sub_19A6342B0();
    *(v1 + 24) = &off_1F0DC6B80;
    swift_unknownObjectWeakAssign();
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_19A63E680()
{
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  return *(v0 + 32);
}

uint64_t sub_19A63E724()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    type metadata accessor for FamilyVariantSelectorPopupViewModel(0);
    swift_allocObject();
    v1 = sub_19A61CB38();
    *(v1 + 24) = &off_1F0DC6B70;
    swift_unknownObjectWeakAssign();
    *(v2 + 136) = v1;
  }

  return v1;
}

uint64_t sub_19A63E7B4(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  return sub_19A63E3A8();
}

uint64_t sub_19A63E7E8()
{
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  return *(v0 + 41);
}

uint64_t sub_19A63E888(uint64_t result)
{
  if (*(v1 + 41) == (result & 1))
  {
    *(v1 + 41) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
    sub_19A7A90B4();
  }

  return result;
}

double sub_19A63E9A0()
{
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  return *(v0 + 48);
}

void sub_19A63EA40(double a1)
{
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
    sub_19A7A90B4();
  }
}

uint64_t sub_19A63EB60()
{
  sub_19A63E5F0();
  swift_getKeyPath();
  *&v11 = v0;
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v11 = *(v0 + 56);
  v1 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = v1;
  v14 = *(v0 + 104);
  sub_19A7862FC(0);
  sub_19A633100(v2, v3);

  v4 = sub_19A63ED14();
  sub_19A6333B0(v4);

  sub_19A63E724();
  swift_getKeyPath();
  *&v11 = v0;
  sub_19A7A90C4();

  v11 = *(v0 + 56);
  v5 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = v5;
  v14 = *(v0 + 104);
  v6 = *(v0 + 72);
  v9[0] = *(v0 + 56);
  v9[1] = v6;
  v9[2] = *(v0 + 88);
  v10 = *(v0 + 104);
  sub_19A60F01C(&v11, v8);
  sub_19A61AF98(v9);
}

char *sub_19A63ED14()
{
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v1 = *(v0 + 104);
  v2 = MEMORY[0x1E69E7CC0];
  if ((v1 & 0x80000000) == 0)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v3 + 16);
    if (v5)
    {
      v15 = *(v0 + 96);
      sub_19A60EF28(v3, v4, v1);
      sub_19A65AD48(0, v5, 0);
      v6 = (v3 + 40);
      do
      {
        v8 = *(v6 - 1);
        v7 = *v6;
        v10 = *(v2 + 2);
        v9 = *(v2 + 3);
        v11 = v10 + 1;

        if (v10 >= v9 >> 1)
        {
          sub_19A65AD48((v9 > 1), v10 + 1, 1);
        }

        *(v2 + 2) = v11;
        v12 = &v2[16 * v10];
        *(v12 + 4) = v8;
        *(v12 + 5) = v7;
        v6 += 2;
        --v5;
      }

      while (v5);
      v4 = v15;
      if (v11 <= 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_19A60EF28(v3, v4, v1);
      v11 = *(v2 + 2);
      if (v11 <= 1)
      {
LABEL_14:
        sub_19A60EF74(v3, v4, v1);
        return v2;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v11 >= *(v2 + 3) >> 1)
    {
      v2 = sub_19A76BF90(isUniquelyReferenced_nonNull_native, v11 + 1, 1, v2);
    }

    sub_19A642248(1uLL, 1, 1, 0, 0);
    goto LABEL_14;
  }

  return v2;
}

uint64_t sub_19A63EF04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v9[0] = v3;
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v4 = *(v3 + 72);
  v9[0] = *(v3 + 56);
  v9[1] = v4;
  v10 = *(v3 + 88);
  v5 = v10;
  v11 = *(v3 + 104);
  v6 = v11;
  *a2 = v9[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  return sub_19A60F01C(v9, v8);
}

uint64_t sub_19A63EFD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  sub_19A60F01C(v5, v4);
  return sub_19A63F030(a1);
}

uint64_t sub_19A63F030(__int128 *a1)
{
  v2 = a1[1];
  v16 = *a1;
  v17 = v2;
  v4 = *a1;
  v3 = a1[1];
  v18 = a1[2];
  v5 = *(v1 + 72);
  v12 = *(v1 + 56);
  v13 = v5;
  v14 = *(v1 + 88);
  v19 = *(a1 + 24);
  v15 = *(v1 + 104);
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = a1[2];
  v11 = *(a1 + 24);
  if (_s10StickerKit5EmojiV2eeoiySbAC_ACtFZ_0(&v12, v10))
  {
    v6 = *(v1 + 72);
    v12 = *(v1 + 56);
    v13 = v6;
    v14 = *(v1 + 88);
    v7 = v17;
    *(v1 + 56) = v16;
    v15 = *(v1 + 104);
    *(v1 + 72) = v7;
    *(v1 + 88) = v18;
    *(v1 + 104) = v19;
    sub_19A60F078(&v12);
    return sub_19A63EB60();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v12 = v1;
    sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
    sub_19A7A90B4();
    sub_19A60F078(&v16);
  }
}

uint64_t sub_19A63F1D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a1 + 56) = *a2;
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  *(a1 + 72) = v2;
  *(a1 + 88) = *(a2 + 32);
  v5 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 48);
  sub_19A60F01C(a2, v7);

  sub_19A60EF74(v3, v4, v5);
  return sub_19A63EB60();
}

uint64_t sub_19A63F27C()
{
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_19A63F32C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v4 = *(v3 + 120);
  *a2 = *(v3 + 112);
  a2[1] = v4;
}

uint64_t sub_19A63F3D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_19A63F418(v1, v2);
}

uint64_t sub_19A63F418(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 112) == a1 && v5 == a2;
      if (v6 || (sub_19A7AC064() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
    sub_19A7A90B4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t sub_19A63F588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
}

uint64_t sub_19A63F5C4()
{
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v1 = *(v0 + 104);
  if (v1 > 0xFD)
  {
    return 0;
  }

  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_19A60EF28(v3, v4, v1);
  if ((v1 & 0x80) != 0)
  {
    v7 = sub_19A63E724();
    swift_getKeyPath();
    sub_19A642C10(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
    sub_19A7A90C4();
    sub_19A60EF74(v3, v4, v1);

    v6 = (v7 + 154);
  }

  else
  {
    v5 = sub_19A63E5F0();
    swift_getKeyPath();
    sub_19A642C10(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
    sub_19A7A90C4();
    sub_19A60EF74(v3, v4, v1);

    v6 = (v5 + 65);
  }

  v2 = *v6;

  return v2;
}

uint64_t sub_19A63F7BC(char a1)
{
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v4 = *(v1 + 104);
  if (v4 <= 0xFD)
  {
    v6 = *(v1 + 88);
    v5 = *(v1 + 96);
    sub_19A60EF28(v6, v5, v4);
    if ((v4 & 0x80) != 0)
    {
      sub_19A63E724();
      sub_19A61B7D4(a1 & 1);

      return sub_19A60EF74(v6, v5, v4);
    }

    else
    {
      v7 = sub_19A63E5F0();
      if (*(v7 + 65) == (a1 & 1))
      {
        sub_19A60EF74(v6, v5, v4);
        *(v7 + 65) = a1 & 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_19A642C10(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
        sub_19A7A90B4();
        sub_19A60EF74(v6, v5, v4);
      }
    }
  }

  return result;
}

uint64_t sub_19A63F9D4@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_19A63E5F0();
  swift_getKeyPath();
  *&v22[0] = v10;
  sub_19A642C10(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  v11 = *(v10 + 56);
  v12 = *(v10 + 64);

  if (v12)
  {
    a3 = 1;
LABEL_8:
    swift_getKeyPath();
    *&v22[0] = v5;
    sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
    sub_19A7A90C4();

    v15 = *(v5 + 88);
    v16 = *(v5 + 104);
    v23 = v16;
    v18 = *(v5 + 72);
    v22[0] = *(v5 + 56);
    v17 = v22[0];
    v22[1] = v18;
    v22[2] = v15;
    v19 = v15;
    *(a4 + 48) = v16;
    *a4 = v17;
    *(a4 + 16) = v18;
    *(a4 + 32) = v15;
    v20 = v16;
    sub_19A60F01C(v22, v21);

    result = sub_19A60EF74(v19, *(&v19 + 1), v20);
    *(a4 + 32) = a1;
    *(a4 + 40) = v11;
    *(a4 + 48) = a3 & 1;
    return result;
  }

  result = sub_19A63ED14();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(result + 16))
  {
    v14 = *(result + 16 * v11 + 40);

    if (v14)
    {

      a3 = 0;
      v11 -= v11 > 1;
    }

    else
    {
      v11 = a2;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A63FBE0()
{
  sub_19A601244(v0 + 16);
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  sub_19A60EF74(v1, v2, v3);

  v4 = OBJC_IVAR____TtC10StickerKit18EmojiCellViewModel___observationRegistrar;
  v5 = sub_19A7A9104();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmojiCellViewModel()
{
  result = qword_1EAFCADA0;
  if (!qword_1EAFCADA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A63FD2C()
{
  result = sub_19A7A9104();
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

uint64_t sub_19A63FE08()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  *(v0 + 40) = 256;
  *(v0 + 48) = 0x4043000000000000;
  if (qword_1EAFCADC8 != -1)
  {
    swift_once();
  }

  v1 = *&qword_1EAFDD5E0;
  v6[0] = xmmword_1EAFDD5D0;
  v6[1] = *&qword_1EAFDD5E0;
  v2 = xmmword_1EAFDD5F0;
  v6[2] = xmmword_1EAFDD5F0;
  v3 = word_1EAFDD600;
  v7 = word_1EAFDD600;
  *(v0 + 56) = xmmword_1EAFDD5D0;
  *(v0 + 72) = v1;
  *(v0 + 88) = v2;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  sub_19A60F01C(v6, v5);
  sub_19A7A90F4();
  return v0;
}

uint64_t sub_19A63FED8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v4 = *(v3 + 64);
  *a1 = *(v3 + 56);
  a1[1] = v4;
}

id sub_19A63FFF8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for NoDelayTapGesture.Coordinator()) init];
  *a1 = result;
  return result;
}

id sub_19A640040(void *a1)
{
  v2 = *(v1 + 8);
  result = [a1 state];
  if (result == 3)
  {
    return v2();
  }

  return result;
}

uint64_t sub_19A64007C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCD0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCD8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  if (a1)
  {
    sub_19A7AA294();
    v10 = sub_19A7AA2F4();

    sub_19A60F0CC(v2, v9, &qword_1EAFCCC98);
    v11 = &v9[*(v7 + 36)];
    *v11 = v10;
    __asm { FMOV            V0.2D, #3.0 }

    *(v11 + 8) = _Q0;
    *(v11 + 3) = 0;
    sub_19A60F0CC(v9, v6, &qword_1EAFCCCD8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCC98);
    sub_19A6427DC();
    sub_19A642868();
    sub_19A7A9D64();
    return sub_19A5F2B54(v9, &qword_1EAFCCCD8);
  }

  else
  {
    sub_19A60F0CC(v2, v6, &qword_1EAFCCC98);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCC98);
    sub_19A6427DC();
    sub_19A642868();
    return sub_19A7A9D64();
  }
}

uint64_t sub_19A6402C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCC90);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v29 - v8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCC98) - 8;
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v29 - v10;
  *v9 = sub_19A7AA654();
  v9[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCA0);
  sub_19A64077C(a1, a2, v9 + *(v12 + 44));
  KeyPath = swift_getKeyPath();
  v33 = a1;
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCA8);
  sub_19A7AA464();
  v14 = v36;
  swift_getKeyPath();
  v33 = v14;
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v16 = *(v14 + 112);
  v15 = *(v14 + 120);

  v17 = (v9 + *(v7 + 36));
  *v17 = KeyPath;
  v17[1] = v16;
  v17[2] = v15;
  v33 = a1;
  v34 = a2;
  sub_19A7AA464();
  v18 = v36;
  swift_getKeyPath();
  v33 = v18;
  sub_19A7A90C4();

  LOBYTE(v15) = *(v18 + 41);

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  LOBYTE(v33) = v15;
  v34 = sub_19A64269C;
  v35 = v19;
  sub_19A6426A4();
  sub_19A642788();

  v20 = v29;
  sub_19A7AA1E4();

  sub_19A5F2B54(v9, &qword_1EAFCCC90);
  v33 = a1;
  v34 = a2;
  sub_19A7AA464();
  v21 = v36;
  swift_getKeyPath();
  v33 = v21;
  sub_19A7A90C4();

  v22 = sub_19A7A9F84();
  v23 = v31;
  (*(*(v22 - 8) + 56))(v31, 1, 1, v22);
  v24 = sub_19A7A9FC4();
  sub_19A5F2B54(v23, &qword_1EAFCFFF0);
  v25 = swift_getKeyPath();
  v26 = (v20 + *(v30 + 44));
  *v26 = v25;
  v26[1] = v24;
  v33 = a1;
  v34 = a2;
  sub_19A7AA464();
  v27 = v36;
  swift_getKeyPath();
  v33 = v27;
  sub_19A7A90C4();

  LOBYTE(v23) = *(v27 + 105);

  sub_19A64007C(v23);
  return sub_19A5F2B54(v20, &qword_1EAFCCC98);
}

uint64_t sub_19A64077C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v147 = &v131 - v6;
  v146 = type metadata accessor for FamilyVariantSelectorPopupView(0);
  MEMORY[0x1EEE9AC00](v146);
  v133 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCE0);
  v134 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v139 = &v131 - v8;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCE8);
  MEMORY[0x1EEE9AC00](v150);
  v152 = &v131 - v9;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCF0);
  MEMORY[0x1EEE9AC00](v142);
  v144 = &v131 - v10;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCF8);
  MEMORY[0x1EEE9AC00](v151);
  v145 = &v131 - v11;
  v156 = type metadata accessor for VariantSelectorView(0);
  v12 = MEMORY[0x1EEE9AC00](v156);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v140 = &v131 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v131 - v17;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCD00);
  v137 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v136 = &v131 - v19;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCD08);
  v138 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v148 = &v131 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCCD10);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v153 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v131 - v24;
  v26 = a1;
  *&v161 = a1;
  *(&v161 + 1) = a2;
  v27 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCA8);
  sub_19A7AA464();
  v29 = v157;
  swift_getKeyPath();
  *&v161 = v29;
  v155 = sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v31 = *(v29 + 88);
  v30 = *(v29 + 96);
  v32 = *(v29 + 104);
  sub_19A60EF14(v31, v30, *(v29 + 104));

  if (v32 <= 0xFD)
  {
    v33 = v27;
    v140 = v25;
    v135 = v28;
    v132 = v26;
    if ((v32 & 0x80) != 0)
    {

      *&v161 = v26;
      *(&v161 + 1) = v27;
      sub_19A7AA464();
      v78 = sub_19A63E724();

      *&v161 = v26;
      *(&v161 + 1) = v27;
      sub_19A7AA464();
      v79 = v157;
      swift_getKeyPath();
      *&v161 = v79;
      sub_19A7A90C4();

      v80 = *(v79 + 40);

      KeyPath = swift_getKeyPath();
      v82 = v146;
      v83 = v133;
      *&v133[*(v146 + 36)] = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
      swift_storeEnumTagMultiPayload();
      *&v157 = v78;
      type metadata accessor for FamilyVariantSelectorPopupViewModel(0);
      sub_19A7AA454();
      v84 = *(&v161 + 1);
      *v83 = v161;
      *(v83 + 8) = v84;
      *(v83 + 16) = vdupq_n_s64(0x4043000000000000uLL);
      *(v83 + 32) = 0x4018000000000000;
      *(v83 + 40) = (v80 & 1) == 0;
      v157 = 0uLL;
      LOBYTE(v158) = 2;
      sub_19A7AA454();
      v85 = v162;
      v86 = v163;
      *(v83 + 48) = v161;
      *(v83 + 64) = v85;
      *(v83 + 72) = v86;
      *&v161 = v26;
      *(&v161 + 1) = v27;
      sub_19A7AA464();
      v87 = sub_19A63E724();

      swift_getKeyPath();
      *&v161 = v87;
      sub_19A642C10(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
      sub_19A7A90C4();

      v88 = *(v87 + 154);

      LOBYTE(v161) = v88;
      v89 = swift_allocObject();
      *(v89 + 16) = v26;
      *(v89 + 24) = v27;
      v148 = sub_19A642C10(&qword_1EAFCABD0, type metadata accessor for FamilyVariantSelectorPopupView);

      v90 = MEMORY[0x1E69E6370];
      v91 = v139;
      sub_19A7AA234();

      sub_19A642CD8(v83, type metadata accessor for FamilyVariantSelectorPopupView);
      v92 = v134;
      (*(v134 + 16))(v144, v91, v149);
      swift_storeEnumTagMultiPayload();
      v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCD20);
      v94 = sub_19A642C10(&qword_1EAFCAD80, type metadata accessor for VariantSelectorView);
      v95 = sub_19A642B94();
      *&v161 = v156;
      *(&v161 + 1) = v93;
      v162 = v94;
      v163 = v95;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v161 = v141;
      *(&v161 + 1) = v90;
      v162 = OpaqueTypeConformance2;
      v97 = MEMORY[0x1E69E6388];
      v163 = MEMORY[0x1E69E6388];
      swift_getOpaqueTypeConformance2();
      *&v161 = v82;
      *(&v161 + 1) = v90;
      v162 = v148;
      v163 = v97;
      swift_getOpaqueTypeConformance2();
      v98 = v145;
      v99 = v149;
      sub_19A7A9D64();
      sub_19A60F0CC(v98, v152, &qword_1EAFCCCF8);
      swift_storeEnumTagMultiPayload();
      sub_19A6429DC();
      v43 = v140;
      sub_19A7A9D64();
      v44 = v132;
      sub_19A5F2B54(v98, &qword_1EAFCCCF8);
      (*(v92 + 8))(v139, v99);
    }

    else
    {
      v45 = v26;
      *&v161 = v26;
      *(&v161 + 1) = v33;
      v46 = v33;
      v139 = v30;
      sub_19A7AA464();
      v47 = sub_19A63E5F0();

      *&v161 = v26;
      *(&v161 + 1) = v33;
      sub_19A7AA464();
      v48 = v157;
      swift_getKeyPath();
      *&v161 = v48;
      sub_19A7A90C4();

      v49 = *(v48 + 40);

      if (sub_19A7AA624())
      {
        v50 = 10.0;
      }

      else
      {
        v50 = 6.0;
      }

      *&v18[*(v156 + 60)] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
      swift_storeEnumTagMultiPayload();
      *&v157 = v47;
      type metadata accessor for VariantSelectorViewModel(0);
      sub_19A7AA454();
      v51 = *(&v161 + 1);
      *v18 = v161;
      *(v18 + 1) = v51;
      *(v18 + 1) = xmmword_19A7B88E0;
      *(v18 + 2) = xmmword_19A7B88F0;
      *(v18 + 3) = xmmword_19A7B8900;
      *(v18 + 4) = xmmword_19A7B8910;
      *(v18 + 10) = v50;
      v18[88] = (v49 & 1) == 0;
      *(v18 + 12) = 0x4039000000000000;
      v157 = 0uLL;
      LOBYTE(v158) = 2;
      sub_19A7AA454();
      v52 = v162;
      v53 = v163;
      *(v18 + 104) = v161;
      v18[120] = v52;
      *(v18 + 16) = v53;
      *&v157 = 0;
      BYTE8(v157) = 1;
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCD20);
      sub_19A7AA454();
      v54 = BYTE8(v161);
      v55 = v162;
      *(v18 + 17) = v161;
      v18[144] = v54;
      *(v18 + 19) = v55;
      *&v161 = v26;
      *(&v161 + 1) = v46;
      sub_19A7AA464();
      v56 = sub_19A63E5F0();

      swift_getKeyPath();
      *&v161 = v56;
      sub_19A642C10(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
      sub_19A7A90C4();

      v57 = *(v56 + 56);
      v58 = *(v56 + 64);

      *&v161 = v57;
      BYTE8(v161) = v58;
      v59 = swift_allocObject();
      *(v59 + 16) = v45;
      *(v59 + 24) = v46;
      v60 = v139;
      *(v59 + 32) = v31;
      *(v59 + 40) = v60;
      *(v59 + 48) = v32 & 1;
      v61 = sub_19A642C10(&qword_1EAFCAD80, type metadata accessor for VariantSelectorView);
      v62 = sub_19A642B94();

      v63 = v136;
      v64 = v156;
      v65 = v61;
      v139 = v61;
      sub_19A7AA234();

      sub_19A642CD8(v18, type metadata accessor for VariantSelectorView);
      *&v161 = v45;
      *(&v161 + 1) = v46;
      sub_19A7AA464();
      v66 = sub_19A63E5F0();

      swift_getKeyPath();
      *&v161 = v66;
      sub_19A7A90C4();

      LOBYTE(v61) = *(v66 + 65);

      LOBYTE(v157) = v61;
      v67 = swift_allocObject();
      *(v67 + 16) = v45;
      *(v67 + 24) = v46;

      *&v161 = v64;
      *(&v161 + 1) = v134;
      v162 = v65;
      v163 = v62;
      v68 = swift_getOpaqueTypeConformance2();
      v69 = MEMORY[0x1E69E6370];
      v70 = MEMORY[0x1E69E6388];
      v71 = v148;
      v72 = v141;
      sub_19A7AA234();
      v33 = v46;

      (*(v137 + 8))(v63, v72);
      v73 = v138;
      v74 = v71;
      v75 = v143;
      (*(v138 + 16))(v144, v74, v143);
      swift_storeEnumTagMultiPayload();
      *&v161 = v72;
      *(&v161 + 1) = v69;
      v162 = v68;
      v163 = v70;
      swift_getOpaqueTypeConformance2();
      v76 = sub_19A642C10(&qword_1EAFCABD0, type metadata accessor for FamilyVariantSelectorPopupView);
      *&v161 = v146;
      *(&v161 + 1) = v69;
      v162 = v76;
      v163 = v70;
      swift_getOpaqueTypeConformance2();
      v77 = v145;
      sub_19A7A9D64();
      sub_19A60F0CC(v77, v152, &qword_1EAFCCCF8);
      swift_storeEnumTagMultiPayload();
      sub_19A6429DC();
      v43 = v140;
      v44 = v132;
      sub_19A7A9D64();
      sub_19A5F2B54(v77, &qword_1EAFCCCF8);
      (*(v73 + 8))(v148, v75);
    }
  }

  else
  {
    *&v161 = v26;
    *(&v161 + 1) = v27;
    v33 = v27;
    sub_19A7AA464();
    v34 = sub_19A63E5F0();

    if (sub_19A7AA624())
    {
      v35 = 10.0;
    }

    else
    {
      v35 = 6.0;
    }

    *&v14[*(v156 + 60)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
    swift_storeEnumTagMultiPayload();
    *&v157 = v34;
    type metadata accessor for VariantSelectorViewModel(0);
    sub_19A7AA454();
    v36 = *(&v161 + 1);
    *v14 = v161;
    *(v14 + 1) = v36;
    *(v14 + 1) = xmmword_19A7B88E0;
    *(v14 + 2) = xmmword_19A7B88F0;
    *(v14 + 3) = xmmword_19A7B8900;
    *(v14 + 4) = xmmword_19A7B8910;
    *(v14 + 10) = v35;
    v14[88] = 1;
    *(v14 + 12) = 0x4039000000000000;
    v157 = 0uLL;
    LOBYTE(v158) = 2;
    sub_19A7AA454();
    v37 = v162;
    v38 = v163;
    *(v14 + 104) = v161;
    v14[120] = v37;
    *(v14 + 16) = v38;
    *&v157 = 0;
    BYTE8(v157) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCD20);
    sub_19A7AA454();
    v39 = BYTE8(v161);
    v40 = v162;
    *(v14 + 17) = v161;
    v14[144] = v39;
    *(v14 + 19) = v40;
    v41 = v14;
    v42 = v140;
    sub_19A642978(v41, v140);
    sub_19A638610(v42, v152);
    swift_storeEnumTagMultiPayload();
    sub_19A6429DC();
    sub_19A642C10(&qword_1EAFCAD80, type metadata accessor for VariantSelectorView);
    sub_19A7A9D64();
    sub_19A642CD8(v42, type metadata accessor for VariantSelectorView);
    v43 = v25;
    v44 = v26;
  }

  *&v161 = v44;
  *(&v161 + 1) = v33;
  sub_19A7AA464();
  v100 = v157;
  swift_getKeyPath();
  *&v161 = v100;
  sub_19A7A90C4();

  v101 = *(v100 + 105);

  if (v101 == 1)
  {
    sub_19A7A9F94();
    v102 = sub_19A7A9F84();
    v103 = v147;
    (*(*(v102 - 8) + 56))(v147, 1, 1, v102);
    sub_19A7A9FC4();
    sub_19A5F2B54(v103, &qword_1EAFCFFF0);
    v104 = sub_19A7AA074();
    v106 = v105;
    v108 = v107;

    *&v161 = sub_19A7AA294();
    v156 = sub_19A7AA054();
    v110 = v109;
    v112 = v111;
    v114 = v113;
    sub_19A642CC8(v104, v106, v108 & 1);

    sub_19A7AA744();
    v116 = v115;
    v118 = v117;
    LOBYTE(v161) = v112 & 1;
    v119 = (v112 & 1);
    v120 = 0xBFE921FB54442D18;
    v121 = 257;
  }

  else
  {
    v156 = 0;
    v110 = 0;
    v114 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v116 = 0;
    v118 = 0;
  }

  v122 = v43;
  v123 = v43;
  v124 = v153;
  sub_19A60F0CC(v122, v153, &unk_1EAFCCD10);
  v125 = v154;
  sub_19A60F0CC(v124, v154, &unk_1EAFCCD10);
  v126 = (v125 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCD28) + 48));
  v127 = v156;
  *&v157 = v156;
  *(&v157 + 1) = v110;
  *&v158 = v119;
  *(&v158 + 1) = v114;
  *&v159 = v121;
  *(&v159 + 1) = v120;
  *&v160 = v116;
  *(&v160 + 1) = v118;
  v128 = v158;
  *v126 = v157;
  v126[1] = v128;
  v129 = v160;
  v126[2] = v159;
  v126[3] = v129;
  sub_19A642C58(&v157, &v161);
  sub_19A5F2B54(v123, &unk_1EAFCCD10);
  *&v161 = v127;
  *(&v161 + 1) = v110;
  v162 = v119;
  v163 = v114;
  v164 = v121;
  v165 = v120;
  v166 = v116;
  v167 = v118;
  sub_19A5F2B54(&v161, &unk_1EAFCCD30);
  return sub_19A5F2B54(v124, &unk_1EAFCCD10);
}

uint64_t sub_19A641DB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCA8);
  sub_19A7AA464();
  sub_19A7AA464();
  *(&v11[0] + 1) = a2;
  sub_19A7AA464();
  v9 = sub_19A63E5F0();

  swift_getKeyPath();
  *&v11[0] = v9;
  sub_19A642C10(&qword_1EAFCAC60, type metadata accessor for VariantSelectorViewModel);
  sub_19A7A90C4();

  sub_19A63F9D4(a3, a4, a5 & 1, v11);

  sub_19A63F030(v11);
}

uint64_t sub_19A641F30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCA8);
  sub_19A7AA464();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v0 = *(v4 + 24);

  ObjectType = swift_getObjectType();
  sub_19A7AA464();
  sub_19A7AA464();
  v2 = sub_19A63F5C4();

  (*(v0 + 16))(v4, v2 & 1, ObjectType, v0);

  return swift_unknownObjectRelease();
}

uint64_t sub_19A64204C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCCA8);
  sub_19A7AA464();
  v3 = v9;
  *(&v13 + 1) = a2;
  sub_19A7AA464();
  swift_getKeyPath();
  *&v13 = v9;
  sub_19A642C10(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
  sub_19A7A90C4();

  v13 = *(v9 + 56);
  v4 = *(v9 + 88);
  v14 = *(v9 + 72);
  v15 = v4;
  v16 = *(v9 + 104);
  sub_19A60F01C(&v13, &v9);

  v9 = v13;
  v10 = v14;
  v11 = v15;
  v12 = v16;
  sub_19A60F01C(&v13, v8);
  sub_19A63F030(&v9);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
    (*(v5 + 8))(v3, &v9, 0, 1, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_19A60F078(&v13);
}

unint64_t sub_19A642248(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

double sub_19A64234C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

id sub_19A6423AC(uint64_t a1, char a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
  [v3 setCancelsTouchesInView_];
  [v3 setDelaysTouchesBegan_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCD48);
  sub_19A7A9EA4();
  [v3 setDelegate_];

  [v3 setEnabled_];
  return v3;
}

uint64_t sub_19A6424A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
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
  result = sub_19A7ABBE4();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_19A7ABBE4();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_19A6425AC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 112) = v0[3];
  *(v1 + 120) = v2;
}

uint64_t sub_19A6425EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_19A642634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A6426A4()
{
  result = qword_1EAFCA770;
  if (!qword_1EAFCA770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCC90);
    sub_19A623714(&qword_1EAFCA648, &unk_1EAFCCCB0);
    sub_19A623714(&qword_1EAFCA6B8, &unk_1EAFCCCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA770);
  }

  return result;
}

unint64_t sub_19A642788()
{
  result = qword_1EAFCAE58;
  if (!qword_1EAFCAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCAE58);
  }

  return result;
}

unint64_t sub_19A6427DC()
{
  result = qword_1EAFCA740;
  if (!qword_1EAFCA740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCCD8);
    sub_19A642868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA740);
  }

  return result;
}

unint64_t sub_19A642868()
{
  result = qword_1EAFCA788;
  if (!qword_1EAFCA788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCC98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCC90);
    sub_19A6426A4();
    sub_19A642788();
    swift_getOpaqueTypeConformance2();
    sub_19A623714(&unk_1EAFCA6C0, &qword_1EAFCC7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA788);
  }

  return result;
}

uint64_t sub_19A642978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariantSelectorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A6429DC()
{
  result = qword_1EAFCA6F8;
  if (!qword_1EAFCA6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCCF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCD00);
    type metadata accessor for VariantSelectorView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCD20);
    sub_19A642C10(&qword_1EAFCAD80, type metadata accessor for VariantSelectorView);
    sub_19A642B94();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for FamilyVariantSelectorPopupView(255);
    sub_19A642C10(&qword_1EAFCABD0, type metadata accessor for FamilyVariantSelectorPopupView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA6F8);
  }

  return result;
}

unint64_t sub_19A642B94()
{
  result = qword_1EAFCA588;
  if (!qword_1EAFCA588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA588);
  }

  return result;
}

uint64_t sub_19A642C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A642C58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCCD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A642CC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_19A642CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A642D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_19A642DAC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_19A642DFC()
{
  result = qword_1EAFCA708;
  if (!qword_1EAFCA708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCD40);
    sub_19A6427DC();
    sub_19A642868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA708);
  }

  return result;
}