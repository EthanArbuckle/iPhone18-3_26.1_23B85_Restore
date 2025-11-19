uint64_t DateComponents.isValidDate(in:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  memcpy(__dst, v1, 0x11BuLL);
  if (__dst[21])
  {
    goto LABEL_2;
  }

  if (__dst[20] > 999999999)
  {
    return 0;
  }

  if ((__dst[20] & 0x8000000000000000) != 0)
  {
LABEL_2:
    ObjectType = swift_getObjectType();
    memcpy(v26, v1, 0x11BuLL);
    (*(v3 + 176))(__src, v26, ObjectType, v3);
    if ((BYTE8(__src[0]) & 1) == 0)
    {
      v5 = *__src;
      goto LABEL_8;
    }

    return 0;
  }

  LOBYTE(v24) = 0;
  v6 = v1[7];
  __src[6] = v1[6];
  __src[7] = v6;
  v7 = v1[9];
  __src[8] = v1[8];
  __src[9] = v7;
  v8 = v1[3];
  __src[2] = v1[2];
  __src[3] = v8;
  v9 = v1[5];
  __src[4] = v1[4];
  __src[5] = v9;
  v10 = v1[1];
  __src[0] = *v1;
  __src[1] = v10;
  *&__src[10] = 0;
  BYTE8(__src[10]) = 0;
  *(&__src[16] + 9) = *(v1 + 265);
  *(&__src[17] + 9) = *(v1 + 281);
  *(&__src[14] + 9) = *(v1 + 233);
  *(&__src[15] + 9) = *(v1 + 249);
  *(&__src[10] + 9) = *(v1 + 169);
  *(&__src[11] + 9) = *(v1 + 185);
  *(&__src[12] + 9) = *(v1 + 201);
  *(&__src[13] + 9) = *(v1 + 217);
  v11 = swift_getObjectType();
  memcpy(v21, __src, 0x11BuLL);
  v12 = *(v3 + 176);
  outlined init with copy of DateComponents(__dst, v26);
  outlined init with copy of DateComponents(__src, v26);
  v12(&v22, v21, v11, v3);
  v13 = v1[7];
  v26[6] = v1[6];
  v26[7] = v13;
  v14 = v1[9];
  v26[8] = v1[8];
  v26[9] = v14;
  v15 = v1[3];
  v26[2] = v1[2];
  v26[3] = v15;
  v16 = v1[5];
  v26[4] = v1[4];
  v26[5] = v16;
  v17 = v1[1];
  v26[0] = *v1;
  v26[1] = v17;
  *&v26[10] = 0;
  BYTE8(v26[10]) = 0;
  *(&v26[16] + 9) = *(v1 + 265);
  *(&v26[17] + 9) = *(v1 + 281);
  *(&v26[14] + 9) = *(v1 + 233);
  *(&v26[15] + 9) = *(v1 + 249);
  *(&v26[10] + 9) = *(v1 + 169);
  *(&v26[11] + 9) = *(v1 + 185);
  *(&v26[12] + 9) = *(v1 + 201);
  *(&v26[13] + 9) = *(v1 + 217);
  outlined destroy of DateComponents(v26);
  outlined destroy of DateComponents(__src);
  if (v23)
  {
    return 0;
  }

  v5 = v22;
LABEL_8:
  v18 = lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  *&__src[0] = MEMORY[0x1865CB700](14, &type metadata for Calendar.Component, v18);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DE8);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DE9);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DEA);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DEB);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DEC);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DED);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DEE);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DEF);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DF0);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DF1);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DF2);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DF3);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DF4);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DF5);
  v21[0] = v2;
  v21[1] = v3;
  Calendar.ComponentSet.init(_:)(*&__src[0], &v22);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v19 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v19 = v5;
  }

  if (*&static Date.validCalendarRange >= v19)
  {
    v19 = *&static Date.validCalendarRange;
  }

  v24 = v19;
  Calendar._dateComponents(_:from:)(&v22, &v24, v26);
  memcpy(__src, v26, 0x11BuLL);
  outlined destroy of DateComponents(__src);
  if ((__dst[5] & 1) == 0 && ((BYTE8(__src[2]) & 1) != 0 || __dst[4] != *&__src[2]) || (__dst[7] & 1) == 0 && ((BYTE8(__src[3]) & 1) != 0 || __dst[6] != *&__src[3]) || (__dst[27] & 1) == 0 && ((BYTE8(__src[13]) & 1) != 0 || __dst[26] != *&__src[13]) || (__dst[9] & 1) == 0 && ((BYTE8(__src[4]) & 1) != 0 || __dst[8] != *&__src[4]) || (__dst[11] & 1) == 0 && ((BYTE8(__src[5]) & 1) != 0 || __dst[10] != *&__src[5]) || (__dst[15] & 1) == 0 && ((BYTE8(__src[7]) & 1) != 0 || __dst[14] != *&__src[7]) || (__dst[17] & 1) == 0 && ((BYTE8(__src[8]) & 1) != 0 || __dst[16] != *&__src[8]) || (__dst[19] & 1) == 0 && ((BYTE8(__src[9]) & 1) != 0 || __dst[18] != *&__src[9]) || (__dst[23] & 1) == 0 && ((BYTE8(__src[11]) & 1) != 0 || __dst[22] != *&__src[11]) || (__dst[25] & 1) == 0 && ((BYTE8(__src[12]) & 1) != 0 || __dst[24] != *&__src[12]) || (__dst[31] & 1) == 0 && ((BYTE8(__src[15]) & 1) != 0 || __dst[30] != *&__src[15]) || (__dst[33] & 1) == 0 && ((BYTE8(__src[16]) & 1) != 0 || __dst[32] != *&__src[16]) || (__dst[35] & 1) == 0 && ((BYTE8(__src[17]) & 1) != 0 || __dst[34] != *&__src[17]))
  {
    return 0;
  }

  if (__dst[13])
  {
    return 1;
  }

  else
  {
    return (__dst[12] == *&__src[6]) & ~BYTE8(__src[6]);
  }
}

Swift::Int DateComponents.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v14 = v0[4];
  v15 = v0[6];
  v29 = *(v0 + 40);
  v30 = *(v0 + 56);
  v16 = v0[8];
  v17 = v0[10];
  v31 = *(v0 + 72);
  v32 = *(v0 + 88);
  v28 = v0[12];
  v43 = *(v0 + 104);
  v18 = v0[14];
  v19 = v0[16];
  v33 = *(v0 + 120);
  v34 = *(v0 + 136);
  v20 = v0[18];
  v21 = v0[20];
  v35 = *(v0 + 152);
  v36 = *(v0 + 168);
  v22 = v0[22];
  v23 = v0[24];
  v37 = *(v0 + 184);
  v38 = *(v0 + 200);
  v24 = v0[26];
  v25 = v0[30];
  v39 = *(v0 + 216);
  v40 = *(v0 + 248);
  v26 = v0[32];
  v41 = *(v0 + 264);
  v27 = v0[34];
  v42 = *(v0 + 280);
  v5 = *(v0 + 281);
  v6 = *(v0 + 282);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    ObjectType = swift_getObjectType();
    v8 = *(v1 + 120);
    swift_unknownObjectRetain();
    v8(v44, ObjectType, v1);
    swift_unknownObjectRelease();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      v9 = swift_getObjectType();
      v10 = *(v4 + 120);
      swift_unknownObjectRetain();
      v10(v44, v9, v4);
      swift_unknownObjectRelease();
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  Hasher._combine(_:)(0);
  if (v29)
  {
LABEL_4:
    Hasher._combine(_:)(0);
    if (!v30)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v14);
  if (!v30)
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v15);
    if (!v31)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  Hasher._combine(_:)(0);
  if (!v31)
  {
LABEL_6:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v16);
    if (!v32)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  Hasher._combine(_:)(0);
  if (!v32)
  {
LABEL_7:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v17);
    if (!v33)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  Hasher._combine(_:)(0);
  if (!v33)
  {
LABEL_8:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v18);
    if (!v34)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  Hasher._combine(_:)(0);
  if (!v34)
  {
LABEL_9:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v19);
    if (!v35)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  Hasher._combine(_:)(0);
  if (!v35)
  {
LABEL_10:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v20);
    if (!v36)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  Hasher._combine(_:)(0);
  if (!v36)
  {
LABEL_11:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v21);
    if (!v37)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  Hasher._combine(_:)(0);
  if (!v37)
  {
LABEL_12:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v22);
    if (!v38)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  Hasher._combine(_:)(0);
  if (!v38)
  {
LABEL_13:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v23);
    if (!v39)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  Hasher._combine(_:)(0);
  if (!v39)
  {
LABEL_14:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v24);
    if (!v40)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  Hasher._combine(_:)(0);
  if (!v40)
  {
LABEL_15:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v25);
    if (!v41)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  Hasher._combine(_:)(0);
  if (!v41)
  {
LABEL_16:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v26);
    if (!v42)
    {
      goto LABEL_17;
    }

LABEL_34:
    Hasher._combine(_:)(0);
    if (v5 != 2)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_33:
  Hasher._combine(_:)(0);
  if (v42)
  {
    goto LABEL_34;
  }

LABEL_17:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v27);
  if (v5 != 2)
  {
LABEL_18:
    Hasher._combine(_:)(1u);
    v11 = v5 & 1;
    goto LABEL_36;
  }

LABEL_35:
  v11 = 0;
LABEL_36:
  Hasher._combine(_:)(v11);
  if (v6 == 2)
  {
    v12 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v12 = v6 & 1;
  }

  Hasher._combine(_:)(v12);
  if (v43)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v28);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DateComponents()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v14 = v0[4];
  v15 = v0[6];
  v29 = *(v0 + 40);
  v30 = *(v0 + 56);
  v16 = v0[8];
  v17 = v0[10];
  v31 = *(v0 + 72);
  v32 = *(v0 + 88);
  v28 = v0[12];
  v43 = *(v0 + 104);
  v18 = v0[14];
  v19 = v0[16];
  v33 = *(v0 + 120);
  v34 = *(v0 + 136);
  v20 = v0[18];
  v21 = v0[20];
  v35 = *(v0 + 152);
  v36 = *(v0 + 168);
  v22 = v0[22];
  v23 = v0[24];
  v37 = *(v0 + 184);
  v38 = *(v0 + 200);
  v24 = v0[26];
  v25 = v0[30];
  v39 = *(v0 + 216);
  v40 = *(v0 + 248);
  v26 = v0[32];
  v41 = *(v0 + 264);
  v27 = v0[34];
  v42 = *(v0 + 280);
  v5 = *(v0 + 281);
  v6 = *(v0 + 282);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    ObjectType = swift_getObjectType();
    v8 = *(v1 + 120);
    swift_unknownObjectRetain();
    v8(v44, ObjectType, v1);
    swift_unknownObjectRelease();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      v9 = swift_getObjectType();
      v10 = *(v4 + 120);
      swift_unknownObjectRetain();
      v10(v44, v9, v4);
      swift_unknownObjectRelease();
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  Hasher._combine(_:)(0);
  if (v29)
  {
LABEL_4:
    Hasher._combine(_:)(0);
    if (!v30)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v14);
  if (!v30)
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v15);
    if (!v31)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  Hasher._combine(_:)(0);
  if (!v31)
  {
LABEL_6:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v16);
    if (!v32)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  Hasher._combine(_:)(0);
  if (!v32)
  {
LABEL_7:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v17);
    if (!v33)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  Hasher._combine(_:)(0);
  if (!v33)
  {
LABEL_8:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v18);
    if (!v34)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  Hasher._combine(_:)(0);
  if (!v34)
  {
LABEL_9:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v19);
    if (!v35)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  Hasher._combine(_:)(0);
  if (!v35)
  {
LABEL_10:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v20);
    if (!v36)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  Hasher._combine(_:)(0);
  if (!v36)
  {
LABEL_11:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v21);
    if (!v37)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  Hasher._combine(_:)(0);
  if (!v37)
  {
LABEL_12:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v22);
    if (!v38)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  Hasher._combine(_:)(0);
  if (!v38)
  {
LABEL_13:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v23);
    if (!v39)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  Hasher._combine(_:)(0);
  if (!v39)
  {
LABEL_14:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v24);
    if (!v40)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  Hasher._combine(_:)(0);
  if (!v40)
  {
LABEL_15:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v25);
    if (!v41)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  Hasher._combine(_:)(0);
  if (!v41)
  {
LABEL_16:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v26);
    if (!v42)
    {
      goto LABEL_17;
    }

LABEL_34:
    Hasher._combine(_:)(0);
    if (v5 != 2)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_33:
  Hasher._combine(_:)(0);
  if (v42)
  {
    goto LABEL_34;
  }

LABEL_17:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v27);
  if (v5 != 2)
  {
LABEL_18:
    Hasher._combine(_:)(1u);
    v11 = v5 & 1;
    goto LABEL_36;
  }

LABEL_35:
  v11 = 0;
LABEL_36:
  Hasher._combine(_:)(v11);
  if (v6 == 2)
  {
    v12 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v12 = v6 & 1;
  }

  Hasher._combine(_:)(v12);
  if (v43)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v28);
  }

  return Hasher._finalize()();
}

