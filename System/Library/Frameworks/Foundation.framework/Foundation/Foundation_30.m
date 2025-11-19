void Data._Representation.replaceSubrange(_:with:count:)(int64_t __n, uint64_t a2, char *__src, int64_t a4)
{
  v5 = v4;
  v68 = *MEMORY[0x1E69E9840];
  v9 = *v4;
  v8 = v4[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      v63 = __n;
      v64 = a2;
      outlined consume of Data._Representation(v9, v8);
      *__dst = v9;
      *&__dst[8] = v8;
      __dst[10] = BYTE2(v8);
      __dst[11] = BYTE3(v8);
      __dst[12] = BYTE4(v8);
      __dst[13] = BYTE5(v8);
      v12 = BYTE6(v8);
      v66 = BYTE6(v8);
      v13 = BYTE6(v8) + a4;
      if (!__OFADD__(BYTE6(v8), a4))
      {
        v14 = v64 - v63;
        if (!__OFSUB__(v64, v63))
        {
          v15 = __OFSUB__(v13, v14);
          v16 = v13 - v14;
          if (!v15)
          {
            if (v16)
            {
              if (v16 <= 14)
              {
                Data.InlineData.replaceSubrange(_:with:count:)(v63, v64, __src, a4);
                v18 = *__dst;
                v19 = *&__dst[8] | ((*&__dst[12] | (v66 << 16)) << 32);
              }

              else
              {
                *&v67 = *__dst;
                *(&v67 + 6) = *&__dst[6];
                if (v16 > 0x7FFFFFFE)
                {
                  type metadata accessor for __DataStorage();
                  v50 = swift_allocObject();
                  __DataStorage.init(bytes:length:)(&v67, v12);
                  type metadata accessor for Data.RangeReference();
                  v51 = swift_allocObject();
                  *(v51 + 16) = 0;
                  *(v51 + 24) = v12;
                  *&v67 = v51;
                  *(&v67 + 1) = v50;
                  Data.LargeSlice.replaceSubrange(_:with:count:)(v63, v64, __src, a4);
                  v18 = v67;
                  v19 = *(&v67 + 1) | 0x8000000000000000;
                }

                else
                {
                  type metadata accessor for __DataStorage();
                  v17 = swift_allocObject();
                  __DataStorage.init(bytes:length:)(&v67, v12);
                  LODWORD(v67) = 0;
                  DWORD1(v67) = v12;
                  *(&v67 + 1) = v17;
                  Data.InlineSlice.replaceSubrange(_:with:count:)(v63, v64, __src, a4);
                  v18 = v67;
                  v19 = *(&v67 + 1) | 0x4000000000000000;
                }
              }

              *v5 = v18;
              v5[1] = v19;
            }

            else
            {
              *v5 = xmmword_181234410;
            }

            return;
          }

          goto LABEL_87;
        }

        goto LABEL_84;
      }

      __break(1u);
      goto LABEL_81;
    }

    *&v67 = v9;
    *(&v67 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = v9 >> 32;
    v28 = (v9 >> 32) + a4;
    if (__OFADD__(v9 >> 32, a4))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v29 = a2 - __n;
    if (__OFSUB__(a2, __n))
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v30 = v28 - v29;
    if (__OFSUB__(v28, v29))
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v9 << 32)
    {
      v31 = __n;
      v32 = a2;

      outlined consume of Data._Representation(v9, v8);
LABEL_22:
      *v5 = xmmword_181234410;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      if (v30 <= 2147483646)
      {
        Data.InlineSlice.replaceSubrange(_:with:count:)(v31, v32, __src, a4);
        v34 = *(&v67 + 1);
        v33 = v67;
LABEL_42:
        v41 = v34 | 0x4000000000000000;
LABEL_51:
        *v5 = v33;
        v5[1] = v41;
        return;
      }

      if (v27 < v9)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      type metadata accessor for Data.RangeReference();
      v46 = swift_allocObject();
      *(v46 + 16) = v9;
      *(v46 + 24) = v27;
      *__dst = v46;
      Data.LargeSlice.replaceSubrange(_:with:count:)(v31, v32, __src, a4);
      v33 = *__dst;
      v42 = v8 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_50:
      v41 = v42 | 0x8000000000000000;
      goto LABEL_51;
    }

    if (v30)
    {
      v31 = __n;
      v32 = a2;

      outlined consume of Data._Representation(v9, v8);
      if (v30 <= 14)
      {
        *v5 = xmmword_181234410;
        outlined consume of Data._Representation(0, 0xC000000000000000);
        Data.InlineSlice.replaceSubrange(_:with:count:)(v31, v32, __src, a4);
        if (!__OFSUB__(DWORD1(v67), v67))
        {
          v43 = specialized Data.InlineData.init(_:count:)(v67 | (DWORD1(v67) << 32), *(&v67 + 1), DWORD1(v67) - v67);
          v45 = v44;

          *v5 = v43;
          v5[1] = v45 & 0xFFFFFFFFFFFFFFLL;
          return;
        }

        goto LABEL_95;
      }

      goto LABEL_22;
    }

LABEL_57:
    outlined consume of Data._Representation(v9, v8);
    *v5 = xmmword_181234410;
    return;
  }

  if (v10 == 2)
  {
    *&v67 = v9;
    *(&v67 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v20 = *(v9 + 24);
    v15 = __OFADD__(v20, a4);
    v21 = v20 + a4;
    if (v15)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v22 = a2 - __n;
    if (__OFSUB__(a2, __n))
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v23 = v21 - v22;
    if (__OFSUB__(v21, v22))
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v24 = *(v9 + 16);
    if (v24)
    {
      if (v24 > 2147483646)
      {
        v25 = __n;
        v26 = a2;

        outlined consume of Data._Representation(v9, v8);
LABEL_43:
        *v5 = xmmword_181234410;
        outlined consume of Data._Representation(0, 0xC000000000000000);
        Data.LargeSlice.replaceSubrange(_:with:count:)(v25, v26, __src, a4);
        v42 = *(&v67 + 1);
        v33 = v67;
        goto LABEL_50;
      }

LABEL_35:
      v25 = __n;
      v26 = a2;

      outlined consume of Data._Representation(v9, v8);
      if (v23 < 0x7FFFFFFF)
      {
        *v5 = xmmword_181234410;
        outlined consume of Data._Representation(0, 0xC000000000000000);
        v39 = *(v9 + 16);
        if (v39 > 0x7FFFFFFF)
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          goto LABEL_92;
        }

        v40 = *(v9 + 24);
        if (v40 < 0xFFFFFFFF80000000)
        {
          goto LABEL_92;
        }

        if (v40 > 0x7FFFFFFF)
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        if (v40 < v39)
        {
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        *__dst = *(v9 + 16);
        *&__dst[4] = v40;

        Data.InlineSlice.replaceSubrange(_:with:count:)(v25, v26, __src, a4);

        v33 = *__dst;
        v34 = v8 & 0x3FFFFFFFFFFFFFFFLL;
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (!v23)
    {
      goto LABEL_57;
    }

    if (v23 > 14)
    {
      goto LABEL_35;
    }

    if (v23 < 0)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    memset(__dst, 0, sizeof(__dst));
    v66 = v23;
    if (a4 >= 1)
    {
      if (!__src)
      {
LABEL_102:
        __break(1u);
        return;
      }

      v52 = a2;
      v53 = __n;
      memcpy(&__dst[__n], __src, a4);
      __n = v53;
      a2 = v52;
    }

    v54 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v54)
    {
      v55 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v15 = __OFSUB__(0, v55);
      v56 = -v55;
      if (v15)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v57 = v56 + v54;
      if (__n <= 0)
      {
        goto LABEL_72;
      }

      if (v57)
      {
        v58 = a2;
        memcpy(__dst, (v56 + v54), __n);
        a2 = v58;
LABEL_72:
        if (v23 <= a2)
        {
          goto LABEL_79;
        }

        if (v57)
        {
          v59 = v23 - a2;
          if (__OFSUB__(v23, a2))
          {
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
          }

          if ((v59 & 0x8000000000000000) != 0)
          {
            goto LABEL_99;
          }

          memcpy(&__dst[a2], (v57 + a2), v59);
LABEL_79:

          outlined consume of Data._Representation(v9, v8);
          v60 = *__dst;
          v61 = *&__dst[8] | ((*&__dst[12] | (v66 << 16)) << 32);

          *v5 = v60;
          v5[1] = v61;
          return;
        }

        goto LABEL_101;
      }
    }

    else if (__n <= 0)
    {
      if (v23 <= a2)
      {
        goto LABEL_79;
      }

      goto LABEL_101;
    }

    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (a2 | __n)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (a4)
  {
    outlined consume of Data._Representation(v9, v8);
    if (a4 <= 14)
    {
      if (__src)
      {
        v47 = &__src[a4];
      }

      else
      {
        v47 = 0;
      }

      v36 = specialized Data.InlineData.init(_:)(__src, v47);
      v38 = v48 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (__src)
      {
        v35 = &__src[a4];
      }

      else
      {
        v35 = 0;
      }

      if (a4 > 0x7FFFFFFE)
      {
        v36 = specialized Data.LargeSlice.init(_:)(__src, v35);
        v38 = v49 | 0x8000000000000000;
      }

      else
      {
        v36 = specialized Data.InlineSlice.init(_:)(__src, v35);
        v38 = v37 | 0x4000000000000000;
      }
    }

    *v5 = v36;
    v5[1] = v38;
  }
}

void Data.InlineSlice.replaceSubrange(_:with:count:)(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v5 = *v4;
  if (v5 > a1)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4[1];
  if (v8 < a2 || v5 > a2 || v8 < a1)
  {
    goto LABEL_16;
  }

  Data.InlineSlice.ensureUniqueReference()();
  v13 = *v4;
  v14 = v4[1];
  if (v14 < *v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __DataStorage.replaceBytes(in:with:length:)(a1, a2, a3, a4);
  v15 = a1 - a2 + v14;
  v16 = __OFADD__(v15, a4);
  v17 = v15 + a4;
  if (v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v17 < 0xFFFFFFFF80000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= v17)
  {
    *v4 = v13;
    v4[1] = v17;
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t closure #2 in JSONDecoderImpl.unwrapData<A>(from:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    if (__OFADD__(a2, 3))
    {
      goto LABEL_56;
    }

    v6 = 3 * ((a2 + 3) >> 2);
    v7 = malloc(v6);
    v8 = a2;
    while (v8)
    {
      v9 = v8 - 1;
      v10 = *(a1 - 1 + v8--);
      if (v10 != 61)
      {
        v11 = v9 + 1;
        if (((v9 + 1) & 3) != 0)
        {
          v12 = __OFADD__(v11 & 0xFFFFFFFFFFFFFFFCLL, 4);
          v11 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 4;
          if (v12)
          {
            goto LABEL_57;
          }
        }

        if (v11 <= a2)
        {
          v13 = v11 + 3;
          if (__OFADD__(v11, 3))
          {
            goto LABEL_58;
          }

          if (v13 < 0)
          {
            v13 = v11 + 6;
          }

          v14 = 3 * (v13 >> 2);
          v15 = v11 + 3;
          if (v11 >= 0)
          {
            v15 = v11;
          }

          if (v6 < v14)
          {
LABEL_59:
            __break(1u);
          }

          else
          {
            v16 = 0;
            v17 = (v15 >> 2) - 1;
            if (v11 >= 8 && v15 >> 2 != 1)
            {
              v18 = 0;
              v19 = v7 + 2;
              v20 = (a1 + 3);
              v21 = (v15 >> 2) - 1;
              while (3 * (v17 & ~(v17 >> 63)) + v18)
              {
                v22 = *(v20 - 3);
                v23 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + *(v20 - 2) + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v22 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + *(v20 - 1) + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding3 + *v20 + 8);
                if (v23 >= 0x1FFFFFF)
                {
                  goto LABEL_52;
                }

                *(v19 - 1) = v23;
                *v19 = BYTE2(v23);
                v19 += 3;
                v20 += 4;
                v18 -= 3;
                if (!--v21)
                {
                  v16 = -v18;
                  goto LABEL_22;
                }
              }

              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_22:
            if (((v15 >> 2) - 0x2000000000000001) >> 62 == 3)
            {
              v24 = 4 * v17;
              v25 = (a1 + 4 * v17);
              v22 = *v25;
              v26 = v25[1];
              if ((v24 | 2) >= a2)
              {
                v29 = 0;
                v28 = 1;
              }

              else
              {
                v27 = *(a1 + (v24 | 2));
                v28 = v27 == 61;
                if (v27 == 61)
                {
                  v29 = 0;
                }

                else
                {
                  v29 = *(a1 + (v24 | 2));
                }
              }

              v35 = v24 | 3;
              if (v35 >= a2)
              {
                v39 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + v26 + 8);
                if (v28)
                {
                  v29 = 65;
                }

                v37 = v39 | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v22 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + v29 + 8);
              }

              else
              {
                LOBYTE(v35) = *(a1 + v35);
                if (v28)
                {
                  v29 = 65;
                }

                v36 = v35;
                v37 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + v26 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v22 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + v29 + 8);
                if (v35 == 61)
                {
                  LOBYTE(v35) = 0;
                }

                if (v36 != 61)
                {
                  v38 = 0;
                  v35 = v35;
                  goto LABEL_44;
                }
              }

              v38 = 1;
              v35 = 65;
LABEL_44:
              v40 = *(&outlined read-only object #0 of one-time initialization function for decoding3 + v35 + 8) | v37;
              if (v40 > 0x1FFFFFE)
              {
                goto LABEL_52;
              }

              v7[v16] = v40;
              v34 = v16 + 1;
              if (!__OFADD__(v16, 1))
              {
                if (v28 || (v7[v34] = BYTE1(v40), v12 = __OFADD__(v34, 1), v34 = v16 + 2, !v12))
                {
                  if ((v38 & 1) != 0 || (v7[v34] = BYTE2(v40), v12 = __OFADD__(v34, 1), ++v34, !v12))
                  {
LABEL_31:
                    v41 = xmmword_18121D490;
                    result = specialized Data.init(bytesNoCopy:count:deallocator:)(v7, v34, &v41);
                    goto LABEL_54;
                  }

                  __break(1u);
LABEL_52:
                  v32 = v7;
                  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                  swift_willThrowTypedImpl();
                  LOWORD(v41) = v22;
                  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                  swift_willThrowTypedImpl();
                  v33 = 0;
LABEL_53:
                  free(v32);
                  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                  swift_willThrowTypedImpl();
                  LOBYTE(v41) = v22;
                  BYTE1(v41) = v33;
                  swift_willThrowTypedImpl();
                  result = 0;
                  v31 = 0xF000000000000000;
                  goto LABEL_54;
                }

LABEL_62:
                __break(1u);
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }
          }

          __break(1u);
          goto LABEL_61;
        }

LABEL_29:
        v32 = v7;
        LOWORD(v41) = 256;
        lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
        swift_willThrowTypedImpl();
        LOBYTE(v22) = 0;
        v33 = 1;
        goto LABEL_53;
      }
    }

    if (a2 >= 4)
    {
      *v7 = 0;
      v34 = 1;
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  result = 0;
  v31 = 0xC000000000000000;
LABEL_54:
  *a3 = result;
  a3[1] = v31;
  return result;
}

uint64_t _CalendarGregorian.maximumRange(of:)(unsigned __int8 *a1)
{
  result = *a1;
  switch(result)
  {
    case 1:
      return 1;
    case 2:
      return 1;
    case 3:
      return 1;
    case 4:
      return 0;
    case 5:
    case 6:
      return 0;
    case 7:
      return 1;
    case 8:
      return 1;
    case 9:
      return 1;
    case 10:
      if ((*(v1 + 152) & 1) == 0)
      {
        v12 = *(v1 + 144);
        v8 = v12 == 1;
        goto LABEL_25;
      }

      if (!*(v1 + 96))
      {
        v8 = 1;
LABEL_23:
        v12 = 1;
        goto LABEL_25;
      }

      v3 = *(v1 + 104);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 344);
      swift_unknownObjectRetain();
      v6 = v1;
      v7 = v5(ObjectType, v3);
      swift_unknownObjectRelease();
      v8 = v7 == 1;
      if (*(v6 + 152) == 1)
      {
        if (*(v6 + 96))
        {
          v9 = *(v6 + 104);
          v10 = swift_getObjectType();
          v11 = *(v9 + 344);
          swift_unknownObjectRetain();
          v12 = v11(v10, v9);
          swift_unknownObjectRelease();
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v12 = *(v6 + 144);
LABEL_25:
      if (__OFSUB__(7, v12))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (__OFADD__(7 - v12, 37))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      result = v8;
      if ((44 - v12) / 7 + 1 < v8)
      {
LABEL_31:
        __break(1u);
        JUMPOUT(0x1809181F4);
      }

      return result;
    case 11:
      return 1;
    case 12:
      return 140742;
    case 13:
      return 0;
    case 14:
    case 15:
      return 0;
    case 16:
    case 17:
      return 0;
    case 18:
      return 1;
    default:
      return result;
  }
}

uint64_t Locale.region.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 376))(ObjectType, v1);
}

__n128 protocol witness for Collection.endIndex.getter in conformance AttributedString.CharacterView@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  result = JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24), a4);
  if (v5)
  {
    return v7;
  }

  return result;
}

{
  v5 = JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24), a4);
  return v5 | ((HIDWORD(v5) & 1) << 32);
}

{
  return JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24), a4) & 0x1FF;
}

{
  return JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24), a4) & 0x1FFFF;
}

uint64_t JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v34 = a2;
  v35 = a7;
  v33 = a3;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a4 + 16))
  {
    v32 = v13;
    v36 = v7;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      return 0;
    }

    v21 = *(a4 + 56) + 24 * v18;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = v23 | *v21;
    v26 = (v24 & 0xE0) == 0xA0 && v25 == 0;
    if (v26 && v24 == 160)
    {
      return 0;
    }

    else
    {
      v27 = *(a5 - 8);
      (*(v27 + 16))(v15, a1, a5);
      (*(v27 + 56))(v15, 0, 1, a5);
      v28 = v36;
      v29 = v35(v22, v23, v24, v33, v15, a5, a6);
      if (v28)
      {
        return (*(v32 + 8))(v15, v12);
      }

      else
      {
        v31 = v29;
        (*(v32 + 8))(v15, v12);
        return v31;
      }
    }
  }

  else
  {

    return 0;
  }
}

{
  v36 = a2;
  v37 = a7;
  v35 = a3;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a4 + 16))
  {
    v34 = v13;
    v38 = v7;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
    v20 = v19;

    if ((v20 & 1) == 0 || ((v21 = *(a4 + 56) + 24 * v18, v22 = *v21, v23 = *(v21 + 8), v24 = *(v21 + 16), v25 = v23 | *v21, (v24 & 0xE0) == 0xA0) ? (v26 = v25 == 0) : (v26 = 0), v26 && v24 == 160))
    {
      v31 = 0;
      v32 = 1;
    }

    else
    {
      v27 = *(a5 - 8);
      (*(v27 + 16))(v15, a1, a5);
      (*(v27 + 56))(v15, 0, 1, a5);
      v28 = v38;
      v29 = v37(v22, v23, v24, v35, v15, a5, a6);
      if (v28)
      {
        return (*(v34 + 8))(v15, v12);
      }

      v31 = v29;
      (*(v34 + 8))(v15, v12);
      v32 = 0;
    }
  }

  else
  {

    v31 = 0;
    v32 = 1;
  }

  return v31 | (v32 << 8);
}

{
  v35 = a2;
  v36 = a7;
  v34 = a3;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    return 0x10000;
  }

  v33 = v13;
  v37 = v7;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    return 0x10000;
  }

  v21 = *(a4 + 56) + 24 * v18;
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v25 = v23 | *v21;
  v26 = (v24 & 0xE0) == 0xA0 && v25 == 0;
  if (v26 && v24 == 160)
  {
    return 0x10000;
  }

  v27 = *(a5 - 8);
  (*(v27 + 16))(v15, a1, a5);
  (*(v27 + 56))(v15, 0, 1, a5);
  v28 = v37;
  v29 = v36(v22, v23, v24, v34, v15, a5, a6);
  if (v28)
  {
    return (*(v33 + 8))(v15, v12);
  }

  v31 = v29;
  (*(v33 + 8))(v15, v12);
  return v31;
}