uint64_t DateComponents.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v124 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v121 - v7;
  memcpy(v130, v1, 0x11BuLL);
  v9 = MEMORY[0x1E69E6158];
  v125 = a1;
  if (*&v130[0])
  {
    v129[0] = v130[0];
    swift_unknownObjectRetain();
    v10 = Calendar.description.getter();
    v127 = v9;
    *&v126 = v10;
    *(&v126 + 1) = v11;
    v129[0] = xmmword_181231A60;
    outlined init with take of Any(&v126, &v129[1]);
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
    }

    swift_unknownObjectRelease();
    v12[2] = v14 + 1;
    v15 = &v12[6 * v14];
    v16 = v129[0];
    v17 = v129[2];
    v15[3] = v129[1];
    v15[4] = v17;
    v15[2] = v16;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v18 = *&v130[1];
  v19 = v3;
  if (*&v130[1])
  {
    v121 = v8;
    v122 = v5;
    v20 = v124;
    v123 = v3;
    swift_getObjectType();
    *&v129[0] = v18;
    swift_unknownObjectRetain();
    v21 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    v127 = v9;
    *&v126 = v21;
    *(&v126 + 1) = v22;
    v129[0] = xmmword_181231A80;
    outlined init with take of Any(&v126, &v129[1]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v24 = v12[2];
    v23 = v12[3];
    v25 = v20;
    if (v24 >= v23 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v12);
    }

    v8 = v121;
    v26 = v122;
    swift_unknownObjectRelease();
    v12[2] = v24 + 1;
    v27 = &v12[6 * v24];
    v28 = v129[0];
    v29 = v129[2];
    v27[3] = v129[1];
    v27[4] = v29;
    v27[2] = v28;
    v19 = v123;
  }

  else
  {
    v26 = v5;
    v25 = v124;
  }

  v30 = MEMORY[0x1E69E6530];
  if (BYTE8(v130[2]))
  {
    if (BYTE8(v130[3]))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v127 = MEMORY[0x1E69E6530];
    *&v126 = *&v130[2];
    v129[0] = xmmword_181233190;
    outlined init with take of Any(&v126, &v129[1]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v32 = v12[2];
    v31 = v12[3];
    if (v32 >= v31 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v12);
    }

    v12[2] = v32 + 1;
    v33 = &v12[6 * v32];
    v34 = v129[0];
    v35 = v129[2];
    v33[3] = v129[1];
    v33[4] = v35;
    v33[2] = v34;
    if (BYTE8(v130[3]))
    {
LABEL_15:
      if (BYTE8(v130[4]))
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  v127 = v30;
  *&v126 = *&v130[3];
  v129[0] = xmmword_1812331A0;
  outlined init with take of Any(&v126, &v129[1]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v37 = v12[2];
  v36 = v12[3];
  if (v37 >= v36 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v12);
  }

  v12[2] = v37 + 1;
  v38 = &v12[6 * v37];
  v39 = v129[0];
  v40 = v129[2];
  v38[3] = v129[1];
  v38[4] = v40;
  v38[2] = v39;
  if (BYTE8(v130[4]))
  {
LABEL_16:
    if (BYTE8(v130[5]))
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_36:
  v127 = v30;
  *&v126 = *&v130[4];
  v129[0] = xmmword_1812331B0;
  outlined init with take of Any(&v126, &v129[1]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v42 = v12[2];
  v41 = v12[3];
  if (v42 >= v41 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v12);
  }

  v12[2] = v42 + 1;
  v43 = &v12[6 * v42];
  v44 = v129[0];
  v45 = v129[2];
  v43[3] = v129[1];
  v43[4] = v45;
  v43[2] = v44;
  if (BYTE8(v130[5]))
  {
LABEL_17:
    if (BYTE8(v130[7]))
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_41:
  v127 = v30;
  *&v126 = *&v130[5];
  v129[0] = xmmword_1812331C0;
  outlined init with take of Any(&v126, &v129[1]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v47 = v12[2];
  v46 = v12[3];
  if (v47 >= v46 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v12);
  }

  v12[2] = v47 + 1;
  v48 = &v12[6 * v47];
  v49 = v129[0];
  v50 = v129[2];
  v48[3] = v129[1];
  v48[4] = v50;
  v48[2] = v49;
  if (BYTE8(v130[7]))
  {
LABEL_18:
    if (BYTE8(v130[8]))
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_46:
  v127 = v30;
  *&v126 = *&v130[7];
  v129[0] = xmmword_1812331D0;
  outlined init with take of Any(&v126, &v129[1]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v52 = v12[2];
  v51 = v12[3];
  if (v52 >= v51 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v12);
  }

  v12[2] = v52 + 1;
  v53 = &v12[6 * v52];
  v54 = v129[0];
  v55 = v129[2];
  v53[3] = v129[1];
  v53[4] = v55;
  v53[2] = v54;
  if (BYTE8(v130[8]))
  {
LABEL_19:
    if (BYTE8(v130[9]))
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_51:
  v127 = v30;
  *&v126 = *&v130[8];
  v129[0] = xmmword_1812331E0;
  outlined init with take of Any(&v126, &v129[1]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v57 = v12[2];
  v56 = v12[3];
  if (v57 >= v56 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v12);
  }

  v12[2] = v57 + 1;
  v58 = &v12[6 * v57];
  v59 = v129[0];
  v60 = v129[2];
  v58[3] = v129[1];
  v58[4] = v60;
  v58[2] = v59;
  if (BYTE8(v130[9]))
  {
LABEL_20:
    if (BYTE8(v130[10]))
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_56:
  v127 = v30;
  *&v126 = *&v130[9];
  v129[0] = xmmword_1812331F0;
  outlined init with take of Any(&v126, &v129[1]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v62 = v12[2];
  v61 = v12[3];
  if (v62 >= v61 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v12);
  }

  v12[2] = v62 + 1;
  v63 = &v12[6 * v62];
  v64 = v129[0];
  v65 = v129[2];
  v63[3] = v129[1];
  v63[4] = v65;
  v63[2] = v64;
  if (BYTE8(v130[10]))
  {
LABEL_21:
    if (BYTE8(v130[11]))
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_61:
  v127 = v30;
  *&v126 = *&v130[10];
  v129[0] = xmmword_181233200;
  outlined init with take of Any(&v126, &v129[1]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v67 = v12[2];
  v66 = v12[3];
  if (v67 >= v66 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v12);
  }

  v12[2] = v67 + 1;
  v68 = &v12[6 * v67];
  v69 = v129[0];
  v70 = v129[2];
  v68[3] = v129[1];
  v68[4] = v70;
  v68[2] = v69;
  if (BYTE8(v130[11]))
  {
LABEL_22:
    if (BYTE8(v130[12]))
    {
      goto LABEL_23;
    }

    goto LABEL_71;
  }

LABEL_66:
  v127 = v30;
  *&v126 = *&v130[11];
  v129[0] = xmmword_181233210;
  outlined init with take of Any(&v126, &v129[1]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v72 = v12[2];
  v71 = v12[3];
  if (v72 >= v71 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v12);
  }

  v12[2] = v72 + 1;
  v73 = &v12[6 * v72];
  v74 = v129[0];
  v75 = v129[2];
  v73[3] = v129[1];
  v73[4] = v75;
  v73[2] = v74;
  if (BYTE8(v130[12]))
  {
LABEL_23:
    if (BYTE8(v130[13]))
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_71:
  v127 = v30;
  *&v126 = *&v130[12];
  v129[0] = xmmword_181233220;
  outlined init with take of Any(&v126, &v129[1]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v77 = v12[2];
  v76 = v12[3];
  if (v77 >= v76 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v12);
  }

  v12[2] = v77 + 1;
  v78 = &v12[6 * v77];
  v79 = v129[0];
  v80 = v129[2];
  v78[3] = v129[1];
  v78[4] = v80;
  v78[2] = v79;
  if (BYTE8(v130[13]))
  {
LABEL_24:
    if (BYTE8(v130[15]))
    {
      goto LABEL_86;
    }

    goto LABEL_81;
  }

LABEL_76:
  v127 = v30;
  *&v126 = *&v130[13];
  v129[0] = xmmword_181233230;
  outlined init with take of Any(&v126, &v129[1]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v82 = v12[2];
  v81 = v12[3];
  if (v82 >= v81 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v12);
  }

  v12[2] = v82 + 1;
  v83 = &v12[6 * v82];
  v84 = v129[0];
  v85 = v129[2];
  v83[3] = v129[1];
  v83[4] = v85;
  v83[2] = v84;
  if ((BYTE8(v130[15]) & 1) == 0)
  {
LABEL_81:
    v127 = v30;
    *&v126 = *&v130[15];
    v129[0] = xmmword_181233240;
    outlined init with take of Any(&v126, &v129[1]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v87 = v12[2];
    v86 = v12[3];
    if (v87 >= v86 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v12);
    }

    v12[2] = v87 + 1;
    v88 = &v12[6 * v87];
    v89 = v129[0];
    v90 = v129[2];
    v88[3] = v129[1];
    v88[4] = v90;
    v88[2] = v89;
  }

LABEL_86:
  if ((BYTE8(v130[16]) & 1) == 0)
  {
    v127 = v30;
    *&v126 = *&v130[16];
    v129[0] = xmmword_181233250;
    outlined init with take of Any(&v126, &v129[1]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v92 = v12[2];
    v91 = v12[3];
    if (v92 >= v91 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v12);
    }

    v12[2] = v92 + 1;
    v93 = &v12[6 * v92];
    v94 = v129[0];
    v95 = v129[2];
    v93[3] = v129[1];
    v93[4] = v95;
    v93[2] = v94;
  }

  if ((BYTE8(v130[6]) & 1) == 0)
  {
    v127 = v30;
    *&v126 = *&v130[6];
    v129[0] = xmmword_181233260;
    outlined init with take of Any(&v126, &v129[1]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v97 = v12[2];
    v96 = v12[3];
    if (v97 >= v96 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v12);
    }

    v12[2] = v97 + 1;
    v98 = &v12[6 * v97];
    v99 = v129[0];
    v100 = v129[2];
    v98[3] = v129[1];
    v98[4] = v100;
    v98[2] = v99;
  }

  if ((BYTE8(v130[17]) & 1) == 0)
  {
    v127 = v30;
    *&v126 = *&v130[17];
    *&v129[0] = 0xD000000000000011;
    *(&v129[0] + 1) = 0x8000000181480DD0;
    outlined init with take of Any(&v126, &v129[1]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v102 = v12[2];
    v101 = v12[3];
    if (v102 >= v101 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v12);
    }

    v12[2] = v102 + 1;
    v103 = &v12[6 * v102];
    v104 = v129[0];
    v105 = v129[2];
    v103[3] = v129[1];
    v103[4] = v105;
    v103[2] = v104;
  }

  v106 = MEMORY[0x1E69E6370];
  if (BYTE9(v130[17]) != 2)
  {
    v127 = MEMORY[0x1E69E6370];
    LOBYTE(v126) = BYTE9(v130[17]) & 1;
    v129[0] = xmmword_181233270;
    outlined init with take of Any(&v126, &v129[1]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v108 = v12[2];
    v107 = v12[3];
    if (v108 >= v107 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1, v12);
    }

    v12[2] = v108 + 1;
    v109 = &v12[6 * v108];
    v110 = v129[0];
    v111 = v129[2];
    v109[3] = v129[1];
    v109[4] = v111;
    v109[2] = v110;
  }

  if (BYTE10(v130[17]) != 2)
  {
    v127 = v106;
    LOBYTE(v126) = BYTE10(v130[17]) & 1;
    v129[0] = xmmword_181233280;
    outlined init with take of Any(&v126, &v129[1]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v113 = v12[2];
    v112 = v12[3];
    if (v113 >= v112 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v12);
    }

    v12[2] = v113 + 1;
    v114 = &v12[6 * v113];
    v115 = v129[0];
    v116 = v129[2];
    v114[3] = v129[1];
    v114[4] = v116;
    v114[2] = v115;
  }

  memcpy(v129, v130, 0x11BuLL);
  v128 = v12;
  v117 = *MEMORY[0x1E69E75B8];
  v118 = type metadata accessor for Mirror.DisplayStyle();
  v119 = *(v118 - 8);
  (*(v119 + 104))(v8, v117, v118);
  (*(v119 + 56))(v8, 0, 1, v118);
  (*(v25 + 104))(v26, *MEMORY[0x1E69E75D8], v19);
  outlined init with copy of DateComponents(v130, &v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t DateComponents.description.getter()
{
  v0 = type metadata accessor for Mirror();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DateComponents.customMirror.getter(v3);
  v4 = Mirror.children.getter();
  (*(v1 + 8))(v3, v0);
  v17 = 0;
  v18 = 0xE000000000000000;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (*(&v16 + 1))
  {
    v9[1] = v4;
    do
    {
      *v15 = *&v15[7];
      *&v15[2] = *&v15[9];
      *&v15[4] = v16;
      v13 = 0;
      v14 = 0xE000000000000000;
      outlined init with copy of (label: String?, value: Any)(v15, &v10);
      if (v11)
      {
        v5 = v10;
      }

      else
      {
        v5 = 0;
      }

      if (v11)
      {
        v6 = v11;
      }

      else
      {
        v6 = 0xE000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(&v12);
      MEMORY[0x1865CB0E0](v5, v6);

      MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v13, v14);

      outlined destroy of TermOfAddress?(v15, &_sSSSg5label_yp5valuetMd);
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (*(&v16 + 1));
    v7 = v17;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DateComponents.CodingKeys@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DateComponents.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DateComponents.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized DateComponents.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

unint64_t protocol witness for CodingKey.init(intValue:) in conformance DateComponents.CodingKeys@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DateComponents.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DateComponents.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DateComponents.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateComponents.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation14DateComponentsV10CodingKeys33_A6EB5CE9F6026BED8852DBF300CCA004LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v65 - v7;
  v9 = a1[3];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v6;
    LOBYTE(v100[0]) = 0;
    lazy protocol witness table accessor for type Calendar and conformance Calendar();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v101;
    LOBYTE(v100[0]) = 1;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v97 = *(&v11 + 1);
    v98 = v11;
    v12 = v101;
    LOBYTE(v101) = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v94 = *(&v12 + 1);
    v96 = v12;
    v122 = v14;
    v95 = v13;
    LOBYTE(v101) = 3;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v92 = v17;
    v93 = v15;
    LOBYTE(v101) = 4;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v91 = v19;
    v20 = v18;
    LOBYTE(v101) = 5;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v89 = v22;
    v90 = v21;
    LOBYTE(v101) = 6;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v87 = v24;
    v88 = v23;
    LOBYTE(v101) = 7;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v85 = v26;
    v86 = v25;
    LOBYTE(v101) = 8;
    v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v83 = v27;
    LOBYTE(v101) = 9;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v82 = v29;
    v30 = v28;
    LOBYTE(v101) = 10;
    v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v80 = v31;
    LOBYTE(v101) = 11;
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v78 = v32;
    LOBYTE(v101) = 12;
    v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v76 = v33;
    LOBYTE(v101) = 13;
    v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v74 = v34;
    LOBYTE(v101) = 14;
    v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v72 = v35;
    LOBYTE(v101) = 15;
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = v36;
    LOBYTE(v101) = 16;
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v101) = 17;
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v101) = 18;
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v37;
    v102 = 0uLL;
    *&v103 = 0;
    BYTE8(v103) = 1;
    *&v104 = 0;
    BYTE8(v104) = 1;
    *&v105 = 0;
    BYTE8(v105) = 1;
    *&v106 = 0;
    BYTE8(v106) = 1;
    v107 = 0;
    v108 = 1;
    *(&v109 + 7) = 0;
    HIBYTE(v109) = 1;
    *(&v110 + 7) = 0;
    HIBYTE(v110) = 1;
    *(&v111 + 7) = 0;
    HIBYTE(v111) = 1;
    *(&v112 + 7) = 0;
    HIBYTE(v112) = 1;
    *(&v113 + 7) = 0;
    HIBYTE(v113) = 1;
    *(&v114 + 7) = 0;
    HIBYTE(v114) = 1;
    *(&v115 + 7) = 0;
    HIBYTE(v115) = 1;
    *(&v116 + 7) = 0;
    HIBYTE(v116) = 1;
    *(&v117 + 7) = 0;
    HIBYTE(v117) = 1;
    HIBYTE(v118) = 1;
    *(&v118 + 7) = 0;
    *(&v119 + 7) = 0;
    HIDWORD(v65) = 1;
    HIBYTE(v119) = 1;
    v120 = 514;
    *&v101 = v98;
    *(&v101 + 1) = v97;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v100[0] = v96;
    v100[1] = v94;
    DateComponents.timeZone.setter(v100);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v10 + 8))(v8, v5);
    if (v95 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = 0;
    }

    else
    {
      v38 = v95;
    }

    if (v122)
    {
      v38 = v95;
    }

    *&v103 = v38;
    BYTE8(v103) = v122 & 1 | (v95 == 0x7FFFFFFFFFFFFFFFLL);
    if (v93 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = 0;
    }

    else
    {
      v39 = v93;
    }

    if (v92)
    {
      v39 = v93;
    }

    *&v104 = v39;
    BYTE8(v104) = v92 & 1 | (v93 == 0x7FFFFFFFFFFFFFFFLL);
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v40 = 0;
    }

    else
    {
      v40 = v20;
    }

    if (v91)
    {
      v40 = v20;
    }

    *&v105 = v40;
    BYTE8(v105) = v91 & 1 | (v20 == 0x7FFFFFFFFFFFFFFFLL);
    if (v90 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = 0;
    }

    else
    {
      v41 = v90;
    }

    if (v89)
    {
      v41 = v90;
    }

    *&v106 = v41;
    BYTE8(v106) = v89 & 1 | (v90 == 0x7FFFFFFFFFFFFFFFLL);
    if (v88 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = 0;
    }

    else
    {
      v42 = v88;
    }

    if (v87)
    {
      v42 = v88;
    }

    *(&v109 + 7) = v42;
    HIBYTE(v109) = v87 & 1 | (v88 == 0x7FFFFFFFFFFFFFFFLL);
    if (v86 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = 0;
    }

    else
    {
      v43 = v86;
    }

    if (v85)
    {
      v43 = v86;
    }

    *(&v110 + 7) = v43;
    HIBYTE(v110) = v85 & 1 | (v86 == 0x7FFFFFFFFFFFFFFFLL);
    if (v84 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = 0;
    }

    else
    {
      v44 = v84;
    }

    if (v83)
    {
      v44 = v84;
    }

    *(&v111 + 7) = v44;
    HIBYTE(v111) = v83 & 1 | (v84 == 0x7FFFFFFFFFFFFFFFLL);
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = 0;
    }

    else
    {
      v45 = v30;
    }

    if (v82)
    {
      v45 = v30;
    }

    *(&v112 + 7) = v45;
    HIBYTE(v112) = v82 & 1 | (v30 == 0x7FFFFFFFFFFFFFFFLL);
    if (v81 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v46 = 0;
    }

    else
    {
      v46 = v81;
    }

    if (v80)
    {
      v46 = v81;
    }

    *(&v113 + 7) = v46;
    HIBYTE(v113) = v80 & 1 | (v81 == 0x7FFFFFFFFFFFFFFFLL);
    if (v79 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v47 = 0;
    }

    else
    {
      v47 = v79;
    }

    if (v78)
    {
      v47 = v79;
    }

    *(&v114 + 7) = v47;
    HIBYTE(v114) = v78 & 1 | (v79 == 0x7FFFFFFFFFFFFFFFLL);
    if (v77 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v48 = 0;
    }

    else
    {
      v48 = v77;
    }

    if (v76)
    {
      v48 = v77;
    }

    *(&v115 + 7) = v48;
    HIBYTE(v115) = v76 & 1 | (v77 == 0x7FFFFFFFFFFFFFFFLL);
    if (v75 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v49 = 0;
    }

    else
    {
      v49 = v75;
    }

    if (v74)
    {
      v49 = v75;
    }

    *(&v117 + 7) = v49;
    HIBYTE(v117) = v74 & 1 | (v75 == 0x7FFFFFFFFFFFFFFFLL);
    if (v73 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v50 = 0;
    }

    else
    {
      v50 = v73;
    }

    if (v72)
    {
      v50 = v73;
    }

    HIBYTE(v118) = v72 & 1 | (v73 == 0x7FFFFFFFFFFFFFFFLL);
    if (v71 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v51 = 0;
    }

    else
    {
      v51 = v71;
    }

    if (v70)
    {
      v51 = v71;
    }

    *(&v118 + 7) = v50;
    *(&v119 + 7) = v51;
    HIBYTE(v119) = v70 & 1 | (v71 == 0x7FFFFFFFFFFFFFFFLL);
    v52 = v120;
    if (v69 != 2)
    {
      v52 = v69;
    }

    v53 = HIBYTE(v120);
    if (v68 != 2)
    {
      v53 = v68;
    }

    v107 = 0;
    v108 = 1;
    if (v67)
    {
      v54 = 0;
    }

    else
    {
      if (v66 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v54 = 0;
      }

      else
      {
        v54 = v66;
      }

      HIDWORD(v65) = v66 == 0x7FFFFFFFFFFFFFFFLL;
      v121 = v66 == 0x7FFFFFFFFFFFFFFFLL;
    }

    v55 = v104;
    *(a2 + 32) = v103;
    *(a2 + 48) = v55;
    v56 = v106;
    *(a2 + 64) = v105;
    *(a2 + 80) = v56;
    v57 = v102;
    *a2 = v101;
    *(a2 + 16) = v57;
    *(a2 + 96) = v54;
    *(a2 + 104) = BYTE4(v65);
    v58 = v109;
    v59 = v110;
    v60 = v112;
    *(a2 + 137) = v111;
    *(a2 + 121) = v59;
    *(a2 + 105) = v58;
    v61 = v116;
    *(a2 + 201) = v115;
    v62 = v113;
    *(a2 + 185) = v114;
    *(a2 + 169) = v62;
    *(a2 + 153) = v60;
    v63 = v117;
    v64 = v118;
    *(a2 + 265) = v119;
    *(a2 + 249) = v64;
    *(a2 + 233) = v63;
    *(a2 + 217) = v61;
    *(a2 + 281) = v52;
    *(a2 + 282) = v53;
  }

  return __swift_destroy_boxed_opaque_existential_1(v99);
}

uint64_t NSDateComponents._toCustomAnyHashable()()
{
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(v0, v2);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSDateComponents()
{
  v1 = *v0;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(v1, v2);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents();
  AnyHashable.init<A>(_:)();
}

uint64_t _s10Foundation14DateComponentsVSgWOi0_(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  v1 = (a1 + 279);
  *(a1 + 8) = 0u;
  result = a1 + 8;
  *(result + 256) = 0u;
  *v1 = 0;
  return result;
}

unint64_t type metadata accessor for NSDateComponents()
{
  result = lazy cache variable for type metadata for NSDateComponents;
  if (!lazy cache variable for type metadata for NSDateComponents)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDateComponents);
  }

  return result;
}

unint64_t specialized DateComponents.CodingKeys.init(rawValue:)(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

uint64_t specialized DateComponents.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6386277 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1918985593 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1920298856 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F6365736F6E616ELL && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7961646B656577 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4F7961646B656577 && a2 == 0xEE006C616E696472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x72657472617571 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F4D664F6B656577 && a2 == 0xEB0000000068746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6559664F6B656577 && a2 == 0xEA00000000007261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000181480DD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6F4D7061654C7369 && a2 == 0xEB0000000068746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7461657065527369 && a2 == 0xED00007961446465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x616559664F796164 && a2 == 0xE900000000000072)
  {

    return 18;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t specialized static DateComponents._forceBridgeFromObjectiveC(_:result:)(void *a1, void *a2)
{
  result = specialized static DateComponents._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2);
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSDateComponents();
    v3 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v3);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x706D6F4365746144, 0xEE0073746E656E6FLL);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DateComponents(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type DateComponents and conformance DateComponents();
  a1[2] = lazy protocol witness table accessor for type DateComponents and conformance DateComponents();
  a1[3] = lazy protocol witness table accessor for type DateComponents and conformance DateComponents();
  result = lazy protocol witness table accessor for type DateComponents and conformance DateComponents();
  a1[4] = result;
  return result;
}

uint64_t Calendar.RecurrenceRule.Month.init(_:isLeap:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

void Calendar.RecurrenceRule.End.date.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8) != 0;
  if (*(v1 + 8))
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
}

uint64_t Calendar.RecurrenceRule.End.occurrences.getter()
{
  if (v0[8] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

__n128 Calendar.RecurrenceRule.calendar.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *v1 = *a1;
  return result;
}

unint64_t Calendar.RecurrenceRule.Frequency.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x5040302010006uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *a2 = v2;
  return result;
}

uint64_t Calendar.RecurrenceRule.End._End.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1865CD060](2);
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1865CD060](v2);
  }

  else
  {
    MEMORY[0x1865CD060](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1865CD090](v3);
  }
}