void DateComponents.lowestSetUnit.getter(char *a1@<X8>)
{
  if (v1[168] == 1)
  {
    if (v1[264])
    {
      v3 = 10;
    }

    else
    {
      v3 = 11;
    }

    if (!v1[280])
    {
      v3 = 12;
    }

    if (v1[200])
    {
      v4 = 7;
    }

    else
    {
      v4 = 8;
    }

    if ((v1[280] & v1[264]) & v1[248])
    {
      v3 = v4;
    }

    v5 = v1[280] & v1[264] & v1[248] & v1[200] & v1[184] & v1[152] & v1[136];
    if (v1[152])
    {
      v6 = 5;
    }

    else
    {
      v6 = 6;
    }

    if ((v1[280] & v1[264] & v1[248]) & (v1[200] & v1[184]))
    {
      v3 = v6;
    }

    v2 = v1[120];
    if (v2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    if ((v1[280] & v1[264] & v1[248] & v1[200] & v1[184]) & (v1[152] & v1[136]))
    {
      v3 = v7;
    }

    if (v1[72])
    {
      v8 = 9;
    }

    else
    {
      v8 = 2;
    }

    if (v5 & (v2 & v1[88]))
    {
      v3 = v8;
    }

    if ((v5 & v2 & v1[88]) & (v1[72] & v1[216]))
    {
      v3 = 18;
      if (v1[104])
      {
        if (v1[40])
        {
          v3 = 19;
        }

        else
        {
          v3 = 0;
        }

        if (!v1[56])
        {
          v3 = 1;
        }
      }
    }

    *a1 = v3;
  }

  else
  {
    *a1 = 13;
  }
}

uint64_t Predicate.init(_:)@<X0>(void (*a1)(void *__return_ptr, char **)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a5;
  v8 = 8 * a3;
  v38[3] = a2;
  v39 = a1;
  if (a3 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    v10 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (a3)
    {
      v12 = a4 & 0xFFFFFFFFFFFFFFFELL;
      v13 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = a3;
      do
      {
        v12 += 8;
        *v13++ = type metadata accessor for PredicateExpressions.Variable();
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
    v7 = a5;
  }

  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[2] = v38;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  v38[1] = v38;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v38 - v22;
  if (a3)
  {
    if (one-time initialization token for nextID != -1)
    {
      swift_once();
    }

    v24 = (v10 + 32);
    v25 = a3;
    do
    {
      if (a3 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      *&v23[v26] = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  v27 = *(type metadata accessor for Predicate() + 36);
  v28 = (*(v15 + 32))(v7 + v27, v23, v10);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v30 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v17, v7 + v27, v10, v29);
  v31 = v39;
  if (a3)
  {
    v32 = (v10 + 32);
    v33 = v30;
    v34 = a3;
    do
    {
      if (a3 == 1)
      {
        v35 = 0;
        v36 = v20;
      }

      else
      {
        v35 = *v32;
        v36 = &v20[v35];
      }

      *&v20[v35] = *&v17[v35];
      *v33++ = v36;
      v32 += 4;
      --v34;
    }

    while (v34);
  }

  v31(v40, v30);
  return outlined init with take of any StandardPredicateExpression<Self.PredicateExpression.Output == Bool>(v40, v7);
}

uint64_t static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.Equal();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 60), a2, a4);
}

uint64_t Predicate.variable.getter@<X0>(uint64_t a1@<X0>, void **a2@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    v7 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v9 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v10 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v11 = v5;
      do
      {
        v9 += 8;
        *v10++ = type metadata accessor for PredicateExpressions.Variable();
        --v11;
      }

      while (v11);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v15 + 16))(v14, v2 + *(a1 + 36), v7, v12);
  if (v5)
  {
    v17 = (v7 + 32);
    v18 = v5;
    do
    {
      if (v5 == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = *v17;
      }

      v20 = *a2++;
      *v20 = *&v14[v19];
      v17 += 4;
      --v18;
    }

    while (v18);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Hour.AMPMStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

double *Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)@<X0>(double *a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *a1;
  memcpy(__dst, a2, 0x11BuLL);
  v14 = *a3;
  v30 = *a4;
  v15 = *a5;
  v16 = *v6;
  v17 = v6[1];
  v33 = 1;
  v25 = v16;
  v26 = v17;
  v24 = v13;
  LOBYTE(v23) = v14;
  result = Calendar.dateAfterMatchingEra(startingAt:components:direction:matchedEra:)(&v24, a2, &v23, &v33, &v27);
  if (v28)
  {
    v19 = v13;
  }

  else
  {
    v19 = v27;
  }

  v20 = 0.0;
  v21 = v33;
  if (v33 == 1)
  {
    v25 = v16;
    v26 = v17;
    v24 = v19;
    LOBYTE(v23) = v14;
    result = Calendar.dateAfterMatchingYear(startingAt:components:direction:)(&v24, a2, &v23, &v27);
    if (v7)
    {
      return result;
    }

    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v24 = v19;
    LOBYTE(v23) = v14;
    Calendar.dateAfterMatchingYearForWeekOfYear(startingAt:components:direction:)(&v24, a2, &v23, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v24 = v19;
    LOBYTE(v23) = v14;
    Calendar.dateAfterMatchingQuarter(startingAt:components:direction:)(&v24, a2, &v23, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v24 = v19;
    LOBYTE(v23) = v14;
    Calendar.dateAfterMatchingWeekOfYear(startingAt:components:direction:)(&v24, a2, &v23, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v24 = v19;
    LOBYTE(v23) = v14;
    Calendar.dateAfterMatchingDayOfYear(startingAt:components:direction:)(&v24, a2, &v23, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v24 = v19;
    LOBYTE(v23) = v14;
    Calendar.dateAfterMatchingMonth(startingAt:components:direction:strictMatching:)(&v24, __dst, &v23, v30 == 3, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v24 = v19;
    LOBYTE(v23) = v14;
    Calendar.dateAfterMatchingWeekOfMonth(startingAt:components:direction:)(&v24, __dst, &v23, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v24 = v19;
    LOBYTE(v23) = v14;
    Calendar.dateAfterMatchingWeekdayOrdinal(startingAt:components:direction:)(&v24, __dst, &v23, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v24 = v19;
    LOBYTE(v23) = v14;
    Calendar.dateAfterMatchingWeekday(startingAt:components:direction:)(&v24, __dst, &v23, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v23 = v13;
    v24 = v19;
    v32 = v14;
    Calendar.dateAfterMatchingDay(startingAt:originalStartDate:components:direction:)(&v24, &v23, __dst, &v32, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v23 = v13;
    v24 = v19;
    v32 = v14;
    v31 = v30;
    Calendar.dateAfterMatchingHour(startingAt:originalStartDate:components:direction:findLastMatch:isStrictMatching:matchingPolicy:)(&v24, &v23, __dst, &v32, v15, v30 == 3, &v31, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v24 = v19;
    Calendar.dateAfterMatchingMinute(startingAt:components:direction:)(&v24, __dst, &v27);
    if (!v28)
    {
      v19 = v27;
    }

    v25 = v16;
    v26 = v17;
    v23 = v13;
    v24 = v19;
    v32 = v14;
    Calendar.dateAfterMatchingSecond(startingAt:originalStartDate:components:direction:)(&v24, &v23, __dst, &v32, &v27);
    if (v28)
    {
      v22 = v19;
    }

    else
    {
      v22 = v27;
    }

    v25 = v16;
    v26 = v17;
    v24 = v22;
    result = Calendar.dateAfterMatchingNanosecond(startingAt:components:direction:)(&v24, __dst, &v27);
    v20 = v27;
    if (v28)
    {
      v20 = v22;
    }
  }

  *a6 = v20;
  *(a6 + 8) = v21 ^ 1;
  return result;
}

double *Calendar.dateAfterMatchingYear(startingAt:components:direction:)@<X0>(double *result@<X0>, __int128 *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 56);
  if (v7)
  {
    *a4 = 0;
    *(a4 + 8) = 1;
    return result;
  }

  v59 = v5;
  v8 = *result;
  v10 = *(a2 + 6);
  v31 = *a3;
  v12 = *v4;
  v11 = v4[1];
  *&v33 = 3;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v13 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v8)
  {
    v13 = v8;
  }

  if (*&static Date.validCalendarRange >= v13)
  {
    v14 = *&static Date.validCalendarRange;
  }

  else
  {
    v14 = v13;
  }

  ObjectType = swift_getObjectType();
  v53 = v14;
  (*(v11 + 192))(v55, &v33, &v53, ObjectType, v11);
  if ((v58 & 1) != 0 || v10 == v57)
  {
    result = outlined destroy of DateComponents(v55);
    *a4 = 0;
LABEL_13:
    *(a4 + 8) = 1;
    return result;
  }

  *&v33 = v12;
  *(&v33 + 1) = v11;
  if (v56)
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = v55[4];
  }

  Calendar.dateIfEraHasYear(era:year:)(v16, v10, &v53);
  v17 = *&v53;
  if (v54)
  {
    result = outlined destroy of DateComponents(v55);
    *a4 = v17;
    goto LABEL_13;
  }

  v30 = v53;
  v18 = a2[1];
  v33 = *a2;
  v34 = v18;
  v35 = a2[2];
  v19 = *(a2 + 249);
  v51 = *(a2 + 265);
  v20 = *(a2 + 217);
  v49 = *(a2 + 233);
  v50 = v19;
  v21 = *(a2 + 153);
  v45 = *(a2 + 169);
  v22 = *(a2 + 201);
  v46 = *(a2 + 185);
  v47 = v22;
  v48 = v20;
  v23 = *(a2 + 89);
  v41 = *(a2 + 105);
  v24 = *(a2 + 137);
  v42 = *(a2 + 121);
  v43 = v24;
  v44 = v21;
  v25 = *(a2 + 73);
  v38 = *(a2 + 57);
  v39 = v25;
  v36 = v10;
  v37 = v7;
  v52 = *(a2 + 281);
  v40 = v23;
  DateComponents.setUnits.getter(&v53);
  v26 = v31;
  if ((*&v53 & (*&v53 - 1)) == 0)
  {
    v26 = 0;
  }

  if (v26 == 1)
  {
    v32 = 1;
    v27 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v30)
    {
      v27 = v30;
    }

    if (*&static Date.validCalendarRange >= v27)
    {
      v27 = *&static Date.validCalendarRange;
    }

    v53 = v27;
    (*(v11 + 160))(&v33, &v32, &v53, ObjectType, v11);
    if (v34)
    {
      lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
      swift_allocError();
      *v28 = 1;
      *(v28 + 8) = v30;
      *(v28 + 16) = 0;
      swift_willThrow();
      return outlined destroy of DateComponents(v55);
    }

    v29 = *(&v33 + 1);
    result = outlined destroy of DateComponents(v55);
    *a4 = v29 + -1.0 + v30;
  }

  else
  {
    result = outlined destroy of DateComponents(v55);
    *a4 = v30;
  }

  *(a4 + 8) = 0;
  return result;
}

uint64_t Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)@<X0>(double *a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, unsigned __int8 *a5@<X4>, double *a6@<X5>, uint64_t a7@<X6>, double *a8@<X8>)
{
  v16 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v17 = *a3;
  v18 = *a4;
  v19 = *a5;
  v20 = *a6;
  v21 = *a7;
  v22 = *(a7 + 8);
  v23 = v8[1];
  *v50 = *v8;
  v24 = *v50;
  *(v50 + 1) = v23;
  v45[0] = v20;
  LOBYTE(v44[0]) = v19;
  Calendar._adjustedComponents(_:date:direction:)(a2, v45, v44, __src);
  v45[0] = v24;
  v45[1] = v23;
  v46 = *&v20;
  memcpy(v50, __src, 0x11BuLL);
  LOBYTE(v49) = v19;
  LOBYTE(v48) = v17;
  v57 = v18;
  Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(&v46, v50, &v49, &v48, &v57, v44);
  if (v9)
  {
    return outlined destroy of DateComponents(__src);
  }

  if ((v44[1] & 1) == 0)
  {
    v57 = 1;
    v56 = 0;
    v45[0] = v24;
    v45[1] = v23;
    v46 = *&v16;
    v49 = *&v20;
    v48 = v44[0];
    memcpy(v50, __src, 0x11BuLL);
    v55 = v19;
    v54 = v17;
    v53 = v18;
    Calendar._adjustedDateForMismatches(start:searchingDate:matchDate:matchingComponents:compsToMatch:direction:matchingPolicy:repeatedTimePolicy:isForwardDST:isExactMatch:isLeapDay:)(&v46, &v49, &v48, a2, v50, &v55, &v54, &v53, v44, &v56, &v57, &v56 + 1);
    v28 = *v44;
    if (v44[1])
    {
      v45[0] = v24;
      v45[1] = v23;
      v49 = *&v20;
      memcpy(v50, a2, 0x11BuLL);
      LOBYTE(v48) = v19;
      v46 = v44[0];
      v47 = 1;
      Calendar.bumpedDateUpToNextHigherUnitInComponents(_:_:_:_:)(&v49, &v48, &v46, v44);
      result = outlined destroy of DateComponents(__src);
      if (!LOBYTE(v44[1]))
      {
        v20 = *v44;
      }

      goto LABEL_8;
    }

    v45[0] = v24;
    v45[1] = v23;
    v46 = v44[0];
    memcpy(v50, a2, 0x11BuLL);
    v29 = Calendar.date(_:containsMatchingComponents:)(v44, &v46, v50);
    v30 = v44[0];
    if (v29 && (v57 & 1) == 0)
    {
      v57 = 1;
    }

    v45[0] = v24;
    v45[1] = v23;
    v49 = *&v20;
    memcpy(v50, __dst, 0x11BuLL);
    LOBYTE(v48) = v19;
    v46 = *&v28;
    v47 = 0;
    Calendar.bumpedDateUpToNextHigherUnitInComponents(_:_:_:_:)(&v49, &v48, &v46, v44);
    if (!LOBYTE(v44[1]))
    {
      v20 = *v44;
    }

    if (!v29 && (v30 & 0x2200) == 0)
    {
      v57 = 0;
    }

    if (v22)
    {
      v21 = v16;
      if (v16 >= v28)
      {
        goto LABEL_21;
      }
    }

    else if (v21 >= v28)
    {
LABEL_21:
      if (v21 <= v28)
      {
        v31 = 1;
      }

      else
      {
        v31 = v19;
      }

      if (v21 > v28)
      {
        v32 = 1;
      }

      else
      {
        v32 = v31 ^ 1u;
      }

      if (v31)
      {
LABEL_43:
        result = outlined destroy of DateComponents(__src);
        v27 = v57;
        if (v56 == 1)
        {
          if (v17 == 3)
          {
            v38 = v57;
          }

          else
          {
            v38 = 1;
          }

          if ((v38 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else if (v57)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
          if (v17 == 3 || (v56 & 0x100) == 0)
          {
            goto LABEL_9;
          }

          v27 = 0;
        }

        if (v32)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }

LABEL_31:
      if ((v30 & 0x2000) != 0)
      {
        goto LABEL_43;
      }

      DateComponents.highestSetUnit.getter(v50);
      if (LOBYTE(v50[0]) != 4)
      {
        result = outlined destroy of DateComponents(__src);
LABEL_8:
        v27 = 2;
LABEL_9:
        v28 = 0.0;
LABEL_10:
        v26 = a8;
        *a8 = v28;
        goto LABEL_11;
      }

      v46 = 16;
      if (one-time initialization token for validCalendarRange != -1)
      {
        swift_once();
      }

      v33 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v28)
      {
        v33 = v28;
      }

      if (*&static Date.validCalendarRange >= v33)
      {
        v34 = *&static Date.validCalendarRange;
      }

      else
      {
        v34 = v33;
      }

      ObjectType = swift_getObjectType();
      v45[0] = v34;
      v36 = *(*&v23 + 192);
      v36(v50, &v46, v45, ObjectType, *&v23);
      outlined destroy of DateComponents(v50);
      if (BYTE8(v50[7]))
      {
        v42 = 0;
        if ((v19 & 1) == 0)
        {
LABEL_42:
          v37 = 3600.0;
LABEL_59:
          v39 = v37 + v28;
          v49 = 16;
          v40 = *(&static Date.validCalendarRange + 1);
          if (*(&static Date.validCalendarRange + 1) >= v39)
          {
            v40 = v39;
          }

          if (*&static Date.validCalendarRange >= v40)
          {
            v40 = *&static Date.validCalendarRange;
          }

          v48 = *&v40;
          v36(v45, &v49, &v48, ObjectType, *&v23);
          outlined destroy of DateComponents(__src);
          memcpy(v44, v45, 0x11BuLL);
          result = outlined destroy of DateComponents(v44);
          if (v44[15])
          {
            v41 = v42 == 0;
          }

          else
          {
            v41 = v42 == v44[14];
          }

          if (v41)
          {
            v20 = v39;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v42 = *&v50[7];
        if ((v19 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      v37 = -3600.0;
      goto LABEL_59;
    }

    v32 = 1;
    if (!v19)
    {
      goto LABEL_43;
    }

    goto LABEL_31;
  }

  result = outlined destroy of DateComponents(__src);
  v26 = a8;
  *a8 = 0.0;
  v27 = 2;
LABEL_11:
  *(v26 + 8) = v27;
  v26[2] = v20;
  return result;
}

void Calendar._adjustedDateForMismatches(start:searchingDate:matchDate:matchingComponents:compsToMatch:direction:matchingPolicy:repeatedTimePolicy:isForwardDST:isExactMatch:isLeapDay:)(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, unsigned __int8 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, _BYTE *a10, _BYTE *a11, _BYTE *a12)
{
  v13 = *a1;
  v14 = *a2;
  v15 = *a3;
  v16 = a4[5];
  v138 = a4[4];
  v139 = v16;
  v17 = a4[6];
  v18 = a4[1];
  v134 = *a4;
  v135 = v18;
  v19 = a4[3];
  v136 = a4[2];
  v137 = v19;
  v106 = *(a4 + 14);
  v107 = *(a4 + 120);
  v20 = *(a4 + 233);
  v21 = *(a4 + 265);
  v131 = *(a4 + 249);
  v132 = v21;
  v133 = *(a4 + 281);
  v22 = *(a4 + 169);
  v23 = *(a4 + 201);
  v127 = *(a4 + 185);
  v128 = v23;
  v129 = *(a4 + 217);
  v130 = v20;
  v24 = *(a4 + 137);
  v123 = *(a4 + 121);
  v124 = v24;
  v125 = *(a4 + 153);
  v126 = v22;
  v25 = a5[1];
  v26 = a5[3];
  v157 = a5[2];
  v27 = v157;
  v158 = v26;
  v159 = *(a5 + 8);
  v28 = a5[1];
  v155 = *a5;
  v29 = v155;
  v156 = v28;
  v30 = *(a5 + 72);
  v154[0] = *(a5 + 73);
  *(v154 + 7) = *(a5 + 10);
  v31 = *(a5 + 88);
  v32 = *(a5 + 89);
  v140 = v17;
  v141 = v32;
  v33 = *(a5 + 105);
  v34 = *(a5 + 121);
  v35 = *(a5 + 153);
  v144 = *(a5 + 137);
  v145 = v35;
  v142 = v33;
  v143 = v34;
  v36 = *(a5 + 169);
  v37 = *(a5 + 185);
  v38 = *(a5 + 217);
  v148 = *(a5 + 201);
  v149 = v38;
  v146 = v36;
  v147 = v37;
  v39 = *(a5 + 233);
  v40 = *(a5 + 249);
  v41 = *(a5 + 265);
  v153 = *(a5 + 281);
  v151 = v40;
  v152 = v41;
  v150 = v39;
  v108 = *a6;
  v109 = *a7;
  v42 = *a8;
  v44 = *v12;
  v43 = v12[1];
  *a10 = 0;
  *a11 = 1;
  *a12 = 0;
  *&__dst[0] = v44;
  *(&__dst[0] + 1) = v43;
  v117[0] = v15;
  v45 = a5[3];
  __src[2] = v27;
  __src[3] = v45;
  *&__src[4] = *(a5 + 8);
  __src[0] = v29;
  __src[1] = v25;
  BYTE8(__src[4]) = v30;
  *(&__src[4] + 9) = *(a5 + 73);
  *&__src[5] = *(a5 + 10);
  BYTE8(__src[5]) = v31;
  v46 = *(a5 + 233);
  v47 = *(a5 + 249);
  v48 = *(a5 + 265);
  *(&__src[17] + 9) = *(a5 + 281);
  *(&__src[16] + 9) = v48;
  *(&__src[5] + 9) = *(a5 + 89);
  v49 = *(a5 + 105);
  v50 = *(a5 + 121);
  v51 = *(a5 + 137);
  *(&__src[9] + 9) = *(a5 + 153);
  *(&__src[8] + 9) = v51;
  *(&__src[7] + 9) = v50;
  *(&__src[6] + 9) = v49;
  v52 = *(a5 + 169);
  v53 = *(a5 + 185);
  v54 = *(a5 + 201);
  *(&__src[13] + 9) = *(a5 + 217);
  *(&__src[12] + 9) = v54;
  *(&__src[11] + 9) = v53;
  *(&__src[10] + 9) = v52;
  *(&__src[15] + 9) = v47;
  *(&__src[14] + 9) = v46;
  v55 = Calendar.date(_:containsMatchingComponents:)(v120, v117, __src);
  v56 = v120[0];
  if ((v120[0] & 0x2200) != 0)
  {
    *a9 = v15;
    *(a9 + 8) = 0;
    return;
  }

  v105 = v31;
  v102 = v42;
  if ((v120[0] ^ (v120[0] - 1)) <= v120[0] - 1 || (v120[0] & 0x10) == 0)
  {
    goto LABEL_33;
  }

  v103 = v120[0];
  v104 = v55;
  LOBYTE(v120[0]) = 4;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v57 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v15)
  {
    v57 = v15;
  }

  if (*&static Date.validCalendarRange >= v57)
  {
    v58 = *&static Date.validCalendarRange;
  }

  else
  {
    v58 = v57;
  }

  ObjectType = swift_getObjectType();
  *__dst = v58;
  (*(v43 + 160))(__src, v120, __dst, ObjectType, v43);
  if (__src[1])
  {
    v55 = v104;
LABEL_14:
    v56 = v103;
    goto LABEL_33;
  }

  v60 = *(__src + 1);
  v101 = *__src;
  v61 = *__src;
  v119 = 16;
  v62 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= *__src)
  {
    v62 = *__src;
  }

  if (*&static Date.validCalendarRange >= v62)
  {
    v62 = *&static Date.validCalendarRange;
  }

  *v120 = v62;
  v63 = *(v43 + 192);
  v63(__src, &v119, v120, ObjectType, v43);
  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  if (BYTE8(__dst[7]))
  {
    v64 = 0;
  }

  else
  {
    v64 = *&__dst[7];
  }

  v65 = v60 + v61;
  v118 = 16;
  v66 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v65)
  {
    v66 = v65;
  }

  if (*&static Date.validCalendarRange >= v66)
  {
    v66 = *&static Date.validCalendarRange;
  }

  *v116 = v66;
  v63(v120, &v118, v116, ObjectType, v43);
  memcpy(v117, v120, 0x11BuLL);
  outlined destroy of DateComponents(v117);
  v68 = *&v117[14];
  if (LOBYTE(v117[15]))
  {
    v68 = 0;
  }

  v69 = v68 - v64;
  if (__OFSUB__(v68, v64))
  {
    __break(1u);
    goto LABEL_143;
  }

  v55 = v104;
  v56 = v103;
  if (v69 > 1 || v64 == 23 && v68 >= 1)
  {
    if (v109 == 3)
    {
      goto LABEL_33;
    }

    *a11 = 0;
    if (!v109)
    {
      v75 = v65;
      goto LABEL_101;
    }

    if (v109 == 1)
    {
      LOBYTE(v112) = 4;
      v67.value = 1;
      DateComponents.init(component:value:)(v67, &v112, v114);
      memcpy(v115, v114, 0x11BuLL);
      memcpy(v116, v114, 0x11BuLL);
      if (_s10Foundation13URLComponentsV01_B0VSgWOg(v116) == 1)
      {
        v55 = v104;
        goto LABEL_33;
      }

      if (*(&static Date.validCalendarRange + 1) >= v15)
      {
        v85 = v15;
      }

      else
      {
        v85 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v85)
      {
        v86 = *&static Date.validCalendarRange;
      }

      else
      {
        v86 = v85;
      }

      memcpy(v114, v116, 0x11BuLL);
      if (*(&static Date.validCalendarRange + 1) >= v86)
      {
        v87 = v86;
      }

      else
      {
        v87 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v87)
      {
        v87 = *&static Date.validCalendarRange;
      }

      v111 = v87;
      (*(v43 + 200))(&v112, v114, &v111, 0, ObjectType, v43);
      v88 = v112;
      v89 = v113;
      if (one-time initialization token for compatibility2 != -1)
      {
        swift_once();
      }

      v90 = static Calendar.compatibility2;
      outlined destroy of TermOfAddress?(v115, &_s10Foundation14DateComponentsVSgMd);
      if (v90 == 1)
      {
        if (v89)
        {
          v75 = v15;
        }

        else
        {
          v75 = v88;
        }

        goto LABEL_101;
      }

      v74 = a10;
      v75 = v88;
      if (v89)
      {
        v55 = v104;
        goto LABEL_14;
      }

LABEL_102:
      *v74 = 1;
      v70 = a9;
      *a9 = v75;
      goto LABEL_35;
    }

LABEL_99:
    v75 = v15;
LABEL_101:
    v74 = a10;
    goto LABEL_102;
  }

  v72 = v61 + -1.0;
  *v114 = 16;
  if (*(&static Date.validCalendarRange + 1) < v61 + -1.0)
  {
    v72 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v72)
  {
    v72 = *&static Date.validCalendarRange;
  }

  v112 = v72;
  v63(v116, v114, &v112, ObjectType, v43);
  memcpy(v115, v116, 0x11BuLL);
  outlined destroy of DateComponents(v115);
  v73 = v115[14];
  if (LOBYTE(v115[15]))
  {
    v73 = 0;
  }

  v69 = v64 - v73;
  if (__OFSUB__(v64, v73))
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v55 = v104;
  v56 = v103;
  if ((v69 > 1 || v73 == 23 && v64 > 0) && v109 != 3)
  {
    *a11 = 0;
    if (v109 != 2)
    {
      if (!v109)
      {
        v74 = a10;
        v75 = v101;
        goto LABEL_102;
      }

      goto LABEL_99;
    }
  }

LABEL_33:
  if (v55)
  {
LABEL_34:
    v70 = a9;
    *a9 = v15;
LABEL_35:
    *(v70 + 8) = 0;
    return;
  }

  *&__src[0] = v56;
  Calendar.ComponentSet.highestSetUnit.getter(__dst);
  v71 = LOBYTE(__dst[0]);
  if (LOBYTE(__dst[0]) == 19)
  {
    goto LABEL_39;
  }

  LOBYTE(__src[0]) = __dst[0];
  Calendar.Component.nextHigherUnit.getter(v114);
  LODWORD(v63) = v114[0];
  if ((v56 & 0x10000) == 0 && v114[0] == 19)
  {
    goto LABEL_39;
  }

  if (v71 == 12 || v71 == 1)
  {
    v114[0] = v71;
    LODWORD(v63) = v71;
  }

  else if (!v71)
  {
    LODWORD(v63) = 1;
    v114[0] = 1;
  }

  v76 = swift_getObjectType();
  (*(v43 + 24))(__src, v76, v43);
  if (v63 == 19)
  {
    if ((v56 & 0x10000) != 0)
    {
      goto LABEL_94;
    }

    __break(1u);
  }

  if ((v56 & 0x10000) != 0 || v63 == 1)
  {
LABEL_94:
    if (v30 & 1) != 0 || (v105)
    {
      goto LABEL_34;
    }

    *&__src[0] = v44;
    *(&__src[0] + 1) = v43;
    if (Calendar.hasRepeatingMonths.getter())
    {
      if ((v56 & 0x10000) == 0)
      {
        goto LABEL_34;
      }

      v120[0] = v44;
      v120[1] = v43;
      v117[0] = v13;
      *v116 = v14;
      *v115 = v15;
      __src[4] = v138;
      __src[5] = v139;
      __src[6] = v140;
      __src[0] = v134;
      __src[1] = v135;
      __src[2] = v136;
      __src[3] = v137;
      *&__src[7] = v106;
      BYTE8(__src[7]) = v107;
      *(&__src[17] + 9) = v133;
      *(&__src[16] + 9) = v132;
      *(&__src[9] + 9) = v125;
      *(&__src[8] + 9) = v124;
      *(&__src[7] + 9) = v123;
      *(&__src[13] + 9) = v129;
      *(&__src[12] + 9) = v128;
      *(&__src[11] + 9) = v127;
      *(&__src[10] + 9) = v126;
      *(&__src[15] + 9) = v131;
      *(&__src[14] + 9) = v130;
      __dst[2] = v157;
      __dst[3] = v158;
      *&__dst[4] = v159;
      __dst[0] = v155;
      __dst[1] = v156;
      BYTE8(__dst[4]) = v30;
      *(&__dst[4] + 9) = v154[0];
      *&__dst[5] = *(v154 + 7);
      BYTE8(__dst[5]) = v105;
      *(&__dst[17] + 9) = v153;
      *(&__dst[16] + 9) = v152;
      *(&__dst[5] + 9) = v141;
      *(&__dst[9] + 9) = v145;
      *(&__dst[8] + 9) = v144;
      *(&__dst[7] + 9) = v143;
      *(&__dst[6] + 9) = v142;
      *(&__dst[13] + 9) = v149;
      *(&__dst[12] + 9) = v148;
      *(&__dst[11] + 9) = v147;
      *(&__dst[10] + 9) = v146;
      *(&__dst[15] + 9) = v151;
      *(&__dst[14] + 9) = v150;
      LOBYTE(v112) = v108;
      LOBYTE(v119) = v109;
      LOBYTE(v118) = v102;
      Calendar._adjustedDateForMismatchedChineseLeapMonth(start:searchingDate:matchDate:matchingComponents:compsToMatch:direction:matchingPolicy:repeatedTimePolicy:isExactMatch:isLeapDay:)(v117, v116, v115, __src, __dst, &v112, &v119, &v118, a11, a12);
    }

    else
    {
      if ((v56 & 0xC) == 0)
      {
        goto LABEL_34;
      }

      v120[0] = v44;
      v120[1] = v43;
      v117[0] = v13;
      *v116 = v14;
      *v115 = v15;
      __src[4] = v138;
      __src[5] = v139;
      __src[6] = v140;
      __src[0] = v134;
      __src[1] = v135;
      __src[2] = v136;
      __src[3] = v137;
      *&__src[7] = v106;
      BYTE8(__src[7]) = v107;
      *(&__src[17] + 9) = v133;
      *(&__src[16] + 9) = v132;
      *(&__src[9] + 9) = v125;
      *(&__src[8] + 9) = v124;
      *(&__src[7] + 9) = v123;
      *(&__src[13] + 9) = v129;
      *(&__src[12] + 9) = v128;
      *(&__src[11] + 9) = v127;
      *(&__src[10] + 9) = v126;
      *(&__src[15] + 9) = v131;
      *(&__src[14] + 9) = v130;
      __dst[2] = v157;
      __dst[3] = v158;
      *&__dst[4] = v159;
      __dst[0] = v155;
      __dst[1] = v156;
      BYTE8(__dst[4]) = v30;
      *(&__dst[4] + 9) = v154[0];
      *&__dst[5] = *(v154 + 7);
      BYTE8(__dst[5]) = v105;
      *(&__dst[17] + 9) = v153;
      *(&__dst[16] + 9) = v152;
      *(&__dst[5] + 9) = v141;
      *(&__dst[9] + 9) = v145;
      *(&__dst[8] + 9) = v144;
      *(&__dst[7] + 9) = v143;
      *(&__dst[6] + 9) = v142;
      *(&__dst[13] + 9) = v149;
      *(&__dst[12] + 9) = v148;
      *(&__dst[11] + 9) = v147;
      *(&__dst[10] + 9) = v146;
      *(&__dst[15] + 9) = v151;
      *(&__dst[14] + 9) = v150;
      if (v63 == 19)
      {
        __break(1u);
      }

      else
      {
        LOBYTE(v112) = v63;
        LOBYTE(v119) = v108;
        LOBYTE(v118) = v109;
        LOBYTE(v111) = v102;
        Calendar._adjustedDateForMismatchedLeapMonthOrDay(start:searchingDate:matchDate:matchingComponents:compsToMatch:nextHighestUnit:direction:matchingPolicy:repeatedTimePolicy:isExactMatch:isLeapDay:)(v117, v116, v115, __src, __dst, &v112, &v119, &v118, &v111, a11, a12);
      }
    }

    return;
  }

  v64 = v76;
  v69 = &static Date.validCalendarRange;
  if (v63 != 2 || LOBYTE(__src[0]))
  {
LABEL_124:
    LODWORD(ObjectType) = v63;
    LOBYTE(v120[0]) = v63;
    LOBYTE(v63) = v108;
    if (one-time initialization token for validCalendarRange == -1)
    {
LABEL_125:
      v91 = *(v69 + 8);
      if (v91 >= v14)
      {
        v91 = v14;
      }

      if (*v69 >= v91)
      {
        v91 = *v69;
      }

      *__dst = v91;
      (*(v43 + 160))(__src, v120, __dst, v64, v43);
      if (__src[1])
      {
        lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
        swift_allocError();
        *v92 = ObjectType;
        *(v92 + 8) = v14;
        *(v92 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        v93 = *__src;
        if (v63)
        {
          v94 = a9;
          v95 = v102;
          v96 = v107;
          v97 = v106;
          if (ObjectType == 3)
          {
            v93 = *__src + -1.0;
            v98 = v107 | (v106 != 0);
          }

          else
          {
            v98 = 1;
          }
        }

        else
        {
          v98 = 0;
          v93 = *(__src + 1) + *__src;
          v94 = a9;
          v95 = v102;
          v96 = v107;
          v97 = v106;
        }

        *&__dst[0] = v44;
        *(&__dst[0] + 1) = v43;
        *v120 = v93;
        __src[4] = v138;
        __src[5] = v139;
        __src[6] = v140;
        __src[0] = v134;
        __src[1] = v135;
        __src[2] = v136;
        __src[3] = v137;
        *&__src[7] = v97;
        BYTE8(__src[7]) = v96;
        *(&__src[17] + 9) = v133;
        *(&__src[16] + 9) = v132;
        *(&__src[9] + 9) = v125;
        *(&__src[8] + 9) = v124;
        *(&__src[7] + 9) = v123;
        *(&__src[13] + 9) = v129;
        *(&__src[12] + 9) = v128;
        *(&__src[11] + 9) = v127;
        *(&__src[10] + 9) = v126;
        *(&__src[15] + 9) = v131;
        *(&__src[14] + 9) = v130;
        LOBYTE(v117[0]) = v98 & 1;
        LOBYTE(v116[0]) = v109;
        LOBYTE(v115[0]) = v95;
        Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(v120, __src, v117, v116, v115, v94);
      }

      return;
    }

LABEL_144:
    v100 = v69;
    swift_once();
    v69 = v100;
    goto LABEL_125;
  }

  v77 = v44;
  v116[0] = 4;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v78 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v15)
  {
    v78 = v15;
  }

  if (*&static Date.validCalendarRange >= v78)
  {
    v78 = *&static Date.validCalendarRange;
  }

  *__dst = v78;
  v79 = *(v43 + 192);
  v79(__src, v116, __dst, v76, v43);
  outlined destroy of DateComponents(__src);
  if ((BYTE8(__src[4]) & 1) != 0 || *&__src[4] != 2)
  {
    v44 = v77;
    v69 = &static Date.validCalendarRange;
    goto LABEL_124;
  }

  LOBYTE(v117[0]) = 2;
  v80 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v15)
  {
    v80 = v15;
  }

  if (*&static Date.validCalendarRange >= v80)
  {
    v80 = *&static Date.validCalendarRange;
  }

  *v120 = v80;
  (*(v43 + 160))(__dst, v117, v120, v76, v43);
  if (__dst[1])
  {
LABEL_39:
    *a9 = v15;
    *(a9 + 8) = 0;
    return;
  }

  v81 = *(__dst + 1) + *__dst;
  if (v109 == 1)
  {
    v120[0] = 112;
    v82 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v13)
    {
      v82 = v13;
    }

    if (*&static Date.validCalendarRange >= v82)
    {
      v82 = *&static Date.validCalendarRange;
    }

    v117[0] = v82;
    v79(__dst, v120, v117, v76, v43);
    memcpy(v120, __dst, 0x11BuLL);
    v83 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v81)
    {
      v83 = v81;
    }

    if (*&static Date.validCalendarRange >= v83)
    {
      v83 = *&static Date.validCalendarRange;
    }

    *v115 = v83;
    (*(v43 + 200))(v117, v120, v115, 0, v76, v43);
    outlined destroy of DateComponents(__dst);
    v84 = a12;
    if (LOBYTE(v117[1]))
    {
      *a9 = v117[0];
      *(a9 + 8) = 1;
      return;
    }

    v81 = v117[0];
    v99 = a9;
  }

  else
  {
    v99 = a9;
    v84 = a12;
  }

  *v84 = 1;
  *a11 = 0;
  *v99 = v81;
  *(v99 + 8) = 0;
}

void Calendar.bumpedDateUpToNextHigherUnitInComponents(_:_:_:_:)(double *a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(v4 + 8);
  DateComponents.highestSetUnit.getter(__dst);
  v11 = __dst[0];
  if (LOBYTE(__dst[0]) < 2u)
  {
    v11 = 1;
  }

  else if (LOBYTE(__dst[0]) == 19 || LOBYTE(__dst[0]) != 12 && (Calendar.Component.nextHigherUnit.getter(__src), v11 = __src[0], LOBYTE(__src[0]) == 19))
  {
LABEL_15:
    *a4 = 0;
LABEL_16:
    *(a4 + 8) = 1;
    return;
  }

  v24[0] = v11;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v12 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v12 = v6;
  }

  if (*&static Date.validCalendarRange >= v12)
  {
    v13 = *&static Date.validCalendarRange;
  }

  else
  {
    v13 = v12;
  }

  ObjectType = swift_getObjectType();
  *__src = v13;
  (*(v10 + 160))(__dst, v24, __src, ObjectType, v10);
  if (__dst[2])
  {
    goto LABEL_15;
  }

  v15 = *&__dst[1];
  if (v7)
  {
    v15 = -1.0;
  }

  v16 = *__dst + v15;
  if ((v9 & 1) != 0 || (v8 < v16) | v7 & 1 && ((v8 <= v16) & v7) == 0)
  {
    goto LABEL_22;
  }

  DateComponents.lowestSetUnit.getter(__dst);
  if (LOBYTE(__dst[0]) != 19)
  {
    if (v7)
    {
      v17.value = -1;
    }

    else
    {
      v17.value = 1;
    }

    v24[0] = __dst[0];
    DateComponents.init(component:value:)(v17, v24, __src);
    memcpy(__dst, __src, 0x11BuLL);
    v16 = 0.0;
    if (_s10Foundation13URLComponentsV01_B0VSgWOg(__dst) == 1)
    {
      goto LABEL_28;
    }

    if (*(&static Date.validCalendarRange + 1) >= v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v18)
    {
      v19 = *&static Date.validCalendarRange;
    }

    else
    {
      v19 = v18;
    }

    memcpy(v24, __dst, 0x11BuLL);
    if (*(&static Date.validCalendarRange + 1) >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v20)
    {
      v20 = *&static Date.validCalendarRange;
    }

    v23 = v20;
    (*(v10 + 200))(&v25, v24, &v23, 0, ObjectType, v10);
    v16 = v25;
    v21 = v26;
    if (one-time initialization token for compatibility2 != -1)
    {
      swift_once();
    }

    v22 = static Calendar.compatibility2;
    outlined destroy of TermOfAddress?(__src, &_s10Foundation14DateComponentsVSgMd);
    if (v22 == 1)
    {
      if (v21)
      {
        v16 = v8;
      }
    }

    else if (v21)
    {
LABEL_28:
      *a4 = v16;
      goto LABEL_16;
    }

LABEL_22:
    *a4 = v16;
    *(a4 + 8) = 0;
    return;
  }

  __break(1u);
}

double *Calendar.dateAfterMatchingMinute(startingAt:components:direction:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*(a2 + 136))
  {
    *a3 = 0;
    *(a3 + 8) = 1;
    return result;
  }

  v5 = *result;
  v6 = *(a2 + 128);
  v7 = *(v3 + 8);
  v28 = 32;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v8 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v8 = v5;
  }

  if (*&static Date.validCalendarRange >= v8)
  {
    v9 = *&static Date.validCalendarRange;
  }

  else
  {
    v9 = v8;
  }

  ObjectType = swift_getObjectType();
  __src[0] = v9;
  v11 = *(v7 + 192);
  v11(v26, &v28, __src, ObjectType, v7);
  outlined destroy of DateComponents(v26);
  if ((v27 & 1) == 0)
  {
    if (v6 != v26[16])
    {
      goto LABEL_12;
    }

LABEL_38:
    LOBYTE(v24) = 5;
    v19 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v5)
    {
      v19 = v5;
    }

    if (*&static Date.validCalendarRange >= v19)
    {
      v19 = *&static Date.validCalendarRange;
    }

    *__dst = v19;
    result = (*(v7 + 160))(__src, &v24, __dst, ObjectType, v7);
    if ((LOBYTE(__src[2]) & 1) == 0)
    {
      v5 = __src[0];
    }

LABEL_44:
    *v4 = v5;
    *(v4 + 8) = 0;
    return result;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

LABEL_12:
  v21 = v4;
  v12 = static Date.validCalendarRange;
  v13 = *(v7 + 160);
  LOBYTE(v24) = 5;
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v14)
  {
    v14 = *&static Date.validCalendarRange;
  }

  *__dst = v14;
  v13(__src, &v24, __dst, ObjectType, v7);
  if ((LOBYTE(__src[2]) & 1) == 0)
  {
    while (1)
    {
      v15 = __src[1] + __src[0];
      v24 = 32;
      v18 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= __src[1] + __src[0])
      {
        v18 = __src[1] + __src[0];
      }

      if (*&static Date.validCalendarRange >= v18)
      {
        v18 = *&static Date.validCalendarRange;
      }

      v22 = v18;
      v11(__src, &v24, &v22, ObjectType, v7);
      memcpy(__dst, __src, 0x11BuLL);
      result = outlined destroy of DateComponents(__dst);
      if (LOBYTE(__dst[17]) == 1)
      {
        if (v15 == v5)
        {
          goto LABEL_45;
        }

        if (!v6)
        {
LABEL_36:
          v5 = v15;
          v4 = v21;
          goto LABEL_44;
        }
      }

      else
      {
        if (v15 == v5)
        {
LABEL_45:
          lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
          swift_allocError();
          *v20 = v15;
          *(v20 + 8) = v5;
          *(v20 + 16) = 1;
          return swift_willThrow();
        }

        if (v6 == __dst[16])
        {
          goto LABEL_36;
        }
      }

      LOBYTE(v24) = 5;
      if (*(&v12 + 1) >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = *(&v12 + 1);
      }

      if (*&v12 >= v17)
      {
        v17 = *&v12;
      }

      *__dst = v17;
      v13(__src, &v24, __dst, ObjectType, v7);
      v5 = v15;
      if (LOBYTE(__src[2]) == 1)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = v5;
LABEL_19:
  lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
  swift_allocError();
  *v16 = 5;
  *(v16 + 8) = v15;
  *(v16 + 16) = 0;
  return swift_willThrow();
}

BOOL specialized static DateComponents.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v24 = *(a1 + 281);
  v22 = *(a1 + 282);
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v23 = *(a2 + 281);
  v21 = *(a2 + 282);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 4))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 6))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 216))
  {
    if (!*(a2 + 216))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 208) == *(a2 + 26))
    {
      v5 = *(a2 + 216);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) == *(a2 + 8))
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) == *(a2 + 10))
    {
      v7 = *(a2 + 88);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (*(a1 + 120))
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 112) == *(a2 + 14))
    {
      v8 = *(a2 + 120);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (*(a1 + 136))
  {
    if (!*(a2 + 136))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 128) == *(a2 + 16))
    {
      v9 = *(a2 + 136);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (*(a1 + 152))
  {
    if (!*(a2 + 152))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 144) == *(a2 + 18))
    {
      v10 = *(a2 + 152);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (*(a1 + 184))
  {
    if (!*(a2 + 184))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 176) == *(a2 + 22))
    {
      v11 = *(a2 + 184);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (*(a1 + 200))
  {
    if (!*(a2 + 200))
    {
      return 0;
    }
  }

  else
  {
    v12 = *(a2 + 200);
    if (*(a1 + 192) != *(a2 + 24))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (*(a1 + 248))
  {
    if (!*(a2 + 248))
    {
      return 0;
    }
  }

  else
  {
    v13 = *(a2 + 248);
    if (*(a1 + 240) != *(a2 + 30))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (*(a1 + 264))
  {
    if (!*(a2 + 264))
    {
      return 0;
    }
  }

  else
  {
    v14 = *(a2 + 264);
    if (*(a1 + 256) != *(a2 + 32))
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (*(a1 + 280))
  {
    if (!*(a2 + 280))
    {
      return 0;
    }
  }

  else
  {
    v15 = *(a2 + 280);
    if (*(a1 + 272) != *(a2 + 34))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (*(a1 + 168))
  {
    if (!*(a2 + 168))
    {
      return 0;
    }
  }

  else
  {
    v16 = *(a2 + 168);
    if (*(a1 + 160) != *(a2 + 20))
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v25 = *(a1 + 16);
  v26 = a2[1];
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a2 + 104);
    if (*(a1 + 96) != *(a2 + 12))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v24 == 2)
  {
    if (v23 == 2)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  if ((v24 & 1) == 0)
  {
LABEL_104:
    if (v23)
    {
      return 0;
    }

    goto LABEL_105;
  }

  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_105:
  if (v22 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v22 ^ v21) & 1) != 0)
  {
    return 0;
  }

  if (*a1)
  {
    *v28 = *a1;
    if (!v2)
    {
      goto LABEL_121;
    }

    v27 = v2;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v18 = specialized static Calendar.== infix(_:_:)(v28, &v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    goto LABEL_121;
  }

  if (v25)
  {
    *v28 = v25;
    if (v26)
    {
      v27 = v26;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      v19 = specialized static TimeZone.== infix(_:_:)(v28, &v27);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return (v19 & 1) != 0;
    }

LABEL_121:
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  if (v26)
  {
    goto LABEL_121;
  }

  return 1;
}

BOOL Calendar.date(_:containsMatchingComponents:)(unint64_t *a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + 240);
  v5 = (a3 + 32);
  v6 = *(a3 + 208);
  v83 = *(a3 + 224);
  v84 = v4;
  v7 = *(a3 + 240);
  v85[0] = *(a3 + 256);
  v8 = *(a3 + 176);
  v9 = *(a3 + 144);
  v79 = *(a3 + 160);
  v80 = v8;
  v10 = *(a3 + 176);
  v11 = *(a3 + 208);
  v81 = *(a3 + 192);
  v82 = v11;
  v12 = *(a3 + 112);
  v13 = *(a3 + 80);
  v75 = *(a3 + 96);
  v76 = v12;
  v14 = *(a3 + 112);
  v15 = *(a3 + 144);
  v77 = *(a3 + 128);
  v78 = v15;
  v16 = *(a3 + 48);
  v71 = *(a3 + 32);
  v72 = v16;
  v17 = *(a3 + 80);
  v19 = *(a3 + 32);
  v18 = *(a3 + 48);
  v73 = *(a3 + 64);
  v74 = v17;
  *(v85 + 9) = *(a3 + 265);
  *&v68[9] = *(a3 + 265);
  v66 = v83;
  v67 = v7;
  *v68 = *(a3 + 256);
  v62 = v79;
  v63 = v10;
  v64 = v81;
  v65 = v6;
  v58 = v75;
  v59 = v14;
  v60 = v77;
  v61 = v9;
  v54 = v19;
  v55 = v18;
  v20 = *a2;
  v21 = *a3;
  v22 = *(a3 + 8);
  v24 = *(a3 + 16);
  v23 = *(a3 + 24);
  v25 = *(a3 + 281);
  v26 = *(a3 + 282);
  v27 = *v3;
  v28 = v3[1];
  v53[1] = *a3;
  v53[2] = v22;
  v53[3] = v24;
  v53[4] = v23;
  v56 = v73;
  v57 = v13;
  v69 = v25;
  v43 = v26;
  v70 = v26;
  DateComponents.setUnits.getter(v53);
  v29 = v53[0];
  v51[0] = v53[0];
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v30 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v20)
  {
    v30 = v20;
  }

  if (*&static Date.validCalendarRange >= v30)
  {
    v31 = *&static Date.validCalendarRange;
  }

  else
  {
    v31 = v30;
  }

  ObjectType = swift_getObjectType();
  *__dst = v31;
  (*(v28 + 192))(__src, v51, __dst, ObjectType, v28);
  if ((v29 & 0x4000) != 0)
  {
    __src[0] = v27;
    __src[1] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (__src[2])
    {
      if (v27)
      {
        v51[0] = __src[2];
        v51[1] = __src[3];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(v51);
      }
    }
  }

  if (v21)
  {
    __src[0] = v21;
    __src[1] = v22;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (__src[2])
    {
      v51[0] = __src[2];
      v51[1] = __src[3];
      swift_unknownObjectRetain();
      Calendar.timeZone.setter(v51);
    }
  }

  if (v24)
  {
    v51[0] = v24;
    v51[1] = v23;
    swift_unknownObjectRetain();
    DateComponents.timeZone.setter(v51);
  }

  memcpy(__dst, __src, 0x11BuLL);
  memcpy(v49, __src, 0x11BuLL);
  *&v48[0] = v21;
  *(&v48[0] + 1) = v22;
  *&v48[1] = v24;
  *(&v48[1] + 1) = v23;
  *(&v48[16] + 9) = *(v5 + 233);
  v33 = v5[13];
  v48[14] = v5[12];
  v48[15] = v33;
  v48[16] = v5[14];
  v34 = v5[9];
  v48[10] = v5[8];
  v48[11] = v34;
  v35 = v5[11];
  v48[12] = v5[10];
  v48[13] = v35;
  v36 = v5[5];
  v48[6] = v5[4];
  v48[7] = v36;
  v37 = v5[7];
  v48[8] = v5[6];
  v48[9] = v37;
  v38 = v5[1];
  v48[2] = *v5;
  v48[3] = v38;
  v39 = v5[3];
  v48[4] = v5[2];
  v48[5] = v39;
  BYTE9(v48[17]) = v25;
  BYTE10(v48[17]) = v43;
  outlined init with copy of DateComponents(__dst, v51);
  v40 = specialized static DateComponents.== infix(_:_:)(v49, v48);
  memcpy(v51, v49, 0x11BuLL);
  outlined destroy of DateComponents(v51);
  if (v40)
  {
    *a1 = 0;
    memcpy(v49, __src, 0x11BuLL);
    outlined destroy of DateComponents(v49);
  }

  else
  {
    memcpy(v48, __src, 0x11BuLL);
    memcpy(v49, __src, 0x11BuLL);
    *&v46[0] = v21;
    *(&v46[0] + 1) = v22;
    *&v46[1] = v24;
    *(&v46[1] + 1) = v23;
    *(&v46[16] + 9) = *(v85 + 9);
    v46[14] = v83;
    v46[15] = v84;
    v46[16] = v85[0];
    v46[10] = v79;
    v46[11] = v80;
    v46[12] = v81;
    v46[13] = v82;
    v46[6] = v75;
    v46[7] = v76;
    v46[8] = v77;
    v46[9] = v78;
    v46[2] = v71;
    v46[3] = v72;
    v46[4] = v73;
    v46[5] = v74;
    BYTE9(v46[17]) = v25;
    BYTE10(v46[17]) = v43;
    DateComponents.mismatchedUnits(comparedTo:)(v46, &v47);
    outlined init with copy of DateComponents(v48, v45);
    outlined destroy of DateComponents(v49);
    if (v25 == 2)
    {
      v41 = v47 & 0xFFFFFFFFFFFEFFFFLL;
    }

    else
    {
      v41 = v47;
    }

    memcpy(v46, __src, 0x11BuLL);
    outlined destroy of DateComponents(v46);
    *a1 = v41;
  }

  return v40;
}

uint64_t Calendar.validRange(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  if (v2 != 12)
  {
    if (v2 == 8)
    {
      return 1;
    }

    if (v2 != 1)
    {
      goto LABEL_35;
    }
  }

  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  v5((&v39 + 2), ObjectType, v3);
  if (BYTE2(v39) != 6)
  {
    v5((&v39 + 1), ObjectType, v3);
    if (BYTE1(v39) != 8)
    {
      v5(&v39, ObjectType, v3);
      if (v39 != 12)
      {
        if (v2 == 12)
        {
          v17 = swift_getObjectType();
          BYTE4(v39) = 1;
          v18 = (*(v3 + 136))(&v39 + 4, v17, v3);
          v20 = v19;
          v22 = v21;
          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v23 = v18;
          }

          BYTE3(v39) = 1;
          result = (*(v3 + 128))(&v39 + 3, v17, v3);
          if (v25)
          {
            result = v23 & (v23 >> 63);
            v26 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = 0x7FFFFFFFFFFFFFFFLL;
            if ((v22 & 1) == 0)
            {
              v26 = v20;
            }

            if (v23 < result)
            {
              result = v23;
            }

            if (v26 <= v24)
            {
              v26 = v24;
            }

            if (v26 < result)
            {
              goto LABEL_67;
            }

            if (result == v26)
            {
LABEL_68:
              __break(1u);
              return result;
            }
          }

          if (!__OFSUB__(v26, 1))
          {
            return result;
          }

          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

LABEL_35:
        v27 = swift_getObjectType();
        BYTE6(v39) = v2;
        v28 = (*(v3 + 136))(&v39 + 6, v27, v3);
        v30 = v29;
        v32 = v31;
        if (v31)
        {
          v33 = 0;
        }

        else
        {
          v33 = v28;
        }

        BYTE5(v39) = v2;
        result = (*(v3 + 128))(&v39 + 5, v27, v3);
        if (v35)
        {
          result = v33 & (v33 >> 63);
          v36 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = 0x7FFFFFFFFFFFFFFFLL;
          if ((v32 & 1) == 0)
          {
            v36 = v30;
          }

          if (v33 < result)
          {
            result = v33;
          }

          if (v36 <= v34)
          {
            v36 = v34;
          }

          if (v36 < result)
          {
            goto LABEL_64;
          }

          if (result == v36)
          {
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }
        }

        if (!__OFSUB__(v36, 1))
        {
          return result;
        }

        goto LABEL_66;
      }
    }
  }

  v38 = v2;
  v6 = (*(v3 + 136))(&v38, ObjectType, v3);
  v8 = v7;
  v10 = v9;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  v37 = v2;
  result = (*(v3 + 128))(&v37, ObjectType, v3);
  if (v14)
  {
    v15 = v11 & (v11 >> 63);
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_23;
  }

  if (v10)
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = v8;
  }

  if (v11 >= result)
  {
    v15 = result;
  }

  else
  {
    v15 = v11;
  }

  if (v16 <= v13)
  {
    v16 = v13;
  }

  if (v16 < v15)
  {
    goto LABEL_61;
  }

  if (v15 == v16)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_23:
  if (__OFSUB__(v16, 1))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v15 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v15 = 0x7FFFFFFFFFFFFFFELL;
  }

  if (v15 <= 1)
  {
    return 1;
  }

  else
  {
    return v15;
  }
}