Swift::Int Calendar.RecurrenceRule.End._End.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1865CD060](2);
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1865CD060](v3);
  }

  else
  {
    MEMORY[0x1865CD060](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1865CD090](v4);
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Calendar.RecurrenceRule.End._End(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    return !*(a2 + 8) && v2 == v3;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return *&v2 == *&v3;
    }

    return 0;
  }

  return v4 == 2 && *&v3 == 0;
}

uint64_t static Calendar.RecurrenceRule.End.afterOccurrences(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

void *static Calendar.RecurrenceRule.End.afterDate(_:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static Calendar.RecurrenceRule.End.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || *&v2 != *&v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || *&v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Calendar.RecurrenceRule.End(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || *&v2 != *&v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || *&v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

void Calendar.RecurrenceRule.end.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t Calendar.RecurrenceRule.end.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t static Calendar.RecurrenceRule.Weekday.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v5 < 0)
  {
    if (v7 < 0 && v4 == v6)
    {
      return specialized == infix<A>(_:_:)(v5 & 0x7F, v7 & 0x7F);
    }

    return 0;
  }

  if (v7 < 0)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v4, v6);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Calendar.RecurrenceRule.Weekday(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v5 < 0)
  {
    if (v7 < 0 && v4 == v6)
    {
      return specialized == infix<A>(_:_:)(v5 & 0x7F, v7 & 0x7F);
    }

    return 0;
  }

  if (v7 < 0)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v4, v6);
}

uint64_t Calendar.RecurrenceRule.Month.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static Calendar.RecurrenceRule.Month.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Calendar.RecurrenceRule.Month(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Calendar.RecurrenceRule.seconds.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Calendar.RecurrenceRule.minutes.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Calendar.RecurrenceRule.hours.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Calendar.RecurrenceRule.weekdays.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Calendar.RecurrenceRule.daysOfTheMonth.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Calendar.RecurrenceRule.daysOfTheYear.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t Calendar.RecurrenceRule.months.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Calendar.RecurrenceRule.weeks.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t Calendar.RecurrenceRule.setPositions.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

__n128 Calendar.RecurrenceRule.init(calendar:frequency:interval:end:matchingPolicy:repeatedTimePolicy:months:daysOfTheYear:daysOfTheMonth:weeks:weekdays:hours:minutes:seconds:setPositions:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, unsigned __int8 *a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16)
{
  v16 = *a2;
  v17 = *a4;
  v18 = *(a4 + 8);
  v19 = *a5;
  v20 = *a6;
  result = *a1;
  *a9 = *a1;
  a9[1].n128_u8[2] = v16;
  a9[1].n128_u64[1] = a3;
  a9[2].n128_u64[0] = v17;
  a9[2].n128_u8[8] = v18;
  a9[1].n128_u8[0] = v19;
  a9[1].n128_u8[1] = v20;
  a9[5].n128_u64[0] = a10;
  a9[5].n128_u64[1] = a8;
  a9[6].n128_u64[0] = a7;
  a9[6].n128_u64[1] = a11;
  a9[4].n128_u64[0] = a13;
  a9[4].n128_u64[1] = a12;
  a9[3].n128_u64[0] = a15;
  a9[3].n128_u64[1] = a14;
  a9[7].n128_u64[0] = a16;
  return result;
}

uint64_t Calendar.RecurrenceRule.recurrences(of:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[4];
  v5 = v3[6];
  v18 = v3[5];
  v6 = v18;
  v19 = v5;
  v7 = v3[1];
  v17[0] = *v3;
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v17[1] = v7;
  v17[2] = v10;
  v12 = v3[2];
  v13 = v3[4];
  v17[3] = v3[3];
  v17[4] = v13;
  *a3 = *a1;
  *(a3 + 72) = v4;
  *(a3 + 88) = v6;
  *(a3 + 104) = v3[6];
  *(a3 + 8) = v8;
  *(a3 + 24) = v9;
  v14 = *(a2 + 16);
  v20 = *(v3 + 14);
  *(a3 + 120) = *(v3 + 14);
  *(a3 + 40) = v12;
  *(a3 + 56) = v11;
  *(a3 + 128) = *a2;
  *(a3 + 144) = v14;
  return outlined init with copy of Calendar.RecurrenceRule(v17, v16);
}

uint64_t static Calendar.RecurrenceRule.minutely(calendar:interval:end:matchingPolicy:repeatedTimePolicy:months:daysOfTheYear:daysOfTheMonth:weekdays:hours:minutes:seconds:setPositions:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *a4;
  v18 = *a5;
  *a9 = *a1;
  *(a9 + 18) = a15;
  *(a9 + 24) = a2;
  *(a9 + 32) = v15;
  *(a9 + 40) = v16;
  *(a9 + 16) = v17;
  *(a9 + 17) = v18;
  *(a9 + 80) = a8;
  *(a9 + 88) = a7;
  v19 = MEMORY[0x1E69E7CC0];
  *(a9 + 96) = a6;
  *(a9 + 104) = v19;
  *(a9 + 64) = a11;
  *(a9 + 72) = a10;
  *(a9 + 48) = a13;
  *(a9 + 56) = a12;
  *(a9 + 112) = a14;
  swift_unknownObjectRetain();
}

uint64_t static Calendar.RecurrenceRule.weekly(calendar:interval:end:matchingPolicy:repeatedTimePolicy:months:weekdays:hours:minutes:seconds:setPositions:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *a4;
  v15 = *a5;
  *a9 = *a1;
  *(a9 + 18) = 3;
  *(a9 + 24) = a2;
  *(a9 + 32) = v12;
  *(a9 + 40) = v13;
  *(a9 + 16) = v14;
  *(a9 + 17) = v15;
  v16 = MEMORY[0x1E69E7CC0];
  *(a9 + 80) = MEMORY[0x1E69E7CC0];
  *(a9 + 88) = v16;
  *(a9 + 96) = a6;
  *(a9 + 104) = v16;
  *(a9 + 64) = a8;
  *(a9 + 72) = a7;
  *(a9 + 48) = a11;
  *(a9 + 56) = a10;
  *(a9 + 112) = a12;
  swift_unknownObjectRetain();
}

uint64_t static Calendar.RecurrenceRule.daily(calendar:interval:end:matchingPolicy:repeatedTimePolicy:months:daysOfTheMonth:weekdays:hours:minutes:seconds:setPositions:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *a4;
  v17 = *a5;
  *a9 = *a1;
  *(a9 + 18) = a14;
  *(a9 + 24) = a2;
  *(a9 + 32) = v14;
  *(a9 + 40) = v15;
  *(a9 + 16) = v16;
  *(a9 + 17) = v17;
  v18 = MEMORY[0x1E69E7CC0];
  *(a9 + 80) = a7;
  *(a9 + 88) = v18;
  *(a9 + 96) = a6;
  *(a9 + 104) = v18;
  *(a9 + 64) = a10;
  *(a9 + 72) = a8;
  *(a9 + 48) = a12;
  *(a9 + 56) = a11;
  *(a9 + 112) = a13;
  swift_unknownObjectRetain();
}

uint64_t static Calendar.RecurrenceRule.yearly(calendar:interval:end:matchingPolicy:repeatedTimePolicy:months:daysOfTheYear:daysOfTheMonth:weeks:weekdays:hours:minutes:seconds:setPositions:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *a4;
  v18 = *a5;
  *a9 = *a1;
  *(a9 + 18) = 5;
  *(a9 + 24) = a2;
  *(a9 + 32) = v15;
  *(a9 + 40) = v16;
  *(a9 + 16) = v17;
  *(a9 + 17) = v18;
  *(a9 + 80) = a8;
  *(a9 + 88) = a7;
  *(a9 + 96) = a6;
  *(a9 + 104) = a10;
  *(a9 + 64) = a12;
  *(a9 + 72) = a11;
  *(a9 + 48) = a14;
  *(a9 + 56) = a13;
  *(a9 + 112) = a15;
  swift_unknownObjectRetain();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Calendar.RecurrenceRule.End.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C69746E75;
  }

  else
  {
    v2 = 0x746E756F63;
  }

  if (*a2)
  {
    v3 = 0x6C69746E75;
  }

  else
  {
    v3 = 0x746E756F63;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Calendar.RecurrenceRule.End.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Calendar.RecurrenceRule.End.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar.RecurrenceRule.End.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Calendar.RecurrenceRule.End.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x746E756F63;
  if (*v1)
  {
    v2 = 0x6C69746E75;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Calendar.RecurrenceRule.End.CodingKeys()
{
  if (*v0)
  {
    return 0x6C69746E75;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Calendar.RecurrenceRule.End.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Calendar.RecurrenceRule.End.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Calendar.RecurrenceRule.End.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation8CalendarV14RecurrenceRuleV3EndV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = 1;
    lazy protocol witness table accessor for type Date and conformance Date();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v15)
    {
      v16 = 0;
      v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v11 = v10;
      (*(v6 + 8))(v8, v5);
      if (v11)
      {
        v9 = 0;
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v9 = v14;
      (*(v6 + 8))(v8, v5);
      v12 = 0;
    }

    *a2 = v9;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Calendar.RecurrenceRule.End.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation8CalendarV14RecurrenceRuleV3EndV10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v8)
  {
    if (v8 == 1)
    {
      v12 = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
    }
  }

  else
  {
    v10[1] = v7;
    v11 = 1;
    lazy protocol witness table accessor for type Date and conformance Date();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Calendar.RecurrenceRule.Weekday.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 110;
  }

  else
  {
    v3 = 0x7961646B656577;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE100000000000000;
  }

  if (*a2)
  {
    v5 = 110;
  }

  else
  {
    v5 = 0x7961646B656577;
  }

  if (*a2)
  {
    v6 = 0xE100000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Calendar.RecurrenceRule.Weekday.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Calendar.RecurrenceRule.Weekday.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar.RecurrenceRule.Weekday.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Calendar.RecurrenceRule.Weekday.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 110;
  if (!*v1)
  {
    v2 = 0x7961646B656577;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE100000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Calendar.RecurrenceRule.Weekday.CodingKeys()
{
  if (*v0)
  {
    return 110;
  }

  else
  {
    return 0x7961646B656577;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Calendar.RecurrenceRule.Weekday.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Calendar.RecurrenceRule.Weekday.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Calendar.RecurrenceRule.Weekday.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation8CalendarV14RecurrenceRuleV7WeekdayO10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type Locale.Weekday and conformance Locale.Weekday();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v19;
    v17 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    v14 = v9 | 0x80;
    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v11;
    }

    if (v13)
    {
      v14 = 0;
    }

    *a2 = v15;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Calendar.RecurrenceRule.Weekday.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation8CalendarV14RecurrenceRuleV7WeekdayO10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v8 & 0x80000000) == 0)
  {
    v16 = v7;
    v15 = 0;
    lazy protocol witness table accessor for type Locale.Weekday and conformance Locale.Weekday();
LABEL_3:
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v4 + 8))(v6, v3);
  }

  v14 = 1;
  v10 = v11[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v10)
  {
    v13 = v8 & 0x7F;
    v12 = 0;
    lazy protocol witness table accessor for type Locale.Weekday and conformance Locale.Weekday();
    goto LABEL_3;
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Calendar.RecurrenceRule.Month.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1885431148;
  }

  else
  {
    v3 = 0x68746E6F6DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1885431148;
  }

  else
  {
    v5 = 0x68746E6F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Calendar.RecurrenceRule.Month.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Calendar.RecurrenceRule.Month.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar.RecurrenceRule.Month.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Calendar.RecurrenceRule.Month.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1885431148;
  if (!*v1)
  {
    v2 = 0x68746E6F6DLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Calendar.RecurrenceRule.Month.CodingKeys()
{
  if (*v0)
  {
    return 1885431148;
  }

  else
  {
    return 0x68746E6F6DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Calendar.RecurrenceRule.End.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Calendar.RecurrenceRule.Month.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Calendar.RecurrenceRule.Month.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Calendar.RecurrenceRule.Month.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation8CalendarV14RecurrenceRuleV5MonthV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    LOBYTE(v13[0]) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v13[0]) = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v9 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v10 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v10 & 1;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Calendar.RecurrenceRule.Month.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation8CalendarV14RecurrenceRuleV5MonthV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6 - 8];
  if (*(v1 + 8) == 1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v10[0] = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v2)
    {
      v10[0] = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

unint64_t Calendar.RecurrenceRule.CodingKeys.rawValue.getter(char a1)
{
  result = 0x7261646E656C6163;
  switch(a1)
  {
    case 1:
      result = 0x636E657571657266;
      break;
    case 2:
      result = 0x6C61767265746E69;
      break;
    case 3:
      result = 6581861;
      break;
    case 4:
      result = 0x676E69686374616DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x7368746E6F6DLL;
      break;
    case 7:
    case 8:
      result = 0x6854664F73796164;
      break;
    case 9:
      result = 0x736B656577;
      break;
    case 10:
      result = 0x737961646B656577;
      break;
    case 11:
      result = 0x7372756F68;
      break;
    case 12:
      result = 0x736574756E696DLL;
      break;
    case 13:
      result = 0x73646E6F636573;
      break;
    case 14:
      result = 0x7469736F50746573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Calendar.RecurrenceRule.CodingKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = Calendar.RecurrenceRule.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Calendar.RecurrenceRule.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Calendar.RecurrenceRule.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Calendar.RecurrenceRule.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Calendar.RecurrenceRule.CodingKeys()
{
  Calendar.RecurrenceRule.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar.RecurrenceRule.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Calendar.RecurrenceRule.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Calendar.RecurrenceRule.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Calendar.RecurrenceRule.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Calendar.RecurrenceRule.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = Calendar.RecurrenceRule.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Calendar.RecurrenceRule.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Calendar.RecurrenceRule.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Calendar.RecurrenceRule.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Calendar.RecurrenceRule.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Calendar.RecurrenceRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation8CalendarV14RecurrenceRuleV10CodingKeysOGMd);
  v5 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38) = 0;
  lazy protocol witness table accessor for type Calendar and conformance Calendar();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v47;
  v37 = v46;
  LOBYTE(v38) = 1;
  lazy protocol witness table accessor for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v8;
  LODWORD(v8) = v46;
  LOBYTE(v46) = 2;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 3;
  lazy protocol witness table accessor for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v46;
  v31 = v47;
  LOBYTE(v38) = 4;
  lazy protocol witness table accessor for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v46;
  LOBYTE(v38) = 5;
  lazy protocol witness table accessor for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation8CalendarV14RecurrenceRuleV5MonthVGMd);
  LOBYTE(v38) = 6;
  lazy protocol witness table accessor for type [Calendar.RecurrenceRule.Month] and conformance <A> [A](&lazy protocol witness table cache variable for type [Calendar.RecurrenceRule.Month] and conformance <A> [A], lazy protocol witness table accessor for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v46;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  LOBYTE(v38) = 7;
  v26 = lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  v27 = v9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(&v36 + 1) = v46;
  LOBYTE(v38) = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v8;
  *&v36 = v46;
  LOBYTE(v38) = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation8CalendarV14RecurrenceRuleV7WeekdayOGMd);
  LOBYTE(v38) = 10;
  lazy protocol witness table accessor for type [Calendar.RecurrenceRule.Weekday] and conformance <A> [A](&lazy protocol witness table cache variable for type [Calendar.RecurrenceRule.Weekday] and conformance <A> [A], lazy protocol witness table accessor for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v46;
  LOBYTE(v38) = 13;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v46;
  LOBYTE(v38) = 12;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = 0;
  v21 = v46;
  LOBYTE(v38) = 11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v46;
  v65 = 14;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v68);
  v10 = v66;
  v68 = v66;
  v11 = v34;
  *&v38 = v37;
  *(&v38 + 1) = v34;
  LOBYTE(v9) = v29;
  v12 = v30;
  LOBYTE(v39) = v30;
  BYTE1(v39) = v29;
  LOBYTE(v8) = v25;
  BYTE2(v39) = v25;
  *(&v39 + 1) = v33;
  *&v40 = v32;
  BYTE8(v40) = v31;
  *&v41 = v22;
  *(&v41 + 1) = v21;
  v13 = v24;
  *&v42 = v20;
  *(&v42 + 1) = v24;
  v43 = v36;
  *&v44 = v28;
  *(&v44 + 1) = v35;
  v45 = v66;
  v14 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v14;
  *(a2 + 112) = v10;
  v15 = v44;
  v16 = v42;
  *(a2 + 80) = v43;
  *(a2 + 96) = v15;
  *(a2 + 64) = v16;
  v17 = v39;
  *a2 = v38;
  *(a2 + 16) = v17;
  outlined init with copy of Calendar.RecurrenceRule(&v38, &v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v46 = v37;
  v47 = v11;
  v48 = v12;
  v49 = v9;
  v50 = v8;
  v51 = *&v67[7];
  v52 = v67[11];
  v53 = v33;
  v54 = v32;
  v55 = v31;
  *v56 = *v67;
  *&v56[3] = *&v67[3];
  v57 = v22;
  v58 = v21;
  v59 = v20;
  v60 = v13;
  v61 = v36;
  v62 = v28;
  v63 = v35;
  v64 = v68;
  return outlined destroy of Calendar.RecurrenceRule(&v46);
}

uint64_t Calendar.RecurrenceRule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation8CalendarV14RecurrenceRuleV10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = *(v1 + 16);
  v27 = *(v1 + 17);
  v28 = v7;
  v35 = *(v1 + 18);
  v8 = *(v1 + 3);
  v30 = *(v1 + 4);
  v31 = v8;
  v29 = *(v1 + 40);
  v9 = *(v1 + 7);
  v20 = *(v1 + 6);
  v21 = v9;
  v10 = *(v1 + 9);
  v22 = *(v1 + 8);
  v23 = v10;
  v11 = *(v1 + 11);
  v24 = *(v1 + 10);
  v25 = v11;
  v12 = *(v1 + 13);
  v26 = *(v1 + 12);
  v13 = *(v1 + 14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys();
  v32 = *v1;
  swift_unknownObjectRetain();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34 = v32;
  v36 = 0;
  lazy protocol witness table accessor for type Calendar and conformance Calendar();
  v14 = v33;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v15 = v30;
    swift_unknownObjectRelease();
    LOBYTE(v34) = v35;
    v36 = 1;
    lazy protocol witness table accessor for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v34) = 2;
    v33 = v6;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v34 = v15;
    BYTE8(v34) = v29;
    v36 = 3;
    lazy protocol witness table accessor for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v34) = v28;
    v36 = 4;
    lazy protocol witness table accessor for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v34) = v27;
    v36 = 5;
    lazy protocol witness table accessor for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v34 = v26;
    v36 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation8CalendarV14RecurrenceRuleV5MonthVGMd);
    lazy protocol witness table accessor for type [Calendar.RecurrenceRule.Month] and conformance <A> [A](&lazy protocol witness table cache variable for type [Calendar.RecurrenceRule.Month] and conformance <A> [A], lazy protocol witness table accessor for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v34 = v25;
    v36 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
    *&v32 = v3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v34 = v24;
    v36 = 8;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v34 = v12;
    v36 = 9;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v34 = v23;
    v36 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation8CalendarV14RecurrenceRuleV7WeekdayOGMd);
    lazy protocol witness table accessor for type [Calendar.RecurrenceRule.Weekday] and conformance <A> [A](&lazy protocol witness table cache variable for type [Calendar.RecurrenceRule.Weekday] and conformance <A> [A], lazy protocol witness table accessor for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v34 = v22;
    v36 = 11;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v34 = v21;
    v36 = 12;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v34 = v20;
    v36 = 13;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v34 = v13;
    v36 = 14;
    v17 = v32;
    v18 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v4 + 8))(v18, v17);
  }
}

uint64_t Calendar.RecurrenceRule.End.description.getter()
{
  if (!*(v0 + 8))
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
    v4 = [v3 description];

    if (!v4)
    {
LABEL_15:
      v12 = 0;
      v11 = 0xE000000000000000;
      goto LABEL_26;
    }

    isTaggedPointer = _objc_isTaggedPointer(v4);
    v6 = v4;
    v7 = v6;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v6);
      switch(TaggedPointerTag)
      {
        case 0:
          _CFIndirectTaggedPointerStringGetContents();
          v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v20)
          {
            v11 = v20;
            v18 = v19;
          }

          else
          {
            [v7 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v18 = v22;
            v11 = v23;
          }

          goto LABEL_25;
        case 0x16:
          result = [v7 UTF8String];
          if (result)
          {
            result = String.init(utf8String:)(result);
            if (v17)
            {
              v18 = result;
              v11 = v17;

              goto LABEL_25;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return result;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v11 = v10;

          v12 = v9;
LABEL_26:
          MEMORY[0x1865CB0E0](v12, v11);

          return 0x207265746641;
      }
    }

    if (__CFStringIsCF())
    {

      goto LABEL_15;
    }

    v13 = v7;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v11 = v15;
      v16 = v14;

      v12 = v16;
      goto LABEL_26;
    }

    if (![v13 length])
    {

      goto LABEL_15;
    }

    v18 = String.init(_cocoaString:)();
    v11 = v21;
LABEL_25:

    v12 = v18;
    goto LABEL_26;
  }

  if (*(v0 + 8) != 1)
  {
    return 0x726576654ELL;
  }

  _StringGuts.grow(_:)(22);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v1);

  MEMORY[0x1865CB0E0](0x6572727563636F20, 0xEE0029732865636ELL);
  return 0x207265746641;
}

uint64_t Calendar.RecurrenceRule.End.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1865CD060](2);
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1865CD060](v2);
  }

  else
  {
    MEMORY[0x1865CD060](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1865CD090](v3);
  }
}

Swift::Int Calendar.RecurrenceRule.End.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1865CD060](2);
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1865CD060](v3);
  }

  else
  {
    MEMORY[0x1865CD060](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1865CD090](v4);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar.RecurrenceRule.End._End()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1865CD060](2);
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1865CD060](v3);
  }

  else
  {
    MEMORY[0x1865CD060](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1865CD090](v4);
  }

  return Hasher._finalize()();
}

void Calendar.RecurrenceRule.Month.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x1865CD060](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int Calendar.RecurrenceRule.Month.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Calendar.RecurrenceRule.Month()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Calendar.RecurrenceRule.Month()
{
  v1 = *(v0 + 8);
  MEMORY[0x1865CD060](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar.RecurrenceRule.Month()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t Calendar.RecurrenceRule.Weekday.hash(into:)()
{
  v1 = *v0;
  if (v0[1] < 0)
  {
    MEMORY[0x1865CD060](1);
    MEMORY[0x1865CD060](v1);
  }

  else
  {
    MEMORY[0x1865CD060](0);
  }

  String.hash(into:)();
}

Swift::Int Calendar.RecurrenceRule.Weekday.hashValue.getter()
{
  Hasher.init(_seed:)();
  Calendar.RecurrenceRule.Weekday.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Calendar.RecurrenceRule.Weekday()
{
  Hasher.init(_seed:)();
  Calendar.RecurrenceRule.Weekday.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar.RecurrenceRule.Weekday()
{
  Hasher.init(_seed:)();
  Calendar.RecurrenceRule.Weekday.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Calendar.RecurrenceRule.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 18);
  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v35 = *(v1 + 32);
  v36 = *(v1 + 56);
  v37 = *(v1 + 64);
  v38 = *(v1 + 72);
  v39 = *(v1 + 80);
  v40 = *(v1 + 88);
  v41 = *(v1 + 96);
  v42 = *(v1 + 104);
  v43 = *(v1 + 112);
  ObjectType = swift_getObjectType();
  (*(v3 + 120))(a1, ObjectType, v3);
  MEMORY[0x1865CD060](v4);
  MEMORY[0x1865CD060](v5);
  MEMORY[0x1865CD060](v6 + 1);
  MEMORY[0x1865CD060](v7);
  if (v8)
  {
    if (v8 == 1)
    {
      MEMORY[0x1865CD060](2);
      v11 = v35;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1865CD060](v11);
  }

  else
  {
    MEMORY[0x1865CD060](1);
    if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v35;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1865CD090](v12);
  }

  MEMORY[0x1865CD060](*(v9 + 16));
  v13 = *(v9 + 16);
  if (v13)
  {
    v14 = (v9 + 32);
    do
    {
      v15 = *v14++;
      MEMORY[0x1865CD060](v15);
      --v13;
    }

    while (v13);
  }

  MEMORY[0x1865CD060](*(v36 + 16));
  v16 = *(v36 + 16);
  if (v16)
  {
    v17 = (v36 + 32);
    do
    {
      v18 = *v17++;
      MEMORY[0x1865CD060](v18);
      --v16;
    }

    while (v16);
  }

  MEMORY[0x1865CD060](*(v37 + 16));
  v19 = *(v37 + 16);
  if (v19)
  {
    v20 = (v37 + 32);
    do
    {
      v21 = *v20++;
      MEMORY[0x1865CD060](v21);
      --v19;
    }

    while (v19);
  }

  specialized Array<A>.hash(into:)(a1, v38);
  MEMORY[0x1865CD060](*(v39 + 16));
  v22 = *(v39 + 16);
  if (v22)
  {
    v23 = (v39 + 32);
    do
    {
      v24 = *v23++;
      MEMORY[0x1865CD060](v24);
      --v22;
    }

    while (v22);
  }

  MEMORY[0x1865CD060](*(v40 + 16));
  v25 = *(v40 + 16);
  if (v25)
  {
    v26 = (v40 + 32);
    do
    {
      v27 = *v26++;
      MEMORY[0x1865CD060](v27);
      --v25;
    }

    while (v25);
  }

  specialized Array<A>.hash(into:)(a1, v41);
  MEMORY[0x1865CD060](*(v42 + 16));
  v28 = *(v42 + 16);
  if (v28)
  {
    v29 = (v42 + 32);
    do
    {
      v30 = *v29++;
      MEMORY[0x1865CD060](v30);
      --v28;
    }

    while (v28);
  }

  result = MEMORY[0x1865CD060](*(v43 + 16));
  v32 = *(v43 + 16);
  if (v32)
  {
    v33 = (v43 + 32);
    do
    {
      v34 = *v33++;
      result = MEMORY[0x1865CD060](v34);
      --v32;
    }

    while (v32);
  }

  return result;
}

Swift::Int Calendar.RecurrenceRule.hashValue.getter()
{
  Hasher.init(_seed:)();
  Calendar.RecurrenceRule.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Calendar.RecurrenceRule()
{
  Hasher.init(_seed:)();
  Calendar.RecurrenceRule.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar.RecurrenceRule()
{
  Hasher.init(_seed:)();
  Calendar.RecurrenceRule.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t specialized static Calendar.RecurrenceRule.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a1 + 3);
  v6 = *(a1 + 40);
  v32 = *(a1 + 6);
  v29 = *(a1 + 7);
  v30 = *(a1 + 4);
  v27 = *(a1 + 8);
  v25 = *(a1 + 9);
  v23 = *(a1 + 10);
  v21 = *(a1 + 11);
  v19 = *(a1 + 12);
  v17 = *(a1 + 13);
  v15 = *(a1 + 14);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v9 = *(a2 + 18);
  v10 = *(a2 + 3);
  v33 = *(a2 + 4);
  v34 = *(a2 + 40);
  v31 = *(a2 + 6);
  v28 = *(a2 + 7);
  v26 = *(a2 + 8);
  v24 = *(a2 + 9);
  v22 = *(a2 + 10);
  v20 = *(a2 + 11);
  v18 = *(a2 + 12);
  v16 = *(a2 + 13);
  v11 = *a1;
  v14 = *(a2 + 14);
  v35 = *a2;
  v36 = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = specialized static Calendar.== infix(_:_:)(&v36, &v35);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v12 & 1) == 0 || v2 != v7 || ((v3 ^ v8) & 1) != 0 || v4 != v9 || v5 != v10)
  {
    return 0;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      if (v34 != 1 || *&v30 != *&v33)
      {
        return 0;
      }
    }

    else if (v34 != 2 || v33 != 0.0)
    {
      return 0;
    }
  }

  else if (v34 || v30 != v33)
  {
    return 0;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v32, v31) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v29, v28) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v27, v26) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation8CalendarV14RecurrenceRuleV7WeekdayO_Tt1g5(v25, v24) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v23, v22) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v21, v20) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation8CalendarV14RecurrenceRuleV5MonthV_Tt1g5(v19, v18) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v17, v16) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v15, v14);
}