uint64_t specialized _CalendarGregorian.minimumRange(of:)(unsigned __int8 *a1)
{
  result = *a1;
  switch(result)
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 1;
      break;
    case 3:
      result = 1;
      break;
    case 4:
      result = 0;
      break;
    case 5:
    case 6:
      result = 0;
      break;
    case 7:
      result = 1;
      break;
    case 8:
    case 9:
    case 10:
      result = 1;
      break;
    case 11:
      result = 1;
      break;
    case 12:
      result = 140742;
      break;
    case 13:
      result = 0;
      break;
    case 14:
    case 15:
      result = 0;
      break;
    case 16:
    case 17:
      result = 0;
      break;
    case 18:
      result = 1;
      break;
    default:
      return result;
  }

  return result;
}

void *Calendar._adjustedComponents(_:date:direction:)@<X0>(char *__src@<X0>, double *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x11BuLL);
  v9 = *a2;
  v10 = *a3;
  v11 = *(v4 + 8);
  DateComponents.highestSetUnit.getter(v112);
  if (LOBYTE(v112[0]) == 3)
  {
    v28 = *(__src + 1);
    v108 = *__src;
    v109 = v28;
    v29 = *(__src + 3);
    v110 = *(__src + 2);
    v111 = v29;
    v30 = __dst[8];
    v107 = __dst[9];
    v31 = *(__src + 249);
    v103 = *(__src + 233);
    v104 = v31;
    v32 = *(__src + 185);
    v99 = *(__src + 169);
    v100 = v32;
    v33 = *(__src + 217);
    v101 = *(__src + 201);
    v102 = v33;
    v34 = *(__src + 121);
    v95 = *(__src + 105);
    v96 = v34;
    v35 = *(__src + 153);
    v97 = *(__src + 137);
    v98 = v35;
    v36 = *(__src + 89);
    v93 = *(__src + 73);
    v94 = v36;
    v105 = *(__src + 265);
    v106 = *(__src + 281);
    if (v10)
    {
      v91 = 8;
      outlined init with copy of DateComponents(__dst, v112);
      if (one-time initialization token for validCalendarRange != -1)
      {
        swift_once();
      }

      v37 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v9)
      {
        v37 = v9;
      }

      if (*&static Date.validCalendarRange >= v37)
      {
        v38 = *&static Date.validCalendarRange;
      }

      else
      {
        v38 = v37;
      }

      ObjectType = swift_getObjectType();
      *v92 = v38;
      v40 = *(v11 + 192);
      v40(v112, &v91, v92, ObjectType, v11);
      outlined destroy of DateComponents(v112);
      v42 = v114;
      if (v115)
      {
        v42 = 0;
      }

      if ((__dst[11] & 1) == 0 && __dst[10] < v42)
      {
        *&__srca[0] = 4;
        v43 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v9)
        {
          v43 = v9;
        }

        if (*&static Date.validCalendarRange >= v43)
        {
          v43 = *&static Date.validCalendarRange;
        }

        *v87 = v43;
        v40(v92, __srca, v87, ObjectType, v11);
LABEL_83:
        result = outlined destroy of DateComponents(v92);
        v57 = *&v92[4];
        v58 = BYTE8(v92[4]);
LABEL_91:
        if (v58)
        {
          v57 = 0;
        }

        if (v57 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = 0;
        }

        else
        {
          v30 = v57;
        }

        v107 = v57 == 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_97;
      }

      LOBYTE(v92[0]) = 2;
      v41.value = -1;
      DateComponents.init(component:value:)(v41, v92, __srca);
      memcpy(v92, __srca, 0x11BuLL);
      result = _s10Foundation13URLComponentsV01_B0VSgWOg(v92);
      if (result != 1)
      {
        if (*(&static Date.validCalendarRange + 1) >= v9)
        {
          v49 = v9;
        }

        else
        {
          v49 = *(&static Date.validCalendarRange + 1);
        }

        if (*&static Date.validCalendarRange >= v49)
        {
          v50 = *&static Date.validCalendarRange;
        }

        else
        {
          v50 = v49;
        }

        memcpy(v87, v92, 0x11BuLL);
        if (*(&static Date.validCalendarRange + 1) >= v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = *(&static Date.validCalendarRange + 1);
        }

        if (*&static Date.validCalendarRange >= v51)
        {
          v51 = *&static Date.validCalendarRange;
        }

        v86 = v51;
        (*(v11 + 200))(&v88, v87, &v86, 0, ObjectType, v11);
        v52 = *&v88;
        v53 = v89;
        if (one-time initialization token for compatibility2 != -1)
        {
          swift_once();
        }

        v54 = static Calendar.compatibility2;
        result = outlined destroy of TermOfAddress?(__srca, &_s10Foundation14DateComponentsVSgMd);
        if (v54 == 1)
        {
          v55 = v52;
          if (v53)
          {
            v55 = v9;
          }

          goto LABEL_86;
        }

        if ((v53 & 1) == 0)
        {
          v55 = v52;
LABEL_86:
          v88 = 4;
          if (*(&static Date.validCalendarRange + 1) < v55)
          {
            v55 = *(&static Date.validCalendarRange + 1);
          }

          if (*&static Date.validCalendarRange >= v55)
          {
            v55 = *&static Date.validCalendarRange;
          }

          v86 = v55;
          v40(v87, &v88, &v86, ObjectType, v11);
          result = outlined destroy of DateComponents(v87);
          v57 = v87[8];
          v58 = LOBYTE(v87[9]);
          goto LABEL_91;
        }
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    *&__srca[0] = 8;
    outlined init with copy of DateComponents(__dst, v112);
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v44 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v9)
    {
      v44 = v9;
    }

    if (*&static Date.validCalendarRange >= v44)
    {
      v45 = *&static Date.validCalendarRange;
    }

    else
    {
      v45 = v44;
    }

    v46 = swift_getObjectType();
    *v92 = v45;
    v47 = *(v11 + 192);
    v47(v112, __srca, v92, v46, v11);
    result = outlined destroy of DateComponents(v112);
    v48 = v114;
    if (v115)
    {
      v48 = 0;
    }

    if (__dst[11])
    {
      if (v48 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_97;
      }
    }

    else if (v48 >= __dst[10])
    {
LABEL_97:
      v59 = v109;
      *a4 = v108;
      *(a4 + 16) = v59;
      v60 = v111;
      *(a4 + 32) = v110;
      *(a4 + 48) = v60;
      v61 = v104;
      *(a4 + 233) = v103;
      *(a4 + 249) = v61;
      v62 = v100;
      *(a4 + 169) = v99;
      *(a4 + 185) = v62;
      v63 = v102;
      *(a4 + 201) = v101;
      *(a4 + 217) = v63;
      v64 = v96;
      *(a4 + 105) = v95;
      *(a4 + 121) = v64;
      v65 = v98;
      *(a4 + 137) = v97;
      *(a4 + 153) = v65;
      v66 = v94;
      *(a4 + 73) = v93;
      v67 = v107;
      *(a4 + 64) = v30;
      *(a4 + 72) = v67;
      *(a4 + 89) = v66;
      *(a4 + 265) = v105;
      *(a4 + 281) = v106;
      return result;
    }

    v87[0] = 4;
    v56 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v9)
    {
      v56 = v9;
    }

    if (*&static Date.validCalendarRange >= v56)
    {
      v56 = *&static Date.validCalendarRange;
    }

    v88 = *&v56;
    v47(v92, v87, &v88, v46, v11);
    goto LABEL_83;
  }

  if (LOBYTE(v112[0]) != 2)
  {
    memcpy(a4, __src, 0x11BuLL);
    return outlined init with copy of DateComponents(__dst, v112);
  }

  v83 = *__src;
  v84 = *(__src + 1);
  v85 = *(__src + 2);
  v12 = __src + 57;
  v76 = *(__src + 185);
  v77 = *(__src + 201);
  v78 = *(__src + 217);
  v79 = *(__src + 233);
  v72 = *(__src + 121);
  v73 = *(__src + 137);
  v74 = *(__src + 153);
  v75 = *(__src + 169);
  v68 = *(__src + 57);
  v69 = *(__src + 73);
  v70 = *(__src + 89);
  v71 = *(__src + 105);
  v80 = *(__src + 249);
  v81 = *(__src + 265);
  v82 = *(__src + 281);
  v87[0] = 2;
  outlined init with copy of DateComponents(__dst, v112);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v13 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v9)
  {
    v13 = v9;
  }

  if (*&static Date.validCalendarRange >= v13)
  {
    v14 = *&static Date.validCalendarRange;
  }

  else
  {
    v14 = v13;
  }

  v15 = swift_getObjectType();
  *v92 = v14;
  (*(v11 + 192))(v112, v87, v92, v15, v11);
  outlined destroy of DateComponents(v112);
  v16 = *(__src + 1);
  v92[0] = *__src;
  v92[1] = v16;
  v92[2] = *(__src + 2);
  v17 = *(__src + 249);
  *(&v92[16] + 9) = *(__src + 265);
  v18 = *(__src + 217);
  *(&v92[14] + 9) = *(__src + 233);
  *(&v92[15] + 9) = v17;
  v19 = *(__src + 153);
  *(&v92[10] + 9) = *(__src + 169);
  v20 = *(__src + 201);
  *(&v92[11] + 9) = *(__src + 185);
  *(&v92[12] + 9) = v20;
  *(&v92[13] + 9) = v18;
  v21 = *(__src + 89);
  *(&v92[6] + 9) = *(__src + 105);
  v22 = *(__src + 137);
  *(&v92[7] + 9) = *(__src + 121);
  *(&v92[8] + 9) = v22;
  *(&v92[9] + 9) = v19;
  v23 = *(__src + 73);
  *(&v92[3] + 9) = *v12;
  *(&v92[4] + 9) = v23;
  if (v113)
  {
    v24 = 0;
  }

  else
  {
    v24 = v112[6];
  }

  if (v24 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  LOBYTE(v88) = v24 == 0x7FFFFFFFFFFFFFFFLL;
  *&v92[3] = v25;
  BYTE8(v92[3]) = v24 == 0x7FFFFFFFFFFFFFFFLL;
  *(&v92[17] + 9) = *(v12 + 112);
  *(&v92[5] + 9) = v21;
  result = (*(v11 + 176))(__srca, v92, v15, v11);
  if (LOBYTE(__srca[1]))
  {
    goto LABEL_17;
  }

  if ((v10 & 1) == 0)
  {
    if (__srca[0] >= v9)
    {
      goto LABEL_17;
    }

    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v24 == 0x7FFFFFFFFFFFFFFELL)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24 + 1;
      }

      LOBYTE(v88) = v24 == 0x7FFFFFFFFFFFFFFELL;
      goto LABEL_17;
    }

    goto LABEL_101;
  }

  if (v9 >= __srca[0])
  {
LABEL_17:
    *a4 = v83;
    *(a4 + 16) = v84;
    *(a4 + 32) = v85;
    *(a4 + 233) = v79;
    *(a4 + 249) = v80;
    *(a4 + 169) = v75;
    *(a4 + 185) = v76;
    *(a4 + 201) = v77;
    *(a4 + 217) = v78;
    *(a4 + 105) = v71;
    *(a4 + 121) = v72;
    *(a4 + 137) = v73;
    *(a4 + 153) = v74;
    *(a4 + 57) = v68;
    *(a4 + 73) = v69;
    *(a4 + 89) = v70;
    v27 = v88;
    *(a4 + 48) = v25;
    *(a4 + 56) = v27;
    *(a4 + 265) = v81;
    *(a4 + 281) = v82;
    return result;
  }

  if (v24 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v24 - 1;
    if (!__OFSUB__(v24, 1))
    {
      LOBYTE(v88) = 0;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_99;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

void DateComponents.highestSetUnit.getter(char *a1@<X8>)
{
  if (v1[40] == 1)
  {
    if (v1[104])
    {
      v2 = 9;
    }

    else
    {
      v2 = 18;
    }

    if (!v1[56])
    {
      v2 = 1;
    }

    v3 = v1[56] & v1[104] & v1[216] & v1[72] & v1[88];
    if (v1[72])
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    if ((v1[56] & v1[104]) & v1[216])
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }

    v6 = v3 & v1[120] & v1[136];
    if (v1[120])
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }

    if ((v1[56] & v1[104] & v1[216]) & (v1[72] & v1[88]))
    {
      v5 = v7;
    }

    if (v1[152])
    {
      v8 = 7;
    }

    else
    {
      v8 = 6;
    }

    if (v3 & (v1[120] & v1[136]))
    {
      v5 = v8;
    }

    if (v1[200])
    {
      v9 = 10;
    }

    else
    {
      v9 = 8;
    }

    if ((v6 & (v1[152] & v1[184]) & 1) == 0)
    {
      v9 = v5;
    }

    if ((v6 & v1[152] & v1[184]) & (v1[200] & v1[248]))
    {
      v9 = 11;
      if (v1[264])
      {
        if (v1[168])
        {
          v9 = 19;
        }

        else
        {
          v9 = 13;
        }

        if (!v1[280])
        {
          v9 = 12;
        }
      }
    }

    *a1 = v9;
  }

  else
  {
    *a1 = 0;
  }
}

double *Calendar.dateAfterMatchingEra(startingAt:components:direction:matchedEra:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 40))
  {
    goto LABEL_15;
  }

  v7 = *result;
  v8 = *(a2 + 32);
  v9 = *a3;
  v10 = *(v5 + 8);
  v27[0] = 1;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v11 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v11 = v7;
  }

  if (*&static Date.validCalendarRange >= v11)
  {
    v12 = *&static Date.validCalendarRange;
  }

  else
  {
    v12 = v11;
  }

  ObjectType = swift_getObjectType();
  *__src = v12;
  v14 = *(v10 + 192);
  v14(v24, v27, __src, ObjectType, v10);
  result = outlined destroy of DateComponents(v24);
  if (v26)
  {
    if (!v8)
    {
LABEL_15:
      *a5 = 0;
      *(a5 + 8) = 1;
      return result;
    }

    if (v9)
    {
      if (v8 > 0)
      {
LABEL_13:
        *a4 = 0;
        goto LABEL_15;
      }
    }

    else if (v8 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v8 == v25)
    {
      goto LABEL_15;
    }

    if (v9)
    {
      if (v25 < v8)
      {
        goto LABEL_13;
      }
    }

    else if (v8 < v25)
    {
      goto LABEL_13;
    }
  }

  LOBYTE(__src[5]) = 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  __src[14] = 0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[28] = 0;
  LOBYTE(__src[29]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[33]) = 1;
  __src[32] = 0;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  *(&__src[35] + 1) = 514;
  memset(__src, 0, 40);
  __dst[0] = 0;
  __dst[1] = 0;
  DateComponents.timeZone.setter(__dst);
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[33]) = 1;
  __src[32] = 0;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  __src[4] = v15;
  LOBYTE(__src[5]) = v8 == 0x7FFFFFFFFFFFFFFFLL;
  __src[6] = 1;
  LOBYTE(__src[7]) = 0;
  __src[8] = 1;
  LOBYTE(__src[9]) = 0;
  __src[10] = 1;
  LOBYTE(__src[11]) = 0;
  __src[14] = 0;
  LOBYTE(__src[15]) = 0;
  __src[16] = 0;
  LOBYTE(__src[17]) = 0;
  __src[18] = 0;
  LOBYTE(__src[19]) = 0;
  __src[20] = 0;
  LOBYTE(__src[21]) = 0;
  memcpy(__dst, __src, 0x11BuLL);
  (*(v10 + 176))(v20, __dst, ObjectType, v10);
  v16 = v20[0];
  if (LOBYTE(v20[1]))
  {
    memcpy(__dst, __src, 0x11BuLL);
    result = outlined destroy of DateComponents(__dst);
    *a4 = 0;
    *a5 = v16;
    *(a5 + 8) = 1;
  }

  else
  {
    v17 = v20[0];
    v21 = 1;
    if (*(&static Date.validCalendarRange + 1) < v20[0])
    {
      v17 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v17)
    {
      v17 = *&static Date.validCalendarRange;
    }

    v20[0] = v17;
    v14(__dst, &v21, v20, ObjectType, v10);
    outlined destroy of DateComponents(__dst);
    if (LOBYTE(__dst[5]))
    {
      v18 = 0;
    }

    else
    {
      v18 = __dst[4];
    }

    memcpy(v20, __src, 0x11BuLL);
    result = outlined destroy of DateComponents(v20);
    if (v18 != v8)
    {
      *a4 = 0;
    }

    *a5 = v16;
    *(a5 + 8) = 0;
  }

  return result;
}