unint64_t lazy protocol witness table accessor for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End.CodingKeys and conformance Calendar.RecurrenceRule.End.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday.CodingKeys and conformance Calendar.RecurrenceRule.Weekday.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Weekday and conformance Locale.Weekday()
{
  result = lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday;
  if (!lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday;
  if (!lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday;
  if (!lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday;
  if (!lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Weekday and conformance Locale.Weekday);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month.CodingKeys and conformance Calendar.RecurrenceRule.Month.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.CodingKeys and conformance Calendar.RecurrenceRule.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency()
{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Frequency and conformance Calendar.RecurrenceRule.Frequency);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End()
{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End and conformance Calendar.RecurrenceRule.End);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month()
{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Month and conformance Calendar.RecurrenceRule.Month);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Calendar.RecurrenceRule.Weekday] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation8CalendarV14RecurrenceRuleV7WeekdayOGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday()
{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.Weekday and conformance Calendar.RecurrenceRule.Weekday);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Calendar.RecurrenceRule.Month] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation8CalendarV14RecurrenceRuleV5MonthVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.RecurrenceRule and conformance Calendar.RecurrenceRule()
{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule and conformance Calendar.RecurrenceRule;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule and conformance Calendar.RecurrenceRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule and conformance Calendar.RecurrenceRule);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.RecurrenceRule(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for Calendar.RecurrenceRule(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.RecurrenceRule.Weekday(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 9))
  {
    return (*a1 + 31);
  }

  v3 = ((*(a1 + 8) >> 2) & 0x1E | (*(a1 + 8) >> 7)) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Calendar.RecurrenceRule.Weekday(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 8) = 0;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.RecurrenceRule.Month(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Calendar.RecurrenceRule.Month(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.DatesByRecurring and conformance Calendar.DatesByRecurring()
{
  result = lazy protocol witness table cache variable for type Calendar.DatesByRecurring and conformance Calendar.DatesByRecurring;
  if (!lazy protocol witness table cache variable for type Calendar.DatesByRecurring and conformance Calendar.DatesByRecurring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.DatesByRecurring and conformance Calendar.DatesByRecurring);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.RecurrenceRule.End(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Calendar.RecurrenceRule.End(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for Calendar.RecurrenceRule.End._End(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Calendar.RecurrenceRule.End._End(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.RecurrenceRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t lazy protocol witness table accessor for type Calendar.RecurrenceRule.End._End and conformance Calendar.RecurrenceRule.End._End()
{
  result = lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End._End and conformance Calendar.RecurrenceRule.End._End;
  if (!lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End._End and conformance Calendar.RecurrenceRule.End._End)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RecurrenceRule.End._End and conformance Calendar.RecurrenceRule.End._End);
  }

  return result;
}

unint64_t specialized Calendar.RecurrenceRule.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Calendar.RecurrenceRule.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for DataProtocol.regions.getter in conformance <A> ArraySlice<A>@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return swift_unknownObjectRetain();
}

uint64_t Repeated<A>.regions.getter(uint64_t result, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
    }

    v3 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd);
    v7 = &protocol witness table for <A> CollectionOfOne<A>;
    LOBYTE(v5[0]) = a2;
    __src = *__swift_project_boxed_opaque_existential_1(v5, v6);
    specialized Data.InlineData.init(_:)(&__src, v5);
    __swift_destroy_boxed_opaque_existential_1(v5);
    return v3;
  }

  return result;
}

uint64_t protocol witness for DataProtocol.regions.getter in conformance <A> Repeated<A>@<X0>(uint64_t *a1@<X8>)
{
  result = Repeated<A>.regions.getter(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> [A](uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> ArraySlice<A>(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> ContiguousArray<A>(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>, &_ss15ContiguousArrayVys5UInt8VGMd);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> EmptyCollection<A>(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type EmptyCollection<UInt8> and conformance EmptyCollection<A>, &_ss15EmptyCollectionVys5UInt8VGMd);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<Repeated<UInt8>> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Repeated<UInt8>> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Repeated<UInt8>> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys8RepeatedVys5UInt8VGGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Repeated<UInt8> and conformance <A> Repeated<A>, &_ss8RepeatedVys5UInt8VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Repeated<UInt8>> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> Repeated<A>(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Repeated<UInt8> and conformance Repeated<A>, &_ss8RepeatedVys5UInt8VGMd);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> [A](void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd);
  a1[2] = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd);
  result = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> ContiguousArray<A>(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>, &_ss15ContiguousArrayVys5UInt8VGMd);
  a1[2] = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>, &_ss15ContiguousArrayVys5UInt8VGMd);
  result = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>, &_ss15ContiguousArrayVys5UInt8VGMd);
  a1[3] = result;
  return result;
}

uint64_t UnsafeMutableRawBufferPointer.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  return a1(a3, v4);
}

uint64_t UnsafeBufferPointer<A>.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4 + a3;
  }

  else
  {
    v4 = 0;
  }

  return a1(a3, v4);
}

uint64_t CollectionOfOne<A>.withUnsafeBytes<A>(_:)(uint64_t (*a1)(char *, uint64_t *), uint64_t a2, char a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  return a1(&v4, &v5);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(_BYTE *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a4 >> 62;
  v25 = a3;
  if ((a4 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(a3 + 16);
    }
  }

  else if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0;
  }

  v26 = a3 >> 32;
  v23 = a3 >> 16;
  v24 = a3 >> 8;
  v21 = HIDWORD(a3);
  v22 = a3 >> 24;
  v19 = v9;
  v20 = a3 >> 40;
  if (v8 > 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = BYTE6(a4);
  if (v8)
  {
    v10 = v26;
  }

  while (v9 != v10)
  {
    if (v8 == 2)
    {
      if (v9 < *(a3 + 16))
      {
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
        goto LABEL_43;
      }

      if (v9 >= *(a3 + 24))
      {
        goto LABEL_40;
      }

      v11 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v11)
      {
        goto LABEL_45;
      }

      v15 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v13 = __OFSUB__(v9, v15);
      v14 = v9 - v15;
      if (v13)
      {
        goto LABEL_42;
      }

      goto LABEL_25;
    }

    if (v8 == 1)
    {
      if (v9 < v25 || v9 >= v26)
      {
        goto LABEL_39;
      }

      v11 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v11)
      {
        goto LABEL_44;
      }

      v12 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v13 = __OFSUB__(v9, v12);
      v14 = v9 - v12;
      if (v13)
      {
        goto LABEL_41;
      }

LABEL_25:
      v16 = *(v11 + v14);
      goto LABEL_28;
    }

    if (v9 >= BYTE6(a4))
    {
      goto LABEL_38;
    }

    v27[0] = a3;
    v27[1] = v24;
    v27[2] = v23;
    v27[3] = v22;
    v27[4] = v21;
    v27[5] = v20;
    v27[6] = BYTE6(a3);
    v27[7] = HIBYTE(a3);
    v28 = a4;
    v29 = BYTE2(a4);
    v30 = BYTE3(a4);
    v31 = BYTE4(a4);
    v32 = BYTE5(a4);
    v16 = v27[v9];
LABEL_28:
    v27[0] = v16;
    v17 = a1(v27);
    if (v4 || (v17 & 1) != 0)
    {
      return v9;
    }

    ++v9;
    if (v8 <= 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (v8 != 2)
    {
      if (!v19)
      {
        return 0;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
    }

    v10 = *(a3 + 24);
  }

  return 0;
}

void *specialized RangeReplaceableCollection.remove(at:)(void *result)
{
  v2 = v1[1] >> 10;
  v3 = v1[5] >> 10;
  if (v2 == v3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = *result;
  v6 = *result >> 10;
  if (v6 < v2 || v6 >= v3)
  {
    goto LABEL_10;
  }

  v9 = result[2];
  v8 = result[3];
  v10 = result[1];
  v26 = v1[5] >> 10;
  v11 = *v1;
  v12 = *(*v1 + 40);
  v31 = *(*v1 + 24);
  v32 = v12;
  v33 = *(v11 + 56);
  swift_unknownObjectRetain();
  v23 = BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  v13 = *(v11 + 40);
  v28 = *(v11 + 24);
  v29 = v13;
  v30 = *(v11 + 56);
  swift_unknownObjectRetain();
  v24 = v9;
  v25 = v8;
  v14 = BigString.UnicodeScalarView.index(after:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = swift_unknownObjectRelease();
  if (v26 < v14 >> 10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >> 10 >= v6)
  {
    v21 = *(v11 + 16);
    v22 = v4[4];
    v27[0] = v5;
    v27[1] = v10;
    v27[2] = v24;
    v27[3] = v25;
    v27[4] = v22;
    v27[5] = v14;
    v27[6] = v16;
    v27[7] = v18;
    v27[8] = v20;
    v27[9] = v21;
    specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(v27);
    return v23;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t *specialized RangeReplaceableCollection.remove(at:)(uint64_t *result)
{
  v2 = v1[1] >> 10;
  v3 = v1[5] >> 10;
  if (v2 == v3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = *result;
  v6 = *result >> 10;
  if (v6 < v2 || v6 >= v3)
  {
    goto LABEL_10;
  }

  v33 = *result >> 10;
  v8 = result[2];
  v9 = result[3];
  v10 = result[1];
  v11 = *v1;
  v12 = *(*v1 + 24);
  v13 = *(*v1 + 56);
  v37[1] = *(*v1 + 40);
  v37[2] = v13;
  v37[0] = v12;
  v14 = *(v11 + 24);
  v39 = *(v11 + 56);
  v15 = *(v11 + 40);
  v38[0] = v14;
  v38[1] = v15;
  v34 = v3;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v38, v35);
  v32 = BigString.subscript.getter();
  outlined destroy of BigString(v37);
  v16 = *(v11 + 24);
  v17 = *(v11 + 56);
  v36[1] = *(v11 + 40);
  v36[2] = v17;
  v36[0] = v16;
  v18 = *(v11 + 24);
  v41 = *(v11 + 56);
  v19 = *(v11 + 40);
  v40[0] = v18;
  v40[1] = v19;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v40, v35);
  v20 = v10;
  v21 = v8;
  v22 = v9;
  v23 = BigString.index(after:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = outlined destroy of BigString(v36);
  if (v34 < v23 >> 10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v23 >> 10 >= v33)
  {
    v30 = *(v11 + 16);
    v31 = v4[4];
    v35[0] = v5;
    v35[1] = v20;
    v35[2] = v21;
    v35[3] = v22;
    v35[4] = v31;
    v35[5] = v23;
    v35[6] = v25;
    v35[7] = v27;
    v35[8] = v29;
    v35[9] = v30;
    specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v35);
    return v32;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection.removeAll(keepingCapacity:)(uint64_t result)
{
  if (result)
  {
    v2 = v1[5];
    if (v2 >> 10 < v1[1] >> 10)
    {
      __break(1u);
    }

    else
    {
      v3 = v1[8];
      v4 = *(*v1 + 16);
      v5 = v1[4];
      *v8 = v1[1];
      *&v8[8] = *(v1 + 1);
      *&v8[24] = v5;
      *&v9 = v4;
      *(&v9 + 1) = v2;
      v10 = *(v1 + 3);
      *&v11 = v3;
      *(&v11 + 1) = v4;
      return specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v8);
    }
  }

  else
  {
    v6 = *(v1 + 3);
    v9 = *(v1 + 2);
    v10 = v6;
    v11 = *(v1 + 4);
    v7 = *(v1 + 1);
    *v8 = *v1;
    *&v8[16] = v7;
    outlined destroy of AttributedString.CharacterView(v8);
    return AttributedString.CharacterView.init()(v1);
  }

  return result;
}

__n128 specialized RangeReplaceableCollection.removeAll(keepingCapacity:)(char a1)
{
  if (a1)
  {
    v7 = *(v2 + 40);
    if (v7 >> 10 >= *(v2 + 8) >> 10)
    {
      v8 = *(v2 + 64);
      v9 = *(*v2 + 16);
      v10 = *(v2 + 32);
      v36 = *(v2 + 8);
      v37 = *(v2 + 16);
      v38 = v10;
      v39 = v9;
      v40 = v7;
      v41 = *(v2 + 48);
      *&v42 = v8;
      *(&v42 + 1) = v9;
      specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(&v36);
      return result;
    }

    __break(1u);
    goto LABEL_8;
  }

  v12 = *(v2 + 48);
  v32[2] = *(v2 + 32);
  v32[3] = v12;
  v32[4] = *(v2 + 64);
  v13 = *(v2 + 16);
  v4 = v2;
  v32[0] = *v2;
  v32[1] = v13;
  outlined destroy of AttributedString.UnicodeScalarView(v32);
  BigString.init()();
  v30 = v34;
  v31 = v33;
  v6 = *(&v35 + 1);
  v5 = v35;
  v36 = 0;
  MEMORY[0x1865D26B0](&v36, 8);
  v3 = v36;
  type metadata accessor for AttributedString.Guts();
  v1 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_9:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v15 = v34;
  *(v1 + 24) = v33;
  *(v1 + 16) = add_explicit;
  *(v1 + 40) = v15;
  *(v1 + 56) = v35;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = v3;
  *(v1 + 104) = MEMORY[0x1E69E7CC0];
  v16 = BigString.startIndex.getter();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = BigString.endIndex.getter();
  v45 = v16;
  v46 = v18;
  v47 = v20;
  v48 = v22;
  v49 = v23;
  v50 = v24;
  v51 = v25;
  v52 = v26;
  v53 = v31;
  v54 = v30;
  v55 = v5;
  v56 = v6;

  outlined init with copy of BigString(&v33, &v36);
  BigString.UnicodeScalarView.subscript.getter();

  outlined destroy of BigString(&v33);
  outlined destroy of BigSubstring.UnicodeScalarView(&v36);
  result = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  *v4 = v1;
  *(v4 + 8) = result;
  *(v4 + 24) = v27;
  *(v4 + 40) = v28;
  *(v4 + 56) = v29;
  *(v4 + 72) = 0;
  return result;
}

void specialized RangeReplaceableCollection.removeAll(keepingCapacity:)(char a1)
{
  v3 = *v1;
  v4 = v1[1];
  if ((a1 & 1) == 0)
  {
    outlined consume of Data._Representation(v3, v4);
    *v1 = xmmword_181234410;
    return;
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_11;
    }

    v3 = *(v3 + 16);
    v6 = *(*v1 + 24);
LABEL_9:
    if (v6 >= v3)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    v6 = 0;
    v3 = 0;
    goto LABEL_12;
  }

  if (v5)
  {
    v3 = v3;
    v6 = *v1 >> 32;
    goto LABEL_9;
  }

  v3 = 0;
  v6 = BYTE6(v4);
LABEL_12:

  Data._Representation.replaceSubrange(_:with:count:)(v3, v6, 0, 0);
}

uint64_t specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v18 - v14;
  v18[4] = a4;
  v18[5] = a5;
  v18[1] = a2;
  v18[6] = a2;
  v18[7] = a3;
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (v19 != 1)
  {
    return v18[10];
  }

  (*(v10 + 16))(v12, a1, a4);
  v16 = dispatch thunk of Sequence._copyContents(initializing:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  result = (*(v18[0] + 8))(v15, AssociatedTypeWitness);
  if (v19 == 1)
  {
    return v16;
  }

  __break(1u);
  return result;
}

void _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAEG_Tt0g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd);
  v16[3] = v8;
  v16[4] = &protocol witness table for <A> ArraySlice<A>;
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    closure #1 in Data.init<A>(_:)((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }
}

unint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSryAEG_Tt0g5(uint64_t a1, uint64_t a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrys5UInt8VGMd);
  v10 = &protocol witness table for <A> UnsafeMutableBufferPointer<A>;
  v8[0] = a1;
  v8[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    if (v6)
    {
      if (v6 <= 14)
      {
        v5 = specialized Data.InlineData.init(_:)(*v4, (v6 + v5));
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        __DataStorage.init(bytes:length:)(v5, v6);
        if (v6 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v5 = swift_allocObject();
          *(v5 + 16) = 0;
          *(v5 + 24) = v6;
        }

        else
        {
          v5 = v6 << 32;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t __DataInvokeDeallocatorVirtualMemory(_:_:)(mach_vm_address_t a1, mach_vm_size_t a2)
{
  v4 = _platform_mach_task_self();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = mach_vm_deallocate(v4, a1, a2);
  if (result)
  {
LABEL_5:
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000029, 0x8000000181481310);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](8236, 0xE200000000000000);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](0x64656C6961662029, 0xE800000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _withStackOrHeapBuffer(capacity:_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    if (a1 > 0x20)
    {
      v4 = swift_slowAlloc();
      a2(v4, a1);

      JUMPOUT(0x1865D2690);
    }

    memset(v8, 0, sizeof(v8));
    v5 = v8;
    v6 = a1;
  }

  return (a2)(v5, v6);
}

uint64_t static __DataStorage.vmOpsThreshold.getter()
{
  if (one-time initialization token for vmOpsThreshold != -1)
  {
    swift_once();
  }

  return static __DataStorage.vmOpsThreshold;
}

uint64_t key path getter for __DataStorage._deallocator : __DataStorage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v3);
}

uint64_t key path setter for __DataStorage._deallocator : __DataStorage(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UnsafeMutableRawPointer, @in_guaranteed Int) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = *(*a2 + 48);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v3);

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v8);
}

uint64_t __DataStorage._deallocator.getter()
{
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v1);
  return v1;
}

uint64_t __DataStorage._deallocator.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v3);
}

void specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  if (!v4)
  {
    v8 = 0;
    v6 = __OFSUB__(a2, a1);
    v9 = a2 - a1;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v5 = a3[5];
  v6 = __OFSUB__(a1, v5);
  v7 = a1 - v5;
  if (v6)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = (v7 + v4);
  v6 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (a3[3] < v9)
  {
    v9 = a3[3];
  }

  v10 = &v8[v9];
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  Data._Representation.append(contentsOf:)(v8, v11);
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v7 = a3[2];
  if (v7)
  {
    v8 = a3[5];
    v9 = __OFSUB__(result, v8);
    v10 = result - v8;
    if (v9)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v7 += v10;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a3[3] < v11)
  {
    v11 = a3[3];
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a4(a5, v7, v13);
  if (!v5)
  {
    *(a5 + 8) = result & 1;
  }

  return result;
}

uint64_t __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = v3[2];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v3[5];
  v6 = __OFSUB__(result, v5);
  v7 = result - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v3[3] < v8)
  {
    v8 = v3[3];
  }

  return a3(v4 + v7, v4 + v7 + v8);
}

uint64_t __DataStorage.bytes.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 40);
  v3 = __OFSUB__(0, v2);
  v4 = -v2;
  if (!v3)
  {
    return v4 + v1;
  }

  __break(1u);
  return result;
}

uint64_t __DataStorage._copyWillRetain.setter(uint64_t result)
{
  v2 = 0x8000000000000000;
  if (result)
  {
    v2 = 0;
  }

  *(v1 + 32) = v2 & 0x8000000000000000 | *(v1 + 32) & 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

_BYTE *(*__DataStorage._copyWillRetain.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) >= 0;
  return __DataStorage._copyWillRetain.modify;
}