BOOL DateComponents._validate(for:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 40);
  v74 = *(v1 + 48);
  v5 = *(v1 + 56);
  v68 = *(v1 + 64);
  v73 = *(v1 + 72);
  v66 = *(v1 + 80);
  v71 = *(v1 + 88);
  v72 = *(v1 + 96);
  v6 = *(v1 + 104);
  v64 = *(v1 + 112);
  v69 = *(v1 + 120);
  v62 = *(v1 + 128);
  v67 = *(v1 + 136);
  v60 = *(v1 + 144);
  v65 = *(v1 + 152);
  v7 = *(v1 + 160);
  v8 = *(v1 + 168);
  v58 = *(v1 + 176);
  v63 = *(v1 + 184);
  v56 = *(v1 + 192);
  v61 = *(v1 + 200);
  v70 = *(v1 + 208);
  v75 = *(v1 + 216);
  v59 = *(v1 + 248);
  v53 = *(v1 + 256);
  v54 = *(v1 + 240);
  v57 = *(v1 + 264);
  v9 = *(v1 + 272);
  v55 = *(v1 + 280);
  v10 = *(v1 + 281);
  v11 = *(v1 + 282);
  if ((v4 & 1) != 0 || (v51 = *(v1 + 104), v52 = *(v1 + 281), v12 = *(v1 + 282), v13 = *(v1 + 272), v14 = *(v1 + 168), v15 = *(v1 + 160), v16 = *(v1 + 32), v77 = *a1, v78 = v2, v76 = 0, v18 = Calendar.validRange(for:)(&v76), result = 0, v16 >= v18) && (v20 = v17 < v16, v7 = v15, v8 = v14, v9 = v13, v11 = v12, v6 = v51, v10 = v52, !v20))
  {
    if (v5)
    {
      v21 = v4 ^ 1;
    }

    else
    {
      v22 = v6;
      v77 = v3;
      v78 = v2;
      v21 = 1;
      v76 = 1;
      v24 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v74 < v24)
      {
        return result;
      }

      v6 = v22;
      if (v23 < v74)
      {
        return result;
      }
    }

    if ((v6 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 18;
      v26 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v72 < v26 || v25 < v72)
      {
        return result;
      }

      v21 = 1;
    }

    if ((v75 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 9;
      v28 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v70 < v28 || v27 < v70)
      {
        return result;
      }

      v21 = 1;
    }

    if ((v73 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 2;
      v30 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v68 < v30 || v29 < v68)
      {
        return result;
      }

      v21 = 1;
    }

    if ((v71 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 3;
      v32 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v66 < v32 || v31 < v66)
      {
        return result;
      }

      v21 = 1;
    }

    if ((v69 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 4;
      v34 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v64 < v34 || v33 < v64)
      {
        return result;
      }

      v21 = 1;
    }

    if ((v67 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 5;
      v36 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v62 < v36 || v35 < v62)
      {
        return result;
      }

      v21 = 1;
    }

    if ((v65 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 6;
      v38 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v60 < v38 || v37 < v60)
      {
        return result;
      }

      v21 = 1;
    }

    if ((v63 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 7;
      v40 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v58 < v40 || v39 < v58)
      {
        return result;
      }

      v21 = 1;
    }

    if ((v61 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 8;
      v42 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v56 < v42 || v41 < v56)
      {
        return result;
      }

      v21 = 1;
    }

    if ((v59 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 10;
      v44 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v54 < v44 || v43 < v54)
      {
        return result;
      }

      v21 = 1;
    }

    if ((v57 & 1) == 0)
    {
      v77 = v3;
      v78 = v2;
      v76 = 11;
      v46 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v53 < v46 || v45 < v53)
      {
        return result;
      }

      v21 = 1;
    }

    if (v55)
    {
      if (v8)
      {
        return (v21 & 1) != 0 || v10 != 2 && (v10 & 1) != 0 || v11 != 2 && (v11 & 1) != 0;
      }
    }

    else
    {
      v77 = v3;
      v78 = v2;
      v76 = 12;
      v48 = Calendar.validRange(for:)(&v76);
      result = 0;
      if (v9 < v48 || v47 < v9)
      {
        return result;
      }

      if (v8)
      {
        return 1;
      }
    }

    v77 = v3;
    v78 = v2;
    v76 = 13;
    v50 = Calendar.validRange(for:)(&v76);
    result = 0;
    if (v7 >= v50 && v49 >= v7)
    {
      return 1;
    }
  }

  return result;
}

double *Calendar.dateAfterMatchingQuarter(startingAt:components:direction:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 216))
  {
    *a4 = 0;
    *(a4 + 8) = 1;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v37 = v4;
  v38 = v5;
  v39 = v6;
  v9 = *result;
  v10 = *(a2 + 208);
  v11 = *a3;
  v12 = *(v4 + 8);
  v36 = 1;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v13 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v9)
  {
    v13 = v9;
  }

  if (*&static Date.validCalendarRange >= v13)
  {
    v14 = *&static Date.validCalendarRange;
  }

  else
  {
    v14 = v13;
  }

  ObjectType = swift_getObjectType();
  v30 = v14;
  v16 = *(v12 + 160);
  result = v16(&v31, &v36, &v30, ObjectType, v12);
  if ((v33 & 1) == 0)
  {
    v9 = v31;
    if (v11)
    {
      v9 = v31 + v32 + -1.0;
      if (v10 == 4)
      {
        goto LABEL_39;
      }

      v36 = 9;
      v18 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v9)
      {
        v18 = v31 + v32 + -1.0;
      }

      if (*&static Date.validCalendarRange >= v18)
      {
        v18 = *&static Date.validCalendarRange;
      }

      v30 = v18;
      result = v16(&v31, &v36, &v30, ObjectType, v12);
      if (v33)
      {
        goto LABEL_54;
      }

      v9 = v31 - v32;
      if (v10 == 3)
      {
        goto LABEL_39;
      }

      v36 = 9;
      v19 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v9)
      {
        v19 = v31 - v32;
      }

      if (*&static Date.validCalendarRange >= v19)
      {
        v19 = *&static Date.validCalendarRange;
      }

      v30 = v19;
      result = v16(&v31, &v36, &v30, ObjectType, v12);
      if (v33)
      {
        goto LABEL_54;
      }

      v9 = v31 - v32;
      if (v10 == 2)
      {
        goto LABEL_39;
      }

      v36 = 9;
      v20 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v9)
      {
        v20 = v31 - v32;
      }

      if (*&static Date.validCalendarRange >= v20)
      {
        v20 = *&static Date.validCalendarRange;
      }

      v30 = v20;
      result = v16(&v31, &v36, &v30, ObjectType, v12);
      if (v33)
      {
        goto LABEL_54;
      }

      v9 = v31 - v32;
      if (v10 == 1)
      {
LABEL_39:
        *a4 = v9;
        *(a4 + 8) = 0;
        return result;
      }

      v36 = 9;
      v21 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v9)
      {
        v21 = v31 - v32;
      }

      if (*&static Date.validCalendarRange >= v21)
      {
        v21 = *&static Date.validCalendarRange;
      }

      v30 = v21;
      result = v16(&v31, &v36, &v30, ObjectType, v12);
      if ((v33 & 1) == 0)
      {
        v9 = v31 - v32;
        goto LABEL_39;
      }
    }

    else
    {
      if (v10 == 1)
      {
        goto LABEL_39;
      }

      v22 = v10 - 2;
      if ((v10 - 2) >= 3)
      {
        v23 = 3;
      }

      else
      {
        v23 = v10 - 2;
      }

      v36 = 9;
      v24 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v31)
      {
        v24 = v31;
      }

      if (*&static Date.validCalendarRange >= v24)
      {
        v24 = *&static Date.validCalendarRange;
      }

      v30 = v24;
      result = v16(&v31, &v36, &v30, ObjectType, v12);
      if ((v33 & 1) == 0)
      {
        v9 = v32 + v31;
        if (!v22)
        {
          goto LABEL_39;
        }

        v36 = 9;
        v25 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v9)
        {
          v25 = v32 + v31;
        }

        if (*&static Date.validCalendarRange >= v25)
        {
          v25 = *&static Date.validCalendarRange;
        }

        v30 = v25;
        result = v16(&v31, &v36, &v30, ObjectType, v12);
        if ((v33 & 1) == 0)
        {
          v9 = v32 + v31;
          if (v23 == 1)
          {
            goto LABEL_39;
          }

          v36 = 9;
          v27 = *(&static Date.validCalendarRange + 1);
          if (*(&static Date.validCalendarRange + 1) >= v9)
          {
            v27 = v32 + v31;
          }

          if (*&static Date.validCalendarRange >= v27)
          {
            v27 = *&static Date.validCalendarRange;
          }

          v30 = v27;
          result = v16(&v31, &v36, &v30, ObjectType, v12);
          if ((v33 & 1) == 0)
          {
            v9 = v32 + v31;
            if (v23 == 2)
            {
              goto LABEL_39;
            }

            v36 = 9;
            v28 = *(&static Date.validCalendarRange + 1);
            if (*(&static Date.validCalendarRange + 1) >= v9)
            {
              v28 = v32 + v31;
            }

            if (*&static Date.validCalendarRange >= v28)
            {
              v28 = *&static Date.validCalendarRange;
            }

            v30 = v28;
            result = v16(&v31, &v36, &v30, ObjectType, v12);
            if ((v33 & 1) == 0)
            {
              v9 = v32 + v31;
              goto LABEL_39;
            }
          }
        }
      }
    }

LABEL_54:
    v17 = 9;
    goto LABEL_55;
  }

  v17 = 1;
LABEL_55:
  lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
  swift_allocError();
  *v26 = v17;
  *(v26 + 8) = v9;
  *(v26 + 16) = 0;
  return swift_willThrow();
}

double *Calendar.dateAfterMatchingYearForWeekOfYear(startingAt:components:direction:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 280))
  {
    *a4 = 0;
LABEL_3:
    *(a4 + 8) = 1;
    return result;
  }

  v7 = *result;
  v8 = *(a2 + 272);
  v9 = *a3;
  v11 = *v4;
  v10 = *(v4 + 1);
  v20 = 4097;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v12 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v12 = v7;
  }

  if (*&static Date.validCalendarRange >= v12)
  {
    v13 = *&static Date.validCalendarRange;
  }

  else
  {
    v13 = v12;
  }

  ObjectType = swift_getObjectType();
  v23 = v13;
  (*(*&v10 + 192))(v25, &v20, &v23, ObjectType, COERCE_DOUBLE(*&v10));
  if (v28 != 1)
  {
    if (v27 != v8)
    {
      goto LABEL_13;
    }

LABEL_19:
    result = outlined destroy of DateComponents(v25);
    *a4 = 0;
    *(a4 + 8) = 1;
    return result;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

LABEL_13:
  v20 = v11;
  v21 = v10;
  if (v26)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v25[4];
  }

  Calendar.dateIfEraHasYearForWeekOfYear(era:yearForWeekOfYear:)(v15, v8, &v23);
  if (v5)
  {
    return outlined destroy of DateComponents(v25);
  }

  v16 = v23;
  if (v24)
  {
    result = outlined destroy of DateComponents(v25);
    *a4 = v16;
    goto LABEL_3;
  }

  if (v9)
  {
    v29 = 12;
    v17 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v23)
    {
      v17 = v23;
    }

    if (*&static Date.validCalendarRange >= v17)
    {
      v17 = *&static Date.validCalendarRange;
    }

    v23 = v17;
    (*(*&v10 + 160))(&v20, &v29, &v23, ObjectType, COERCE_DOUBLE(*&v10));
    if (v22)
    {
      lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
      swift_allocError();
      *v18 = 12;
      *(v18 + 8) = v16;
      *(v18 + 16) = 0;
      swift_willThrow();
      return outlined destroy of DateComponents(v25);
    }

    v19 = v21;
    result = outlined destroy of DateComponents(v25);
    *a4 = v19 + -1.0 + v16;
  }

  else
  {
    result = outlined destroy of DateComponents(v25);
    *a4 = v16;
  }

  *(a4 + 8) = 0;
  return result;
}

double *Calendar.dateAfterMatchingDayOfYear(startingAt:components:direction:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 104))
  {
    goto LABEL_2;
  }

  v6 = *result;
  v23 = *(a2 + 96);
  v7 = *a3;
  v8 = *(v4 + 8);
  v29 = 0x40000;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v9 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v9 = v6;
  }

  if (*&static Date.validCalendarRange >= v9)
  {
    v10 = *&static Date.validCalendarRange;
  }

  else
  {
    v10 = v9;
  }

  ObjectType = swift_getObjectType();
  __src[0] = v10;
  v12 = *(v8 + 192);
  v12(v27, &v29, __src, ObjectType, v8);
  result = outlined destroy of DateComponents(v27);
  if (v28)
  {
    if (!v23)
    {
      goto LABEL_2;
    }
  }

  else if (v23 == v27[12])
  {
LABEL_2:
    *a4 = 0;
    *(a4 + 8) = 1;
    return result;
  }

  v22 = a4;
  v13 = static Date.validCalendarRange;
  v14 = *(v8 + 160);
  while (1)
  {
    LOBYTE(v25) = 18;
    if (*(&v13 + 1) >= v6)
    {
      v15 = v6;
    }

    else
    {
      v15 = *(&v13 + 1);
    }

    if (*&v13 >= v15)
    {
      v15 = *&v13;
    }

    *__dst = v15;
    v14(__src, &v25, __dst, ObjectType, v8);
    if (LOBYTE(__src[2]))
    {
      lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
      swift_allocError();
      v21 = 0;
      *v20 = 18;
      goto LABEL_37;
    }

    if (v7)
    {
      v16 = __src[0] - __src[1];
    }

    else
    {
      v16 = __src[1] + __src[0];
    }

    v25 = 0x40000;
    v17 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v16)
    {
      v17 = v16;
    }

    if (*&static Date.validCalendarRange >= v17)
    {
      v17 = *&static Date.validCalendarRange;
    }

    *__dst = v17;
    v12(__src, &v25, __dst, ObjectType, v8);
    memcpy(__dst, __src, 0x11BuLL);
    result = outlined destroy of DateComponents(__dst);
    v18 = __dst[12];
    if (LOBYTE(__dst[13]))
    {
      v18 = 0;
    }

    v19 = v6 >= v16;
    if (v7)
    {
      v19 = v16 >= v6;
    }

    if (v19)
    {
      break;
    }

    v6 = v16;
    if (v23 == v18)
    {
      *v22 = v16;
      *(v22 + 8) = 0;
      return result;
    }
  }

  lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
  swift_allocError();
  *v20 = v16;
  v21 = 1;
LABEL_37:
  *(v20 + 8) = v6;
  *(v20 + 16) = v21;
  return swift_willThrow();
}

double *Calendar.dateAfterMatchingWeekOfYear(startingAt:components:direction:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 264))
  {
    goto LABEL_2;
  }

  v6 = *result;
  v23 = *(a2 + 256);
  v7 = *a3;
  v8 = *(v4 + 8);
  v30 = 2048;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v9 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v9 = v6;
  }

  if (*&static Date.validCalendarRange >= v9)
  {
    v10 = *&static Date.validCalendarRange;
  }

  else
  {
    v10 = v9;
  }

  ObjectType = swift_getObjectType();
  __src[0] = v10;
  v12 = *(v8 + 192);
  v12(v28, &v30, __src, ObjectType, v8);
  result = outlined destroy of DateComponents(v28);
  if (v29)
  {
    if (!v23)
    {
      goto LABEL_2;
    }
  }

  else if (v23 == v28[32])
  {
LABEL_2:
    *a4 = 0;
    *(a4 + 8) = 1;
    return result;
  }

  v22 = a4;
  v13 = static Date.validCalendarRange;
  v14 = *(v8 + 160);
  while (1)
  {
    LOBYTE(v26) = 11;
    if (*(&v13 + 1) >= v6)
    {
      v15 = v6;
    }

    else
    {
      v15 = *(&v13 + 1);
    }

    if (*&v13 >= v15)
    {
      v15 = *&v13;
    }

    *__dst = v15;
    v14(__src, &v26, __dst, ObjectType, v8);
    if (LOBYTE(__src[2]))
    {
      lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
      swift_allocError();
      v21 = 0;
      *v20 = 11;
      goto LABEL_37;
    }

    if (v7)
    {
      v16 = __src[0] - __src[1];
    }

    else
    {
      v16 = __src[1] + __src[0];
    }

    v26 = 2048;
    v17 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v16)
    {
      v17 = v16;
    }

    if (*&static Date.validCalendarRange >= v17)
    {
      v17 = *&static Date.validCalendarRange;
    }

    v24 = v17;
    v12(__src, &v26, &v24, ObjectType, v8);
    memcpy(__dst, __src, 0x11BuLL);
    result = outlined destroy of DateComponents(__dst);
    v18 = __dst[32];
    if (LOBYTE(__dst[33]))
    {
      v18 = 0;
    }

    v19 = v6 >= v16;
    if (v7)
    {
      v19 = v16 >= v6;
    }

    if (v19)
    {
      break;
    }

    v6 = v16;
    if (v23 == v18)
    {
      *v22 = v16;
      *(v22 + 8) = 0;
      return result;
    }
  }

  lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
  swift_allocError();
  *v20 = v16;
  v21 = 1;
LABEL_37:
  *(v20 + 8) = v6;
  *(v20 + 16) = v21;
  return swift_willThrow();
}

double *Calendar.dateAfterMatchingMonth(startingAt:components:direction:strictMatching:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (*(a2 + 72))
  {
    *a5 = 0;
    *(a5 + 8) = 1;
    return result;
  }

  v7 = *result;
  v46 = *(a2 + 64);
  v8 = *a3;
  v9 = v5[1];
  v42 = *(a2 + 281);
  __src[0] = *v5;
  __src[1] = v9;
  v41 = Calendar.hasRepeatingMonths.getter();
  v55 = 4;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v10 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v10 = v7;
  }

  if (*&static Date.validCalendarRange >= v10)
  {
    v11 = *&static Date.validCalendarRange;
  }

  else
  {
    v11 = v10;
  }

  ObjectType = swift_getObjectType();
  v52[0] = v11;
  v45 = v9[24];
  v45(__src, &v55, v52, ObjectType, v9);
  memcpy(__dst, __src, 0x11BuLL);
  result = outlined destroy of DateComponents(__dst);
  if ((__dst[9] & 1) == 0)
  {
    if (v46 == __dst[8])
    {
      goto LABEL_62;
    }

    goto LABEL_14;
  }

  if (v46)
  {
LABEL_14:
    v13 = static Date.validCalendarRange;
    v14 = v9[20];
    LOBYTE(v48[0]) = 2;
    if (*(&static Date.validCalendarRange + 1) >= v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v15)
    {
      v15 = *&static Date.validCalendarRange;
    }

    v51[0] = v15;
    v44 = v14;
    v14(v52, v48, v51, ObjectType, v9);
    if (LOBYTE(v52[2]))
    {
LABEL_20:
      lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
      swift_allocError();
      *v16 = 2;
      *(v16 + 8) = v7;
LABEL_79:
      *(v16 + 16) = 0;
      return swift_willThrow();
    }

    v17 = v45;
    while (1)
    {
      v19 = v7;
      v20 = v52[1];
      v21 = v52[0];
      if (!v8)
      {
        goto LABEL_47;
      }

      v48[0] = 4;
      v22 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v52[0])
      {
        v22 = v52[0];
      }

      if (*&static Date.validCalendarRange >= v22)
      {
        v22 = *&static Date.validCalendarRange;
      }

      v51[0] = v22;
      v17(v52, v48, v51, ObjectType, v9);
      memcpy(v51, v52, 0x11BuLL);
      outlined destroy of DateComponents(v51);
      if ((LOBYTE(v51[9]) & 1) != 0 || *&v51[8] != 3)
      {
        goto LABEL_44;
      }

      v23 = v9[3];
      v23(&v50, ObjectType, v9);
      if (v50)
      {
        v23(&v50, ObjectType, v9);
        if (v50 != 1)
        {
          v23(&v50, ObjectType, v9);
          if (v50 != 11)
          {
            v23(&v50, ObjectType, v9);
            if (v50 != 7)
            {
              break;
            }
          }
        }
      }

      v24 = -259200.0;
      v17 = v45;
LABEL_46:
      v20 = -(v20 + v24);
LABEL_47:
      v7 = v21 + v20;
      v48[0] = 4;
      v26 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v7)
      {
        v26 = v7;
      }

      if (*&static Date.validCalendarRange >= v26)
      {
        v26 = *&static Date.validCalendarRange;
      }

      v50 = *&v26;
      v17(v52, v48, &v50, ObjectType, v9);
      memcpy(v51, v52, 0x11BuLL);
      result = outlined destroy of DateComponents(v51);
      if (LOBYTE(v51[9]) == 1)
      {
        if (v8)
        {
          if (v7 >= v19)
          {
            goto LABEL_60;
          }
        }

        else if (v19 >= v7)
        {
          goto LABEL_60;
        }

        if (!v46)
        {
          v46 = 0;
          goto LABEL_62;
        }
      }

      else
      {
        v27 = v19 >= v7;
        if (v8)
        {
          v27 = v7 >= v19;
        }

        if (v27)
        {
LABEL_60:
          lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
          swift_allocError();
          *v28 = v7;
          *(v28 + 8) = v19;
          *(v28 + 16) = 1;
          return swift_willThrow();
        }

        if (v46 == *&v51[8])
        {
          goto LABEL_62;
        }
      }

      LOBYTE(v48[0]) = 2;
      if (*(&v13 + 1) >= v7)
      {
        v18 = v7;
      }

      else
      {
        v18 = *(&v13 + 1);
      }

      if (*&v13 >= v18)
      {
        v18 = *&v13;
      }

      v51[0] = v18;
      v44(v52, v48, v51, ObjectType, v9);
      if (LOBYTE(v52[2]) == 1)
      {
        goto LABEL_20;
      }
    }

    v23(&v50, ObjectType, v9);
    v17 = v45;
    if (v50 == 13)
    {
      *&v25 = -259200.0;
    }

    else
    {
LABEL_44:
      *&v25 = -86400.0;
    }

    v24 = *&v25;
    goto LABEL_46;
  }

  v46 = 0;
LABEL_62:
  if ((v41 & v42 & a4 & 1) == 0)
  {
    goto LABEL_69;
  }

  v50 = 4;
  v29 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v29 = v7;
  }

  if (*&static Date.validCalendarRange >= v29)
  {
    v29 = *&static Date.validCalendarRange;
  }

  v51[0] = v29;
  v45(v52, &v50, v51, ObjectType, v9);
  result = outlined destroy of DateComponents(v52);
  if (BYTE1(v52[35]) != 2 && (BYTE1(v52[35]) & 1) != 0)
  {
LABEL_69:
    v30 = v7;
    goto LABEL_70;
  }

  v31 = static Date.validCalendarRange;
  v32 = v9[20];
  LOBYTE(v49) = 2;
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v33 = v7;
  }

  else
  {
    v33 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v33)
  {
    v33 = *&static Date.validCalendarRange;
  }

  *v48 = v33;
  v34 = v32;
  v32(v51, &v49, v48, ObjectType, v9);
  if (LOBYTE(v51[2]))
  {
    v30 = v7;
LABEL_78:
    lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
    swift_allocError();
    *v16 = 2;
    *(v16 + 8) = v30;
    goto LABEL_79;
  }

  while (1)
  {
    v36 = v51[1];
    if (!v8)
    {
      goto LABEL_95;
    }

    if (v51[1] / 86400.0 > 30.0)
    {
      v37 = -172800.0;
LABEL_93:
      v36 = v51[1] + v37;
      goto LABEL_94;
    }

    if (v51[1] / 86400.0 > 28.0)
    {
      v37 = -86400.0;
      goto LABEL_93;
    }

LABEL_94:
    v36 = -v36;
LABEL_95:
    v30 = v51[0] + v36;
    v49 = 4;
    v38 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v30)
    {
      v38 = v30;
    }

    if (*&static Date.validCalendarRange >= v38)
    {
      v38 = *&static Date.validCalendarRange;
    }

    v47 = v38;
    v45(v51, &v49, &v47, ObjectType, v9);
    memcpy(v48, v51, 0x11BuLL);
    if (LOBYTE(v48[9]) != 1)
    {
      break;
    }

    if (v46 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_103;
    }