_BYTE *__DataStorage._copyWillRetain.modify(_BYTE *result)
{
  v1 = 0x8000000000000000;
  if (result[8])
  {
    v1 = 0;
  }

  *(*result + 32) = v1 & 0x8000000000000000 | *(*result + 32) & 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

void (*__DataStorage.length.modify(void *a1))(Swift::Int *a1)
{
  *a1 = *(v1 + 24);
  a1[1] = v1;
  return __DataStorage.length.modify;
}

Swift::Void __swiftcall __DataStorage._freeBytes()()
{
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = v1[6];
    if (v3)
    {
      v4 = v1[3];

      v3(v2, v4);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v3);
    }

    else
    {
      free(v2);
    }
  }

  v5 = v1[6];
  v1[6] = 0;
  v1[7] = 0;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v5);
}

uint64_t __DataStorage.enumerateBytes(in:_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (!__OFSUB__(a2, result))
  {
    return a3();
  }

  __break(1u);
  return result;
}

void __DataStorage.append(_:length:)(unint64_t a1, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v2[3];
  v5 = v4 + a2;
  if (__OFADD__(v4, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v2[4] & 0x7FFFFFFFFFFFFFFFLL) < v5 || (v7 = v2[2]) == 0)
  {
    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(v4 + a2, 0);
    v7 = v2[2];
    v2[3] = v5;
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v2[3] = v5;
LABEL_7:

  specialized static __DataStorage.move(_:_:_:)(v7 + v4, a1, a2);
}

Swift::UInt8 __swiftcall __DataStorage.get(_:)(Swift::Int a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = *(v1 + 40);
  v4 = __OFSUB__(a1, v3);
  v5 = a1 - v3;
  if (v4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
    return a1;
  }

  LOBYTE(a1) = *(v2 + v5);
  return a1;
}

Swift::Void __swiftcall __DataStorage.set(_:to:)(Swift::Int _, Swift::UInt8 to)
{
  __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = *(v2 + 40);
    v7 = __OFSUB__(_, v6);
    v8 = _ - v6;
    if (!v7)
    {
      *(v5 + v8) = to;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t __DataStorage.__allocating_init(length:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __DataStorage.init(length:)(a1);
  return v2;
}

uint64_t __DataStorage.__allocating_init(capacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __DataStorage.init(capacity:)(a1);
  return v2;
}

uint64_t __DataStorage.__allocating_init(bytes:length:)(unint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  __DataStorage.init(bytes:length:)(a1, a2);
  return v4;
}

uint64_t __DataStorage.__allocating_init(bytes:length:copy:deallocator:offset:)(unint64_t a1, uint64_t a2, char a3, void (*a4)(unint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  if (a2 > 0x3FFFFFFFFFFFFFFELL)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_5;
  }

  v6 = v13;
  *(v13 + 40) = a6;
  if (!a2)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    *(v13 + 24) = a2;
    *(v13 + 32) = a2;
    *(v13 + 64) = 0;
    *(v13 + 16) = a1;
    *(v13 + 48) = a4;
    *(v13 + 56) = a5;
    return v6;
  }

  if (one-time initialization token for vmOpsThreshold != -1)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (static __DataStorage.vmOpsThreshold > a2)
  {
    *(v6 + 24) = a2;
    v17 = 0;
    _So30malloc_type_layout_semantics_ta_generic_data_setter(&v17 + 1);
    result = malloc_type_malloc(a2, v17 << 32);
    if (result)
    {
      *(v6 + 16) = result;
      *(v6 + 32) = a2;
      *(v6 + 64) = 1;
      specialized static __DataStorage.move(_:_:_:)(result, a1, a2);
      if (!a4)
      {
        return v6;
      }

      if (!a1)
      {
        __break(1u);
LABEL_10:
        *(v6 + 64) = 0;
        *(v6 + 24) = 0;
        *(v6 + 32) = 0;
        *(v6 + 16) = 0;
        if (a4)
        {
          if (!a1)
          {
LABEL_19:
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(a4);
            return v6;
          }

          v15 = a1;
          v16 = 0;
LABEL_18:
          a4(v15, v16);
          goto LABEL_19;
        }

        return v6;
      }

LABEL_17:
      v15 = a1;
      v16 = a2;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_24;
  }

  *(v6 + 24) = a2;
  *(v6 + 32) = a2;
  *(v6 + 64) = 1;
  v18 = 0;
  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v18 + 1);
  result = malloc_type_malloc(a2, v18 << 32);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v6 + 16) = result;
  result = specialized static __DataStorage.move(_:_:_:)(result, a1, a2);
  if (!a4)
  {
    return v6;
  }

  if (a1)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t __DataStorage.__allocating_init(offset:bytes:capacity:needToZero:length:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  *(result + 32) = a3;
  *(result + 40) = a1;
  *(result + 64) = a4;
  *(result + 16) = a2;
  *(result + 24) = a5;
  *(result + 48) = a6;
  *(result + 56) = a7;
  return result;
}

uint64_t __DataStorage.init(offset:bytes:capacity:needToZero:length:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a3;
  *(v7 + 40) = a1;
  *(v7 + 64) = a4;
  *(v7 + 16) = a2;
  *(v7 + 24) = a5;
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  return v7;
}

void *__DataStorage.deinit()
{
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = v1[6];
    if (v3)
    {
      v4 = v1[3];

      v3(v2, v4);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v3);
    }

    else
    {
      free(v2);
    }
  }

  v5 = v1[6];
  v1[6] = 0;
  v1[7] = 0;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v5);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v1[6]);
  return v1;
}

void *__DataStorage.mutableCopy(_:)(uint64_t a1, uint64_t a2)
{
  v6 = v3[2];
  if (!v6)
  {
    v2 = 0;
    v4 = a2 - a1;
    if (!__OFSUB__(a2, a1))
    {
      goto LABEL_4;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3[5];
  v8 = __OFSUB__(a1, v7);
  v9 = a1 - v7;
  if (v8)
  {
    goto LABEL_19;
  }

  v2 = v9 + v6;
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  if (v4 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v3 = v10;
    v10[5] = a1;
    if (v4)
    {
      if (one-time initialization token for vmOpsThreshold == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_13:
    *(v3 + 64) = 0;
    v3[3] = 0;
    v3[4] = 0;
    v3[2] = 0;
    return v3;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  swift_once();
LABEL_7:
  if (v4 >= static __DataStorage.vmOpsThreshold)
  {
    v3[3] = v4;
    v3[4] = v4;
    *(v3 + 64) = 1;
    v13 = 0;
    _So30malloc_type_layout_semantics_ta_generic_data_setter(&v13 + 1);
    result = malloc_type_malloc(v4, v13 << 32);
    if (result)
    {
      v3[2] = result;
      goto LABEL_16;
    }
  }

  else
  {
    v3[3] = v4;
    v12 = 0;
    _So30malloc_type_layout_semantics_ta_generic_data_setter(&v12 + 1);
    result = malloc_type_malloc(v4, v12 << 32);
    if (result)
    {
      v3[2] = result;
      v3[4] = v4;
      *(v3 + 64) = 1;
LABEL_16:
      specialized static __DataStorage.move(_:_:_:)(result, v2, v4);
      return v3;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Data.InlineData.bytes.setter(uint64_t result, char a2, char a3, char a4, char a5, char a6, char a7, char a8, uint64_t a9)
{
  *v9 = result;
  *(v9 + 1) = a2;
  *(v9 + 2) = a3;
  *(v9 + 3) = a4;
  *(v9 + 4) = a5;
  *(v9 + 5) = a6;
  *(v9 + 6) = a7;
  *(v9 + 7) = a8;
  *(v9 + 8) = a9;
  *(v9 + 10) = *(&a9 + 2);
  return result;
}

uint64_t Data.InlineData.init(_:count:)(uint64_t a1, uint64_t a2, size_t a3)
{
  v3 = specialized Data.InlineData.init(_:count:)(a1, a2, a3);

  return v3;
}

{
  v13 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a3 > 0xFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __dst = 0;
  v12 = a3;
  v11 = 0;
  v10 = 0;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 40);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      memcpy(&__dst, (v3 + v7), a3);

      return __dst;
    }

LABEL_10:
    __break(1u);
  }

  return 0;
}

uint64_t Data.InlineSlice.withUnsafeBytes<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3;
  if (a3 >> 32 >= a3)
  {
    return __DataStorage.withUnsafeBytes<A>(in:apply:)(a3, a3 >> 32, a1);
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataV10LargeSliceV15withUnsafeBytesyxxSWKXEKlFAA23LocalizedStringResourceV_Tg5015_s10Foundation4b56V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_AA23hiJ5V_Tg5AA0N4ViewVys0S0VGxs5Error_pRi_zRi0_zlyAHIsgyrzo_Tf1ncn_n(uint64_t result, void *a2, uint64_t (*a3)(void))
{
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = a2[2];
  if (v5)
  {
    v6 = a2[5];
    v7 = __OFSUB__(v3, v6);
    v8 = v3 - v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v7 = __OFSUB__(v4, v3);
      v3 = v4 - v3;
      if (v7)
      {
        goto LABEL_14;
      }

      result = v8 + v5;
      if (!(v8 + v5))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (a2[3] >= v3)
      {
        v9 = v3;
      }

      else
      {
        v9 = a2[3];
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        return a3();
      }
    }

    __break(1u);
  }

  if (!__OFSUB__(v4, v3))
  {
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized Data.LargeSlice.withUnsafeBytes<A>(_:)@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(result + 16);
  v8 = *(result + 24);
  v9 = a2[2];
  if (v9)
  {
    v10 = a2[5];
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (v11)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v9 += v12;
  }

  v11 = __OFSUB__(v8, v7);
  v13 = v8 - v7;
  if (v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2[3] < v13)
  {
    v13 = a2[3];
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = a3(a4, v9, v15);
  if (!v4)
  {
    *(a4 + 8) = result & 1;
  }

  return result;
}

void Data.InlineData.count.setter(unint64_t a1)
{
  v2 = *(v1 + 14);
  if (a1 <= v2)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      *(v1 + 14) = a1;
      return;
    }
  }

  else
  {
    if (a1 <= 0xFF)
    {
      *(v1 + 14) = a1;
      bzero((v1 + v2), a1 - v2);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void Data.InlineData.resetBytes(in:)(int64_t a1, unint64_t a2)
{
  v3 = *(v2 + 14);
  if (v3 < a1)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= a2)
  {
LABEL_5:
    v4 = __OFSUB__(a2, a1);
    v5 = a2 - a1;
    if (!v4)
    {
      bzero((v2 + a1), v5);
      return;
    }

    goto LABEL_8;
  }

  if (a2 <= 0xFF)
  {
    *(v2 + 14) = a2;
    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
}

void (*Data.InlineData.count.modify(uint64_t a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 14);
  *(a1 + 16) = v2;
  *a1 = v2;
  *(a1 + 8) = v1;
  return Data.InlineData.count.modify;
}

void Data.InlineData.count.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(a1 + 8);
    v4 = *(v3 + 14);
    v5 = v2 - v4;
    if (v2 <= v4)
    {
      if ((v2 & 0x8000000000000000) == 0)
      {
        *(v3 + 14) = v2;
        return;
      }

      goto LABEL_15;
    }

    if (v2 <= 0xFF)
    {
      *(v3 + 14) = v2;
      v6 = (v3 + v4);
LABEL_5:
      bzero(v6, v5);
      return;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(a1 + 16);
  v5 = v2 - v7;
  if (v2 > v7)
  {
    if (v2 <= 0xFF)
    {
      v8 = *(a1 + 8);
      *(v8 + 14) = v2;
      v6 = (v8 + v7);
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    *(*(a1 + 8) + 14) = v2;
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = WORD2(a4);
  v6 = a4;
  return a1(&v5, &v5 + BYTE6(a4));
}

Swift::Void __swiftcall Data.InlineData.append(byte:)(Swift::UInt8 byte)
{
  v2 = *(v1 + 14);
  *(v1 + v2) = byte;
  v3 = v2 + 1;
  if ((v3 >> 8))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 14) = v3;
  }
}

_BYTE *Data.InlineData.append(contentsOf:)(_BYTE *__src, _BYTE *a2)
{
  if (__src)
  {
    v3 = a2 - __src;
    if (a2 != __src)
    {
      v4 = *(v2 + 14);
      __src = memmove((v2 + v4), __src, v3);
      if (v3 > 255)
      {
        __break(1u);
      }

      else
      {
        v5 = v4 + v3;
        if (((v5 >> 8) & 1) == 0)
        {
          *(v2 + 14) = v5;
          return __src;
        }
      }

      __break(1u);
    }
  }

  return __src;
}

uint64_t Data.InlineData.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 >= BYTE6(a3))
  {
    __break(1u);
  }

  v4 = a2;
  v5 = a3;
  v6 = WORD2(a3);
  return *(&v4 + a1);
}

uint64_t Data.InlineData.subscript.setter(uint64_t result, uint64_t a2)
{
  if (*(v2 + 14) <= a2)
  {
    __break(1u);
  }

  else
  {
    *(v2 + a2) = result;
  }

  return result;
}

uint64_t (*Data.InlineData.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = v2;
  if (*(v2 + 14) <= a2)
  {
    __break(1u);
  }

  *v4 = *v2;
  *&v4[6] = *(v2 + 6);
  *(a1 + 16) = v4[a2];
  return Data.InlineData.subscript.modify;
}

void *Data.InlineData.copyBytes(to:from:)(void *result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  if (BYTE6(a5) < a2 || BYTE6(a5) < a3)
  {
    __break(1u);
  }

  v7 = a4;
  v8 = a5;
  v9 = WORD2(a5);
  v6 = a3 - a2;
  if (v6 > 13)
  {
    v6 = 14;
    return memcpy(result, &v7 + a2, v6);
  }

  if (v6 >= 1)
  {
    return memcpy(result, &v7 + a2, v6);
  }

  return result;
}

uint64_t Data.InlineSlice.init(_:count:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return a2 << 32;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Data.InlineSlice.init(capacity:)(uint64_t a1)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(capacity:)(a1);
  return 0;
}

uint64_t Data.InlineSlice.init(count:)(uint64_t a1)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(length:)(a1);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    return a1 << 32;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Data.InlineSlice.init(_:)(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = BYTE6(a2);
  v5 = a1;
  v7 = WORD2(a2);
  v6 = a2;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)(&v5, v3);
  return (a2 >> 16) & 0xFF00000000;
}

unint64_t Data.InlineSlice.init(_:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = BYTE6(a2);
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)(&v8, v6);
  if (a3 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 < 0xFFFFFFFF80000000 || a4 < 0xFFFFFFFF80000000)
  {
    goto LABEL_8;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (a4 < a3)
  {
    goto LABEL_10;
  }

  return a3 | (a4 << 32);
}

{

  if (a3 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 < 0xFFFFFFFF80000000 || a4 < 0xFFFFFFFF80000000)
  {
    goto LABEL_8;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a4 >= a3)
  {
    return a3 | (a4 << 32);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t Data.InlineSlice.init(_:range:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_8;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a3 >= a2)
  {
    return a2 | (a3 << 32);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t Data.InlineSlice.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);

  if (v1 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 < 0xFFFFFFFF80000000 || v2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_10;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 >= v1)
  {
    return v1 | (v2 << 32);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t Data.InlineSlice.range.getter(uint64_t result)
{
  v1 = result;
  result = result;
  if (v1 >> 32 < result)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Data.InlineSlice.reserveCapacity(_:)(Swift::Int a1)
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_17;
  }

  v4 = *v1;
  v7 = v1[1];
  if (v7 < v4)
  {
    goto LABEL_24;
  }

  v8 = *(v1 + 1);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v8 + 40);
    v11 = __OFSUB__(v4, v10);
    v12 = v4 - v10;
    if (v11)
    {
      goto LABEL_25;
    }

    v2 = v12 + v9;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  v13 = swift_allocObject();
  v3 = v13;
  *(v13 + 16) = 0;
  v5 = (v13 + 16);
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 40) = v4;
  if (v7 != v4)
  {
    v4 = v7 - v4;
    if (one-time initialization token for vmOpsThreshold != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  *(v13 + 64) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *v5 = 0;
  while (1)
  {

    *(v1 + 1) = v3;
LABEL_17:
    v15 = v1[1];
    v16 = v15 - *v1;
    if (!__OFSUB__(v15, *v1))
    {
      break;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_10:
    if (v4 >= static __DataStorage.vmOpsThreshold)
    {
      *(v3 + 24) = v4;
      *(v3 + 32) = v4;
      *(v3 + 64) = 1;
      v18 = 0;
      _So30malloc_type_layout_semantics_ta_generic_data_setter(&v18 + 1);
      v14 = malloc_type_malloc(v4, v18 << 32);
      if (!v14)
      {
        goto LABEL_28;
      }

      *v5 = v14;
    }

    else
    {
      *(v3 + 24) = v4;
      v17 = 0;
      _So30malloc_type_layout_semantics_ta_generic_data_setter(&v17 + 1);
      v14 = malloc_type_malloc(v4, v17 << 32);
      if (!v14)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      *(v3 + 16) = v14;
      *(v3 + 32) = v4;
      *(v3 + 64) = 1;
    }

    specialized static __DataStorage.move(_:_:_:)(v14, v2, v4);
  }

  if (v16 > a1)
  {
    a1 = v16;
  }

  __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(a1, 0);
}

uint64_t Data.InlineSlice.count.getter(uint64_t result)
{
  if (!__OFSUB__(HIDWORD(result), result))
  {
    return HIDWORD(result) - result;
  }

  __break(1u);
  return result;
}

void (*Data.InlineSlice.count.modify(void (*result)(uint64_t *a1)))(uint64_t *a1)
{
  *(result + 1) = v1;
  v2 = v1[1];
  if (__OFSUB__(v2, *v1))
  {
    __break(1u);
  }

  else
  {
    *result = v2 - *v1;
    return Data.InlineSlice.count.modify;
  }

  return result;
}

int64_t *key path setter for Data.InlineSlice.range : Data.InlineSlice(int64_t *result, _DWORD *a2)
{
  v2 = *result;
  if (*result > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = result[1];
  if (v2 < 0xFFFFFFFF80000000 || v3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_10;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= v2)
  {
    *a2 = v2;
    a2[1] = v3;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t Data.InlineSlice.range.setter(uint64_t result, uint64_t a2)
{
  if (result > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < 0xFFFFFFFF80000000 || a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_8;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 >= result)
  {
    *v2 = result;
    v2[1] = a2;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

int64_t *(*Data.InlineSlice.range.modify(int64_t *(*result)(int64_t *result, char a2)))(int64_t *result, char a2)
{
  *(result + 2) = v1;
  v2 = *v1;
  v3 = v1[1];
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    *(result + 1) = v3;
    return Data.InlineSlice.range.modify;
  }

  return result;
}

int64_t *Data.InlineSlice.range.modify(int64_t *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = *result <= 0x7FFFFFFF;
  if (a2)
  {
    if (*result > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v2 < 0xFFFFFFFF80000000 || v3 < 0xFFFFFFFF80000000)
    {
      goto LABEL_21;
    }

    if (v3 > 0x7FFFFFFF)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v4 = v3 <= v2;
    if (v3 >= v2)
    {
LABEL_19:
      v7 = result[2];
      *v7 = v2;
      v7[1] = v3;
      return result;
    }

    __break(1u);
  }

  if (!v4)
  {
    goto LABEL_20;
  }

  if (v2 < 0xFFFFFFFF80000000 || v3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_22;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 >= v2)
  {
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Data.InlineSlice.ensureUniqueReference()();
  v9 = *a1;
  if (a1[1] < v9)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(a1 + 1);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v10 + 40);
    v13 = __OFSUB__(v9, v12);
    v14 = v9 - v12;
    if (!v13)
    {
      closure #1 in closure #1 in static Base64.encodeToData<A>(bytes:options:)(v11 + v14, a3, a4, a5, &v15);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, uint64_t a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(a1 + 1);
  v7 = v6[2];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v6[5];
  v9 = __OFSUB__(v4, v8);
  v10 = v4 - v8;
  if (v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v5 - v4;
  if (v6[3] < v11)
  {
    v11 = v6[3];
  }

  *(a2 + 8) = v7 + v10;
  *(a2 + 16) = v7 + v10 + v11;
}

uint64_t Data.InlineSlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2 >> 32 || a2 > result)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = *(a3 + 40);
    v5 = __OFSUB__(result, v4);
    v6 = result - v4;
    if (!v5)
    {
      return *(v3 + v6);
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

int *key path getter for Data.InlineSlice.subscript(_:) : Data.InlineSlice@<X0>(int *result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  if (*a2 >= *result)
  {
    v6 = __OFSUB__(v4, v3);
    v5 = v4 - v3 < 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v5 == v6)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(result + 1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v7 + 40);
    v6 = __OFSUB__(v4, v9);
    v10 = v4 - v9;
    if (!v6)
    {
      *a3 = *(v8 + v10);
      return result;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

void Data.InlineSlice.subscript.setter(char a1, uint64_t a2)
{
  if (*v2 > a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2[1] <= a2)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  Data.InlineSlice.ensureUniqueReference()();
  v5 = *(v2 + 1);
  __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = __OFSUB__(a2, v7);
    v9 = a2 - v7;
    if (!v8)
    {
      *(v6 + v9) = a1;
      return;
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

void (*Data.InlineSlice.subscript.modify(void (*result)(uint64_t a1), uint64_t a2))(uint64_t a1)
{
  *result = a2;
  *(result + 1) = v2;
  if (*v2 > a2 || v2[1] <= a2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v2 + 1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 40);
    v7 = __OFSUB__(a2, v6);
    v8 = a2 - v6;
    if (!v7)
    {
      *(result + 16) = *(v5 + v8);
      return Data.InlineSlice.subscript.modify;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *Data.InlineSlice.copyBytes(to:from:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >> 32 >= a3 && a4 <= a3 && a4 >> 32 >= a2 && a4 <= a2)
  {
    return __DataStorage.copyBytes(to:from:)(result, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t Data.RangeReference.range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Data.RangeReference.count.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t Data.RangeReference.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t Data.RangeReference.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Data.LargeSlice.slice.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Data.LargeSlice.storage.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Data.LargeSlice.init(_:count:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
  }

  return result;
}

uint64_t Data.LargeSlice.init(capacity:)(uint64_t a1)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(capacity:)(a1);
  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t Data.LargeSlice.init(count:)(uint64_t a1)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(length:)(a1);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a1;
  }

  return result;
}

uint64_t Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = BYTE6(a2);
  v4 = a1;
  v6 = WORD2(a2);
  v5 = a2;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)(&v4, v2);
  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v2;
  return result;
}

uint64_t Data.LargeSlice.init(_:)(uint64_t result)
{
  v1 = result;
  v2 = result >> 32;
  if (result >> 32 < result)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = v1;
    *(result + 24) = v2;
  }

  return result;
}

Swift::Void __swiftcall Data.LargeSlice.ensureUniqueReference()()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_19;
  }

  v5 = v0[1];
  v7 = *(*v0 + 16);
  v6 = *(*v0 + 24);
  v8 = *(v5 + 16);
  if (!v8)
  {
    v1 = 0;
    v3 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v5 + 40);
  v10 = __OFSUB__(v7, v9);
  v11 = v7 - v9;
  if (v10)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
LABEL_8:
    if (v3 >= static __DataStorage.vmOpsThreshold)
    {
      v2[3] = v3;
      v2[4] = v3;
      *(v2 + 64) = 1;
      v18 = 0;
      _So30malloc_type_layout_semantics_ta_generic_data_setter(&v18 + 1);
      v13 = malloc_type_malloc(v3, v18 << 32);
      if (v13)
      {
        *v4 = v13;
        goto LABEL_17;
      }
    }

    else
    {
      v2[3] = v3;
      v17 = 0;
      _So30malloc_type_layout_semantics_ta_generic_data_setter(&v17 + 1);
      v13 = malloc_type_malloc(v3, v17 << 32);
      if (v13)
      {
        v2[2] = v13;
        v2[4] = v3;
        *(v2 + 64) = 1;
LABEL_17:
        specialized static __DataStorage.move(_:_:_:)(v13, v1, v3);
        goto LABEL_18;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v1 = v11 + v8;
  v3 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    goto LABEL_13;
  }

LABEL_5:
  type metadata accessor for __DataStorage();
  v12 = swift_allocObject();
  v12[2] = 0;
  v4 = v12 + 2;
  v12[6] = 0;
  v12[7] = 0;
  if (v3 > 0x3FFFFFFFFFFFFFFELL)
  {
    __break(1u);
    goto LABEL_23;
  }

  v2 = v12;
  v12[5] = v7;
  if (v3)
  {
    if (one-time initialization token for vmOpsThreshold == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_14:
  *(v2 + 64) = 0;
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
LABEL_18:

  v0[1] = v2;
LABEL_19:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = *(*v0 + 16);
    v15 = *(*v0 + 24);
    type metadata accessor for Data.RangeReference();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;

    *v0 = v16;
  }
}

Swift::Void __swiftcall Data.LargeSlice.reserveCapacity(_:)(Swift::Int a1)
{
  Data.LargeSlice.ensureUniqueReference()();
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 > a1)
    {
      a1 = v6;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(a1, 0);
  }
}

uint64_t Data.LargeSlice.count.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

void Data.LargeSlice.count.setter(uint64_t a1)
{
  Data.LargeSlice.ensureUniqueReference()();
  v3 = *v1;
  v5 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  v6 = __OFSUB__(v4, v5);
  v7 = v4 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = __OFSUB__(a1, v7);
  v8 = a1 - v7;
  if (v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 >= 1)
  {
    v9 = v4 + v8;
    if (__OFADD__(v4, v8))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v9 < v4)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __DataStorage.resetBytes(in:)(v4, v9);
LABEL_9:
    v11 = *(v3 + 16);
    v12 = v11 + a1;
    if (!__OFADD__(v11, a1))
    {
      if (v12 >= v11)
      {
        *(v3 + 24) = v12;
        return;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(v1[1] + 24);
  if (!__OFADD__(v10, v8))
  {
    __DataStorage.length.setter(v10 + v8);
    goto LABEL_9;
  }

LABEL_18:
  __break(1u);
}

void (*Data.LargeSlice.count.modify(void (*result)(uint64_t *a1)))(uint64_t *a1)
{
  *(result + 1) = v1;
  v2 = *(*v1 + 16);
  v3 = *(*v1 + 24);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *result = v5;
    return Data.LargeSlice.count.modify;
  }

  return result;
}

void specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(void *a1, int a2)
{
  Data.LargeSlice.ensureUniqueReference()();
  v4 = a1[1];
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(*a1 + 16);
  v7 = v4[5];
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = *(*a1 + 24);
  v8 = __OFSUB__(v10, v6);
  v11 = v10 - v6;
  if (v8)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v4[3];
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v5 + v9), a2, v13);
}

void specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Data.LargeSlice.ensureUniqueReference()();
  v9 = a1[1];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(*a1 + 16);
    v12 = *(v9 + 40);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (v13)
    {
      __break(1u);
    }

    else if (!__OFSUB__(*(*a1 + 24), v11))
    {
      closure #1 in closure #1 in static Base64.encodeToData<A>(bytes:options:)(v10 + v14, a3, a4, a5, &v15);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  Data.LargeSlice.ensureUniqueReference()();
  v3 = v1[1];
  v4 = v3[2];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(*v1 + 16);
  v6 = v3[5];
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = *(*v1 + 24);
  v7 = __OFSUB__(v9, v5);
  v10 = v9 - v5;
  if (v7)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v11 = v3[3];
  if (v11 >= v10)
  {
    v11 = v10;
  }

  a1(&v12, v4 + v8, v4 + v8 + v11);
}

void specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(void *a1, uint64_t a2)
{
  Data.LargeSlice.ensureUniqueReference()();
  v4 = a1[1];
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(*a1 + 16);
  v7 = v4[5];
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(*a1 + 24);
  v8 = __OFSUB__(v10, v6);
  v11 = v10 - v6;
  if (v8)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v12 = v4[3];
  if (v12 >= v11)
  {
    v12 = v11;
  }

  v13 = v5 + v9;
  *(a2 + 8) = v13;
  *(a2 + 16) = v13 + v12;
}

void Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t))
{
  Data.LargeSlice.ensureUniqueReference()();
  v3 = v1[1];
  v4 = v3[2];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(*v1 + 16);
  v6 = v3[5];
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = *(*v1 + 24);
  v7 = __OFSUB__(v9, v5);
  v10 = v9 - v5;
  if (v7)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v11 = v3[3];
  if (v11 >= v10)
  {
    v11 = v10;
  }

  a1(v4 + v8, v4 + v8 + v11);
}

void Data.LargeSlice.append(contentsOf:)(const void *a1, uint64_t a2)
{
  v3 = v2;
  Data.LargeSlice.ensureUniqueReference()();
  v6 = v2[1];
  v7 = *(v6 + 24);
  v8 = *(v6 + 40);
  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = *v3;
  v11 = *(v10 + 24);
  if (v9 < v11)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  __DataStorage.replaceBytes(in:with:length:)(v11, v9, a1, v12);
  v13 = *(v10 + 24);
  v14 = __OFADD__(v13, v12);
  v15 = v13 + v12;
  if (v14)
  {
    goto LABEL_11;
  }

  if (v15 >= *(v10 + 16))
  {
    *(v10 + 24) = v15;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t Data.LargeSlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) > result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a2 + 24) <= result)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = *(a3 + 40);
    v5 = __OFSUB__(result, v4);
    v6 = result - v4;
    if (!v5)
    {
      return *(v3 + v6);
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *key path getter for Data.LargeSlice.subscript(_:) : Data.LargeSlice@<X0>(void *result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  if (*a2 < *(*result + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= *(*result + 24))
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result[1];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 40);
    v7 = __OFSUB__(v3, v6);
    v8 = v3 - v6;
    if (!v7)
    {
      *a3 = *(v5 + v8);
      return result;
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

void Data.LargeSlice.subscript.setter(char a1, uint64_t a2)
{
  if (*(*v2 + 16) > a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 24) <= a2)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  Data.LargeSlice.ensureUniqueReference()();
  v5 = v2[1];
  __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = __OFSUB__(a2, v7);
    v9 = a2 - v7;
    if (!v8)
    {
      *(v6 + v9) = a1;
      return;
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

void (*Data.LargeSlice.subscript.modify(void (*result)(uint64_t a1), uint64_t a2))(uint64_t a1)
{
  *result = a2;
  *(result + 1) = v2;
  if (*(*v2 + 16) > a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 24) <= a2)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2[1];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 40);
    v6 = __OFSUB__(a2, v5);
    v7 = a2 - v5;
    if (!v6)
    {
      *(result + 16) = *(v4 + v7);
      return Data.LargeSlice.subscript.modify;
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

void Data.LargeSlice.resetBytes(in:)(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + 24) < a1)
  {
    __break(1u);
    goto LABEL_7;
  }

  Data.LargeSlice.ensureUniqueReference()();
  __DataStorage.resetBytes(in:)(a1, a2);
  v5 = *v2;
  if (*(*v2 + 24) >= a2)
  {
    return;
  }

  if (*(v5 + 16) > a2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(v5 + 24) = a2;
}

void Data.LargeSlice.replaceSubrange(_:with:count:)(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v5 = *(*v4 + 16);
  if (v5 > a1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(*v4 + 24);
  if (v8 < a2 || v5 > a2 || v8 < a1)
  {
    goto LABEL_15;
  }

  Data.LargeSlice.ensureUniqueReference()();
  v13 = *v4;
  v14 = *(*v4 + 24);
  __DataStorage.replaceBytes(in:with:length:)(a1, a2, a3, a4);
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = __OFSUB__(v14, v15);
  v17 = v14 - v15;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = __OFADD__(v17, a4);
  v18 = v17 + a4;
  if (v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 >= *(v13 + 16))
  {
    *(v13 + 24) = v18;
    return;
  }

LABEL_19:
  __break(1u);
}

void *Data.LargeSlice.copyBytes(to:from:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 > a2)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a4 + 24);
    if (v5 >= a3 && v4 <= a3 && v5 >= a2)
    {
      return __DataStorage.copyBytes(to:from:)(result, a2, a3);
    }
  }

  __break(1u);
  return result;
}

_BYTE *Data._Representation.init(_:)(_BYTE *result, _BYTE *a2)
{
  if (result)
  {
    v2 = a2 - result;
    if (a2 == result)
    {
      return 0;
    }

    else if (v2 <= 14)
    {
      return specialized Data.InlineData.init(_:)(result, a2);
    }

    else if (v2 > 0x7FFFFFFE)
    {
      return specialized Data.LargeSlice.init(_:)(result, a2);
    }

    else
    {
      return specialized Data.InlineSlice.init(_:)(result, a2);
    }
  }

  return result;
}

uint64_t Data._Representation.init(_:owner:)(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 && (v3 = a2 - a1, a2 != a1))
  {
    if (v3 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(a1, a2);
      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a3;
      type metadata accessor for __DataStorage();
      result = swift_allocObject();
      if (v3 > 0x3FFFFFFFFFFFFFFELL)
      {
        __break(1u);
      }

      else
      {
        *(result + 32) = v3;
        *(result + 40) = 0;
        *(result + 64) = 0;
        *(result + 16) = a1;
        *(result + 24) = v3;
        *(result + 48) = _NSBundleDeallocatingImmortalBundle;
        *(result + 56) = v7;
        if (v3 > 0x7FFFFFFE)
        {
          type metadata accessor for Data.RangeReference();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v3;
        }

        else
        {
          return v3 << 32;
        }
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t Data._Representation.init(capacity:)(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(capacity:)(v1);
      if (v1 > 0x7FFFFFFE)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t (*Data._Representation.count.modify(uint64_t (*result)(uint64_t *a1)))(uint64_t *a1)
{
  *(result + 1) = v1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v2 = 0;
      goto LABEL_11;
    }

    v7 = v2 + 16;
    v5 = *(v2 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v2 = v6 - v5;
    if (!v8)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v2 = BYTE6(v3);
LABEL_11:
    *result = v2;
    return Data._Representation.count.modify;
  }

  v8 = __OFSUB__(HIDWORD(v2), v2);
  LODWORD(v2) = HIDWORD(v2) - v2;
  if (!v8)
  {
    v2 = v2;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, char *a3, char *a4, char a5)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v22[0] = a1;
      LOWORD(v22[1]) = a2;
      BYTE2(v22[1]) = BYTE2(a2);
      BYTE3(v22[1]) = BYTE3(a2);
      BYTE4(v22[1]) = BYTE4(a2);
      BYTE5(v22[1]) = BYTE5(a2);
      v6 = v22 + BYTE6(a2);
      v7 = v22;
      return closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(v7, v6, a3, a4, a5 & 1);
    }

    v17 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v18 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v20 = a1 - v19;
      if (!__OFSUB__(a1, v19))
      {
        if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v17)
        {
          v17 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v7 = (v20 + v18);
        if (v20 + v18)
        {
          v6 = v7 + v17;
          return closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(v7, v6, a3, a4, a5 & 1);
        }

LABEL_21:
        v7 = 0;
        v6 = 0;
        return closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(v7, v6, a3, a4, a5 & 1);
      }

LABEL_28:
      __break(1u);
    }

    goto LABEL_26;
  }

  if (v5 != 2)
  {
    memset(v22, 0, 14);
    v7 = v22;
    v6 = v22;
    return closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(v7, v6, a3, a4, a5 & 1);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!v10)
  {
    v7 = 0;
    v12 = __OFSUB__(v9, v8);
    v14 = v9 - v8;
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v12 = __OFSUB__(v8, v11);
  v13 = v8 - v11;
  if (v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = (v13 + v10);
  v12 = __OFSUB__(v9, v8);
  v14 = v9 - v8;
  if (v12)
  {
    goto LABEL_25;
  }

LABEL_8:
  v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  if (v15 >= v14)
  {
    v15 = v14;
  }

  v16 = v7 + v15;
  if (v7)
  {
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  return closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(v7, v6, a3, a4, a5 & 1);
}

uint64_t _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFyt_Tg5015_s10Foundation4B58V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_yt_Tg5AA0J4ViewVys0O0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1ncn_n(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v9, 0, 14);
      v5 = 0;
      return (a3)(v9, v5);
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFyt_Tg5015_s10Foundation4B58V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_yt_Tg5AA0L4ViewVys0Q0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1nncn_n(v6, v7, (a2 & 0x3FFFFFFFFFFFFFFFLL), a3);
  }

  if (v3)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFyt_Tg5015_s10Foundation4B58V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_yt_Tg5AA0L4ViewVys0Q0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1nncn_n(v6, v7, (a2 & 0x3FFFFFFFFFFFFFFFLL), a3);
  }

  v9[0] = a1;
  LOWORD(v9[1]) = a2;
  BYTE2(v9[1]) = BYTE2(a2);
  BYTE3(v9[1]) = BYTE3(a2);
  v4 = a2 >> 40;
  BYTE4(v9[1]) = BYTE4(a2);
  v5 = BYTE6(a2);
  BYTE5(v9[1]) = v4;
  return (a3)(v9, v5);
}

void specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, int a3, int64_t __n, uint64_t a5)
{
  __src[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(__src, 0, 14);
      v7 = __src;
      v18 = __n;
      v19 = a5;
      v20 = 0;
      goto LABEL_22;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v10)
    {
      v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v12 = __OFSUB__(v8, v11);
      v13 = v8 - v11;
      if (v12)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7 = (v13 + v10);
      v12 = __OFSUB__(v9, v8);
      v14 = v9 - v8;
      if (!v12)
      {
LABEL_8:
        v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v6 >= v14)
        {
          v6 = v14;
        }

        if (!v7)
        {
          v6 = 0;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v7 = 0;
      v12 = __OFSUB__(v9, v8);
      v14 = v9 - v8;
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5)
  {
    v6 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v15)
      {
LABEL_19:
        v7 = 0;
        v6 = 0;
        goto LABEL_20;
      }

      v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v17 = a1 - v16;
      if (!__OFSUB__(a1, v16))
      {
        if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v6)
        {
          v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v7 = (v17 + v15);
        if (v17 + v15)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    goto LABEL_26;
  }

  __src[0] = a1;
  LOWORD(__src[1]) = a2;
  BYTE2(__src[1]) = BYTE2(a2);
  BYTE3(__src[1]) = BYTE3(a2);
  BYTE4(__src[1]) = BYTE4(a2);
  v6 = BYTE6(a2);
  BYTE5(__src[1]) = BYTE5(a2);
  v7 = __src;
LABEL_20:
  v18 = __n;
  v19 = a5;
  v20 = v6;
LABEL_22:
  Data._Representation.replaceSubrange(_:with:count:)(v18, v19, v7, v20);
}

BOOL specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
      goto LABEL_10;
    }

    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    v8 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, a1 >> 32, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
LABEL_8:
    v9 = v8;
    outlined consume of Data._Representation(a3, a4);
    return v9;
  }

  if (v7 == 2)
  {
    v8 = specialized Data.LargeSlice.withUnsafeBytes<A>(_:)(a1, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    goto LABEL_8;
  }

  memset(v12, 0, 14);
LABEL_10:
  closure #1 in static Data.== infix(_:_:)(v12, a3, a4, &v11);
  v9 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    return v11;
  }

  return v9;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      return specialized Data.LargeSlice.withUnsafeBytes<A>(_:)(a1, (a2 & 0x3FFFFFFFFFFFFFFFLL), a3, a4);
    }

    memset(v10, 0, 14);
    v7 = v10;
    goto LABEL_9;
  }

  if (!v6)
  {
    v10[0] = a1;
    LOWORD(v10[1]) = a2;
    BYTE2(v10[1]) = BYTE2(a2);
    BYTE3(v10[1]) = BYTE3(a2);
    BYTE4(v10[1]) = BYTE4(a2);
    BYTE5(v10[1]) = BYTE5(a2);
    v7 = v10 + BYTE6(a2);
LABEL_9:
    result = a3(a4, v10, v7);
    if (!v4)
    {
      *(a4 + 8) = result & 1;
    }

    return result;
  }

  if (a1 >> 32 < a1)
  {
    __break(1u);
  }

  return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, a1 >> 32, (a2 & 0x3FFFFFFFFFFFFFFFLL), a3, a4);
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v12)
    {
      outlined consume of Data._Representation(v11, v10);
      *&v17 = v11;
      WORD4(v17) = v10;
      BYTE10(v17) = BYTE2(v10);
      BYTE11(v17) = BYTE3(v10);
      BYTE12(v17) = BYTE4(v10);
      BYTE13(v17) = BYTE5(v10);
      BYTE14(v17) = BYTE6(v10);
      closure #1 in closure #1 in static Base64.encodeToData<A>(bytes:options:)(&v17, a3, a4, a5, &v16);
      v13 = DWORD2(v17) | ((WORD6(v17) | (BYTE14(v17) << 16)) << 32);
      *a1 = v17;
      a1[1] = v13;
      return;
    }

    outlined consume of Data._Representation(v11, v10);
    *&v17 = v11;
    *(&v17 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v17, a2, a3, a4, a5);
    v14 = v17;
    v15 = *(&v17 + 1) | 0x4000000000000000;
    goto LABEL_7;
  }

  if (v12 == 2)
  {

    outlined consume of Data._Representation(v11, v10);
    *&v17 = v11;
    *(&v17 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(&v17, a2, a3, a4, a5);
    v14 = v17;
    v15 = *(&v17 + 1) | 0x8000000000000000;
LABEL_7:
    *a1 = v14;
    a1[1] = v15;
    return;
  }

  *(&v17 + 7) = 0;
  *&v17 = 0;
  closure #1 in closure #1 in static Base64.encodeToData<A>(bytes:options:)(&v17, a3, a4, a5, &v16);
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v6)
    {
      outlined consume of Data._Representation(v4, v5);
      LOWORD(v11) = v5;
      BYTE2(v11) = BYTE2(v5);
      BYTE3(v11) = BYTE3(v5);
      BYTE4(v11) = BYTE4(v5);
      BYTE5(v11) = BYTE5(v5);
      *(a2 + 8) = &v10;
      *(a2 + 16) = &v10 + BYTE6(v5);
      v7 = v11 | ((WORD2(v11) | (BYTE6(v5) << 16)) << 32);
      *a1 = v4;
      a1[1] = v7;
      return;
    }

    outlined consume of Data._Representation(v4, v5);
    v10 = v4;
    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v10, a2);
    v8 = v10;
    v9 = v11 | 0x4000000000000000;
    goto LABEL_7;
  }

  if (v6 == 2)
  {

    outlined consume of Data._Representation(v4, v5);
    v10 = v4;
    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(&v10, a2);
    v8 = v10;
    v9 = v11 | 0x8000000000000000;
LABEL_7:
    *a1 = v8;
    a1[1] = v9;
    return;
  }

  *(a2 + 8) = &v10;
  *(a2 + 16) = &v10;
}

void (*Data._Representation.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = Data._Representation.subscript.getter(a2, *v2, *(v2 + 8));
  return Data._Representation.subscript.modify;
}

void *Data._Representation.copyBytes(to:from:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (!(a3 | a2))
      {
        return result;
      }

      __break(1u);
      goto LABEL_26;
    }

    v7 = *(a4 + 16);
    if (v7 > a2)
    {
      __break(1u);
      goto LABEL_30;
    }

    v8 = *(a4 + 24);
    if (v8 >= a3 && v7 <= a3 && v8 >= a2)
    {
      return __DataStorage.copyBytes(to:from:)(result, a2, a3);
    }

    __break(1u);
LABEL_19:
    if (a4 >> 32 >= a3 && a4 <= a3 && a4 >> 32 >= a2 && a4 <= a2)
    {
      return __DataStorage.copyBytes(to:from:)(result, a2, a3);
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5)
  {
    goto LABEL_19;
  }

  if (BYTE6(a5) < a2 || BYTE6(a5) < a3)
  {
LABEL_31:
    __break(1u);
  }

  v11 = a4;
  v12 = a5;
  v13 = BYTE2(a5);
  v14 = BYTE3(a5);
  v15 = BYTE4(a5);
  v6 = a3 - a2;
  v16 = BYTE5(a5);
  if (v6 <= 13)
  {
    if (v6 < 1)
    {
      return result;
    }

    return memcpy(result, &v11 + a2, v6);
  }

LABEL_26:
  v6 = 14;
  return memcpy(result, &v11 + a2, v6);
}

uint64_t Data._representation.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Data.init<A>(buffer:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(*(a3 - 8) + 72);
    v4 = a2 * v3;
    if ((a2 * v3) >> 64 == (a2 * v3) >> 63)
    {
      if (v4)
      {
        if (v4 <= 14)
        {
          return specialized Data.InlineData.init(_:)(result, (v4 + result));
        }

        else
        {
          v5 = result;
          type metadata accessor for __DataStorage();
          swift_allocObject();
          __DataStorage.init(bytes:length:)(v5, v4);
          if (v4 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v4;
          }

          else
          {
            return v4 << 32;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v14[1] = v9 - v8;
  }

  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v7 + 16))(v11, a2, a3);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a4 + v12) = result;
  return result;
}

uint64_t Data.init(bytes:)(uint64_t a1)
{
  v1 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(a1);

  return v1;
}

uint64_t *key path getter for Data._Representation.count : Data._Representation@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      *a2 = 0;
      return result;
    }

    v7 = v2 + 16;
    v5 = *(v2 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v9 = v6 - v5;
    if (!v8)
    {
      *a2 = v9;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v4)
    {
      *a2 = BYTE6(v3);
      return result;
    }

    v8 = __OFSUB__(HIDWORD(v2), v2);
    v10 = HIDWORD(v2) - v2;
    if (!v8)
    {
      *a2 = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Data.count.setter(uint64_t __n)
{
  if ((__n & 0x8000000000000000) == 0)
  {
    return Data._Representation.count.setter(__n);
  }

  __break(1u);
  return __n;
}

uint64_t (*Data.count.modify(uint64_t (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  *(result + 1) = v1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v2 = 0;
      goto LABEL_11;
    }

    v7 = v2 + 16;
    v5 = *(v2 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v2 = v6 - v5;
    if (!v8)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v2 = BYTE6(v3);
LABEL_11:
    *result = v2;
    return Data.count.modify;
  }

  v8 = __OFSUB__(HIDWORD(v2), v2);
  LODWORD(v2) = HIDWORD(v2) - v2;
  if (!v8)
  {
    v2 = v2;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t Data.count.modify(uint64_t *a1, char a2)
{
  result = *a1;
  if (a2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      return Data._Representation.count.setter(result);
    }

    __break(1u);
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return Data._Representation.count.setter(result);
  }

  __break(1u);
  return result;
}

uint64_t Data.withUnsafeBytes<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = a1;
  v7[5] = a2;
  return Data._Representation.withUnsafeBytes<A>(_:)(partial apply for closure #1 in Data.withUnsafeBytes<A, B>(_:), v7, a3, a4);
}

double specialized Data.withContiguousStorageIfAvailable<A>(_:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v20, 0, 14);
      v7 = v20;
      v6 = 0;
      goto LABEL_20;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v10)
    {
      v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v12 = __OFSUB__(v8, v11);
      v13 = v8 - v11;
      if (v12)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v12 = __OFSUB__(v9, v8);
      v14 = v9 - v8;
      if (!v12)
      {
        v7 = (v13 + v10);
        if (v13 + v10)
        {
          if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= v14)
          {
            v6 = v14;
          }

          else
          {
            v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          }

          goto LABEL_20;
        }

        goto LABEL_22;
      }
    }

    else if (!__OFSUB__(v9, v8))
    {
      goto LABEL_22;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v4)
  {
    v20[0] = a1;
    LOWORD(v20[1]) = a2;
    BYTE2(v20[1]) = BYTE2(a2);
    BYTE3(v20[1]) = BYTE3(a2);
    v5 = a2 >> 40;
    BYTE4(v20[1]) = BYTE4(a2);
    v6 = BYTE6(a2);
    BYTE5(v20[1]) = v5;
    v7 = v20;
LABEL_20:
    _s10Foundation6Base64O6decode4data7optionsAA4DataVSgAH_So06NSDataB15DecodingOptionsVtAC0H5ErrorOYKFZs6ResultOyAhMGSRys5UInt8VGXEfU_(v7, v6, a3, a4);
    return result;
  }

  v15 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v18 = a1 - v17;
  if (__OFSUB__(a1, v17))
  {
LABEL_27:
    __break(1u);
  }

  v7 = (v18 + v16);
  if (v18 + v16)
  {
    if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= v15)
    {
      v6 = v15;
    }

    else
    {
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    }

    goto LABEL_20;
  }

LABEL_22:
  result = 0.0;
  *a4 = xmmword_181234410;
  *(a4 + 16) = 0;
  return result;
}