LABEL_105:
    if (v7 < v30)
    {
      v39 = 1;
    }

    else
    {
      v39 = v8;
    }

    if (v39 != 1 || (v8 & 1) != 0 && v30 >= v7)
    {
      lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
      swift_allocError();
      *v40 = v30;
      *(v40 + 8) = v7;
      *(v40 + 16) = 1;
      swift_willThrow();
      return outlined destroy of DateComponents(v48);
    }

    outlined destroy of DateComponents(v48);
    LOBYTE(v49) = 2;
    if (*(&v31 + 1) >= v30)
    {
      v35 = v30;
    }

    else
    {
      v35 = *(&v31 + 1);
    }

    if (*&v31 >= v35)
    {
      v35 = *&v31;
    }

    *v48 = v35;
    v34(v51, &v49, v48, ObjectType, v9);
    v7 = v30;
    if (LOBYTE(v51[2]) == 1)
    {
      goto LABEL_78;
    }
  }

  if (v48[8] != v46)
  {
    goto LABEL_105;
  }

LABEL_103:
  if (BYTE1(v48[35]) == 2 || (v48[35] & 0x100) == 0)
  {
    goto LABEL_105;
  }

  result = outlined destroy of DateComponents(v48);
LABEL_70:
  *a5 = v30;
  *(a5 + 8) = 0;
  return result;
}

double *Calendar.dateAfterMatchingDay(startingAt:originalStartDate:components:direction:)@<X0>(double *result@<X0>, double *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *result;
  v7 = *a2;
  v8 = *(a3 + 72);
  v51 = *(a3 + 80);
  LODWORD(v9) = *(a3 + 282);
  v52 = *a4;
  v10 = *(v5 + 8);
  v50 = *(a3 + 88);
  if (v50 == 1 && (v9 == 2 || (v9 & 1) == 0))
  {
    *a5 = 0;
    *(a5 + 8) = 1;
    return result;
  }

  v71 = 8;
  if (one-time initialization token for validCalendarRange != -1)
  {
LABEL_128:
    swift_once();
  }

  v11 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v11 = v6;
  }

  if (*&static Date.validCalendarRange >= v11)
  {
    v12 = *&static Date.validCalendarRange;
  }

  else
  {
    v12 = v11;
  }

  ObjectType = swift_getObjectType();
  *v68 = v12;
  v14 = *(v10 + 192);
  v14(__src, &v71, v68, ObjectType, v10);
  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  if (LOBYTE(__dst[11]))
  {
    v15 = 0;
  }

  else
  {
    v15 = __dst[10];
  }

  v67 = 0x80000;
  v16 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v16 = v6;
  }

  if (*&static Date.validCalendarRange >= v16)
  {
    v16 = *&static Date.validCalendarRange;
  }

  v65[0] = v16;
  v14(v68, &v67, v65, ObjectType, v10);
  memcpy(v66, v68, 0x11BuLL);
  outlined destroy of DateComponents(v66);
  v17 = v66[282];
  v47 = v9;
  if (((v8 ^ 1) & v52) == 1)
  {
    v48 = v66[282];
    LOBYTE(v62[0]) = 2;
    v18 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v6)
    {
      v18 = v6;
    }

    if (*&static Date.validCalendarRange >= v18)
    {
      v18 = *&static Date.validCalendarRange;
    }

    *v63 = v18;
    v19 = *(v10 + 160);
    v19(v65, v62, v63, ObjectType, v10);
    if (LOBYTE(v65[2]))
    {
      goto LABEL_31;
    }

    v20 = v65[1] + v65[0] + -1.0;
    if (v7 < v20)
    {
      v6 = v7;
LABEL_31:
      LODWORD(v9) = v47;
      v17 = v48;
      goto LABEL_32;
    }

    LOBYTE(v62[0]) = 3;
    if (*(&static Date.validCalendarRange + 1) < v20)
    {
      v20 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v20)
    {
      v20 = *&static Date.validCalendarRange;
    }

    *v63 = v20;
    v19(v65, v62, v63, ObjectType, v10);
    if (LOBYTE(v65[2]))
    {
      goto LABEL_31;
    }

    v6 = v65[0];
    v59[0] = 8;
    v43 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v65[0])
    {
      v43 = v65[0];
    }

    if (*&static Date.validCalendarRange >= v43)
    {
      v43 = *&static Date.validCalendarRange;
    }

    v62[0] = v43;
    v14(v65, v59, v62, ObjectType, v10);
    memcpy(v63, v65, 0x11BuLL);
    outlined destroy of DateComponents(v63);
    if (LOBYTE(v63[11]))
    {
      v15 = 0;
    }

    else
    {
      v15 = v63[10];
    }

    v57[0] = 0x80000;
    v44 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v6)
    {
      v44 = v6;
    }

    if (*&static Date.validCalendarRange >= v44)
    {
      v44 = *&static Date.validCalendarRange;
    }

    *v56 = v44;
    v14(v62, v57, v56, ObjectType, v10);
    memcpy(v60, v62, 0x11BuLL);
    outlined destroy of DateComponents(v60);
    v17 = BYTE2(v60[35]);
    LODWORD(v9) = v47;
    if (BYTE2(v60[35]) == 2)
    {
      v17 = 0;
    }
  }

LABEL_32:
  v21 = v50;
  if (v51 == v15)
  {
    v21 = 1;
  }

  if (v9 == 2)
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_39:
    LOBYTE(v62[0]) = 3;
    v22 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v6)
    {
      v22 = v6;
    }

    if (*&static Date.validCalendarRange >= v22)
    {
      v22 = *&static Date.validCalendarRange;
    }

    *v63 = v22;
    result = (*(v10 + 160))(v65, v62, v63, ObjectType, v10);
    if ((LOBYTE(v65[2]) & 1) == 0)
    {
      v6 = v65[0];
    }

LABEL_113:
    *a5 = v6;
    *(a5 + 8) = 0;
    return result;
  }

  if (v21 && ((v17 ^ v9) & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_45:
  v64 = 4;
  v23 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v23 = v6;
  }

  if (*&static Date.validCalendarRange >= v23)
  {
    v23 = *&static Date.validCalendarRange;
  }

  v62[0] = v23;
  v14(v65, &v64, v62, ObjectType, v10);
  memcpy(v63, v65, 0x11BuLL);
  outlined destroy of DateComponents(v63);
  v24 = v63[8];
  if (LOBYTE(v63[9]))
  {
    v24 = 0;
  }

  v46 = v24;
  v7 = *(&static Date.validCalendarRange + 1);
  v25 = *&static Date.validCalendarRange;
  v26 = *(v10 + 160);
  LOBYTE(v59[0]) = 3;
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v27 = v6;
  }

  else
  {
    v27 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v27)
  {
    v27 = *&static Date.validCalendarRange;
  }

  *v60 = v27;
  v49 = v26;
  v26(v62, v59, v60, ObjectType, v10);
  if (LOBYTE(v62[2]))
  {
LABEL_57:
    lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
    swift_allocError();
    *v28 = 3;
    *(v28 + 8) = v6;
    *(v28 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    while (1)
    {
      v30 = v6;
      v31 = v62[1];
      v32 = v62[0];
      if (v52)
      {
        v33 = v62[0] + -1.0;
        LOBYTE(v59[0]) = 3;
        if (*(&static Date.validCalendarRange + 1) < v62[0] + -1.0)
        {
          v33 = *(&static Date.validCalendarRange + 1);
        }

        if (*&static Date.validCalendarRange >= v33)
        {
          v33 = *&static Date.validCalendarRange;
        }

        *v60 = v33;
        v49(v62, v59, v60, ObjectType, v10);
        if (LOBYTE(v62[2]))
        {
          v6 = v32 - v31;
        }

        else
        {
          v6 = v62[0];
        }
      }

      else
      {
        v6 = v62[1] + v62[0];
      }

      v61 = 8;
      v34 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v6)
      {
        v34 = v6;
      }

      if (*&static Date.validCalendarRange >= v34)
      {
        v34 = *&static Date.validCalendarRange;
      }

      *v59 = v34;
      v14(v62, &v61, v59, ObjectType, v10);
      memcpy(v60, v62, 0x11BuLL);
      outlined destroy of DateComponents(v60);
      if (LOBYTE(v60[11]))
      {
        v9 = 0;
      }

      else
      {
        v9 = v60[10];
      }

      v58 = 0x80000;
      v35 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v6)
      {
        v35 = v6;
      }

      if (*&static Date.validCalendarRange >= v35)
      {
        v35 = *&static Date.validCalendarRange;
      }

      *v56 = v35;
      v14(v59, &v58, v56, ObjectType, v10);
      memcpy(v57, v59, 0x11BuLL);
      outlined destroy of DateComponents(v57);
      v8 = BYTE2(v57[35]);
      v55 = 4;
      v36 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v6)
      {
        v36 = v6;
      }

      if (*&static Date.validCalendarRange >= v36)
      {
        v36 = *&static Date.validCalendarRange;
      }

      v53 = v36;
      v14(v56, &v55, &v53, ObjectType, v10);
      memcpy(v54, v56, 0x11BuLL);
      result = outlined destroy of DateComponents(v54);
      if (LOBYTE(v54[9]) == 1)
      {
        if (v52)
        {
          if (v6 >= v30)
          {
            goto LABEL_111;
          }
        }

        else if (v30 >= v6)
        {
          goto LABEL_111;
        }

        v38 = 0;
      }

      else
      {
        v37 = v30 >= v6;
        if (v52)
        {
          v37 = v6 >= v30;
        }

        if (v37)
        {
LABEL_111:
          lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
          swift_allocError();
          *v42 = v6;
          *(v42 + 8) = v30;
          *(v42 + 16) = 1;
          return swift_willThrow();
        }

        v38 = v54[8];
      }

      v39 = __OFSUB__(v38, v46);
      v40 = v38 - v46;
      if (v39)
      {
        __break(1u);
        goto LABEL_128;
      }

      if (v40 < 0)
      {
        v39 = __OFSUB__(0, v40);
        v40 = -v40;
        if (v39)
        {
          break;
        }
      }

      if (v40 >= 2)
      {
        v6 = v6 - v31;
        goto LABEL_113;
      }

      v41 = v50;
      if (v51 == v9)
      {
        v41 = 1;
      }

      if (v47 == 2)
      {
        if (v41)
        {
          goto LABEL_113;
        }
      }

      else if ((v41 & 1) != 0 && ((v8 ^ v47) & 1) == 0)
      {
        goto LABEL_113;
      }

      LOBYTE(v59[0]) = 3;
      if (v7 >= v6)
      {
        v29 = v6;
      }

      else
      {
        v29 = v7;
      }

      if (v25 >= v29)
      {
        v29 = v25;
      }

      *v60 = v29;
      v49(v62, v59, v60, ObjectType, v10);
      if (LOBYTE(v62[2]))
      {
        goto LABEL_57;
      }
    }

    __break(1u);
  }

  return result;
}

double *Calendar.dateAfterMatchingWeekOfMonth(startingAt:components:direction:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 248))
  {
    *a4 = 0;
    *(a4 + 8) = 1;
    return result;
  }

  v6 = *result;
  v44 = *(a2 + 240);
  v43 = *a3;
  v7 = *(v4 + 8);
  v71 = 1024;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v8 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v8 = v6;
  }

  if (*&static Date.validCalendarRange >= v8)
  {
    v9 = *&static Date.validCalendarRange;
  }

  else
  {
    v9 = v8;
  }

  ObjectType = swift_getObjectType();
  v69[0] = v9;
  v73 = *(v7 + 192);
  v73(__src, &v71, v69, ObjectType, v7);
  memcpy(__dst, __src, 0x11BuLL);
  result = outlined destroy of DateComponents(__dst);
  if (__dst[31])
  {
    if (v44)
    {
      v11 = 0;
      goto LABEL_15;
    }

LABEL_14:
    *a4 = 0;
    *(a4 + 8) = 1;
    return result;
  }

  v11 = __dst[30];
  if (v44 == __dst[30])
  {
    goto LABEL_14;
  }

LABEL_15:
  v12 = *(&static Date.validCalendarRange + 1);
  v13 = *&static Date.validCalendarRange;
  v14 = *(v7 + 160);
  LOBYTE(v50[0]) = 10;
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v15)
  {
    v15 = *&static Date.validCalendarRange;
  }

  *v68 = v15;
  v42 = v14;
  v14(v69, v50, v68, ObjectType, v7);
  if ((LOBYTE(v69[2]) & 1) == 0)
  {
    v40 = a4;
    if (v43)
    {
      v17 = -1;
    }

    else
    {
      v17 = 1;
    }

    v45 = v17;
    v41 = v12;
    do
    {
      v19 = v6;
      v6 = v69[0];
      if (v43)
      {
        if (v44 != 1 || v11 >= 3)
        {
          v20 = v69[0] + -1.0;
          LOBYTE(v50[0]) = 10;
          if (*(&static Date.validCalendarRange + 1) < v69[0] + -1.0)
          {
            v20 = *(&static Date.validCalendarRange + 1);
          }

          if (*&static Date.validCalendarRange >= v20)
          {
            v20 = *&static Date.validCalendarRange;
          }

          *v68 = v20;
          v42(v69, v50, v68, ObjectType, v7);
          if ((LOBYTE(v69[2]) & 1) == 0)
          {
            v6 = v69[0];
            goto LABEL_84;
          }
        }
      }

      else
      {
        v21 = v69[1];
        LOBYTE(v68[0]) = 10;
        LOBYTE(v50[0]) = 2;
        v22 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v19)
        {
          v22 = v19;
        }

        if (*&static Date.validCalendarRange >= v22)
        {
          v22 = *&static Date.validCalendarRange;
        }

        v69[0] = v22;
        result = (*(v7 + 144))(v68, v50, v69, ObjectType, v7);
        if (v44 != 1)
        {
          goto LABEL_83;
        }

        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = result;
        }

        v26 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v24 & 1) == 0)
        {
          v26 = v23;
        }

        v27 = __OFSUB__(v26, v25);
        v28 = v26 - v25;
        if (v27)
        {
          __break(1u);
          return result;
        }

        if (v11 != v28)
        {
LABEL_83:
          v6 = v21 + v6;
          goto LABEL_84;
        }
      }

      v29 = static Date.validCalendarRange;
      while (1)
      {
        v67 = 8;
        if (*(&v29 + 1) >= v6)
        {
          v30 = v6;
        }

        else
        {
          v30 = *(&v29 + 1);
        }

        if (*&v29 >= v30)
        {
          v30 = *&v29;
        }

        *v50 = v30;
        v73(v69, &v67, v50, ObjectType, v7);
        memcpy(v68, v69, 0x11BuLL);
        outlined destroy of DateComponents(v68);
        if ((v68[11] & 1) == 0 && v68[10] == 1)
        {
          break;
        }

        v66 = 1;
        v65 = 1;
        v64 = 1;
        v62 = 1;
        v61 = 1;
        v60 = 1;
        v59 = 1;
        v58 = 1;
        v57 = 1;
        v56 = 1;
        v55 = 1;
        v54 = 1;
        v53 = 1;
        v52 = 1;
        v51 = 1;
        v63 = 0;
        memset(v50, 0, 40);
        LOBYTE(v50[5]) = 1;
        v50[6] = 0;
        LOBYTE(v50[7]) = 1;
        v50[8] = 0;
        LOBYTE(v50[9]) = 1;
        v50[10] = v45;
        LOBYTE(v50[11]) = 0;
        v50[12] = 0;
        LOBYTE(v50[13]) = 1;
        v50[14] = 0;
        LOBYTE(v50[15]) = 1;
        v50[16] = 0;
        LOBYTE(v50[17]) = 1;
        v50[18] = 0;
        LOBYTE(v50[19]) = 1;
        v50[20] = 0;
        LOBYTE(v50[21]) = 1;
        v50[22] = 0;
        LOBYTE(v50[23]) = 1;
        v50[24] = 0;
        LOBYTE(v50[25]) = 1;
        v50[26] = 0;
        LOBYTE(v50[27]) = 1;
        v50[28] = 0;
        LOBYTE(v50[29]) = 1;
        v50[30] = 0;
        LOBYTE(v50[31]) = 1;
        LOBYTE(v50[33]) = 1;
        LOBYTE(v50[35]) = 1;
        if (*(&static Date.validCalendarRange + 1) >= v6)
        {
          v31 = v6;
        }

        else
        {
          v31 = *(&static Date.validCalendarRange + 1);
        }

        v50[32] = 0;
        v50[34] = 0;
        if (*&static Date.validCalendarRange >= v31)
        {
          v32 = *&static Date.validCalendarRange;
        }

        else
        {
          v32 = v31;
        }

        *(&v50[35] + 1) = 514;
        memcpy(v47, v50, 0x11BuLL);
        if (*(&static Date.validCalendarRange + 1) >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = *(&static Date.validCalendarRange + 1);
        }

        if (*&static Date.validCalendarRange >= v33)
        {
          v33 = *&static Date.validCalendarRange;
        }

        v46 = v33;
        (*(v7 + 200))(&v48, v47, &v46, 0, ObjectType, v7);
        v34 = v48;
        v35 = v49;
        if (one-time initialization token for compatibility2 != -1)
        {
          swift_once();
        }

        v36 = static Calendar.compatibility2;
        outlined destroy of DateComponents(v50);
        if (v36 == 1)
        {
          if (!v35)
          {
            v6 = v34;
          }
        }

        else
        {
          if (v35)
          {
            break;
          }

          v6 = v34;
        }
      }

      v12 = v41;
LABEL_84:
      v50[0] = 1024;
      v37 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v6)
      {
        v37 = v6;
      }

      if (*&static Date.validCalendarRange >= v37)
      {
        v37 = *&static Date.validCalendarRange;
      }

      *v47 = v37;
      v73(v69, v50, v47, ObjectType, v7);
      memcpy(v68, v69, 0x11BuLL);
      result = outlined destroy of DateComponents(v68);
      if (LOBYTE(v68[31]) == 1)
      {
        if (v43)
        {
          if (v6 >= v19)
          {
            goto LABEL_97;
          }
        }

        else if (v19 >= v6)
        {
          goto LABEL_97;
        }

        if (!v44)
        {
          goto LABEL_96;
        }

        v11 = 0;
      }

      else
      {
        v38 = v19 >= v6;
        if (v43)
        {
          v38 = v6 >= v19;
        }

        if (v38)
        {
LABEL_97:
          lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
          swift_allocError();
          *v39 = v6;
          *(v39 + 8) = v19;
          *(v39 + 16) = 1;
          return swift_willThrow();
        }

        v11 = v68[30];
        if (v44 == v68[30])
        {
LABEL_96:
          *v40 = v6;
          *(v40 + 8) = 0;
          return result;
        }
      }

      LOBYTE(v50[0]) = 10;
      if (v12 >= v6)
      {
        v18 = v6;
      }

      else
      {
        v18 = v12;
      }

      if (v13 >= v18)
      {
        v18 = v13;
      }

      *v68 = v18;
      v42(v69, v50, v68, ObjectType, v7);
    }

    while ((LOBYTE(v69[2]) & 1) == 0);
  }

  lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
  swift_allocError();
  *v16 = 10;
  *(v16 + 8) = v6;
  *(v16 + 16) = 0;
  return swift_willThrow();
}

double *Calendar.dateAfterMatchingWeekdayOrdinal(startingAt:components:direction:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 200))
  {
    goto LABEL_2;
  }

  v6 = *result;
  v7 = *(a2 + 176);
  v40 = *(a2 + 184);
  v43 = *(a2 + 192);
  v8 = *a3;
  v9 = *(v4 + 8);
  v50 = 256;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v10 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v10 = v6;
  }

  if (*&static Date.validCalendarRange >= v10)
  {
    v11 = *&static Date.validCalendarRange;
  }

  else
  {
    v11 = v10;
  }

  ObjectType = swift_getObjectType();
  v48[0] = v11;
  v42 = *(v9 + 192);
  v42(__src, &v50, v48, ObjectType, v9);
  memcpy(__dst, __src, 0x11BuLL);
  result = outlined destroy of DateComponents(__dst);
  if (__dst[25])
  {
    if (v43 == 0.0)
    {
      goto LABEL_2;
    }
  }

  else if (*&v43 == __dst[24])
  {
LABEL_2:
    *a4 = 0;
    *(a4 + 8) = 1;
    return result;
  }

  v39 = v7;
  v13 = static Date.validCalendarRange;
  v41 = *(v9 + 160);
  v14 = v6;
  do
  {
    LOBYTE(v44[0]) = 8;
    if (*(&v13 + 1) >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(&v13 + 1);
    }

    if (*&v13 >= v15)
    {
      v15 = *&v13;
    }

    v47[0] = v15;
    v41(v48, v44, v47, ObjectType, v9);
    if (LOBYTE(v48[2]))
    {
      lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
      swift_allocError();
      *v21 = 8;
      *(v21 + 8) = v14;
      *(v21 + 16) = 0;
      return swift_willThrow();
    }

    if (v8)
    {
      v16 = v48[0] - v48[1];
    }

    else
    {
      v16 = v48[1] + v48[0];
    }

    v44[0] = 256;
    v17 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v16)
    {
      v17 = v16;
    }

    if (*&static Date.validCalendarRange >= v17)
    {
      v17 = *&static Date.validCalendarRange;
    }

    v47[0] = v17;
    v42(v48, v44, v47, ObjectType, v9);
    memcpy(v47, v48, 0x11BuLL);
    result = outlined destroy of DateComponents(v47);
    v18 = v47[24];
    if (LOBYTE(v47[25]))
    {
      v18 = 0.0;
    }

    v19 = v14 >= v16;
    if (v8)
    {
      v19 = v16 >= v14;
    }

    if (v19)
    {
      lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
      swift_allocError();
      *v22 = v16;
      *(v22 + 8) = v14;
      v23 = 1;
      goto LABEL_39;
    }

    v14 = v16;
  }

  while (*&v43 != *&v18);
  if (v40)
  {
    goto LABEL_35;
  }

  v46 = 128;
  v24 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v16)
  {
    v24 = v16;
  }

  if (*&static Date.validCalendarRange >= v24)
  {
    v24 = *&static Date.validCalendarRange;
  }

  v47[0] = v24;
  v42(v48, &v46, v47, ObjectType, v9);
  result = outlined destroy of DateComponents(v48);
  if ((LOBYTE(v48[23]) & 1) == 0)
  {
    v25 = v48[22];
    if (v7 != *&v48[22])
    {
      if (v7 < *&v48[22])
      {
        goto LABEL_52;
      }

      v30 = v43;
      goto LABEL_64;
    }

LABEL_35:
    v20 = a4;
    *a4 = v16;
    goto LABEL_36;
  }

  if (!v7)
  {
    goto LABEL_35;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
LABEL_66:
    v31 = v6;
    while (1)
    {
      LOBYTE(v45) = 3;
      v32 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v31)
      {
        v32 = v31;
      }

      if (*&static Date.validCalendarRange >= v32)
      {
        v32 = *&static Date.validCalendarRange;
      }

      *v44 = v32;
      v41(v47, &v45, v44, ObjectType, v9);
      if (LOBYTE(v47[2]))
      {
        break;
      }

      v6 = v47[1] + v47[0];
      v44[0] = 384;
      v33 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v47[1] + v47[0])
      {
        v33 = v47[1] + v47[0];
      }

      if (*&static Date.validCalendarRange >= v33)
      {
        v33 = *&static Date.validCalendarRange;
      }

      v45 = v33;
      v42(v47, v44, &v45, ObjectType, v9);
      memcpy(v44, v47, 0x11BuLL);
      if (v44[23] & 1) != 0 || (v44[25])
      {
        lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
        swift_allocError();
        *v37 = 7;
        *(v37 + 8) = v6;
        v38 = 2;
LABEL_89:
        *(v37 + 16) = v38;
        swift_willThrow();
        return outlined destroy of DateComponents(v44);
      }

      if (v31 < v6)
      {
        v34 = 1;
      }

      else
      {
        v34 = v8;
      }

      if (v34 != 1 || (v35 = v44[22], v36 = v44[24], (v8 & 1) != 0) && v6 >= v31)
      {
        lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
        swift_allocError();
        *v37 = v6;
        *(v37 + 8) = v31;
        v38 = 1;
        goto LABEL_89;
      }

      result = outlined destroy of DateComponents(v44);
      v31 = v6;
      if (v39 == v35)
      {
        v31 = v6;
        if (*&v43 == v36)
        {
          goto LABEL_86;
        }
      }
    }

    lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
    swift_allocError();
    *v22 = 3;
    *(v22 + 8) = v31;
    v23 = 2;