double specialized Data.withContiguousStorageIfAvailable<A>(_:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v31, 0, 14);
      *&v32[0] = _s10Foundation4DataV15_RepresentationO5countAESi_tcfC_0(a3);
      v32[1] = v30;
      specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v32, a3, v31, 0, a4);
      result = v32[0];
      *a5 = *v32;
      return result;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v14)
    {
      v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v16 = __OFSUB__(v12, v15);
      v17 = v12 - v15;
      if (v16)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v18 = v17 + v14;
      v16 = __OFSUB__(v13, v12);
      v19 = v13 - v12;
      if (!v16)
      {
LABEL_8:
        v20 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v20 >= v19)
        {
          v20 = v19;
        }

        v21 = v20 + v18;
        if (v18)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v18, v22, a3, a4, a5);
      }
    }

    else
    {
      v18 = 0;
      v16 = __OFSUB__(v13, v12);
      v19 = v13 - v12;
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v5)
  {
    v31[0] = a1;
    LOWORD(v31[1]) = a2;
    BYTE2(v31[1]) = BYTE2(a2);
    BYTE3(v31[1]) = BYTE3(a2);
    BYTE4(v31[1]) = BYTE4(a2);
    v6 = BYTE6(a2);
    BYTE5(v31[1]) = BYTE5(a2);
    *&v32[0] = _s10Foundation4DataV15_RepresentationO5countAESi_tcfC_0(a3);
    v32[1] = v10;
    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v32, a3, v31, v6, a4);
    result = v32[0];
    *a5 = *v32;
    return result;
  }

  v23 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    goto LABEL_27;
  }

  v24 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!v24)
  {
LABEL_21:
    v18 = 0;
    v22 = 0;
    return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v18, v22, a3, a4, a5);
  }

  v25 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v26 = a1 - v25;
  if (__OFSUB__(a1, v25))
  {
LABEL_29:
    __break(1u);
  }

  if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v23)
  {
    v23 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  }

  v18 = v26 + v24;
  if (!(v26 + v24))
  {
    goto LABEL_21;
  }

  v22 = v23 + v18;
  return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v18, v22, a3, a4, a5);
}