LABEL_39:
    *(v22 + 16) = v23;
    return swift_willThrow();
  }

LABEL_52:
  LOBYTE(v45) = 8;
  v26 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v26 = v6;
  }

  if (*&static Date.validCalendarRange >= v26)
  {
    v26 = *&static Date.validCalendarRange;
  }

  *v44 = v26;
  v41(v47, &v45, v44, ObjectType, v9);
  if (LOBYTE(v47[2]))
  {
    goto LABEL_66;
  }

  v27 = v47[0];
  v6 = v47[0];
  v44[0] = 384;
  v28 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v47[0])
  {
    v28 = v47[0];
  }

  if (*&static Date.validCalendarRange >= v28)
  {
    v28 = *&static Date.validCalendarRange;
  }

  v45 = v28;
  v42(v47, v44, &v45, ObjectType, v9);
  if ((LOBYTE(v47[23]) & 1) == 0 && (LOBYTE(v47[25]) & 1) == 0)
  {
    v25 = v47[22];
    v30 = v47[24];
    result = outlined destroy of DateComponents(v47);
LABEL_64:
    if (v39 != *&v25 || *&v43 != *&v30)
    {
      goto LABEL_66;
    }

LABEL_86:
    v20 = a4;
    *a4 = v6;
LABEL_36:
    *(v20 + 8) = 0;
    return result;
  }

  lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
  swift_allocError();
  *v29 = 8;
  *(v29 + 8) = v27;
  *(v29 + 16) = 2;
  swift_willThrow();
  return outlined destroy of DateComponents(v47);
}

double *Calendar.dateAfterMatchingWeekday(startingAt:components:direction:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 184))
  {
    goto LABEL_2;
  }

  v6 = *result;
  v26 = *(a2 + 176);
  v7 = *a3;
  v8 = *(v4 + 8);
  v33 = 128;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v9 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v9 = v6;
  }

  if (*&static Date.validCalendarRange >= v9)
  {
    v10 = *&static Date.validCalendarRange;
  }

  else
  {
    v10 = v9;
  }

  ObjectType = swift_getObjectType();
  __src[0] = v10;
  v12 = *(v8 + 192);
  v12(v31, &v33, __src, ObjectType, v8);
  result = outlined destroy of DateComponents(v31);
  if (v32)
  {
    if (!v26)
    {
      goto LABEL_2;
    }
  }

  else if (v26 == v31[22])
  {
LABEL_2:
    *a4 = 0;
    *(a4 + 8) = 1;
    return result;
  }

  v25 = a4;
  v13 = static Date.validCalendarRange;
  v14 = *(v8 + 160);
  LOBYTE(v29) = 7;
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v15)
  {
    v15 = *&static Date.validCalendarRange;
  }

  *__dst = v15;
  v14(__src, &v29, __dst, ObjectType, v8);
  if (LOBYTE(__src[2]))
  {
LABEL_20:
    lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
    swift_allocError();
    *v16 = 7;
    *(v16 + 8) = v6;
    *(v16 + 16) = 0;
    return swift_willThrow();
  }

  while (1)
  {
    v18 = v6;
    v20 = __src[0];
    v19 = __src[1];
    if (v7)
    {
      v21 = __src[0] + -1.0;
      LOBYTE(v29) = 3;
      if (*(&static Date.validCalendarRange + 1) < __src[0] + -1.0)
      {
        v21 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v21)
      {
        v21 = *&static Date.validCalendarRange;
      }

      *__dst = v21;
      v14(__src, &v29, __dst, ObjectType, v8);
      v6 = (LOBYTE(__src[2]) & 1) != 0 ? v20 - v19 : __src[0];
    }

    else
    {
      v6 = __src[1] + __src[0];
    }

    v29 = 128;
    v22 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v6)
    {
      v22 = v6;
    }

    if (*&static Date.validCalendarRange >= v22)
    {
      v22 = *&static Date.validCalendarRange;
    }

    v27 = v22;
    v12(__src, &v29, &v27, ObjectType, v8);
    memcpy(__dst, __src, 0x11BuLL);
    result = outlined destroy of DateComponents(__dst);
    if (LOBYTE(__dst[23]) != 1)
    {
      break;
    }

    if (v7)
    {
      if (v6 >= v18)
      {
        goto LABEL_52;
      }
    }

    else if (v18 >= v6)
    {
      goto LABEL_52;
    }

    if (!v26)
    {
      goto LABEL_51;
    }

LABEL_24:
    LOBYTE(v29) = 7;
    if (*(&v13 + 1) >= v6)
    {
      v17 = v6;
    }

    else
    {
      v17 = *(&v13 + 1);
    }

    if (*&v13 >= v17)
    {
      v17 = *&v13;
    }

    *__dst = v17;
    v14(__src, &v29, __dst, ObjectType, v8);
    if (LOBYTE(__src[2]))
    {
      goto LABEL_20;
    }
  }

  v23 = v18 >= v6;
  if (v7)
  {
    v23 = v6 >= v18;
  }

  if (!v23)
  {
    if (v26 == __dst[22])
    {
LABEL_51:
      *v25 = v6;
      *(v25 + 8) = 0;
      return result;
    }

    goto LABEL_24;
  }

LABEL_52:
  lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
  swift_allocError();
  *v24 = v6;
  *(v24 + 8) = v18;
  *(v24 + 16) = 1;
  return swift_willThrow();
}

double *Calendar.dateAfterMatchingHour(startingAt:originalStartDate:components:direction:findLastMatch:isStrictMatching:matchingPolicy:)@<X0>(double *result@<X0>, double *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, unsigned __int8 a5@<W4>, char a6@<W5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a8;
  if (*(a3 + 120))
  {
    *a8 = 0;
    *(a8 + 8) = 1;
    return result;
  }

  v11 = *result;
  v12 = *a2;
  v74 = *(a3 + 112);
  v68 = *a4;
  v13 = *a7;
  v14 = *(v8 + 8);
  v98 = 16;
  if (one-time initialization token for validCalendarRange != -1)
  {
    goto LABEL_199;
  }

LABEL_4:
  v15 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v11)
  {
    v15 = v11;
  }

  if (*&static Date.validCalendarRange >= v15)
  {
    v16 = *&static Date.validCalendarRange;
  }

  else
  {
    v16 = v15;
  }

  ObjectType = swift_getObjectType();
  v96[0] = v16;
  v73 = *(v14 + 192);
  v73(__src, &v98, v96, ObjectType, v14);
  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  if ((__dst[15] & 1) == 0)
  {
    v18 = __dst[14];
    if (v74)
    {
LABEL_33:
      if (v74 == v18)
      {
LABEL_34:
        if ((a5 & 1) == 0)
        {
LABEL_42:
          LOBYTE(v93[0]) = 4;
          v23 = *(&static Date.validCalendarRange + 1);
          if (*(&static Date.validCalendarRange + 1) >= v11)
          {
            v23 = v11;
          }

          if (*&static Date.validCalendarRange >= v23)
          {
            v23 = *&static Date.validCalendarRange;
          }

          *v94 = v23;
          result = (*(v14 + 160))(v96, v93, v94, ObjectType, v14);
          if ((LOBYTE(v96[2]) & 1) == 0)
          {
            v11 = v96[0];
          }

          goto LABEL_48;
        }

        v70 = 0;
        goto LABEL_36;
      }

      goto LABEL_49;
    }

    if (a6)
    {
      if (!__dst[14])
      {
        goto LABEL_34;
      }

      goto LABEL_49;
    }

LABEL_18:
    LOBYTE(v93[0]) = 3;
    v19 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v11)
    {
      v19 = v11;
    }

    if (*&static Date.validCalendarRange >= v19)
    {
      v19 = *&static Date.validCalendarRange;
    }

    *v94 = v19;
    (*(v14 + 160))(v96, v93, v94, ObjectType, v14);
    if ((LOBYTE(v96[2]) & 1) == 0)
    {
      v20 = v96[0];
      v93[0] = 16;
      v21 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v96[0])
      {
        v21 = v96[0];
      }

      if (*&static Date.validCalendarRange >= v21)
      {
        v21 = *&static Date.validCalendarRange;
      }

      *v91 = v21;
      v73(v96, v93, v91, ObjectType, v14);
      memcpy(v94, v96, 0x11BuLL);
      result = outlined destroy of DateComponents(v94);
      if ((v94[15] & 1) == 0 && v94[14] && v18 == v94[14])
      {
        if (!v13)
        {
          v11 = v20;
        }

LABEL_195:
        if ((a5 & 1) == 0)
        {
          goto LABEL_48;
        }

        v70 = 1;
LABEL_36:
        LOBYTE(v93[0]) = 4;
        v22 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v11)
        {
          v22 = v11;
        }

        if (*&static Date.validCalendarRange >= v22)
        {
          v22 = *&static Date.validCalendarRange;
        }

        *v94 = v22;
        result = (*(v14 + 160))(v96, v93, v94, ObjectType, v14);
        if ((LOBYTE(v96[2]) & 1) == 0)
        {
          v38 = v96[0];
          v72 = *(v14 + 200);
          v39 = static Date.validCalendarRange;
          if (v68)
          {
            v40 = -1;
          }

          else
          {
            v40 = 1;
          }

          do
          {
            while (1)
            {
              v11 = v38;
              v84[0] = 1;
              LOBYTE(v83[0]) = 1;
              LOBYTE(v81[0]) = 1;
              LOBYTE(v80[0]) = 1;
              v79[0] = 1;
              LOBYTE(v76) = 1;
              LOBYTE(v95) = 1;
              LOBYTE(v92) = 1;
              LOBYTE(v82) = 1;
              LOBYTE(v75) = 1;
              v90 = 1;
              v89 = 1;
              v88 = 1;
              v87 = 1;
              v86 = 1;
              LOBYTE(v78[0]) = 0;
              memset(v96, 0, 40);
              LOBYTE(v96[5]) = 1;
              v96[6] = 0.0;
              LOBYTE(v96[7]) = 1;
              v96[8] = 0.0;
              LOBYTE(v96[9]) = 1;
              v96[10] = 0.0;
              LOBYTE(v96[11]) = 1;
              v96[12] = 0.0;
              LOBYTE(v96[13]) = 1;
              *&v96[14] = v40;
              LOBYTE(v96[15]) = 0;
              v96[16] = 0.0;
              LOBYTE(v96[17]) = 1;
              v96[18] = 0.0;
              LOBYTE(v96[19]) = 1;
              v96[20] = 0.0;
              LOBYTE(v96[21]) = 1;
              v96[22] = 0.0;
              LOBYTE(v96[23]) = 1;
              v96[24] = 0.0;
              LOBYTE(v96[25]) = 1;
              v96[26] = 0.0;
              LOBYTE(v96[27]) = 1;
              LOBYTE(v96[29]) = 1;
              LOBYTE(v96[31]) = 1;
              LOBYTE(v96[33]) = 1;
              LOBYTE(v96[35]) = 1;
              v96[28] = 0.0;
              v96[30] = 0.0;
              if (*(&v39 + 1) >= v38)
              {
                v41 = v38;
              }

              else
              {
                v41 = *(&v39 + 1);
              }

              v96[32] = 0.0;
              v96[34] = 0.0;
              if (*&v39 >= v41)
              {
                v42 = *&v39;
              }

              else
              {
                v42 = v41;
              }

              *(&v96[35] + 1) = 514;
              memcpy(v94, v96, 0x11BuLL);
              if (*(&v39 + 1) >= v42)
              {
                v43 = v42;
              }

              else
              {
                v43 = *(&v39 + 1);
              }

              if (*&v39 >= v43)
              {
                v43 = *&v39;
              }

              *v91 = v43;
              v72(v93, v94, v91, 0, ObjectType, v14);
              v44 = *v93;
              v45 = LOBYTE(v93[1]);
              if (one-time initialization token for compatibility2 != -1)
              {
                swift_once();
              }

              v46 = static Calendar.compatibility2;
              result = outlined destroy of DateComponents(v96);
              if (v46 == 1)
              {
                v38 = v45 ? v11 : v44;
              }

              else
              {
                if (v45)
                {
                  goto LABEL_202;
                }

                v38 = v44;
              }

              v91[0] = 16;
              v47 = *(&static Date.validCalendarRange + 1);
              if (*(&static Date.validCalendarRange + 1) >= v38)
              {
                v47 = v38;
              }

              if (*&static Date.validCalendarRange >= v47)
              {
                v47 = *&static Date.validCalendarRange;
              }

              *v85 = v47;
              v73(v94, v91, v85, ObjectType, v14);
              memcpy(v93, v94, 0x11BuLL);
              result = outlined destroy of DateComponents(v93);
              if (LOBYTE(v93[15]) == 1)
              {
                break;
              }

              if (v93[14] != v74)
              {
                goto LABEL_41;
              }
            }
          }

          while (!v74);
        }

LABEL_41:
        if (v70)
        {
          goto LABEL_48;
        }

        goto LABEL_42;
      }
    }

    goto LABEL_33;
  }

  if (!v74)
  {
    if (a6)
    {
      goto LABEL_34;
    }

    v18 = 0;
    goto LABEL_18;
  }

  v18 = 0;
LABEL_49:
  v24 = static Date.validCalendarRange;
  v25 = *(v14 + 160);
  LOBYTE(v93[0]) = 4;
  if (*(&static Date.validCalendarRange + 1) >= v11)
  {
    v26 = v11;
  }

  else
  {
    v26 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v26)
  {
    v26 = *&static Date.validCalendarRange;
  }

  *v94 = v26;
  v71 = v25;
  v25(v96, v93, v94, ObjectType, v14);
  if (LOBYTE(v96[2]))
  {
    v27 = v11;
LABEL_89:
    lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
    swift_allocError();
    *v37 = 4;
    *(v37 + 8) = v27;
    *(v37 + 16) = 0;
    return swift_willThrow();
  }

  v67 = v9;
  while (1)
  {
    v28 = v96[1];
    v27 = v96[0];
    v29 = v96[1] + v96[0];
    v13 = 16;
    v95 = 16;
    v30 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v96[1] + v96[0])
    {
      v30 = v96[1] + v96[0];
    }

    if (*&static Date.validCalendarRange >= v30)
    {
      v30 = *&static Date.validCalendarRange;
    }

    *v93 = v30;
    a6 = v73;
    v73(v96, &v95, v93, ObjectType, v14);
    memcpy(v94, v96, 0x11BuLL);
    outlined destroy of DateComponents(v94);
    if (LOBYTE(v94[15]))
    {
      v9 = 0;
    }

    else
    {
      v9 = v94[14];
    }

    v31 = v27 + v28 + v28;
    v92 = 16;
    v32 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v31)
    {
      v32 = v31;
    }

    if (*&static Date.validCalendarRange >= v32)
    {
      v32 = *&static Date.validCalendarRange;
    }

    *v85 = v32;
    v73(v93, &v92, v85, ObjectType, v14);
    memcpy(v91, v93, 0x11BuLL);
    result = outlined destroy of DateComponents(v91);
    v34 = v91[14];
    if (LOBYTE(v91[15]))
    {
      v34 = 0;
    }

    if (__OFSUB__(v9, v18))
    {
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      swift_once();
      goto LABEL_4;
    }

    if (v9 - v18 == 2 || v18 == 23 && v9 == 1)
    {
      v35 = __OFSUB__(v9--, 1);
      if (v35)
      {
        goto LABEL_198;
      }
    }

    else
    {
      v27 = ((v34 == v9) & a5) != 0 ? v31 : v29;
    }

    if (v27 == v11 && v18 == v9)
    {
      lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
      swift_allocError();
      *v48 = v27;
      *(v48 + 8) = v11;
      *(v48 + 16) = 1;
      return swift_willThrow();
    }

    if (v74 == v9)
    {
      break;
    }

    LOBYTE(v93[0]) = 4;
    if (*(&v24 + 1) >= v27)
    {
      v36 = v27;
    }

    else
    {
      v36 = *(&v24 + 1);
    }

    if (*&v24 >= v36)
    {
      v36 = *&v24;
    }

    *v94 = v36;
    v71(v96, v93, v94, ObjectType, v14);
    v11 = v27;
    v18 = v9;
    if (LOBYTE(v96[2]))
    {
      goto LABEL_89;
    }
  }

  if (!v68)
  {
    v9 = v67;
    if ((a5 & 1) == 0)
    {
LABEL_145:
      v11 = v27;
      goto LABEL_48;
    }

LABEL_143:
    v70 = 1;
    v11 = v27;
    goto LABEL_36;
  }

  if (v12 >= v27)
  {
    v9 = v67;
    if ((a5 & 1) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_143;
  }

  LOBYTE(v81[0]) = 3;
  v33.value = -1;
  DateComponents.init(component:value:)(v33, v81, v83);
  memcpy(v84, v83, 0x11BuLL);
  memcpy(v85, v83, 0x11BuLL);
  result = _s10Foundation13URLComponentsV01_B0VSgWOg(v85);
  if (result == 1)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (*(&static Date.validCalendarRange + 1) >= v27)
  {
    v49 = v27;
  }

  else
  {
    v49 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v49)
  {
    v50 = *&static Date.validCalendarRange;
  }

  else
  {
    v50 = v49;
  }

  memcpy(v83, v85, 0x11BuLL);
  if (*(&static Date.validCalendarRange + 1) >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v51)
  {
    v51 = *&static Date.validCalendarRange;
  }

  *v80 = v51;
  v52 = *(v14 + 200);
  v52(v81, v83, v80, 0, ObjectType, v14);
  v53 = *v81;
  v54 = LOBYTE(v81[1]);
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  v55 = static Calendar.compatibility2;
  result = outlined destroy of TermOfAddress?(v84, &_s10Foundation14DateComponentsVSgMd);
  if (v55 != 1)
  {
    if ((v54 & 1) == 0)
    {
      v11 = v53;
      goto LABEL_148;
    }

    goto LABEL_203;
  }

  if (v54)
  {
    v11 = v27;
  }

  else
  {
    v11 = v53;
  }

LABEL_148:
  v82 = 16;
  v56 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v11)
  {
    v56 = v11;
  }

  if (*&static Date.validCalendarRange >= v56)
  {
    v56 = *&static Date.validCalendarRange;
  }

  *v80 = v56;
  v73(v83, &v82, v80, ObjectType, v14);
  memcpy(v81, v83, 0x11BuLL);
  result = outlined destroy of DateComponents(v81);
  v58 = *&v81[14];
  if (LOBYTE(v81[15]))
  {
    v58 = 0.0;
  }

  if (__OFSUB__(*&v58, v74))
  {
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  if (*&v58 - v74 != 1)
  {
    goto LABEL_171;
  }

  LOBYTE(v80[0]) = 4;
  v57.value = -1;
  DateComponents.init(component:value:)(v57, v80, v78);
  memcpy(v79, v78, 0x11BuLL);
  memcpy(v80, v78, 0x11BuLL);
  result = _s10Foundation13URLComponentsV01_B0VSgWOg(v80);
  if (result == 1)
  {
    goto LABEL_170;
  }

  if (*(&static Date.validCalendarRange + 1) >= v11)
  {
    v59 = v11;
  }

  else
  {
    v59 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v59)
  {
    v60 = *&static Date.validCalendarRange;
  }

  else
  {
    v60 = v59;
  }

  memcpy(v78, v80, 0x11BuLL);
  if (*(&static Date.validCalendarRange + 1) >= v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v61)
  {
    v61 = *&static Date.validCalendarRange;
  }

  v75 = v61;
  v52(&v76, v78, &v75, 0, ObjectType, v14);
  result = outlined destroy of TermOfAddress?(v79, &_s10Foundation14DateComponentsVSgMd);
  v58 = v76;
  v62 = v77;
  if (v55)
  {
LABEL_186:
    if (!v62)
    {
      v11 = v58;
    }

LABEL_194:
    v9 = v67;
    goto LABEL_195;
  }

  if ((v77 & 1) == 0)
  {
    goto LABEL_193;
  }

LABEL_170:
  __break(1u);
LABEL_171:
  v35 = __OFSUB__(v74, *&v58);
  v63 = v74 - *&v58;
  if (v35)
  {
    goto LABEL_201;
  }

  if (v63 != 1)
  {
    if (a5)
    {
      v70 = 1;
      v9 = v67;
      goto LABEL_36;
    }

    v9 = v67;
LABEL_48:
    *v9 = v11;
    *(v9 + 8) = 0;
    return result;
  }

  LOBYTE(v80[0]) = 4;
  v57.value = 1;
  DateComponents.init(component:value:)(v57, v80, v78);
  memcpy(v79, v78, 0x11BuLL);
  memcpy(v80, v78, 0x11BuLL);
  result = _s10Foundation13URLComponentsV01_B0VSgWOg(v80);
  if (result != 1)
  {
    if (*(&static Date.validCalendarRange + 1) >= v11)
    {
      v64 = v11;
    }

    else
    {
      v64 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v64)
    {
      v65 = *&static Date.validCalendarRange;
    }

    else
    {
      v65 = v64;
    }

    memcpy(v78, v80, 0x11BuLL);
    if (*(&static Date.validCalendarRange + 1) >= v65)
    {
      v66 = v65;
    }

    else
    {
      v66 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v66)
    {
      v66 = *&static Date.validCalendarRange;
    }

    v75 = v66;
    v52(&v76, v78, &v75, 0, ObjectType, v14);
    result = outlined destroy of TermOfAddress?(v79, &_s10Foundation14DateComponentsVSgMd);
    v58 = v76;
    v62 = v77;
    if (v55)
    {
      goto LABEL_186;
    }

    if ((v77 & 1) == 0)
    {
LABEL_193:
      v11 = v58;
      goto LABEL_194;
    }
  }

LABEL_204:
  __break(1u);
  return result;
}

double *Calendar.dateAfterMatchingSecond(startingAt:originalStartDate:components:direction:)@<X0>(double *result@<X0>, double *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 152))
  {
    *a5 = 0;
    *(a5 + 8) = 1;
    return result;
  }

  v7 = *result;
  v8 = *a2;
  v9 = *(a3 + 128);
  v10 = *(a3 + 144);
  v41 = *(a3 + 136);
  v42 = *a4;
  v11 = *(v5 + 8);
  v59 = 64;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v12 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v12 = v7;
  }

  if (*&static Date.validCalendarRange >= v12)
  {
    v13 = *&static Date.validCalendarRange;
  }

  else
  {
    v13 = v12;
  }

  ObjectType = swift_getObjectType();
  v57[0] = v13;
  v15 = *(v11 + 192);
  v15(__src, &v59, v57, ObjectType, v11);
  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  if (__dst[19])
  {
    if (v10)
    {
      goto LABEL_12;
    }

LABEL_22:
    LOBYTE(v51[0]) = 6;
    v22 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v7)
    {
      v22 = v7;
    }

    if (*&static Date.validCalendarRange >= v22)
    {
      v22 = *&static Date.validCalendarRange;
    }

    *v55 = v22;
    result = (*(v11 + 160))(v57, v51, v55, ObjectType, v11);
    if (LOBYTE(v57[2]))
    {
      lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
      swift_allocError();
      *v20 = 6;
      *(v20 + 8) = v7;
      goto LABEL_28;
    }

    v19 = v57[0];
    goto LABEL_125;
  }

  if (v10 == __dst[18])
  {
    goto LABEL_22;
  }

LABEL_12:
  v16 = static Date.validCalendarRange;
  v17 = *(v11 + 160);
  LOBYTE(v51[0]) = 6;
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v18)
  {
    v18 = *&static Date.validCalendarRange;
  }

  *v55 = v18;
  v43 = v17;
  v17(v57, v51, v55, ObjectType, v11);
  if (LOBYTE(v57[2]))
  {
    v19 = v7;
LABEL_19:
    lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
    swift_allocError();
    v21 = 6;
LABEL_20:
    *v20 = v21;
    *(v20 + 8) = v19;
LABEL_28:
    *(v20 + 16) = 0;
    return swift_willThrow();
  }

  while (1)
  {
    v19 = v57[1] + v57[0];
    v56 = 64;
    v24 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v57[1] + v57[0])
    {
      v24 = v57[1] + v57[0];
    }

    if (*&static Date.validCalendarRange >= v24)
    {
      v24 = *&static Date.validCalendarRange;
    }

    *v51 = v24;
    v15(v57, &v56, v51, ObjectType, v11);
    memcpy(v55, v57, 0x11BuLL);
    result = outlined destroy of DateComponents(v55);
    if (LOBYTE(v55[19]) != 1)
    {
      break;
    }

    if (v19 == v7)
    {
      goto LABEL_52;
    }

    if (!v10)
    {
      if (v8 >= v19)
      {
        goto LABEL_125;
      }

      if ((v42 & 1) == 0)
      {
        goto LABEL_65;
      }

      v10 = 0;
LABEL_57:
      v48 = 64;
      v26 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v8)
      {
        v26 = v8;
      }

      if (*&static Date.validCalendarRange >= v26)
      {
        v26 = *&static Date.validCalendarRange;
      }

      *v50 = v26;
      v15(v51, &v48, v50, ObjectType, v11);
      result = outlined destroy of DateComponents(v51);
      if (v54)
      {
        if (v10 <= 0)
        {
          goto LABEL_125;
        }
      }

      else if (v53 >= v10)
      {
        goto LABEL_125;
      }

      v45[0] = 5;
      v27.value = -1;
      DateComponents.init(component:value:)(v27, v45, v49);
      memcpy(v50, v49, 0x11BuLL);
      result = _s10Foundation13URLComponentsV01_B0VSgWOg(v50);
      v32 = 0.0;
      if (result == 1)
      {
        goto LABEL_83;
      }

      if (*(&static Date.validCalendarRange + 1) >= v19)
      {
        v33 = v19;
      }

      else
      {
        v33 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v33)
      {
        v34 = *&static Date.validCalendarRange;
      }

      else
      {
        v34 = v33;
      }

      memcpy(v45, v50, 0x11BuLL);
      if (*(&static Date.validCalendarRange + 1) >= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v35)
      {
        v35 = *&static Date.validCalendarRange;
      }

      v44 = v35;
      (*(v11 + 200))(&v46, v45, &v44, 0, ObjectType, v11);
      v32 = *&v46;
      v36 = v47;
      if (one-time initialization token for compatibility2 != -1)
      {
        swift_once();
      }

      v37 = static Calendar.compatibility2;
      result = outlined destroy of TermOfAddress?(v49, &_s10Foundation14DateComponentsVSgMd);
      if (v37 == 1)
      {
        if (!v36)
        {
          v19 = v32;
        }

        goto LABEL_125;
      }

      if (v36)
      {
LABEL_83:
        *a5 = v32;
        *(a5 + 8) = 1;
        return result;
      }

      v19 = v32;
LABEL_125:
      *a5 = v19;
      *(a5 + 8) = 0;
      return result;
    }

LABEL_31:
    LOBYTE(v51[0]) = 6;
    if (*(&v16 + 1) >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = *(&v16 + 1);
    }

    if (*&v16 >= v23)
    {
      v23 = *&v16;
    }

    *v55 = v23;
    v43(v57, v51, v55, ObjectType, v11);
    v7 = v19;
    if (LOBYTE(v57[2]))
    {
      goto LABEL_19;
    }
  }

  if (v19 == v7)
  {
LABEL_52:
    lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
    swift_allocError();
    *v25 = v19;
    *(v25 + 8) = v7;
    goto LABEL_53;
  }

  if (v10 != v55[18])
  {
    goto LABEL_31;
  }

  if (v8 >= v19)
  {
    goto LABEL_125;
  }

  if (v42)
  {
    goto LABEL_57;
  }

LABEL_65:
  *v45 = 32;
  v28 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v19)
  {
    v28 = v19;
  }

  if (*&static Date.validCalendarRange >= v28)
  {
    v28 = *&static Date.validCalendarRange;
  }

  *v50 = v28;
  v15(v51, v45, v50, ObjectType, v11);
  result = outlined destroy of DateComponents(v51);
  if (v41)
  {
    goto LABEL_125;
  }

  v29 = v52 ? 0 : v51[16];
  if (v9 >= v29)
  {
    goto LABEL_125;
  }

  v30 = static Date.validCalendarRange;
  LOBYTE(v46) = 5;
  if (*(&static Date.validCalendarRange + 1) >= v19)
  {
    v31 = v19;
  }

  else
  {
    v31 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v31)
  {
    v31 = *&static Date.validCalendarRange;
  }

  *v49 = v31;
  v43(v50, &v46, v49, ObjectType, v11);
  if (v50[2])
  {
LABEL_80:
    lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
    swift_allocError();
    v21 = 5;
    goto LABEL_20;
  }

  while (2)
  {
    v39 = v19;
    v19 = *v50 - *&v50[1];
    v46 = 32;
    v40 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= *v50 - *&v50[1])
    {
      v40 = *v50 - *&v50[1];
    }

    if (*&static Date.validCalendarRange >= v40)
    {
      v40 = *&static Date.validCalendarRange;
    }

    v48 = *&v40;
    v15(v50, &v46, &v48, ObjectType, v11);
    memcpy(v49, v50, 0x11BuLL);
    result = outlined destroy of DateComponents(v49);
    if (LOBYTE(v49[17]) != 1)
    {
      if (v42)
      {
        if (v19 >= v39)
        {
          goto LABEL_126;
        }
      }

      else if (v39 >= v19)
      {
        goto LABEL_126;
      }

      if (v9 >= v49[16])
      {
        goto LABEL_125;
      }

      goto LABEL_106;
    }

    if (v42)
    {
      if (v19 >= v39)
      {
        goto LABEL_126;
      }

LABEL_124:
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_125;
      }

LABEL_106:
      LOBYTE(v46) = 5;
      if (*(&v30 + 1) >= v19)
      {
        v38 = v19;
      }

      else
      {
        v38 = *(&v30 + 1);
      }

      if (*&v30 >= v38)
      {
        v38 = *&v30;
      }

      *v49 = v38;
      v43(v50, &v46, v49, ObjectType, v11);
      if (LOBYTE(v50[2]) == 1)
      {
        goto LABEL_80;
      }

      continue;
    }

    break;
  }

  if (v39 < v19)
  {
    goto LABEL_124;
  }

LABEL_126:
  lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
  swift_allocError();
  *v25 = v19;
  *(v25 + 8) = v39;
LABEL_53:
  *(v25 + 16) = 1;
  return swift_willThrow();
}

double *Calendar.dateAfterMatchingNanosecond(startingAt:components:direction:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 168))
  {
    *a3 = 0;
    *(a3 + 8) = 1;
  }

  else
  {
    v48 = v7;
    v49 = v6;
    v50 = v4;
    v51 = v5;
    v8 = *result;
    v9 = *(a2 + 160);
    v10 = *(v3 + 8);
    *&v18[0] = 127;
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v11 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v8)
    {
      v11 = v8;
    }

    if (*&static Date.validCalendarRange >= v11)
    {
      v12 = *&static Date.validCalendarRange;
    }

    else
    {
      v12 = v11;
    }

    ObjectType = swift_getObjectType();
    *__src = v12;
    (*(v10 + 192))(&v29, v18, __src, ObjectType, v10);
    v47 = v9 == 0x7FFFFFFFFFFFFFFFLL;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    __src[6] = v35;
    __src[7] = v36;
    __src[8] = v37;
    __src[9] = v38;
    __src[2] = v31;
    __src[3] = v32;
    __src[4] = v33;
    __src[5] = v34;
    __src[0] = v29;
    __src[1] = v30;
    *&__src[10] = v9;
    v14 = v47;
    BYTE8(__src[10]) = v47;
    *(&__src[16] + 9) = v45;
    *(&__src[17] + 9) = v46;
    *(&__src[14] + 9) = v43;
    *(&__src[15] + 9) = v44;
    *(&__src[10] + 9) = v39;
    *(&__src[11] + 9) = v40;
    *(&__src[12] + 9) = v41;
    *(&__src[13] + 9) = v42;
    memcpy(__dst, __src, 0x11BuLL);
    v15 = *(v10 + 176);
    outlined init with copy of DateComponents(__src, v18);
    v15(__dst, ObjectType, v10);
    v18[6] = v35;
    v18[7] = v36;
    v18[8] = v37;
    v18[9] = v38;
    v18[2] = v31;
    v18[3] = v32;
    v18[4] = v33;
    v18[5] = v34;
    v18[0] = v29;
    v18[1] = v30;
    v19 = v9;
    v20 = v14;
    v27 = v45;
    v28 = v46;
    v25 = v43;
    v26 = v44;
    v21 = v39;
    v22 = v40;
    v23 = v41;
    v24 = v42;
    outlined destroy of DateComponents(v18);
    return outlined destroy of DateComponents(__src);
  }

  return result;
}

uint64_t NSOrthographyScriptIndexForCharacters(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = *(a1 + 2 * v3);
      if (((v5 & 0xFFDF) - 65) >= 0x1Au)
      {
        v6 = 0;
        v7 = v5 > 0x2E || ((1 << v5) & 0x708000000000) == 0;
        if (!v7 || v5 == 173)
        {
          goto LABEL_9;
        }

        if (v5 - 48 < 0xA || (v5 - 188) < 3u || v5 < 0x20 || (v5 - 127) < 0x21u || v5 < 0xC0 || (v5 & 0xFFDF) == 0xD7)
        {
          goto LABEL_69;
        }

        if (v5 >= 0x2B0)
        {
          if (v5 < 0x370)
          {
            goto LABEL_30;
          }

          if (v5 < 0x400)
          {
            goto LABEL_32;
          }

          if (v5 < 0x530 || v5 == 7467)
          {
            v6 = 8;
            goto LABEL_9;
          }

          if (v5 < 0x590 || (v5 + 1261) < 5u)
          {
            v6 = 9;
            goto LABEL_9;
          }

          if (v5 < 0x600 || (v5 + 1251) < 0x33u)
          {
            v6 = 10;
            goto LABEL_9;
          }

          if ((v5 + 400) < 0x8Fu || v5 < 0x700 || (v5 + 1200) < 0x2B0u)
          {
            v6 = 11;
            goto LABEL_9;
          }

          if (v5 - 2304 <= 0x5FF)
          {
            if ((v5 & 0xFFE) != 0x964)
            {
              v6 = ((v5 - 2304) >> 7) + 12;
              goto LABEL_9;
            }

LABEL_30:
            v6 = 0;
            goto LABEL_9;
          }

          v10 = vdup_n_s16(v5);
          if ((vmaxv_u16(vcgt_u16(0x40005000602C00, vadd_s16(v10, 0x602850CED05400))) & 1) != 0 || (v5 & 0xFF00) == 0x1100 || (v5 & 0xFFE0) == 0xA960)
          {
            v6 = 3;
            goto LABEL_9;
          }

          if (vmaxv_u16(vcgt_u16(0xFC006002007180, vadd_s16(v10, 0x10001F00700D180))))
          {
            v6 = 2;
            goto LABEL_9;
          }

          v13 = v5 & 0xFFE0;
          v6 = 0;
          if (v5 - 8204 < 6)
          {
            goto LABEL_9;
          }

          v11 = v5 & 0xFF00;
          if (v5 == 8217)
          {
            goto LABEL_9;
          }

          v6 = 0;
          if (v5 - 8234 < 5)
          {
            goto LABEL_9;
          }

          if ((v5 & 0xFFF0) == 0x2060)
          {
            goto LABEL_9;
          }

          v6 = 0;
          if (v5 == 65279 || (v5 & 0xFFF0) == 0xFE00)
          {
            goto LABEL_9;
          }

          if ((vmaxv_u16(vcgt_u16(0x700E000300026, vadd_s16(v10, 0x50058E0E295E300))) & 1) == 0 && v11 != 7680 && v13 != 11360)
          {
            if (v5 - 7462 >= 5 && v11 != 7936)
            {
              v6 = 0;
              if ((vmaxv_u16(vcgt_u16(0x3000300065003FLL, vadd_s16(v10, 0xDF30DF90E265E2D4))) & 1) != 0 || v13 == 42752)
              {
                goto LABEL_9;
              }

              if (v5 - 0x2000 >= 0xC00 && v5 <= 0xFFFB && (v5 & 0xFF80) != 0x2E00)
              {
                if (v11 == 3840)
                {
                  v6 = 24;
                  goto LABEL_9;
                }

                if (v5 - 4096 < 0xA0)
                {
                  v6 = 25;
                  goto LABEL_9;
                }

                if (v5 - 4256 < 0x60)
                {
                  v6 = 26;
                  goto LABEL_9;
                }

                if (v5 - 4608 < 0x1A0)
                {
                  v6 = 27;
                  goto LABEL_9;
                }

                if (v5 - 5024 < 0x60)
                {
                  v6 = 28;
                  goto LABEL_9;
                }

                if (v5 - 5120 < 0x280)
                {
                  v6 = 29;
                  goto LABEL_9;
                }

                if ((v5 & 0xFF80) == 0x1780)
                {
                  v6 = 30;
                  goto LABEL_9;
                }

                if (v5 - 6144 < 0xB0)
                {
                  v6 = 31;
                  goto LABEL_9;
                }

                if (v5 >> 10 == 54 && v3 + 1 < a2 && (*(a1 + 2 * (v3 + 1)) & 0xFC00) == 0xDC00)
                {
                  if ((((v5 << 10) + 64512) & 0x1F0000) == 0x20000)
                  {
                    v6 = 2;
                  }

                  else
                  {
                    v6 = 1;
                  }

                  ++v3;
                  goto LABEL_9;
                }
              }

LABEL_69:
              v6 = 1;
              goto LABEL_9;
            }

LABEL_32:
            v6 = 7;
            goto LABEL_9;
          }
        }
      }

      v6 = 6;
LABEL_9:
      if (a3)
      {
        ++*(a3 + 8 * v6);
      }

      if (v4 == v6 || v4 == 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = 1;
      }

      if (v6)
      {
        v4 = v9;
      }

      if (++v3 >= a2)
      {
        goto LABEL_96;
      }
    }
  }

  v4 = 0;
LABEL_96:
  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

NSHashTable *_NSKeyValueProxyShareCreate()
{
  v0 = [[NSPointerFunctions alloc] initWithOptions:5];
  [(NSPointerFunctions *)v0 setHashFunction:NSKeyValueProxyHash];
  [(NSPointerFunctions *)v0 setIsEqualFunction:NSKeyValueProxyIsEqual];
  v1 = [[NSHashTable alloc] initWithPointerFunctions:v0 capacity:0];

  return v1;
}

id _NSGetProxyValueWithGetterNoLock(NSObject *a1, void *a2)
{
  v4 = [a2 proxyClass];
  v5 = [v4 _proxyShare];
  v6 = _NSGetProxyValueWithGetterNoLock_proxyShareKey;
  if (!_NSGetProxyValueWithGetterNoLock_proxyShareKey)
  {
    v6 = objc_alloc_init(NSKeyValueProxyShareKey);
    _NSGetProxyValueWithGetterNoLock_proxyShareKey = v6;
  }

  v6->_container = a1;
  v7 = [a2 key];
  *(_NSGetProxyValueWithGetterNoLock_proxyShareKey + 16) = v7;
  v8 = [v5 member:?];
  v9 = _NSGetProxyValueWithGetterNoLock_proxyShareKey;
  *(_NSGetProxyValueWithGetterNoLock_proxyShareKey + 8) = 0;
  *(v9 + 16) = 0;
  if (v8)
  {
    v10 = v8;
    v11 = v8;
  }

  else
  {
    v10 = [v4 alloc];
    [v10 _proxyInitWithContainer:a1 getter:a2];
    [v5 addObject:v10];
  }

  return v10;
}

id _NSGetProxyValueWithGetter(NSObject *a1, uint64_t a2, void *a3)
{
  os_unfair_lock_lock(&NSKeyValueProxyLock);
  v5 = _NSGetProxyValueWithGetterNoLock(a1, a3);
  os_unfair_lock_unlock(&NSKeyValueProxyLock);
  return v5;
}

uint64_t NSKeyValueProxyIsEqual(void *a1, void *a2)
{
  v3 = [a1 _proxyLocator];
  v5 = v4;
  if (v3 != [a2 _proxyLocator])
  {
    return 0;
  }

  if (v5 == v6)
  {
    return 1;
  }

  return [v5 isEqual:v6];
}

uint64_t _NSKeyValueProxyDeallocate(void *a1)
{
  os_unfair_lock_lock(&NSKeyValueProxyLock);
  if (a1 && _objc_rootRetainCount() > 1)
  {
    v2 = 0;
  }

  else
  {
    [objc_msgSend(objc_opt_class() "_proxyShare")];
    os_unfair_lock_unlock(&NSKeyValueProxyLock);
    [a1 _proxyNonGCFinalize];
    os_unfair_lock_lock(&NSKeyValueProxyLock);
    v2 = 1;
  }

  os_unfair_lock_unlock(&NSKeyValueProxyLock);
  return v2;
}

unint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet()
{
  result = lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet;
  if (!lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet;
  if (!lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet;
  if (!lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet;
  if (!lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet;
  if (!lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet;
  if (!lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  }

  return result;
}

void protocol witness for Hashable.hash(into:) in conformance __CharacterSetStorage()
{
  v2 = *(*v0 + 16);
  v1 = CFHash(v2);
  MEMORY[0x1865CD060](v1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t specialized _NSFileManagerBridge.moveItem(at:to:options:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  if (v2[18](ObjectType, v2))
  {
    v5 = swift_getObjectType();
    if (v3[18](v5, v3))
    {
      v28 = v2[30];
      v6 = v28(ObjectType, v2);
      v8 = v7;
      v9 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = v6;
        v11 = v3[30];
        v12 = v11(v5, v3);
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          specialized _FileManagerImpl.moveItem(atPath:toPath:options:)(v10, v8, v12, v13);
        }

        swift_unknownObjectRetain();
        v11(v5, v3);
        v26 = objc_opt_self();
        v27 = String._bridgeToObjectiveCImpl()();

        v19 = v3[54](v5, v3);
        swift_unknownObjectRelease();
        v20 = [v26 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      }

      else
      {

        swift_unknownObjectRetain();
        v28(ObjectType, v2);
        v24 = objc_opt_self();
        v25 = String._bridgeToObjectiveCImpl()();

        v19 = v2[54](ObjectType, v2);
        swift_unknownObjectRelease();
        v20 = [v24 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      }
    }

    else
    {
      v21 = v3[30];
      swift_unknownObjectRetain();
      v21(v5, v3);
      v22 = objc_opt_self();
      v23 = String._bridgeToObjectiveCImpl()();

      v19 = v3[54](v5, v3);
      swift_unknownObjectRelease();
      v20 = [v22 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    }
  }

  else
  {
    v16 = v2[30];
    swift_unknownObjectRetain();
    v16(ObjectType, v2);
    v17 = objc_opt_self();
    v18 = String._bridgeToObjectiveCImpl()();

    v19 = v2[54](ObjectType, v2);
    swift_unknownObjectRelease();
    v20 = [v17 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  }

  v20;
  swift_unknownObjectRelease();

  return swift_willThrow();
}

id NSFileManager._shouldProceedAfter(error:copyingItemAtPath:to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6, SEL *a7)
{
  v10 = v7;
  result = [v10 _safeDelegate];
  if (result)
  {
    v17 = result;
    if ([result respondsToSelector_])
    {
      if (one-time initialization token for compatibility2 != -1)
      {
        swift_once();
      }

      v18 = static URL.compatibility2;
      v41 = a5;
      v42 = a6;
      v40 = a4;
      if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
      {
        v19 = type metadata accessor for _BridgedURL();
        v20 = &protocol witness table for _BridgedURL;
      }

      else
      {
        v19 = type metadata accessor for _SwiftURL();
        v20 = &protocol witness table for _SwiftURL;
      }

      v25 = v20[8];

      v25(a2, a3, v19, v20);
      (v20[56])(v19, v20);
      v27 = v26;
      swift_unknownObjectRelease();
      if ((v18 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
      {
        v28 = type metadata accessor for _BridgedURL();
        v29 = &protocol witness table for _BridgedURL;
      }

      else
      {
        v28 = type metadata accessor for _SwiftURL();
        v29 = &protocol witness table for _SwiftURL;
      }

      v30 = v29[8];

      v30(v40, v41, v28, v29);
      (v29[56])(v28, v29);
      v32 = v31;
      swift_unknownObjectRelease();
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      ObjectType = swift_getObjectType();
      v36 = (*(v27 + 432))(ObjectType, v27);
      v37 = swift_getObjectType();
      v38 = (*(v32 + 432))(v37, v32);
      v39 = [v17 *v42];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v39;
    }

    else if ([v17 respondsToSelector_])
    {
      v21 = a1;
      swift_unknownObjectRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = String._bridgeToObjectiveCImpl()();
      v24 = [v17 *a7];
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v24;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id @objc static NSLocale._localeIdentifier(fromWindowsLocaleCode:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  specialized static Locale.identifier(fromWindowsLocaleCode:)(a3);
  if (v3)
  {
    v4 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}